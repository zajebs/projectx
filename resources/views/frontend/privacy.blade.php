@extends('layouts.frontend.layout_one')

@section('title', __('privacy policy'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->default_background">
        {{ __('privacy_policy') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('privacy policy') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- faq section start  -->
    <section class="faq section">
        <div class="container">
            <div class="row justify-content-center" style="text-align: justify;">
                @if (currentLanguage()->code == 'lv')
                    {!! $cms->privacy_body_lt ?? __('no privacy policy found') !!}
                @else
                    {!! $cms->privacy_body ?? __('no privacy policy found') !!}
                @endif
            </div>
        </div>
    </section>
@endsection
