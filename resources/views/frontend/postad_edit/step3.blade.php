@extends('frontend.postad.index')

@section('title')
{{ __('edit_ad') }} ({{ __('steps03') }}) - {{ $ad->title }}
@endsection

@section('post-ad-content')
<!-- Steop 03 -->
<div class="tab-pane fade show active" id="pills-advance" role="tabpanel" aria-labelledby="pills-advance-tab">
    <div class="dashboard-post__step02 step-information">
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
        <form action="{{ route('frontend.post.step3.update', $ad->slug) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="input-field--textarea">
                <x-forms.label name="ad_description" for="description" required="true" />
                <textarea readonly name="description" placeholder="{{ __('your_thought') }}..." id="description"
                    class="@error('description') border-danger @enderror">{{ $ad->description }}</textarea>
            </div>
            <div class="input-field--textarea">
                <x-forms.label name="feature" for="feature" />
                <div id="multiple_feature_part">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="input-field">
                                <input name="features[]" type="text" placeholder="{{ __('feature') }}" id="adname"
                                    class="@error('title') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-lg-2 mt-10">
                            <a role="button" onclick="add_features_field()" class="btn bg-primary btn-sm text-light"><i
                                    class="fas fa-plus"></i></a>
                        </div>
                    </div>
                    @foreach ($ad->features as $feature)
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="input-field">
                                <input value="{{ $feature->name }}" name="features[]" type="text"
                                    placeholder="{{ __('feature') }}" id="adname"
                                    class="@error('title') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-lg-2 mt-10">
                            <button onclick="remove_single_field()" id="remove_item"
                                class="btn btn-sm bg-danger text-light"><i class="fas fa-times"></i></button>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>


            <div class="input-field--textarea">
                <x-forms.label name="Tags" for="feature" />
                <div id="tags">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="input-field">

                                <input type="text" name="tags" class="form-control tags" placeholder="" value="@foreach ($ad->adTags as $tags)
                                    {{ $tags->tag_name }}, @endforeach">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="upload-wrapper">

                <div class="mb-3">

                    <h3>{{ __('thumbnail') }} <span class="text-danger">{{ __('you_must_upload_at_least') }}. {{ __('image_must_be_in_jpg_jpeg_png_format') }}</span></h3>

                    <div class="thumb-images"></div>
                </div>

                <div>
                    <h3>{{ __('upload_photos') }} <span class="text-danger">{{ __('you_must_upload_at_least') }}. {{ __('image_must_be_in_jpg_jpeg_png_format') }}</span></h3>
                    <div class="input-images"></div>
                </div>

            </div>
            <div class="dashboard-post__ads-bottom">
                <div class="form-check">
                </div>
                <div class="dashboard-post__action-btns">
                    <a onclick="return confirm('Do you really want to go previous page? If you go then your step 3 data wont save!')"
                        href="{{ route('frontend.post.step2.back', $ad->slug) }}" class="btn btn--lg btn--outline">
                        {{ __('previous') }}
                    </a>
                    <button type="submit" class="btn btn--lg">
                        {{ __('finish_update') }}
                        <span class="icon--right">
                            <x-svg.right-arrow-icon />
                        </span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection


@section('frontend_style')
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
</style>
@endsection

@section('scripts')
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

        let prelodedThumb = [{
            id: "{{ $ad->id }}",
            src: "{{ getPhoto($ad->thumbnail) }}"
        }, ];
        $('.thumb-images').imageUploader({
            preloaded: prelodedThumb,
            imagesInputName: 'thumbnail',
            preloadedInputName: 'old',
            maxSize: 2 * 1024 * 1024,

        });
</script>




<script src="{{ asset('frontend/js/plugins/tags/tagify.js') }}"></script>
<script src="{{ asset('frontend/js/plugins/tags/tagify.polyfills.min.js') }}"></script>

<script>
    var input = document.querySelector('.tags');

        // initialize Tagify on the above input node reference
        new Tagify(input)
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
