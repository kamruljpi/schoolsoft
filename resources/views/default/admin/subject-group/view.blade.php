
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
                            <li class="active">{{ trans('sidebar.subject_group_create') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view ">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ trans('sidebar.subject_group_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">{{ trans('translate.subject_group_name') }}</td>
                        <td>
                            @if(isset($subjectGroup) && !empty($subjectGroup))
                                {{ $subjectGroup->subject_group_name or 'Not Available' }}
                            @else
                                Sorry !!!! No Subject Group Name Given .....
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.class_name') }}</td>
                        <td>
                            @if(isset($subjectGroup->classOfSubjectGroup) && !empty($subjectGroup->classOfSubjectGroup))


                                {{ $subjectGroup->classOfSubjectGroup->class_name or 'Not Available' }}


                            @else

                                Sorry !!!! No Class Name Given .....

                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.subject') }}</td>
                        @if(isset($subjectGroup->subject_ids) && !empty($subjectGroup->subject_ids))
                            @set('subjects', explode(',', $subjectGroup->subject_ids))
                        @endif
                        <td>
                            @foreach($subjects as $value)
                                    @set('subjectData', \Erp\Models\Subject\Subject::where('id', $value)->get())
                                @foreach($subjectData as $subject)
                                    {{ $subject->subject_name }} <br>
                                @endforeach
                            @endforeach
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.status') }}</td>
                        <td>{{ $subjectGroup->status or 'Not Available' }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>
@endsection




