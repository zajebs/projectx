<form class="form-horizontal" action="{{ route('admin.home.update') }}" method="POST" enctype="multipart/form-data">
    @method('PUT')
    @csrf
<!--     <div class="row justify-content-between">
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="home main banner" />
                <div class="row">
                    <input type="file" class="form-control dropify" data-default-file="{{ $cms->home_main_banner }}"
                        name="home_main_banner" autocomplete="image" data-allowed-file-extensions="jpg png jpeg"
                        accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="home counter background" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->home_counter_background }}" name="home_counter_background"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg"
                        accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="home mobile app banner" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->home_mobile_app_banner }}" name="home_mobile_app_banner"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg"
                        accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
    </div> -->
    <div class="row">
     <!--    <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="home title" />
                <textarea class="form-control" name="home_title" rows="4">{{ $cms->home_title }}</textarea>
                @error('home_title')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="home description" />
                <div class="row">
                    <textarea class="form-control" name="home_description" rows="4">{{ $cms->home_description }}</textarea>
                    @error('home_description')
                        <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                    @enderror
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="download app content" />
                <textarea class="form-control" name="download_app" rows="4">{{ $cms->download_app }}</textarea>
                @error('download_app')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="newsletter content" />
                <textarea class="form-control" name="newsletter_content" rows="4">{{ $cms->newsletter_content }}</textarea>
                @error('newsletter_content')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="membership content" />
                <textarea class="form-control" name="membership_content" rows="4">{{ $cms->membership_content }}</textarea>
                @error('membership_content')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="create account content" />
                <textarea class="form-control" name="create_account" rows="4">{{ $cms->create_account }}</textarea>
                @error('create_account')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="post ads content" />
                <textarea class="form-control" name="post_ads" rows="4">{{ $cms->post_ads }}</textarea>
                @error('post_ads')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="start earning content" />
                <textarea class="form-control" name="start_earning" rows="4">{{ $cms->start_earning }}</textarea>
                @error('start_earning')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-8 ">
            <button type="submit" class="btn btn-success">
                <i class="fas fa-sync"></i> {{ __('update home settings') }}
            </button>
        </div>
    </div>
</form>
