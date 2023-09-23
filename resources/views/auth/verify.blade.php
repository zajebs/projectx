@extends('layouts.frontend.layout_one')

@section('content')
    <div class="slide_banner">
        <div class="container">
        </div>
    </div>
    <div class="section recent-post">
        <div class="container">
            <div class="product_wrapper">
                <div class="deals_product">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <div class="card">
                                <div class="card-header">
                                    {{ __('email.verify_title') }}
                                </div>
                                <div class="card-body text-center">
                                    @if (session('resent'))
                                        <div class="alert alert-success" role="alert">
                                            {{ __('email.fresh_verification_link') }}
                                        </div>
                                    @endif

                                    {{ __('email.check_email_for_verification') }}
                                    <br>
                                    <br>
                                    {{ __('email.didnt_receive_email') }},
                                    <br>
                                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                                        @csrf
                                        <button type="submit" class="btn p-2 mt-2 align-baseline">
                                            {{ __('email.click_to_request_another') }}
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
