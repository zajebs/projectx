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
                <div class="col-xl-10 mt-4">
                    <h2 class="text-center">You have
                        {{ $currency->symbol }}{{ auth()->user()->total_seller_amount - auth()->user()->withdraw_request_amount }}
                        amount to withdraw</h2>
                    @if (auth()->user()->total_seller_amount - auth()->user()->withdraw_request_amount > 100)
                        <form action="{{ route('frontend.withdrawRequestStore') }}" method="POST">
                            @csrf
                            <input type="hidden" name="amount" id=""
                                value="{{ auth()->user()->total_seller_amount }}">
                            <div class="d-flex justify-content-center">
                                <button class="btn">Submit</button>
                            </div>
                        </form>
                    @else
                        <p class="text-center">Minimum amount required about {{ $currency->symbol }}100 </p>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
