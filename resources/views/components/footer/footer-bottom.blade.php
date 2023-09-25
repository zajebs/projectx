@php
    $categories = Modules\Category\Entities\Category::where('status', 1)->get();
    $cms = DB::table('cms')->first();
@endphp
<footer class="footer_section">
    <div class="container">
        <!-- footer widgets -->
        <div class="row g-0 justify-content-between footer_widgets">
            <div class="col-lg-9">
                <div class="row g-0 justify-content-between">
                    <div class="col-lg-3 col-md-12">
                        <div class="footer_widget logo_widget mt_60">
                            <a href="{{ route('frontend.index') }}" class="footer_logo mb-5"><img
                                    src="{{ asset('frontend') }}//footer-logo.svg" alt="" class="img-fluid"></a>
                            <ul class="social_links">
                                <li class="me-4"><a href="{{ $settings->facebook }}" target="_blank"><i
                                            class="fab fa-facebook-f"></i></a></li>
                                <li><a href="mailto:{{ $settings->gmail }}" target="_blank"><i
                                            class="fa fa-envelope"></i></a>
                                </li>
                                <br>
                                <br>
                                <li class="me-4"><a href="{{ $settings->instagram }}" target="_blank"><i
                                            class="fa-brands fa-instagram"></i></a></li>
                                <li><a href="{{ $settings->tiktok }}" target="_blank"><i
                                            class="fa-brands fa-tiktok"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 mt-4 mt-lg-0">
                        <div class="footer_widget mt_60">
                            <h4>
                                <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">{{ __('categories') }}</font>
                                </font>
                            </h4>
                            <ul class="footer_links">
                                @foreach ($categories as $category)
                                    <li>
                                        <a
                                            href="{{ route('frontend.adlist.search', ['category' => $category->slug]) }}">
                                            {{ __($category->name) }}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
                        <div class="footer_widget mt_60">
                            <h4>
                                <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">{{ __('quick_links') }}</font>
                                </font>
                            </h4>
                            <ul class="footer_links">
                                <li><a href="{{ route('frontend.about') }}"
                                        style="text-transform: uppercase;">{{ __('about_us') }}</a></li>
                                <li><a href="{{ route('frontend.adlist') }}"
                                        style="text-transform: uppercase;">{{ __('shop') }}</a></li>
                                <li><a href="{{ route('frontend.blog') }}"
                                        style="text-transform: uppercase;">{{ __('blog') }}</a></li>
                                <li><a href="{{ route('frontend.faq') }}"
                                        style="text-transform: uppercase;">{{ __('faq') }}</a></li>
                                <li><a href="{{ route('frontend.privacy') }}"
                                        style="text-transform: uppercase;">{{ __('privacy_policy') }}</a></li>
                                <li><a href="{{ route('frontend.terms') }}"
                                        style="text-transform: uppercase;">{{ __('terms_conditions') }}</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 mt-4 mt-lg-0">
                        <div class="footer_widget mt_60">
                            <h4>
                                <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">{{ __('contact') }}</font>
                                </font>
                            </h4>
                            <ul class="footer_links">
                                <li class="mb-2" style="text-transform: uppercase;">
                                    <span>{{ __('phone_number') }}</span>
                                    <a href="tel:{{ $cms->contact_number }}">
                                        <strong>{{ $cms->contact_number }}</strong>
                                    </a>
                                </li>
                                <li class="mb-2" style="text-transform: uppercase;">
                                    <span>{{ __('email') }}:</span>
                                    <a href="mailto:{{ $cms->contact_email }}">
                                        <span><strong>{{ $cms->contact_email }}</strong></span>
                                    </a>
                                </li>
                                <li class="address" style="text-transform: uppercase;">
                                    {{ $cms->contact_address }}
                                </li>
                            </ul>
                            <div class="footer_images" style="text-align: center; padding-top: 20px;">
                            <div style="display: flex; justify-content: space-between;">
    <a href="https://itunes.apple.com" target="_blank">
        <img src="https://miro.medium.com/v2/resize:fit:600/format:webp/1*xqT83bMEz92IBYxS9UQNow.png" alt="Bilde 1" style="width: 90%; margin-right: 5%;">
    </a>

    <a href="https://play.google.com/store/ target="_blank">
        <img src="https://miro.medium.com/v2/resize:fit:600/format:webp/1*nZu0dsnlCQltPT1QMCHFAA.png" alt="Bilde 2" style="width: 90%;">
    </a>
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 mt-4 mt-lg-0">
                <div class="footer_widget mt_60">
                    <h4>{{ __('subscribe_for_newsletter') }}</h4>
                    <p class="mb-4">
                        <font style="vertical-align: inherit;">
                            <font style="vertical-align: inherit;">
                                {{ __('subscribe_us') }}
                            </font>
                        </font>
                    </p>
                    <form class="subs_form" action="{{ route('newsletter.subscribe') }}" method="POST">
                        @csrf
                        <div class="input-group">
                            <input type="email" name="sub_email" id="email" class="form-control"
                                placeholder="{{ __('subscribe') }}" required>

                            <button type="submit" class="btn btn-outline-dark input-group-text">
                                {{-- <i class="fas fa-right-to-bracket"></i> --}}
                                {{-- <i class="fa-solid fa-arrow-right fa-xl"></i> --}}
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.59 14.37a6 6 0 01-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 006.16-12.12A14.98 14.98 0 009.631 8.41m5.96 5.96a14.926 14.926 0 01-5.841 2.58m-.119-8.54a6 6 0 00-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 00-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 01-2.448-2.448 14.9 14.9 0 01.06-.312m-2.24 2.39a4.493 4.493 0 00-1.757 4.306 4.493 4.493 0 004.306-1.758M16.5 9a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z" />
                                  </svg>

                            </button>
                        </div>
                        @error('sub_email')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </form>
                </div>
            </div>
        </div>
        <!-- Copyright -->
        <div class="row align-items-center copyright">
            <div class="col-8">
                <p>2life.lv &copy; {{ date('Y') }}</p>
            </div>
            <div class="col-4 text-end">
                <img src="{{ asset('frontend') }}/cards-logos.svg" alt="" class="card_logos">
            </div>
        </div>
    </div>
</footer>
