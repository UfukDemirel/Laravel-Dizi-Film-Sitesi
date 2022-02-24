<!DOCTYPE html>
<html lang="en">
<head>
    <title>GİRİŞ</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/util.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-b-160 p-t-50">
            <form class="login100-form validate-form" action="{{route('loginpost')}}" method="POST">
                @csrf
                <div class="wrap-input100 rs1 validate-input" data-validate = "Username is required">
                    <input class="input100" type="email" name="email" value="{{old('email')}}">
                    <span class="label-input100">E-Mail</span>
                </div>

                <div class="wrap-input100 rs2 validate-input" data-validate="Password is required">
                    <input class="input100" type="password" name="password" value="{{old('password')}}">
                    <span class="label-input100">Şifre</span>
                </div>

                <div class="container-login100-form-btn">
                    <button type="submit" class="login100-form-btn">
                        GİRİŞ
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/vendor/animsition/js/animsition.min.js"></script>
<script src="/resources/vendor/bootstrap/js/popper.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/vendor/select2/select2.min.js"></script>
<script src="/resources/vendor/daterangepicker/moment.min.js"></script>
<script src="/resources/vendor/daterangepicker/daterangepicker.js"></script>
<script src="/resources/vendor/countdowntime/countdowntime.js"></script>
<script src="/resources/js/main.js"></script>
@include('sweetalert::alert')
</body>
</html>
