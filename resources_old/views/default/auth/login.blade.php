@inject('formName','Erp\Forms\LoginForm')

        <!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu360 Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="{!! asset('theme_components/form-1/assets/bootstrap/css/bootstrap.min.css') !!}">
    <link rel="stylesheet" href="{!! asset('theme_components/form-1/assets/font-awesome/css/font-awesome.min.css') !!}">
    <link rel="stylesheet" href="{!! asset('theme_components/form-1/assets/css/form-elements.css') !!}">
    <link rel="stylesheet" href="{!! asset('theme_components/form-1/assets/css/style.css') !!}">


</head>

<body>


<div class="login-page">
    <div class="logo">
        <img src="{!! asset('theme_components/form-1/assets/img/logo_edu.png') !!}">
    </div>
    <div class="form">

        <div class="form-bottom">

            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            {!! Form::open(['url' => 'auth/signin', 'class'=>'login-form']) !!}

            {!! formFields($formName)  !!}

            {!! Form::submit('Submit',['class'=>'btn btn-primary','readonly'=>'readonly']) !!}

            {!! Form::close() !!}
        </div>
        <p class="message">Not Authorize? <a href="#">Create an account</a></p>
        <p class="message"><a href="#">Forgot Password</a></p>
    </div>
</div>





</body>

</html>