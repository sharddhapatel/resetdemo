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
    <form class="row" action="{{url('resetlink')}}" method="post">
        {{csrf_field()}}
        <center>
        <div class="col-md-6" style="padding: 8px;">
            <input type="text" class="form-control" name="email" placeholder="EMAIL" aria-label="First name">
        </div>

        <div class="col-md-6" style="padding: 8px;">
            <button type="submit" class="btn btn-primary" style="width:40%; height:45px; padding-top:11px; ">Submit</button>
        </div>
    </center>
        
    </form>
</body>
</html>