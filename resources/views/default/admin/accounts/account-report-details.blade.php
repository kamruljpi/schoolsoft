<div class="custom_row mtb">
   
        <div class="view-header-report">
            <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
            <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
    
    </div>
</div>
<div class="row">

    <div class="auto_scroll">
        <table id="example1" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>{{ trans('sidebar.receipt_no') }}</th>
                <th>{{ trans('sidebar.date') }}</th>
                <th>{{ trans('sidebar.user') }}</th>
                <th>{{ trans('sidebar.account_type') }}</th>
                <th>{{ trans('sidebar.amount_category') }}</th>
                <th>{{ trans('sidebar.account_subject') }}</th>
                <th>{{ trans('sidebar.income') }}</th>
                <th> {{ trans('sidebar.expense') }}</th>
                <th class="text-center th_width_40">{{ trans('translate.action') }}</th>
            </tr>
            </thead>
            <tbody>
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
                    <td>{{$account->receipt_no}}</td>
                    <td>{{ $account->created_at}}</td>
                    <td>
                        {{ $account->fromUser->translate($locale)? $account->fromUser->first_name.' '.$account->fromUser->last_name:$account->translate($defaultLocale)->fromUser->first_name.' '.$account->translate($defaultLocale)->fromUser->last_name }} ({{$account->fromRole->name}})
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
                    <td>
                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.receipt') }}" data-toggle="tooltip" href="{{ route('account-receipt',[$account->id]) }}">
                            <i class="fa fa-check-square-o"></i></a>
                    </td>
                </tr>

            @endforeach
                <tr>
                    <td colspan="6" align="right"><strong>{{ trans('translate.total') }}</strong></td>
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
</div>
@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });
    </script>
@endsection