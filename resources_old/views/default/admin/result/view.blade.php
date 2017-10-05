@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>

                        <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Result System</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder m_bottom_40">
            <table class="table table-bordered table-hover table-responsive view-table-holder">
                <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                          Result System
                        </th>
                    </tr>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font-small text-center">
                          Name:  {{ $resultSystemData->name }}
                        </th>
                    </tr>
                    </thead>
                </table>
                            @foreach($test as $testValue)
                            @set('testVar',json_decode($testValue->settings))

                            <fieldset>
                                <legend>Marks Settings</legend>
                           
                            <table class="table table-bordered table-hover table-responsive table-striped">
                                <tr>
                                    <td> Grade/Class/Division </td>
                                    <td class="th_width_100"> {{ $testVar->grade_class }}</td>
                                </tr>
                                <tr>
                                    <td> GPA </td>
                                    <td> {{ $testVar->gpa }}</td>
                                </tr>
                                <tr>
                                    <td> Subject Mark (Minimum) </td>
                                    <td> {{ $testVar->sub_min }}</td>
                                </tr>
                                <tr>
                                    <td> Subject Mark (Maximum) </td>
                                    <td> {{ $testVar->sub_max }}</td>
                                </tr>
                                <tr>
                                    <td> Total Mark (Minimum) </td>
                                    <td> {{ $testVar->total_min }}</td>
                                </tr>
                                <tr>
                                    <td> Total Mark (Maximum) </td>
                                    <td > {{ $testVar->total_max }}</td>
                                </tr>
                            </table>
                             </fieldset>
                            @endforeach
                     
                   
                </div>
                <br>
            </div>
        </div>
    </div>
@endsection