<form class="form-horizontal" action="{{ route('admin.about.update') }}" method="POST" enctype="multipart/form-data">
    @method('PUT')
    @csrf
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="about background" />
                    <input type="file" class="form-control dropify" data-default-file="{{ $aboutBackground }}"
                        name="about_background" autocomplete="image" data-allowed-file-extensions="jpg png jpeg"
                        accept="image/png, image/jpg, image/jpeg">
            </div>
            <div class="form-group">
                <x-forms.label name="about body" />
                    <textarea id="about_ck" class="form-control" name="about body"
                        placeholder="{{ __('write the answer') }}">{{ $aboutcontent }}</textarea>
                    @error('about_body')
                        <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                    @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="">About Body Latvian</label>
                    <textarea id="about_ck_lt" class="form-control" name="about_body_lt"
                        placeholder="{{ __('write the answer') }}">{{ $cms->about_body_lt }}</textarea>
                    @error('about_body_lt')
                        <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                    @enderror
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-6 offset-3 ">
            <button type="submit" class="btn btn-success">
                <i class="fas fa-sync"></i> {{ __('update about setting') }}
            </button>
        </div>
    </div>
</form>
