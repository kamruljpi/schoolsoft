@inject('assignPermission','Erp\Forms\AssignPermissionForm')



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



                    {!! formFields($assignPermission)  !!}

                        <div id="group-access-table">
{{--{{ 'hello' }}--}}
                        </div>

                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    @parent
    {!! Html::script('select/js/select2.min.js') !!}
    <script>
        $(document).ready(function(){
            $('#role_id').select2();
            $('#access-btn').click(function (event) {
                event.preventDefault();
                var groupId = $('#role_id').val();
                if(groupId==0){
                    $.growl.warning({ message: "No User Group Selected!" });
                    return false;
                }
                $.ajax({
                    url: "{{ route('group-access') }}",
                    type: "GET",
                    data:{
                        'groupId':groupId,
                    },
                    success: function(data){
                        $data = $(data); // the HTML content your controller has produced
                        $('#group-access-table').html($data);
                    },
                    error: function(data){
                        if(data.status = 404){
                            $.growl.error({ message: "Permission Denied!!!!" });
                        }else{
                            $.growl.error({ message: "It has Some Error!" });
                        }
                    }
                });
            });

            $('#role_id').change(function (event) {
                event.preventDefault();

                var content = $('#group-access-table').html();
                if(content != ''){
                    $('#group-access-table').html('');
                }


            });
            $("#group-access-table").on("click",".all_view_class",function () {
                $(".check-common-viewclass").trigger('click');
            });
            $("#group-access-table").on("click",".all_add_class",function () {
                $(".check-common-addclass").trigger('click');
            });
            $("#group-access-table").on("click",".all_edit_class",function () {
                $(".check-common-editclass").trigger('click');
            });
            $("#group-access-table").on("click",".all_delete_class",function () {
                $(".check-common-deleteclass").trigger('click');
            });
            $("#group-access-table").on("click",".check-common-class",function () {
                var access_type = $(this).data("type");
                var access_role_id = $(this).data("role-id");
                var access_menu_id = $(this).data("menu-id");
                var access_checked = this.checked;

                    $.ajax({

                        type:'POST',
                        url:"{{ route('role-access') }}",
                        data:{
                            'access_type':access_type,
                            'access_role_id':access_role_id,
                            'access_menu_id':access_menu_id,
                            'access_checked':access_checked,
                        },
                        beforesend: function () {
//                            $.growl.warning({ message: "Please wait...!" });
                            $('.spning').css('display','block');
                            $('body').css('display','visible');
                        },
                        success: function (successData) {
                            $.growl.notice({ message: successData['success'] });
                        },error: function (errordata) {
                            $.growl.error({ message: "It has Some Error!" });
                        }
                    });
            });
        });
    </script>

@endsection


