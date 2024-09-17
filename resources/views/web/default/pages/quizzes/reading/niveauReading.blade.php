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

    <style>
        .niveau {
            background-image: url('{{ asset('image/lesson2.png') }}');
            background-size: 100% 100%;
            background-position: center;
            background-repeat: no-repeat;
            width: 100%;
            height: 80vh;
            /* border: 2px solid blue; Ajoute une bordure bleue autour du div */
            /* box-sizing: border-box; Assure que la bordure est incluse dans la largeur et la hauteur du div */
        }

     

        .btn-circle {
    width: 50px; /* Largeur du bouton */
    height: 50px; /* Hauteur du bouton, égale à la largeur pour un bouton circulaire */
    /* border-radius: 50%; Rendre le bouton circulaire */
    font-size: 3vh; /* Taille de la police */
    background-color: rgba(247, 118, 5, 0.675); /* Couleur de fond */
    display: flex; /* Pour centrer le texte dans le bouton */
    align-items: center; /* Centrer verticalement */
    justify-content: center; /* Centrer horizontalement */
    transition: background-color 0.3s ease, transform 0.3s ease; /* Transition pour l'animation */
}

.btn-circle:hover {
    background-color: rgba(5, 17, 247, 0.9); /* Couleur de fond au survol */
    transform: scale(1.1); /* Agrandir le bouton de 10% au survol */
}

    </style>
    <div class="niveau d-flex justify-content-center mt-5 flex-column align-items-center" style="margin-top: -5%">
        <!-- Titre en haut -->
        <div class="niveau-title  fw-bold" style="font-size: 8vh; margin-top:-5%" >الدروس</div>

        <!-- Contenu des leçons -->
        <div class="d-flex flex-row justify-content-center  align-items-center">
            <div class="col justify-content-center align-items-center" >
                <div class="col " style="margin-top: 1%">


                    <!-- Première ligne de boutons -->
                    <div class="row  justify-content-center">
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3" target="_blank">الدرس1  </a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس2 </a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس3 </a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس4</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس5</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس6</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس7</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس8</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">الدرس9</a>
                        </div>
                    </div>
                </div>
                <div class="col" style="margin-top: -3%">
                    <!-- Deuxième ligne de boutons -->
                    <div class="row justify-content-center">
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">10</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">11</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">12</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">13</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">14</a>

                        </div>

                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">15</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">16</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">17</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">18</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">19</a>
                        </div>
                    </div>

                </div>
                <div class="col" style="margin-top: -3%" >



                    <!-- Troisième ligne de boutons -->
                    <div class="row justify-content-center">
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">20</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">21</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">22</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">23</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">24</a>
                        </div>

                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">25</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">26</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">27</a>
                        </div>
                        <div class="">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">28</a>
                        </div>
                    </div>
                </div>
            </div>

            {{-- <div class="col  mt-15 " >
                <!-- Première ligne de boutons -->
                <div class="row  justify-content-center">
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">1 الدرس</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">2 الدرس</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">3 الدرس</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">4</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">5</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">6</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">7</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">8</a>
                    </div>
                    <div class="col">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">9</a>
                    </div>
                </div>

                <!-- Deuxième ligne de boutons -->
                <div class="row justify-content-center">
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">10</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">11</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">12</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">13</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">14</a>
                       
                    </div>

                        <div class="col-auto">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">15</a>
                        </div>
                        <div class="col-auto">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">16</a>
                        </div>
                        <div class="col-auto">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">17</a>
                        </div>
                        <div class="col-auto">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">18</a>
                        </div>
                        <div class="col-auto">
                            <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">19</a>
                        </div>
                </div>

                <!-- Troisième ligne de boutons -->
                <div class="row justify-content-center">
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">20</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">21</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">22</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">23</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">24</a>
                    </div>

                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">25</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">26</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">27</a>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('reading.r1') }}" class="btn btn-primary btn-circle m-3">28</a>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>
@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/default/vendors/owl-carousel2/owl.carousel.min.js"></script>
    <script src="/assets/default/vendors/parallax/parallax.min.js"></script>
    <script src="/assets/default/js/parts/home.min.js"></script>
@endpush
