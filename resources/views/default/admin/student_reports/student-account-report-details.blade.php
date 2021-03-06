<div class="custom_row m_top_20">
<div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
       
    </div>
</div>

<div class="row m_top_20">

<table id="example1" class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>{{ trans('translate.sl') }}</th>
        <th>{{ trans('sidebar.date') }}</th>
        <th>{{ trans('sidebar.to_user') }}</th>
        <th>{{ trans('sidebar.account_type') }}</th>
        <th>{{ trans('sidebar.amount_category') }}</th>
        <th>{{ trans('sidebar.account_subject') }}</th>
        <th>{{ trans('sidebar.income') }}</th>
        <th> {{ trans('sidebar.expense') }}</th>
    </tr>
    </thead>
    <tbody>
    @set('sl',1)
    @set('income', 0)
    @set('expense', 0)
    @set('totalAmount', 0)
    @foreach($accountReport as $account)
        <?php
        if($account->amountType->alias == 'income'){
            $income = $income + $account->amount;
        }
        if($account->amountType->alias == 'expense'){
            $expense = $expense + $account->amount;
        }
        $totalAmount = $income - $expense;
        ?>
        <tr>
            <td>{{$sl++}}</td>
            <td>{{ $account->created_at}}</td>
            <td>
                {{ $account->toUser->translate($locale)? $account->toUser->first_name.' '.$account->toUser->last_name:$account->translate($defaultLocale)->toUser->first_name.' '.$account->translate($defaultLocale)->toUser->last_name }} ({{$account->toRole->name}})
            </td>
            <td>{{ $account->translate($locale)? $account->accountType->account_type_name:$account->translate($defaultLocale)->accountType->account_type_name }}</td>
            <td>{{ $account->translate($locale)? $account->amountCategory->amount_category_name:$account->translate($defaultLocale)->amountCategory->amount_category_name }}</td>
            <td> {{ $account->translate($locale)?$account->translate($locale)->account_name:$account->translate($defaultLocale)->account_name }}</td>
            <td align="right">
                @if($account->amountType->alias == 'income')
                    {{ number_format($account->amount, 2) }}
                @else
                    {{ '0.00' }}
                @endif
            </td>
            <td align="right">
                @if($account->amountType->alias == 'expense')
                    {{ number_format($account->amount, 2) }}
                @else
                    {{ '0.00' }}
                @endif
            </td>
        </tr>

    @endforeach
    <tr>
        <td colspan="6" align="right"><strong>{{ trans('sidebar.total') }}</strong></td>
        <td align="right"><strong>{{ number_format($income, 2) }}</strong></td>
        <td align="right"><strong>{{ number_format($expense, 2)}}</strong></td>
    </tr>
    <tr>
        <td colspan="6" align="right"><strong>{{ trans('sidebar.balance') }}</strong></td>
        <td colspan="2" align="right"><strong>{{ number_format($totalAmount, 2)}}</strong></td>
    </tr>


    {{--@endforeach--}}

    </tbody>
</table>
</div>