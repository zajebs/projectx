@extends('layouts.frontend.layout_one')

@section('title', __('terms condition'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->terms_background">
        {{ __('terms_condition') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('terms condition') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- faq section start  -->
    <section class="faq section">
        <div class="container">
            <div class="row justify-content-center" style="text-align: justify;">
                @if (currentLanguage()->code == 'lv')
                    {!! $cms->terms_body_lt ?? __('no terms conditions found') !!}
                @else
                    {!! $cms->terms_body ?? __('no terms conditions found') !!}
                @endif
            </div>
        </div>
    </section>
@endsection
