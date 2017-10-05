@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-5">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-7 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.specialization') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ trans('sidebar.specialization_info') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">{{ trans('sidebar.skill_cat_name') }} </td>
                        <td>  {{ $specializationData->translate($locale)? $specializationData->specializationOfSkillCategory->skill_category_name:$specializationData->translate($defaultLocale)->specializationOfSkillCategory->skill_category_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.skills') }} </td>
                        <td>
                            @foreach($skillArray as $skill)
                                {{ $skill->translate($locale)? $skill->skill_name:$skill->translate($defaultLocale)->skill_name }} <br />
                            @endforeach
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.skill_description') }}</td>
                        <td>  {{ $specializationData->translate($locale)? $specializationData->skill_description:$specializationData->translate($defaultLocale)->skill_description }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.extra_activities') }} </td>
                        <td>  {{ $specializationData->translate($locale)? $specializationData->extracurricular_activities:$specializationData->translate($defaultLocale)->extracurricular_activities }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $specializationData->status }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


