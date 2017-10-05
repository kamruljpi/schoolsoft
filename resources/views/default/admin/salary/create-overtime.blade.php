@inject('createOvertimeForm', 'Erp\Forms\OvertimeForm')




@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.set_overtime_ruls') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.set_overtime_ruls') }}</li>
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
                            {{ trans('sidebar.set_overtime_ruls') }}
                        </h2>                                          
                    </div>
                    {!! Form::open(array('route' => 'create-overtime-rules', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createOvertimeForm)  !!}


                    {!!  Form::close()   !!}
                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')
    @parent
    <script type="text/javascript">
        $(document).ready(function(){
// var count = $('input:checkbox').each(function () {
// var sThisVal = (this.checked ? $(this).val() : "");
// console.log($(this).val());
// });
// console.log(count);
            /*var selected = [];
             var count = $(':checkbox').each(function () {
             var thisValue = (this.checked ? true : false);
             selected.push(thisValue);
             console.log(selected);
             });*/

            $("form").submit(function(){
                if(!testcheck()){
                    alert('Please check at least one salary type.');
                    return false;
                }
                return true;
            });
        });

        function testcheck()
        {
            var arr = [];
            $('.field_wrap :checkbox').each(function () {
                var thisValue = (this.checked ? true : false);
                arr.push(thisValue);
            });
            console.log($.inArray(true,arr))
            if($.inArray(true,arr) > -1){
                return true;
            }
            return false;

        }
    </script>
@endsection