@inject('createTrainingForm','Erp\Forms\TrainingForm')



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
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
                <div class="col-md-8 snt form-horizontal">

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
                    {!! Form::open(array('route' => 'training-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createTrainingForm)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')


    @parent
    <script src="{{ asset('jquery-validation/dist/jquery.validate.min.js') }}"></script>
    {!! Html::script('select/js/select2.min.js') !!}
    {{-- <script>
         $("#create-form").validate();
     </script>--}}
    <script type="text/javascript">
        $(document).ready(function(){
            $('#country_id').select2();
            $('#training_year').select2();
            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
        });
    </script>


    {{--<script src="{{ asset('jquery-validation/dist/jquery.validate.js') }}"></script>--}}

@endsection