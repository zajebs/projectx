@extends('layouts.frontend.layout_one')

@section('title', __('my_ads'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_my_ads_background">
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
                <a class="breedcrumb__page-link text--body-3">{{ __('my_ads') }}</a>
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
                <div class="col-xl-2 d-none d-xl-block">
                    @include('layouts.frontend.partials.dashboard-sidebar')
                </div>
                <div class="col-xl-10">
                    <table class="table table-bordared">
                        <thead class="text-center">
                            <th>Image</th>
                            <th>Title</th>
                            <th>Sold Price</th>
                            <th>Offer Price</th>
                            <th>Request Status</th>
                            <th>Product Status</th>
                            <th>Actions</th>
                        </thead>
                        <tbody class="text-center">
                            @foreach ($requestedProducts as $requestedProduct)
                                <tr>
                                    <td>
                                        <img src="{{ getPhoto($requestedProduct->ads->thumbnail) }}" alt="product"
                                            style="width: 70px; border-radius:10%; height:70px" />
                                    </td>
                                    <td>{{ Str::limit($requestedProduct->ads->title, 100, '...') }}</td>
                                    <td>${{ $requestedProduct->ads->is_smart_price ? $requestedProduct->ads->smart_price : $requestedProduct->ads->is_smart_price }}
                                    </td>
                                    <td>${{ $requestedProduct->offer_price }}</td>
                                    <td>

                                        @if ($requestedProduct->status)
                                            <p class="text-success">Approved</p>
                                        @else
                                            <p class="text-danger">Pending</p>
                                        @endif
                                    </td>
                                    <td>
                                        @if ($requestedProduct->ads->status == 'active')
                                            <p class="text-success">Active</p>
                                        @elseif ($requestedProduct->ads->status == 'pending')
                                            <p class="text-warning">Pending</p>
                                        @else
                                            <p class="text-danger">Sold</p>
                                        @endif
                                    </td>
                                    <td>

                                        <div class="card-edit__item product-action">
                                            <ul class="edit">
                                                <li class="edit-icon">
                                                    <span class="icon-toggle">
                                                        <x-svg.three-dots-icon />
                                                    </span>

                                                    <ul class="edit-dropdown">
                                                        <li class="edit-dropdown__item">
                                                            <a href="{{ route('frontend.addetails', $requestedProduct->ads->slug) }}"
                                                                class="edit-dropdown__link">
                                                                <span class="icon">
                                                                    <x-svg.eye-icon stroke="currentColor" width="20"
                                                                        height="20" />
                                                                </span>
                                                                <h5 class="text--body-4">{{ __('view ads details') }}</h5>
                                                            </a>
                                                        </li>


                                                        <li class="edit-dropdown__item">
                                                            <form
                                                                action="{{ route('frontend.myRequestedProductUpdate', ['requestedProduct' => $requestedProduct->id]) }}"
                                                                method="post" class="edit-dropdown__link">
                                                                @method('put')
                                                                @csrf
                                                                <button type="submit" class="d-flex align-items-center">
                                                                    <span class="icon">
                                                                        <x-svg.check-mark-icon />
                                                                    </span>
                                                                    <h5 class="text--body-4">{{ __('make it active') }}
                                                                    </h5>
                                                                </button>
                                                            </form>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="page-navigation">
                    {{ $requestedProducts->links() }}
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- dashboard section end  -->

@endsection

@section('adlisting_style')
    <link rel="stylesheet" href="{{ asset('frontend/style.css') }}">
    <style>
        .card-edit__item {
            text-align: center;
        }


        .header-table {
            position: relative;
            min-height: 45px;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .dashboard__myads .header-table {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            margin-top: 32px;
            background-color: #fff;
            -webkit-box-shadow: 0px -1px 0px 0px #ebeef7 inset;
            box-shadow: 0px -1px 0px 0px #ebeef7 inset;
        }
    </style>

@endsection

@section('scripts')
    <script src="{{ asset('frontend') }}/js/plugins/bvselect.js"></script>
    <script>
        var category = new BVSelect({
            selector: '#myadFilterCategory',
            searchbox: false,
            offset: false,
            placeholder: 'All category',
            search_autofocus: true,
            breakpoint: 450,
        });
        var sortBy = new BVSelect({
            selector: '#sortByFilter',
            searchbox: false,
            offset: false,
            placeholder: 'Sort By',
            search_autofocus: true,
            breakpoint: 450,
        });

        // Cards Edit menu
        var editBtn = document.querySelectorAll('#edit');
        if (editBtn) {
            editBtn.forEach((item) => {
                item.addEventListener('click', () => {
                    item.classList.toggle('active');
                });
            });
        }
    </script>
@endsection
