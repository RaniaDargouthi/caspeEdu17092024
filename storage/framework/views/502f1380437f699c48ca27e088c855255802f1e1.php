<?php
    $socials = getSocials();
    if (!empty($socials) and count($socials)) {
        $socials = collect($socials)->sortBy('order')->toArray();
    }

    $footerColumns = getFooterColumns();
?>

<footer class="footer bg-secondary position-relative user-select-none">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class=" footer-subscribe d-block d-md-flex align-items-center justify-content-between">

                </div>
            </div>
        </div>
    </div>

    <?php
        $columns = ['first_column','second_column','third_column','forth_column'];
    ?>

    <div class="container">
        <div class="row">

            <div class="col-6 col-md-6">
                <span class="header d-block text-white font-weight-bold">
                    معلومات عنا
                </span>
                <div class="mt-20 text-white">
                    CASPEDUCATION هي منصة الكترونية تساعد المدارس المعلمين و التلاميذ من التمتع بافضل الكتب و التمارين
                    للحصول عن تجربة تعليم و تعلم مذهلة
                </div>
            </div>
            <div class="col-6 col-md-6">

                <span class="header d-block text-white font-weight-bold">روابط إضافية</span>

                <div class="mt-20">
                    <p><a href="/login"><span style="color: #ffffff;">- تسجيل الدخول</span></a></p>
                    <p><span style="color: #ffffff;"><a href="/register"><span
                                    style="color: #ffffff;">- تسجيل</span></a><br></span></p>
                    <p><a href="/blog"><span style="color: #ffffff;">- مقالات</span></a></p>
                    <p><a href="/contact"><span style="color: #ffffff;">- اتصل بنا</span></a></p>


                    <p><a href="/pages/terms"><span style="color: #ffffff;">- الشروط والقواعد</span></a></p>
                    <p><a href="/pages/about"><span style="color: #ffffff;">- معلومات عنا</span></a></p>
                </div>
            </div>

        </div>

        <div class="mt-40 border-blue py-25 d-flex align-items-center justify-content-between">
            <div class="footer-logo">
                <a href="/">
                    <?php if(!empty($generalSettings['footer_logo'])): ?>
                        <img src="<?php echo e($generalSettings['footer_logo']); ?>" class="img-cover" alt="footer logo">
                    <?php endif; ?>
                </a>
            </div>
            <div class="footer-social">
                <?php if(!empty($socials) and count($socials)): ?>
                    <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <a href="<?php echo e($social['link']); ?>">
                            <img src="<?php echo e($social['image']); ?>" alt="<?php echo e($social['title']); ?>" class="mr-15">
                        </a>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <?php if(getOthersPersonalizationSettings('platform_phone_and_email_position') == 'footer'): ?>
        <div class="footer-copyright-card">
            <div class="container d-flex align-items-center justify-content-between py-15">
                <div class="font-14 text-white"><?php echo e(trans('update.platform_copyright_hint')); ?></div>

                <div class="d-flex align-items-center justify-content-center">
                    <?php if(!empty($generalSettings['site_phone'])): ?>
                        <div class="d-flex align-items-center text-white font-14">
                            <i data-feather="phone" width="20" height="20" class="mr-10"></i>
                            <?php echo e($generalSettings['site_phone']); ?>

                        </div>
                    <?php endif; ?>

                    <?php if(!empty($generalSettings['site_email'])): ?>
                        <div class="border-left mx-5 mx-lg-15 h-100"></div>

                        <div class="d-flex align-items-center text-white font-14">
                            <i data-feather="mail" width="20" height="20" class="mr-10"></i>
                            <?php echo e($generalSettings['site_email']); ?>

                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    <?php endif; ?>

</footer>
<?php /**PATH /home/ranya/Bureau/projet-jaafar/resources/views/web/default/includes/footer.blade.php ENDPATH**/ ?>