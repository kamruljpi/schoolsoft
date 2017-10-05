
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
                   {{ $authenticatedUser->translate($locale,$defaultLocale)->first_name.' '.request()->user()->translate($locale,$defaultLocale)->last_name }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Gender</span>
                </td>
                <td>
                    {{ !is_null($authenticatedUser->gender)?$authenticatedUser->gender->translate($locale,$defaultLocale)->gender_name :'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Father's Name</span>
                </td>
                <td>
                    {{ $authenticatedUser->translate($locale,$defaultLocale)->father_name  }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Mother's Name</span>
                </td>
                <td>
                    {{ $authenticatedUser->translate($locale,$defaultLocale)->mother_name }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Local Address</span>
                </td>
                <td>
                    {{ $authenticatedUser->translate($locale,$defaultLocale)->address  }}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Permanent Address</span>
                </td>
                <td>
                    {{ $authenticatedUser->translate($locale,$defaultLocale)->permanent_address }}
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
                    {{ !is_null($authenticatedUser->religion)?$authenticatedUser->religion->name : 'not available'}}
                </td>
            </tr>


            </tbody>
        </table>
