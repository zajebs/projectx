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
                    <div class="d-flex justify-content-end mb-3">
                        <button type="button" class="btn btn-sm" onclick="printDiv('printableArea')">Download</button>
                    </div>

                    <div class="content">
                            <div class="row" id="default">
                                <div class="col-12">
                                    <div class="card invoice_wrap" id="printableArea">

                                        <div class="card-body">
                                            <div class="row mb-3">
                                                <div class="col-6">
                                                    <div class="logo">
                                                        <img src="{{ getPhoto(setting('logo_image')) }}" width="100"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div style="float:right">
                                                        <h4><strong>{{ env('site_name') }}</strong></h4>
                                                        <address>
                                                            {{ $cms->contact_address ?? "" }}
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

                                                            <p><b>Payment By : {{$transaction->payment_provider}}</b></p>

                                                            <p>Status: <strong
                                                                    class="text-success">{{ $transaction->payment_status }}</strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="col-5" style="text-align: right;">
                                                        <div class="invoice_info">
                                                            <p>SOLD TO:</p>
                                                            <p><strong>Name : {{$transaction->customer->name ?? "" }}</strong></p>
                                                            <p><strong>Email : {{$transaction->customer->email ?? "N/A" }}</strong></p>
                                                            <p><strong>Phone : {{$transaction->customer->phone ?? "N/A" }}</strong></p>
                                                            <p><strong>Address : {{$transaction->customer->country->locations ?? "N/A" }}</strong></p>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="invoice_table table table-striped">
                                                    <thead>
                                                    <tr>

                                                        <th width="40%" >Coupon Name</th>
                                                        <th>Coupons</th>
                                                        <th></th>
                                                        <th width="15%" colspan="3">Unit Price</th>


                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @if (isset($transaction))
                                                            <tr>
                                                                <td>{{ $transaction->coupon->name ?? '' }}</td>
                                                                <td>{{$transaction->coupon->coupons}}</td>
                                                                <td></td>
                                                                <td>{{ changeCurrency($transaction->coupon->price) }}</td>
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
                                                        <td class="text-right">{{ changeCurrency($transaction->usd_amount) }}</td>
                                                    </tr>


                                                    <tr class="bg-default">
                                                        <td colspan="2"></td>


                                                        <td class="text-right">Grand Total:</td>
                                                        <td class="text-right">{{ changeCurrency($transaction->usd_amount) }}</td>

                                                    </tr>
                                                    {{-- <tr>
                                                    <td colspan="2"></td>
                                                    <td><strong>Balance Due:</strong></td>
                                                    <td class="text-success"> 0.00 AUD </td>
                                                </tr> --}}
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
    </section>
@endsection

@push('js')

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
