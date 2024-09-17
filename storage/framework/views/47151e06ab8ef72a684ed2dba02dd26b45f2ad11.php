<link rel="stylesheet" href="<?php echo e(asset('quiz-assets/lesTeste/style1.css')); ?>">
<?php $__env->startSection('stylesheets'); ?>
    <!-- Inclure les CSS Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Inclure le CSS personnalisé -->
    <link rel="stylesheet" href="<?php echo e(asset('css/style.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <audio id="bravo">
        <source src="<?php echo e(asset('audio/bravo.mp3')); ?>">
    </audio>
    <audio id="faux">
        <source src="<?php echo e(asset('audio/faux.mp3')); ?>">
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
                <span class="d-inline-block text-center"> <?php echo e($serie->serie_name); ?> </span>
            </div>
            <div class="col mt-3 d-flex align-items-center justify-content-center">
                <img src="<?php echo e(asset('image/logo.png')); ?>" class="img-fluid mw-5" style="max-width: 17%; height: auto;"
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
                <span class="d-inline-block text-start"> <?php echo e($quiz->question); ?></span>
            </div>

            <div class="col ">
            </div>
            <div class="col-md-6 mt-3 m-md-3 text-md-end  d-flex align-items-center justify-content-end">
                <span class="d-inline-block text-center color-blue"> </span>
            </div>
        </div>
        <!-- Fin Header -->


        <!-- Main exercice -->
        <?php if(isset($finish)): ?>
            Vous avez terminé la série.
        <?php endif; ?>

        <div class="container text-center mt-3">

            <div class="exercice">
                <!-- Mettez cette section dans votre blade file -->
                <div class="ligneA">
                    <div id="numQuestion"><?php echo e($quiz->question_number); ?></div>
                    <div class="lesLettre" id="lesLettre">
                        <?php $__currentLoopData = $quiz->suggestions[0]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $suggestion): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="lettre" >
                                <?php echo e($suggestion); ?>

                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>

                <div class="LigneB">

                    <audio id="audio">
                        <source src="<?php echo e(asset($quiz->sound_file)); ?>" type="audio/mpeg">
                    </audio>
                    <img id="son" src="<?php echo e(asset('quiz-assets/lesTeste/image/volume.png')); ?>">
                    <div class="mot mr-3">
                        <span class="mr-5" id="pts">...</span><span id="partieMot"
                                                                    class="mt"><?php echo e($quiz->question_body); ?></span>
                    </div>
                </div>
                <div class="LigneC">
                    <img id="imgEx" class="mt-2" src="<?php echo e($quiz->picture_file); ?>" >
                </div>
                <a href="<?php echo e(route('serie.show', ['serie' => $serie->id, 'currentQuizIndex' => $next])); ?>" class="btn btn-outline-primary mt-5 size-40">اللي بعدو</a>
            </div>

        </div>
        
        
        
    </div>

    <!-- Fin Main exercice -->
<?php $__env->stopSection(); ?>


<?php $__env->startSection('javascript'); ?>
    <!-- Inclure jQuery et Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- Votre JavaScript personnalisé -->
<?php $__env->stopSection(); ?>
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
        var lettres = document.querySelectorAll('.lettre');

        lettres.forEach(function(lettre) {
            lettre.addEventListener('click', function() {
                var lettreClique = this.textContent.trim();
                var ptsSpan = document.getElementById('pts');
                // Remplacer le contenu actuel de la span pts par la lettre cliquée
                ptsSpan.textContent = lettreClique;
            });
        });
    });
    
    
    

    
    

    
    
    
    
</script>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/ranya/Bureau/projet-jaafar/resources/views/admin/quizzes/serie.blade.php ENDPATH**/ ?>