@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.total_result_sy_add') }}
                    </div>
                    <div class="col-md-6 col-xs-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.total_result_sy_add') }}</li>
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
                        <h2 class="form_title">{{ trans('sidebar.add_total_result_system') }}
                        </h2>
                    </div>

                    {!! Form::open(array('route' => 'create-total-result-system', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    <div>
                        <div class="row">
                            {!! Form::label('set_total_result_system','Set Total Result System', ['class'=>'col-sm-12 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                        </div>

                    </div>
                    <br>

                    <div class="form-group ">

                        {!! Form::label('name','Name*', ['class'=>'col-sm-2 control-label','style'=>'text-align:center']) !!}
                        <div class="col-sm-10">
                            {!! Form::text('name',null,['class'=>'form-control']) !!}
                            {!!  $errors->first('name','<span class="help-block">:message</span>')   !!}
                            {!! Form::hidden('rule_ids',null,['class'=>'form-control','id'=>'rule_ids']) !!}
                        </div>

                    </div>
                    <br>
                    <div class="form-group {{ $errors->has('name')? 'has-error':'' }}">

                        {!! Form::label('name','Result Rule*', ['class'=>'col-sm-2 control-label','style'=>'text-align:center']) !!}
                        <div class="col-sm-10">
                            {!! Form::select('result_rule',['division'=>'Division','grade'=>'Grade'],0,['class'=>'form-control']) !!}
                            {!!  $errors->first('result_rule','<span class="help-block">:message</span>')   !!}
                        </div>
                    </div>
                    <br>

                    <br><br>

                    <div class="bonus-wraper" style="display: none;">
                        <div >
                            <div class="row">
                                {!! Form::label('','', ['class'=>'col-sm-4 control-label']) !!}
                                {!! Form::label('total_marks_setting','Total Marks Settings', ['class'=>'col-sm-8 control-label','style'=>'text-align:center; height:40px; background-color:#0073b7; color:white']) !!}
                            </div>

                        </div>
                        <br>
                        <div class="form-group {{ $errors->has('grade_class')? 'has-error':'' }}">
                            {!! Form::label('grade_class','Grade/Class/Division', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('grade_class',null,['class'=>'form-control hide-value rslttype_grade_class','id'=>'rslttype_grade_class']) !!}
                                {!!  $errors->first('grade_class','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('gpa')? 'has-error':'' }}">
                            {!! Form::label('gpa','GPA', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('gpa',null,['class'=>'form-control hide-value rslttype_gpa','id'=>'rslttype_gpa']) !!}
                                {!!  $errors->first('gpa','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>
                        <div class="form-group ">
                            {!! Form::label('','', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::label('','Marks Range for Each Subject Result', ['class'=>'control-label','style'=>'text-align:left;']) !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('sub_min')? 'has-error':'' }}">
                            {!! Form::label('sub_min','Minimum', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('sub_min',null,['class'=>'form-control hide-value rslttype_sub_min','id'=>'rslttype_sub_min']) !!}
                                {!!  $errors->first('sub_min','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('sub_max')? 'has-error':'' }}">
                            {!! Form::label('sub_max','Maximum', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('sub_max',null,['class'=>'form-control hide-value  rslttype_sub_max','id'=>'rslttype_sub_max']) !!}
                                {!!  $errors->first('sub_max','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>

                        <div class="form-group ">
                            {!! Form::label('','', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::label('','Marks Range for Total Result', ['class'=>'control-label','style'=>'text-align:left;']) !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('total_min')? 'has-error':'' }}">
                            {!! Form::label('total_min','Minimum', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('total_min',null,['class'=>'form-control hide-value rslttype_total_min','id'=>'rslttype_total_min']) !!}
                                {!!  $errors->first('total_min','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('total_max')? 'has-error':'' }}">
                            {!! Form::label('total_max','Maximum', ['class'=>'col-sm-4 control-label','style'=>'text-align:left;']) !!}
                            <div class="col-sm-8">
                                {!! Form::text('total_max',null,['class'=>'form-control hide-value rslttype_total_max','id'=>'rslttype_total_max']) !!}
                                {!!  $errors->first('total_max','<span class="help-block">:message</span>')   !!}
                            </div>

                        </div>
                        <div class="form-group {{ $errors->has('month')? 'has-error':'' }}">
                            {!! Form::submit('Save Settings',['class'=>'save-settings']) !!}
                            {!! Form::button('Cancel',['class'=>'cancel-settings']) !!}
                        </div>
                    </div>
                    {!! Form::button('Add Settings',['class'=>'save-rules','id'=>'add-total-result-settings-btn']) !!}
                    {!! Form::submit('Save Total Result System',['class'=>' save-rules' ,'id'=>'save-rules','style'=>'display:none']) !!}

                    {!!  Form::close()   !!}

                    <table id="tblData" class="table table-responsive" style="display:none">
                        <thead>
                        <tr>
                            <th>Sl</th>
                            <th>Grade/Class</th>
                            <th>GPA</th>
                            <th>Sub Min Marks</th>
                            <th>Sub Max Marks</th>
                            <th>Total Min Marks</th>
                            <th>Total Max Marks</th>
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

            $('#tblData').css('display','none');

            $('.bonus-wraper').css('display','none');

            $('#add-total-result-settings-btn').click(function () {
                $('.save-rules').css('display','none');
                $('.bonus-wraper').css('display','block');

                if($('.hide-value').val()){
                    $('.hide-value').val(null);
                }
            });

            $('.cancel-settings').click(function (){
//                event.preventDefault();
                $('.save-rules').css('display','inline-block');
                $('.bonus-wraper').css('display','none');
            });

            $('.save-settings').click(function (event) {

                event.preventDefault();

                var params = new Object();
                $('[id^="rslttype_"]').each(function()
                {
                    id = $(this).attr("name");
                    params[id] = $(this).val();
                });

                var host = window.location.origin ;

                $.ajax({
                    type:'POST',
//                    url:host + '/result-settings/add',
                    url:'{{ route("create-total-result-settings") }}',
                    data:{
                        'params':params,
                    },
                    beforesend: function () {
                        $('.spning').css('display','block');
                        $('body').css('display','visible');
                    },
                    success: function (settings) {

                        rule_ids.push(settings.id)
                        $('#rule_ids').val(rule_ids);

                        $('.save-rules').css('display','inline-block');
                        $('.bonus-wraper').css('display','none');
                        console.log(settings)
                        var tbldata = "<tr>";
                        tbldata +=  "<td>"+ sl++ +"</td>";
                        $('[id^="rslttype_"]').each(function()
                        {
                            tbldata +=  "<td>"+$(this).val()+"</td>";
                        });
                        tbldata +=  "<td><button class='total-result-settings-del-btn' id="+settings.id+">Delete</button></td>";
                        tbldata += "</tr>";
                        $("#tblData tbody").append(tbldata);
                        $('#tblData').css('display','block');
                    },
                    error: function () {
                        alert("Please try again.");
                    },
                });

            });

            $(document).on("click", 'button.total-result-settings-del-btn' , function(e) {

                e.preventDefault();

                var host = window.location.origin ;
                var totalResultSeetingsToDelete = this.id;

                $(this).parent().parent().remove();

                var index = rule_ids.indexOf(totalResultSeetingsToDelete);

                if (index > -1) {
                    rule_ids.splice(index, 1);
                }
                $('#rule_ids').val(rule_ids);
                console.log(rule_ids);
                $.ajax({
                    type:'POST',
                    url:host + '/total-result-settings/delete/'+totalResultSeetingsToDelete
                });

            });

        });
    </script>
@endsection
