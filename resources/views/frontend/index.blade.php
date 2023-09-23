@extends('layouts.frontend.layout_one')

@section('title', __('home'))

@section('frontend_style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    @livewireStyles
@endsection

@section('meta')
    @php
        $data = metaData('home');
    @endphp
    <meta name="title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif">
    <meta name="description" content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif">
    <meta property="og:image" content="{{ $data->image_url }}" />
    <meta property="og:site_name" content="{{ config('app.name') }}">
    <meta property="og:title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif">
    <meta property="og:url" content="{{ route('frontend.index') }}">
    <meta property="og:type" content="article">
    <meta property="og:description" content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif">
    <meta name=twitter:card content={{ $data->image_url }} />
    <meta name=twitter:site content="{{ config('app.name') }}" />
    <meta name=twitter:url content="{{ route('frontend.index') }}" />
    <meta name=twitter:title content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif" />
    <meta name=twitter:description content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif" />
    <meta name=twitter:image content="{{ $data->image_url }}" />
@endsection

@section('content')
    <!-- slider -->
    <div class="slide_banner">
        <div class="container">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    @foreach ($sliders as $slider)
                        <div class="carousel-item {{ $loop->index == 0 ? 'active' : '' }}">
                            <div class="slider_carousel"
                                style="background-image: url('{{ getPhotoSlider($slider->path) }}');">
                                <div class="slider_content text-center align-items-center">
                                    <h3 class="animate__animated animate__fadeInUp animate__faster">
                                        {{ __($slider->content_title) }}
                                    </h3>
                                    <h5 style="font-weight: 500; padding-bottom: 35px; color: #fff;">
                                        {{ __($slider->content_body) }}
                                    </h5>
                                    <a href="{{ route('frontend.adlist') }}" class="animate__animated animate__fadeInUp animate__faster btn btn-black me-3">
                                        {{ __('adssee') }}
                                    </a>
                                    @if (auth('user')->check())
                                        <a href="{{ route('frontend.post') }}"
                                            class="animate__animated animate__fadeInUp animate__faster btn btn-light">
                                            {{ __('sellto') }}
                                        </a>
                                    @else
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#loginModal"
                                            class="animate__animated animate__fadeInUp animate__faster btn btn-light">
                                            {{ __('sellto') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- Deals product -->
    <div class="section recent-post">
        <div class="container">
            <h2 class="text--heading-1 section__title">
                {{ __('latest_product_title') }}
                <a href="{{ route('frontend.adlist') }}" class="float-end">{{ __('see_all') }}</a>
            </h2>
            <div class="product_wrapper">
                <div class="deals_product">
                    <div class="row  row-cols-2 row-cols-sm-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5">
                        @foreach ($latestAds as $deal)
                            <div class="col mb-4">
                                <div class="cards cards--one">
                                    <a href="{{ route('frontend.addetails', $deal->slug) }}" class="cards__img-wrapper">
                                        <img src="{{ getPhoto($deal->thumbnail) }}" alt="card-img" class="img-fluid">
                                    </a>
                                    <div class="cards__info">
                                        @auth()
                                            <h6 class="cards__location card_heart_icon text--body-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" onchange="addToWishList(event)"
                                                        {{ checkWishList($deal->id) ? 'checked' : '' }} type="checkbox"
                                                        value="{{ $deal->id }}" id="deal{{ $deal->id }}">
                                                    <label class="form-check-label" for="deal{{ $deal->id }}"></label>
                                                </div>
                                            </h6>
                                        @endauth

                                        @guest()
                                            <h6 class="cards__location card_heart_icon text--body-4">
                                                <div class="form-check" type="checkbox" data-bs-toggle="modal"
                                                    data-bs-target="#loginModal" name="deal">
                                                    <input class="form-check-input d-none" disabled>
                                                    <label class="form-check-label" for="deal"></label>
                                                </div>
                                            </h6>
                                        @endguest
                                        <div class="cards__info-top">
                                            <h5>
                                                <a href="{{ route('frontend.addetails', $deal->slug) }}"
                                                    class="text--body-3-600 cards__caption-title">
                                                    {{ Str::limit($deal->title, 20, $end = '...') }}
                                                </a>
                                            </h5>
                                            <h6 style="min-height: 16px;">{{ $deal->brand->name ?? 'Nick' }}</h6>
                                            <div class="price">
                                                @if ($deal->price)
                                                    @if ($deal->is_smart_price)
                                                        <h4>
                                                            <span
                                                                class="oldPrice">{{ changeCurrency($deal->smart_price) }}</span>
                                                            <span class="text-decoration-line-through"
                                                                style="font-size: 18px;">
                                                                {{ changeCurrency($deal->price) }}
                                                            </span>
                                                        </h4>
                                                    @else
                                                        <h4>
                                                            <span
                                                                class="oldPrice">{{ changeCurrency($deal->price) }}</span>
                                                        </h4>
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
@endsection
