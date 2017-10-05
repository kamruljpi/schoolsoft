
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
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view">
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
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif

                    {!! Form::model(
                                $rackData,
                                array(
                                'route' => ['rack-edit',$rackData->id],
                                'files' => true,
                                'id'=>'create-form',
                                'class'=>'form-create',
                                'method'=>'PATCH'
                                ))
                    !!}

                    {!! formFields($editRack,$mode='edit',$rackData->id)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')


    @parent

    {{-- <script src="{{ asset('jquery-validation/dist/jquery.validate.min.js') }}"></script>--}}
    {!! Html::script('select/js/select2.min.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#building_id').select2();
            $('#floor_id').select2();
            $('#room_id').select2();
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

            /*start choose floor onchange event of building*/
            $('#building_id').change(function(){
                var host = window.location.origin ;
                var buildingId = $('#building_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/floor/' + buildingId,
                    'dataType': 'json'
                }).success(function (data) {
                    //console.log(data);
                    var floorForBuilding = "<option value=''>Select Floor</option>";
                    $(data[0]).each(function(index,item){
                        floorForBuilding += "<option value ="+ item.id +">"+item.floor_name+" </option>";
                    });
                    $('#floor_id').html(floorForBuilding);
                })
            });
            /*end choose floor onchange event of building*/

            /*start choose room onchange event of floor*/
            $('#floor_id').change(function(){
                var host = window.location.origin;
                var floorId = $('#floor_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/room/' + floorId,
                    'dataType': 'json'
                }).success(function (data) {
                    //console.log(data);
                    var roomForFloor = "<option value=''>Select Room</option>";
                    $(data[0]).each(function(index,item){
                        roomForFloor += "<option value ="+ item.id +">"+item.room_name+" </option>";
                    });
                    $('#room_id').html(roomForFloor);
                })
            });
            /*end choose room onchange event of floor*/
        });
    </script>

@endsection