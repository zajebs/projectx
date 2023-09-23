@extends('admin.layouts.app')

@section('title')
    {{ __('transaction history') }}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title" style="line-height: 36px;">{{ __('transaction history') }}</h3>
                        <a class="btn bg-primary float-right d-flex align-items-center justify-content-center"
                            href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i>&nbsp; {{ __('back') }}</a>
                    </div>
                    <div class="card-body table-responsive p-0">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>{{ __('order id') }}</th>
                                    <th>{{ __('transaction id') }}</th>
                                    <th>{{ __('customer') }}</th>
                                    <th>{{ __('amount') }}</th>
                                    <th>{{ __('coupons') }}</th>
                                    <th>{{ __('payment provider') }}</th>
                                    <th>{{ __('created time') }}</th>
                                    <th>{{ __('action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($transactions as $transaction)
                                    <tr>
                                        <td class="text-muted">
                                            {{ $transaction->order_id }}
                                        </td>
                                        <td class="text-muted">
                                            {{ $transaction->transaction_id ?? '--' }}
                                        </td>
                                        <td>
                                            <a
                                                href="{{ route('module.customer.show', $transaction->customer->username ?? '') }}">{{ $transaction->customer->name ?? '' }}</a>
                                        </td>
                                        <td class="text-muted">
                                            {{ $transaction->currency_symbol }}{{ $transaction->amount }}
                                        <td class="text-muted">
                                            {{ $transaction->coupons }}
                                        </td>
                                        <td class="text-muted">{{ ucfirst($transaction->payment_provider) }}</td>
                                        <td class="text-muted">
                                            {{ date('M d, Y', strtotime($transaction->created_at)) }}</td>
                                        <td><a class="btn btn-success"
                                                href="{{ route('transactions.view', ['transaction' => $transaction->id]) }}"><i
                                                    class="fas fa-eye"></i></a></td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td class="text-center" colspan="3">
                                            <span class="">{{ __('no transactions found') }}...</span>
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
