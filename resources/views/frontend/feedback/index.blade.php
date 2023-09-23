@extends('layouts.frontend.layout_one')

@section('title', __('Revirw'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_post_ads_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('Withdraw') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <!-- dashboard section start  -->
    <section class="section dashboard">
        <div class="container">
            <div class="row">
                @include('layouts.frontend.partials.dashboard-header')
                <div class="col-xl-2">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            @forelse ($reviews as $review)

                                <div class="feedback_product">
                                    <div class="row g-0 position-relative">
                                        <div class="col-md-8 mb-md-0 p-md-4">
                                            <div class="product_content">
                                                <h4>{{ date('F D,Y', strtotime($review->created_at)) }}</h4>
                                                <p>
                                                    @for ($i = 0; $i < $review->stars; $i++)
                                                        <i class="fa fa-star"></i>
                                                    @endfor

                                                </p>
                                                <ul>
                                                    @if ($review->fastShipper)
                                                        <li>Fast Shipper</li>
                                                    @endif
                                                    @if ($review->itemAsDescribed)
                                                        <li>Item As Described</li>
                                                    @endif
                                                    @if ($review->quickReplies)
                                                        <li>Quick Replies</li>
                                                    @endif
                                                </ul>
                                                <h3><a
                                                        href="{{ route('frontend.adlist.search', ['category' => $review->ads->category->slug]) }}">{{ $review->ads->category->name }}
                                                        ×</a><a
                                                        href="{{ route('frontend.adlist.search', ['subcategory' => $review->ads->subcategory->slug]) }}">{{ $review->ads->subcategory->name }}
                                                        ×</a><a
                                                        href="{{ route('frontend.adlist.search', ['childcategory[]' => $review->ads->childcategory->slug]) }}">{{ $review->ads->childcategory->name }}</a></a>
                                                </h3>
                                                <h5><a
                                                        href="{{ route('frontend.addetails', ['ad' => $review->ads->slug]) }}">{{ $review->ads->title }}</a>
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="col-md-4 p-4 ps-md-0">
                                            <div class="product_img text-center">
                                                <a href="{{ route('frontend.addetails', ['ad' => $review->ads->slug]) }}"><img
                                                        src="{{ getPhoto($review->ads->thumbnail) }}" width="133"
                                                        class="flex-shrink-0" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <h3 class="text-center">No Review</h3>
                            @endforelse


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
