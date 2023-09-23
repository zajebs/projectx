@extends('layouts.frontend.layout_one')

@section('title', __('Data Deletion'))

@section('frontend_style')
    <style>
        #section {
            padding-top: 10px !important;
            padding-bottom: 30px !important;
        }
    </style>
@endsection

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->about_background">
        {{ __('about') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a href="{{ route('frontend.data.deletion') }}"
                    class="breedcrumb__page-link text--body-3">{{ __('Data Deletion') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    {{-- deletion info  --}}
    <div class="container">
        <section id="section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-12 order-xl-0 order-2">
                        <p class="text--body-3 about-us__brief text-justify">
                            @if (currentLanguage()->code == 'lv')
                                {!! $cms->data_deletion_lt !!}
                            @else
                                {!! $cms->data_deletion !!}
                            @endif
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('adlisting_style')

@endsection

@section('scripts')

@endsection
