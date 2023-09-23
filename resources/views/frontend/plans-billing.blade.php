@extends('layouts.frontend.layout_one')

@section('title', __('price_and_billing'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_plan_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('plans billing') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="row">
                <div class="col-xl-3">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-9">
                    @if ($user_plan->subscription_type == 'recurring' && isset($current_plan))
                        <div class="dashboard-card dashboard__upgrade">
                            <h2 class="dashboard-card__title">{{ __('current plan') }}</h2>
                            <div class="dashboard__upgrade-content">
                                <div class="info">
                                    <h2 class="text--heading-1">{{ $current_plan->label }}</h2>
                                    <p
                                        class="text--body-3 {{ formatDateTime($user_plan->expired_date)->isPast() ? 'text-danger' : 'text-success' }}">
                                        {{ __('expired date') }}:
                                        {{ formatDate($user_plan->expired_date, 'M d, Y') }}
                                    </p>
                                </div>
                                <div class="action">
                                    @if (!formatDateTime($user_plan->expired_date)->isPast())
                                        <a onclick="return confirm('{{ __('are you sure to cancel plan') }} ? {{ __('it will restore current plan benefits') }}.')"
                                            class="btn btn--outline"
                                            href="{{ route('frontend.cancel-plan') }}">{{ __('cancel plan') }}</a>
                                    @endif
                                    <a href="{{ route('frontend.priceplan') }}"
                                        class="btn text-light">{{ __('upgrade plan') }}</a>
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="row dashboard__bill-two">
                        <div class="col-lg-{{ $setting->subscription_type == 'one_time' ? '7' : '12' }}">
                            <div class="dashboard-card dashboard-card--benefits">
                                <h2 class="dashboard-card__title">{{ __('plan benefits') }}</h2>
                                <ul class="dashboard__benefits">
                                    <li class="dashboard__benefits-left">
                                        <ul>
                                            <li class="dashboard__benefits-item">
                                                <span class="icon">
                                                    <x-svg.check-icon width="12" height="12" stroke="#070707" />
                                                </span>
                                                <p class="text--body-4">{{ __('ads remaining') }}
                                                    <span
                                                        class="{{ $plan_info->ad_limit <= 5 ? 'text-danger' : 'text-success' }}">{{ $plan_info->ad_limit }}</span>
                                                </p>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dashboard__benefits-right">
                                        <ul>
                                            <li class="dashboard__benefits-item">
                                                <span class="icon">
                                                    <x-svg.check-icon width="12" height="12" stroke="#070707" />
                                                </span>
                                                <p class="text--body-4">{{ __('featured ads remaining') }}
                                                    <span
                                                        class="{{ $plan_info->featured_limit <= 2 ? 'text-danger' : 'text-success' }}">{{ $plan_info->featured_limit }}</span>
                                                </p>
                                            </li>
                                            @if ($plan_info->badge)
                                                <li class="dashboard__benefits-item">
                                                    <span class="icon">
                                                        <x-svg.check-icon width="12" height="12" stroke="#070707" />
                                                    </span>
                                                    <p class="text--body-4">{{ __('special membership badge') }}</p>
                                                </li>
                                            @endif
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        @if ($setting->subscription_type == 'one_time')
                            <div class="col-lg-5">
                                <div class="dashboard-card dashboard-card--invoice">
                                    <h2 class="dashboard-card__title">{{ __('upgrade plan') }}</h2>
                                    <div class="dashboard-card--invoice-info">
                                        <div class="action">
                                            <a href="{{ route('frontend.priceplan') }}"
                                                class="btn">{{ __('upgrade plan') }}</a>
                                        </div>
                                    </div>
                                    <span class="dashboard-card--invoice__icon">
                                        <x-svg.invoice-icon />
                                    </span>
                                </div>
                            </div>
                        @endif
                    </div>

                    <div class="row dashboard__bill-three">
                        <div class="col-lg-12">
                            <div class="invoice-table">
                                <h4>{{ __('recent invoice') }}</h4>
                                <table>
                                    <thead>
                                        <tr>
                                            <th>{{ __('order id') }}</th>
                                            <th>{{ __('plan type') }}</th>
                                            <th>{{ __('payment provider') }}</th>
                                            <th>{{ __('amount') }}</th>
                                            <th>{{ __('date') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($transactions as $transaction)
                                            <tr>
                                                <td>{{ $transaction->order_id }}</td>
                                                <td>{{ $transaction->plan->label ?? '' }}</td>
                                                <td>{{ ucfirst($transaction->payment_provider) }}</td>
                                                <td>
                                                    {{ $transaction->currency_symbol }}{{ $transaction->amount }}
                                                </td>
                                                <td>{{ Carbon\Carbon::parse($transaction->created_at)->format('M d, Y g:i A') }}
                                                </td>
                                            </tr>
                                        @empty
                                            <x-not-found2 message="{{ __('no recent invoice found') }}" />
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->

@endsection


@section('frontend_style')
    <style>
        .header-table {
            position: relative;
            min-height: 45px;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .dashboard-card--recentvoice__history .header-table {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
    </style>
@endsection
