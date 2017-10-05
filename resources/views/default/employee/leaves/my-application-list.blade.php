
@extends('default.employee.layouts.master')



@section('left-two-collumn')

    <div class="row">
        <div class="col-sm-12">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Leave Type</th>
                    <th>Subject</th>
                    <th>Explanation</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Applied On</th>
                    <th>Status</th>
                    <th>Action</th>

                </tr>
                </thead>
                <tbody>
                {{--{{ dd($model) }}--}}
                @set('sl',1)
                @foreach($myApplications as $key => $application)


                    <tr>
                        <td>{{$sl++}}</td>
                        <td>
                            {{ $application->user->translate($locale)? $application->user->first_name.' '.$application->user->last_name:$application->user->translate($defaultLocale)->first_name.' '.$application->user->translate($defaultLocale)->last_name }}
                        </td>
                        <td>{{ $application->leave->type or 'Null'}}</td>
                        <td>{{ $application->translate($locale,$defaultLocale)->subject or 'Null'}}</td>
                        <td>{{ $application->translate($locale,$defaultLocale)->explanation or 'Null' }}</td>
                        <td>{{ $application->from or 'Null'}}
                        <td>{{ $application->to or 'Null' }}</td>
                        <td>{{ $application->applied_on or 'Null'}}
                        <td>{{ $application->status->name or 'Null' }}</td>
                        <td>

                            <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ url('application/edit',[$application->id]) }}"><i class="fa fa-edit"></i></a>

                            <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ url('application/delete',[$application->id]) }}"><i class="fa fa-trash-o"></i></a>
                        </td>

                    </tr>
                @endforeach

                </tbody>
                <tfoot>
                <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Leave Type</th>
                    <th>Subject</th>
                    <th>Explanation</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Applied On</th>
                    <th>Status</th>
                    <th>Action</th>

                </tr>
                </tfoot>
            </table>
        </div>
    </div>

@endsection


@section('profile-image')

  @include('default.employee.layouts.partials.profile-image')
@endsection

