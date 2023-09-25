@extends('layouts.frontend.layout_one')

@section('title', __('ads'))

@section('meta')
    @php
        $data = metaData('ads');
    @endphp

    <meta name="title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif">
    <meta name="description"
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif">

    <meta property="og:image" content="{{ $data->image_url }}" />
    <meta property="og:site_name" content="{{ config('app.name') }}">
    <meta property="og:title"
        content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif">
    <meta property="og:url" content="{{ route('frontend.adlist') }}">
    <meta property="og:type" content="article">
    <meta property="og:description"
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif">

    <meta name=twitter:card content={{ $data->image_url }} />
    <meta name=twitter:site content="{{ config('app.name') }}" />
    <meta name=twitter:url content="{{ route('frontend.adlist') }}" />
    <meta name=twitter:title
        content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif" />
    <meta name=twitter:description
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif" />
    <meta name=twitter:image content="{{ $data->image_url }}" />
@endsection

@section('content')
    <x-frontend.breedcrumb-component :background="$cms->ads_background">
        {{ __('ad list') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('ad list') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <section class="section ad-list">
        <div class="container">
            <div class="row">
                <div class="search_list mb-4 pb-2">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <p>{{ isset($adlistings) ? $adlistings->count() : 0 }} {{ __('listings') }}</p>
                        </div>
                        <div class="col-6">
                            <select name="sort" id="sort" class="form-control form-select">
                                <option {{ request()->sortinput == 'default' ? 'selected' : '' }} value="default">
                                    {{ __('sort_by_default') }}</option>
                                <option {{ request()->sortinput == 'new' ? 'selected' : '' }} value="new">
                                    {{ __('sort_by_new') }}</option>
                                <option {{ request()->sortinput == 'popular' ? 'selected' : '' }} value="popular">
                                    {{ __('sort_by_popular') }}</option>
                                <option {{ request()->sortinput == 'trending' ? 'selected' : '' }} value="trending">
                                    {{ __('sort_by_trending') }}</option>
                                <option {{ request()->sortinput == 'lowPrice' ? 'selected' : '' }} value="lowPrice">
                                    {{ __('sort_by_low_price') }}</option>
                                <option {{ request()->sortinput == 'highPrice' ? 'selected' : '' }} value="highPrice">
                                    {{ __('sort_by_high_price') }}</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3">
                    <div class="list-sidebar position-sticky" style="top:5rem">
                        <form method="GET" action="{{ route('frontend.adlist.search') }}" id="adFilterForm">
                            <div class="accordion" id="accordionPanelsStayOpenExample">
                                @php
                                    $session_cat = explode(',', request('category'));
                                    $subcat_slug = explode(',', request('subcat'));
                                @endphp
                                <input type="hidden" class="session_cat" value="{{ $session_cat[0] }}">
                                <input type="hidden" class="session_subcat" value="{{ $subcat_slug[0] }}">

                                <input type="hidden" name="sortinput" id="sortinput"
                                    value="{{ request()->sortinput ?? 0 }}">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                            aria-controls="panelsStayOpen-collapseOne">
                                            {{ __('category') }}
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse"
                                        aria-labelledby="panelsStayOpen-headingOne">
                                        <div class="accordion-body">
                                            @foreach ($categories as $category)
                                                <div class="cateogry mb-1">
                                                    <div class="mb-3 title">
                                                        <h4>{{ __($category->name) }}</h4>
                                                    </div>
                                                    @if ($category->subcategories->count() > 0)
                                                        <div class="subcategory_list">
                                                            @foreach ($category->subcategories as $subcategories)
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header"
                                                                        id="{{ $subcategories->id }}">
                                                                        <button class="accordion-button collapsed"
                                                                            type="button" data-bs-toggle="collapse"
                                                                            data-bs-target="#{{ $subcategories->slug . $subcategories->id }}"
                                                                            aria-expanded="false"
                                                                            aria-controls="{{ $subcategories->slug }}">
                                                                            {{ __($subcategories->name) }}
                                                                            ({{ $subcategories->available_product->count() }})
                                                                        </button>
                                                                    </h2>
                                                                    <div id="{{ $subcategories->slug . $subcategories->id }}"
                                                                        class="accordion-collapse collapse {{ isActiveSubCategorySidebar($subcategories, $category->slug) ? 'show' : '' }}"
                                                                        aria-labelledby="{{ $subcategories->id }}">
                                                                        <div class="accordion-body">
                                                                            <div class="checkbox_list">
                                                                                @if ($subcategories->childCategory->count() > 0)
                                                                                    @foreach ($subcategories->childCategory as $childCategory)
                                                                                        <div class="form-check">
                                                                                            <input
                                                                                                class="form-check-input child_cat_chnge {{ $category->slug }}  {{ $subcategories->slug }}"
                                                                                                {{ isActiveChildCategorySidebar($childCategory->slug, $category->slug) ? 'checked' : '' }}
                                                                                                type="checkbox"
                                                                                                id="{{ $childCategory->slug . $childCategory->id }}"
                                                                                                data-cat_slug="{{ $category->slug }}"
                                                                                                data-subcat_slug="{{ $subcategories->slug }}"
                                                                                                name="childcategory[]"
                                                                                                value="{{ $childCategory->slug }}">
                                                                                            <label class="form-check-label"
                                                                                                for="{{ $childCategory->slug . $childCategory->id }}">
                                                                                                {{ __($childCategory->name) }}
                                                                                                <span>{{ $childCategory->available_product->count() }}</span>
                                                                                            </label>
                                                                                        </div>
                                                                                    @endforeach
                                                                                @endif
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    @endif
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>


                                @if(!empty($size_subcat) && count($size_subcat) > 0)
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                            {{ __('size') }}
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseTwo"
                                        class="accordion-collapse collapse @if (isset(request()->size)) show @endif"
                                        aria-labelledby="panelsStayOpen-headingTwo">
                                        <div class="accordion-body">
                                            <div class="checkbox_list">
                                            
                                                @foreach ($size_subcat as $size)
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="{{ $size->id }}" name="size[]" id="{{ $size->size . $size->id }}" {{ isActiveSize($size->id) ? 'checked' : '' }} onchange="changeFilter()">
                                                        <label class="form-check-label" for="{{ $size->size . $size->id }}">
                                                            {{ $size->size }}
                                                        </label>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @else
                                @endif


                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                            {{ __('price') }}
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseThree"
                                        class="accordion-collapse collapse @if (isset(request()->minPrice) || isset(request()->maxPrice)) show @endif"
                                        aria-labelledby="panelsStayOpen-headingThree">
                                        <div class="accordion-body">
                                            <div class="price_filter">
                                                <div class="row g-4">
                                                    <div class="col-6">
                                                        <div class="input-group">
                                                            <label class="input-group-text">€</label>
                                                            <input type="number" name="minPrice" class="form-control"
                                                                onfocusout="changeFilter()" title="Min Price"
                                                                min="0" max="200000" placeholder="Min"
                                                                value="{{ request()->minPrice }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="input-group">
                                                            <label class="input-group-text">€</label>
                                                            <input type="number" name="maxPrice" class="form-control"
                                                                onfocusout="changeFilter()" title="Max Price"
                                                                min="1" max="200000" placeholder="Max"
                                                                value="{{ request()->maxPrice }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
                                            {{ __('condition') }}
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseFour"
                                        class="accordion-collapse collapse @isset(request()->conditions) show @endisset"
                                        aria-labelledby="panelsStayOpen-headingFour">
                                        <div class="accordion-body">
                                            <div class="checkbox_list">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                        {{ activeConditions('new') ? 'checked' : '' }}
                                                        onchange="changeFilter()" value="new" name="conditions[]"
                                                        id="conditions">
                                                    <label class="form-check-label" for="conditions">
                                                        {{ __('new_never_worn') }}
                                                        <span>{{ countByCondition('new') }}</span>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                        {{ activeConditions('Gently Used') ? 'checked' : '' }}
                                                        onchange="changeFilter()" value="Gently Used" name="conditions[]"
                                                        id="conditions2">
                                                    <label class="form-check-label" for="conditions2">
                                                        {{ __('gently_used') }}
                                                        <span>{{ countByCondition('Gently Used') }}</span>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                        {{ activeConditions('Used') ? 'checked' : '' }}
                                                        onchange="changeFilter()" value="Used" name="conditions[]"
                                                        id="conditions3">
                                                    <label class="form-check-label" for="conditions3">
                                                        {{ __('used') }} <span>{{ countByCondition('Used') }}</span>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                        {{ activeConditions('Worn') ? 'checked' : '' }}
                                                        onchange="changeFilter()" value="Worn" name="conditions[]"
                                                        id="conditions4">
                                                    <label class="form-check-label" for="conditions4">
                                                        {{ __('worn_used') }}
                                                        <span>{{ countByCondition('Worn') }}</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                                            {{ __('filter_by_keyword') }}
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseFive"
                                        class="accordion-collapse collapse @isset(request()->keyword) show @endisset"
                                        aria-labelledby="panelsStayOpen-headingFive">
                                        <div class="accordion-body">
                                            <div class="search_filter">
                                                <div class="input-group">
                                                    <input type="text" name="keyword" id="search"
                                                    class="form-control" placeholder="{{ __('filter_by_keyword') }}"
                                                    onfocusout="changeFilter()" value="{{ request()->keyword }}">
                                                    <label class="input-group-text"><i class="fa fa-search"></i></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @isset($shipingLocations)
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="panelsStayOpen-headingSix">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix"
                                                aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
                                                {{ __('location') }}
                                            </button>
                                        </h2>
                                        <div id="panelsStayOpen-collapseSix"
                                            class="accordion-collapse collapse @isset(request()->country) show @endisset"
                                            aria-labelledby="panelsStayOpen-headingSix">
                                            <div class="accordion-body">
                                                <div class="checkbox_list">
                                                    @foreach ($shipingLocations as $shipingLocation)
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" name="country[]"
                                                                value="{{ $shipingLocation->id }}" onchange="changeFilter()"
                                                                {{ activeCountry($shipingLocation->id) ? 'checked' : '' }}
                                                                id="country{{ $shipingLocation->id }}">
                                                            <label class="form-check-label"
                                                                for="country{{ $shipingLocation->id }}">
                                                                {{ __($shipingLocation->locations) }}
                                                                <span>{{ $shipingLocation->available_product->count() }}</span>
                                                            </label>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endisset
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-9 mt-5 mt-lg-0">
                    <div class="ad-list__content">
                        <div class="mb-3 title">
                            <h3>{{ __('available_listings') }}</h3>
                        </div>
                        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-2">
                            @forelse ($adlistings as $ad)
                                <x-frontend.single-ad :ad="$ad" :adfields="$ad->productCustomFields" className="" />
                            @empty
                                <x-not-found2 message="{{ __('no ads found') }}" />
                            @endforelse
                        </div>
                    </div>
                    <div class="page-navigation">
                        {{ $adlistings->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('adlisting_style')
    <link rel="stylesheet" href="{{ asset('frontend/css') }}/select2.min.css" />
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/nouislider.min.css">
    <link rel="stylesheet" href="{{ asset('frontend/css') }}/select2-bootstrap-5-theme.css" />
    <style>
        @media (max-width: 991px) {
            .breedcrumb {
                padding: 100px 0 0px !important;
            }
        }

        .breedcrumb {
            padding: 162px 0px 13px !important;
        }

        @media (max-width: 460px) {
            .ad-list .list-sidebar {
                width: 100% !important;
            }
        }

        .list-sidebar .accordion-button {
            padding: 6px 9px 4px 0px !important;
        }
    </style>
@endsection

@section('scripts')
    <script src="{{ asset('frontend') }}/js/plugins/select2/js/select2.min.js"></script>
    <script src="{{ asset('frontend') }}/js/plugins/bvselect.js"></script>
    <script src="{{ asset('frontend') }}/js/plugins/nouislider.min.js"></script>
    <script src="{{ asset('frontend') }}/js/plugins/wNumb.min.js"></script>
    <script>
        $('.child_cat_chnge').change(function(e) {
            e.preventDefault();
            var cat = null;
            var scat = null;
            var childCat;
            if ($(this).is(':checked')) {
                cat = $(this).data('cat_slug');
                childCat = $(this).val();
            }
            if ($(this).is(':checked')) {
                scat = $(this).data('subcat_slug');
            }
            if (cat != null && scat != null) {
                $("input").not('.' + cat).prop('checked', false);
                $("input").not('.' + scat).prop('checked', false);
                $('#adFilterForm').attr('action', "{{ url('/ads') }}/" + cat + '/' + scat);
            } else {
                $('#adFilterForm').attr('action', '{{ route('frontend.adlist.search') }}');
            }
            console.log(cat, scat);
            $('#adFilterForm').submit();

        });

        function changeFilter() {
            var cat = $('.session_cat').val();
            var scat = $('.session_subcat').val();
            console.log(cat, scat);
            if (cat != null && scat != null) {
                $('#adFilterForm').attr('action', "{{ url('/ads') }}/" + cat + '/' + scat);
            } else {
                $('#adFilterForm').attr('action', '{{ route('frontend.adlist.search') }}');
            }

            $('#adFilterForm').submit();
        }

        function setDefaultPriceRangeValue() {
            const slider = document.getElementById('priceRangeSlider')
            slider.noUiSlider.set([{{ request('price_min') }}, {{ request('price_max') }}]);
        }

        function customformFilter(field, value, type) {

            $('#adFilterForm').submit()
        }

        $('#sort').change(function(e) {
            let value = e.target.value;
            $('#sortinput').val(value);
            $('#adFilterForm').submit()

        })
    </script>
@endsection
