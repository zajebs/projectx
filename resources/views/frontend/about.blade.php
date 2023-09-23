@extends('layouts.frontend.layout_one')

@section('title', __('about'))

@section('meta')
    @php
        $data = metaData('about');
    @endphp

    <meta name="title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif">
    <meta name="description" content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif"">

    <meta property="og:image" content="{{ $data->image_url }}" />
    <meta property="og:site_name" content="{{ config('app.name') }}">
    <meta property="og:title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif">
    <meta property="og:url" content="{{ route('frontend.about') }}">
    <meta property="og:type" content="article">
    <meta property="og:description" content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif">

    <meta name=twitter:card content={{ $data->image_url }} />
    <meta name=twitter:site content="{{ config('app.name') }}" />
    <meta name=twitter:url content="{{ route('frontend.about') }}" />
    <meta name=twitter:title content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }}  @endif" />
    <meta name=twitter:description content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }}  @endif" />
    <meta name=twitter:image content="{{ $data->image_url }}" />
@endsection

@section('frontend_style')
    <style>
        #section {
            padding-top: 30px !important;
            padding-bottom: 30px !important;
        }

        .breedcrumb {
            padding: 155px 0px 13px !important;
        }
    </style>
@endsection

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->about_background">
        {{ __('about') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a href="{{ route('frontend.about') }}" class="breedcrumb__page-link text--body-3">
                    {{ __('about_us') }}
                </a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    {{-- about info  --}}
    <div class="container">
        <section id="section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-7 order-xl-0 order-2">
                        <h2 class="about-us__title text--heading-1">{{ __('know_more_about_2life') }}</h2>
                        <p class="text--body-3 about-us__brief" style="text-align: justify;">
                            @if (currentLanguage()->code == 'lv')
                                {!! $cms->about_body_lt ?? __('no about us found') !!}
                            @else
                                {!! $cms->about_body ?? __('no about us found') !!}
                            @endif
                        </p>
                    </div>
                    <div class="col-xl-5 order-xl-0 order-1">
                        <div class="about-us__img-wrapper">
                            <img src="{{ $cms->about_background }}" alt="about" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
