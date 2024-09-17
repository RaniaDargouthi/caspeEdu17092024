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

            <div class="container user-select-none">

                @if ($heroSection == '2')
                    <div class="row slider-content align-items-center hero-section2 flex-column-reverse flex-md-row">
                        <div class="col-12 col-md-7 col-lg-6">
                            <h1 class="text-secondary font-weight-bold">{{ $heroSectionData['title'] }}</h1>
                            <p class="slide-hint text-gray mt-20">{!! nl2br($heroSectionData['description']) !!}</p>

                            <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-30 w-100">
                                <div class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                    <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                        placeholder="{{ trans('home.slider_search_placeholder') }}" />
                                    <button type="submit"
                                        class="btn btn-primary rounded-pill">{{ trans('home.find') }}</button>
                                </div>
                            </form>
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

                                <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-50 w-100">
                                    <div class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                        <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                            placeholder="{{ trans('home.slider_search_placeholder') }}" />
                                        <button type="submit"
                                            class="btn btn-primary rounded-pill">{{ trans('home.find') }}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </section>
    @endif


    {{-- Statistics --}}
    @include('web.default.pages.includes.home_statistics')


    <section class=" ">

        <style>
       
         
            .rowbg {
                margin-top: -40px;
                background-image: url('{{ asset('image/bg4.png') }}');

                height:600px;

                background-size: 100% 100%;
                background-position: center;

                background-repeat: no-repeat;


            }
            .btn-custom{
                font-size: 3vh;
                border-color: rgb(242, 115, 4);
            }
        </style>

        <div class="row rowbg d-flex justify-content-center align-items-center">
            <div class="container " style="margin-top: -10%">
                <!-- Première ligne contenant deux boutons -->
                <div class="row justify-content-center align-items-center g-2">
                    <div class="col-3">
                        <a href="{{ route('reading.niveauReading') }}" class="  btn btn-light btn-custom w-50 "
                            >
                            عربية
                        </a>
                    </div>
                    <div class="col-3">
                        <a href="{{ route('reading.niveauReading') }}" class="btn btn-light btn-custom w-50"
                            >
                            رياضيات
                        </a>
                    </div>
                </div>

                <!-- Deuxième ligne contenant trois boutons -->
                <div class="row justify-content-center align-items-center g-2 mt-15">
                    <div class="col-3 mt-20">
                        <a href="{{ route('reading.niveauReading') }}" class="btn btn-light btn-custom w-50"
                            >
                            إيقاظ
                        </a>
                    </div>
                    <div class="col-3  mt-20">
                        <a href="{{ route('reading.niveauReading') }}" class="btn btn-light btn-custom w-50"
                           >
                            أنشطة
                                           
                        </a>
                    </div>
                    <div class="col-3  mt-20">
                        <a href="{{ route('reading.niveauReading') }}" class="btn btn-light btn-custom w-50"
                            >
                            فرنسية
                        </a>
                    </div>
                </div>
            </div>

            {{-- <!-- Blimps (Dirigeables) avec texte superposé -->
            <a href="{{ route('reading.niveauReading') }}" class="col blimp">
                <img src="{{ asset('image/blimpon.png') }}" alt="Blimp">
                <span>عربية</span>
            </a>
            <a href="{{ route('QuizzesType') }}" class="col blimp">
                <img src="{{ asset('image/blimp3.png') }}" alt="Blimp">
                <span>رياضيات</span>
            </a>
            <a href="{{ route('QuizzesType') }}" class="col blimp">
                <img src="{{ asset('image/blimp3.png') }}" alt="Blimp">
                <span>إيقاظ</span>
            </a>
            <a href="{{ route('QuizzesType') }}" class="col blimp">
                <img src="{{ asset('image/blimp3.png') }}" alt="Blimp">
                <span>أنشطة</span>
            </a>
            <a href="{{ route('QuizzesType') }}" class="col blimp">
                <img src="{{ asset('image/blimp3.png') }}" alt="Blimp">
                <span>فرنسية</span>
            </a> --}}
        </div>


    </section>

@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/default/vendors/owl-carousel2/owl.carousel.min.js"></script>
    <script src="/assets/default/vendors/parallax/parallax.min.js"></script>
    <script src="/assets/default/js/parts/home.min.js"></script>
@endpush
