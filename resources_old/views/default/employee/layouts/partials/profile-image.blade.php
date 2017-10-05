
@set('authenticatedUser',request()->user())
@if(  count($authenticatedUser->photos)>0)
  {!!  Html::image('imagecache/large/'.$authenticatedUser->photos->last()->name , 'Profile Picture',['class'=>'img-responsive margin-bottom-20']) !!}
@endif


{{--<img src="{{ asset('employee/images/default.jpg') }}" class="img-responsive profile-img margin-bottom-20"alt="ProfileImage">--}}
<h3 class="text-center">{{ $authenticatedUser->translate($locale,$defaultLocale)->first_name.' '.$authenticatedUser->translate($locale,$defaultLocale)->last_name }}</h3>
<h6 class="text-center">{{ !is_null($authenticatedUser->designation)? $authenticatedUser->designation->name : 'not available' }}</h6>
<h6 class="work-place"><strong>At work for : </strong>1 year 2 month 5 day </h6>
<hr>
<div class="service-block">
    <div class="row profile">
        <div class="col-md-4 col-sm-4 col-xs-6" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="January">
            <div class="profile-title">
                3/16
            </div>
            <div class="text-uppercase profile-text">
                Attendance
            </div>
        </div> <!--col-md-4-->
        <div class="col-md-4 col-sm-4 col-xs-6" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="January">
            <div class="profile-title">
                20/16
            </div>
            <div class="text-uppercase profile-text">
                LEAVE
            </div>
        </div> <!--col-md-4-->
        <div class="col-md-4 col-sm-4 col-xs-6" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="January">
            <div class="profile-title">
                7
            </div>
            <div class="text-uppercase profile-text">
                AWARDS
            </div>
        </div> <!--col-md-4-->


    </div>
</div> <!--service-block-->
<div class="panel-heading overflow-h">
    <h2 class="heading-xs pull-left">
        <i class="fa fa-birthday-cake"></i>
        Birthdays
    </h2>
</div>
<ul id="scrollbar5" class="list-unstyled contentHolder">
    <li class="notification">
        <img src="{{ asset('employee/images/default.jpg') }}" class="rounded-x" alt="ProfileImage">
        <div class="overflow-h">
            <span><strong>Orange</strong> has birthday on</span>
            <strong>01 January</strong>
        </div>
    </li>

</ul>
