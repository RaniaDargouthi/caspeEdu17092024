@extends(getTemplate() . '.layouts.app')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
@endpush

@section('content')
    <section class="home-sections home-sections-swiper container">
        <div class="" style="margin-top: -8%">
            <h2 class="section-title">المستويات</h2>
        </div>


        <div class=" position-relative">

            <div class="row d-flex  justify-content-between  " style="transform: translate3d(0px, 0px, 0px);">
                @foreach ($levels as $levels)
                    <div class="swiper-slide swiper-slide-active mt-15 " style="width: 320px; margin-left: 16px;">
                        <div class="webinar-card">
                            <figure>
                                <div class="image-box">

                                    {{-- <a href="https://casp.education/course/course-ecole">
                                            <img src="/store/uploads/{{ $levels->cover }}" class="img-cover"
                                                alt="course ecole">
                                        </a> --}}
                                    <a href="{{route('QuizzesType')}}">
                                        <img src="{{ asset('image/' . $levels->cover) }}" class="img-cover" />

                                    </a>




                                </div>

                                <figcaption class=" d-flex  row webinar-card-body">

                                    <div class="col-9">
                                        <a href="{{route('QuizzesType')}}">
                                            <h3 class="mt-15 webinar-title font-weight-bold font-2 text-dark-blue">
                                                {{ $levels->title }}</h3>
                                        </a>
                                    </div>





                                    <div class="col">
                                        <div class="webinar-price-box mt-15">
                                            <span class="real">${{ $levels->price }}</span>
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                @endforeach
            </div>


        </div>
    </section>
@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/default/vendors/owl-carousel2/owl.carousel.min.js"></script>
    <script src="/assets/default/vendors/parallax/parallax.min.js"></script>
    <script src="/assets/default/js/parts/home.min.js"></script>
@endpush
