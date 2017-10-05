@inject('accountReportForm','Erp\Forms\AccountReportForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body">
                                    @if (count($errors) > 0)
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif

                                    <h4>{{ trans('sidebar.get_account_report') }}</h4><br>

                                    {!! formFields($accountReportForm) !!}
                                    <br>
                                    {!! Form::submit('Account Report',['class'=>'btn btn-primary','id'=>'account-report-btn','readonly'=>'readonly']) !!}


                                  
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')

    @parent
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}
    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#role_id').select2();
            $('#user_id').select2();
//            $('#from_role_id').select2();
//            $('#from_user_id').select2();
            $('#account_type_id').select2();
            $('#amount_type_id').select2();
            $('#amount_category_id').select2();
            $('#from_date').datepicker() ;
            $('#to_date').datepicker() ;

            /*start choose user onchange event of role*/
            $('#role_id').change(function(){
                var host = window.location.origin ;
                var roleId = $('#role_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/account/' + roleId,
                    'dataType': 'json'
                }).success(function (data) {
                    console.log(data);
                    var user = "<option value=''>Select </option>";
                    $(data[0]).each(function(index,item){
                        user += "<option value ="+ item.id +">"+item.first_name+ ' ' +item.last_name+"</option>";
                    });
                    $('#user_id').html(user);
                })
            });
            /*end choose user onchange event of role*/

            $('#account-report-btn').click(function () {

                var roleId = $('#role_id').find('option:selected').val();
                var userId = $('#user_id').find('option:selected').val();
                var accountTypeId = $('#account_type_id').find('option:selected').val();
                var amountTypeId = $('#amount_type_id').find('option:selected').val();
                var amountCategoryId = $('#amount_category_id').find('option:selected').val();
                var fromDate = $("#from_date").val()
                var toDate = $("#to_date").val()
                var host = window.location.origin ;
                var route_url = host + '/account/account-report/' +parseInt(roleId)+'/'+ parseInt(userId)+'/'+parseInt(accountTypeId)+'/'+parseInt(amountTypeId)+'/'+parseInt(amountCategoryId) ;
                if(fromDate != ''){
                    route_url += '/'+fromDate;
                }else{
                    route_url += '/0';
                }
                if(toDate != ''){
                    route_url += '/'+toDate;
                }else{
                    route_url += '/0';
                }
                if(roleId == 0 && userId == 0 && accountTypeId == 0 && amountTypeId ==0 && amountCategoryId == 0 && fromDate == '' && toDate == '') {
                    alert('please select any one of  role, user, account type or account category');
                }else {
                    $.ajax({
                        url: route_url,
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data); */
                            $data = $(data); // the HTML content your controller has produced

                            $('#account-report-div').html($data);
                        }
                    });
                }


            });
        });
    </script>

@endsection