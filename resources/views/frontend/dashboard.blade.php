@extends('layouts.frontend.layout_one')

@section('title', __('dashboard'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_overview_background">
        {{ __('overview') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a href="{{ route('frontend.dashboard') }}"
                    class="breedcrumb__page-link text--body-3">{{ __('dashboard') }}</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">/</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3 text-lowercase">{{ __('Overview') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- dashboard section start  -->
    <section class="section dashboard dashboard--user">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="row">
                    <div class="col-lg-2 d-none d-xl-block">
                        @include('layouts.frontend.partials.dashboard-sidebar')
                    </div>
                    <div class="col-lg-10">
                        <div class="dashboard__count-card row bg-white">
                            @if($user->is_social_login == 1)
                                <div class="userwarning" style="padding: 12px">
                                    <div class="alert alert-primary d-flex align-items-center" role="alert">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                                            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                        </svg>
                                        <div>
                                            {{__('Kindly modify your username to access all features.') }}
                                        </div>
                                    </div>
                                </div>
                            @endif
                            <div class="col-lg-4">
                                <div class="dashboard-card dashboard-card--count bgcolor--primary-9 ">
                                    <div class="dashboard-card--count__info">
                                        <span class="counter-number text--heading-2"> {{ $posted_ads_count }} </span>

                                        <h2 class="counter-title text--body-3">{{ __('posted_ads') }}</h2>
                                    </div>
                                    <div class="dashboard-card--count__icon">
                                    <span class="icon">
                                        <x-svg.list-icon stroke="#33bbff" />
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="dashboard-card dashboard-card--count bgcolor--success-9">
                                    <div class="dashboard-card--count__info">
                                        <span class="counter-number text--heading-2 "> {{ $sold_ads_count }} </span>
                                        <h2 class="counter-title text--body-3 ">{{ __('sold_ads') }}</h2>
                                    </div>
                                    <div class="dashboard-card--count__icon">
                                    <span class="icon">
                                        <x-svg.favourite-icon stroke="#52ce33" />
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="dashboard-card dashboard-card--count bgcolor--danger-9 ">
                                    <div class="dashboard-card--count__info">
                                        <span class="counter-number text--heading-2 "> {{ $expire_ads_count }} </span>
                                        <h2 class="counter-title text--body-3">{{ __('expire_ads') }}</h2>
                                    </div>
                                    <div class="dashboard-card--count__icon">
                                    <span class="icon">
                                        <x-svg.cube-icon />
                                    </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="dashboard__count-card bg-white row mt-3">
{{--                            <h4 class="my-2">@lang('remaining_coupon')</h4>--}}

                            <div class="col-lg-4">
                                <div class="dashboard-card dashboard-card--count bgcolor--warning-9">
                                    <div class="dashboard-card--count__info">
                                        <span class="counter-number text--heading-2">{{$user->coupons ?? 0}}</span>
                                        <h2 class="counter-title text--body-3">{!! __('remaining_coupon') !!}</h2>
                                    </div>
                                    <div class="dashboard-card--count__icon">
                                    <span class="icon">
                                        <x-svg.pending-icon  />
                                    </span>
                                    </div>
                                </div>
                            </div>

                        <div class="dashboard__myads">
                            <div class="header-table">
                                <div class="header-item">
                                    <h6 class="text--body-4-600">
                                        {{ __('ads') }}
                                    </h6>
                                </div>

                                <div class="header-item">
                                    <h6 class=" text-center text--body-4-600">
                                        {{ __('prices') }}
                                    </h6>
                                </div>
                                <div class="header-item">
                                    <h6 class="text--body-4-600">
                                        {{ __('status') }}
                                    </h6>
                                </div>
                                <div class="header-item">
                                    <h6 class="text--body-4-600">
                                        {{ __('action') }}
                                    </h6>
                                </div>
                            </div>
                            <div class="body">
                                @forelse ($ads as $key=> $ad)
                                    @if ($key > 3)
                                    @break
                                @endif
                                <x-dashboard.ads-lg :ad="$ad">
                                    @if ($ad->status != 'declined')
                                        <a href="{{ route('frontend.post.edit', $ad->slug) }}" class="btn">
                                            <span class="icon--left">
                                                <x-svg.edit-icon />
                                            </span>
                                            {{ __('edit') }}
                                        </a>
                                    @endif
                                    <ul class="edit">
                                        <li class="edit-icon">
                                            <span class="icon-toggle">
                                                <x-svg.three-dots-icon />
                                            </span>
                                            <ul class="edit-dropdown">
                                                <li class="edit-dropdown__item">
                                                    <x-dashboard.view-ad :ad="$ad"></x-dashboard.view-ad>
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    @if ($ad->status === 'sold')
                                                        <x-dashboard.make-active :ad="$ad" />
                                                    @else
                                                        <x-dashboard.make-expire :ad="$ad" />
                                                    @endif
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    <x-dashboard.delete-ad :ad="$ad" />
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    <x-dashboard.review-ad :ad="$ad" />
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </x-dashboard.ads-lg>
                                <x-dashboard.ads-sm :ad="$ad">
                                    <ul class="edit" id="edit">
                                        <li class="edit-icon">
                                            <span class="icon-toggle">
                                                <x-svg.three-dots-icon />
                                            </span>

                                            <ul class="edit-dropdown">
                                                <li class="edit-dropdown__item">
                                                    <a href="{{ route('frontend.post.edit', $ad->slug) }}"
                                                        class="edit-dropdown__link">
                                                        <span class="icon">
                                                            <x-svg.edit-icon />
                                                        </span>
                                                        <h5 class="text--body-4">{{ __('edit') }}</h5>
                                                    </a>
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    <x-dashboard.view-ad :ad="$ad"></x-dashboard.view-ad>
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    @if ($ad->status === 'sold')
                                                        <x-dashboard.make-active :ad="$ad" />
                                                    @else
                                                        <x-dashboard.make-expire :ad="$ad" />
                                                    @endif
                                                </li>
                                                <li class="edit-dropdown__item">
                                                    <x-dashboard.delete-ad :ad="$ad" />
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </x-dashboard.ads-sm>
                            @empty
                                <x-not-found2 />
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('adlisting_style')
    <link rel="stylesheet" href="{{ asset('frontend/css') }}/slick.css" />
    <link rel="stylesheet" href="{{ asset('frontend/style.css') }}">
    <style>
        .dashboard-card--recent__activity-item {
            align-items: center !important;
        }

        .card-edit__item {
            text-align: center;
        }


        .header-table {
            position: relative;
            min-height: 45px;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .dashboard__myads .header-table {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            margin-top: 32px;
            background-color: #fff;
            -webkit-box-shadow: 0px -1px 0px 0px #ebeef7 inset;
            box-shadow: 0px -1px 0px 0px #ebeef7 inset;
        }
    </style>
@endsection

@section('scripts')
    <script src="{{ asset('frontend') }}/js/plugins/slick.min.js"></script>
    <script src="{{ asset('frontend') }}/js/plugins/chart.min.js"></script>

    <script>
        const ctx = document.querySelector('#adsview');

        // ===== chart ===== \\
        if (ctx) {
            ctx.getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    datasets: [{
                        label: '',
                        data: {{ json_encode($bar_chart_datas) }},
                        backgroundColor: '#070707',
                        borderWidth: 0,
                        barThickness: 28,
                        borderRadius: 100,
                    }, ],
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                        },
                    },
                    plugins: {
                        legend: {
                            display: false,
                        },
                    },
                },
            });
        }

        // ==== Internation telephone  Code ===== \\
        // if (inputNumber) {
        //     window.intlTelInput(inputNumber, {
        //         preferredCountries: ['us', 'bd'],
        //     });
        // }
    </script>
    <script>
        function copyText() {
            navigator.clipboard.writeText("{{ url()->current() }}");
            toastr.success("Copy to clipboard");
        }
    </script>
@endsection
