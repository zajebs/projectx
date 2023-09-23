@extends('layouts.frontend.layout_one')

@section('title', 'Seller Page')

@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component background="{{ asset('frontend/default_images/breadcrumbs.png') }}">
        {{ $user->name }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a href="{{ route('frontend.dashboard') }}" class="breedcrumb__page-link text--body-3">{{ __('seller') }}</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">/</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3 text-lowercase">{{ $user->username }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    {{-- <section class="section dashboard dashboard--user">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="row">

                <div class="col-xl-3 col-lg-4 col-12">
                    @include('layouts.frontend.partials.seller-dashboard-sidebar')
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-12 col-lg-12 col-12">
                    @include('frontend.seller.hero')
                    <div class="dashboard-post2">
                        @php
                            $current_tab = session('seller_tab') ?? 'ads';
                        @endphp
                        <ul class="nav dashboard-post__nav2">
                            <li class="nav-item dashboard-post__item2" role="presentation">
                                <button class="fw-bolder dashboard-post__link2 {{ $current_tab == 'ads' ? 'active' : '' }}"
                                    id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab"
                                    aria-controls="home" aria-selected="true">
                                    <div class="tab-title">{{ __('recent ads') }}</div>
                                </button>
                            </li>
                            <li class="nav-item dashboard-post__item2" role="presentation">
                                <button
                                    class="fw-bolder dashboard-post__link2 {{ $current_tab == 'review_list' ? 'active' : '' }}"
                                    id="seller-review-tab" data-bs-toggle="tab" data-bs-target="#seller-review"
                                    type="button" role="tab" aria-controls="seller-review" aria-selected="true">
                                    <div class="tab-title">{{ __('seller review') }}</div>
                                </button>
                            </li>
                            @if ($user->id != auth()->id())
                                @if (auth()->check())
                                    <li class="nav-item dashboard-post__item2" role="presentation">
                                        <button
                                            class="fw-bolder dashboard-post__link2 {{ $current_tab == 'review_store' ? 'active' : '' }}"
                                            id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button"
                                            role="tab" aria-controls="review" aria-selected="true">
                                            <div class="tab-title">{{ __('write review') }}</div>
                                        </button>
                                    </li>
                                @else
                                    <li class="nav-item dashboard-post__item2" role="presentation">
                                        <button
                                            class="fw-bolder dashboard-post__link2 {{ $current_tab == 'review_store' ? 'active' : '' }}"
                                            id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button"
                                            role="tab" aria-controls="review" aria-selected="true">
                                            <div class="tab-title">{{ __('write review') }}</div>
                                        </button>
                                    </li>
                                @endif
                            @endif
                        </ul>
                        <div class="tab-content dashboard-post__content" id="myTabContent">
                            <div class="tab-pane fade  {{ $current_tab == 'ads' ? 'show active' : '' }}" id="home"
                                role="tabpanel" aria-labelledby="home-tab">
                                <div class="ad-list__content row">
                                    @forelse ($recent_ads as $ad)
                                        <x-frontend.single-ad :ad="$ad" :adfields="$ad->productCustomFields"
                                            className="col-xl-4 col-md-6">
                                        </x-frontend.single-ad>
                                    @empty
                                        <x-not-found2 message="No ads found" />
                                    @endforelse
                                </div>
                                <div class="page-navigation mb-4">
                                    {{ $recent_ads->links() }}
                                </div>
                            </div>
                            <div class="tab-pane fade {{ $current_tab == 'review_list' ? 'show active' : '' }}"
                                id="seller-review" role="tabpanel" aria-labelledby="seller-review-tab">
                                @include('frontend.seller.review-list')
                            </div>
                            @if ($user->id != auth()->id())
                                @if (!auth()->check())
                                    <div class="tab-pane fade {{ $current_tab == 'review_store' ? 'show active' : '' }}"
                                        id="review" role="tabpanel" aria-labelledby="review-tab">
                                        @include('frontend.seller.review')
                                    </div>
                                @else
                                    <div class="tab-pane fade {{ $current_tab == 'review_store' ? 'show active' : '' }}"
                                        id="review" role="tabpanel" aria-labelledby="review-tab">
                                        @include('frontend.seller.review2')
                                    </div>
                                @endif
                            @endif
                        </div>
                        <div class="tab-pane fade" id="seller-review" role="tabpanel" aria-labelledby="seller-review-tab">
                            @include('frontend.seller.review-list')
                        </div>
                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                            @include('frontend.seller.review')
                        </div>
                        <div class="tab-pane fade" id="review1" role="tabpanel" aria-labelledby="review1-tab">
                            @include('frontend.seller.review2')
                        </div>
                    </div>
                </div>

            </div>
        </div>
        </div>
    </section> --}}

    <!-- dashboard section start  -->
    <section class="section dashboard dashboard--user">
        <div class="container">
            <div class="user_header mb-3">
                <div class="user_info">
                    <div class="row mb-2">
                        <div class="col-lg-9">
                            <div class="user_profile mb-4 md-lg-0">
                                <div class="d-flex position-relative">
                                    <div class="profile_photo">
                                        <img src="{{ getPhotoAvater($user->image) }}"
                                            class="flex-shrink-0 ml-3 rounded-circle" alt="image">
                                    </div>
                                    <div class="profile_info">
                                        <h3 style="margin-left: 20px !important">{{ $user->username }}</h3>
                                        <div class="d-md-flex">
                                            <div class="info_div"
                                                style="border:none; padding-left: 10px !important; padding-right:10px !important;">
                                                <h6>{{ __('joined_in') }} {{ date('Y', strtotime($user->created_at)) }}
                                                </h6>
                                                <p><i class="fa fa-globe"></i> {{ $user->country->locations ?? 'N/A' }}
                                                </p>
                                            </div>
                                            <div class="info_left">
                                                {{-- <span style="padding-right: 10px">{{ $rating_details['average'] }}
                                                    {{ __('star rating') }}</span> --}}

                                                <a class="info_div sm_info" onclick="oprnTab()" href="#">
                                                    <h3>
                                                        <span>{{ $rating_details['average'] }}</span>
                                                        {{--
                                                        @if ($rating_details['average'] == 5)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#007B4C"></i>
                                                                @endfor
                                                            </span>
                                                        @endif --}}
                                                        @if ($rating_details['average'] == 4)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px; color:#009C00"></i>
                                                                @endfor
                                                            </span>
                                                            </span>
                                                        @endif
                                                        @if ($rating_details['average'] == 3)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px; color:#8CA402"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($rating_details['average'] == 2)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#F7B217"
                                                                        data-toggle="tooltip"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($rating_details['average'] == 1)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:red"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($rating_details['average'] == 0)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#ddd"></i>
                                                                @endfor
                                                            </span>
                                                        @endif

                                                    </h3>
                                                    <p>{{ $user->reviews->count() }} {{ __('reviews') }}</p>
                                                </a>
                                                {{-- <div class="info_div sm_info">
                                                    <h3>{{ $user->completeTransactions->count() }}</h3>
                                                    <p>Transactions</p>
                                                </div> --}}
                                                <div class="info_div sm_info">
                                                    <h3>{{ $userFollower }}</h3>
                                                    <p>{{ __('followers') }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="user_follow d-flex justify-content-end">
                                @auth
                                    @if ($user->username !== auth()->user()->username)
                                        @if ($isFoollwer)
                                            <a
                                                href="{{ route('frontend.seller.sellerFollow', ['user' => $user->id, 'status' => 'unfollow']) }}">{{ __('unfollow') }}</a>
                                        @else
                                            <a
                                                href="{{ route('frontend.seller.sellerFollow', ['user' => $user->id, 'status' => 'follow']) }}">{{ __('follow') }}</a>
                                        @endif
                                    @endif
                                @endauth

                                @guest
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#loginModal">
                                        {{ __('follow') }}</a>
                                @endguest

                                <div class="">
                                    @auth
                                        @if ($user->id != auth()->id())
                                            <button class="dropdown-toggle" type="button" id="dropdownMenuButton2"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <x-svg.warning-icon />
                                            </button>
                                        @endif
                                    @endauth
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton2">
                                        <li>

                                            @auth
                                                <a href="#" class="text-danger" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal">{{ __('report_seller') }}</a>

                                            @endauth

                                            @guest
                                                <a href="#" class="text-danger" data-bs-toggle="modal"
                                                    data-bs-target="#loginModal">{{ __('report_seller') }}</a>
                                            @endguest
                                        </li>

                                    </ul>
                                    <button class="dropdown-toggle" type="button" id="dropdownMenuButton1"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        <svg class="UserShareDropdown-module__dropdown___DVl8L" height="16px"
                                            width="20px" viewBox="0 0 16 20" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M7.72178 13.0493C8.15016 13.0493 8.51263 12.6906 8.51263 12.2646V3.52019L8.44674 2.1749L8.90805 2.69059L10.1163 4.02466C10.2591 4.18161 10.4568 4.26009 10.6435 4.26009C11.0609 4.26009 11.3685 3.96862 11.3685 3.56503C11.3685 3.34081 11.2806 3.18386 11.1268 3.03813L8.29296 0.269065C8.09525 0.067273 7.93047 0 7.72178 0C7.52407 0 7.35931 0.067273 7.1616 0.269065L4.31673 3.03813C4.17393 3.18386 4.08607 3.34081 4.08607 3.56503C4.08607 3.96862 4.38262 4.26009 4.80002 4.26009C4.98676 4.26009 5.19545 4.18161 5.33825 4.02466L6.54649 2.69059L7.00782 2.1749L6.94191 3.52019V12.2646C6.94191 12.6906 7.30438 13.0493 7.72178 13.0493ZM2.80093 20H12.6536C14.5319 20 15.4545 19.0583 15.4545 17.1749V8.57625C15.4545 6.69282 14.5319 5.75114 12.6536 5.75114H10.2921V7.3767H12.6317C13.4115 7.3767 13.8728 7.81392 13.8728 8.65472V17.0964C13.8728 17.9484 13.4115 18.3744 12.6317 18.3744H2.82291C2.03204 18.3744 1.58171 17.9484 1.58171 17.0964V8.65472C1.58171 7.81392 2.03204 7.3767 2.82291 7.3767H5.16249V5.75114H2.80093C0.933641 5.75114 0 6.69282 0 8.57625V17.1749C0 19.0583 0.933641 20 2.80093 20Z"
                                                fill="black"></path>
                                        </svg>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                                        <li><a
                                                href="https://www.facebook.com/share.php?u={{ url()->current() }}">{{ __('share_on_facebook') }}</a>
                                        </li>
                                        <li><a
                                                href="https://twitter.com/intent/tweet?url={{ url()->current() }}">{{ __('share_on_twitter') }}</a>
                                        </li>
                                        <li><a href="#" onclick="copyText()">{{ __('copy_link') }}</a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-3">
                        <div class="col-md-6 col-lg-4">
                            <div class="userinfo_module">
                                @if ($user->bio)
                                    <div class="seller-info">
                                        {!! $user->bio !!}
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-8">
                            <div class="sellere_tag">
                                <ul>
                                    @if ($user->trusted_seller)
                                        <li class="me-5">
                                            <svg class="--trusted-seller-flair" height="17px" width="17px"
                                                viewBox="0 0 12 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M9.48013 15.3371V10.0794C10.6878 9.02611 11.4597 7.47333 11.4688 5.75711C11.4779 2.57889 8.87173 0 5.72985 0C2.58798 0 0 2.57889 0 5.75711C0 7.48241 0.780938 9.04426 1.99772 10.0976L2.00682 15.3371C2.00682 15.8093 2.25198 16 2.56981 16C2.82407 16 3.03291 15.8456 3.24177 15.6368L5.50284 13.3848C5.59365 13.3031 5.66629 13.2758 5.73893 13.2758C5.81157 13.2758 5.88423 13.3031 5.97502 13.3848L8.23608 15.6368C8.45402 15.8547 8.66289 16 8.91714 16C9.24404 16 9.48013 15.8093 9.48013 15.3371ZM5.73893 10.2157C3.25085 10.2066 1.32576 8.22702 1.32576 5.75711C1.32576 3.26903 3.25085 1.28944 5.73893 1.28944C8.22701 1.28944 10.143 3.26903 10.1521 5.75711C10.1612 8.22702 8.22701 10.2247 5.73893 10.2157Z"
                                                    fill="#0000FF"></path>
                                            </svg>

                                            {{ __('trusted_seller') }}
                                        </li>
                                    @endif
                                    @if ($user->quick_responder)
                                        <li>
                                            <svg class="--quick-responder-flair" height="17px" width="17px"
                                                viewBox="0 0 12 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M4.48382 15.621L11.038 7.38113C11.7284 6.50246 11.3967 5.82104 10.518 5.82104H7.47849L8.3751 0.97037C8.54545 0.0468623 7.54126 -0.347639 6.96743 0.369639L0.377341 8.66329C-0.322013 9.533 0.00973197 10.2144 0.888411 10.2144H3.92791L3.0313 15.0651C2.86095 15.9886 3.90999 16.3293 4.48382 15.621ZM4.34035 13.9084L5.32662 9.73025C5.43421 9.29988 5.3087 9.00399 4.8335 9.00399H1.60569V8.96813L6.97639 2.11803H7.07501L6.07978 6.31417C5.97218 6.73557 6.0977 7.03145 6.57291 7.03145H9.80069V7.06733L4.43002 13.9084H4.34035Z"
                                                    fill="#0000FF"></path>
                                            </svg>
                                            {{ __('quick_responder') }}

                                        </li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab_btn">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                            aria-selected="true">{{ __('listing') }} {{ $user->ads->count() }}</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile"
                            aria-selected="false"> {{ __('feedback') }}</button>
                    </li>
                   @auth
                     <li class="nav-item" role="presentation">
                         <button class="nav-link" id="review-tab" data-bs-toggle="pill" data-bs-target="#review"
                             type="button" role="tab" aria-controls="review"
                             aria-selected="false">{{ __('Review') }}
                         </button>
                     </li>
                   @endauth
                </ul>
            </div>

            <div class="tab-content" id="pills-tabContent">
                {{-- listing --}}
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <div class="listing_view">
                        <div class="row">
                            <div class="search_list mb-4 pb-2 pt-3">
                                <div class="row align-items-center">
                                    <div class="col-6">
                                        <p>{{ $user->ads->count() }} {{ __('listings') }}</p>
                                    </div>
                                    <div class="col-6">
                                        <form action="#">
                                            <select name="sort" id="sort" class="form-control form-select">
                                                <option {{ request()->sortinput == 'default' ? 'selected' : '' }}
                                                    value="default">
                                                    {{ __('sort_by_default') }}
                                                </option>
                                                <option {{ request()->sortinput == 'new' ? 'selected' : '' }}
                                                    value="new">
                                                    {{ __('sort_by_new') }}
                                                </option>
                                                <option {{ request()->sortinput == 'popular' ? 'selected' : '' }}
                                                    value="popular">
                                                    {{ __('sort_by_popular') }}
                                                </option>
                                                <option {{ request()->sortinput == 'trending' ? 'selected' : '' }}
                                                    value="trending">
                                                    {{ __('sort_by_trending') }}
                                                </option>
                                                <option {{ request()->sortinput == 'lowPrice' ? 'selected' : '' }}
                                                    value="lowPrice">
                                                    {{ __('sort_by_low_price') }}
                                                </option>
                                                <option {{ request()->sortinput == 'highPrice' ? 'selected' : '' }}
                                                    value="highPrice">
                                                    {{ __('sort_by_high_price') }}
                                                </option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-xl-3">
                                    <div class="list-sidebar position-sticky" style="top:5rem;">
                                        <div class="product-filter">
                                            <h3>{{ __('product_filters') }}</h3>
                                            <span class="close">
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 4.375L4.375 15.625" stroke="#767E94"
                                                        stroke-width="1.6" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                    <path d="M15.625 15.625L4.375 4.375" stroke="#767E94"
                                                        stroke-width="1.6" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                        </div>
                                        <form method="GET"
                                            action="{{ route('frontend.seller.profile', ['user' => $user->username]) }}"
                                            id="adFilterForm">

                                            @php
                                                $session_cat = explode(',', request('cat'));
                                                $subcat_slug = explode(',', request('subcat'));
                                            @endphp
                                            <input type="hidden" class="session_cat" value="{{ $session_cat[0] }}">
                                            <input type="hidden" class="session_subcat" value="{{ $subcat_slug[0] }}">
                                            <div class="accordion" id="accordionPanelsStayOpenExample">
                                                <input type="hidden" name="sortinput" id="sortinput"
                                                    value="{{ request()->sortinput ?? 0 }}">
                                                {{-- <!-- department -->
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="panelsStayOpen-headingDepartment">
                                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseDepartment" aria-expanded="true" aria-controls="panelsStayOpen-collapseDepartment">
                                                Department
                                                </button>
                                                </h2>
                                                <div id="panelsStayOpen-collapseDepartment" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingDepartment">
                                                    <div class="accordion-body">
                                                        <div class="cateogry">
                                                            <div class="subcategory_list">
                                                                <div class="checkbox_list">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox" onchange="changeFilter()"  value="" id="subsubcatOne">
                                                                        <label class="form-check-label" for="subsubcatOne">
                                                                            Menswear <span>120k</span>
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox" onchange="changeFilter()"  value="" id="subsubcatTwo">
                                                                        <label class="form-check-label" for="subsubcatTwo">
                                                                            Womenswear <span>6k</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> --}}
                                                <!-- category -->
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                                        <button class="accordion-button" type="button"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#panelsStayOpen-collapseOne"
                                                            aria-expanded="true"
                                                            aria-controls="panelsStayOpen-collapseOne">
                                                            {{ __('category') }}
                                                        </button>
                                                    </h2>
                                                    <div id="panelsStayOpen-collapseOne"
                                                        class="accordion-collapse collapse show"
                                                        aria-labelledby="panelsStayOpen-headingOne">
                                                        <div class="accordion-body">
                                                            @foreach ($categories as $category)
                                                                <div class="cateogry mb-1">
                                                                    <div class="mb-3 title">
                                                                        <h4>{{ __($category->name) }}</h4>
                                                                    </div>
                                                                    @if ($category->subcategories->count() > 0)
                                                                        <div class="subcategory_list">
                                                                            @foreach ($category->subcategories as $subcategories)
                                                                                <div class="accordion-item">
                                                                                    <h2 class="accordion-header"
                                                                                        id="{{ $subcategories->id }}">
                                                                                        <button
                                                                                            class="accordion-button collapsed"
                                                                                            type="button"
                                                                                            data-bs-toggle="collapse"
                                                                                            data-bs-target="#{{ $subcategories->slug . $subcategories->id }}"
                                                                                            aria-expanded="false"
                                                                                            aria-controls="{{ $subcategories->slug }}">
                                                                                            {{ __($subcategories->name) }}
                                                                                            ({{ $subcategories->available_product->where('user_id', $user->id)->count() }})
                                                                                        </button>
                                                                                    </h2>
                                                                                    <div id="{{ $subcategories->slug . $subcategories->id }}"
                                                                                        class="accordion-collapse collapse {{ isActiveSubCategorySidebarDashboard($subcategories, $category->slug) ? 'show' : '' }}"
                                                                                        aria-labelledby="{{ $subcategories->id }}">
                                                                                        <div class="accordion-body">
                                                                                            <div class="checkbox_list">
                                                                                                @if ($subcategories->childCategory->count() > 0)
                                                                                                    @foreach ($subcategories->childCategory as $childCategory)
                                                                                                        <div
                                                                                                            class="form-check">
                                                                                                            <input
                                                                                                                class="form-check-input child_cat_chnge {{ $category->slug }}  {{ $subcategories->slug }}"
                                                                                                                {{ isActiveChildCategorySidebarDashboard($childCategory->slug, $category->slug) ? 'checked' : '' }}
                                                                                                                type="checkbox"
                                                                                                                id="{{ $childCategory->slug . $childCategory->id }}"
                                                                                                                data-cat_slug="{{ $category->slug }}"
                                                                                                                data-subcat_slug="{{ $subcategories->slug }}"
                                                                                                                data-username="{{ $user->username }}"
                                                                                                                name="childcategory[]"
                                                                                                                value="{{ $childCategory->slug }}">
                                                                                                            <label
                                                                                                                class="form-check-label"
                                                                                                                for="{{ $childCategory->slug . $childCategory->id }}">
                                                                                                                {{ __($childCategory->name) }}
                                                                                                                <span>{{ $childCategory->available_product->where('user_id', $user->id)->count() }}</span>
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    @endforeach
                                                                                                @endif
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            @endforeach
                                                                        </div>
                                                                    @endif
                                                                </div>
                                                            @endforeach
                                                            {{-- <div class="cateogry">
                                                                <div class="mb-3 title">
                                                                    <h4>Womenswear</h4>
                                                                </div>
                                                                <div class="subcategory_list">
                                                                    <div class="accordion-item">
                                                                        <h2 class="accordion-header"
                                                                            id="panelsStayOpen-subcatThree">
                                                                            <button class="accordion-button collapsed"
                                                                                type="button" data-bs-toggle="collapse"
                                                                                data-bs-target="#panelsStayOpen-subcatTitleThree"
                                                                                aria-expanded="false"
                                                                                aria-controls="panelsStayOpen-subcatTitleThree">
                                                                                Tops
                                                                            </button>
                                                                        </h2>
                                                                        <div id="panelsStayOpen-subcatTitleThree"
                                                                            class="accordion-collapse collapse"
                                                                            aria-labelledby="panelsStayOpen-subcatThree">
                                                                            <div class="accordion-body">
                                                                                <div class="checkbox_list">
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            All Tops <span>120k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Long Sleeve T-Shirts
                                                                                            <span>6k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            Polos <span>4k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Shirts (Button Ups)
                                                                                            <span>12k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Sweaters & Knitwear
                                                                                            <span>6k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            Sweatshirts & Hoodies
                                                                                            <span>4k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Tank Tops & Sleeveless
                                                                                            <span>12k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="accordion-item">
                                                                        <h2 class="accordion-header"
                                                                            id="panelsStayOpen-subcatFour">
                                                                            <button class="accordion-button collapsed"
                                                                                type="button" data-bs-toggle="collapse"
                                                                                data-bs-target="#panelsStayOpen-subcatTitleFour"
                                                                                aria-expanded="false"
                                                                                aria-controls="panelsStayOpen-subcatTitleFour">
                                                                                Bottoms
                                                                            </button>
                                                                        </h2>
                                                                        <div id="panelsStayOpen-subcatTitleFour"
                                                                            class="accordion-collapse collapse"
                                                                            aria-labelledby="panelsStayOpen-subcatFour">
                                                                            <div class="accordion-body">
                                                                                <div class="checkbox_list">
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            All Tops <span>120k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Long Sleeve T-Shirts
                                                                                            <span>6k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            Polos <span>4k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Shirts (Button Ups)
                                                                                            <span>12k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Sweaters & Knitwear
                                                                                            <span>6k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            Sweatshirts & Hoodies
                                                                                            <span>4k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            Tank Tops & Sleeveless
                                                                                            <span>12k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- size -->
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#panelsStayOpen-collapseTwo"
                                                            aria-expanded="false"
                                                            aria-controls="panelsStayOpen-collapseTwo">
                                                            {{ __('size') }}
                                                        </button>
                                                    </h2>
                                                    <div id="panelsStayOpen-collapseTwo"
                                                        class="accordion-collapse collapse @if (isset(request()->size)) show @endif"
                                                        aria-labelledby="panelsStayOpen-headingTwo">
                                                        <div class="accordion-body">
                                                            @foreach ($categories as $category)
                                                                <div class="mb-3 title">
                                                                    <h4>{{ __($category->name) }}</h4>
                                                                </div>
                                                                <div class="subcategory_list">
                                                                    @foreach ($category->subcategories as $subcategories)
                                                                        <div class="accordion-item">
                                                                            <h2 class="accordion-header"
                                                                                id="panelsStayOpen-subcatFive_{{ $subcategories->id }}">
                                                                                <button class="accordion-button collapsed "
                                                                                    type="button"
                                                                                    data-bs-toggle="collapse"
                                                                                    data-bs-target="#panelsStayOpen-subcatTitleFive{{ $subcategories->id }}"
                                                                                    aria-expanded="false"
                                                                                    aria-controls="panelsStayOpen-subcatTitleFive{{ $subcategories->id }}">
                                                                                    {{ __($subcategories->name) }}
                                                                                </button>
                                                                            </h2>
                                                                            <div id="panelsStayOpen-subcatTitleFive{{ $subcategories->id }}"
                                                                                class="accordion-collapse collapse {{ sizeSubCategoryActive($subcategories) ? 'show' : '' }}"
                                                                                aria-labelledby="panelsStayOpen-subcatFive_{{ $subcategories->id }}">
                                                                                <div class="accordion-body">
                                                                                    <div class="checkbox_list">
                                                                                        @if (isset($sizes) && count($sizes) > 0)
                                                                                            @foreach ($sizes as $sk => $sv)
                                                                                                @if ($sv->category_id == $subcategories->category_id && $sv->subcategory_id == $subcategories->id)
                                                                                                    <div
                                                                                                        class="form-check">
                                                                                                        <input
                                                                                                            class="form-check-input"
                                                                                                            type="checkbox"
                                                                                                            id="{{ $sv->adSize->size . $sv->adSize->id }}"
                                                                                                            value="{{ $sv->adSize->id }}"
                                                                                                            name="size[]"
                                                                                                            {{ isActiveSize($sv->adSize->id) ? 'checked' : '' }}
                                                                                                            onchange="changeFilter()">
                                                                                                        <label
                                                                                                            class="form-check-label"
                                                                                                            for="{{ $sv->adSize->size . $sv->adSize->id }}">
                                                                                                            {{ $sv->adSize->size }}
                                                                                                        </label>
                                                                                                    </div>
                                                                                                @endif
                                                                                            @endforeach
                                                                                        @endif
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    @endforeach
                                                                    {{-- <div class="accordion-item">
                                                                        <h2 class="accordion-header"
                                                                            id="panelsStayOpen-subcatSix">
                                                                            <button class="accordion-button collapsed"
                                                                                type="button" data-bs-toggle="collapse"
                                                                                data-bs-target="#panelsStayOpen-subcatTitleSix"
                                                                                aria-expanded="false"
                                                                                aria-controls="panelsStayOpen-subcatTitleSix">
                                                                                Bottoms
                                                                            </button>
                                                                        </h2>
                                                                        <div id="panelsStayOpen-subcatTitleSix"
                                                                            class="accordion-collapse collapse"
                                                                            aria-labelledby="panelsStayOpen-subcatSix">
                                                                            <div class="accordion-body">
                                                                                <div class="checkbox_list">
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            26 <span>3k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            27 <span>3k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatOne">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatOne">
                                                                                            28 <span>16k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="form-check">
                                                                                        <input class="form-check-input"
                                                                                            type="checkbox" value=""
                                                                                            id="subsubcatTwo">
                                                                                        <label class="form-check-label"
                                                                                            for="subsubcatTwo">
                                                                                            29 <span>15k</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div> --}}
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- price -->
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#panelsStayOpen-collapseThree"
                                                            aria-expanded="false"
                                                            aria-controls="panelsStayOpen-collapseThree">
                                                            {{ __('price') }}
                                                        </button>
                                                    </h2>
                                                    <div id="panelsStayOpen-collapseThree"
                                                        class="accordion-collapse collapse @if (isset(request()->minPrice) || isset(request()->maxPrice)) show @endif"
                                                        aria-labelledby="panelsStayOpen-headingThree">
                                                        <div class="accordion-body">
                                                            <div class="price_filter">
                                                                <div class="row g-4">
                                                                    <div class="col-6">
                                                                        <div class="input-group">
                                                                            <label class="input-group-text">$</label>
                                                                            <input type="number" name="minPrice"
                                                                                class="form-control"
                                                                                onfocusout="changeFilter()"
                                                                                title="Min Price" min="0"
                                                                                max="200000" placeholder="Min"
                                                                                value="{{ request()->minPrice }}">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <div class="input-group">
                                                                            <label class="input-group-text">$</label>
                                                                            <input type="number" name="maxPrice"
                                                                                class="form-control"
                                                                                onfocusout="changeFilter()"
                                                                                title="Max Price" min="1"
                                                                                max="200000" placeholder="Max"
                                                                                value="{{ request()->maxPrice }}">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- condition -->
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#panelsStayOpen-collapseFour"
                                                            aria-expanded="false"
                                                            aria-controls="panelsStayOpen-collapseFour">
                                                            {{ __('conditons') }}
                                                        </button>
                                                    </h2>
                                                    <div id="panelsStayOpen-collapseFour"
                                                        class="accordion-collapse collapse @isset(request()->conditions) show @endisset"
                                                        aria-labelledby="panelsStayOpen-headingFour">
                                                        <div class="accordion-body">
                                                            <div class="checkbox_list">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        {{ activeConditions('new') ? 'checked' : '' }}
                                                                        onchange="changeFilter()" value="new"
                                                                        id="newc" name="conditions[]">
                                                                    <label class="form-check-label" for="newc">
                                                                        {{ __('trusted_seller') }}
                                                                        <span>{{ countByCondition('new') }}</span>
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        {{ activeConditions('Gently Used') ? 'checked' : '' }}
                                                                        onchange="changeFilter()" value="Gently Used"
                                                                        id="gusedc" name="conditions[]">
                                                                    <label class="form-check-label" for="gusedc">
                                                                        {{ __('trusted_seller') }}
                                                                        <span>{{ countByCondition('Gently Used') }}</span>
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        {{ activeConditions('Used') ? 'checked' : '' }}
                                                                        onchange="changeFilter()" value="Used"
                                                                        id="usedc" name="conditions[]">
                                                                    <label class="form-check-label" for="usedc">
                                                                        {{ __('used') }}
                                                                        <span>{{ countByCondition('Used') }}</span>
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        {{ activeConditions('Worn') ? 'checked' : '' }}
                                                                        onchange="changeFilter()" value="Worn"
                                                                        id="wornc" name="conditions[]">
                                                                    <label class="form-check-label" for="wornc">
                                                                        {{ __('worn_used') }}
                                                                        <span>{{ countByCondition('Worn') }}</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- filter by keyword -->
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#panelsStayOpen-collapseFive"
                                                            aria-expanded="false"
                                                            aria-controls="panelsStayOpen-collapseFive">
                                                            {{ __('filter by keyword') }}
                                                        </button>
                                                    </h2>
                                                    <div id="panelsStayOpen-collapseFive"
                                                        class="accordion-collapse collapse @isset(request()->keyword) show @endisset"
                                                        aria-labelledby="panelsStayOpen-headingFive">
                                                        <div class="accordion-body">
                                                            <div class="search_filter">
                                                                <div class="input-group">
                                                                    <label class="input-group-text"><i
                                                                            class="fa fa-search"></i></label>
                                                                    <input type="text" name="keyword" id="search"
                                                                        class="form-control"
                                                                        placeholder="Filter by keyword"
                                                                        onfocusout="changeFilter()"
                                                                        value="{{ request()->keyword }}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @isset($shipingLocations)
                                                    <!-- location -->
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="panelsStayOpen-headingSix">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#panelsStayOpen-collapseSix"
                                                                aria-expanded="false"
                                                                aria-controls="panelsStayOpen-collapseSix">
                                                                {{ __('location') }}
                                                            </button>
                                                        </h2>
                                                        <div id="panelsStayOpen-collapseSix"
                                                            class="accordion-collapse collapse @isset(request()->country) show @endisset"
                                                            aria-labelledby="panelsStayOpen-headingSix">
                                                            <div class="accordion-body">
                                                                <div class="checkbox_list">
                                                                    @foreach ($shipingLocations as $shipingLocation)
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox"
                                                                                name="country[]"
                                                                                value="{{ $shipingLocation->id }}"
                                                                                id="{{ $shipingLocation->locations . $shipingLocation->id }}"
                                                                                onchange="changeFilter()"
                                                                                {{ activeCountry($shipingLocation->id) ? 'checked' : '' }}>
                                                                            <label class="form-check-label"
                                                                                for="{{ $shipingLocation->locations . $shipingLocation->id }}">
                                                                                {{ $shipingLocation->locations }}
                                                                                <span>{{ $shipingLocation->products->count() }}</span>
                                                                            </label>
                                                                        </div>
                                                                    @endforeach
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endisset
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="col-xl-9">
                                    <div class="ad-list__content">
                                        <div class="mb-3 title">
                                            <h3>{{ __('available_listings') }}</h3>
                                        </div>
                                        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-2">
                                            @forelse ($recent_ads as $ad)
                                                <x-frontend.single-ad :ad="$ad" :adfields="$ad->productCustomFields" className="" />
                                            @empty
                                                <x-not-found2 message="{{ __('no ads found') }}" />
                                            @endforelse
                                        </div>
                                    </div>
                                    <div class="page-navigation">
                                        {{ $recent_ads->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- feedback --}}
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                    <div class="feedback_wrapper">
                        <div class="feedback_header text-center mb-5">
                            <h3>{{ __('seller_score') }}</h3>
                            <p>
                                @if ($rating_details['average'] == 5)
                                    <span data-toggle="tooltip" data-placement="top" title="5/5 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px;color:#007B4C"></i>
                                        @endfor
                                    </span>
                                @endif
                                @if ($rating_details['average'] == 4)
                                    <span data-toggle="tooltip" data-placement="top" title="4/5 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px; color:#009C00"></i>
                                        @endfor
                                    </span>
                                @endif
                                @if ($rating_details['average'] == 3)
                                    <span data-toggle="tooltip" data-placement="top" title="3/5 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px; color:#8CA402"></i>
                                        @endfor
                                    </span>
                                @endif
                                @if ($rating_details['average'] == 2)
                                    <span data-toggle="tooltip" data-placement="top" title="2/5 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px;color:#F7B217"></i>
                                        @endfor
                                    </span>
                                @endif
                                @if ($rating_details['average'] == 1)
                                    <span data-toggle="tooltip" data-placement="top" title="1/5 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px;color:red"></i>
                                        @endfor
                                    </span>
                                @endif
                                @if ($rating_details['average'] == 0)
                                    <span data-toggle="tooltip" data-placement="top" title="0 Feedback">
                                        @for ($i = 0; $i < 5; $i++)
                                            <i class="fa fa-star{{ $rating_details['average'] <= $i ? '-o' : '' }}"
                                                style="font-size:16px;color:#ddd"></i>
                                        @endfor
                                    </span>
                                @endif

                            </p>
                            <span> {{ $user->reviews->count() }} {{ __('feedback') }}</span>
                            <ul>
                                <li>{{ __('fast_shipper') }}</li>
                                <li>{{ __('item_as_described') }}</li>
                                <li>{{ __('quick_replies') }}</li>
                            </ul>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                @foreach ($reviews as $review)
                                    <div class="feedback_product">
                                        <div class="row g-0 position-relative">
                                            <div class="col-md-8 mb-md-0 p-md-4">
                                                <div class="product_content">
                                                    <h4>{{ date('F D,Y', strtotime($review->created_at)) }}</h4>
                                                    <p>
                                                        @if ($review->stars == 5)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="5/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#007B4C"></i>
                                                                @endfor
                                                            </span>
                                                        @endif

                                                        @if ($review->stars == 4)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px; color:#009C00"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($review->stars == 3)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="3/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px; color:#8CA402"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($review->stars == 2)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="2/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#F7B217"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($review->stars == 1)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="1/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:red"></i>
                                                                @endfor
                                                            </span>
                                                        @endif
                                                        @if ($review->stars == 0)
                                                            <span data-toggle="tooltip" data-placement="top"
                                                                title="4/5 Feedback">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    <i class="fa fa-star{{ $review->stars <= $i ? '-o' : '' }}"
                                                                        style="font-size:16px;color:#ddd"></i>
                                                                @endfor
                                                            </span>
                                                        @endif

                                                    </p>
                                                    <ul>

                                                        @if ($review->fastShipper)
                                                            <li>{{ __('fast_shipper') }}</li>
                                                        @endif
                                                        @if ($review->itemAsDescribed)
                                                            <li>{{ __('item_as_described') }}</li>
                                                        @endif
                                                        @if ($review->quickReplies)
                                                            <li>{{ __('quick_replies') }}</li>
                                                        @endif
                                                    </ul>
{{--                                                    <h3><a--}}
{{--                                                            href="{{ route('frontend.addetails', ['ad' => $review->ads->slug]) }}">{{ $review->ads->category->name }}--}}
{{--                                                            ×{{ $review->ads->subcategory->name }}--}}
{{--                                                            ×{{ $review->ads->childcategory->name }}</a>--}}
{{--                                                    </h3>--}}
{{--                                                    <h5><a--}}
{{--                                                            href="{{ route('frontend.addetails', ['ad' => $review->ads->slug]) }}">{{ $review->ads->title }}</a>--}}
{{--                                                    </h5>--}}
                                                    <strong>User : </strong><a href="{{route('frontend.seller.profile',$review->user->username ?? "")}}">{{$review->user->name ?? ""}}</a>
                                                    <p>Comment : {{$review->comment ?? ""}}</p>
                                                </div>
                                            </div>
{{--                                            <div class="col-md-4 p-4 ps-md-0">--}}
{{--                                                <div class="product_img text-center">--}}
{{--                                                    <p></p>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                {{-- review --}}
                <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                    <div class="feedback_wrapper pt-4 pb-5">
                        @auth
                            @include('frontend.seller.review2')
                        @endauth
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{ __('report_seller') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="{{ route('frontend.seller.report') }}" method="post">
                    @csrf
                    <input type="hidden" name="user_id" value="{{ $user->id }}">
                    <div class="modal-body">
                        <div class="form-group">
                            <div>

                                <label class="form-label" for="note">{{ __('note') }}</label>
                                <input type="text" class="form-control" name="note" id=""
                                    placeholder="{{ __('please_leave_a_note') }}">
                            </div>
                            <div>
                                <label class="form-label" for="reasonn">{{ __('reason') }}</label>
                                <textarea required name="reason" id="reasonn" rows="8" class="form-control"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn bg-secondary"
                            data-bs-dismiss="modal">{{ __('close') }}</button>
                        <button type="submit" class="btn">{{ __('submit') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
@section('scripts')
    <script>
        $('.child_cat_chnge').change(function(e) {
            e.preventDefault();
            var cat = null;
            var scat = null;
            var username = "{{ $user->username }}";
            var childCat;
            if ($(this).is(':checked')) {
                cat = $(this).data('cat_slug');
                childCat = $(this).val();
            }
            if ($(this).is(':checked')) {
                scat = $(this).data('subcat_slug');
            }
            if (cat != null && scat != null) {
                $("input").not('.' + cat).prop('checked', false);
                $("input").not('.' + scat).prop('checked', false);
                $('#adFilterForm').attr('action', "{{ url('/seller') }}/" + username + '/' + cat + '/' + scat);
            } else {
                $('#adFilterForm').attr('action', "{{ url('/seller') }}/" + username);
            }
            console.log(cat, scat);
            $('#adFilterForm').submit();

        });
        $('#sort').change(function(e) {
            let value = e.target.value;
            $('#sortinput').val(value);
            $('#adFilterForm').submit()

        })

        function changeFilter() {
            var cat = $('.session_cat').val();
            var scat = $('.session_subcat').val();
            var username = "{{ $user->username }}";
            console.log(cat, scat);
            if (cat != null && scat != null) {
                $('#adFilterForm').attr('action', "{{ url('/seller') }}/" + username + '/' + cat + '/' + scat);
            } else {
                $('#adFilterForm').attr('action', "{{ url('/seller') }}/" + username);
            }
            $('#adFilterForm').submit();
        }
    </script>
    <script>
        function copyText() {
            navigator.clipboard.writeText("{{ url()->current() }}");
            toastr.success("Copy to clipboard");
        }
    </script>

    <script>
        function oprnTab() {
            $('#pills-profile-tab').tab('show');
        }
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        });
    </script>
@endsection
