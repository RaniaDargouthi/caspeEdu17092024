@extends('admin.layouts.app')

@push('libraries_top')

@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{ trans('admin/main.quizzes') }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ getAdminPanelUrl() }}">{{trans('admin/main.dashboard')}}</a>
                </div>
                <div class="breadcrumb-item">{{ trans('admin/main.quizzes') }}</div>
            </div>
        </div>



        <div class="section-body">


            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                           اسم السلسلة : &nbsp;<span class="badge badge-primary">{{ $serie->serie_name }}</span>
                        </div>

                        <div class="card-body">
                           <p>السؤال : {{ $quiz->question }}</p>
                           <p>المعطى : <span class="badge badge-primary"> {{ $quiz->question_body }}</span></p>
                           @for($i = 1; $i <= count($quiz->suggestions[0]); $i++)
                                {{ $quiz->suggestions[0][$i] }}
                           @endfor
                           <p>الاجابة الصحيحة : <span class="badge badge-success">{{ $quiz->suggestions[0][$quiz->correct_answer] }}</span></p>
                            <p>الملف الصوتي : <br><audio controls>
                                    <source src="{{ asset($quiz->sound_file)  }}" type="audio/mpeg">
                                </audio></p>
                            <p>
                                الصورة :   <br><img height="200px" width="200px" src="{{ asset($quiz->picture_file) }}" />
                            </p>
                        </div>

                        <div class="card-footer text-center">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts_bottom')

@endpush
