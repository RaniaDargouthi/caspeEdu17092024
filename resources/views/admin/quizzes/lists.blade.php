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



        <div class="section-body">


            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">


                        <div class="card-body">
                            <div class="table-responsive">
                                <a href="{{ route('new_serie') }}">اضف سلسلة جديدة</a>
                                <table class="table table-striped font-14">
                                    <tr>
                                        <th class="text-left">اسم السلسلة</th>
                                        <th class="text-left">الكتاب</th>
                                        <th class="text-center">المؤلف</th>
                                        <th class="text-center">عدد التمارين</th>
                                        <th>{{ trans('admin/main.actions') }}</th>
                                    </tr>

                                    @foreach($series as $serie)
                                    <tr>
                                        <td>{{ $serie->serie_name }}</td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>
                                            <a class="btn btn-sm btn-primary" href="{{ route('serie_quizzes',['serie' => $serie->id]) }}">التمارينات</a>
                                            <a class="btn btn-sm btn-info" href="{{ route('serie.show',['serie' => $serie->id, 'currentQuizIndex' => 0]) }}">عرض السلسلة</a>

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
