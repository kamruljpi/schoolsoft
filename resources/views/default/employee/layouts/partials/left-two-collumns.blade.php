<div class="row">
    <div class="col-sm-6">
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">


                @include('default.employee.layouts.partials.personal-details')

            </div>
        </div>
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                @include('default.employee.layouts.partials.company-details')
            </div>
        </div>
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                @include('default.employee.layouts.partials.bank-details')
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                @include('default.employee.layouts.partials.noticeboard')
            </div>
        </div>
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                @include('default.employee.layouts.partials.holidays')
            </div> <!--scrollbar-notice-->
        </div>
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">

                @include('default.employee.layouts.partials.awards')

            </div> <!--scrollbar-notice-->
        </div>
    </div>
</div>
<div class="row">
    <div class="profile-body">
        <div class="col-md-12">
            <div class="panel panel-profile no-bg">
                <div class="panel-heading overflow-h">
                    @include('default.employee.layouts.partials.attendance-calender')
                </div>
            </div>
        </div>
    </div>
</div>