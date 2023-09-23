@extends('layouts.frontend.layout_one')
@section('title', __('account_setting'))
@section('content')
<!-- breedcrumb section start  -->
<x-frontend.breedcrumb-component :background="$cms->dashboard_account_setting_background">
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
    <a class="breedcrumb__page-link text--body-3">{{ __('settings') }}</a>
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
            <div class="col-lg-2 d-none d-xl-block">
                @include('layouts.frontend.partials.dashboard-sidebar')
            </div>
            <div class="col-xl-10">
                <div class="dashboard-setting">
                    <!-- Account Information -->
                    <div class="dashboard-setting__box account-information" style="border-bottom: 1px solid #ddd; margin-bottom: 20px;">
                        <h2 class="text--body-2-600" style="margin-bottom: 20px !important;">
                        {{ __('Address Book') }}
                        <a href="#" class="float-end new_address" data-bs-toggle="modal" data-bs-target="#exampleModal">+ ADD NEW ADDRESS</a>
                        </h2>
                    </div>
                </div>
                <div class="address_info">
                    <table class="table table-border table-responsive">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Street address</th>
                                <th>Apt/Suite</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Country</th>
                                <th>Zip Code</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Rabin</td>
                                <td>Dhaka</td>
                                <td>Dhaka</td>
                                <td>Dhaka</td>
                                <td>Dhanmondi</td>
                                <td>Bangladesh</td>
                                <td>1213</td>
                                <td>
                                    <a href="#" class="btn-sm btn-primary" title="Edit">Edit</a>
                                    <a href="#" class="btn-sm btn-danger" title="Delete">Delete</a>
                                </td>
                            </tr>
                            <tr>
                                <td>Rajon</td>
                                <td>Dhaka</td>
                                <td>Dhaka</td>
                                <td>Dhaka</td>
                                <td>Dhanmondi</td>
                                <td>Bangladesh</td>
                                <td>1213</td>
                                <td>
                                    <a href="#" class="btn-sm btn-primary" title="Edit">Edit</a>
                                    <a href="#" class="btn-sm btn-danger" title="Delete">Delete</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Modal -->
                <div class="address_modal modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">{{ __('add_address') }}</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="#" method="post">
                                    <div class="row g-2">
                                        <div class="col-12 mb-2">
                                            <label class="form-label">{{__('name')}}</label>
                                            <input type="text" name="name" id="name" class="form-control" required>
                                        </div>
                                        <div class="col-sm-8 mb-2">
                                            <label class="form-label">{{__('street_address')}}</label>
                                            <input type="text" name="street_address" id="street_address" class="form-control" required>
                                        </div>
                                        <div class="col-sm-4 mb-2">
                                            <label class="form-label">{{__('app_suite')}}</label>
                                            <input type="text" name="apt_suite" id="apt_suite" class="form-control" required>
                                        </div>
                                        <div class="col-sm-8 mb-2">
                                            <label class="form-label">{{__('city')}}</label>
                                            <input type="text" name="city" id="city" class="form-control" required>
                                        </div>
                                        <div class="col-sm-4 mb-2">
                                            <label class="form-label">{{__('state')}}</label>
                                            <input type="text" name="state" id="state" class="form-control" required>
                                        </div>
                                        <div class="col-sm-8 mb-2">
                                            <label class="form-label">{{__('country')}}</label>
                                            <select name="country" id="country" class="form-control form-select" required>
                                                <option value="" class="d-none"></option>
                                                <option value="US">United States</option>
                                                <option value="AL">Albania</option>
                                                <option value="DZ">Algeria</option>
                                                <option value="AD">Andorra</option>
                                                <option value="AO">Angola</option>
                                                <option value="AI">Anguilla</option>
                                                <option value="AG">Antigua &amp; Barbuda</option>
                                                <option value="AR">Argentina</option>
                                                <option value="AM">Armenia</option>
                                                <option value="AW">Aruba</option>
                                                <option value="AU">Australia</option>
                                                <option value="AT">Austria</option>
                                                <option value="AZ">Azerbaijan</option>
                                                <option value="BS">Bahamas</option>
                                                <option value="BH">Bahrain</option>
                                                <option value="BD">Bangladesh</option>
                                                <option value="BB">Barbados</option>
                                                <option value="BY">Belarus</option>
                                                <option value="BE">Belgium</option>
                                                <option value="BZ">Belize</option>
                                                <option value="BJ">Benin</option>
                                                <option value="BM">Bermuda</option>
                                                <option value="BT">Bhutan</option>
                                                <option value="BO">Bolivia</option>
                                                <option value="BA">Bosnia &amp; Herzegovina</option>
                                                <option value="BW">Botswana</option>
                                                <option value="BR">Brazil</option>
                                                <option value="VG">British Virgin Islands</option>
                                                <option value="BN">Brunei</option>
                                                <option value="BG">Bulgaria</option>
                                                <option value="BF">Burkina Faso</option>
                                                <option value="BI">Burundi</option>
                                                <option value="KH">Cambodia</option>
                                                <option value="CM">Cameroon</option>
                                                <option value="CA">Canada</option>
                                                <option value="CV">Cape Verde</option>
                                                <option value="KY">Cayman Islands</option>
                                                <option value="CF">Central African Republic</option>
                                                <option value="TD">Chad</option>
                                                <option value="CL">Chile</option>
                                                <option value="CN">China</option>
                                                <option value="CO">Colombia</option>
                                                <option value="KM">Comoros</option>
                                                <option value="CG">Congo - Brazzaville</option>
                                                <option value="CD">Congo - Kinshasa</option>
                                                <option value="CK">Cook Islands</option>
                                                <option value="CR">Costa Rica</option>
                                                <option value="CI">Côte d'Ivoire</option>
                                                <option value="HR">Croatia</option>
                                                <option value="CY">Cyprus</option>
                                                <option value="CZ">Czech Republic</option>
                                                <option value="DK">Denmark</option>
                                                <option value="DJ">Djibouti</option>
                                                <option value="DM">Dominica</option>
                                                <option value="DO">Dominican Republic</option>
                                                <option value="EC">Ecuador</option>
                                                <option value="EG">Egypt</option>
                                                <option value="SV">El Salvador</option>
                                                <option value="ER">Eritrea</option>
                                                <option value="EE">Estonia</option>
                                                <option value="ET">Ethiopia</option>
                                                <option value="FK">Falkland Islands</option>
                                                <option value="FO">Faroe Islands</option>
                                                <option value="FJ">Fiji</option>
                                                <option value="FI">Finland</option>
                                                <option value="FR">France</option>
                                                <option value="GF">French Guiana</option>
                                                <option value="PF">French Polynesia</option>
                                                <option value="GA">Gabon</option>
                                                <option value="GM">Gambia</option>
                                                <option value="GE">Georgia</option>
                                                <option value="DE">Germany</option>
                                                <option value="GI">Gibraltar</option>
                                                <option value="GR">Greece</option>
                                                <option value="GL">Greenland</option>
                                                <option value="GD">Grenada</option>
                                                <option value="GP">Guadeloupe</option>
                                                <option value="GT">Guatemala</option>
                                                <option value="GN">Guinea</option>
                                                <option value="GW">Guinea-Bissau</option>
                                                <option value="GY">Guyana</option>
                                                <option value="HN">Honduras</option>
                                                <option value="HK">Hong Kong</option>
                                                <option value="HU">Hungary</option>
                                                <option value="IS">Iceland</option>
                                                <option value="IN">India</option>
                                                <option value="ID">Indonesia</option>
                                                <option value="IE">Ireland</option>
                                                <option value="IL">Israel</option>
                                                <option value="IT">Italy</option>
                                                <option value="JM">Jamaica</option>
                                                <option value="JP">Japan</option>
                                                <option value="JO">Jordan</option>
                                                <option value="KZ">Kazakhstan</option>
                                                <option value="KE">Kenya</option>
                                                <option value="KI">Kiribati</option>
                                                <option value="KW">Kuwait</option>
                                                <option value="KG">Kyrgyzstan</option>
                                                <option value="LA">Laos</option>
                                                <option value="LV">Latvia</option>
                                                <option value="LB">Lebanon</option>
                                                <option value="LS">Lesotho</option>
                                                <option value="LR">Liberia</option>
                                                <option value="LY">Libyan Arab Jamahiriya</option>
                                                <option value="LI">Liechtenstein</option>
                                                <option value="LT">Lithuania</option>
                                                <option value="LU">Luxembourg</option>
                                                <option value="MO">Macau</option>
                                                <option value="MK">Macedonia</option>
                                                <option value="MG">Madagascar</option>
                                                <option value="MW">Malawi</option>
                                                <option value="MY">Malaysia</option>
                                                <option value="MV">Maldives</option>
                                                <option value="ML">Mali</option>
                                                <option value="MT">Malta</option>
                                                <option value="MH">Marshall Islands</option>
                                                <option value="MQ">Martinique</option>
                                                <option value="MR">Mauritania</option>
                                                <option value="MU">Mauritius</option>
                                                <option value="YT">Mayotte</option>
                                                <option value="MX">Mexico</option>
                                                <option value="FM">Micronesia</option>
                                                <option value="MD">Moldova</option>
                                                <option value="MC">Monaco</option>
                                                <option value="MN">Mongolia</option>
                                                <option value="ME">Montenegro</option>
                                                <option value="MS">Montserrat</option>
                                                <option value="MA">Morocco</option>
                                                <option value="MZ">Mozambique</option>
                                                <option value="NA">Namibia</option>
                                                <option value="NR">Nauru</option>
                                                <option value="NP">Nepal</option>
                                                <option value="NL">Netherlands</option>
                                                <option value="AN">Netherlands Antilles</option>
                                                <option value="NC">New Caledonia</option>
                                                <option value="NZ">New Zealand</option>
                                                <option value="NI">Nicaragua</option>
                                                <option value="NE">Niger</option>
                                                <option value="NG">Nigeria</option>
                                                <option value="NU">Niue</option>
                                                <option value="NF">Norfolk Island</option>
                                                <option value="NO">Norway</option>
                                                <option value="OM">Oman</option>
                                                <option value="PW">Palau</option>
                                                <option value="PS">Palestine</option>
                                                <option value="PA">Panama</option>
                                                <option value="PG">Papua New Guinea</option>
                                                <option value="PY">Paraguay</option>
                                                <option value="PE">Peru</option>
                                                <option value="PH">Philippines</option>
                                                <option value="PN">Pitcairn Islands</option>
                                                <option value="PL">Poland</option>
                                                <option value="PT">Portugal</option>
                                                <option value="QA">Qatar</option>
                                                <option value="RE">Réunion</option>
                                                <option value="RO">Romania</option>
                                                <option value="RU">Russia</option>
                                                <option value="RW">Rwanda</option>
                                                <option value="WS">Samoa</option>
                                                <option value="SM">San Marino</option>
                                                <option value="ST">São Tomé &amp; Príncipe</option>
                                                <option value="SA">Saudi Arabia</option>
                                                <option value="SN">Senegal</option>
                                                <option value="RS">Serbia</option>
                                                <option value="SC">Seychelles</option>
                                                <option value="SL">Sierra Leone</option>
                                                <option value="SG">Singapore</option>
                                                <option value="SK">Slovakia</option>
                                                <option value="SI">Slovenia</option>
                                                <option value="SB">Solomon Islands</option>
                                                <option value="SO">Somalia</option>
                                                <option value="ZA">South Africa</option>
                                                <option value="KR">South Korea</option>
                                                <option value="ES">Spain</option>
                                                <option value="LK">Sri Lanka</option>
                                                <option value="SH">St. Helena</option>
                                                <option value="KN">St. Kitts &amp; Nevis</option>
                                                <option value="LC">St. Lucia</option>
                                                <option value="PM">St. Pierre &amp; Miquelon</option>
                                                <option value="VC">St. Vincent &amp; Grenadines</option>
                                                <option value="SR">Suriname</option>
                                                <option value="SJ">Svalbard &amp; Jan Mayen</option>
                                                <option value="SZ">Swaziland</option>
                                                <option value="SE">Sweden</option>
                                                <option value="CH">Switzerland</option>
                                                <option value="TW">Taiwan</option>
                                                <option value="TJ">Tajikistan</option>
                                                <option value="TZ">Tanzania</option>
                                                <option value="TH">Thailand</option>
                                                <option value="TG">Togo</option>
                                                <option value="TO">Tonga</option>
                                                <option value="TT">Trinidad &amp; Tobago</option>
                                                <option value="TN">Tunisia</option>
                                                <option value="TR">Turkey</option>
                                                <option value="TM">Turkmenistan</option>
                                                <option value="TC">Turks &amp; Caicos Islands</option>
                                                <option value="TV">Tuvalu</option>
                                                <option value="UG">Uganda</option>
                                                <option value="UA">Ukraine</option>
                                                <option value="AE">United Arab Emirates</option>
                                                <option value="GB">United Kingdom</option>
                                                <option value="UY">Uruguay</option>
                                                <option value="VU">Vanuatu</option>
                                                <option value="VA">Vatican City</option>
                                                <option value="VE">Venezuela</option>
                                                <option value="VN">Vietnam</option>
                                                <option value="WF">Wallis &amp; Futuna</option>
                                                <option value="YE">Yemen</option>
                                                <option value="ZM">Zambia</option>
                                                <option value="ZW">Zimbabwe</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-4 mb-3">
                                            <label class="form-label">{{__('zipcode')}}</label>
                                            <input type="number" name="zip_code" id="zip_code" class="form-control" required>
                                        </div>
                                        <div class="col-12 address_btn">
                                            <button type="submit" class="btn btn-dark w-100">{{__('save_address')}}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- dashboard section end  -->
@endsection
