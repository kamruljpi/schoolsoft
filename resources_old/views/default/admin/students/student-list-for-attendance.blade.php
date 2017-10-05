
{{--{{ dd($studentsWithPhotos) }}--}}



                                    <h4>Date : {{ $attDate }}</h4>
                                    <h4>Class : {{ $studentClass->class_name }}</h4>

                                    @if(isset($studentSection))
                                        <h4>Section : {{ $studentSection->section_name }}</h4>
                                    @endif

                                    @if(isset($studentSubject))
                                    <h4>Section : {{ $studentSubject->subject_name }}</h4>
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
                                        @foreach($studentsWithPhotos as $photo => $user)

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
                                                    {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
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
                                                    <input type="checkbox" class="action-normal " data-stinfo = {{ $stInfo }} />
                                                </td>
                                                <td>
                                                    <input type="checkbox" class="in-time" data-stinfo= {{  $stInfo }} />
                                                    <input type="text" class="attendance-time att-in"  placeholder="In Time" />
                                                </td>
                                                <td>
                                                    <input type="checkbox" class="out-time" data-stinfo={{ $stInfo }} />
                                                    <input type="text" class="attendance-time att-out"  placeholder="Out Time" />
                                                </td>

                                            </tr>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Class</th>
                                            <th>Section</th>
                                            <th>Roll No</th>
                                            <th>Action</th>
                                            <th>Advanced Action</th>
                                        </tr>
                                        </tfoot>
                                    </table>


@section('scripts')

    @parent




@endsection