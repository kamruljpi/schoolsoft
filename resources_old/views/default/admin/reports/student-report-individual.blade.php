<div class="view-table-holder m_bottom_40">
    <table class="table table-bordered table-hover table-responsive">
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
                <div class="view-name">{{ $singleStudent->translate($locale)? $singleStudent->first_name.' '.$singleStudent->last_name:$singleStudent->translate($defaultLocale)->first_name.' '.$singleStudent->translate($defaultLocale)->last_name }}</div>
            </th>
        </tr>

        <tr class="th-bg">
            <th colspan="4" class="text-center">
                <div class="view-name">
                    Father's Name :
                    {{ $singleStudent->translate($locale)?$singleStudent->translate($locale)->father_name:$singleStudent->translate($defaultLocale)->father_name }}
                </div>
            </th>
        </tr>

        <tr class="th-bg">
            <th colspan="4" class="text-center">
                <div class="view-name">
                    Class : {{$studentClass->class_name}}

                </div>
            </th>
        </tr>
        <tr class="th-bg">
            <th colspan="4" class="text-center">
                <div class="view-name">
                    Section : {{$studentSection->section_name}}

                </div>
            </th>
        </tr>

        <tr class="th-bg">
            <th colspan="4" class="text-center">{{ $singleStudent->email }}</th>
        </tr>

        </thead>
    </table>

    <fieldset>
        <legend>Student Login Information</legend>
        <table class="table table-bordered  table-striped">

            <tbody>
            <tr>
                <td>Username</td>
                <td>{{ $singleStudent->username }}</td>
            </tr>
            </tbody>
        </table>

    </fieldset>
    <fieldset>
        <legend>Student Information</legend>
        <table class="table table-bordered table-striped">
            <tbody>
            <tr>
                <td>Student ID</td>
                <td>{{ $singleStudent->employee_id }}</td>
            </tr>

            <tr>
                <td>Roll</td>
                <td> {{ $singleStudent->roll_no }}</td>
            </tr>

            <tr>
                <td> Guardian's Name</td>
                <td> {{ $guardianData->translate($locale)? $guardianData->first_name.' '.$guardianData->last_name:$guardianData->translate($defaultLocale)->first_name.' '.$guardianData->translate($defaultLocale)->last_name }}</td>
            </tr>


            <tr>
                <td> Mother's Name </td>
                <td> {{ $singleStudent->translate($locale)?$singleStudent->translate($locale)->mother_name:$singleStudent->translate($defaultLocale)->mother_name }}</td>

            </tr>
            <tr>
                <td> Admission Date</td>
                <td> {{ $singleStudent->dept_join_date }}</td>
            </tr>
            <tr>
                <td> Address</td>
                <td> {{ $singleStudent->translate($locale)?$singleStudent->translate($locale)->address:$singleStudent->translate($defaultLocale)->address }}</td>

            </tr>

            <tr>
                <td>Gender</td>
                <td> {{ $singleStudent->gender->translate($locale)?$singleStudent->gender->gender_name:$singleStudent->gender->translate($defaultLocale)->gender_name  }}</td>
            </tr>

            <tr>
                <td> Religion</td>
                <td> {{ $singleStudent->religion->name }}</td>
            </tr>

            <tr>
                <td> NID Number</td>
                <td> {{ $singleStudent->nid_number }}</td>
            </tr>
            <tr>
                <td> Passport number</td>
                <td> {{ $singleStudent->passport_no }}</td>
            </tr>
            <tr>
                <td>  Birth Certificate Number</td>
                <td> {{ $singleStudent->birth_certificate_no }}</td>
            </tr>

            </tbody>
        </table>



    </fieldset>

    <fieldset>
        <legend>Contact</legend>
        <table class="table table-bordered table-striped">

            <tbody>
            <tr>
                <td> Phone</td>
                <td> {{ $singleStudent->phone }}</td>

            </tr>
            <tr>
                <td>Emergency Contact Number</td>
                <td> {{ $singleStudent->emergency_contact }}</td>
            </tr>
            <tr>
                <td> Email</td>
                <td>{{ $singleStudent->email }}</td>
            </tr>
            </tbody>
        </table>


    </fieldset>


</div>