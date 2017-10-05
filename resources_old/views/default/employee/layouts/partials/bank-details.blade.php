
        <h2 class="panel-title">Bank Details</h2>
    </div>
    <div class="panel-body scrollbar-notice">
      @if(!is_null($authenticatedUser->bankAccounts))
        
        <table class="table table-light margin-bottom-0">
            <tbody>
            <tr>
                <td>
                    <span class="primary-link">Account Name</span>
                </td>
                <td>
                    {{ $authenticatedUser->bankAccounts->last()->account_no or 'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Bank Name</span>
                </td>
                <td>
                    {{ $authenticatedUser->bankAccounts->last()->bank_name or 'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">Branch Name</span>
                </td>
                <td>
                    {{ $authenticatedUser->bankAccounts->last()->branch or 'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">IFSC Code</span>
                </td>
                <td>
                    {{ $authenticatedUser->bankAccounts->last()->ifsc_code or 'not available'}}
                </td>
            </tr>
            <tr>
                <td>
                    <span class="primary-link">PAN No</span>
                </td>
                <td>
                    {{ $authenticatedUser->bankAccounts->last()->pan_no or 'not available'}}
                </td>
            </tr>
            </tbody>
        </table>

      @endif
