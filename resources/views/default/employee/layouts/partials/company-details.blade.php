
        <h2 class="panel-title">Company Details</h2>
    </div>
    <div class="panel-body scrollbar-notice">
        <table class="table table-light margin-bottom-0">
            <tbody>
            <tr>
                <td>
                    <span class="primary-link">Department</span>
                </td>
                <td>
                   {{ !is_null($authenticatedUser->department)?$authenticatedUser->department->name :'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Designation</span>
                </td>
                <td>
                    {{!is_null($authenticatedUser->designation)? $authenticatedUser->designation->name :'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Shift</span>
                </td>
                <td>
                    {{!is_null($authenticatedUser->shift)? $authenticatedUser->shift->translateOrNew('en','bn')->name :'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Jnoining Date</span>
                </td>
                <td>
                    {{ $authenticatedUser->dept_join_date or 'not available' }}
                </td>
            </tr>

            </tbody>
        </table>
