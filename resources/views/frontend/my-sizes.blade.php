@extends('layouts.frontend.layout_one')
@section('title', __('account_setting'))
@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_account_setting_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('settings') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->
    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="col-lg-2 d-none d-xl-block">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <div class="dashboard-setting">
                        <!-- Account Information -->
                        <div class="dashboard-setting__box account-information">
                            <h2 class="text--body-2-600">
                                {{ __('my sizes') }}
                                <p>{{__('use_the_my_sizes_filter_to_personalize_your_search_results')}}</p>
                        </div>
                        <form action="#" method="post">
                            @if (isset($my_category) && count($my_category) > 0)
                                @foreach ($my_category as $kc => $cat)
                                    @if (isset($my_scategory) && count($my_scategory) > 0)
                                        @foreach ($my_scategory as $ksc => $scat)
                                            @if ($scat->category_id == $cat->category_id)
                                                <div class="size_list mb-5">
                                                    <h3>{{ $cat->category->name }} > {{ $scat->subcategory->name }} </h3>
                                                    <div class="size_checkbox">
                                                        @if (isset($my_size) && count($my_size) > 0)
                                                            @foreach ($my_size as $ks => $siz)
                                                                @if ($siz->category_id == $scat->category_id && $siz->subcategory_id == $scat->subcategory_id)
                                                                    @isset($siz->adSize->size)
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" name="size1"
                                                                                type="checkbox" value="" checked>
                                                                            <label class="form-check-label" for="size1">
                                                                                {{ $siz->adSize->size }}
                                                                            </label>
                                                                        </div>
                                                                    @endisset
                                                                @endif
                                                            @endforeach
                                                        @endif
                                                    </div>
                                                </div>
                                            @endif
                                        @endforeach
                                    @endif
                                @endforeach
                            @endif
                            {{-- <button type="submit" class="size_btn btn btn-dark">Save My Sizes</button> --}}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
