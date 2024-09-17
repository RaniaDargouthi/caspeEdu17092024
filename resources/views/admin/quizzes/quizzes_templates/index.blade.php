<!DOCTYPE html>
<html dir="rtl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Scheherazade&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="{{ asset('quiz-assets/quiz-listen-complete/style1.css') }}">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>


</head>

<body>

    <!--son-->
    <audio id="mot1">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/VACHE11.mp3') }}" type="audio/mp3">
    </audio>
    <audio id="mot2">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/apple.mp3') }}" type="audio/mp3">
    </audio>
    <audio id="mot3">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/corn.mp3') }}" type="audio/mp3">
    </audio>
    <audio id="mot4">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/bear (online-audio-converter.com).mp3') }}" type="audio/mp3">
    </audio>
    <audio id="mot5">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/pomegrate.mp3') }}" type="audio/mp3">
    </audio>
    <audio id="bravo">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/bravo_2.mp3') }}" type="audio/mp3">
    </audio>
    <audio id="faux">
        <source src="{{ asset('quiz-assets/quiz-listen-complete/audio/faux.mp3') }}" type="audio/mp3">
    </audio>
    <!--finson-->

    <header>
        <div class="headline">
            <div class="titlepart">
                <div id="titre">تحديد المستوى: المرحلة  الأولى</div>
            </div>
            <div id="logo"></div>

            <div class="closn">
                <div id="Al" class="trd">Al</div>
                <div id="Tr" class="trd">Tr</div>
                <div id="Fr" class="trd">Fr</div>
                <div id="En" class="trd">En</div>
            </div>

        </div>



    </header>
    <main>
        <div class="question">

            <div class="questArab">أَسْتَمِعُ، ثُمَّ أُكْمِلُ بِالْحَرْفِ الْمُنَاسِبِ:</div>

            <div id="info">J'écoute puis complète avec la lettre correspondant :</div>
        </div>
        <div class="exercice">
            <div class="ligneA">
                <div id="numQuestion">1</div>
                <div class="lesLettre" id="lesLettre1">
                    <div class="lettre" id="L1" onclick="cliqueLettre(id, 'pts0')">ب</div>
                    <div class="lettre" id="L2" onclick="cliqueLettre(id, 'pts0')">ت</div>
                    <div class="lettre" id="L3" onclick="cliqueLettre(id, 'pts0')">ث</div>
                </div>
                <div class="lesLettre" id="lesLettre2" style="display: none;">
                    <div class="lettre" id="L4" onclick="cliqueLettre(id, 'pts0')">د</div>
                    <div class="lettre" id="L5" onclick="cliqueLettre(id, 'pts0')">ذ</div>

                </div>
                <div class="lesLettre" id="lesLettre3" style="display: none;">
                    <div class="lettre" id="L6" onclick="cliqueLettre(id, 'pts0')">ر</div>
                    <div class="lettre" id="L7" onclick="cliqueLettre(id, 'pts0')">ز</div>

                </div>
            </div>

            <div class="LigneB">
              
                    <img id="son" src="{{ asset('quiz-assets/quiz-listen-complete/image/volume.png') }}" onclick="motSon()">
       
                <div class="mot" id="mot"><span id="pts0">...</span><span id="partieMot" class="mt">ـقَرَة</span></div>

            </div>

            <div class="LigneC">
                <img id="imgEx" src="{{ asset('quiz-assets/quiz-listen-complete/image/cow.png') }}">
                <img id="imgEx2" src="{{ asset('quiz-assets/quiz-listen-complete/image/apple.png') }}" style="display: none;">
                <img id="imgEx3" src="{{ asset('quiz-assets/quiz-listen-complete/image/corn.png') }}" style="display: none;">
                <img id="imgEx4" src="{{ asset('quiz-assets/quiz-listen-complete/image/bear.png') }}" style="display: none;">
                <img id="imgEx5" src="{{ asset('quiz-assets/quiz-listen-complete/image/pomegrate.png') }}" style="display: none;">
            </div>

            <div class="cmpt" style="display: none;">
                <span id="hour">00</span>:<span id="minute">00</span>:<span id="second">00</span>
            </div>
        </div>
    </main>

    <footer>
        <div class="passeButton" onclick="passeButton()"></div>
    </footer>
    <script src="{{ asset('quiz-assets/quiz-listen-complete/chrono1.js') }}"></script>
    <script src="{{ asset('quiz-assets/quiz-listen-complete/script1.js') }}"></script>
</body>

</html>