@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.employment_history') }}</li>
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
                            {{ trans('sidebar.employment_history_info') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.company_name') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->company_name:$employmentHistoryData->translate($defaultLocale)->company_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.company_business') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->employmentHistoryOfBusinessType->business_type_name:$employmentHistoryData->translate($defaultLocale)->employmentHistoryOfBusinessType->business_type_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.company_location') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->company_location:$employmentHistoryData->translate($defaultLocale)->company_location }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.company_held') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->position_held:$employmentHistoryData->translate($defaultLocale)->position_held }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.department') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->department:$employmentHistoryData->translate($defaultLocale)->department }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.responsible') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->responsibilites:$employmentHistoryData->translate($defaultLocale)->responsibilites }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.from_date') }}</td>
                        <td> {{ $employmentHistoryData->from_date }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.to_date') }}</td>
                        <td> {{ $employmentHistoryData->to_date }}</td>
                    </tr>
                    <tr>
                        <td class="th_width_150">{{ trans('sidebar.experiences_cat') }}</td>
                        <td>  {{ $employmentHistoryData->translate($locale)? $employmentHistoryData->employmentHistoryOfExperienceCategory->experience_category_name:$employmentHistoryData->translate($defaultLocale)->employmentHistoryOfExperienceCategory->experience_category_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.experiences') }}</td>
                        <td>
                            @foreach($experienceArray as $experience)
                                {{ $experience->translate($locale)? $experience->experience_name:$experience->translate($defaultLocale)->experience_name }} <br />
                            @endforeach
                        </td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $employmentHistoryData->status }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


