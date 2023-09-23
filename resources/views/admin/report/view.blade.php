@extends('admin.layouts.app')

@section('title')
    {{ __('seller report') }}
@endsection

<style>
    tr td {
        padding: 13px 16px 0px 0px;
    }
</style>

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center justify-content-between">
                            <h3 class="card-title" style="line-height: 36px;">{{ __('seller report') }}</h3>
                            <a href="{{ route('report.index') }}" class="btn bg-primary float-right d-flex align-items-center justify-content-center"><i class="fas fa-arrow-left"></i>&nbsp; Back</a>
                        </div>
                    </div>
                    <div class="card-body table-responsive p-3">
                        <table>
                            <tr>
                                <td width="15%">{{ __('report to') }}</td>
                                <td>
                                    @isset($report->reportTo->username)
                                        <a href="{{ route('module.customer.show', $report->reportTo->username) }}">{{ $report->reportTo->name }}</a>
                                    @endisset
                                </td>
                            </tr>
                            <tr>
                                <td>{{ __('report from') }}</td>
                                <td>
                                    @isset($report->reportTo->username)
                                        <a href="{{ route('module.customer.show', $report->reportTo->username) }}">{{ $report->reportFrom->name }}</a>
                                    @endisset
                                </td>
                            </tr>
                            <tr>
                                <td>{{ __('reason') }}</td>
                                <td>{{ $report->reason }}</td>
                            </tr>
                            <tr>
                                <td>{{ __('note') }}</td>
                                 <td>{{ $report->commends }}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
