
{{--{{ dd($studentsWithPhotos) }}--}}



                                    <h4>Date : {{ $attDate or 'Not Available'}}</h4>
                                    <h4>Class : {{ $studentClass->class_name or 'Not Available'}}</h4>

                                    @if(isset($studentClass->class_name))
                                        @set('present_type',$studentClass->class_name)
                                        @set('present_type_id',$studentClass->id)
                                    @endif

                                    @if(isset($studentSection))
                                        <h4>Section : {{ $studentSection->section_name or 'Not Available'}}</h4>
                                        @set('present_type',$studentSection->section_name)
                                        @set('present_type_id',$studentSection->id)
                                    @endif

                                    @if(isset($studentSubject))
                                        <h4>Subject : {{ $studentSubject->subject_name or 'Not Available'}}</h4>
                                        @set('present_type',$studentSubject->subject_name)
                                        @set('present_type_id',$studentSubject->id)
                                    @endif



                                    <table id="studentList" class="table table-bordered table-striped" style="text-align: center">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Class</th>
                                            <th>Section</th>
                                            <th>Roll No</th>
                                            <th>Action</th>
                                            <th colspan="2" >Advanced Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @if(isset($studentsWithPhotos) && count($studentsWithPhotos)>0)

                                            @foreach($studentsWithPhotos as $photo => $user)

                                                @set('todaysAttendance',null)
                                                @if( !$user->studentAttendances->isEmpty())

                                                    @set('todaysAttendance', $user->studentAttendances()->wherePresentType($present_type)->wherePresentTypeId($present_type_id)->wherePresentDate($attDate)->first())

                                                @endif

                                                @set('stInfo', json_encode([
                                                        'userId'=>$user->id?$user->id:null,
                                                        'userRoll'=>$user->roll_no?$user->roll_no:null,
                                                        'stClass'=> $user->section->studentClass->class_name?$user->section->studentClass->class_name:null ,
                                                        'stClassId'=> $user->section->studentClass->id?$user->section->studentClass->id:null ,
                                                        'section'=> $user->section->section_name?$user->section->section_name:null,
                                                        'sectionId'=> $user->section->id?$user->section->id:null,
                                                        'stSection'=> isset($studentSection)?$studentSection->section_name:null,
                                                        'stSectionId'=> isset($studentSection)?$studentSection->id:null,
                                                        'subject'=> isset($studentSubject)?$studentSubject->subject_name:null,
                                                        'subjectId'=> isset($studentSubject)?$studentSubject->id:null,
                                                        'attDate'=> isset($attDate)?$attDate:null
                                                        ]))
                                                <tr>
                                                    <td>{{$sl++}}</td>


                                                    <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                                                    {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                                                    <td>

                                                        @if(!is_null($user->translate($locale)))
                                                            {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                                                        @else

                                                            Not available

                                                        @endif

                                                    </td>
                                                    <td>
                                                        {{ $user->section->studentClass->class_name or 'NA' }}

                                                    </td>
                                                    <td>
                                                        {{ $user->section->section_name or 'NA' }}

                                                    </td>
                                                    <td>
                                                        {{ $user->roll_no or 'NA' }}
                                                    </td>


                                                    <td>
                                                        <input type="checkbox" @if( !is_null($todaysAttendance)) checked="checked" @endif class="action-normal " data-stinfo = {{ $stInfo }} />
                                                    </td>
                                                    <td>
                                                        <input type="checkbox" @if( !is_null($todaysAttendance)) checked="checked" @endif class="in-time" data-stinfo= {{  $stInfo }} />
                                                        <input type="text" @if( !is_null($todaysAttendance))
                                                                                value="{{ $todaysAttendance->in_time or "00:00:00" }}"
                                                                                @else
                                                                                value= 00:00:00
                                                                                @endif
                                                                                class="attendance-time att-in" id="{{ 'att-in-'.json_decode($stInfo)->userId }}"  placeholder="In Time" />
                                                    </td>
                                                    <td>
                                                        <input type="checkbox" @if( !is_null($todaysAttendance)) checked="checked" @endif class="out-time" data-stinfo={{ $stInfo }} />
                                                        <input type="text" @if( !is_null($todaysAttendance))
                                                        value="{{ $todaysAttendance->out_time or "00:00:00" }}"
                                                               @else
                                                               value= 00:00:00
                                                               @endif
                                                               class="attendance-time att-out" id="{{ 'att-out-'.json_decode($stInfo)->userId }}" placeholder="Out Time" />
                                                    </td>

                                                </tr>
                                            @endforeach
                                        @endif

                                        </tbody>

                                    </table>


@section('scripts')

    @parent




@endsection