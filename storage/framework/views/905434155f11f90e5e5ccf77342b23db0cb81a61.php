<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

    <?php if(!empty($heroSectionData)): ?>

        <?php if(!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == "1"): ?>
            <?php $__env->startPush('scripts_bottom'); ?>
                <script src="/assets/default/vendors/lottie/lottie-player.js"></script>
            <?php $__env->stopPush(); ?>
        <?php endif; ?>

        <section class="slider-container  <?php echo e(($heroSection == "2") ? 'slider-hero-section2' : ''); ?>"
                 <?php if(empty($heroSectionData['is_video_background'])): ?> style="background-image: url('<?php echo e($heroSectionData['hero_background']); ?>')" <?php endif; ?>>

            <?php if($heroSection == "1"): ?>
                <?php if(!empty($heroSectionData['is_video_background'])): ?>
                    <video playsinline autoplay muted loop id="homeHeroVideoBackground" class="img-cover">
                        <source src="<?php echo e($heroSectionData['hero_background']); ?>" type="video/mp4">
                    </video>
                <?php endif; ?>

                <div class="mask"></div>
            <?php endif; ?>

            <div class="container user-select-none">

                <?php if($heroSection == "2"): ?>
                    <div class="row slider-content align-items-center hero-section2 flex-column-reverse flex-md-row">
                        <div class="col-12 col-md-7 col-lg-6">
                            <h1 class="text-secondary font-weight-bold"><?php echo e($heroSectionData['title']); ?></h1>
                            <p class="slide-hint text-gray mt-20"><?php echo nl2br($heroSectionData['description']); ?></p>

                            <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-30 w-100">
                                <div class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                    <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                           placeholder="<?php echo e(trans('home.slider_search_placeholder')); ?>"/>
                                    <button type="submit"
                                            class="btn btn-primary rounded-pill"><?php echo e(trans('home.find')); ?></button>
                                </div>
                            </form>
                        </div>
                        <div class="col-12 col-md-5 col-lg-6">
                            <?php if(!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == "1"): ?>
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

                                <form action="/search" method="get" class="d-inline-flex mt-30 mt-lg-50 w-100">
                                    <div
                                        class="form-group d-flex align-items-center m-0 slider-search p-10 bg-white w-100">
                                        <input type="text" name="search" class="form-control border-0 mr-lg-50"
                                               placeholder="<?php echo e(trans('home.slider_search_placeholder')); ?>"/>
                                        <button type="submit"
                                                class="btn btn-primary rounded-pill"><?php echo e(trans('home.find')); ?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </section>
    <?php endif; ?>


    
    <?php echo $__env->make('web.default.pages.includes.home_statistics', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <section class="home-sections home-sections-swiper container">
        <div class="d-flex justify-content-between ">
            <div>
                <h2 class="section-title">الاختبارات الالكترونية</h2>
            </div>

        </div>

        <div class="mt-10 position-relative">
            <div class="swiper-container latest-webinars-swiper px-12 swiper-container-initialized swiper-container-horizontal swiper-container-rtl">
                <div class="swiper-wrapper py-20" style="transform: translate3d(0px, 0px, 0px);">

                    <?php $__currentLoopData = $ebooks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ebook): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="swiper-slide swiper-slide-active" style="width: 320px; margin-left: 16px;">
                        <div class="webinar-card">
                            <figure>
                                <div class="image-box">
                                    <span class="badge badge-primary">Text course</span>

                                    <a href="<?php echo e($ebook->file); ?>">
                                        <img src="/store/uploads/<?php echo e($ebook->cover); ?>" class="img-cover" alt="course ecole">
                                    </a>


                                    <div class="progress">
                                        <span class="progress-bar" style="width: 10%"></span>
                                    </div>

                                </div>

                                <figcaption class="webinar-card-body">
                                    <div class="user-inline-avatar d-flex align-items-center">
                                        <a href="/users/1059/profile" target="_blank" class="user-name ml-5 font-14">العنوان</a>
                                    </div>

                                    <a href="<?php echo e($ebook->file); ?>">
                                        <h1 class="mt-15 webinar-title font-weight-bold font-16 text-dark-blue"><?php echo e($ebook->title); ?></h1>
                                    </a>

                                    <span class="d-block font-14 mt-10">in <a href="<?php echo e($ebook->file); ?>" target="_blank" class="text-decoration-underline">عرض</a></span>

                                    <div class="stars-card d-flex align-items-center  mt-15">

                                    </div>



                                    <div class="webinar-price-box mt-25">
                                        <span class="real"><?php echo e($ebook->price); ?> دولار </span>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

            <div class="d-flex justify-content-center">
                <div class="swiper-pagination latest-webinars-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span></div>
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

<?php echo $__env->make(getTemplate().'.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/ranya/Bureau/caasp/projet-jaafar/resources/views/web/default/pages/level-tests.blade.php ENDPATH**/ ?>