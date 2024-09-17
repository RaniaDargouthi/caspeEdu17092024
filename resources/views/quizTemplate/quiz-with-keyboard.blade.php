{{-- @extends('quizzes.layout') --}}
@extends('admin.layouts.app')
<link rel="stylesheet" href="{{ asset('quiz-assets/lesTeste/style8.css') }}">
@section('stylesheets')
    <!-- Inclure les CSS Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Inclure le CSS personnalisé -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
@endsection
@section('content')
    <audio id="bravo">
        <source src="{{ asset('audio/bravo.mp3') }}">
    </audio>
    
    <audio id="faux">
        <source src="{{ asset('audio/faux.mp3') }}">
    </audio>
    <audio id="son1">
        <source src="audio/1.0.mp3">
    </audio>
    <!--Fin son-->


    <!-- Header -->
    <style>
        .rounded-top-left {
            border-top-left-radius: 3rem;
            border-bottom-left-radius: 3rem;
        }

        .rounded-top-right {
            border-top-right-radius: 3rem;
            border-bottom-right-radius: 3rem;
        }

        .Lang {
            background-color: #eff2f5;
            color: black
        }

        .color-blue {
            color: #0d6efd;
        }
    </style>
    <div class="container h-50  mt-5">
        <div class="row ">
            <div class="col-3 mt-3 rounded-top-left d-flex align-items-center justify-content-start"
                style="background-color: #feeeee; color:#7fc8bb;">
                <span class="d-inline-block text-center"> {{ $serie->serie_name }} </span>
            </div>
            <div class="col mt-3 d-flex align-items-center justify-content-center">
                <img src="{{ asset('image/logo.png') }}" class="img-fluid mw-5" style="max-width: 17%; height: auto;"
                    alt="Logo">
            </div>
            <div class="col mt-3 rounded-top-right d-flex align-items-center justify-content-end"
                style="background-color: #f0d5f0;">
                <div class="d-flex flex-row justify-content-end">
                    <div class="btn rounded-circle mx-3 Lang">Al</div>
                    <div class="btn rounded-circle mx-3 Lang">Tr</div>
                    <div class="btn rounded-circle mx-3 Lang">En</div>
                    <div class="btn rounded-circle mx-3 Lang">Fr</div>
                </div>
            </div>
        </div>

        <div class="row mt-3 ">
            <div class="col-md-4  rounded-top-left d-flex align-items-center justify-content-start"
                style="background-color: #dbe7f7;">
                <span class="d-inline-block text-start"> {{ $quiz->question }}</span>
            </div>

            <div class="col ">
            </div>
            <div class="col-md-6 mt-3 m-md-3 text-md-end  d-flex align-items-center justify-content-end">
                <span class="d-inline-block text-center color-blue"> </span>
            </div>
        </div>
        <!-- Fin Header -->


        <!-- Main exercice -->
        @isset($finish)
            Vous avez terminé la série.
        @endisset

        <div class="container text-center mt-3">
        <div class="exercice">
            <div id="numQuestion">{{ $quiz->question_number }}</div>
            <div class="clavier">
                <div class="ligne1">
                    <div class="buttom" id="L1">أ</div>
                    <div class="buttom" id="L2">ب</div>
                    <div class="buttom" id="L3">ت</div>
                    <div class="buttom" id="L4">ث</div>
                    <div class="buttom" id="L5">ج</div>
                    <div class="buttom" id="L6">ح</div>
                    <div class="buttom" id="L7">خ</div>
                    <div class="buttom" id="L8">د</div>
                    <div class="buttom" id="L9">ذ</div>
                    <div class="buttom" id="L10">ر</div>
                    <div class="buttom" id="L11">ز</div>
                </div>
                <div class="ligne2">
                    <div class="buttom" id="L12">س</div>
                    <div class="buttom" id="L13">ش</div>
                    <div class="buttom" id="L14">ص</div>
                    <div class="buttom" id="L15">ض</div>
                    <div class="buttom" id="L16">ط</div>
                    <div class="buttom" id="L17">ظ</div>
                    <div class="buttom" id="L18">ع</div>
                    <div class="buttom" id="L19">غ</div>
                    <div class="buttom" id="L20">ف</div>
                    <div class="buttom" id="L21">ق</div>
                    <div class="buttom" id="L22">ك</div>
                </div>
                <div class="ligne3">
                    <div class="buttom" id="L23">ل</div>
                    <div class="buttom" id="L24">م</div>
                    <div class="buttom" id="L25">ن</div>
                    <div class="buttom" id="L26">ه</div>
                    <div class="buttom" id="L27">و</div>
                    <div class="buttom" id="L28">ي</div>
                    <div class="buttom" id="L29">إ</div>
                    <div class="buttom" id="L30">ت</div>
                    <div class="buttom" id="L31">ا</div>
                    <div class="buttom" id="L32">ى</div>
                    <div class="buttom" id="L33">X</div>
                </div>
            </div>

            <div class="mot" id="m1">
                <audio id="audio">
                    <source src="{{ asset($quiz->sound_file) }}" type="audio/mpeg">
                </audio>
                <div class="volume">
                    <img id="son" src="{{ asset('quiz-assets/lesTeste/image/volume.png') }}">
                </div>
                <div class="lettre">.</div>
                <div class="lettre2">جّ</div>
                <div class="lettre2">ا</div>
                <div class="lettre">.</div>
                <div class="lettre2">ة</div>
            </div>

            <div class="images">
                <img id="imgEx" src="{{$quiz->picture_file  }}">

            </div>


        </div>

{{--        <footer>--}}
{{--            <div class="passeButton" onclick="passeButton()"> </div>--}}
{{--        </footer>--}}
    </div>

    <!-- Fin Main exercice -->
@endsection


@section('javascript')
    <!-- Inclure jQuery et Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- Votre JavaScript personnalisé -->
@endsection
<script>
    // play son
        document.addEventListener('DOMContentLoaded', function() {
        var audio = document.getElementById('audio');
        var playButton = document.getElementById('son');

        playButton.addEventListener('click', function() {
        audio.play();
             });
        });
    // onclique lettre
    document.addEventListener('DOMContentLoaded', function() {
        var lettres = document.querySelectorAll('.buttom');
        var index = 0;

        lettres.forEach(function(lettre) {
            lettre.addEventListener('click', function() {
                var lettreClique = this.textContent.trim();
                console.log("lettreClique",lettreClique);
                var lettresCibles = document.querySelectorAll('.lettre');
                var lettreCible = lettresCibles[index];

                // Vérifier si une lettre cible existe
                if (lettreClique == 'X') {
                    console.log("lettreClique Vuuuu xxx",lettreClique);

                    supprimerDerniereModification();
                } else if (lettreCible) {
                    console.log("lettreClique else if",lettreClique);

                    lettreCible.textContent = lettreClique;
                    index = (index + 1) % lettresCibles.length; // Incrémenter l'index et revenir au début si nécessaire
                }
            });
        });

    });
    function supprimerDerniereModification() {
        var lettresCibles = document.querySelectorAll('.lettre');
        var indexPrecedent = (index - 1 + lettresCibles.length) % lettresCibles.length;

        if (lettresCibles[indexPrecedent]) {
            lettresCibles[indexPrecedent].textContent = '.';
            index = indexPrecedent;
        }
    }

</script>
