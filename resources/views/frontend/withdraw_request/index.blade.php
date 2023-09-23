@extends('layouts.frontend.layout_one')

@section('title', __('Withdraw'))

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
                    <div class="d-flex justify-content-end">
                        <a href="{{ route('frontend.withdrawRequestCreate') }}" class="btn">Make Request</a>
                    </div>
                    <table class="table table-oordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Amount</th>
                                <th>Request Date</th>
                                <th>Status</th>
                                <th>Approved Date</th>
                                <th>View</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($withdrawRequests as $withdrawRequest)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $withdrawRequest->amount }}</td>
                                    <td>{{ date('d-m-Y', strtotime($withdrawRequest->withdraw_request_date)) }}</td>
                                    <td>{{ $withdrawRequest->status ? 'Approved' : 'Pending' }}</td>
                                    <td>{{ $withdrawRequest->approved_date }}</td>
                                    <td>
                                        <a href="{{ route('frontend.withdrawRequestView', ['withdrawRequest' => $withdrawRequest->id]) }}"
                                            class="btn btn-sm"><i class="fas fa-eye"></i></a>
                                    </td>
                                </tr>
                            @empty
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard section end  -->
@endsection
