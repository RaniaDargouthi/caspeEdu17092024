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
                        اضافة تمارين جديد للسلسلة تمارين : <span class="badge badge-primary">{{ $serie->serie_name }}</span>
                    </div>

                    <div class="card-body">
                        @if(session()->has('success'))
                            <div class="alert alert-info">{{ session('success') }}</div>
                        @endif
                        <form enctype="multipart/form-data" action="{{ route('add_quiz_to_serie', ['serie' => $serie->id]) }}" method="post">
                            @csrf()
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="">السؤال</label>
                                        <input type="text" name="question" class="form-control" id="">
                                    </div>
                                    <div class="form-group">
                                        <label for="">نوع السؤال</label>
                                        <select name="quiz_type_id" id="" class="form-control">
                                            <option value="">اختر نوع التمارين</option>
                                            @foreach($quizTypes as $qT)
                                                <option value="{{ $qT->id  }}">{{ $qT->type }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="">المعطى</label>
                                        <input type="text" name="question_body" class="form-control" class="form-control" id="">
                                    </div>
                                    <div class="form-group">
                                        <label for="">الملف الصوتي</label>
                                        <input type="file" name="sound_file"  id="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="">الصورة</label>
                                        <input type="file" name="picture_file" id="">
                                    </div>
                                    <div class="form-group">
                                        <label for="">رقم السؤال</label>
                                        <input type="number" name="question_number" class="form-control" id="">
                                    </div>
                                    <div class="form-group">
                                        <label for="">الاجابة الصحيحة</label>
                                        <input type="number" name="correct_answer" class="form-control" id="">
                                    </div>
                                    <div class="form-group">
                                        <label for="">المقترحات</label>
                                        <textarea name="suggestions" id="" cols="30" rows="10" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-sm btn-block">موافق</button>
                            </div>
                        </form>
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
