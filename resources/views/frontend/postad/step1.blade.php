@extends('frontend.postad.index')
@section('title', __('Ads Post'))
@section('card-header-title', __('Add a new listing'))
@section('post-ad-content')
    <!-- Step 01 -->
    <div class="tab-pane fade show active" id="pills-basic" role="tabpanel" aria-labelledby="pills-basic-tab">
        <div class="dashboard-post__information step-information">
            @if (request()->src)
                <div class="Simple_header__3SBfR">
                    <div class="Simple_container__3RL3a">
                        <div class="Simple_message__2M7Fm">{{__('to_get_you_started_we_have_pre')}}</div>
                    </div>
                </div>
            @endif
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form action="{{ route('frontend.post.store') }}" id="adpost" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="dashboard-post__information-form">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="input-select mb-2">
                                <label for="`">{{ __('category') }} <span class="text-danger">*</span></label>
                                <select name="subcategory_id" id="ad_category"
                                    class="form-control select-bg @error('category_id') border-danger @enderror">
                                    <option value="" data-measurement="" hidden>{{ __('department_category') }} </option>
                                    @foreach ($categories as $categorie)
                                        <optgroup label="{{ __($categorie->name) }}">
                                            @if ($categorie->subcategories->count() > 0)
                                                @foreach ($categorie->subcategories as $subcategory)
                                                    <option data-measurement="{{ $subcategory->mesurement_point }}"
                                                        {{ ($ad
                                                                ? ($ad->subcategory_id == $subcategory->id
                                                                    ? 'selected'
                                                                    : '')
                                                                : old('subcategory_id') == $subcategory->id)
                                                            ? 'selected'
                                                            : '' }}
                                                        value="{{ $subcategory->id }}">
                                                        {{ __($subcategory->name) }}
                                                    </option>
                                                @endforeach
                                            @endif
                                        </optgroup>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-field__group">
                                <div class="input-select mb-2">
                                    <label for="`">{{ __('subcategory') }}<span class="text-danger">*</span></label>
                                    <select name="child_category_id" id="child_category_id"
                                        class="form-control select-bg @error('child_category_id') border-danger @enderror"
                                        disabled>
                                        @if (isset($ad) && isset($ad->child_category))
                                            @foreach ($ad->child_category as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ $ad->child_category_id == $item->id ? 'selected' : '' }}>
                                                    {{ __($item->name) }}</option>
                                            @endforeach
                                        @else
                                            <option value="">{{ __('please_select_subcategory') }}</option>
                                        @endif
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('ad_name') }} <span class="text-danger">*</span></h3>
                            <div class="input-field">
                                <input value="{{ $ad->title ?? old('title') }}" name="title" type="text"
                                    placeholder="{{ __('ad_name') }}" id="adname"
                                    class="form-control @error('title') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('size') }} <span class="text-danger">*</span></h3>
                            <div class="input-select">
                                {{--
                            <x-forms.label name="size" for="size" required="true" /> --}}
                                <select name="size" id="size"
                                    class="form-control select-bg @error('size') border-danger @enderror">
                                    <option value="">{{__('select_size')}}</option>
                                    @if (isset($ad) && isset($ad->sizes))
                                        @foreach ($ad->sizes as $size)
                                            <option
                                                {{ ($ad ? ($size->id == $ad->size_id ? 'selected' : '') : $size->id == old('size')) ? 'selected' : '' }}
                                                value="{{ $size->id }}">
                                                {{ $size->size }}</option>
                                        @endforeach
                                    @endif
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
                                            {{ $color->color }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="label-header">{{ __('condition') }} <span class="text-danger">*</span></h3>
                            <div class="input-select mb-2">
                                <select name="condition" id="condition"
                                    class="form-control select-bg @error('condition') border-danger @enderror">
                                    <option value="" class="d-none"></option>
                                    <option
                                        {{ ($ad ? ($ad->condition == 'new' ? 'selected' : '') : old('condition') == 'new') ? 'selected' : '' }}
                                        value="new">{{ __('new_never_worn') }}
                                    </option>
                                    <option
                                        {{ ($ad
                                                ? ($ad->condition == 'Gently Used'
                                                    ? 'selected'
                                                    : '')
                                                : old('condition') == 'Gently Used')
                                            ? 'selected'
                                            : '' }}
                                        value="Gently Used">
                                        {{ __('gently_used') }}</option>
                                    <option
                                        {{ ($ad ? ($ad->condition == 'Used' ? 'selected' : '') : old('condition') == 'Used') ? 'selected' : '' }}
                                        value="Used">{{ __('used') }}</option>
                                    <option
                                        {{ ($ad ? ($ad->condition == 'Worn' ? 'selected' : '') : old('condition') == 'Worn') ? 'selected' : '' }}
                                        value="Worn"> {{ __('very_worn') }}
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="col-12 mt-3">
                            <h3 class="label-header">{{ __('ad_description') }} <span class="text-danger">*</span></h3>
                            <div class="input-field--textarea mb-4">
                                {{--
                            <x-forms.label name="ad_description" for="description" required="true" /> --}}
                                <textarea name="description" placeholder="{{ __('whats_your_thought') }}..." id="description"
                                    class="@error('description') border-danger @enderror" style="border: 1px solid #737373;">{{ $ad->description ?? old('description') }}</textarea>
                            </div>
                        </div>

                        <div class="col-12 mb-3 measurement_section" style="display: none">
                            <div class="row" style="padding-right: 0px">
                                <h3 class="label-header">{{ __('measurements') }}</h3>
                            </div>
                            <p class="mb-3">
                                {{ __('add_measurements') }}
                            </p>
                            <div class="measurement_chest mb-5">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active in" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="true">{{ __('in') }}</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link cm" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="false">{{ __('cm') }}</button>
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

                        {{-- <div class="col-12 mt-3">
                            <h3 class="label-header">{{ __('tags') }}</h3>
                            <div class="input-field--textarea">
                                <div class="input-field">
                                    <input type="text" name="tags[]" value="{{ $ad->tags ?? old('tags') }}" class="form-control tags" id="tags" placeholder="{{__('add_tag')}}">
                                </div>
                            </div>
                        </div> --}}

                        <div class="col-md-6">
                            <h3 class="label-header">{{ __('price') }} <span class="text-danger">*</span></h3>
                            <div class="input-group">
                                <span class="input-group-text">{{ onlyCurrencySymbol() }}</span>
                                <input name="price" type="number" min="1"
                                    placeholder="{{ __('price (Euro)') }}" id="price"
                                    value="{{ $ad->price ?? old('price') }}"
                                    class="form-control  @error('price') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <h3 class="label-header">{{ __('brand') }}</h3>
                            <div class="input-group">
                                <div class="input-select">
                                    <select name="brand_id" id="brand"
                                        class="form-control select-bg @error('brand_id') border-danger @enderror">
                                        <option value="0">{{ __('select_brand') }}</option>
                                        @isset($ad->brand_id)
                                            @foreach ($brands as $brand)
                                                <option {{ $brand->id == $ad->brand_id ? 'selected' : '' }}
                                                    value="{{ $brand->id }}">{{ $brand->name }}</option>
                                            @endforeach
                                        @else
                                            @foreach ($brands as $brand)
                                                <option {{ old('brand_id') == $brand->id ? 'selected' : '' }}
                                                    value="{{ $brand->id }}">{{ $brand->name }}</option>
                                            @endforeach
                                        @endisset
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12">
                            <div class="row mt-2">
                                <div class="col-md-6">
                                    <div class="d-inline-flex justify-content-between smartPrice align-items-center">
                                        <h3 class="label-header-sm">{{ __('discount_price') }}</h3>
                                        <div class="form-check form-switch pb-2">
                                            <input class="form-check-input form-check-lg m-0"
                                                {{ $ad ? ($ad->is_smart_price == 1 ? 'checked' : '') : 'checked' }}
                                                type="checkbox" id="smartPriceCheck" name="smartPriceCheck">
                                        </div>
                                    </div>
                                    <div class="input-field mb-4" id="smartPriceSection">
                                        <p>
                                            {{ __('floor_price') }}
                                        </p>
                                        <div class="input-group">
                                            <span class="input-group-text">( {{ onlyCurrencySymbol() }} )</span>
                                            <input name="smartPrice" type="number" min="1"
                                                placeholder="{{ __('smartPrice') }}" id="smartPrice"
                                                value="{{ $ad->smart_price ?? old('min_price') }}"
                                                class="form-control @error('smartPrice') border-danger @enderror" />
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <h3 class="label-header-sm" style="margin-bottom: 10px">{{ __('Shipping_From') }}
                                    </h3>
                                    <p>{{ __('shipping_options_vary_depending_on_the_address') }}</p>
                                    <div class="col-md-12 addressSection">
                                        <button type="button" class="address_btn" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal">
                                            <span class="select_title  text-left">{{__('select_address')}}</span>
                                            <p class="user_select_address d-none text-left">
                                                <strong class="get_address">{{__('address')}}</strong><br />
                                                <strong class="get_apt">{{__('app_suite')}}</strong><br />
                                                <strong class="get_city">{{__('city')}}</strong><br />
                                                <strong class="get_state">{{__('state')}}</strong><br />
                                                <span class="get_country">{{__('country')}}</span><br />
                                                <span class="get_postcode">{{__('zipcode')}}</span>
                                                <span class="arrow_right"><i class="fa fa-angle-right"></i></span>
                                            </p>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <h3 class="label-header-sm mt-4" style="margin-bottom: 10px">{{ __('shipping_region') }}
                                <span class="text-danger">*</span>
                            </h3>
                            <p>
                                {{ __('Purchase_label') }}
                            </p>
                            @if (shipping_region())
                                @foreach (shipping_region() as $place => $price)
                                    <div class="col-md-6 col-lg-6 mb-4 mt-4 addressSection">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h3 class="label-header-sm" style="margin-top: 10px;">{{ $place }}
                                                </h3>
                                            </div>
                                            <div class="d-inline-flex justify-content-between col-md-6">
                                                <div class="input-group input-field">
                                                    <span id="{{ 'input_' . $loop->iteration }}"
                                                        class="input-group-text">( {{ onlyCurrencySymbol() }}
                                                        )</span>
                                                    <input name="shiping_price[]" type="number"
                                                        placeholder="{{ __('Price') }}"
                                                        data-price="{{ $price }}"
                                                        id="{{ 'price_' . $loop->iteration }}"
                                                        value="{{ $price }}"
                                                        class="form-control @error('shiping_price') border-danger @enderror" />
                                                </div>
                                                <div class="form-check form-switch pb-2" style="margin-bottom: 16px">
                                                    <input class="form-check-input input_block form-check-lg m-0"
                                                        type="checkbox" onchange="input_block({{ $loop->iteration }})"
                                                        id="{{ $loop->iteration }}" data-id="{{ $loop->iteration }}"
                                                        name="shipping_region[]" value="{{ $place }}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        <div class="col-12">
                            <div class="upload-wrapper">
                                <h3>
                                    {{ __('upload_photos') }}
                                    <span class="text-danger">
                                        {{ __('you_must_upload_at_least') }}
                                        1 Image.
                                        {{ __('image_must_be_in_jpg_jpeg_png_format') }}
                                        <span class="text-danger">*</span>
                                    </span>
                                </h3>
                                <div class="input-images"></div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="dashboard-post__ads-bottom">
                                <div class="dashboard-post__action-btns">
                                    <button type="submit" id="publish" class="btn btn--lg text-white">
                                        {{ __('publish') }}
                                    </button>
                                </div>
                            </div>
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
                                                        <label class="form-check-label" for="address{{ $item->id }}">
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
                                        {{ __('add_new_address') }}
                                    </a>
                                    <button type="button" class="btn btn--lg text-white address_save get_address_button"
                                        style="margin-top:22px;">{{ __('done') }}</button>
                                </div>
                                <div class="row address_form d-none">
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="Street address" for="address" :required="true" />
                                                <input name="address" id="address" type="text" class=""
                                                    placeholder="" value="{{ old('address') ?? '' }}" />
                                                @error('address')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="Apt/Suite" for="apartment" :required="false" />
                                                <input name="apartment" id="apartment" type="text" class=""
                                                    placeholder="" value="{{ old('apartment') ?? '' }}" />
                                                @error('apartment')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="city" for="city" :required="true" />
                                                <input name="city" id="city" type="text" class=""
                                                    placeholder="" value="{{ old('city') ?? '' }}" />
                                                @error('city')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="state" for="state" :required="true" />
                                                <input name="state" id="state" type="text" class=""
                                                    stateholder="" value="{{ old('state') ?? '' }}" />
                                                @error('state')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="country" for="country" :required="true" />
                                                <select class="country_select" name="country" id="country">
                                                    <option value="">Select Country</option>
                                                    @foreach ($locations as $location)
                                                        <option value="{{ $location->id }}">
                                                            {{ $location->locations }}</option>
                                                    @endforeach
                                                </select>
                                                @error('country')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-field__group">
                                            <div class="input-field">
                                                <x-forms.label name="ZIP Code" for="postcode" :required="true" />
                                                <input name="postcode" id="postcode" type="text" class=""
                                                    placeholder="" value="{{ old('postcode') ?? '' }}" />
                                                @error('postcode')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="button" class="btn btn--lg text-white address_save save_address_button ">
                                            {{ ('save_address') }}
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
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <link href="{{ asset('frontend/js/plugins/tags/tagify.css') }}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{ asset('frontend/js/plugins/imageUploader/image-uploader.min.css') }}">
    <style>
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
    <script src="{{ asset('frontend/js/axios.min.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/imageUploader/image-uploader.min.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/tags/tagify.js') }}"></script>
    <script src="{{ asset('frontend/js/plugins/tags/tagify.polyfills.min.js') }}"></script>
    <script>
        var input = document.querySelector('.tags');
        // initialize Tagify on the above input node reference
        let teg = new Tagify(input);
    </script>
    <script>
        $(document).ready(function() {
            checkAcceptOffer();
            checkSmartPrice();

            $('.input_block').each(function(index, element) {
                // element == this
                id = $(element).data('id');
                input_block(id);

            });
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
        $('.address_btn').click(function() {
            $('.address_form').addClass('d-none');
            $('.user_address_list').removeClass('d-none');

        });
        $('.add_address').click(function() {
            $('.user_address_list').addClass('d-none');
            $('.address_form').removeClass('d-none');

        });
        $('.in').click(function(e) {
            $('.ms-2').html('in');
            $('.measurement_type').val('in');
        });
        $('.cm').click(function(e) {
            $('.ms-2').html('cm');
            $('.measurement_type').val('cm');
        });
        $('#acceptOffer').change(function() {
            checkAcceptOffer();
        });
        $('#smartPriceCheck').change(function() {
            checkSmartPrice();
        });

        function measurmentsAdd(measurements) {
            if (measurements != '') {
                $('.measurement_section').show();
                measurementsArr = measurements.split(',');
                var html = '';
                $.each(measurementsArr, function(indexInArray, valueOfElement) {
                    html +=
                        '<div class="col-md-6 col-lg-4"><div class="measurement_form"><div class="row align-items-center"><div class="col-7"><h4>' +
                        valueOfElement.replace("_", " ") +
                        '</h4></div><div class="col-5"><div class="d-inline-flex align-items-center"> <input type="number" name="measurement_value[]" class="form-control" max="999.9"><span class="ms-2">in</span></div></div></div> </div></div><input type="hidden" name="measurment_name[]" value="' +
                        valueOfElement + '">'
                });
                $('.measurement_points').html(html);
            } else {
                $('.measurement_section').hide();
            }
        }
        $(document).ready(function() {
            var measurements = $('#ad_category option:selected').data('measurement');
            measurmentsAdd(measurements);
        });
        $('#ad_category').change(function() {
            var measurements = $('#ad_category option:selected').data('measurement');
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
            $('#publish').html(
                '<div class="d-flex justify-content-center" style="padding: 8px 14px;" ><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>'
            );
            let formData = new FormData($(this)[0]);
            let errorRequird = false;
            if ($('#ad_category').val().length == 0) {
                $('#ad_category').addClass("border-danger")
                console.log("ad_category");
                errorRequird = true;
            } else {
                $('#ad_category').removeClass("border-danger")
            }
            if ($('#child_category_id').val().length == 0) {
                $('#child_category_id').addClass("border-danger")
                console.log("child_category_id");
                errorRequird = true;
            } else {
                $('#child_category_id').removeClass("border-danger")
            }
            if ($('#adname').val().length == 0) {
                $('#adname').addClass("border-danger")
                console.log("adname");
                errorRequird = true;
            } else {
                $('#adname').removeClass("border-danger")
            }
            if ($('#price').val().length == 0) {
                $('#price').addClass("border-danger")
                console.log("price");
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
            console.log($('#size').val());
            if ($('#size').val() == null || $('#size').val() == "") {
                $("[aria-controls='select2-size-container']").addClass("border-danger")
                console.log("Size");
                errorRequird = true;
            } else {
                $("[aria-controls='select2-size-container']").removeClass("border-danger")
            }
            if ($('#color').val() == null || $('#color').val() == "") {
                $("[aria-controls='select2-color-container']").addClass("border-danger")
                console.log("Color");
                errorRequird = true;
            } else {
                $("[aria-controls='select2-color-container']").removeClass("border-danger")
            }
            if ($('#condition').val().length == 0) {
                $("[aria-controls='select2-condition-container']").addClass("border-danger")
                console.log("condition");
                errorRequird = true;
            } else {
                $("[aria-controls='select2-condition-container']").removeClass("border-danger")
            }
            if ($('#description').val().length == 0) {
                $('#description').addClass("border-danger")
                console.log("description");
                errorRequird = true;
            } else {
                $('#description').removeClass("border-danger")
            }

            // if (teg.value.length == 0) {
            //     $('.tagify').addClass("border-danger")
            //     console.log("tagify");
            //     errorRequird = true;
            // } else {
            //     $('.tagify').removeClass("border-danger")
            // }

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
            if (errorRequirdAddress) {
                $('.address_modal').modal('show')
                $('.address_btn').addClass("border-danger")
                console.log("address_btn");
            }

            $('#publish').addClass("disabled");

            axios.post("{{ route('frontend.post.store') }}", formData, {
                    headers: {
                        "Content-Type": "multipart/form-data",
                    }
                })
                .then(response => {
                    console.log(response);

                    if (response.data.status == "Success") {
                        // $('#publish').html("publish");
                        toastr.success(response.data.message);
                        window.location.href = "{{ route('frontend.adds') }}";
                    }
                    if (response.data.verror) {
                        $('#publish').html("publish");
                        $('#publish').removeClass("disabled");
                        toastr.error(response.data.verror);
                        // printErrorMsg(response.data.verror);
                    }
                    if (response.data.error) {
                        $('#publish').removeClass("disabled");
                        console.log(response.data.error);
                    }
                }).catch(error => {
                    $('#publish').html("publish");
                    $('#publish').removeClass("disabled");
                    toastr.error("Somenthing wrong");
                    console.log(error);
                })

        });

        function printErrorMsg(msg) {
            $.each(msg, function(key, value) {
                toastr.error(value);
            });
        }
        // $('.address_save').click(function() {
        //     $('.address_modal').modal('hide');
        //     size_by_sub_category
        // })
        $('.save_address_button').click(function() {

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
                    $('.get_country').text(res.country.locations)
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

        $(document).ready(function() {
            $('#size').select2();
            $('#color').select2();
            $('#condition').select2();
        })
        $('.input-images').imageUploader({
            label: "{{__('drag_drop_files_here_or_click_to_browse')}}"
        });
        $(document).on("click", "#remove_item", function() {
            $(this).parent().parent('div').remove();
        });
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
        // ads post
        // $("#file-1").fileinput({
        //     theme: 'fas',
        //     showUpload: false,
        //     allowedFileExtensions: ['jpg', 'png', 'gif', 'jpeg'],
        //     previewFileIcon: '<i class="fas fa-file"></i>',
        //     overwriteInitial: false,
        //     maxFileSize: 2048,
        //     minFileCount: 0,
        //     validateInitialCount: true,
        //     showPreview: true,
        //     showRemove: true,
        //     showCancel: true,
        //     showCaption: false,
        //     showBrowse: true,
        //     browseOnZoneClick: true,
        //     validateInitialCount: true,
        //     initialPreviewAsData: true,
        // });
    </script>
    <script type="text/javascript">
        $('#ad_category').change(function(event) {
            let childCategoryID = event.target.value;
            axios.post("{{ route('getChildcategory') }}", {
                id: childCategoryID
            }).then((res => {
                if (res.data) {
                    console.log(res.data);
                    $('#ad_child_category').empty();
                    // var html = ``;
                    // html += `<option value="">Slelct Child Category</option>`;
                    // $.each(res.data, function(key, child_cat) {
                    //     html += `<option value="${child_cat.id}">${child_cat.name}</option>`;
                    // });
                    $('select[name="child_category_id"]').removeAttr('disabled');
                    $('select[name="child_category_id"]').html(res.data);
                }
            }))
            size_by_sub_category(childCategoryID);


        });

        function size_by_sub_category(subCategory) {
            axios.post("{{ route('frontend.getSizeByCategories') }}", {
                subCategory: subCategory
            }).then(function(responce) {
                var html = ``;
                html += `<option value="">Select Size</option>`;
                $.each(responce.data, function(key, child_cat) {
                    html += `<option value="${child_cat.id}">${child_cat.size}</option>`;
                });
                $('select[name="size"]').html(html);
            }).catch(function(error) {})
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
                html: true
            });
        });
    </script>
@endsection
