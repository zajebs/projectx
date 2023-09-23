@extends('layouts.frontend.layout_one')

@section('title', __('account setting'))

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
                        <div class="dashboard-setting__box account-information">
                            <h2 class="text--body-2-600">{{ __('account_information') }}</h2>
                            <form action="{{ route('frontend.profile') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <div class="user-info">
                                    <div class="img">
                                        <div class="img-wrapper">
                                            <img src="{{ getPhotoAvater($user->image) }}" class="rounded-circle"
                                                alt="user-img" id="image">
                                        </div>
                                        <input name="image"
                                            onchange="document.getElementById('image').src = window.URL.createObjectURL(this.files[0])"
                                            id="hiddenImgInput" type="file" hidden
                                            accept="image/png, image/jpg, image/jpeg" />
                                        <button onclick="$('#hiddenImgInput').click()" class="btn btn--bg"
                                            type="button">{{ __('choose_image') }}</button>
                                    </div>
                                </div>
                                <div class="input-field__group">
                                    <div class="input-field">
                                        <label for="">{{ __('full_name') }}<span class="text-danger">*</span></label>
                                        <input name="name" value="{{ $user->name }}" type="text"
                                            placeholder="{{ __('full_name') }}" id="Fname"
                                            class="@error('name') is-invalid border-danger @enderror" required>
                                        @error('name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="input-field">
                                        <label for="">{{ __('email') }}<span class="text-danger">*</span></label>
                                        <input name="email" value="{{ $user->email }}" type="email"
                                            placeholder="{{ __('email_address') }}" id="email"
                                            class="@error('email') is-invalid border-danger @enderror"required required>
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="input-field">
                                        <label>{{ __('username') }}<span class="text-danger">*</span></label>
                                        <input name="username" id="validusername" value="{{ $user->username }}"
                                            type="text" placeholder="{{ __('user_name') }}" id="email"
                                            class="@error('username') is-invalid border-danger @enderror" >
                                        @error('username')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="input-field__group">
                                    <div class="input-field"></div>
                                    <div class="input-field"></div>
                                    <div class="input-field">
                                        <span id="response"></span>
                                    </div>
                                </div>
                                <div class="input-field__group">
                                    <div class="input-field">
                                        <label for="">{{ __('phone') }}<span class="text-danger">*</span></label>
                                        <span>
                                            ( <input type="checkbox" name="show_phone" id="show_phone_number" value="1"
                                                data-gtm-form-interact-field-id="0"
                                                {{ Auth::user()->show_phone == 1 ? 'checked' : '' }}>
                                            <label for="show_phone_number">{{__('Show_in_ads_details')}}</label> )
                                        </span>
                                        <input name="phone" value="{{ $user->phone }}" type="number"
                                            placeholder="{{ __('Phone No') }}" id="phone"
                                            class="@error('phone') is-invalid border-danger @enderror" required>
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="input-field">
                                        <label for="">{{ __('location') }}<span class="text-danger">*</span></label>
                                        <select name="location" id="location" class="form-control" required>
                                            <option value="">{{ __('select locations') }}</option>
                                            @foreach ($locations as $location)
                                                <option {{ $location->id == $user->location ? 'selected' : '' }}
                                                    value="{{ $location->id }}">{{ $location->locations }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('location')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="input-field__group">
                                    <div class="input-field--textarea">
                                        <label for="">{{ __('bio') }} <span class="text-danger">*</span></label>
                                        <textarea name="bio" placeholder="{{ __('your thought') }}..." id="bio"
                                            class="@error('bio') border-danger @enderror">{!! $user->bio !!}</textarea>
                                        @error('bio')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <button class="btn" type="submit">{{ __('save_changes') }}</button>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <div class="dashboard-setting">
                        <div class="dashboard-setting__box account-information">
                            <h2 class="text--body-2-600">{{ __('change_password') }}</h2>
                            <form action="{{ route('frontend.password') }}" method="post">
                                @csrf
                                @method('put')
                                <div class="input-field__group">
                                    <div class="input-field">
                                        <label>{{ __('current_password') }} <span class="text-danger">*</span></label>
                                        <input type="password" name="current_password"
                                            placeholder="{{ __('enter current password') }}" required
                                            class="@error('current_password') is-invalid border-danger @enderror">
                                    </div>
                                    <div class="input-field">
                                        <label>{{ __('new_password') }} <span class="text-danger">*</span></label>
                                        <input type="password" name="password"
                                            placeholder="{{ __('password') }}" required
                                            class="@error('password') is-invalid border-danger @enderror">
                                    </div>
                                    <div class="input-field">
                                        <label>{{ __('confirm_password') }} <span class="text-danger">*</span></label>
                                        <input type="password" name="password_confirmation"
                                            placeholder="{{ __('confirm password') }}" required
                                            class="@error('password confirmation') is-invalid border-danger @enderror">
                                    </div>
                                </div>
                                <div class="input-field__group">
                                    <div class="input-field">
                                        @error('current_password')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="input-field">
                                        @error('password')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="input-field">
                                        @error('password_confirmation')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <button class="btn" type="submit">{{ __('update_password') }}</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('frontend_style')
    <style>
        .input-field .icon {
            top: 50% !important;
        }

        .ck-editor__editable[role="textbox"] {
            /* editing area */
            min-height: 200px;
        }

        .ck-content .image {
            /* block images */
            max-width: 80%;
            margin: 20px auto;
        }

        .ck-editor__editable {
            font-size: 15px;
        }
    </style>
@endsection

@push('component_script')
    <script>
        $(document).ready(function() {
            $("#validusername").blur(function() {
                var validusername = $("#validusername").val();
                var incorrect = "<font color=red font-size=16px>User name already taken</font>";
                var correct = "<font color=green font-size=20px>User name is available</font>";
                var current = "<font color=brown font-size=20px>This is you current username </font>";
                var alertmassage = "<font color=blue font-size=20px>Please write your username</font>";
                if (validusername) {
                    $.ajax({
                        url: "{{ route('frontend.username.valid') }}",
                        type: "POST",
                        data: {
                            username: validusername,
                            "_token": "{{ csrf_token() }}",
                        },
                        success: function(data) {

                            console.log(data);

                            if (data.result == 1) {
                                $("#response").html(incorrect);
                                // toasrt alert
                                toastr.error(data.success, 'Success', {
                                    closeButton: true,
                                    progressBar: true,
                                });

                            } else if (data.result == 3) {

                                $("#response").html(current);
                                // toasrt alert
                                toastr.info(data.success, 'Success', {
                                    closeButton: true,
                                    progressBar: true,
                                });

                            } else {
                                $("#response").html(correct);
                                // toasrt alert
                                toastr.success(data.success, 'Success', {
                                    closeButton: true,
                                    progressBar: true,
                                });
                            }
                        },
                    });
                } else {
                    $("#response").html(alertmassage);
                    toastr.error('Please write your username', 'Success', {
                        closeButton: true,
                        progressBar: true,
                    });
                }
            });
        });
    </script>
    <script src="{{ asset('frontend') }}/js/plugins/passwordType.js"></script>

    <script src="{{ asset('backend/dist/js/ckeditor.js') }}"></script>
    <script>
        ClassicEditor
            .create(document.querySelector('#bio'), {
                toolbar: ['heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote'],
                heading: {
                    options: [{
                            model: 'paragraph',
                            title: 'Paragraph',
                            class: 'ck-heading_paragraph'
                        },
                        {
                            model: 'heading1',
                            view: 'h1',
                            title: 'Heading 1',
                            class: 'ck-heading_heading1'
                        },
                        {
                            model: 'heading2',
                            view: 'h2',
                            title: 'Heading 2',
                            class: 'ck-heading_heading2'
                        }
                    ]
                },

            })
            .catch(error => {
                console.error(error);
            });
    </script>
@endpush
