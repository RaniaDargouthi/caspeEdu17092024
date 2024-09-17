@extends('admin.layouts.app')

@push('libraries_top')

@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>سلاسل تمارين</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ getAdminPanelUrl() }}">{{trans('admin/main.dashboard')}}</a>
                </div>
                <div class="breadcrumb-item">سلاسل تمارين</div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-file-alt"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>{{ trans('admin/main.total_quizzes') }}</h4>
                        </div>
                        <div class="card-body">
                            --
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-warning">
                        <i class="fas fa-clipboard-check"></i></div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>{{ trans('admin/main.active_quizzes') }}</h4>
                        </div>
                        <div class="card-body">
                            --
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-info">
                        <i class="fas fa-users"></i></div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>{{ trans('admin/main.total_students') }}</h4>
                        </div>
                        <div class="card-body">
                            --
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-success">
                        <i class="fas fa-user-check"></i></div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>{{ trans('admin/main.total_passed_students') }}</h4>
                        </div>
                        <div class="card-body">
                            --
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section-body">


            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">

                        <div class="card-body">
                            <div class="table-responsive">
                                <a href="{{ route('add_quiz_to_serie', ['serie' => $serie->id]) }}">اضف تمارين جديد</a>
                                <table class="table table-striped font-14">
                                    <tr>
                                        <th class="text-left">السوال</th>
                                        <th class="text-left">النوع</th>
                                        <th>{{ trans('admin/main.actions') }}</th>
                                    </tr>

                                    @foreach($quizzes as $quiz)
                                    <tr>
                                        <td>{{ $quiz->question }}</td>
                                        <td>{{ $quiz->question_type }}</td>
                                        <td>
                                            @if($quiz->sound_file)
                                            <audio controls>
                                                <source src="{{ asset($quiz->sound_file) }}" type="audio/mpeg">
                                            </audio>
                                            @else
                                                لا يوجد
                                            @endif
                                        </td>
                                        <td><a href="{{ asset($quiz->picture_file) }}" target="_blank"><img height="50px" width="50px" src="{{ asset($quiz->picture_file) }}" /></a> </td>
                                        <td>
                                            <a class="btn btn-primary btn-sm" href="{{ route('quizzes.show', ['quiz' => $quiz->id]) }}">عرض التمارين</a>
                                          {{-- 
                                            <a href="{{ route('display_quiz',['quiz' => $quiz->id]) }}">عرض التمارين</a>
                                            <a href="{{ route('display_quiz_for_student',['quiz' => $quiz->id]) }}">عرض التمارين كاملا</a>
                                          --}} 
                                        </td>
                                    </tr>
                                    @endforeach

                                </table>
                                {{ $quizzes->links() }}
                            </div>
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
