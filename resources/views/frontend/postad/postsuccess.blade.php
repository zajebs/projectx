@extends('layouts.frontend.layout_one')

@section('title', __('ad post success'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_post_ads_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('post ads') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="col-xl-2">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <div class="dashboard-post post-publish">
                        <div class="icon">
                            <x-svg.post-success-icon />
                        </div>
                        @if ($mode == 'update')
                            <h2 class="text--heading-1">{{ __('your ad has successfully update') }}</h2>
                        @else
                            <h2 class="text--heading-1">{{ __('your ad has successfully publish') }}</h2>
                        @endif
                        <p class="post-publish__brief text--body-3">{{ __('ad create success description') }}</p>
                        <div class="btns-group">
                            <a href="{{ route('frontend.post') }}" class="btn btn--outline">{{ __('go back') }}</a>
                            <a href="{{ route('frontend.addetails', $ad_slug) }}" class="btn">
                                {{ __('view ad') }}
                                <span class="icon--right">
                                    <x-svg.right-arrow-icon />
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
