@extends('admin.layouts.app')

@push('libraries_top')

@endpush

@section('content')
<section class="section">
    <div class="section-header">
        <h1></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="{{ getAdminPanelUrl() }}">{{trans('admin/main.dashboard')}}</a>
            </div>
            <div class="breadcrumb-item"></div>

            <div class="breadcrumb-item"></div>
        </div>
    </div>

    <div class="section-body">
        {{--
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary">
                            <i class="fas fa-file-video"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4></h4>
                            </div>
                            <div class="card-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-eye"></i>
                        </div>

                        <div class="card-wrap">
                            <div class="card-header">
                                <h4></h4>
                            </div>
                            <div class="card-body">
                               
                            </div>
                        </div>
                    </div>
                </div>

                @if(true)
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-info">
                                <i class="fas fa-history"></i>
                            </div>

                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4></h4>
                                </div>
                                <div class="card-body">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-info">
                                <i class="fas fa-history"></i>
                            </div>

                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4></h4>
                                </div>
                                <div class="card-body">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-dollar-sign"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4></h4>
                            </div>
                            <div class="card-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section class="card">
                <div class="card-body">
                    <form method="get" class="mb-0">
                        <input type="hidden" name="type" value="{{ request()->get('type') }}">
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label">{{trans('admin/main.search')}}</label>
                    <input name="title" type="text" class="form-control" value="{{ request()->get('title') }}">
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label">{{trans('admin/main.start_date')}}</label>
                    <div class="input-group">
                        <input type="date" id="from" class="text-center form-control" name="from" value="{{ request()->get('from') }}" placeholder="Start Date">
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label">{{trans('admin/main.end_date')}}</label>
                    <div class="input-group">
                        <input type="date" id="to" class="text-center form-control" name="to" value="{{ request()->get('to') }}" placeholder="End Date">
                    </div>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label">{{trans('admin/main.filters')}}</label>
                    <select name="sort" data-plugin-selectTwo class="form-control populate">
                        <option value="">{{trans('admin/main.filter_type')}}</option>
                        <option value="has_discount" @if(request()->get('sort') == 'has_discount') selected @endif>{{trans('admin/main.discounted_classes')}}</option>
                        <option value="sales_asc" @if(request()->get('sort') == 'sales_asc') selected @endif>{{trans('admin/main.sales_ascending')}}</option>
                        <option value="sales_desc" @if(request()->get('sort') == 'sales_desc') selected @endif>{{trans('admin/main.sales_descending')}}</option>
                        <option value="price_asc" @if(request()->get('sort') == 'price_asc') selected @endif>{{trans('admin/main.Price_ascending')}}</option>
                        <option value="price_desc" @if(request()->get('sort') == 'price_desc') selected @endif>{{trans('admin/main.Price_descending')}}</option>
                        <option value="income_asc" @if(request()->get('sort') == 'income_asc') selected @endif>{{trans('admin/main.Income_ascending')}}</option>
                        <option value="income_desc" @if(request()->get('sort') == 'income_desc') selected @endif>{{trans('admin/main.Income_descending')}}</option>
                        <option value="created_at_asc" @if(request()->get('sort') == 'created_at_asc') selected @endif>{{trans('admin/main.create_date_ascending')}}</option>
                        <option value="created_at_desc" @if(request()->get('sort') == 'created_at_desc') selected @endif>{{trans('admin/main.create_date_descending')}}</option>
                        <option value="updated_at_asc" @if(request()->get('sort') == 'updated_at_asc') selected @endif>{{trans('admin/main.update_date_ascending')}}</option>
                        <option value="updated_at_desc" @if(request()->get('sort') == 'updated_at_desc') selected @endif>{{trans('admin/main.update_date_descending')}}</option>
                        <option value="public_courses" @if(request()->get('sort') == 'public_courses') selected @endif>{{trans('update.public_courses')}}</option>
                        <option value="courses_private" @if(request()->get('sort') == 'courses_private') selected @endif>{{trans('update.courses_private')}}</option>
                    </select>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label"></label>
                    <select name="" multiple="multiple" data-search-option="just_teacher_role" class="form-control search-user-select2" data-placeholder="Search teachers">


                        <option value="" selected></option>

                    </select>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label"></label>
                    <select name="category_id" data-plugin-selectTwo class="form-control populate">
                        <option value=""></option>


                        <optgroup label="">

                            <option value="" selected="selected"></option>

                        </optgroup>

                        <option value="" selected="selected"></option>

                    </select>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group">
                    <label class="input-label"></label>
                    <select name="status" data-plugin-selectTwo class="form-control populate">
                        <option value=""></option>
                        <option value="pending"></option>

                        <option value="active_not_conducted"></option>
                        <option value="active_in_progress"></option>
                        <option value="active_finished"></option>

                        <option value="active"></option>

                        <option value="inactive"></option>
                        <option value="is_draft"></option>
                        </option>
                    </select>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group mt-1">
                    <label class="input-label mb-4"> </label>
                    <input type="submit" class="text-center btn btn-primary w-100" value="{{trans('admin/main.show_results')}}">
                </div>
            </div>
        </div>
        </form>
    </div>
</section>
--}}
<div class="row">
    <div class="col-12 col-md-12">
        <div class="card">
            <div class="card-header">

                <div class="text-right">
                   <a href="{{ route('add_new_book') }}" class="btn btn-sm btn-primary">اضف كتاب جديد</a>
                </div>

            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped font-14 ">
                        <tr>
                            <th>
                                
                            </th>
                            <th class="text-left">العنوان</th>
                            <th>السعر بالدولار</th>
                            <th>رابط الكتاب</th>
                            <th>كود الكتاب</th>
                            <th></th>
                            <th width="120"></th>
                        </tr>

                        @foreach($ebooks as $ebook)
                        <tr class="text-center">
                            <td>
                                <img style="margin: 5px;text-align: center;height: 100px; width: 100px; border: 1px black solid" src="{{ asset('/store/uploads/'.$ebook->cover) }}" />
                            </td>
                            <td width="18%" class="text-left">
                                <a class="text-primary mt-0 mb-1 font-weight-bold" href="{{ $ebook->file }}">{{ $ebook->title }}</a>
                            </td>

                            <td>

                                <span class="mt-0 mb-1">
                                    {{ $ebook->price }}
                                </span>

                            </td>

                            <td>
                                <a href="{{ asset('/store/uploads/books-resources/'.$ebook->file) }}" target="_blank">انقر هنا</a>
                            </td>
                            {{--<td>
                                <a href="{{ route('show.ebook', ['ebookName' => 'book-1']) }}" target="_blank">انقر هنا</a>
                            </td>--}}
                            <td class="font-12">
                                {{ $ebook->code }}
                            </td>
                            <td>
                                <a href="{{ asset('/store/uploads/books-resources/'.$ebook->file) }}" class="btn btn-sm btn-info">عرض</a>

                                {{-- <a href="{{ route('books.show', ['id' => $ebook->id]) }}" class="btn btn-sm btn-info">عرض</a> --}}
                            </td>




                        </tr>
                        @endforeach
                    </table>
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