<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h2>Rejestration Form</h2>
{{-- <p>Resize the browser window to see the effect. When the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other.</p> --}}

<div class="container">
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
  <form action="{{ url('editrejesters') }}" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
    <input type="hidden" name="id" id="id" value="{{$data->id}}">
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name :-</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" value="{{$data->fname}}" placeholder="Your name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name :-</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" value="{{$data->lname}}" placeholder="Your last name..">
      </div>
    </div>
    <div class="row">
        <div class="col-25">
          <label for="lname">Email :-</label>
        </div>
        <div class="col-75">
          <input type="email" id="lname" name="email" value="{{$data->email}}" placeholder="email..">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Password :-</label>
        </div>
        <div class="col-75">
          <input type="text" id="lname" name="password" value="{{$data->password}}" placeholder="password..">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="country">Stat :-</label>
        </div>
        <div class="col-75">
              <select class="form__input js-example-basic-single" id="state" name="state">
              <option selected="">{{ $data->stat }}</option>
              @foreach ($stats as $key => $value)
              <option value="{{$value->state_id}}"> {{$value->state_title}}</option>
              @endforeach
          </select>
        
        </div>
      </div>
        <div class="row">
          <div class="col-25">
            <label for="country">Dist :-</label>
          </div>
          <div class="col-75">
            
           
             <select class="form__input js-example-basic-single" id="district" name="district">
              <option selected="">{{ $data->dist }}</option>
          </select>
           
          </div>
        </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Subject :-</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="message" placeholder="Write something.." style="height:200px">{{$data->message}}</textarea>
      </div>
    </div>
    <center>
    <div class="col-25">
      <input type="submit" value="Submit">
    </div>

    <br><br><br>
    <div class="row">
      {{-- <input type="submit" value="Submit"> --}}
      <button type="submit"><a href="{{ url('login') }}">Login</a></button>
    </div>
  </center>
  </form>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script>
    $('#state').change(function() {
        var sid = $(this).val();
        // alert(sid);
        if (sid) {
            $.ajax({
                type: "get",
                url: "{{url('/getdis')}}/" + sid,
                success: function(res) {
                    if (res) {
                        $("#district").empty();
                        $("#district").append('<option>Select district</option>');
                        $.each(res, function(key, value) {
                            $("#district").append('<option value="' + key + '">' + value + '</option>');
                        });
                    }
                }
            });
        } else {
            alert('hello');
        }
    });
    $('#district').change(function() {
        var did = $(this).val();
        // alert(did);
        if (did) {
            $.ajax({
                type: "get",
                url: "{{url('/getcity')}}/" + did,
                success: function(res) {
                    if (res) {
                        $("#city").empty();
                        $("#city").append('<option>Select city</option>');
                        $.each(res, function(key, value) {
                            $("#city").append('<option value="' + key + '">' + value + '</option>');
                        });
                    }
                }
            });
        } else {
            alert('hello');
        }
    });
</script>
</body>
</html>
