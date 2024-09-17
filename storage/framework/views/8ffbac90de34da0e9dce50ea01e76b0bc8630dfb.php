<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section class="home-sections home-sections-swiper container">
        <div class="" style="margin-top: -8%">
            <h2 class="section-title">المستويات</h2>
        </div>


        <div class=" position-relative">

            <div class="row d-flex  justify-content-between  " style="transform: translate3d(0px, 0px, 0px);">
                <?php $__currentLoopData = $levels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $levels): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="swiper-slide swiper-slide-active mt-15 " style="width: 320px; margin-left: 16px;">
                        <div class="webinar-card">
                            <figure>
                                <div class="image-box">

                                    
                                    <a href="<?php echo e(route('QuizzesType')); ?>">
                                        <img src="<?php echo e(asset('image/' . $levels->cover)); ?>" class="img-cover" />

                                    </a>




                                </div>

                                <figcaption class=" d-flex  row webinar-card-body">

                                    <div class="col-9">
                                        <a href="<?php echo e(route('QuizzesType')); ?>">
                                            <h3 class="mt-15 webinar-title font-weight-bold font-2 text-dark-blue">
                                                <?php echo e($levels->title); ?></h3>
                                        </a>
                                    </div>





                                    <div class="col">
                                        <div class="webinar-price-box mt-15">
                                            <span class="real">$<?php echo e($levels->price); ?></span>
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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

<?php echo $__env->make(getTemplate() . '.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/ranya/Bureau/caasp/projet-jaafar/resources/views/web/default/pages/levels.blade.php ENDPATH**/ ?>