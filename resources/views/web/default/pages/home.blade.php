@extends(getTemplate() . '.layouts.app')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
@endpush

@section('content')

    @if (!empty($heroSectionData))

        @if (!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == '1')
            @push('scripts_bottom')
                <script src="/assets/default/vendors/lottie/lottie-player.js"></script>
            @endpush
        @endif

        <section class="slider-container  {{ $heroSection == '2' ? 'slider-hero-section2' : '' }}"
            @if (empty($heroSectionData['is_video_background'])) style="background-image: url('{{ $heroSectionData['hero_background'] }}')" @endif>

            @if ($heroSection == '1')
                @if (!empty($heroSectionData['is_video_background']))
                    <video playsinline autoplay muted loop id="homeHeroVideoBackground" class="img-cover">
                        <source src="{{ $heroSectionData['hero_background'] }}" type="video/mp4">
                    </video>
                @endif

                <div class="mask"></div>
            @endif
<!-- text inn hero-->
            <div class="container user-select-none ">

                @if ($heroSection == '2')
                    <div class="row slider-content align-items-center hero-section2 flex-column-reverse flex-md-row">
                        <div class="col-12 col-md-7 col-lg-6">
                            <h1 class="text-secondary font-weight-bold">{{ $heroSectionData['title'] }}</h1>
                            <p class="slide-hint text-gray mt-20">{!! nl2br($heroSectionData['description']) !!}</p>

                            {{-- <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-30 w-100">
                                <div class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                    <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                        placeholder="{{ trans('home.slider_search_placeholder') }}" />
                                    <button type="submit"
                                        class="btn btn-primary rounded-pill">{{ trans('home.find') }}</button>
                                </div>
                            </form> --}}
                        </div>
                        <div class="col-12 col-md-5 col-lg-6">
                            @if (!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == '1')
                                <lottie-player src="{{ $heroSectionData['hero_vector'] }}" background="transparent"
                                    speed="1" class="w-100" loop autoplay></lottie-player>
                            @else
                                <img src="{{ $heroSectionData['hero_vector'] }}" alt="{{ $heroSectionData['title'] }}"
                                    class="img-cover">
                            @endif
                        </div>
                    </div>
                @else
                    <div class="text-center slider-content">
                        <h1>{{ $heroSectionData['title'] }}</h1>
                        <div class="row h-100 align-items-center justify-content-center text-center">
                            <div class="col-12 col-md-9 col-lg-7">
                                <p class="mt-30 slide-hint">{!! nl2br($heroSectionData['description']) !!}</p>

                                {{-- <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-50 w-100">
                                    <div class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                        <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                            placeholder="{{ trans('home.slider_search_placeholder') }}" />
                                        <button type="submit"
                                            class="btn btn-primary rounded-pill">{{ trans('home.find') }}</button>
                                    </div>
                                </form> --}}
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </section>
    @endif


    {{-- Statistics --}}
    {{-- @include('web.default.pages.includes.home_statistics') --}}

    <!-- nos partenair-->
    {{-- <section class="home-sections home-sections-swiper container">
    <div class="d-flex justify-content-between ">
        <div>
            <h2 class="section-title">شركائنا</h2>
        </div>

        <a href="/classes?sort=newest" class="btn btn-border-white">عرض الكل</a>
    </div>
    <div class="mt-10 position-relative">
        <div class="swiper-container latest-webinars-swiper px-12 swiper-container-initialized swiper-container-horizontal swiper-container-rtl">
            <div class="swiper-wrapper py-20" style="transform: translate3d(0px, 0px, 0px);">
                @foreach ($books as $book)
                <div class="swiper-slide swiper-slide-active" style="width: 320px; margin-left: 16px;">
                    <div class="webinar-card">
                        <figure>
                            <div class="image-box">

                                <a href="https://casp.education/course/course-ecole">
                                    <img src="/store/uploads/{{ $book->cover }}" class="img-cover" alt="course ecole">
                                </a>




                            </div>

                            <figcaption class="webinar-card-body">


                                <a href="https://casp.education/course/course-ecole">
                                    <h3 class="mt-15 webinar-title font-weight-bold font-16 text-dark-blue">{{ $book->title }}</h3>
                                </a>

                                <span class="d-block font-14 mt-10"><a href="/categories/لغة-عربية" target="_blank" class="text-decoration-underline">عرض</a></span>

                                <div class="stars-card d-flex align-items-center  mt-15">

                                </div>



                                <div class="webinar-price-box mt-25">
                                    <span class="real">${{ $book->price }}</span>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                @endforeach
            </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

     
            <div class="d-flex justify-content-center">
            <div class="swiper-pagination latest-webinars-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span></div>
       
        </div> 
    </div>
   
    </div>
    </section> --}}
    <!-- nos Quizzes-->

    <section class="home-sections home-sections-swiper container">
        <div class="d-flex justify-content-between ">
            <div>
                <h2 class="section-title">
                    {{-- شركائنا --}}


                </h2>
            </div>

        </div>
        <div class="position-relative d-none">
            <style>
                .sky {
                    background-image: url('{{ asset('image/bg11.png') }}');
                    height: 600px;

                    background-size: 100% 100%;
                    background-position: center;

                    background-repeat: no-repeat;
                    /* background-color: #f0f8ff; */
                    /* Optionnel : pour un fond léger représentant le ciel */
                    /* padding: 20px; */
                }

                .blimp {
                    position: relative;
                    text-align: center;
                    overflow: hidden;
                    margin: 10px;
                }

                .blimp img {
                    width: 100%;
                    height: auto;
                    display: block;
                }

                .blimp span {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    color: white;
                    font-size: 1.2rem;
                    font-weight: bold;
                    text-shadow: 1px 1px 2px black;
                    /* Pour rendre le texte plus lisible */
                }
            </style>
            <div class="body1">
                <div class="container mt-4">
                    <div class="sky d-flex flex-wrap justify-content-center">
                        <!-- Blimps (Dirigeables) avec texte superposé -->
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>KG1</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>KG2</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class=" col-2 col-md-2">
                            <span>المستوي1</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>المستوي2</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-6 col-md-2">
                            <span>المستوي3</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>المستوي4</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>المستوي5</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>المستوي6</span>
                        </a>
                        <a href="{{ route('QuizzesType') }}" class="blimp col-2 col-md-2">
                            <span>المستوي7</span>
                        </a>
                    </div>
                </div>
            </div>

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
