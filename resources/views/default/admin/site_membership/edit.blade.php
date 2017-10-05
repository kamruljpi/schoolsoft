@inject('editSiteMemebershipForm','Erp\Forms\SiteMemebershipForm')
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.institute_member_edit') }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.institute_member_edit') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger row">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(session()->has('success'))
                        <div class="alert alert-success row">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif

                    <div class="custom_row">                      
                        <h2 class="form_title">
                            {{ trans('sidebar.institute_member_edit') }}
                        </h2>                                          
                    </div>


                    {!! Form::model(
                                $siteMemberToEdit,
                                array(
                                'route' => ['site-membership-edit',$siteMemberToEdit->id],
                                'files' => true,
                                'id'=>'create-form',
                                'class'=>'form-create',
                                'method'=>'PATCH'
                                ))
                    !!}

                        {!! formFields($editSiteMemebershipForm,$mode='edit',$siteMemberToEdit->id)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection


@section('scripts')
    @parent

    <script>

        $(document).ready(function(){

            var alumniFeeStatusInput = $( "input[name='alumni_login']:checked");

            if( alumniFeeStatusInput.val() == true){
                $('.alumni_fee').show();
            }else {
                $('.alumni_fee').hide();
            }
            var latePaymentStatusInput = $( "input[name='late_payment_membership_status']:checked");

            if( latePaymentStatusInput.val() == true){
                $('.late_payment').show();
            }else {
                $('.late_payment').hide();
            }
            $('.late_payment_membership_status').click(function(){
                var latePaymentStatusInput = $( "input[name='late_payment_membership_status']:checked");

                if( latePaymentStatusInput.val() == true){
                    $('.late_payment').show();
                }else {
                    $('.late_payment').hide();
                    $('#late_payment_membership_days').val(0);
                }
            });

            $('.alumni_login_status').click(function(){

                var alumniFeeStatusInput = $( "input[name='alumni_login']:checked");

                if( alumniFeeStatusInput.val() == true){
                    $('.alumni_fee').show();
                }else {
                    $('.alumni_fee').hide();
                    $('#alumni_fee').val(0);
                }
            });

        });

    </script>
@endsection