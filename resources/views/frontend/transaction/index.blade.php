@extends('layouts.frontend.layout_one')

@section('title', __('Transaction'))

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
                <a class="breedcrumb__page-link text--body-3">{{ __('Transaction') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="col-xl-2">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <div class="table-responsive">
                        <table class="table table-oordered">
                            <thead>
                            <tr>

                                <th>#</th>
                                <th>{{ __('TRX_Id') }}</th>
                                <th>{{ __('Order_Id') }}</th>
                                <th>{{ __('Coupons') }}</th>
                                <th>{{ __('Amount') }}</th>
                                <th>{{ __('Order_Date') }}</th>
                                <th>{{ __('Transactions_Status') }}</th>
                                <th>{{ __('Provider') }}</th>
                                <th>{{ __('Actions') }}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse ($myTransactions as $myTransaction)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $myTransaction->transaction_id }}</td>
                                    <td>{{ $myTransaction->order_id }}</td>
                                    <td>{{ $myTransaction->coupons }}</td>
                                    <td>{{ changeCurrency($myTransaction->amount) }}</td>
                                    <td>{{ carbon\Carbon::parse($myTransaction->created_at)->format('d/m/Y') }}</td>
                                    <td>{{ $myTransaction->payment_status }}</td>
                                    <td>{{ $myTransaction->payment_provider }}</td>
                                    <td><a class="btn"
                                           href="{{route('frontend.my-transaction-view',['transaction'=>$myTransaction->id])}}"><i
                                                class="fas fa-eye"></i></a></td>
                                </tr>
                            @empty
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                    {{ $myTransactions->links() }}
                </div>
            </div>
        </div>
    </section>
@endsection
