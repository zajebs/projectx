@extends('layouts.frontend.layout_one')

@section('title', __('Orders View'))

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
                    <table class="table">
                        <tr>
                            <th>Name</th>
                            <td class="text-center">{{ $order->adDetails->title }}</td>
                        </tr>
                        <tr>
                            <th>Order By</th>
                            <td class="text-center">{{ $order->customer->name }}</td>
                        </tr>
                        <tr>
                            <th>Shipping To</th>
                            <td class="text-center">{{ $order->shiping_to ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <th>Unit Price</th>
                            <td class="text-center">${{ $order->unit_price }}</td>
                        </tr>
                        <tr>
                            <th>Total Price</th>
                            <td class="text-center">${{ $order->total_price }}</td>
                        </tr>
                        <tr>
                            <th>Total Dicount</th>
                            <td class="text-center">${{ $order->total_dicount }}</td>
                        </tr>
                        <tr>
                            <th>Grand Total</th>
                            <td class="text-center"><strong>${{ $order->grand_total }}</strong></td>
                        </tr>
                    </table>

                    <form class="form-inline" action="{{ route('frontend.orders.update', ['order' => $order->id]) }}"
                        method="post">
                        @method('PUT')
                        @csrf
                        @if ($order->status == 1)
                            <input type="hidden" value="2" name="status">
                            <button type="submit" class="btn">Seller Delivered</button>
                        @endif
                        @if ($order->status == 2)
                            <input type="hidden" value="3" name="status">
                            <button type="submit" class="btn">Buyer Got The Item</button>
                        @endif
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
