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

                    <div class="d-flex justify-content-center">

                        @if ($order->status == 3)
                            <form class="form-inline"
                                action="{{ route('frontend.purchase.update', ['order' => $order->id]) }}" method="post">
                                @method('PUT')
                                @csrf


                                <input type="hidden" name="status" id="" value="5">

                                
                                <button type="submit" class="btn mx-4 mt-4">Accepted</button>
                            </form>
                        @endif

                        @if ($order->status == 3)
                            <form class="form-inline"
                                action="{{ route('frontend.purchase.update', ['order' => $order->id]) }}" method="post">
                                @method('PUT')
                                @csrf

                                <input type="hidden" name="status" id="" value="4">
                                
                                <button type="submit" class="btn mx-4 mt-4">Not Accepted</button>
                            </form>
                        @endif

                    </div>
                    @if ($order->status == 4)
                        <h3 class="text-center">Item Not Accepted</h3>
                    @endif

                    @if ($order->status == 5)

                        <h3 class="text-center">Item Accepted</h3>


                        @if (isset($order->review) && $order->review->count() > 0)
                            <div class="lh-lg rates-review">
                                <div id="rateYo">
                                </div>
                                <p>{{ $order->review->comment }}</p>
                                @if ($order->review->fastShipper)
                                    <p class="text-success">
                                        <i class="fa fa-check-circle"></i>&emsp;<span>Fast Shipper</span>
                                    </p>
                                @endif
                                @if ($order->review->itemAsDescribed)
                                    <p class="text-success">
                                        <i class="fa fa-check-circle"></i>&emsp;<span>Item As Described</span>
                                    </p>
                                @endif
                                @if ($order->review->quickReplies)
                                    <p class="text-success">
                                        <i class="fa fa-check-circle"></i>&emsp;<span>Quick Replies</span>
                                    </p>
                                @endif
                            </div>
                        @else
                            <div class="">
                                <form action="{{ route('frontend.seller.review') }}" method="post">
                                    @csrf
                                    <div id="rateYo">
                                    </div>
                                    @error('stars')
                                        <span class="invalid-feedback d-block">{{ $message }}</span>
                                    @enderror
                                    <input type="hidden" name="stars" id="rating">
                                    <input type="hidden" name="item_id" value="{{ $order->ad_id }}">
                                    <input type="hidden" name="order_id" value="{{ $order->id }}">

                                    <div class="mt-3 input-field--textarea">
                                        <textarea class="text-lowercase" name="comment" placeholder="Discribe your review in 225 cherecters" id="description"
                                            class="@error('comment') border-danger @enderror"></textarea>

                                        @error('comment')
                                            <span class="invalid-feedback d-block">{{ $message }}</span>
                                        @enderror
                                        <div class="row my-4 gx-3 gy-2">
                                            <div class="col-auto">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="fastShipper"
                                                        id="fastShipper">
                                                    <label class="form-check-label" for="fastShipper">
                                                        Fast Shipper
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="itemAsDescribed"
                                                        id="itemAsDescribed">
                                                    <label class="form-check-label" for="itemAsDescribed">
                                                        Item As Described
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="quickReplies"
                                                        id="quickReplies">
                                                    <label class="form-check-label" for="quickReplies">
                                                        Quick Replies
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn">
                                        <span class="ml-2">{{ __('publish review') }}</span>
                                        <svg width="24" height="24" class="ml-1" viewBox="0 0 24 24"
                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.75 12H20.25" stroke="white" stroke-width="1.6"
                                                stroke-linecap="round" stroke-linejoin="round" />
                                            <path d="M13.5 5.25L20.25 12L13.5 18.75" stroke="white" stroke-width="1.6"
                                                stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </button>
                                </form>
                            </div>
                        @endif





                    @endif

                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
@push('component_style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
    <style>
        .mb-24 {
            margin-bottom: 24px;
        }

        /*
                                    .rates-review {
                                        line-height: 30px;
                                    } */
    </style>
@endpush

@push('component_script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
    @if (isset($order->review) && $order->review->count() > 0)
        <script>
            $(document).ready(function() {
                $("#rateYo").rateYo({
                    rating: "{{ $order->review->stars }}",
                    starWidth: '30px',
                    fullStar: true,
                    mormalFill: 'yellow',
                    ratedFill: 'orange',
                    readOnly: true,
                    onSet: function(rating, rateYoInstance) {
                        $('#rating').val(rating);
                    }
                });
                // $("#rateYo").rateYo('option', 'readOnly', true);

            });
        </script>
    @else
        <script>
            $(document).ready(function() {
                $("#rateYo").rateYo({
                    starWidth: '30px',
                    fullStar: true,
                    mormalFill: 'yellow',
                    ratedFill: 'orange',

                    onSet: function(rating, rateYoInstance) {
                        $('#rating').val(rating);
                    }
                });
            });
        </script>
    @endif
    <script>
        setTimeout(() => {
            $('.jq-ry-normal-group').addClass('d-flex');
            $('.jq-ry-normal-group').addClass('gap-1');
        }, 1000);
    </script>
@endpush
