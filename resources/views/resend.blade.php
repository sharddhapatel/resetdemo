<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    @if(Session::has('message'))
    <div class="alert alert-success">
        <i class="fa-lg fa fa-warning"></i>
        {!! session('message') !!}
    </div>
    @elseif(Session::has('error'))
    <div class="alert alert-danger">
        <i class="fa-lg fa fa-warning"></i>
        {!! session('error') !!}
    </div>
    @endif
    <form class="row" action="{{url('resendpassword')}}" method="post" enctype="multipart/form-data">
        {{csrf_field()}}

        <input type="hidden" id="id" name="id" value="{{ $list->id }}">
        <input type="hidden" id="token" name="token" value="{!! @$list->remember_token !!}">

        <div class="col-md-12" style="padding: 8px;">
            <input type="password" class="form-control" name="npass" placeholder="PASSWORD" aria-label="Password">
        </div>
        <div class="col-md-12" style="padding: 8px;">
            <input type="password" class="form-control" name="cpass" placeholder="ResetPassword" aria-label="ResetPassword">
        </div>

        <div class="col-md-12" style="padding: 8px;">
            <button type="submit" class="btn btn-primary" style="width:100%; height:46px; padding-top:11px; ">Submit</button>
        </div>


    </form>
</body>
</html>