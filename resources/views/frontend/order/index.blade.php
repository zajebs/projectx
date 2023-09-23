@extends('layouts.frontend.layout_one')

@section('title', __('Orders'))

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
                <a class="breedcrumb__page-link text--body-3">{{ __('Orders') }}</a>
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
                    <table class="table table-oordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Product</th>
                                <th>Order By</th>
                                <th>Amount</th>
                                <th>Order Date</th>
                                <th>Order Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($orders as $order)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ Str::limit($order->adDetails->title ?? 'N/A', 50, '...') }}</td>
                                    <td>{{ $order->customer->name ?? '' }}</td>
                                    <td>{{ $order->grand_total }}</td>
                                    <td>{{ date('d-M-Y', strtotime($order->created_at)) }}</td>

                                    @if ($order->status == 0)
                                        <td>Ordered but due</td>
                                    @elseif($order->status == 1)
                                        <td>Ordered and paid</td>
                                    @elseif($order->status == 2)
                                        <td>Seller delivered</td>
                                    @elseif($order->status == 3)
                                        <td>Buyer got the item</td>
                                    @elseif($order->status == 4)
                                        <td>Buyer got the item and not accepted</td>
                                    @elseif($order->status == 5)
                                        <td>Buyer got the item and accepted</td>
                                    @endif

                                    <td>
                                        <a href="{{ route('frontend.orders.view', ['order' => $order->id]) }}"
                                            class="btn btn-sm"><i class="fas fa-eye"></i></a>
                                    </td>


                                </tr>
                            @empty
                                <td colspan="6">No Order</td>
                            @endforelse
                        </tbody>
                    </table>

                    {{ $orders->links() }}

                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
