@extends('layouts.frontend.layout_one')

@section('title', __('ad post'))

@section('css')
    <style>
        .add-title {
            font-size: 30px;
            line-height: 40px;
            color: #000;
            font-weight: bold;
            font-family: sans-serif;
        }


        .Simple_message__2M7Fm {
            border: 1px solid #F59A05;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            background: #FEFBF7;
            padding: 10px 20px;
            width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin-bottom: 25px;
        }

        .btn_disabled {
            background-color: #e1e1e1;
            border: none !important;
        }

        .btn_disabled:hover {
            cursor: none;
        }

        .tagify {
            height: auto !important;
        }

        .label-header {
            text-transform: uppercase;
            font-size: 18px;
            letter-spacing: 2px;
            font-weight: bold;
            line-height: 18px;
            margin-bottom: 24px;
            font-family: sans-serif;
        }

        .label-header-sm {
            font-size: 14px;
            letter-spacing: 2px;
            font-weight: bold;
            line-height: 18px;
            margin-bottom: 24px;
            font-family: sans-serif;
        }

        .tips_guide {
            font-size: 13px;
            font-family: "video";
            text-transform: uppercase;
        }

        div.loader {
            visibility: hidden;
            /* position: absolute; */
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            min-width: 80px;
            min-height: 80px;
            /* background-color: #37c97b; */
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 10px;
        }
    </style>
@endsection

@section('content')
    <!-- breedcrumb section start  -->

    <!-- breedcrumb section end  -->
    <section class="soldout_section">

        <div class="Simple_header__3SBfR pt-5">
            <div class="container w-50 container-fluid">
                <div class="Simple_container__3RL3a">
                    <div class="Simple_message__2M7Fm">
                        {{ __('ad_posting_before') }} <strong>{{ $setting->ad_valid_day }}</strong> {{ __('ad_posting_after') }}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            @include('frontend.dashboard-alert')
            <div class="col-xl-10 container-fluid">
                <div class="dashboard-post">
                    <div class="card-header align-item-center">
                        <div class="row">
                            <div class="col-sm-6 add-title"></div>
                            <div class="col-sm-6">
                                <a target="_blank" href="{{ route('frontend.post.rules') }}"
                                    class="float-sm-end">{{ __('view_posting_rules') }} <i class="fa fa-arrow-right"
                                        style="font-size: 12px"></i> </a>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content dashboard-post__content" id="pills-tabContent">
                        @yield('post-ad-content')
                    </div>
                </div>
            </div>
        </div>
        @isset($ad->category_id)
            <input type="hidden" id="cat_id" value="{{ $ad->category_id }}">
        @else
            <input type="hidden" id="cat_id" value="">
        @endisset

        @isset($ad->subcategory_id)
            <input type="hidden" id="subct_id" value="{{ $ad->subcategory_id }}">
        @else
            <input type="hidden" id="subct_id" value="">
        @endisset
    </section>
    <!-- dashboard section end  -->
@endsection

@section('scripts')
    <script src="{{ asset('frontend') }}/js/axios.min.js"></script>
    <script>
        // session category wise subcategory
        var cat_id = document.getElementById('cat_id').value;
        var subct_id = document.getElementById('subct_id').value;

        if (cat_id) {
            cat_wise_subcat(cat_id)
        }

        // Category wise subcategories
        $('#ad_category').on('change', function() {
            var categoryID = $(this).val();
            if (categoryID) {
                cat_wise_subcat(categoryID);
            }
        });


        // cat wise subcat function
        function cat_wise_subcat(categoryID) {
            axios.get('/get-sub-categories/' + categoryID).then((res => {
                if (res.data) {
                    $('#ad_subcategory').empty();
                    $.each(res.data, function(key, subcat) {
                        var matched = parseInt(subct_id) === subcat.id ? true : false

                        $('select[name="subcategory_id"]').append(
                            `<option ${matched ? 'selected':''} value="${subcat.id}">${subcat.name}</option>`
                        );
                    });
                } else {
                    $('#ad_subcategory').empty();
                }
            }))
        }

        $('.address_save').click(function() {
            alert(1)
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
                success: function(res) {
                    // console.log(res);
                    $('.address_form').addClass('d-none');
                    $('.user_address_list').removeClass('d-none');
                    $("#user_address_list").load(location.href + " #user_address_list>*", "");
                }
            });

        });
    </script>

    @stack('post-ad-scripts')
    @yield('post-ad-scripts')
@endsection

@section('frontend_style')
    <link rel="stylesheet" href="{{ asset('css/zakirsoft.css') }}">
@endsection
