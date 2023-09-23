@extends('layouts.frontend.layout_one')

@section('title', __('My Coupons'))

@section('content')
    @php
        $currency = Modules\Currency\Entities\Currency::first();
    @endphp
    <x-frontend.breedcrumb-component :background="$cms->dashboard_my_ads_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('My Coupons') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    {{-- coupons  --}}
    <section class="section dashboard">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="col-xl-2 d-none d-xl-block">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <div class="dashboard__myads">
                        <div class="current_coupon text-center">
                            <h2>{{ Auth::user()->coupons ?? 0 }}</h2>
                            <p>{{ __('available_coupons') }}</p>
                        </div>
                        <hr>
                        <div class="row">
                            @foreach ($coupons as $item)
                                <div class="col-md-4 text-center mb-4">
                                    <div class="coupons_wrap">
                                        <div class="coupon_name">
                                            <h4>{{ $item->coupons }} {{ __('coupons') }}</h4>
                                            <p>{{ changeCurrency($item->price) }}</p>
                                            <a href="{{ route('frontend.priceplanDetails', $item->id) }}"
                                                class="text-white btn-sm btn-success">
                                                {{ __('buy_now') }}
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')
    <script>
        function Comealert() {
            alert('Comming Soon...')
        }
    </script>
@endsection
