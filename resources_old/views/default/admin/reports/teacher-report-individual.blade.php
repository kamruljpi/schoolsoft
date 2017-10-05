<div class="row margin-top-area">
    <div class="col-md-12 view">

        <table class="table table-bordered table-hover table-responsive view-table-holder">
            <thead>
            <tr class="th-bg ">
                <th colspan="4" class="text-center">
                    <div class="view-picture">
                        @if(isset($photo) && !empty($photo))
                            {!!  Html::image('imagecache/dummy/'.$photo) !!}
                        @endif
                        {{--<span class="glyphicon glyphicon-user fa-man img-circle" aria-hidden="true"></span>--}}
                    </div>
                </th>
            </tr>
            <tr class="th-bg">
                <th colspan="4" class="text-center">
                    <div class="view-name">{{ $teacherReport->translate($locale)? $teacherReport->first_name.' '.$teacherReport->last_name:$teacherReport->translate($defaultLocale)->first_name.' '.$teacherReport->translate($defaultLocale)->last_name }}</div>
                </th>
            </tr>
            <tr class="th-bg">
                <th colspan="4" class="text-center">{{ $teacherReport->designation->name }}</th>
            </tr>
            <tr class="th-bg">
                <th colspan="4" class="text-center">{{ $teacherReport->email }}</th>
            </tr>

            </thead>

            <tbody>
            <tr>
                <td colspan="4">
                    <h3 class="nomargin"> Personal Information</h3>
                </td>
            </tr>
            <tr>
                <td> Username</td>
                <td>   {{ $teacherReport->username }}</td>

            </tr>
            <tr>
                <td> Date of Birth </td>
                <td>   {{ $teacherReport->birthday }}</td>

            </tr>
            <tr>
                <td> Joining Date </td>
                <td>   {{ $teacherReport->dept_join_date }}</td>

            </tr>
            <tr>
                <td>Department </td>
                <td> {{ $teacherReport->department->name  }}</td>
            </tr>
            <tr>
                <td> Address</td>
                <td> {{ $teacherReport->translate($locale)?$teacherReport->translate($locale)->address:$teacherReport->translate($defaultLocale)->address }}</td>

            </tr>
            <tr>

                <td> Gender </td>
                <td> {{ $teacherReport->gender->translate($locale)?$teacherReport->gender->gender_name:$teacherReport->gender->translate($defaultLocale)->gender_name  }}</td>

            </tr>
            <tr>
                <td> Religion </td>
                <td> {{ $teacherReport->religion->name }}</td>
            </tr>
            <tr>
                <td> Phone</td>
                <td> {{ $teacherReport->phone }}</td>

            </tr>
            <tr>
                <td> NID Number </td>
                <td> {{ $teacherReport->nid_number }}</td>
            </tr>
            <tr>
                <td> Passport number </td>
                <td> {{ $teacherReport->passport_no }}</td>
            </tr>
            <tr>
                <td> Birth Certificate Number </td>
                <td> {{ $teacherReport->birth_certificate_no }}</td>
            </tr>

            </tbody>
        </table>
    </div>
    <div class="clearfix"></div>
</div>