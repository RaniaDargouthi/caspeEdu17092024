<div class="gift-webinar-card bg-white">
    <figure>
        <div class="image-box">
            <a href="{{ $book->getUrl() }}">
                <img src="{{ $book->getImage() }}" class="img-cover" alt="{{ $book->title }}">
            </a>
        </div>

        <figcaption class="mt-10">
            <div class="user-inline-avatar d-flex align-items-center">
                <div class="avatar bg-gray200">
                    <img src="{{ $book->teacher->getAvatar() }}" class="img-cover" alt="{{ $book->teacher->full_name }}">
                </div>
                <a href="{{ $book->teacher->getProfileUrl() }}" target="_blank" class="user-name ml-5 font-14">{{ $book->teacher->full_name }}</a>
            </div>

            <a href="{{ $book->getUrl() }}">
                <h3 class="mt-15 webinar-title font-weight-bold font-16 text-dark-blue">{{ clean($book->title,'title') }}</h3>
            </a>

            @if($book->getRate())
                @include('web.default.includes.webinar.rate',['rate' => $book->getRate()])
            @endif

            <div class="webinar-price-box mt-15">
                @if(!empty($book->price) and $book->price > 0)
                    @if($book->bestTicket() < $book->price)
                        <span class="real">{{ handlePrice($book->bestTicket()) }}</span>
                        <span class="off ml-10">{{ handlePrice($book->price) }}</span>
                    @else
                        <span class="real">{{ handlePrice($book->price) }}</span>
                    @endif
                @else
                    <span class="real font-14">{{ trans('public.free') }}</span>
                @endif
            </div>
        </figcaption>
    </figure>
</div>
