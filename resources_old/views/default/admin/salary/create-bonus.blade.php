{{--@inject('createBonusForm', 'Erp\Forms\BonusForm')--}}





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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif





                    {!! Form::open(array('route' => 'create-bonus-rules', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

{{--                    {!! formFields($createBonusForm)  !!}--}}
                        <div >
                            <div class="row">
                                {!! Form::label('set_name','Set Bonus Rules Name', ['class'=>'col-sm-12 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                            </div>

                        </div>
                        <br>

                        <div class="form-group {{ $errors->has('name')? 'has-error':'' }}">

                            {!! Form::label('name','Name', ['class'=>'col-sm-2 control-label','style'=>'text-align:center']) !!}


                            <div class="col-sm-10">
                                {!! Form::text('name',null,['class'=>'form-control']) !!}
                                {!!  $errors->first('name','<span class="help-block">:message</span>')   !!}
                                {!! Form::hidden('rule_ids',null,['class'=>'form-control','id'=>'rule_ids']) !!}
                            </div>

                        </div>
                        <br>

                        <br><br>

                        <div class="bonus-wraper" style="display: none;">
                            <div >
                                <div class="row">
                                    {!! Form::label('set_month','Set Bonus Month', ['class'=>'col-sm-12 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                                </div>

                            </div>
                            <br>
                            <div class="form-group {{ $errors->has('month')? 'has-error':'' }}">

                                    {!! Form::label('month','Month', ['class'=>'col-sm-2 control-label','style'=>'text-align:center']) !!}


                                <div class="col-sm-10">
                                    {!! Form::selectMonth('month','Months',['class'=>'form-control hide-value']) !!}
                                    {!!  $errors->first('month','<span class="help-block">:message</span>')   !!}
                                </div>

                            </div>
                            <div >
                                <div class="row">
                                    {!! Form::label('set_salary_type','Set Salary Type', ['class'=>'col-sm-12 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                                </div>

                            </div>

                            <br>
                            <div class="check-values" >

                                {!! Form::checkbox('total','total',false,['id'=>'total','class'=>'hide-check']) !!}&nbsp;&nbsp; Total
                                {!! Form::checkbox('basic','basic',false,['id'=>'basic','class'=>'hide-check']) !!}&nbsp;&nbsp; Basic


                                @foreach($salaryTypes as $salaryType)

                                    {!! Form::checkbox(snake_case($salaryType->name),snake_case($salaryType->name),false,['id'=>snake_case($salaryType->name),'class'=>'hide-check ']) !!}&nbsp;&nbsp; {{ $salaryType->name  }}
{{--                                    {{ dd(snake_case($salaryType->name)) }}--}}
                                @endforeach
{{--                                {!! Form::checkbox('rent',2,false,['id'=>'home-rent','class'=>'hide-value']) !!}&nbsp;&nbsp; Home Rent--}}

                            </div>
                            <br>
                            <div >
                                <div class="row">
                                    {!! Form::label('set_amount','Set Amount', ['class'=>'col-sm-12 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                                </div>

                            </div>
                            <br>

                            <div class="form-group {{ $errors->has('name')? 'has-error':'' }}">
                                <div class="col-sm-6">

                                        {!! Form::label('amount','Amount', ['class'=>'col-sm-4 control-label','style'=>'text-align:center;']) !!}


                                    <div class="col-sm-8">
                                        {!! Form::text('amount',null,['class'=>'form-control hide-value','id'=>'amount']) !!}
                                        {!!  $errors->first('amount','<span class="help-block">:message</span>')   !!}
                                    </div>
                                </div>
                                <div class="col-sm-6">

                                        {!! Form::label('amount_type','Amount Type', ['class'=>'col-sm-6 control-label ','style'=>'text-align:left; padding-left:35px']) !!}


                                    <div class="col-sm-6">
                                        {!! Form::select('amount_type',['Select','fixed'=>'fixed','percent'=>'percent'],['class'=>'form-control hide-value']) !!}
                                        {!!  $errors->first('amount_type','<span class="help-block">:message</span>')   !!}
                                    </div>
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('month')? 'has-error':'' }}">
                                {!! Form::submit('Save Attributes',['class'=>'save-attr']) !!}
{{--                                {!! Form::submit('Check Attributes',['class'=>'check-attr']) !!}--}}


                            </div>
                        </div>
                        {!! Form::button('Add Attributes',['class'=>'save-rules','id'=>'add-bonus-attribute-btn']) !!}
                        {!! Form::submit('Save Rules',['class'=>' save-rules' ,'id'=>'save-rules','style'=>'display:none']) !!}

                    {!!  Form::close()   !!}

                        <table id="tblData" class="table table-responsive" style="display:none">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Month</th>
                                    <th>Salary Types</th>
                                    <th>Amount</th>
                                    <th>Amount Type</th>
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>

                            </tbody>
                        </table>


                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')
    @parent

    <script>

        $(document).ready(function () {

            var rule_ids = [];
            var bonusAttributesArray = [];
            var sl = 1;

            var monthNames = [0, "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December" ];

            $('#tblData').css('display','none');

            $('.bonus-wraper').css('display','none');

            $('#add-bonus-attribute-btn').click(function () {
                $('.save-rules').css('display','none');
                $('.bonus-wraper').css('display','block');

                if($('.hide-value').val() || $('.hide-check').checked){
                    $('.hide-value').val(null);
                    $('.hide-check').prop('checked', false);
                }

            });
            $('.save-attr').click(function (event) {

                event.preventDefault();

                var salaryTypes = $('.check-values').children('input');
                var salaryTypesObject = {};


                for(var inputVals = 0; inputVals<salaryTypes.length; inputVals++){

                    if(salaryTypes[inputVals].checked){
                        salaryTypesObject[salaryTypes[inputVals].name] = salaryTypes[inputVals].value;
//                        console.log(salaryTypes[inputVals].value);
                    }
                }
//                console.log(salaryTypesObject);

                var host = window.location.origin ;
                var month = $('#month').val();
//                var total = $('#total').val();
//                var homeRent = $('#home-rent').val();

//                var salaryTypes = {"total":total,"homeRent":homeRent};
                var salaryTypes = salaryTypesObject;
                var amount = $('#amount').val();
                var amountType = $('#amount_type').val();

//                alert(amountType);



                $.ajax({
                    type:'POST',
                    url:host + '/salary/bonus-attr',
                    data:{

                        'month':month,
                        'salaryTypes': salaryTypes,
                        'amount':amount,
                        'amount_type':amountType
                    },

                    beforesend: function () {
                        $('.spning').css('display','block');
                        $('body').css('display','visible');
                    },
                    success: function (id) {

                        rule_ids.push(id)
                        $('#rule_ids').val(rule_ids);

                        $('.save-rules').css('display','inline-block');
                        $('.bonus-wraper').css('display','none');

                        $.ajax({

                            type:'POST',
                            url:host+'/salary/check-bonus-attr/'+id,
                            success:function(bonusAttributes){

                                var bonusAtt = bonusAttributes;
                                bonusAttributesArray.push(bonusAttributes);

                                for(var bonusAttIndex in bonusAttributesArray){

                                    var bonusAttFor = bonusAttributesArray[bonusAttIndex];

                                }

                                var options = '';
                                var saltypeJson = JSON.parse(bonusAtt.salary_types);

                                for(var opt in saltypeJson){

                                     options += "<input type='text' readonly value="+opt+">"
                                }

                                var salaryTypes = options==''?'Not available':options;
                                var monthName = monthNames[bonusAtt.month]?monthNames[bonusAtt.month]:'Not available';
                                var bonusAmount = bonusAtt.amount=='0'?'Not available':bonusAtt.amount;
                                var bonusAmountType = bonusAtt.amount_type=='0'?'Not available':bonusAtt.amount_type;

                                var tableFields =
                                        "<tr>"+
                                        "<td>"+ sl++ +"</td>" +
                                        "<td>"+monthName+"</td>" +
                                        "<td>" +
                                        salaryTypes +
                                        "</td>" +
                                        "<td>"+ bonusAmount+"</td>" +
                                        "<td>"+bonusAmountType+"</td>"+
                                        "<td><button class='bonus-attr-del-btn' id="+bonusAtt.id+">Delete</button></td>"+
                                        "</tr>";

                                $("#tblData tbody").append(tableFields);

                            }
                        });

                        $('#tblData').css('display','block');

                    },
                    error: function () {
                        alert("Please try again.");
                    },
                });

            });
            $(document).on("click", 'button.bonus-attr-del-btn' , function(e) {

                e.preventDefault();

                var host = window.location.origin ;
                var bonusAttrIdToDelete = this.id;

                $(this).parent().parent().remove();

                var index = rule_ids.indexOf(bonusAttrIdToDelete);

                if (index > -1) {
                    rule_ids.splice(index, 1);
                }
                $('#rule_ids').val(rule_ids);
                console.log(rule_ids);
                $.ajax({
                    type:'POST',
                    url:host + '/salary/bonus-attr-delete/'+bonusAttrIdToDelete,
                });
//                alert(this.id);
//                rule_ids.push(id);



            });

        });

    </script>
@endsection