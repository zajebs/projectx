@extends('frontend.postad.index')

@section('title', __('edit ad') . '-' . $ad->title)

@section('card-header-title', __('editad') . '-' . $ad->title)

@section('post-ad-content')
    <!-- Step 01 -->
    <div class="tab-pane fade show active" id="pills-basic" role="tabpanel" aria-labelledby="pills-basic-tab">
        <div class="dashboard-post__information step-information">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form id="adpost" action="{{ route('frontend.post.update', $ad->slug) }}" method="POST"
                enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <input type="hidden" name="old_measurements" value="{{ $ad->measurements }}" id="measurements" />
                <input type="hidden" name="old_measurement_type" value="{{ $ad->measure_scale }}"
                    id="old_measurement_type" />
                <div class="dashboard-post__information-form mt-5">
                    <input type="hidden" name="category_id" value="{{ $ad->category_id }}">
                    <div class="input-field__group">
                        <div class="input-select">
                            <label for="`">{{ __('category') }} <span class="text-danger">*</span></label>
                            <select name="subcategory_id" id="subcategory_id"
                                class="form-control select-bg @error('category_id') border-danger @enderror">
                                <option value="" hidden>{{ __('department_category') }}</option>
                                @foreach ($categories as $categorie)
                                    <optgroup label="{{ __($categorie->name) }}">
                                        @if ($categorie->subcategories->count() > 0)
                                            @foreach ($categorie->subcategories as $subcategory)
                                                <option value="{{ $subcategory->id }}"
                                                    data-measurement="{{ $subcategory->mesurement_point }}"
                                                    {{ $subcategory->id == $ad->subcategory_id ? 'selected' : '' }}>
                                                    {{ __($subcategory->name) }}
                                                </option>
                                            @endforeach
                                        @endif
                                    </optgroup>
                                @endforeach
                            </select>
                        </div>
                        <div class="input-select">
                            <label for="">{{ __('subcategory') }}<span class="text-danger">*</span></label>
                            <select name="child_category_id" id="select_child_category"
                                class="form-control select-bg @error('select_child_category') border-danger @enderror">
                                <option value="" selected>
                                    {{ __('Sub-category (Please Select Category First)') }}
                                </option>
                                @foreach ($child_categories as $child_category)
                                    <option value="{{ $child_category->id }}"
                                        {{ $child_category->id == $ad->child_category_id ? 'selected' : '' }}>
                                        {{ $child_category->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row">


                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('ad_name') }} <span class="text-danger">*</span></h3>
                            <div class="input-field">
                                <input value="{{ $ad->title }}" name="title" type="text"
                                    placeholder="{{ __('ad_name') }}" id="adname"
                                    class="@error('title') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('size') }} <span class="text-danger">*</span></h3>
                            <div class="input-select">
                                <select name="size" id="size"
                                    class="form-control select-bg @error('size') border-danger @enderror">
                                    <option value="">{{ __('select_size') }}</option>
                                    @foreach ($sizes as $size)
                                        <option {{ $size->id == $ad->size_id ? 'selected' : '' }}
                                            value="{{ $size->id }}">
                                            {{ $size->size }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('color') }} <span class="text-danger">*</span></h3>
                            <div class="input-field mb-4">
                                {{-- <x-forms.label name="color" for="color" required="true" /> --}}
                                <select name="color" id="color">
                                    <option value="">{{__('select_color')}}</option>
                                    @foreach ($colors as $color)
                                        <option value="{{ $color->id }}"
                                            {{ $ad && $ad->color == $color->id ? 'selected' : '' }}>
                                            {{ __($color->color) }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('condition') }} <span class="text-danger">*</span></h3>
                            <div class="input-select mb-4">
                                <select name="condition" id="condition"
                                    class="form-control select-bg @error('condition') border-danger @enderror">
                                    <option value="" class="d-none">{{ __('Condition') }}</option>
                                    <option {{ $ad->condition == 'New' ? 'selected' : '' }} value="New">
                                        {{ __('new_never_worn') }}
                                    </option>
                                    <option {{ $ad->condition == 'Gently Used' ? 'selected' : '' }} value="Gently Used">
                                        {{ __('gently_used') }}
                                    </option>
                                    <option {{ $ad->condition == 'Used' ? 'selected' : '' }} value="Used">
                                        {{ __('used') }}
                                    </option>
                                    <option {{ $ad->condition == 'Worn' ? 'selected' : '' }} value="Worn">
                                        {{ __('very_worn') }}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <h3 class="label-header">{{ __('ad_description') }} <span class="text-danger">*</span></h3>
                            <div class="input-field--textarea mb-4">
                                <textarea name="description" placeholder="{{ __('whats_your_thought') }}..." id="description"
                                    class="@error('description') border-danger @enderror">{{ old('description') ?? $ad->description }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-12 mt-3 measurement_section" style="display: none">
                            <label>{{ __('measurements') }}</label>
                            <p class="mb-3">{{ __('add_measurements') }}</p>
                            <div class="measurement_chest mb-5">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                    <button class="nav-link active cm" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="false">{{ __('cm') }}</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link in" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="true">{{ __('in') }}</button>
                                    </li>
                                </ul>
                                <input type="hidden" name="measurement_type" value="in" class="measurement_type">
                                <div class="tab-content mt-3" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                        aria-labelledby="home-tab">
                                        <div class="row g-0 measurement_points">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- <div class="col-md-12 mt-3">
                            <h3 class="label-header">{{ __('tags') }}</h3>
                            <div id="tags">
                                <div class="input-field">
                                    <input type="text" name="tags" class="form-control tags" placeholder="{{__('add_tag')}}" value="@if($ad->tags){{ json_encode($ad->tags) }}@endif" />

                                </div>
                            </div>
                        </div> --}}

                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('price') }} <span class="text-danger">*</span></h3>
                            <div class="input-group">
                                <span class="input-group-text">{{ onlyCurrencySymbol() }} </span>
                                <input name="price" type="number" min="1" placeholder="{{ __('price') }}"
                                    id="price" value="{{ $ad->price }}"
                                    class="form-control @error('price') border-danger @enderror" />
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <div class="d-inline-flex justify-content-between smartPrice align-items-center">
                                <h3 class="label-header-sm">{{ __('discount_price') }}</h3>
                                <div class="form-check form-switch pb-2">
                                    <input class="form-check-input form-check-lg m-0" type="checkbox"
                                        id="smartPriceCheck" name="smartPriceCheck"
                                        {{ $ad->is_smart_price ? 'checked' : '' }}>
                                </div>
                            </div>
                            <div class="input-field mb-4" id="smartPriceSection">
                                <p>{{ __('floor_price') }}</p>
                                <div class="input-group">
                                    <span class="input-group-text">( {{ onlyCurrencySymbol() }} )</span>
                                    <input name="smartPrice" type="number" min="1"
                                        placeholder="{{ __('smartPrice') }}" id="smartPrice"
                                        class="form-control @error('smartPrice') border-danger @enderror"
                                        value="{{ $ad->smart_price ?? '' }}" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('brand') }}</h3>
                            <div class="input-field__group">
                                <div class="input-select">
                                    <select name="brand_id" id="brandd"
                                        class="form-control select-bg @error('brand_id') border-danger @enderror">
                                        <option value="">{{ __('select_brand') }}</option>
                                        @foreach ($brands as $brand)
                                            <option {{ $brand->id == $ad->brand_id ? 'selected' : '' }}
                                                value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="row col-12" style="padding-right: 0px">
                            <div class="col-sm-6 add-title">
                                <h3 class="label-header">{{ __('Shipping') }} <span class="text-danger">*</span></h3>
                            </div>
                            <div class="col-sm-6" style="padding: 0px">
                                {{-- <a target="_blank" href="{{ route('frontend.post.rules') }}" class="float-sm-end tips_guide">
                                    {{ __('shipping tips') }}
                                    <i class="fa fa-arrow-right" style="font-size: 12px"></i>
                                </a> --}}
                            </div>
                        </div>
                        <h3 class="label-header-sm mt-4" style="margin-bottom: 10px">{{ __('shipping_from') }}</h3>
                        <p>{{ __('shipping_options_vary_depending_on_the_address') }}</p>
                        <div class="col-12 addressSection">
                            <!-- Button trigger modal -->
                            <button type="button" class="address_btn" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                                @if (isset($ad->address))
                                    <p class="user_select_address text-left">
                                        <strong class="get_address">{{ $ad->address }}</strong><br />
                                        <strong class="get_apt">{{ $ad->apartment }}</strong><br />
                                        <strong class="get_city">{{ $ad->city }}</strong><br />
                                        <strong class="get_state">{{ $ad->state }}</strong><br />
                                        <span class="get_postcode">{{ $ad->postcode }}</span>
                                        <span class="arrow_right"><i class="fa fa-angle-right"></i></span>
                                    </p>
                                @else
                                    <span class="select_title  text-left">{{ __('select address') }}</span>
                                @endif
                            </button>
                        </div>
                                             <h3 class="label-header-sm mt-4" style="margin-bottom: 10px">{{ __('shipping_region') }} <span
                                class="text-danger">*</span></h3>
                        <p>{{ __('purchase_label') }}</p>
                        @if (isset($all_region))
                            @foreach ($all_region as $place => $price)
                                @if ($place === 'Latvia')
                                <div class="col-md-6 col-lg-6 mb-4 mt-4 addressSection">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3 class="label-header-sm" style="margin-top: 10px;">{{ $place }}
                                            </h3>
                                        </div>
                                        <div class="d-inline-flex justify-content-between col-md-6">
                                            <div class="input-group input-field">
                                                <span id="{{ 'input_' . $loop->iteration }}"
                                                    class="input-group-text {{ in_array($place, $ad_region_name) ? '' : 'd-none' }} ">(
                                                    {{ onlyCurrencySymbol() }} )</span>
                                                <input
                                                    {{ in_array($place, $ad_region_name) ? 'name=shiping_price[]' : '' }}
                                                    type="number" placeholder="{{ __('Price') }}"
                                                    data-price="0"
                                                    id="{{ 'price_' . $loop->iteration }}"
                                                    value="0"
                                                    class="form-control {{ in_array($place, $ad_region_name) ? '' : 'd-none' }} @error('shiping_price') border-danger @enderror" />
                                            </div>
                                            <div class="form-check form-switch pb-2" style="margin-bottom: 16px">
                                                <input class="form-check-input form-check-lg m-0" type="checkbox"
                                                    onchange="input_block({{ $loop->iteration }})"
                                                    id="{{ $loop->iteration }}" data-region_id="{{ $loop->iteration }}"
                                                    name="shipping_region[]" value="{{ $place }}"
                                                    {{ in_array($place, $ad_region_name) ? 'checked' : '' }}>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            @endforeach
                        @endif
                    </div>   
                    <div class="input-field__group row mt-5">
                        <div class="upload-wrapper">
                            <div class="mb-3">
                                <h3 class="label-header">{{ __('thumbnail') }}</h3>
                                {{-- <div class="thumb-images"></div> --}}
                                <div class="input-field__group row">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input type="file" name="thumbnail" id="thumbnail" class="from-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6 text-end">
                                        <img src="{{ getPhoto($ad->thumbnail) }}" alt="Thumbnail" width="120px">
                                    </div>
                                </div>
                            </div>
                            <div class="mt-5">
                                <h3>{{ __('upload_photos') }}<span class="text-info"> {{ __('you_must_upload_at_least') }}. {{ __('image_must_be_in_jpg_jpeg_png_format') }}</span> </h3>
                                <div class="input-images"></div>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-post__ads-bottom">
                        <div class="dashboard-post__action-btns">
                            <button id="publish" type="submit" class="btn btn--lg text-white">
                                {{ __('update') }}
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Address Modal -->
                <div class="address_modal modal fade" id="exampleModal" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">{{ __('add_address') }}</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="user_address_list">
                                    <div id="user_address_list">
                                        <div class="address_list">
                                            @if (isset($shippings))
                                                @foreach ($shippings as $k => $item)
                                                    <div class="form-check">
                                                        <input class="form-check-input flexRadioDefault" type="radio"
                                                            name="flexRadioDefault" value="{{ $item->id }}"
                                                            id="address{{ $item->id }}"
                                                            {{ $k == 0 ? 'checked' : '' }}>
                                                        <label class="form-check-label"
                                                            for="address{{ $item->id }}">
                                                            <strong>{{ $item->address }}</strong><br />
                                                            <strong>{{ $item->apartment }}</strong><br />
                                                            <strong>{{ $item->city }}</strong><br />
                                                            <strong>{{ $item->state }}</strong><br />
                                                            <span>{{ $item->location->locations ?? '' }}</span><br />
                                                            <span>{{ $item->postcode }}</span>
                                                        </label>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                    <a href="javascript:void(0)" class="add_address mt-3">
                                        {{ __('add new address') }}
                                    </a>
                                    <button type="button" class="btn btn--lg text-white address_save get_address_button"
                                        style="margin-top:22px;">{{ __('done') }}</button>
                                </div>
                                <div class="row address_form d-none">
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="Street address" for="address" :required="true" />
                                                <input name="address" id="address" type="text" placeholder=""
                                                    value="{{ old('address') ?? $ad->address }}" />
                                                @error('address')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="Apt/Suite" for="apartment" :required="false" />
                                                <input name="apartment" id="apartment" type="text" placeholder=""
                                                    value="{{ old('apartment') ?? $ad->apartment }}" />
                                                @error('apartment')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="city" for="city" :required="true" />
                                                <input name="city" id="city" type="text" placeholder=""
                                                    value="{{ old('city') ?? $ad->city }}" />
                                                @error('city')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="state" for="state" :required="true" />
                                                <input name="state" id="state" type="text" stateholder=""
                                                    value="{{ old('state') ?? $ad->state }}" />
                                                @error('state')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="country" for="country" :required="true" />
                                                <select name="country" id="country">

                                                    @foreach ($locations as $location)
                                                        <option {{ $ad->country == $location->id ? 'selected' : '' }}
                                                            value="{{ $location->id }}">{{ $location->locations }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                @error('country')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="ZIP Code" for="postcode" :required="true" />
                                                <input name="postcode" id="postcode" type="text" placeholder=""
                                                    value="{{ old('postcode') ?? $ad->postcode }}" />
                                                @error('postcode')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="button"
                                            class="btn btn--lg text-white address_save save_address_button ">
                                            {{ __('save_address') }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('frontend_style')
    <link rel="stylesheet" href="{{ asset('frontend/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/select2-bootstrap-5-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/js/plugins/imageUploader/image-uploader.min.css') }}">
    <link href="{{ asset('frontend/js/plugins/tags/tagify.css') }}" rel="stylesheet" type="text/css" />
    <style>
        .bootstrap-tagsinput .tag {
            margin-right: 2px;
            color: white !important;
            background-color: #0d6efd;
            padding: 0.2rem;
            width: 100%;
        }

        .form-switch .form-check-lg {
            height: 30px !important;
            width: 50px !important;
            border-radius: 25px !important;
        }

        .smartPrice {
            width: 100%;
        }

        div#smartPriceSection p {
            font-size: 14px;
            margin-bottom: 12px;
        }

        input#smartPrice {
            border-left: none;
            padding-left: 4px;
        }
    </style>
@endsection

@section('scripts')
    <script src="{{ asset('frontend/js/plugins/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/tags/tagify.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/tags/tagify.polyfills.min.js') }}"></script>
    <script>
        var input = document.querySelector('.tags');

        // initialize Tagify on the above input node reference
        let teg = new Tagify(input)
    </script>
    <script>
        $(document).ready(function() {
            checkAcceptOffer();
            checkSmartPrice();
        });

        function input_block(id) {

            if (!($('#' + id).is(":checked"))) {
                $('#price_' + id).val('');
                $('#price_' + id).removeAttr('name');
                $('#price_' + id).addClass('d-none');
                $('#input_' + id).addClass('d-none');
            } else {
                price = $('#price_' + id).data('price');
                $('#price_' + id).val(price);
                $('#price_' + id).attr('name', 'shiping_price[]');
                $('#price_' + id).removeClass('d-none');
                $('#input_' + id).removeClass('d-none');

            }
        }


        $('#acceptOffer').change(function() {
            checkAcceptOffer();
        });
        $('#smartPriceCheck').change(function() {
            checkSmartPrice();
        });

        $('.in').click(function(e) {
            var scale = 'in';
            $('.ms-2').html('in');
            $('.measurement_type').val('in');
            getOldMeasurements(scale);
        });
        $('.cm').click(function(e) {
            var scale = "cm";
            $('.ms-2').html('cm');
            $('.measurement_type').val('cm');
            getOldMeasurements(scale);
        });
        $('.address_btn').click(function() {
            $('.address_form').addClass('d-none');
            $('.user_address_list').removeClass('d-none');

        });
        $('.add_address').click(function() {
            $('.user_address_list').addClass('d-none');
            $('.address_form').removeClass('d-none');

        });

        var translations = {
        "Bust": "{{ __('Bust') }}",
        "Length": "{{ __('Length') }}",
        "Shoulders": "{{ __('Shoulders') }}",
        "Waist": "{{ __('Waist') }}"
    };

    function measurmentsAdd(measurements) {
        if (measurements != '') {
            $('.measurement_section').show();
            measurementsArr = measurements.split(',');
            var html = '';
            $.each(measurementsArr, function(indexInArray, valueOfElement) {
                var translatedValue = translations[valueOfElement] ? translations[valueOfElement] : valueOfElement;
                html +=
                    '<div class="col-md-6 col-lg-4"><div class="measurement_form"><div class="row align-items-center"><div class="col-7"><h4>' +
                    translatedValue +
                    '</h4></div><div class="col-5"><div class="d-inline-flex align-items-center"> <input type="number" name="measurement_value[]" class="form-control" max="999.9"><span class="ms-2">cm</span></div></div></div> </div></div><input type="hidden" name="measurment_name[]" value="' +
                    valueOfElement + '">'
            });
            $('.measurement_points').html(html);
        } else {
            $('.measurement_section').hide();
        }
    }
        $(document).ready(function() {
            var measurements = $('#subcategory_id option:selected').data('measurement');
            measurmentsAdd(measurements);
            getOldMeasurements('in');
        });

        function getOldMeasurements(scale) {
            var measurements = $('#measurements').val();
            var measurement_type = $('#old_measurement_type').val();
            // console.log(measurement_type);
            arr = $.parseJSON(measurements); //convert to javascript array
            $.each(arr, function(key, value) {
                var id = 'mes_' + key;
                if (measurement_type == 'in') {
                    inch = value;
                    cm = (value * 2.54).toFixed(2);
                } else {
                    inch = (value * 0.393701).toFixed(2);;
                    cm = value;
                }
                if (scale == 'in') {
                    $('#' + id).val(inch);
                } else {
                    $('#' + id).val(cm);
                }

            });

            // console.log(measurements);
        }


        $('#subcategory_id').change(function() {
            var measurements = $('#subcategory_id option:selected').data('measurement');
            measurmentsAdd(measurements);

        });






        function checkAcceptOffer(params) {
            let acceptOffer = $('#acceptOffer').is(':checked');
            if (acceptOffer) {
                $('#minPriceSection').show()
            } else {
                $('#minPriceSection').hide()
            }

        }

        function checkSmartPrice() {
            let smartPriceCheck = $('#smartPriceCheck').is(':checked');

            if (smartPriceCheck) {

                $('#smartPriceSection').show()
            } else {
                $('#smartPriceSection').hide()
            }

        }

        $('#adpost').submit(function(e) {
            e.preventDefault();


            var formData = new FormData($(this)[0]);



            let errorRequird = false;
            if ($('#subcategory_id').val().length == 0) {
                $('#subcategory_id').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#subcategory_id').removeClass("border-danger")
            }


            if ($('#select_child_category').val().length == 0) {
                $('#select_child_category').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#select_child_category').removeClass("border-danger")
            }



            if ($('#adname').val().length == 0) {
                $('#adname').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#adname').removeClass("border-danger")
            }


            if ($('#price').val().length == 0) {
                $('#price').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#price').removeClass("border-danger")
            }

            if ($('#acceptOffer').is(':checked')) {

                if ($('#min_price').val().length == 0) {
                    $('#min_price').addClass("border-danger")
                    console.log("min_price");
                    errorRequird = true;
                } else {
                    $('#min_price').removeClass("border-danger")
                }
            }
            if ($('#smartPriceCheck').is(':checked')) {

                if ($('#smartPrice').val().length == 0) {
                    $('#smartPrice').addClass("border-danger")
                    console.log("smartPrice");
                    errorRequird = true;
                } else {
                    $('#smartPrice').removeClass("border-danger")
                }
            }


            if ($('#size').val() == null) {
                $('#size').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#size').removeClass("border-danger")
            }

            if ($('#color').val() == null) {
                $('#color').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#color').removeClass("border-danger")
            }





            if ($('#condition').val().length == 0) {
                $('#condition').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#condition').removeClass("border-danger")
            }



            if ($('#description').val().length == 0) {
                $('#description').addClass("border-danger")
                errorRequird = true;
            } else {
                $('#description').removeClass("border-danger")
            }

            // if (teg.value.length == 0) {
            //     $('.tagify').addClass("border-danger")
            //     errorRequird = true;
            // } else {
            //     $('.tagify').removeClass("border-danger")
            // }

            errorRequirdAddress = false;
            if ($('#address').val().length == 0) {
                $('#address').addClass("border-danger")
                errorRequirdAddress = true;
            } else {
                $('#address').removeClass("border-danger")
            }

            if ($('#city').val().length == 0) {

                $('#city').addClass("border-danger")
                errorRequirdAddress = true;
            } else {
                $('#city').removeClass("border-danger")

            }
            if ($('#state').val().length == 0) {
                $('#state').addClass("border-danger")
                errorRequirdAddress = true;
            } else {
                $('#state').removeClass("border-danger")


            }
            if ($('#country').val().length == 0) {
                $('#country').addClass("border-danger")
                errorRequirdAddress = true;
            } else {
                $('#country').removeClass("border-danger")


            }
            if ($('#postcode').val().length == 0) {
                $('#postcode').addClass("border-danger")
                errorRequirdAddress = true;
            } else {
                $('#postcode').removeClass("border-danger")

            }



            $('#publish').html(
                '<div class="d-flex justify-content-center" style="padding: 8px 14px;" ><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>'
            );

            $('#publish').addClass("disabled");

            axios.post("{{ route('frontend.post.update', ['ad' => $ad->slug]) }}", formData, {
                    headers: {
                        "Content-Type": "multipart/form-data",
                    }
                })

                .then(response => {
                    if (response.data.status == "Success") {
                        // $("#publish").html('UPDATE');
                        toastr.success(response.data.message);
                        window.location.href = "{{ route('frontend.adds') }}";
                    }
                    if (response.data.error) {
                        $("#publish").html('UPDATE');
                        $('#publish').removeClass("disabled");
                        toastr.error(response.data.error);
                        // printErrorMsg(response.data.error);
                    }
                    if (response.data.eerror) {
                        $('#publish').removeClass("disabled");
                        console.log(response.data.eerror);
                    }

                }).catch(error => {
                    $("#publish").html('UPDATE');
                    $('#publish').removeClass("disabled");
                    toastr.error("Something worng");
                    console.log(error);
                })

            function printErrorMsg(msg) {
                $.each(msg, function(key, value) {
                    toastr.error(value);
                });
            }
            if (errorRequirdAddress) {
                $('.address_modal').modal('show')
                $('.address_btn').addClass("border-danger")
            } else if (errorRequird) {
                console.log(errorRequird);
                console.log("none");
            }
        });





        // $('.address_save').click(function() {
        //     $('.address_modal').modal('hide');

        // })
    </script>



    <script>
        $(document).ready(function() {
            $('#size').select2();
            $('#color').select2();
        })
    </script>
    <script>
        $('#subcategory_id').change(function(event) {
            let childCategoryID = event.target.value;
            size_by_sub_category(childCategoryID)

            axios.post("{{ route('getChildcategory') }}", {
                id: childCategoryID
            }).then((res => {
                console.log(res.data);
                if (res.data) {
                    $('#ad_child_category').empty();
                    // var html = ``;
                    // html += `<option value="null">Slelct Child Category</option>`;

                    // $.each(res.data, function(key, child_cat) {

                    //     html += `<option value="${child_cat.id}">${child_cat.name}</option>`;
                    // });

                    $('select[name="child_category_id"]').html(res.data);

                } else {
                    $('#subcategory_id').empty();
                }
            }))

        });


        function size_by_sub_category(subCategory) {





            axios.post("{{ route('frontend.getSizeByCategories') }}", {
                subCategory: subCategory,

            }).then(function(responce) {
                console.log(responce.data);

                var html = ``;
                html += `<option value="0">...</option>`;

                $.each(responce.data, function(key, child_cat) {

                    html += `<option value="${child_cat.id}">${child_cat.size}</option>`;
                });


                $('select[name="size"]').html(html);


            }).catch(function(error) {
                console.log(error);
            })
        }

        $('.save_address_button').click(function() {
            // alert(1)
            errorRequirdAddress = false;
            if ($('#address').val().length == 0) {
                $('#address').addClass("border-danger")
                console.log("address");
                errorRequirdAddress = true;
            } else {
                $('#address').removeClass("border-danger")
            }
            if ($('#city').val().length == 0) {
                $('#city').addClass("border-danger")
                console.log("city");
                errorRequirdAddress = true;
            } else {
                $('#city').removeClass("border-danger")
            }
            if ($('#state').val().length == 0) {
                $('#state').addClass("border-danger")
                console.log("state");
                errorRequirdAddress = true;
            } else {
                $('#state').removeClass("border-danger")
            }
            if ($('#country').val().length == 0) {
                $('#country').addClass("border-danger")
                console.log("country");
                errorRequirdAddress = true;
            } else {
                $('#country').removeClass("border-danger")
            }
            if ($('#postcode').val().length == 0) {
                $('#postcode').addClass("border-danger")
                console.log("postcode");
                errorRequirdAddress = true;
            } else {
                $('#postcode').removeClass("border-danger")
            }
            // if (errorRequirdAddress) {
            //     $('.address_modal').modal('show')
            //     $('.address_btn').addClass("border-danger")
            //     console.log("address_btn");
            // }
            if (errorRequirdAddress == false) {

                $(".save_address_button").attr("disabled", true);

                var address = $('input[name="address"]').val();
                var state = $('input[name="state"]').val();
                var city = $('input[name="city"]').val();
                var country = $('select[name="country"] option:selected').val();
                var postcode = $('input[name="postcode"]').val();
                var apartment = $('input[name="apartment"]').val();

                $.ajax({
                    type: "GET",
                    url: "{{ route('frontend.post.shipping.add') }}",
                    data: {
                        address: address,
                        state: state,
                        city: city,
                        country: country,
                        postcode: postcode,
                        apartment: apartment,
                    },
                    beforeSend: function() {
                        $('.save_address_button').html(
                            '<div class="d-flex justify-content-center" style="padding: 8px 14px;" ><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>'
                        );
                    },
                    success: function(res) {
                        // console.log(res);
                        if (res.status == 'success') {
                            $('.address_form').addClass('d-none');
                            $('.user_address_list').removeClass('d-none');
                            $("#user_address_list").load(location.href + " #user_address_list>*", "");

                            toastr.success("Shipping from added successfully");

                            $(".save_address_button").attr("disabled", false);


                            $('input[name="address"]').val('');
                            $('input[name="state"]').val('');
                            $('input[name="city"]').val('');
                            $('select[name="country"] option:selected').val('');
                            $('input[name="postcode"]').val('');
                            $('input[name="apartment"]').val('');

                        }
                        if (res.status == 'valid_error') {
                            printErrorMsg(res.valid);
                        }
                        if (res.status == 'error') {
                            toastr.error("Somenthing wrong");
                        }
                    },
                    complete: function() {
                        $('.save_address_button').html("SAVE ADDRESS");
                    },


                });
            }

        });
        $('.get_address_button').click(function() {
            // alert(1)
            var id = $('.flexRadioDefault:checked').val();
            $(".get_address_button").attr("disabled", true);
            $.ajax({
                type: "GET",
                url: "{{ route('frontend.getShipFromAddress') }}",
                data: {
                    id: id,
                },
                beforeSend: function() {
                    $('.get_address_button').html(
                        '<div class="d-flex justify-content-center" style="padding: 8px 14px;" ><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>'
                    );
                },
                success: function(res) {
                    console.log(res);
                    $('.get_address').text(res.data.address)
                    $('.get_apt').text(res.data.apartment)
                    $('.get_state').text(res.data.state)
                    $('.get_city').text(res.data.city)
                    $('.get_country').text(res.data.country)
                    $('.get_postcode').text(res.data.postcode)
                    $('input[name="address"]').val(res.data.address);
                    $('input[name="state"]').val(res.data.state);
                    $('input[name="city"]').val(res.data.city);
                    $('select[name="country"] option:selected').val(res.data.country);
                    $('input[name="postcode"]').val(res.data.postcode);
                    $('input[name="apartment"]').val(res.data.apartment);
                    $('.address_modal').modal('hide');
                    $('.select_title').addClass('d-none');
                    $('.user_select_address').removeClass('d-none');

                    $(".get_address_button").attr("disabled", false);
                },
                complete: function() {
                    $('.get_address_button').html("DONE");
                },

            });

        });
    </script>


    <script src="{{ asset('backend/plugins/bootstrap-fileinput/js/plugins/sortable.min.js') }}" type="text/javascript">
    </script>

    <script src="{{ asset('frontend/js/plugins/imageUploader/image-uploader.min.js') }}"></script>

    <script>
        let preloaded = [
            @foreach ($ad->galleries as $galleries)

                {
                    id: "{{ $galleries->id }}",
                    src: "{{ getPhoto($galleries->image) }}"
                },
            @endforeach
        ];

        $('.input-images').imageUploader({
            preloaded: preloaded,
            imagesInputName: 'images',
            preloadedInputName: 'old',
            maxSize: 2 * 1024 * 1024,
            maxFiles: 10
        });

        // let prelodedThumb = [{
        //     id: "{{ $ad->id }}",
        //     src: "{{ getPhoto($ad->thumbnail) }}"
        // }, ];
        // $('.thumb-images').imageUploader({
        //     preloaded: prelodedThumb,
        //     imagesInputName: 'thumbnail',
        //     preloadedInputName: 'thumbnail_old',
        //     maxSize: 2 * 1024 * 1024,

        // });
    </script>







    <script type="text/javascript">
        // feature field
        function add_features_field() {
            $("#multiple_feature_part").append(`
            <div class="row">
                <div class="col-lg-10">
                        <div class="input-field">
                            <input name="features[]" type="text" placeholder="Feature" id="adname" class="@error('title') border-danger @enderror"/>
                        </div>
                </div>
                <div class="col-lg-2 mt-10">
                    <button onclick="remove_single_field()" id="remove_item" class="btn btn-sm bg-danger text-light"><i class="fas fa-times"></i></button>
                </div>
            </div>
        `);
        }

        $(document).on("click", "#remove_item", function() {
            $(this).parent().parent('div').remove();
        });
    </script>
@endsection
