@extends('layouts.frontend.layout_one')
@section('title')
    {{ $ad->title }}
@endsection
@section('meta')
    <meta name="title" content="{{ $ad->title }}">
    <meta name="description" content="{{ $ad->description }}">
    <meta property="og:image" content="{{ $ad->image_url }}" />
    <meta property="og:site_name" content="{{ config('app.name') }}">
    <meta property="og:title" content="{{ $ad->title }}">
    <meta property="og:url" content="{{ route('frontend.addetails', $ad->slug) }}">
    <meta property="og:type" content="article">
    <meta property="og:description" content="{{ $ad->description }}">
    <meta name=twitter:card content=summary_large_image />
    <meta name=twitter:site content="{{ config('app.name') }}" />
    <meta name=twitter:creator content="{{ $ad->customer->name }}" />
    <meta name=twitter:url content="{{ route('frontend.addetails', $ad->slug) }}" />
    <meta name=twitter:title content="{{ $ad->title }}" />
    <meta name=twitter:description content="{{ $ad->description }}" />
    <meta name=twitter:image content="{{ $ad->image_url }}" />
@endsection
@section('css')
    <style>
        .btn_disabled {
            background-color: #e1e1e1;
            border: none !important;
        }

        .btn_disabled:hover {
            cursor: not-allowed;
        }

        .breedcrumb__page-link {
            opacity: 1 !important;
        }

        .soldout_section {
            padding-top: 125px;
        }

        .Simple_header__3SBfR {
            margin-bottom: 0;
            border-bottom: 1px solid #e1e1e1;
        }

        .Simple_message__2M7Fm {
            border: 1px solid #000;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            background: #fafafa;
            padding: 10px 20px;
            width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin-bottom: 25px;
        }

        @media only screen and (min-width: 481px) {
            .Simple_message__2M7Fm {
                margin-bottom: 35px;
            }
        }

        @media only screen and (min-width: 481px) {
            .Simple_container__3RL3a {
                margin: 0 auto;
            }
        }

        @media only screen and (min-width: 481px) {
            .Simple_header__3SBfR {
                padding: 0;
                margin-top: 35px;
            }
        }

        @media screen and (max-width: 930px) {
            .soldout_section {
                padding-top: 90px;
            }
        }

        @media screen and (max-width: 471px) {
            .soldout_section {
                padding-top: 115px;
            }
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
@endsection

@section('content')
    <x-frontend.breedcrumb-component :background="$cms->ads_background">
        {{ $ad->title }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3"
                    href="{{ route('frontend.adlist.search', ['category' => $ad->category->slug]) }}">{{ ucwords(strtolower(__($ad->category->name))) }}</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3"><i class="fa fa-angle-right"></i></a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3"
                    href="{{ route('frontend.adlist.search', ['subcategory' => $ad->subcategory->slug]) }}">{{ ucwords(strtolower(__($ad->subcategory->name))) }}</a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3"><i class="fa fa-angle-right"></i></a>
            </li>
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3"
                    href="{{ route('frontend.adlist.search', ['childcategory' => $ad->childcategory->slug]) }}">{{ ucwords(strtolower(__($ad->childcategory->name))) }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <section class="product-item section">
        <div class="container">
            <div class="row">
                <div class="col-xl-8">
                    <x-frontend.ad-details.ad-gallery :galleries="$ad->galleries" :thumbnail="$ad->thumbnail" :slug="$ad->slug" />
                    <div class="description mt-5 mb-4">
                        <h3 class="title mb-2">{{ __('description') }}</h3>
                        <div class="details">
                            <p>{!! $ad->description !!}</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="single_ad_sidebar">
                        <div class="single_ad_info">
                            <div class="product-item__ads-info">
                                <div class="d-flex position-relative">
                                    <div>
                                        <h2 class="text--heading-2 title align-items-center"
                                            style="line-height: 32px; position: relative;">
                                            <a class="text-dark text-decoration-underline"
                                                href="{{ route('frontend.adlist.search', ['category' => $ad->category->slug]) }}">{{ __($ad->category->name) }}</a>
                                            <span class="fw-lighter">x</span>
                                            <a class="text-dark text-decoration-underline"
                                                href="{{ route('frontend.adlist.search', ['subcategory' => $ad->subcategory->slug]) }}">{{ __($ad->subcategory->name) }}</a>
                                            <span class="fw-lighter">x</span>
                                            <a class="text-dark text-decoration-underline"
                                                href="{{ route('frontend.adlist.search', ['childcategory[]' => $ad->childcategory->slug]) }}">{{ __($ad->childcategory->name) }}</a>
                                        </h2>
                                    </div>
                                    @auth()
                                        <div class="cards__location details_cart_icon  card_heart_icon text--body-4">
                                            @if (auth()->id() !== $ad->user_id)
                                                <div class="form-check">
                                                    <input class="form-check-input" id="ad{{ $ad->id }}" type="checkbox"
                                                        value="{{ $ad->id }}" onchange="addToWishList(event)"
                                                        {{ checkWishList($ad->id) ? 'checked' : '' }}>
                                                    <label class="form-check-label" for="ad{{ $ad->id }}"></label>
                                                </div>
                                                <h6 class="favorite_count">{{ $countproduct }}</h6>
                                            @endif
                                        </div>
                                    @endauth
                                    @guest
                                        <div class="cards__location details_cart_icon  card_heart_icon text--body-4">
                                            <div class="form-check" data-bs-toggle="modal" data-bs-target="#loginModal">
                                                <input class="form-check-input" id="ad{{ $ad->id }}" type="checkbox"
                                                    value="{{ $ad->id }}" {{ checkWishList($ad->id) ? 'checked' : '' }}
                                                    disabled>
                                                <label class="form-check-label" for="ad{{ $ad->id }}"></label>
                                            </div>
                                            <h6 class="favorite_count">{{ $countproduct }}</h6>
                                        </div>
                                    @endguest
                                </div>
                            </div>
                            <div class="product_info_details">
                                @if ($ad->title)
                                    <strong>{{ $ad->title }}</strong>
                                @endif
                                @if (isset($ad->adSize->size))
                                    <p>{{ __('size') }}: {{ $ad->adSize->size }}</p>
                                @endif
                                @if (isset($ad->adColor->color))
                                    <p>{{ __('color') }}: {{ $ad->adColor->color }}</p>
                                @endif
                                @if ($ad->condition)
                                    <p>{{ __('condition') }}: {{ $ad->condition }}</p>
                                @endif
                                @if ($ad->price)
                                    @if ($ad->is_smart_price)
                                        <h4>
                                            <span class="oldPrice">
                                                {{ changeCurrency($ad->smart_price) }}
                                            </span>
                                            <del class="text-decoration-line-through" style="font-size: 18px;">
                                                {{ changeCurrency($ad->price) }}
                                            </del>

                                        </h4>
                                    @else
                                        <h4>
                                            <span class="oldPrice">
                                                {{ changeCurrency($ad->price) }}
                                            </span>
                                        </h4>
                                    @endif
                                @endif
                            </div>
                            @if ($ad->user_id != auth()->id())
                                <x-frontend.ad-details.ad-contact :ad="$ad" />
                            @endif
                            <div class="mb-4 saller_info">
                                <div class="d-flex position-relative">
                                    <div class="saller_profile">
                                        <a
                                            href="{{ route('frontend.seller.profile', ['user' => $ad->customer->username]) }}">
                                            <img class="flex-shrink-0 me-3"
                                                src="{{ getPhotoAvater($ad->customer->image) }}" alt="profile image">
                                        </a>
                                    </div>

                                    <div class="saller_article">
                                        <h3>
                                            <a
                                                href="{{ route('frontend.seller.profile', ['user' => $ad->customer->username]) }}">{{ $ad->customer->username }}</a>
                                        </h3>
                                        {{-- @for ($i = 0; $i < ceil($rating_details['average']); $i++)
                                                <i class="fa fa-star"></i>
                                            @endfor --}}
                                        @if ($ad->customer->avg_rating == 5)
                                            <span data-toggle="tooltip" data-placement="top" title="5/5 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px;color:#007B4C"></i>
                                                @endfor
                                            </span>
                                        @endif
                                        @if ($ad->customer->avg_rating == 4)
                                            <span data-toggle="tooltip" data-placement="top" title="4/5 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px; color:#009C00"></i>
                                                @endfor
                                            </span>
                                        @endif
                                        @if ($ad->customer->avg_rating == 3)
                                            <span data-toggle="tooltip" data-placement="top" title="3/5 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px; color:#8CA402"></i>
                                                @endfor
                                            </span>
                                        @endif
                                        @if ($ad->customer->avg_rating == 2)
                                            <span data-toggle="tooltip" data-placement="top" title="2/5 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px;color:#F7B217"></i>
                                                @endfor
                                            </span>
                                        @endif
                                        @if ($ad->customer->avg_rating == 1)
                                            <span data-toggle="tooltip" data-placement="top" title="1/5 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px;color:red"></i>
                                                @endfor
                                            </span>
                                        @endif
                                        @if ($ad->customer->avg_rating == 0)
                                            <span data-toggle="tooltip" data-placement="top" title="0 Feedback">
                                                @for ($i = 0; $i < 5; $i++)
                                                    <i class="fa fa-star{{ $ad->customer->avg_rating <= $i ? '-o' : '' }}"
                                                        style="font-size:16px;color:#ddd"></i>
                                                @endfor
                                            </span>
                                        @endif

                                        <p>{{ $ad->customer->total_review ?? 0 }} {{ __('reviews') }}</span>
                                        <h6>
                                            <ul>
                                                {{-- <li class="me-3">{{ $ad->customer->completeTransactions->count() }}
                                                    Transactions</li> --}}
                                                <li>
                                                    <a
                                                        href="{{ route('frontend.seller.profile', ['user' => $ad->customer->username]) }}">{{ $ad->customer->total_ads ?? 0 }}{{ __('items_for_sale') }}</a>
                                                </li>
                                            </ul>
                                        </h6>
                                        <div class="trusted_seller">
                                            <ul>
                                                @if ($ad->customer->trusted_seller)
                                                    <li>
                                                        <svg class="--trusted-seller-flair" height="17px" width="17px"
                                                            viewBox="0 0 12 16" fill="none"
                                                            xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M9.48013 15.3371V10.0794C10.6878 9.02611 11.4597 7.47333 11.4688 5.75711C11.4779 2.57889 8.87173 0 5.72985 0C2.58798 0 0 2.57889 0 5.75711C0 7.48241 0.780938 9.04426 1.99772 10.0976L2.00682 15.3371C2.00682 15.8093 2.25198 16 2.56981 16C2.82407 16 3.03291 15.8456 3.24177 15.6368L5.50284 13.3848C5.59365 13.3031 5.66629 13.2758 5.73893 13.2758C5.81157 13.2758 5.88423 13.3031 5.97502 13.3848L8.23608 15.6368C8.45402 15.8547 8.66289 16 8.91714 16C9.24404 16 9.48013 15.8093 9.48013 15.3371ZM5.73893 10.2157C3.25085 10.2066 1.32576 8.22702 1.32576 5.75711C1.32576 3.26903 3.25085 1.28944 5.73893 1.28944C8.22701 1.28944 10.143 3.26903 10.1521 5.75711C10.1612 8.22702 8.22701 10.2247 5.73893 10.2157Z"
                                                                fill="#0000FF"></path>
                                                        </svg>
                                                        <span>{{ __('trusted_seller') }}</span>
                                                    </li>
                                                @endif
                                                @if ($ad->customer->quick_responder)
                                                    <li>
                                                        <svg class="--quick-responder-flair" height="17px"
                                                            width="17px" viewBox="0 0 12 16" fill="none"
                                                            xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M4.48382 15.621L11.038 7.38113C11.7284 6.50246 11.3967 5.82104 10.518 5.82104H7.47849L8.3751 0.97037C8.54545 0.0468623 7.54126 -0.347639 6.96743 0.369639L0.377341 8.66329C-0.322013 9.533 0.00973197 10.2144 0.888411 10.2144H3.92791L3.0313 15.0651C2.86095 15.9886 3.90999 16.3293 4.48382 15.621ZM4.34035 13.9084L5.32662 9.73025C5.43421 9.29988 5.3087 9.00399 4.8335 9.00399H1.60569V8.96813L6.97639 2.11803H7.07501L6.07978 6.31417C5.97218 6.73557 6.0977 7.03145 6.57291 7.03145H9.80069V7.06733L4.43002 13.9084H4.34035Z"
                                                                fill="#0000FF"></path>
                                                        </svg>
                                                        <span>{{ __('quick_responder') }}</span>
                                                    </li>
                                                @endif
                                            </ul>
                                        </div>
                                        @auth
                                            <p>
                                                @if ((int) $ad->user_id !== (int) Auth::id())
                                                    @if ($isFoollwer)
                                                        <a class="follow_btn"
                                                            href="{{ route('frontend.seller.sellerFollow', ['user' => $ad->user_id, 'status' => 'unfollow']) }}">{{ __('unfollow') }}</a>
                                                    @else
                                                        <a class="follow_btn"
                                                            href="{{ route('frontend.seller.sellerFollow', ['user' => $ad->user_id, 'status' => 'follow']) }}">{{ __('follow') }}</a>
                                                    @endif
                                                @endif
                                            </p>
                                        @endauth
                                        @guest
                                            <a class="follow_btn" data-bs-toggle="modal" data-bs-target="#loginModal"
                                                href="#">{{ __('follow') }}</a>
                                        @endguest
                                    </div>
                                </div>
                            </div>
                            @if (isset($ad->shipping_region))
                                <div class="measurements_list mb-4">
                                    <h3 class="title mb-2">{{ __('shippings') }}</h3>
                                    <p>{{ __('shipping_options') }}</p>
                                    <div class="measurement_table mt-3">
                                        <table class="table table-resposive">
                                            @foreach ($ad->shipping_region as $shipingLocation => $price)
                                                <tr>
                                                    <td>{{ $shipingLocation }}</td>
                                                    <td>{{ changeCurrency($price) }}</td>
                                                </tr>
                                            @endforeach
                                        </table>
                                    </div>
                                </div>
                            @endif

                            @if (isset($ad->measure_scale) && isset($ad->measurements))
                                <div class="measurements_list mb-4">
                                    <h3 class="title mb-2">{{ __('measurements') }}</h3>
                                    <p>{{ __('measurement_message') }}</p>
                                    <div class="measurement_table mt-3">
                                        <table class="table table-resposive">
                                            @php
                                                if ($ad->measure_scale == 'in') {
                                                    $in = 1;
                                                    $cm = 2.54;
                                                } else {
                                                    $in = 0.393701;
                                                    $cm = 1;
                                                }
                                            @endphp

                                            @foreach (json_decode($ad->measurements) as $name => $value)

                                                <tr>
                                                    <td>
                                                        <h4>
                                                            {{ str_replace('_', ' ', $name) }}
                                                        </h4>
                                                    </td>
                                                    <td>{{ measure_scale($value, $in) }} in</td>
                                                    <td>{{ measure_scale($value, $cm) }} cm</td>
                                                </tr>
                                            @endforeach
                                        </table>
                                    </div>
                                </div>
                            @endif


                            <div class="offer_modal">
                                <div class="modal fade" id="offerSold" aria-labelledby="offerSoldLabel"
                                    aria-hidden="true" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header text-center">
                                                <h5 class="modal-title" id="offerSoldLabel">
                                                    {{ __('make an offer') }}
                                                </h5>
                                                <button class="btn-close" data-bs-dismiss="modal" type="button"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="container text-center">
                                                    <p class="text-center">{{ __('notify item for purchase') }}</p>
                                                    <h5>
                                                        {{ __('sold price') }}
                                                        @if ($ad->price)
                                                            @if ($ad->is_smart_price)
                                                                <span class="sold-price">
                                                                    {{ changeCurrency($ad->smart_price) }}
                                                                </span>
                                                            @else
                                                                <span class="sold-price">
                                                                    {{ changeCurrency($ad->price) }}
                                                                </span>
                                                            @endif
                                                        @endif
                                                    </h5>

                                                    <label for="offerPriceForSoldProduct">{{ __('your offer') }}</label>
                                                    <input id="offerPriceForSoldProduct" name="offerPriceForSoldProduct"
                                                        type="number"
                                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                                    <button class="btn btn-primary btn-sm w-100 mt-5"
                                                        id="offerPriceForSoldProductBtn" type="button"
                                                        onclick="offerPriceForSoldProduct(this)">
                                                        <span id="showData"></span> - {{ __('send offer') }}
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Bet Modal  purchese-->
                            <div class="modal fade" id="bettingpriceShiping" aria-labelledby="bettingpriceShiping"
                                aria-hidden="true" tabindex="-1">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="bettingpriceShiping">{{ __('bet') }}</h5>
                                            <button class="btn-close" data-bs-dismiss="modal" type="button"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                    <form id="my_form" action="{{ route('processPaypal') }}"
                                                        method="post">
                                                        <div class="modal-body">
                                                            @csrf
                                                            <input id="old_amount_bet" type="hidden" value="">
                                                            <input id="amount_bet" name="amount" type="hidden"
                                                                value="{{ $ad->is_smart_price ? $ad->smart_price : $ad->price }}">
                                                            <input name="ad_id" type="hidden"
                                                                value="{{ $ad->id }}">
                                                            <input name="user_id" type="hidden"
                                                                value="{{ auth()->id() }}">
                                                            <input id="unit_price_bet" name="unit_price" type="hidden"
                                                                value="{{ $ad->is_smart_price ? $ad->smart_price : $ad->price }}">
                                                            <input name="units" type="hidden" value="1">
                                                            <input id="total_price_bet" name="total_price" type="hidden"
                                                                value="{{ ($ad->is_smart_price ? $ad->smart_price : $ad->price) * 1 }}">
                                                            <input name="total_dicount" type="hidden" value="0">
                                                            <input id="grand_total_bet" name="grand_total" type="hidden"
                                                                value="{{ ($ad->is_smart_price ? $ad->smart_price : $ad->price) * 1 }}">
                                                            <input name="status" type="hidden" value="1">
                                                            <input name="created_by" type="hidden"
                                                                value="{{ $ad->customer->id }}">
                                                            <input name="updated_by" type="hidden"
                                                                value="{{ $ad->customer->id }}">
                                                            <input name="admin_commission_percent" type="hidden"
                                                                value="{{ $setting->admin_commission }}">
                                                            <input name="admin_commission" type="hidden"
                                                                value="{{ ((float) $setting->admin_commission * $ad->price) / 100 }}">
                                                            <input id="shiping_to_bet_value" name="shiping_to"
                                                                type="hidden" value="">
                                                            <input id="shiping_price_bet_value" name="shiping_price"
                                                                type="hidden" value="">
                                                            <label for="shiping_to_bet">Select your shiping
                                                                location</label>
                                                            <select class="form-control" id="shiping_to_bet">
                                                                <option value="">Select Shipping Address</option>
                                                                @if (isset($ad->shipping_region))
                                                                    @foreach ($ad->shipping_region as $shipingLocation => $price)
                                                                        <option data-id="{{ $loop->iteration }}"
                                                                            data-to="{{ $shipingLocation }}"
                                                                            data-orice="{{ $price }}"
                                                                            value="{{ $price }}">
                                                                            {{ $shipingLocation }} -
                                                                            {{ changeCurrency($price) }}
                                                                        </option>
                                                                    @endforeach
                                                                @endif
                                                            </select>

                                                            <button class="btn btn-primary btn-sm mt-3" id="betPrice_btn"
                                                                type="submit">{{ __('submit') }}</button>
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                    <div class="product_info_details">
                                                        <div class="row">

                                                            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                                                                <img class="w-100" src="{{ getPhoto($ad->thumbnail) }}"
                                                                    alt="">
                                                            </div>
                                                            <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                                @if ($ad->title)
                                                                    <strong>{{ $ad->title }}</strong>
                                                                @endif

                                                                <h4>
                                                                    {{ env('APP_CURRENCY_SYMBOL') }}
                                                                    <span class="betPriceinModal"></span>
                                                                </h4>

                                                                @if (isset($ad->adSize->size))
                                                                    <p>{{ __('size') }}: {{ $ad->adSize->size }}</p>
                                                                @endif
                                                                @if (isset($ad->adColor->color))
                                                                    <p>{{ __('color') }}: {{ $ad->adColor->color }}
                                                                    </p>
                                                                @endif
                                                                @if ($ad->condition)
                                                                    <p>{{ __('condition') }}: {{ $ad->condition }}</p>
                                                                @endif

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Report Modal -->
                            <div class="reportmodal modal fade" id="reportModal" aria-labelledby="exampleModalLabel"
                                aria-hidden="true" tabindex="-1">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">
                                                @auth
                                                    <img src="{{ getPhoto(auth()->user()->image) }}" alt="">
                                                @endauth
                                                {{ __('report listing') }}
                                            </h5>
                                            <button class="btn-close" data-bs-dismiss="modal" type="button"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="{{ route('frontend.seller.report') }}" method="post">
                                                @csrf
                                                <input name="user_id" type="hidden" value="{{ $ad->user_id }}">
                                                <div class="mb-3 text-center">
                                                    <h3>
                                                        {{ __('why are you report this listing') }}</h3>
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">{{ __('reason') }} <span
                                                            class="text-danger">*</span></label>
                                                    <select class="form-control form-select" id="reason"
                                                        name="reason" required>
                                                        <option value="" disabled="">Select</option>
                                                        <option value="trademark copyright or DMCA violation">
                                                            {{ __('trademark copyright') }}</option>
                                                        <option value="inauthentic item">{{ __('insuthentic item') }}
                                                        </option>
                                                        <option value="suspicious seller or potential scam">
                                                            {{ __('suspicious seller or potential') }}</option>
                                                        <option value="other">{{ __('other') }}</option>
                                                    </select>
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">{{ __('notes') }} <span
                                                            class="text-danger">*</span></label>
                                                    <textarea class="form-control" id="note" name="note" style="height: 70px !important;" cols="30"
                                                        rows="4" placeholder="Add a comment" required></textarea>
                                                </div>
                                                <div class="text-center mt-4">
                                                    <button class="btn btn-dark"
                                                        type="submit">{{ __('report listings') }}</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    @if (isset($relatedProducts) && $relatedProducts->count() > 0)
        <div class="section recent-post">
            <div class="container">
                <h2 class="text--heading-1 section__title">
                    {{ __('Other products from this seller') }}
                    <a class="float-end" href="{{ route('frontend.adlist') }}">{{ __('see all') }}</a>
                </h2>
                <div class="product_wrapper">
                    <div class="deals_product">
                        <div class="row  row-cols-2 row-cols-sm-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5">
                            @foreach ($relatedProducts as $deal)
                                <div class="col mb-4">
                                    <div class="cards cards--one">
                                        <a class="cards__img-wrapper"
                                            href="{{ route('frontend.addetails', $deal->slug) }}">
                                            <img class="img-fluid" src="{{ getPhoto($deal->thumbnail) }}"
                                                alt="card-img">
                                        </a>
                                        <div class="cards__info">
                                            @auth()
                                                <h6 class="cards__location card_heart_icon text--body-4">
                                                    <div class="form-check">
                                                        <input class="form-check-input" id="deal{{ $deal->id }}"
                                                            type="checkbox" value="{{ $deal->id }}"
                                                            onchange="addToWishList(event)"
                                                            {{ checkWishList($deal->id) ? 'checked' : '' }}>
                                                        <label class="form-check-label"
                                                            for="deal{{ $deal->id }}"></label>
                                                    </div>
                                                </h6>
                                            @endauth

                                            @guest()
                                                <h6 class="cards__location card_heart_icon text--body-4">
                                                    <div class="form-check" name="deal" data-bs-toggle="modal"
                                                        data-bs-target="#loginModal" type="checkbox">
                                                        <input class="form-check-input d-none" disabled>
                                                        <label class="form-check-label" for="deal"></label>
                                                    </div>
                                                </h6>
                                            @endguest
                                            <div class="cards__info-top">
                                                <h5>
                                                    <a class="text--body-3-600 cards__caption-title"
                                                        href="{{ route('frontend.addetails', $deal->slug) }}">
                                                        {{ Str::limit($deal->title, 16, $end = '...') }}
                                                    </a>
                                                </h5>
                                                <h6 style="min-height: 16px;">{{ $deal->brand->name ?? 'Nick' }}</h6>
                                                <div class="price">
                                                    @if ($deal->price)
                                                        @if ($deal->is_smart_price)
                                                            <p>
                                                                {{ changeCurrency($deal->smart_price) }}
                                                                <del
                                                                    style="font-size: 15px;">{{ changeCurrency($deal->price) }}</del>
                                                            </p>
                                                        @else
                                                            <p>{{ changeCurrency($deal->price) }}</p>
                                                        @endif
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection
@section('adlisting_style')
    <link href="{{ asset('frontend/css') }}/slick.css" rel="stylesheet" />
    <link href="{{ asset('frontend/css') }}/swiper-bundle.min.css" rel="stylesheet" />
    <link href="{{ asset('frontend/css/productslider.css') }}" rel="stylesheet" />
    <!-- >=>Mapbox<=< -->
    <link type="text/css" href="{{ asset('frontend/plugins/mapbox/mapbox-gl-geocoder.css') }}" rel="stylesheet">
    <link href="{{ asset('frontend/plugins/mapbox/mapbox-gl.css') }}" rel="stylesheet">
    <!-- >=>Mapbox<=< -->

    <style>
        .mymap {
            width: 100%;
            min-height: 400px;
            border-radius: 12px;
        }

        .p-half {
            padding: 1px;
        }

        .location-text {
            color: #191f33;
            font-weight: 600;
            padding: 22px;
            border-bottom: 1px solid #ebeef7;
            font-size: 24px;
            text-transform: capitalize;
            margin-bottom: 1px
        }
    </style>
@endsection
@section('scripts')
    @if (config('paypal.active'))
        @if (config('paypal.mode') == 'sanbox')
            <script
                src="https://www.paypal.com/sdk/js?client-id={{ config('paypal.sandbox.client_id') }}&components=buttons""></script>
        @else
            <script
                src="https://www.paypal.com/sdk/js?client-id={{ config('paypal.live.client_id') }}&components=buttons""></script>
        @endif
    @endif
    <script>
        $('#city').change(function(event) {
            var cost = event.target.value;
            changeShippingCharge(cost);
            $('.shipping_cost').html(cost);

            $('#shiping_to').val($(this).children('option:selected').data('to'));
            $('#shiping_price').val($(this).children('option:selected').data('price'));
        });


        function changeShippingCharge(value) {
            // $('#shipingCost').html("+ $" + value);
            let old_price = "{{ $ad->is_smart_price ? $ad->smart_price : $ad->price }}";
            $('#unit_price').val(parseInt(old_price) + parseInt(value));
            $('#total_price').val(parseInt(old_price) + parseInt(value));
            $('#grand_total').val(parseInt(old_price) + parseInt(value));
            $('#amount').val(parseInt(old_price) + parseInt(value));
            // alert(parseInt(old_price) + parseInt(value));
            shiping_price
        }

        $('#shiping_to_bet').change(function(event) {
            let bet_place = $('#shiping_to_bet').val();

            let old_price = $('#old_amount_bet').val();
            $('#unit_price_bet').val(parseInt(old_price) + parseInt(bet_place));
            $('#total_price_bet').val(parseInt(old_price) + parseInt(bet_place));
            $('#grand_total_bet').val(parseInt(old_price) + parseInt(bet_place));
            $('#amount_bet').val(parseInt(old_price) + parseInt(bet_place));
            $('#shiping_to_bet_value').val($(this).children('option:selected').data('to'))
            $('#shiping_price_bet_value').val($(this).children('option:selected').data('price'))
            $('.betPriceinModal').html(parseInt(old_price) + parseInt(bet_place));

        });

        function purchase() {
            let shippigTo = $('#shiping_to').val();

            if (shippigTo == '') {
                $('#city').addClass("border-danger")
            } else {
                document.getElementById('my_form').submit();
                $('#city').removeClass("border-danger")
            }
        }

        $('.phn-show').click(function(e) {
            e.preventDefault();
            $('.phn-text').addClass('d-none')
            $('.phn-no').removeClass('d-none')

        });
    </script>
    <!-- >=>Mapbox<=< -->
    <script src="{{ asset('frontend/plugins/mapbox/mapbox-gl-geocoder.min.js') }}"></script>
    <script src="{{ asset('frontend/plugins/mapbox/mapbox-gl.js') }}"></script>
    <!-- >=>Mapbox<=< -->
    <script src="{{ asset('frontend') }}/js/plugins/slick.min.js"></script>
    <script src="{{ asset('frontend') }}/js/plugins/swiper-bundle.min.js"></script>
    <script src="{{ asset('frontend') }}/js/swiperslider.config.js"></script>
    @stack('ad_scripts')
    {{-- <!-- ================ mapbox map ============== -->
    <script>
        mapboxgl.accessToken = "{{ setting('map_box_key') }}";
        const coordinates = document.getElementById('coordinates');
        var oldlat = {!! $ad->lat ? $ad->lat : setting('default_lat') !!};
        var oldlng = {!! $ad->long ? $ad->long : setting('default_long') !!};
        const map = new mapboxgl.Map({
            container: 'map-box',
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [oldlng, oldlat],
            zoom: 6
        });
        var marker = new mapboxgl.Marker({
                draggable: false
            }).setLngLat([oldlng, oldlat])
            .addTo(map);

        function onDragEnd() {
            const lngLat = marker.getLngLat();
            let lat = lngLat.lat;
            let lng = lngLat.lng;
            $('#lat').val(lat);
            $('#lng').val(lng);
            document.getElementById('form').submit();
        }

        function add_marker(event) {
            var coordinates = event.lngLat;
            marker.setLngLat(coordinates).addTo(map);
        }
    </script>
    <script>
        $('.mapboxgl-ctrl-logo').addClass('d-none');
        $('.mapboxgl-compact').addClass('d-none');
    </script>
    <!-- ================ mapbox map ============== -->
    <!-- ================ google map ============== -->
    <script>
        function initMap() {
            var token = "{{ setting('google_map_key') }}";
            var oldlat = {!! $ad->lat ? $ad->lat : setting('default_lat') !!};
            var oldlng = {!! $ad->long ? $ad->long : setting('default_long') !!};
            const map = new google.maps.Map(document.getElementById("google-map"), {
                zoom: 7,
                center: {
                    lat: oldlat,
                    lng: oldlng
                },
            });
            const image =
                "https://gisgeography.com/wp-content/uploads/2018/01/map-marker-3-116x200.png";
            const beachMarker = new google.maps.Marker({
                draggable: false,
                position: {
                    lat: oldlat,
                    lng: oldlng
                },
                map,
                // icon: image
            });
        }
        window.initMap = initMap;
    </script>
    <script>
        @php
            $link1 = 'https://maps.googleapis.com/maps/api/js?key=';
            $link2 = setting('google_map_key');
            $Link3 = '&callback=initMap&libraries=places,geometry';
            $scr = $link1 . $link2 . $Link3;
        @endphp;
    </script>
    <script src="{{ $scr }}" async defer></script> --}}

    <script>
        $('#betPRice_btn').click(function() {

            let betPrice = $('#betPRice').val();
            let minPrice = $('#min_price').val();
            if (betPrice < minPrice) {

                toastr.error("You can't bet under " + minPrice);
                $('#exampleModal').modal('hide');

            } else if (betPrice > parseInt("{{ $ad->price }}")) {
                let shippingCharge = $('#city').val();
                toastr.error("You can't bet over " + minPrice);
                $('#exampleModal').modal('hide');

            } else {

                $('#exampleModal').modal('hide');
                $('#old_amount_bet').val(parseInt(betPrice));
                $('#exampleModal').modal('hide');
                $('#bettingpriceShiping').modal('show');
                $('.betPriceinModal').html(parseInt(betPrice));

            }
        })

        $(document).ready(function() {
            // alert(sold)
            $('#sendOfferBtn').click(function(e) {
                var sold = $('.sold-price').text();
                $('#offerPriceForSoldProduct').val(sold);
                $("#showData").text('$' + sold);
            });
        });

        function offerPriceForSoldProduct(btn) {

            let offerPriceForSoldProduct = $('#offerPriceForSoldProduct').val();

            if (offerPriceForSoldProduct < "{{ $ad->is_smart_price ? $ad->smart_price : $ad->price }}") {

                toastr.error("You can't send offer less then sold price");

            } else {

                $('#offerPriceForSoldProductBtn').html(
                    '<div class="d-flex justify-content-center"><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>'
                );

                axios.post("{{ route('frontend.sendOfferPriceForSoldProduct') }}", {
                        price: offerPriceForSoldProduct,
                        owner_id: "{{ $ad->user_id }}",
                        ad_id: "{{ $ad->id }}"
                    })
                    .then(function(response) {

                        $('#offerSold').modal('hide');
                        $('#offerPriceForSoldProductBtn').html('Send Offer');

                        toastr.success("Request send successfully");
                        $("#sendOfferBtn").html("Requested!");
                        $("#sendOfferBtn").prop('disabled', true).removeClass('bg-dark text-white').addClass(
                            ['btn_disabled', 'text-secondary']);
                        $('#offerPriceForSoldProduct').val('');

                    })
                    .catch(function(error) {
                        console.log(error);
                    });
            }
        }
    </script>
    <script>
        setTimeout(function() { //then give
            $("#offerPriceForSoldProduct").keyup(function() {
                var value = $(this).val();
                $("#showData").text("$" + value);
            }).keyup();
        }, 1000);
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
                html: true
            });
        });
    </script>

    <!-- ================ google map ============== -->
@endsection
