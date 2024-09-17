<?php
    if (empty($authUser) and auth()->check()) {
        $authUser = auth()->user();
    }

    $navBtnUrl = null;
    $navBtnText = null;

    if (request()->is('forums*')) {
        $navBtnUrl = '/forums/create-topic';
        $navBtnText = trans('update.create_new_topic');
    } else {
        $navbarButton = getNavbarButton(!empty($authUser) ? $authUser->role_id : null, empty($authUser));

        if (!empty($navbarButton)) {
            $navBtnUrl = $navbarButton->url;
            $navBtnText = $navbarButton->title;
        }
    }
?>

<div id="navbarVacuum"></div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-light">
    <div class="<?php echo e((!empty($isPanel) and $isPanel) ? 'container-fluid' : 'container'); ?>">
        <div class="d-flex align-items-center justify-content-between w-100">

            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 <?php echo e((empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : ''); ?>"
                href="/">
                <?php if(!empty($generalSettings['logo'])): ?>
                    <img src="<?php echo e($generalSettings['logo']); ?>" class="img-cover" alt="site logo">
                <?php endif; ?>
            </a>

            <button class="navbar-toggler navbar-order" type="button" id="navbarToggle">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="mx-lg-30 d-none d-lg-flex flex-grow-1 navbar-toggle-content " id="navbarContent">
                <div class="navbar-toggle-header text-right d-lg-none">
                    <button class="btn-transparent" id="navbarClose">
                        <i data-feather="x" width="32" height="32"></i>
                    </button>
                </div>

                
                <ul class="navbar-nav mr-auto d-flex align-items-center">

                    
                    <li class="nav-item">
                        <a class="nav-link" href="/">الصفحة الرئيسية</a>
                    </li>
                 
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="/levels">المستويات</a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">KG 1</a></li>
                          <li><a class="dropdown-item" href="#">KG 2</a></li>
                          <li><a class="dropdown-item" href="#">المستوي1</a></li>
                        </ul>
                      </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/levelTests">تحديد المستوي</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">اتصل بنا</a>
                    </li>
                   
                </ul>
            </div>

            <div class="nav-icons-or-start-live navbar-order d-flex align-items-center justify-content-end">

                

                
                

                

                
                

            </div>
        </div>
    </div>
</nav>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/js/parts/navbar.min.js"></script>
<?php $__env->stopPush(); ?>
<?php /**PATH /home/ranya/Bureau/caasp/projet-jaafar/resources/views/web/default/includes/navbar.blade.php ENDPATH**/ ?>