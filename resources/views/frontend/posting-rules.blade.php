@extends('layouts.frontend.layout_one')

@section('title')
    {{ __('posting rules') }}
@endsection

@section('css')
    <style>
        .dashboard-header {
            font-size: 30px;
            line-height: 40px;
            color: #000;
            font-weight: bold;
            font-family: sans-serif;
        }
    </style>
@endsection

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_overview_background">
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
                <a class="breedcrumb__page-link text--body-3 text-lowercase">{{ __('Posting rules') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 container-fluid">
                    <div class="dashboard-card dashboard__upgrade text-center">
                        <h2 class="dashboard-header mb-4"> {{ __('view_posting_rules') }}</h2>
                        <p class="mb-4">{{ __('explore_our_guide_for_the_best_tips_on_selling_on_2life') }}</p>
                        <div class="dashboard__upgrade-content mt-4" style="justify-content: center;">

                            @if (currentLanguage()->code == 'lv')
                                {!! $cms->rules_body_lt !!}
                            @else
                                @if ($cms->posting_rules_body)
                                    {!! $cms->posting_rules_body !!}
                                @else
                                    {{ __('no rules found') }}
                                @endif
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
