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
                        <button class="btn btn-primary m-3 float-right " type="button"
                            onclick="printDiv('printableArea')">Download</button>
                        <a class="btn bg-primary float-right d-flex align-items-center justify-content-center"
                            href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i>&nbsp; {{ __('back') }}</a>
                    </div>
                    <div class="card-body">
                        <div class="row d-flex justify-content-end">

                        </div>

                        <div class="content">
                            <div class="row" id="default">
                                <div class="col-12">
                                    <div class="card invoice_wrap" id="printableArea">

                                        <div class="card-body">
                                            <div class="row mb-3">
                                                <div class="col-6">
                                                    <div class="logo">
                                                        <img src="{{ getPhoto(setting('logo_image')) }}" alt=""
                                                            width="100">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div style="float:right">
                                                        <h4><strong>{{ env('site_name') }}</strong></h4>
                                                        <address>
                                                            {{ $cms->contact_address ?? '' }}
                                                        </address>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="invoice"
                                                style="border-style: solid;border-width: 2px 0; padding:2%; border-color:darkgray">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <div class="invoice_title">
                                                            <h2><strong>INVOICE</strong></h2>
                                                            <span>Invoice No.</span>
                                                            <strong>{{ $transaction->order_id }}</strong> <br>

                                                            <p>
                                                                <b>Date:{{ date('d M Y', strtotime($transaction->created_at)) }}</b>
                                                            </p>

                                                            <p><b>Payment By : {{ $transaction->payment_provider }}</b></p>

                                                            <p>Status: <strong
                                                                    class="text-success">{{ $transaction->payment_status }}</strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="col-5" style="text-align: right;">
                                                        <div class="invoice_info">
                                                            <p>SOLD TO:</p>
                                                            <p><strong>Name :
                                                                    {{ $transaction->customer->name ?? '' }}</strong></p>
                                                            <p><strong>Email :
                                                                    {{ $transaction->customer->email ?? 'N/A' }}</strong>
                                                            </p>
                                                            <p><strong>Phone :
                                                                    {{ $transaction->customer->phone ?? 'N/A' }}</strong>
                                                            </p>
                                                            <p><strong>Address :
                                                                    {{ $transaction->customer->country->locations ?? 'N/A' }}</strong>
                                                            </p>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="invoice_table table table-striped">
                                                    <thead>
                                                        <tr>

                                                            <th width="40%">Coupon Name</th>
                                                            <th>Coupons</th>
                                                            <th></th>
                                                            <th width="15%" colspan="3">Unit Price</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        @if (isset($transaction))
                                                            <tr>
                                                                <td>{{ $transaction->coupon->name ?? '' }}</td>
                                                                <td>{{ $transaction->coupon->coupons }}</td>
                                                                <td></td>
                                                                <td class="text-right">
                                                                    {{ changeCurrency($transaction->coupon->price) }}</td>
                                                            </tr>
                                                        @endif

                                                        <tr>
                                                            <td colspan="2"></td>

                                                            <td><strong>Total:</strong></td>
                                                            <td class="text-right">
                                                                <strong>{{ changeCurrency($transaction->amount) }}</strong>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td colspan="2"></td>

                                                            <td>Transaction Amount:</td>
                                                            <td class="text-right">
                                                                {{ changeCurrency($transaction->usd_amount) }}</td>
                                                        </tr>

                                                        <tr class="bg-default">
                                                            <td colspan="2"></td>

                                                            <td class="text-right">Grand Total:</td>
                                                            <td class="text-right">
                                                                {{ changeCurrency($transaction->usd_amount) }}</td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
    <script>
        function printDiv(printableArea) {
            const printContents = document.getElementById(printableArea).innerHTML;
            const originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
@endpush
