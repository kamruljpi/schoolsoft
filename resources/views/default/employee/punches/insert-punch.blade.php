
@extends('default.employee.layouts.master')



@section('left-two-collumn')

    <div class="col-md-4 snt">

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        @if (session()->has('success'))
            <div class="alert alert-success">
                <ul>

                    <li>{{ session()->get('success') }}</li>

                </ul>
            </div>
        @endif
        @if( isset($punchFlag)  && $punchFlag=='0' || $punchFlag==null)

            @if(!session()->has('success'))
                <div class="alert alert-danger">
                    <ul>

                        <li>You r punched out... pls punch in</li>

                    </ul>
                </div>
            @endif
            {!! Form::open(array('route' => 'punch-in', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

            {!! Form::submit('Punch In',['class'=>'btn btn-success','style'=>'background-color:#0073b7', 'readonly'=>'readonly']) !!}

            {!!  Form::close()   !!}

        @elseif(isset($punchFlag) && $punchFlag=='1')
            @if(!session()->has('success'))
                <div class="alert alert-success">
                    <ul>

                        <li>You r punched in ..Pls punch out before leaving...</li>

                    </ul>
                </div>
            @endif
            {!! Form::open(array('route' => 'punch-out', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

            {!! Form::submit('Punch Out',['class'=>'btn btn-success','style'=>'background-color:#0073b7', 'readonly'=>'readonly']) !!}

            {!!  Form::close()   !!}
        @endif
    </div>
    <div class="col-md-8 snt ">

        @set('authenticatedUser',request()->user())
        @if(  count($authenticatedUser->photos)>0)
            {!!  Html::image('imagecache/small/'.$authenticatedUser->photos->last()->name , 'Profile Picture',['class'=>'img-responsive margin-bottom-20']) !!}
        @endif
        <table border="1">
            <tr>
                <td>Name</td>
                <td>{{ $authenticatedUser->translate('en','bn')->first_name.' '.$authenticatedUser->translate('en','bn')->last_name }}</td>
            </tr>
            <tr>
                <td>Department</td>
                <td>{{ $authenticatedUser->department->name or 'Not Available' }}</td>
            </tr>
            <tr>
                <td>Designation</td>
                <td>{{ $authenticatedUser->designation->name or 'Not Available' }}</td>
            </tr>
            <tr>
                <td>Shift</td>
                <td>{{ !is_null($authenticatedUser->shift)?$authenticatedUser->shift->translate('en','bn')->name:'Not Available' }}</td>
            </tr>
        </table>
    </div>

@endsection


@section('profile-image')

  @include('default.employee.layouts.partials.profile-image')
@endsection

