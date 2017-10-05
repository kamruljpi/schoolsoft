
        <h2 class="panel-title">Personal Details</h2>
    </div>
    <div class="panel-body scrollbar-notice">
        <table class="table table-light margin-bottom-0">
            <tbody>

            <tr>
                <td>
                    <span class="primary-link">Username</span>
                </td>
                <td>
                    {{ $authenticatedUser->username or 'not available' }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Name</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->translate($defaultLocale)))

                        {{ $authenticatedUser->translate($locale)? $authenticatedUser->first_name.' '.$authenticatedUser->last_name:$authenticatedUser->translate($defaultLocale)->first_name.' '.$authenticatedUser->translate($defaultLocale)->last_name }}
                    @else

                        No Name Given in ...@if($locale=='en') English @else  Bangla @endif
                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Gender</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->gender) && !is_null($authenticatedUser->gender->translate($defaultLocale)))

                        {{ $authenticatedUser->gender->translate($locale)?$authenticatedUser->gender->gender_name:$authenticatedUser->gender->translate($defaultLocale)->gender_name }}
                    @else

                        No Gender Given..........

                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Father's Name</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->translate($defaultLocale)))

                        {{ $authenticatedUser->translate($locale)? $authenticatedUser->father_name:$authenticatedUser->translate($defaultLocale)->father_name }}
                    @else

                        Father's Name not Given in ...@if($locale=='en') English @else  Bangla @endif
                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Mother's Name</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->translate($defaultLocale)))

                        {{ $authenticatedUser->translate($locale)? $authenticatedUser->mother_name:$authenticatedUser->translate($defaultLocale)->mother_name }}
                    @else

                        Mother's Name not Given in ...@if($locale=='en') English @else  Bangla @endif
                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Local Address</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->translate($defaultLocale)))

                        {{ $authenticatedUser->translate($locale)? $authenticatedUser->address:$authenticatedUser->translate($defaultLocale)->address }}
                    @else

                        Local Address not Given in ...@if($locale=='en') English @else  Bangla @endif
                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Permanent Address</span>
                </td>
                <td>
                    @if(!is_null($authenticatedUser->translate($defaultLocale)))

                        {{ $authenticatedUser->translate($locale)? $authenticatedUser->permanent_address:$authenticatedUser->translate($defaultLocale)->permanent_address }}
                    @else

                        Permanent Address not Given in ...@if($locale=='en') English @else  Bangla @endif
                    @endif

                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Birthday</span>
                </td>
                <td>
                    {{ $authenticatedUser->birthday or 'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Phone</span>
                </td>
                <td>
                    {{ $authenticatedUser->phone or 'not available' }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Religion</span>
                </td>
                <td>
                    {{ isset($authenticatedUser->religion->name)?$authenticatedUser->religion->name : 'not available'}}
                </td>
            </tr>


            </tbody>
        </table>
