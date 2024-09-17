@extends('admin.layouts.app')

@push('libraries_top')
@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1></h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ getAdminPanelUrl() }}">{{ trans('admin/main.dashboard') }}</a>
                </div>
                <div class="breadcrumb-item"></div>

                <div class="breadcrumb-item"></div>
            </div>
        </div>

        <div class="section-body">

            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            اضف كتاب جديد
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="{{ route('books.save') }}" method="POST" enctype="multipart/form-data">
                                    @csrf()
                                    <div class="form-group">
                                        <label class="form-label">عنوان الكتاب</label>
                                        <input type="text" name="title" id="" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">كود الكتاب</label>
                                        <input type="text" name="code" id="" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">سعر الكتاب</label>
                                        <input type="number" name="price" id="" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">صورة الكتاب</label>
                                        <input type="file" name="ebook_image" id="">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">ملف الكتاب</label>
                                        <input type="text" class="form-control" placeholder="مثال: books2024/index.html" name="ebook_file" id="">
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-sm btn-block btn-primary">تاكيد</button>
                                    </div>
                                </form>
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
