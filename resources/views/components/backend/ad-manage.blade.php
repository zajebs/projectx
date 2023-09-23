<table class="table table-hover text-nowrap table-bordered">
    <thead>
        <tr class="text-center">
            <th width="2%">#</th>
            <th width="5%">{{ __('thumbnail') }}</th>
            <th width="10%">{{ __('name') }}</th>
            <th width="10%">{{ __('price') }}</th>
            @if ($showCategory)
                <th width="10%">{{ __('category') }}</th>
            @endif
            @if ($showCity)
                <th width="10%">{{ __('country') }}</th>
            @endif
            @if ($showCustomer)
                <th width="10%">{{ __('author') }}</th>
            @endif
            <th width="10%">{{ __('status') }}</th>
            <th width="10%">{{ __('Validity') }}</th>
            <th width="5%">{{ __('actions') }}</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($ads as $key =>$ad)
            <tr>
                <td class="text-center" tabindex="0">
                    {{ $key + 1 }}
                </td>
                <td class="text-center" tabindex="0">
                    <img src="{{ getPhoto($ad->thumbnail) }}" class="rounded" height="50px" width="50px"
                        alt="image">
                </td>
                <td tabindex="0">
                    {{ $ad->title }}
                    @if ($ad->featured)
                        <span class="badge badge-warning">
                            {{ __('featured') }}
                        </span>
                    @endif
                    @if ($ad->popular)
                        <span class="badge badge-info">
                            {{ __('popular') }}
                        </span>
                    @endif
                    @if ($ad->trending)
                        <span class="badge badge-secondary">
                            {{ __('trending') }}
                        </span>
                    @endif
                </td>
                <td class="text-center" tabindex="0">
                    {{ onlyCurrencySymbol() }} {{ $ad->price }}
                </td>
                @if ($showCategory)
                    <td tabindex="0">
                        <a
                            href="{{ route('module.category.show', $ad->category->slug) }}">{{ $ad->category->name }}</a>
                        <br>
                        <small>{{ $ad->subcategory->name ?? '' }}</small>
                        <br>
                        <small>{{ $ad->childcategory->name ?? '' }}</small>
                    </td>
                @endif
                @if ($showCity)
                    <td class="text-center" tabindex="0">
                        <a href="{{ route('module.ad.index', ['country' => $ad->country]) }}">
                            {{ $ad->adCountry->locations ?? "" }}
                        </a>
                    </td>
                @endif
                @if ($showCustomer)
                    <td class="text-center" tabindex="0">
                        <a href="{{ route('module.customer.show', ['customer' => $ad->customer->username]) }}">
                            {{ $ad->customer->username }}
                        </a>
                    </td>
                @endif
                <td class="text-center" tabindex="0">
                    <button type="button"
                        class="dropdown-toggle btn-sm btn btn-{{ $ad->status == 'active' ? 'success' : ($ad->status == 'pending' ? 'warning' : 'secondary') }}"
                        data-toggle="dropdown" aria-expanded="false">
                        {{ ucfirst($ad->status) }}
                    </button>
                    <ul class="dropdown-menu" x-placement="bottom-start"
                        style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 38px, 0px);">
                        @if ($ad->status == 'pending' || $ad->status == 'sold' || $ad->status == 'declined')
                            <li><a onclick="return confirm('Are you sure to perform this action?')"
                                    class="dropdown-item"
                                    href="{{ route('module.ad.status', [$ad->slug, 'active']) }}">
                                    <i class="fas fa-check text-success"></i> {{ __('mark as active') }}
                                </a>
                            </li>
                        @endif
                        @if ($ad->status == 'active')
                            <li><a onclick="return confirm('Are you sure to perform this action?')"
                                    class="dropdown-item" href="{{ route('module.ad.status', [$ad->slug, 'sold']) }}">
                                    <i class="fas fa-hourglass-end text-danger"></i> {{ __('mark as sold') }}
                                </a>
                            </li>
                        @endif
                        @if ($ad->status == 'pending' && $settings->ads_admin_approval)
                            <li><a onclick="return confirm('Are you sure to perform this action?')"
                                    class="dropdown-item"
                                    href="{{ route('module.ad.status', [$ad->slug, 'declined']) }}">
                                    <i class="fas fa-times text-danger"></i> {{ __('mark as declined') }}
                                </a>
                            </li>
                        @endif
                    </ul>
                </td>
                <td>
                    @if ($ad->status == 'active')
                        @if ($ad->validity > now())
                            <span class="text-success">
                                {{ now()->diffInDays(Carbon\Carbon::parse($ad->validity)) + 1 }} Days
                            </span>
                        @else
                            <span class="text-danger">
                                Expired
                            </span>
                        @endif
                    @else
                        N/A
                    @endif
                </td>
                <td class="text-center" tabindex="0">
                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                        aria-expanded="false">
                        {{ __('options') }}
                    </button>
                    <ul class="dropdown-menu" x-placement="bottom-start"
                        style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 38px, 0px);">
                        <li><a class="dropdown-item" href="{{ route('module.ad.show', $ad->slug) }}">
                                <i class="fas fa-eye text-info"></i> {{ __('view details') }}
                            </a></li>
                        <li><a class="dropdown-item" href="{{ route('frontend.addetails', $ad->slug) }}">
                                <i class="fas fa-link text-secondary"></i> {{ __('website link') }}
                            </a>
                        </li>
                        <li><a class="dropdown-item" href="{{ route('module.ad.edit', $ad->id) }}">
                                <i class="fas fa-edit text-success"></i> {{ __('edit ad') }}
                            </a>
                        </li>
                        <li><a class="dropdown-item" href="{{ route('module.ad.show_gallery', $ad->id) }}">
                                <i class="fas fa-images text-warning"></i></i> {{ __('ad gallary') }}
                            </a>
                        </li>
                        {{-- <li><a class="dropdown-item"
                                href="{{ route('module.ad.custom.field.value.edit', $ad->id) }}">
                                <i class="fas fa-edit text-info"></i> {{ __('edit custom fields') }}
                            </a>
                        </li>
                        <li><a class="dropdown-item"
                                href="{{ route('module.ad.custom.field.value.sorting', $ad->id) }}">
                                <i class="fas fa-arrows-alt text-warning"></i> {{ __('sorting custom fields') }}
                            </a>
                        </li> --}}
                        {{-- <li>
                            <form action="{{ route('module.ad.destroy', $ad->id) }}" method="POST" class="d-inline">
                                @method('DELETE')
                                @csrf
                                <button type="submit" class="dropdown-item"
                                    onclick="return confirm('{{ __('are you sure want to delete this item') }}?');">
                                    <i class="fas fa-trash text-danger"></i> {{ __('delete ad') }}
                                </button>
                            </form>
                        </li> --}}
                    </ul>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="10" class="text-center">
                    {{-- <x-not-found word="Ad" route="module.ad.create" /> --}}
                    <a href="javascript:;" class="text-danger">
                        There is no ads found in this page
                    </a>
                </td>
            </tr>
        @endforelse
    </tbody>
</table>
