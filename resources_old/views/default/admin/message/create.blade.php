@inject('createMessage','Erp\Forms\MessageForm')



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area" >
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
        <div class="inner-view">
            <div class="row ">
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
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <ul>
                                <li>{{ session()->get('success') }}</li>
                            </ul>
                        </div>
                    @endif

                    {!! inputLangControl() !!}
                    {!! Form::open(array('route' => 'message-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createMessage)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')


    @parent
    <script src="{{ asset('jquery-validation/dist/jquery.validate.min.js') }}"></script>
    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}
    {{-- <script>
         $("#create-form").validate();
     </script>--}}
    <script type="text/javascript">
        $(document).ready(function(){
            $('#role_id').select2();
            $('#to_send').select2();
            $('#notice_date').datepicker();
            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
            /*start choose section onchange event of class*/
            $('#role_id').change(function(){
                var host = window.location.origin ;
                var roleId = $('#role_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/message/' + roleId,
                    'dataType': 'json'
                }).success(function (data) {
                    console.log(data);
                    var user = "<option value=''>Select </option>";
                    $(data[0]).each(function(index,item){
                        user += "<option value ="+ item.id +">"+item.first_name+ ' ' +item.last_name+"</option>";
                    });
                    $('#to_send').html(user);
                })
            });
            /*end choose section onchange event of class*/
        });
    </script>


    {{--<script src="{{ asset('jquery-validation/dist/jquery.validate.js') }}"></script>--}}

@endsection