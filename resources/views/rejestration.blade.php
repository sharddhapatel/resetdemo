<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
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
  <form action="{{ url('insertrejestration') }}" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
    
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name :-</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname"  placeholder="Your name.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name :-</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname"  placeholder="Your last name.." required>
      </div>
    </div>
    <div class="row" style="width: 100%">
        <div class="col-25">
          <label for="lname">Email :-</label>
        </div>
        <div class="col-75">
          <input type="email" id="lname" name="email"  placeholder="email.." required>
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Password :-</label>
        </div>
        <div class="col-75">
          <input type="text" id="lname" name="password"  placeholder="password.." required>
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="country">Stat :-</label>
        </div>
        <div class="col-75">
              <select class="form__input js-example-basic-single" id="state" name="state" required>
              <option selected="">Stat..</option>
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
            
           
             <select class="form__input js-example-basic-single" id="district" name="district" required>
              <option selected="">Dist..</option>
          </select>
           
          </div>
        </div>
        
    <div class="row">
      <div class="col-25">
        <label for="subject">Subject :-</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="message" placeholder="Write something.." style="height:200px" required></textarea>
      </div>
    </div>
    <div class="container mt-5" style="max-width: 550px">
      <div class="alert alert-danger" id="error" style="display: none;"></div>
     
      <div class="alert alert-success" id="successAuth" style="display: none;"></div>
    
        
          <label>Phone Number:</label>
          <input type="text" id="number" name="phoneno" class="form-control" placeholder="+91 ********">
          <div id="recaptcha-container"></div>
          <button type="button" class="btn btn-primary mt-3" onclick="sendOTP();">Send OTP</button>
     
    </div>
      <div class="mb-5 mt-5">
          <h5>Add verification code</h5>
          <div class="alert alert-success" name="code" id="successOtpAuth" style="display: none;"></div>
        
              <input type="text" id="verification" class="form-control" placeholder="Verification code">
              <button type="button" class="btn btn-danger mt-3" onclick="verify()">Verify code</button>
      </div>
{{-- <div class="row">
  <div class="col-25">
    <label for="subject">Add verification code:-</label>
  </div>
  <div class="col-75">
    <input type="text" id="verification" class="form-control" placeholder="Verification code">
  </div>
</div> --}}
      
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
{{-- auth  --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>

    <script>
        var firebaseConfig = {
            apiKey: "AIzaSyBFpMJJJkQ_WNYKVpFjEGRBu7IHb6y-a_c",
            authDomain: "laravel-phone-otp-auth-e8a5e.firebaseapp.com",
            databaseURL: "https://PROJECT_ID.firebaseio.com",
            projectId: "laravel-phone-otp-auth-e8a5e",
            storageBucket: "laravel-phone-otp-auth-e8a5e.appspot.com",
            messagingSenderId: "200983038722",
            appId: "1:200983038722:web:b647e6a3cccdacd266101b",
            measurementId: "G-825PZE7QD8"
        };
        firebase.initializeApp(firebaseConfig);
    </script>
    <script type="text/javascript">
        window.onload = function () {
            render();
        };
        function render() {
            window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');
            recaptchaVerifier.render();
        }
        function sendOTP() {
            var number = $("#number").val();
            firebase.auth().signInWithPhoneNumber(number, window.recaptchaVerifier).then(function (confirmationResult) {
                window.confirmationResult = confirmationResult;
                coderesult = confirmationResult;
                console.log(coderesult);
                $("#successAuth").text("Message sent");
                $("#successAuth").show();
            }).catch(function (error) {
                $("#error").text(error.message);
                $("#error").show();
            });
        }
        function verify() {
            var code = $("#verification").val();
            coderesult.confirm(code).then(function (result) {
                var user = result.user;
                console.log(user);
                $("#successOtpAuth").text("Auth is successful");
                $("#successOtpAuth").show();
            }).catch(function (error) {
                $("#error").text(error.message);
                $("#error").show();
            });
        }
    </script>
</body>
</html>