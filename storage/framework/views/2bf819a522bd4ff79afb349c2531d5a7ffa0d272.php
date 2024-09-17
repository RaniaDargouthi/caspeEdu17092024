<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

    <?php if(!empty($heroSectionData)): ?>

        <?php if(!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == '1'): ?>
            <?php $__env->startPush('scripts_bottom'); ?>
                <script src="/assets/default/vendors/lottie/lottie-player.js"></script>
            <?php $__env->stopPush(); ?>
        <?php endif; ?>

        <section class="slider-container  <?php echo e($heroSection == '2' ? 'slider-hero-section2' : ''); ?>"
            <?php if(empty($heroSectionData['is_video_background'])): ?> style="background-image: url('<?php echo e($heroSectionData['hero_background']); ?>')" <?php endif; ?>>

            <?php if($heroSection == '1'): ?>
                <?php if(!empty($heroSectionData['is_video_background'])): ?>
                    <video playsinline autoplay muted loop id="homeHeroVideoBackground" class="img-cover">
                        <source src="<?php echo e($heroSectionData['hero_background']); ?>" type="video/mp4">
                    </video>
                <?php endif; ?>

                <div class="mask"></div>
            <?php endif; ?>
<!-- text inn hero-->
            <div class="container user-select-none ">

                <?php if($heroSection == '2'): ?>
                    <div class="row slider-content align-items-center hero-section2 flex-column-reverse flex-md-row">
                        <div class="col-12 col-md-7 col-lg-6">
                            <h1 class="text-secondary font-weight-bold"><?php echo e($heroSectionData['title']); ?></h1>
                            <p class="slide-hint text-gray mt-20"><?php echo nl2br($heroSectionData['description']); ?></p>

                            
                        </div>
                        <div class="col-12 col-md-5 col-lg-6">
                            <?php if(!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == '1'): ?>
                                <lottie-player src="<?php echo e($heroSectionData['hero_vector']); ?>" background="transparent"
                                    speed="1" class="w-100" loop autoplay></lottie-player>
                            <?php else: ?>
                                <img src="<?php echo e($heroSectionData['hero_vector']); ?>" alt="<?php echo e($heroSectionData['title']); ?>"
                                    class="img-cover">
                            <?php endif; ?>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="text-center slider-content">
                        <h1><?php echo e($heroSectionData['title']); ?></h1>
                        <div class="row h-100 align-items-center justify-content-center text-center">
                            <div class="col-12 col-md-9 col-lg-7">
                                <p class="mt-30 slide-hint"><?php echo nl2br($heroSectionData['description']); ?></p>

                                
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </section>
    <?php endif; ?>


    
    

    <!-- nos partenair-->
    
    <!-- nos Quizzes-->

    <section class="home-sections home-sections-swiper container">
        <div class="d-flex justify-content-between ">
            <div>
                <h2 class="section-title">
                    


                </h2>
            </div>

        </div>
        <div class="position-relative d-none">
            <style>
                .sky {
                    background-image: url('<?php echo e(asset('image/bg11.png')); ?>');
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
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>KG1</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>KG2</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class=" col-2 col-md-2">
                            <span>المستوي1</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>المستوي2</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-6 col-md-2">
                            <span>المستوي3</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>المستوي4</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>المستوي5</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>المستوي6</span>
                        </a>
                        <a href="<?php echo e(route('QuizzesType')); ?>" class="blimp col-2 col-md-2">
                            <span>المستوي7</span>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        </div>
    </section>




<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/default/vendors/owl-carousel2/owl.carousel.min.js"></script>
    <script src="/assets/default/vendors/parallax/parallax.min.js"></script>
    <script src="/assets/default/js/parts/home.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() . '.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/ranya/Bureau/caspeeducation/resources/views/web/default/pages/home.blade.php ENDPATH**/ ?>