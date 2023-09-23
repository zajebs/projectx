@extends('layouts.frontend.layout_one')

@section('title', __('contact'))

@section('meta')
    @php
        $data = metaData('contact');
    @endphp

    <meta name="title" content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif">
    <meta name="description"
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif">

    <meta property="og:image" content="{{ $data->image_url }}" />
    <meta property="og:site_name" content="{{ config('app.name') }}">
    <meta property="og:title"
        content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif">
    <meta property="og:url" content="{{ route('frontend.contact') }}">
    <meta property="og:type" content="article">
    <meta property="og:description"
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif">

    <meta name=twitter:card content={{ $data->image_url }} />
    <meta name=twitter:site content="{{ config('app.name') }}" />
    <meta name=twitter:url content="{{ route('frontend.contact') }}" />
    <meta name=twitter:title
        content="@if (currentLanguage()->code == 'lv') {{ $data->title_lv }} @else {{ $data->title }} @endif" />
    <meta name=twitter:description
        content="@if (currentLanguage()->code == 'lv') {{ $data->description_lv }} @else {{ $data->description }} @endif" />
    <meta name=twitter:image content="{{ $data->image_url }}" />
@endsection

@section('content')
    <section class="section contact">
        <div class="container">
            <div class="contact">
                <div class="contact_form" style="margin-top: 100px;">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="header_content mb-4">
                                <h2>{{ __('contact us') }}</h2>
                                <h5>{{ __('how can we help?') }}</h5>
                            </div>
                            <div class="form">
                                <form action="{{ route('frontend.contactForm') }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('name') }}</label>
                                        <input type="text" name="name" id="name" class="form-control"
                                            placeholder="Your Name">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('email address') }}</label>
                                        <input type="text" name="email" id="email" class="form-control"
                                            placeholder="email@example.com" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('listing uRL') }}</label>
                                        <input type="text" name="listing_url" id="listing_url" class="form-control"
                                            placeholder="https://www.grailed.com/listing/my-listing-id" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('i need help with') }}</label>
                                        <select name="help" id="help" class="form-control" required>
                                            <option value="">{{ __('select category') }}</option>
                                            @foreach ($contactHelps as $contactHelp)
                                                <option value="{{ $contactHelp->id }}">{{ $contactHelp->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('request reason') }}</label>
                                        <select name="reason" id="reason" class="form-control" required>

                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('screenshot') }}</label><br />
                                        <label class="input_file form-label">
                                            <span id="upload_pic">{{ __('Upload photo') }}</span>
                                            <input type="file" onchange="loadFile(event)" name="image" id="image"
                                                class="d-none">
                                        </label>
                                        <img id="preview" src="" alt="">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">{{ __('describe your issue in a few words') }}</label>
                                        <textarea required name="message" id="message" cols="30" rows="3" class="form-control"
                                            placeholder="If this is about an item you have purchased or sold, please include a link or screenshot to the listing."></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-success">{{ __('send') }}</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
