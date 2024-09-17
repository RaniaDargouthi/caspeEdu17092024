<div class="webinar-card">
    <figure>
        <div class="image-box">
            @if($book->bestTicket() < $book->price)
                <span class="badge badge-danger">{{ trans('public.offer',['off' => $book->bestTicket(true)['percent']]) }}</span>
            @elseif(empty($isFeature) and !empty($book->feature))
                <span class="badge badge-warning">{{ trans('home.featured') }}</span>
            @elseif($book->type == 'webinar')
                @if($book->start_date > time())
                    <span class="badge badge-primary">{{  trans('panel.not_conducted') }}</span>
                @elseif($book->isProgressing())
                    <span class="badge badge-secondary">{{ trans('webinars.in_progress') }}</span>
                @else
                    <span class="badge badge-secondary">{{ trans('public.finished') }}</span>
                @endif
            @elseif(!empty($book->type))
                <span class="badge badge-primary">{{ trans('webinars.'.$book->type) }}</span>
            @endif

            <a href="{{ $book->getUrl() }}">
                <img src="{{ $book->getImage() }}" class="img-cover" alt="{{ $book->title }}">
            </a>


            @if($book->checkShowProgress())
                <div class="progress">
                    <span class="progress-bar" style="width: {{ $book->getProgress() }}%"></span>
                </div>
            @endif

            @if($book->type == 'webinar')
                <a href="{{ $book->addToCalendarLink() }}" target="_blank" class="webinar-notify d-flex align-items-center justify-content-center">
                    <i data-feather="bell" width="20" height="20" class="webinar-icon"></i>
                </a>
            @endif
        </div>

        <figcaption class="webinar-card-body">
            <div class="user-inline-avatar d-flex align-items-center">
                <div class="avatar bg-gray200">
                    <img src="{{ $book->teacher->getAvatar() }}" class="img-cover" alt="{{ $book->teacher->full_name }}">
                </div>
                <a href="{{ $book->teacher->getProfileUrl() }}" target="_blank" class="user-name ml-5 font-14">{{ $book->teacher->full_name }}</a>
            </div>

            <a href="{{ $book->getUrl() }}">
                <h3 class="mt-15 webinar-title font-weight-bold font-16 text-dark-blue">{{ clean($book->title,'title') }}</h3>
            </a>

            @if(!empty($book->category))
                <span class="d-block font-14 mt-10">{{ trans('public.in') }} <a href="{{ $book->category->getUrl() }}" target="_blank" class="text-decoration-underline">{{ $book->category->title }}</a></span>
            @endif

            @include(getTemplate() . '.includes.webinar.rate',['rate' => $book->getRate()])

            <div class="d-flex justify-content-between mt-20">
                <div class="d-flex align-items-center">
                    <i data-feather="clock" width="20" height="20" class="webinar-icon"></i>
                    <span class="duration font-14 ml-5">{{ convertMinutesToHourAndMinute($book->duration) }} {{ trans('home.hours') }}</span>
                </div>

                <div class="vertical-line mx-15"></div>

                <div class="d-flex align-items-center">
                    <i data-feather="calendar" width="20" height="20" class="webinar-icon"></i>
                    <span class="date-published font-14 ml-5">{{ dateTimeFormat(!empty($book->start_date) ? $book->start_date : $book->created_at,'j M Y') }}</span>
                </div>
            </div>

            <div class="webinar-price-box mt-25">
            @if(!empty($isRewardCourses) and !empty($book->points))
                    <span class="text-warning real font-14">{{ $book->points }} {{ trans('update.points') }}</span>
                @elseif(!empty($book->price) and $book->price > 0)
                    @if($book->bestTicket() < $book->price)
                        <span class="real">{{ handlePrice($book->bestTicket(), true, true, false, null, true) }}</span>
                        <span class="off ml-10">{{ handlePrice($book->price, true, true, false, null, true) }}</span>
                    @else
                        <span class="real">{{ handlePrice($book->price, true, true, false, null, true) }}</span>
                    @endif
                @else
                    <span class="real font-14">{{ trans('public.free') }}</span>
                @endif
            </div>
        </figcaption>
    </figure>
</div>
