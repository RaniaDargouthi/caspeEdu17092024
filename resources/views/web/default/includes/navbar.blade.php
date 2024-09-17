@php
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
@endphp

<div id="navbarVacuum"></div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-light">
    <div class="{{ (!empty($isPanel) and $isPanel) ? 'container-fluid' : 'container' }}">
        <div class="d-flex align-items-center justify-content-between w-100">

            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 {{ (empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : '' }}"
                href="/">
                @if (!empty($generalSettings['logo']))
                    <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo">
                @endif
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

                {{-- <ul class="navbar-nav mr-auto d-flex align-items-center">

                    @if (!empty($navbarPages) and count($navbarPages))
                        @foreach ($navbarPages as $navbarPage)
                            <li class="nav-item">
                                <a class="nav-link" href="{{ $navbarPage['link'] }}">{{ $navbarPage['title'] }}</a>
                            </li>
                        @endforeach
                    @endif
                </ul> --}}
                <ul class="navbar-nav mr-auto d-flex align-items-center">

                    {{-- @if(!empty($navbarPages) and count($navbarPages))
                        @foreach($navbarPages as $navbarPage)

                            <li class="nav-item">
                                <a class="nav-link" href="{{ $navbarPage['link'] }}">{{ $navbarPage['title'] }}</a>
                            </li>
                        @endforeach

                    @endif --}}
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

                {{-- @if (!empty($navBtnUrl))
                    <a href="{{ $navBtnUrl }}" class="d-none d-lg-flex btn btn-sm btn-primary nav-start-a-live-btn">
                        {{ $navBtnText }}
                    </a>

                    <a href="{{ $navBtnUrl }}" class="d-flex d-lg-none text-primary nav-start-a-live-btn font-14">
                        {{ $navBtnText }}
                    </a>
                @endif

                @if (!empty($isPanel))
                    @if ($authUser->checkAccessToAIContentFeature())
                        <div class="js-show-ai-content-drawer show-ai-content-drawer-btn d-flex-center mr-40">
                            <div class="d-flex-center size-32 rounded-circle bg-white">
                                <img src="/assets/default/img/ai/ai-chip.svg" alt="ai" class=""
                                    width="16px" height="16px">
                            </div>
                            <span
                                class="ml-5 font-weight-500 text-secondary font-14 d-none d-lg-block">{{ trans('update.ai_content') }}</span>
                        </div>
                    @endif
                @endif --}}

                {{--                <div class="d-none nav-notify-cart-dropdown top-navbar"> --}}
                {{--                    @include('web.default.includes.shopping-cart-dropdwon') --}}

                {{--                    <div class="border-left mx-15"></div> --}}

                {{--                    @include('web.default.includes.notification-dropdown') --}}
                {{--                </div> --}}

            </div>
        </div>
    </div>
</nav>

@push('scripts_bottom')
    <script src="/assets/default/js/parts/navbar.min.js"></script>
@endpush
