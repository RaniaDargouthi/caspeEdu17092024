@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
@endpush

@section('content')

    <section class="">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">{{ trans('product.courses') }}</h2>
        </div>

        @if(!empty($bundle->bundleWebinars) and !$bundle->bundleWebinars->isEmpty())
            @foreach($bundle->bundleWebinars as $bundleWebinar)
                @php
                    $book = $bundleWebinar->webinar;
                    $lastSession = $book->lastSession();
                    $nextSession = $book->nextSession();
                    $isProgressing = false;

                    if($book->start_date <= time() and !empty($lastSession) and $lastSession->date > time()) {
                        $isProgressing=true;
                    }
                @endphp

                <div class="row mt-30">
                    <div class="col-12">
                        <div class="webinar-card webinar-list d-flex">
                            <div class="image-box">
                                <img src="{{ $book->getImage() }}" class="img-cover" alt="">

                                @switch($book->status)
                                    @case(\App\Models\Webinar::$active)
                                    @if($book->isWebinar())
                                        @if($book->start_date > time())
                                            <span class="badge badge-primary">{{  trans('panel.not_conducted') }}</span>
                                        @elseif($book->isProgressing())
                                            <span class="badge badge-secondary">{{ trans('webinars.in_progress') }}</span>
                                        @else
                                            <span class="badge badge-secondary">{{ trans('public.finished') }}</span>
                                        @endif
                                    @else
                                        <span class="badge badge-secondary">{{ trans('webinars.'.$book->type) }}</span>
                                    @endif
                                    @break
                                    @case(\App\Models\Webinar::$isDraft)
                                    <span class="badge badge-danger">{{ trans('public.draft') }}</span>
                                    @break
                                    @case(\App\Models\Webinar::$pending)
                                    <span class="badge badge-warning">{{ trans('public.waiting') }}</span>
                                    @break
                                    @case(\App\Models\Webinar::$inactive)
                                    <span class="badge badge-danger">{{ trans('public.rejected') }}</span>
                                    @break
                                @endswitch

                                @if($book->isWebinar())
                                    <div class="progress">
                                        <span class="progress-bar" style="width: {{ $book->getProgress() }}%"></span>
                                    </div>
                                @endif
                            </div>

                            <div class="webinar-card-body w-100 d-flex flex-column">
                                <div class="d-flex align-items-center justify-content-between">
                                    <a href="{{ $book->getUrl() }}" target="_blank">
                                        <h3 class="font-16 text-dark-blue font-weight-bold">{{ $book->title }}
                                            <span class="badge badge-dark ml-10 status-badge-dark">{{ trans('webinars.'.$book->type) }}</span>
                                        </h3>
                                    </a>

                                    @if($authUser->id == $book->creator_id or $authUser->id == $book->teacher_id)
                                        <div class="btn-group dropdown table-actions">
                                            <button type="button" class="btn-transparent dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i data-feather="more-vertical" height="20"></i>
                                            </button>
                                            <div class="dropdown-menu ">
                                                @if(!empty($book->start_date) and ($authUser->id == $book->creator_id or $authUser->id == $book->teacher_id))
                                                    <button type="button" data-webinar-id="{{ $book->id }}" class="js-webinar-next-session webinar-actions btn-transparent d-block">{{ trans('public.create_join_link') }}</button>
                                                @endif

                                                <a href="{{ $book->getLearningPageUrl() }}" target="_blank" class="webinar-actions d-block mt-10">{{ trans('update.learning_page') }}</a>

                                                <a href="/panel/webinars/{{ $book->id }}/edit" class="webinar-actions d-block mt-10">{{ trans('public.edit') }}</a>

                                                @if($book->isWebinar())
                                                    <a href="/panel/webinars/{{ $book->id }}/step/4" class="webinar-actions d-block mt-10">{{ trans('public.sessions') }}</a>
                                                @endif

                                                <a href="/panel/webinars/{{ $book->id }}/step/4" class="webinar-actions d-block mt-10">{{ trans('public.files') }}</a>


                                                @if($book->isOwner($authUser->id))
                                                    <a href="/panel/webinars/{{ $book->id }}/export-students-list" class="webinar-actions d-block mt-10">{{ trans('public.export_list') }}</a>
                                                @endif

                                                @if($authUser->id == $book->creator_id)
                                                    <a href="/panel/webinars/{{ $book->id }}/duplicate" class="webinar-actions d-block mt-10">{{ trans('public.duplicate') }}</a>
                                                @endif

                                                @if($book->isOwner($authUser->id))
                                                    <a href="/panel/webinars/{{ $book->id }}/statistics" class="webinar-actions d-block mt-10">{{ trans('update.statistics') }}</a>
                                                @endif

                                                @if($book->creator_id == $authUser->id)
                                                    <a href="/panel/webinars/{{ $book->id }}/delete" class="webinar-actions d-block mt-10 text-danger delete-action">{{ trans('public.delete') }}</a>
                                                @endif
                                            </div>
                                        </div>
                                    @endif
                                </div>

                                @include(getTemplate() . '.includes.webinar.rate',['rate' => $book->getRate()])

                                <div class="webinar-price-box mt-15">
                                    @if($book->price > 0)
                                        @if($book->bestTicket() < $book->price)
                                            <span class="real">{{ handlePrice($book->bestTicket()) }}</span>
                                            <span class="off ml-10">{{ handlePrice($book->price) }}</span>
                                        @else
                                            <span class="real">{{ handlePrice($book->price) }}</span>
                                        @endif
                                    @else
                                        <span class="real">{{ trans('public.free') }}</span>
                                    @endif
                                </div>

                                <div class="d-flex align-items-center justify-content-between flex-wrap mt-auto">
                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">{{ trans('public.item_id') }}:</span>
                                        <span class="stat-value">{{ $book->id }}</span>
                                    </div>

                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">{{ trans('public.category') }}:</span>
                                        <span class="stat-value">{{ !empty($book->category_id) ? $book->category->title : '' }}</span>
                                    </div>

                                    @if($book->isProgressing() and !empty($nextSession))
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('webinars.next_session_duration') }}:</span>
                                            <span class="stat-value">{{ convertMinutesToHourAndMinute($nextSession->duration) }} Hrs</span>
                                        </div>

                                        @if($book->isWebinar())
                                            <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                <span class="stat-title">{{ trans('webinars.next_session_start_date') }}:</span>
                                                <span class="stat-value">{{ dateTimeFormat($nextSession->date,'j M Y') }}</span>
                                            </div>
                                        @endif
                                    @else
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('public.duration') }}:</span>
                                            <span class="stat-value">{{ convertMinutesToHourAndMinute($book->duration) }} Hrs</span>
                                        </div>

                                        @if($book->isWebinar())
                                            <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                <span class="stat-title">{{ trans('public.start_date') }}:</span>
                                                <span class="stat-value">{{ dateTimeFormat($book->start_date,'j M Y') }}</span>
                                            </div>
                                        @endif
                                    @endif

                                    @if($book->isTextCourse() or $book->isCourse())
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('public.files') }}:</span>
                                            <span class="stat-value">{{ $book->files->count() }}</span>
                                        </div>
                                    @endif

                                    @if($book->isTextCourse())
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('webinars.text_lessons') }}:</span>
                                            <span class="stat-value">{{ $book->textLessons->count() }}</span>
                                        </div>
                                    @endif

                                    @if($book->isCourse())
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('home.downloadable') }}:</span>
                                            <span class="stat-value">{{ ($book->downloadable) ? trans('public.yes') : trans('public.no') }}</span>
                                        </div>
                                    @endif

                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">{{ trans('panel.sales') }}:</span>
                                        <span class="stat-value">{{ count($book->sales) }} ({{ (!empty($book->sales) and count($book->sales)) ? handlePrice($book->sales->sum('amount')) : 0 }})</span>
                                    </div>

                                    @if(!empty($book->partner_instructor) and $book->partner_instructor and $authUser->id != $book->teacher_id and $authUser->id != $book->creator_id)
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('panel.invited_by') }}:</span>
                                            <span class="stat-value">{{ $book->teacher->full_name }}</span>
                                        </div>
                                    @elseif($authUser->id != $book->teacher_id and $authUser->id != $book->creator_id)
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('webinars.teacher_name') }}:</span>
                                            <span class="stat-value">{{ $book->teacher->full_name }}</span>
                                        </div>
                                    @elseif($authUser->id == $book->teacher_id and $authUser->id != $book->creator_id and $book->creator->isOrganization())
                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">{{ trans('webinars.organization_name') }}:</span>
                                            <span class="stat-value">{{ $book->creator->full_name }}</span>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        @else
            @include(getTemplate() . '.includes.no-result',[
                'file_name' => 'webinar.png',
                'title' => trans('panel.you_not_have_any_webinar'),
                'hint' =>  trans('panel.no_result_hint') ,
                'btn' => ['url' => '/panel/webinars/new','text' => trans('panel.create_a_webinar') ]
            ])
        @endif

    </section>

    @include('web.default.panel.webinar.make_next_session_modal')

@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>

    <script>
        var undefinedActiveSessionLang = '{{ trans('webinars.undefined_active_session') }}';
        var saveSuccessLang = '{{ trans('webinars.success_store') }}';
        var selectChapterLang = '{{ trans('update.select_chapter') }}';
    </script>

    <script src="/assets/default/js/panel/make_next_session.min.js"></script>
@endpush
