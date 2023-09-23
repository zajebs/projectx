@extends('admin.order.order-layout')

@section('title')
    {{ __('All Order') }}
@endsection

@section('website-orders')
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <div class="card-title">
                <h3 class="card-title" style="line-height: 36px;">{{ __('Orders') }}</h3>
            </div>
        </div>
        <div class="card-body table-responsive p-3">
            <table class="table table-hover text-nowrap">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Product</th>
                        <th>Owner</th>
                        <th>Order By</th>
                        <th>Amount($)</th>
                        <th>Order Date</th>
                        <th>Order Status</th>
                        <th>Profit($)</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($orders as $order)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ Str::limit($order->adDetails->title ?? '', 50, '...') }}</td>
                            <td>{{ $order->owner->name ?? '' }}</td>
                            <td>{{ $order->customer->name ?? '' }}</td>
                            <td>{{ $order->grand_total ?? '' }}</td>
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
                                {{ $order->admin_commission }}
                            </td>
                        </tr>
                    @empty
                        <td class="8">No Order</td>
                    @endforelse
                </tbody>
                <tbody>
                    <tr>
                        <td colspan="7" class="text-right"><Strong>Total</Strong></td>
                        <td colspan="" class="text-left">${{ $orders->sum('admin_commission') }}</td>
                    </tr>
                </tbody>
            </table>
            <div class="d-flex justify-content-center">
                {{ $orders->links() }}
            </div>
        </div>
    </div>
@endsection

@section('style')
@endsection

@section('script')
@endsection
