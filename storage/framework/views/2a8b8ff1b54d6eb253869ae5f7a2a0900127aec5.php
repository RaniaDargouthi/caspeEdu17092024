<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="/">
                <?php if(!empty($generalSettings['site_name'])): ?>
                    <?php echo e(strtoupper($generalSettings['site_name'])); ?>

                <?php else: ?>
                    Platform Title
                <?php endif; ?>
            </a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="/">
                <?php if(!empty($generalSettings['site_name'])): ?>
                    <?php echo e(strtoupper(substr($generalSettings['site_name'], 0, 2))); ?>

                <?php endif; ?>
            </a>
        </div>

        <ul class="sidebar-menu">
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_show')): ?>
                <li class="<?php echo e(request()->is(getAdminPanelUrl('/')) ? 'active' : ''); ?>">
                    <a href="<?php echo e(getAdminPanelUrl('')); ?>" class="nav-link">
                        <i class="fas fa-fire"></i>
                        <span><?php echo e(trans('admin/main.dashboard')); ?></span>
                    </a>
                </li>
            <?php endif; ?>
            


            <?php if(
                $authUser->can('admin_webinars') or
                    $authUser->can('admin_bundles') or
                    $authUser->can('admin_categories') or
                    $authUser->can('admin_filters') or
                    $authUser->can('admin_quizzes') or
                    $authUser->can('admin_certificate') or
                    $authUser->can('admin_reviews_lists') or
                    $authUser->can('admin_webinar_assignments') or
                    $authUser->can('admin_enrollment') or
                    $authUser->can('admin_waitlists')): ?>
                <li class="menu-header">تعليم</li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars')): ?>
                <li
                    class="nav-item dropdown <?php echo e((request()->is(getAdminPanelUrl('/ebooks*', false)) and !request()->is(getAdminPanelUrl('/webinars/comments*', false))) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-graduation-cap"></i>
                        
                        <span>الكتب الالكترونية</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars_list')): ?>

















                            <li
                                class="<?php echo e((request()->is(getAdminPanelUrl('/ebooks', false)) and request()->get('type') == 'text_lesson') ? 'active' : ''); ?>">
                                <a class="nav-link <?php if(!empty($sidebarBeeps['textLessons']) and $sidebarBeeps['textLessons']): ?> beep beep-sidebar <?php endif; ?>"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/ebooks">  قائمة الكتب   </a>

                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars_create')): ?>





                                <li class="<?php echo e(request()->is(getAdminPanelUrl('/ebooks/new', false)) ? 'active' : ''); ?>">
                                    <a class="nav-link"
                                       href="<?php echo e(getAdminPanelUrl()); ?>/ebooks/new">اضف كتاب جديد </a>
                                </li>
                        <?php endif; ?>








                    </ul>
                </li>
            <?php endif; ?>





















































            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_quizzes')): ?>
                <li class="<?php echo e(request()->is(getAdminPanelUrl('/quizzes*', false)) ? 'active' : ''); ?>">
                    <a class="nav-link " href="<?php echo e(getAdminPanelUrl()); ?>/quizzes">
                        <i class="fas fa-file"></i>
                        <span>    سلسلة التمارين   </span>


                    </a>
                </li>
            <?php endif; ?>


























































































































         

         





































            <?php if(
                $authUser->can('admin_users') or
                    $authUser->can('admin_roles') or
                    $authUser->can('admin_users_not_access_content') or
                    $authUser->can('admin_group') or
                    $authUser->can('admin_users_badges') or
                    $authUser->can('admin_become_instructors_list') or
                    $authUser->can('admin_delete_account_requests')): ?>
                <li class="menu-header">ادارة المستخدمين</li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users')): ?>
                <li
                    class="nav-item dropdown <?php echo e((request()->is(getAdminPanelUrl('/staffs', false)) or request()->is(getAdminPanelUrl('/students', false)) or request()->is(getAdminPanelUrl('/instructors', false)) or request()->is(getAdminPanelUrl('/organizations', false))) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-users"></i>

                        <span>المستخدمين</span>

                        
                    </a>

                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_staffs_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/staffs', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/staffs"><?php echo e(trans('admin/main.staff')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/students', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/students"><?php echo e(trans('public.students')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_instructors_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/instructors', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/instructors"><?php echo e(trans('home.instructors')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_organizations_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/organizations', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/organizations">مدارس</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users_create')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/users/create', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/users/create">مستخدم جديد</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>


            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users_not_access_content_lists')): ?>
                <li class="<?php echo e(request()->is(getAdminPanelUrl('/users/not-access-to-content', false)) ? 'active' : ''); ?>">
                    <a class="nav-link" href="<?php echo e(getAdminPanelUrl()); ?>/users/not-access-to-content">
                        <i class="fas fa-user-lock"></i> <span>ادراة </span>
                    </a>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles')): ?>
                <li class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/roles*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-user-circle"></i> <span>انواع المستخدمين</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/roles', false)) ? 'active' : ''); ?>">
                                <a class="nav-link active"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/roles"><?php echo e(trans('admin/main.lists')); ?></a>
                            </li>
                        <?php endif; ?>
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles_create')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/roles/create', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/roles/create">اضف نوع جديد</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>







































































































































































































































































































































































            <?php if(
                $authUser->can('admin_blog') or
                    $authUser->can('admin_pages') or
                    $authUser->can('admin_additional_pages') or
                    $authUser->can('admin_testimonials') or
                    $authUser->can('admin_tags') or
                    $authUser->can('admin_regions') or
                    $authUser->can('admin_store') or
                    $authUser->can('admin_forms') or
                    $authUser->can('admin_ai_contents')): ?>
                <li class="menu-header">ادارة المحتوى</li>
            <?php endif; ?>




















































































































            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_blog')): ?>
                <li
                    class="nav-item dropdown <?php echo e((request()->is(getAdminPanelUrl('/blog*', false)) and !request()->is(getAdminPanelUrl('/blog/comments', false))) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-rss-square"></i>
                        <span>محتوى</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_blog_lists')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/blog', false)) ? 'active' : ''); ?>">
                                <a class="nav-link" href="<?php echo e(getAdminPanelUrl()); ?>/blog">مقالات</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_blog_create')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/blog/create', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/blog/create">مقال جديد</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_blog_categories')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/blog/categories', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/blog/categories">فئات</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_pages')): ?>
                <li class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/pages*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-pager"></i>
                        <span>صفحات</span>
                    </a>

                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_pages_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/pages', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/pages">القائمة</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_pages_create')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/pages/create', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/pages/create">صفحة جديدة</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_additional_pages')): ?>
                <li
                    class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/additional_page*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-plus-circle"></i>
                        <span><?php echo e(trans('admin/main.additional_pages_title')); ?></span></a>
                    <ul class="dropdown-menu">

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_additional_pages_404')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/additional_page/404', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/additional_page/404"><?php echo e(trans('admin/main.error_404')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_additional_pages_contact_us')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/additional_page/contact_us', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/additional_page/contact_us"><?php echo e(trans('admin/main.contact_us')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_additional_pages_footer')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/additional_page/footer', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/additional_page/footer"><?php echo e(trans('admin/main.footer')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_additional_pages_navbar_links')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/additional_page/navbar_links', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/additional_page/navbar_links"><?php echo e(trans('admin/main.top_navbar')); ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_testimonials')): ?>
                <li
                    class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/testimonials*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-address-card"></i>
                        <span>قالو عنا</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_testimonials_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/testimonials', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/testimonials">القائمة</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_testimonials_create')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/testimonials/create', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/testimonials/create">اضف الجديد</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>















































































































































































































































































































































































































            <?php if(
                $authUser->can('admin_discount_codes') or
                    $authUser->can('admin_product_discount') or
                    $authUser->can('admin_feature_webinars') or
                    $authUser->can('admin_gift') or
                    $authUser->can('admin_promotion') or
                    $authUser->can('admin_advertising') or
                    $authUser->can('admin_newsletters') or
                    $authUser->can('admin_advertising_modal') or
                    $authUser->can('admin_registration_bonus') or
                    $authUser->can('admin_floating_bar_create')): ?>

                    <li class="menu-header">قسم التسويق</li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_discount_codes')): ?>
                <li
                    class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/financial/discounts*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-percent"></i>
                        <span>اكواد التخفيض</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_discount_codes_list')): ?>
                            <li class="<?php echo e(request()->is(getAdminPanelUrl('/financial/discounts', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/financial/discounts">القائمة</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_discount_codes_create')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/financial/discounts/new', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/financial/discounts/new">اضف كود</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_product_discount')): ?>
                <li
                    class="nav-item dropdown <?php echo e(request()->is(getAdminPanelUrl('/financial/special_offers*', false)) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fa fa-fire"></i>
                        <span>كتب للتخفيض</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_product_discount_list')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/financial/special_offers', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/financial/special_offers">القائمة</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_product_discount_create')): ?>
                            <li
                                class="<?php echo e(request()->is(getAdminPanelUrl('/financial/special_offers/new', false)) ? 'active' : ''); ?>">
                                <a class="nav-link"
                                    href="<?php echo e(getAdminPanelUrl()); ?>/financial/special_offers/new">اضف</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>































































































































































































































































            <?php if($authUser->can('admin_settings')): ?>
                <li class="menu-header"><?php echo e(trans('admin/main.settings')); ?></li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_settings')): ?>
                <?php
                    $settingClass = '';

                    if (request()->is(getAdminPanelUrl('/settings*', false)) and !(request()->is(getAdminPanelUrl('/settings/404', false)) or request()->is(getAdminPanelUrl('/settings/contact_us', false)) or request()->is(getAdminPanelUrl('/settings/footer', false)) or request()->is(getAdminPanelUrl('/settings/navbar_links', false)))) {
                        $settingClass = 'active';
                    }
                ?>

                <li class="nav-item <?php echo e($settingClass ?? ''); ?>">
                    <a href="<?php echo e(getAdminPanelUrl()); ?>/settings" class="nav-link">
                        <i class="fas fa-cogs"></i>
                        <span><?php echo e(trans('admin/main.settings')); ?></span>
                    </a>
                </li>
            <?php endif; ?>


            <li>
                <a class="nav-link" href="<?php echo e(getAdminPanelUrl()); ?>/logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span><?php echo e(trans('admin/main.logout')); ?></span>
                </a>
            </li>

        </ul>
        <br><br><br>
    </aside>
</div>
<?php /**PATH /home/ranya/Bureau/projet-jaafar/resources/views/admin/includes/sidebar.blade.php ENDPATH**/ ?>