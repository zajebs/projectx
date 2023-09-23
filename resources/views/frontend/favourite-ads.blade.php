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
                <a class="breedcrumb__page-link text--body-3 text-lowercase">{{ __('overview') }}</a>
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
                        <div class="dashboard__myads">
                            @if ($wishlists->count() > 0)
                                <div class="header-table text-left">
                                    <div class="header-item">
                                        <h6 class="">
                                            {{ __('ads') }}
                                        </h6>
                                    </div>
                                    <div class="header-item">
                                        <h6 class="">
                                            {{ __('date') }}
                                        </h6>
                                    </div>
                                    <div class="header-item text-right">
                                        <h6 class="">
                                            {{ __('prices') }}
                                        </h6>
                                    </div>
                                    <div class="header-item">
                                        <h6 class="">
                                            {{ __('category') }}
                                        </h6>
                                    </div>
                                    <div class="header-item">
                                        <h6 class="">
                                            {{ __('action') }}
                                        </h6>
                                    </div>
                                </div>
                            @endif
                            <div class="body">
                                @forelse ($wishlists as $ad)
                                    <x-dashboard.ads-lg :ad="$ad" showstatue="no">
                                        <form action="{{ route('frontend.add.wishlist') }}" method="POST">
                                            @csrf
                                            @if (auth('user')->check())
                                                <input type="hidden" name="ad_id" value="{{ $ad->id }}">
                                                <input type="hidden" name="user_id" value="{{ auth('user')->user()->id }}">
                                            @endif
                                            <button type="submit" class="btn btn--bg btn--fav">
                                                <span class="icon">
                                                    <x-svg.heart-icon fill="#070707" strokeWidth="0.5" />
                                                </span>
                                            </button>
                                        </form>
                                    </x-dashboard.ads-lg>
                                    <x-dashboard.ads-sm :ad="$ad" showstatue="no">
                                        <form action="{{ route('frontend.add.wishlist') }}" method="POST">
                                            @csrf
                                            @if (auth('user')->check())
                                                <input type="hidden" name="ad_id" value="{{ $ad->id }}">
                                                <input type="hidden" name="user_id" value="{{ auth('user')->user()->id }}">
                                            @endif
                                            <button type="submit" class="btn btn--bg btn--fav">
                                                <span class="icon">
                                                    <x-svg.heart-icon fill="#070707" strokeWidth="0.5" />
                                                </span>
                                            </button>
                                        </form>
                                    </x-dashboard.ads-sm>
                                @empty
                                    <x-not-found2 />
                                @endforelse
                            </div>
                            <div class="page-navigation">
                                {{ $wishlists->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('frontend_style')
    <link rel="manifest" href="{{ asset('frontend') }}/images/favicon_io/site.webmanifest" />
    <link rel="stylesheet" href="{{ asset('frontend') }}/js/plugins/css/slick.css" />
    <link rel="stylesheet" href="{{ asset('frontend/style.css') }}">

    <style>
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
            -webkit-box-shadow: 0px -1px 0px 0px #ebeef7 inset;
            box-shadow: 0px -1px 0px 0px #ebeef7 inset;
        }
    </style>
@endsection

@section('scripts')
    <script src="{{ asset('frontend') }}/js/plugins/bvselect.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var sortBy = new BVSelect({
                selector: '#sortByFilter',
                searchbox: false,
                offset: false,
                placeholder: 'Sort By',
                search_autofocus: true,
                breakpoint: 450,
            });
            var category = new BVSelect({
                selector: '#myadFilterCategory',
                searchbox: false,
                offset: false,
                placeholder: 'All category',
                search_autofocus: true,
                breakpoint: 450,
            });
        });
    </script>
@endsection
