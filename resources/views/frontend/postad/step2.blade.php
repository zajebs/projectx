@extends('frontend.postad.index')

@section('title', __('step2'))

@section('post-ad-content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <!-- Step 02 -->
    <div class="tab-pane fade show active" id="pills-post" role="tabpanel" aria-labelledby="pills-post-tab">
        <div class="dashboard-post__ads step-information">

            <form action="{{ route('frontend.post.step2.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" class="d-none" name="category" value="{{ $category->id }}">
                <input type="hidden" class="d-none" name="subcategory_id" value="{{ $subcategory_id->id }}">
                <input type="hidden" class="d-none" name="child_category" value="{{ $child_category->id }}">

                {{--  
                <div class="input-field__group">
                    <div class="input-field">
                        <input type="hidden" name="show_phone" id="show_phone" value="1">
                        <label for="phone_number">{{ __('phone number') }} <span class="text-danger">*</span>
                            <span>(
                                <input type="checkbox" name="show_phone" id="show_phone_number" value="0"
                                    {{ !$ad->show_phone ? 'checked' : '' ?? '' }}> <label
                                    for="show_phone_number">{{ __('hide in details') }}</label>
                                )</span>
                        </label>
                        <input name="phone" id="phoneNumber" type="tel" placeholder="{{ __('phone') }}"
                            value="{{ $ad->phone ?? '' }}" class="@error('phone') border-danger @enderror"  required/>
                            @error('phone')

                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                    </div>
                    <div class="input-field">
                        <x-forms.label name="backup_phone_number" for="backupPhone" :required="false" />
                        <input name="phone_2" id="backupPhone" type="tel" class="backupPhone"
                            placeholder="{{ __('phone number') }}" value="{{ $ad->phone_2 ?? '' }}" />
                            @error('phone_2')

                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                    </div>
                </div>
                <div class="input-field__group">
                    <div class="input-field">
                        <x-forms.label name="whatsapp_number" for="whatsapp_url" :required="false">
                            (<a href="https://faq.whatsapp.com/iphone/how-to-link-to-whatsapp-from-a-different-app/?lang=en"
                                target="_blank">{{ __('get help') }}</a>)
                        </x-forms.label>
                        <input name="whatsapp" id="whatsapp_url" type="number" class="backupPhone"
                            placeholder="E.g: 1687******" value="{{ $ad->whatsapp ?? '' }}" />
                            @error('whatsapp')

                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                    </div>
                </div>
                --}}

                <div class="row">
                    <strong>
                        <x-forms.label name="Shipping From" :required="false" />
                    </strong>

                    <div class="col-12 col-md-6">
                        <div class="input-field__group">
                            <div class="input-field">
                                <x-forms.label name="Street address" for="address" :required="true" />
                                <input name="address" id="address" type="text" class="" placeholder=""
                                    value="{{ old('address') ?? '' }}" required />
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
                                <input name="apartment" id="apartment" type="text" class="" placeholder=""
                                    value="{{ old('apartment') ?? '' }}" />
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
                                <input name="city" id="city" type="text" class="" placeholder=""
                                    value="{{ old('city') ?? '' }}" required />
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
                                <input name="state" id="state" type="text" class="" stateholder=""
                                    value="{{ old('state') ?? '' }}" required />
                                @error('state')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    {{-- <div class="col-12 col-md-6">
                            <div class="input-field__group">
                                <div class="input-field">
                                    <x-forms.label name="district" for="district" :required="true"/>
                                    <input name="district"  id="district" type="text" class="" placeholder="" value="{{old('district') ?? ''}}" />
                                    @error('district')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div> --}}

                    {{-- <div class="col-12 col-md-6">
                            <div class="input-field__group">
                                <div class="input-field">
                                    <x-forms.label name="region" for="region" :required="true"/>
                                    <input name="region"  id="region" type="text" class="" placeholder="" value="{{old('region') ?? ''}}" />
                                    @error('region')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div> --}}

                    <div class="col-12 col-md-6">
                        <div class="input-field__group">
                            <div class="input-field">
                                <x-forms.label name="country" for="country" :required="true" />
                                <select name="country" id="" required>
                                    <option value="">Select Country</option>

                                    @foreach ($locations as $location)
                                        <option value="{{ $location->id }}">{{ $location->locations }}</option>
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
                                <input name="postcode" id="postcode" type="text" class="" placeholder=""
                                    value="{{ old('postcode') ?? '' }}" required />
                                @error('postcode')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>


                </div>



                @if (isset($category->customFields) && $category->customFields->count() > 0)


                    <h5 class="mt-3">
                        {{ __('custom fields') }}
                    </h5>
                    <hr>
                    <div class="row dashboard-post__information-form">
                        @foreach ($category->customFields as $field)
                            @if ($field->type == 'text')
                                <div class="col-md-6 input-field__group">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" for="" :required="$field->required" />
                                        <input value="{{ old($field->name) }}" type="text" name="{{ $field->slug }}"
                                            placeholder="{{ $field->name }}"
                                            class="form-control @error($field->slug) border-danger @enderror" />
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'select')
                                <div class="col-md-6 input-field__group">
                                    <div class="input-select">
                                        <x-forms.label name="{{ $field->name }}" for="select" :required="$field->required" />
                                        <select id="select" class="form-control" name="{{ $field->slug }}">
                                            @foreach ($field->values as $value)
                                                <option
                                                    {{ (old(ucfirst($field->value)) == ucfirst($value->value) ? 'selected' : $value->id == 1) ? 'selected' : '' }}
                                                    value="{{ $value->value }}">
                                                    {{ ucfirst($value->value) }}</option>
                                            @endforeach
                                        </select>
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'file')
                                <div class="col-md-6 input-field__group">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <input type="file" name="{{ $field->slug }}"
                                            class="form-control @error($field->slug) is-invalid @enderror custom-file-input"
                                            id="customFile">
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'textarea')
                                <div class="col-md-6 input-field__group">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <textarea name="{{ $field->slug }}" placeholder="{{ $field->name }}" cols="12" rows="2"
                                            id="description" class="form-control @error($field->slug) border-danger @enderror ">{{ old($field->slug) }}</textarea>
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'radio')
                                <div class="col-md-6">
                                    <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                    @foreach ($field->values as $value)
                                        <div class="form-check">
                                            <input
                                                {{ old(ucfirst($field->value)) == ucfirst($value->value) ? 'checked' : '' }}
                                                value="{{ ucfirst($value->value) }}" name="{{ $field->slug }}"
                                                type="radio" class="form-check-input"
                                                id="checkme{{ $value->id }}" />
                                            <x-forms.label name="{{ $value->value }}" :required="false"
                                                class="form-check-label" for="checkme{{ $value->id }}" />
                                        </div>
                                    @endforeach
                                    @error($field->slug)
                                        <span class="invalid-feedback">{{ $message }}</span>
                                    @enderror
                                </div>
                            @endif

                            @if ($field->type == 'url')
                                <div class="col-sm-6">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <input type="url" name="{{ $field->slug }}"
                                            class="form-control @error($field->slug) border-danger @enderror"
                                            value="{{ old($field->slug) }}" placeholder="{{ $field->name }}">
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'number')
                                <div class="col-sm-6">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <input min="1" type="number" name="{{ $field->slug }}"
                                            class="form-control @error($field->slug) border-danger @enderror"
                                            value="{{ old($field->slug) }}" placeholder="{{ $field->name }}">
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'date')
                                <div class="col-sm-6">
                                    <div class="input-field">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <input type="date" name="{{ $field->slug }}"
                                            class="form-control @error($field->slug) border-danger @enderror"
                                            value="{{ old($field->slug) }}" placeholder="{{ $field->name }}">
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif

                            @php
                                $fieldId = 'cf.' . $field->id;
                                $fieldName = 'cf[' . $field->id . ']';
                                $fieldOld = 'cf.' . $field->id;
                                $defaultValue = isset($oldInput) && isset($oldInput[$field->id]) ? $oldInput[$field->id] : '';
                            @endphp
                            @if ($field->type == 'checkbox')
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        <div class="row">
                                            @foreach ($field->values as $value)
                                                @if ($loop->first)
                                                    <input type="hidden" value="0" name="{{ $fieldName }}">
                                                    <div class="icheck-success d-inline">
                                                        <input {{ $defaultValue == '1' ? 'checked' : '' }} value="1"
                                                            name="{{ $fieldName }}" type="checkbox"
                                                            class="form-check-input" id="{{ $fieldId }}" />
                                                        <label class="form-check-label"
                                                            for="{{ $fieldId }}">{{ $value->value }}
                                                        </label>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($field->type == 'checkbox_multiple')
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <x-forms.label name="{{ $field->name }}" :required="$field->required" />
                                        @foreach ($field->values as $value)
                                            <div class="icheck-success">
                                                <input id="{{ $fieldId . '.' . $value->id }}"
                                                    name="{{ $fieldName . '[' . $value->id . ']' }}" type="checkbox"
                                                    value="{{ $value->id }}" class="form-check-input"
                                                    {{ $defaultValue == $value->id ? 'checked' : '' }} />
                                                <label class="form-check-label"
                                                    for="{{ $fieldId . '.' . $value->id }}">{{ $value->value }}
                                                </label>
                                            </div>
                                        @endforeach

                                        @error($field->slug)
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                        @endforeach
                    </div>


                @endif



                <div class="dashboard-post__action-btns">
                    <a href="{{ route('frontend.post.step1.back') }}" class="btn btn--lg btn--outline">
                        {{ __('previous') }}
                    </a>
                    <button type="submit" class="btn btn--lg">
                        {{ __('next step') }}
                        <span class="icon--right">
                            <x-svg.right-arrow-icon />
                        </span>
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
@section('adlisting_style')
    <!-- >=>Mapbox<=< -->
    <link rel="stylesheet" href="{{ asset('frontend/plugins/mapbox/mapbox-gl-geocoder.css') }}" type="text/css">
    <link href="{{ asset('frontend/plugins/mapbox/mapbox-gl.css') }}" rel="stylesheet">
    <style>
        .mymap {
            width: 100%;
            min-height: 300px;
            border-radius: 12px;
        }

        .p-half {
            padding: 1px;
        }

        .mapClass {
            border: 1px solid transparent;
            margin-top: 15px;
            border-radius: 4px 0 0 4px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 35px;
            outline: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        }

        #searchInput {
            font-family: 'Roboto';
            background-color: #fff;
            font-size: 16px;
            text-overflow: ellipsis;
            margin-left: 16px;
            font-weight: 400;
            width: 30%;
            padding: 0 11px 0 13px;
        }

        #searchInput:focus {
            border-color: #4d90fe;
        }
    </style>
    <!-- >=>Mapbox<=< -->
@endsection
