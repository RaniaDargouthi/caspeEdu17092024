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
                    <div class="text-center ">
                        <span class="header fs-3 d-block text-white font-weight-bold">
                            معلومات عنا
                        </span>
                        <div class="mt-20 text-white">
                            CASPEDUCATION هي منصة الكترونية تساعد المدارس المعلمين و التلاميذ من التمتع بافضل الكتب و التمارين
                            للحصول عن تجربة تعليم و تعلم مذهلة
                        </div>
                    </div>                </div>
            </div>
        </div>
    </div>

    <?php
        $columns = ['first_column','second_column','third_column','forth_column'];
    ?>

    <div class="container">
        <div class="row">

            <div class="col-4 col-md-4">
                <div class="sidebar-column col ">
                                
                    <div class="footer-logo">
                        <a href="/">
                                                                            <img src="/store/1/footer logo.png" class="img-cover" alt="footer logo">
                                                                    </a>
                    </div>
                  
                <aside id="nav_menu-9" class="widget widget_nav_menu">
                    <div class="menu-footer5-container">
                        <ul id="menu-footer5" class="menu">
                            <li id="menu-item-9259" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-1090 current_page_item menu-item-9259">
                                <a href="/" aria-current="page">الرئيسية</a></li>
                            <li id="menu-item-9260" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9260">
                                <a href="https://caspeducation.com/%d8%a7%d9%84%d9%82%d9%86%d8%a7%d8%a9-%d8%a7%d9%84%d8%aa%d8%b9%d9%84%d9%8a%d9%85%d9%8a%d8%a9/">القناة
                                    التعليمية</a></li>
                            <li id="menu-item-9261" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9261">
                                <a href="https://caspeducation.com/%d8%a7%d9%84%d9%85%d9%86%d8%b5%d8%a9/">المنصة</a>
                            </li>
                        </ul>
                    </div>
                </aside>
                <aside id="block-46" class="widget widget_block widget_text">
                    <p></p>
                </aside>
            </div>
            </div>
            <div class="col-4 col-md-4 text-center">

                <span class="header d-block text-white font-weight-bold">روابط إضافية</span>

                <div class="mt-20">
                    <p><a href="/login"><span style="color: #ffffff;">- تسجيل الدخول</span></a></p>
                    <p><span style="color: #ffffff;"><a href="/register"><span
                                    style="color: #ffffff;">- تسجيل</span></a><br></span></p>
                    <p><a href="/blog"><span style="color: #ffffff;">- مقالات</span></a></p>
                   
                </div>
            </div>
            <div class="col-4 col-md-4 text-center">


                <div class="mt-20">
                   
                    <p><a href="/contact"><span style="color: #ffffff;">- اتصل بنا</span></a></p>


                    <p><a href="/pages/terms"><span style="color: #ffffff;">- الشروط والقواعد</span></a></p>
                    <p><a href="/pages/about"><span style="color: #ffffff;">- معلومات عنا</span></a></p>
                </div>
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
<?php /**PATH /home/ranya/Bureau/caasp/projet-jaafar/resources/views/web/default/includes/footer.blade.php ENDPATH**/ ?>