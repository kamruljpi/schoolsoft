@inject('leaveApplicationForm','Erp\Forms\LeaveApplicationForm')
@extends('default.employee.layouts.master')



@section('left-two-collumn')

    <div class="row">
        <div class="col-sm-12">
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
        {!! inputLangControl() !!}
        {!! Form::open(array('route' => 'application-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

        {!! formFields($leaveApplicationForm)  !!}

        {!!  Form::close()   !!}

    </div>
        </div>
    </div>

@endsection


@section('profile-image')

    @include('default.employee.layouts.partials.profile-image')

@endsection

@section('scripts')
    @parent

    <script type="text/javascript">
        $(document).ready(function(){

            /* start multi-lingual option*/

            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
            /*end multi-lingual option*/

            /*--------------------------------------------------------------------------------------------------------------*/
        });
    </script>

@endsection