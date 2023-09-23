@extends('layouts.frontend.layout_one')

@section('title', __('Withdraw'))

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
                <a class="breedcrumb__page-link text--body-3">{{ __('Withdraw') }}</a>
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
                    @if ($withdrawRequest->status)
                        <p>Your payment is apprroved at
                            {{ date('d-m-Y', strtotime($withdrawRequest->withdraw_request_date)) }}</p>
                        <div>
                            <div>
                                <img style="width: 480px;" src="{{ getPhoto($withdrawRequest->screenshoot) }}"
                                    alt="{{ $withdrawRequest->screenshoot }}">
                            </div>
                        </div>
                    @else
                        <p>
                            Your Payment is not approved.
                        </p>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
