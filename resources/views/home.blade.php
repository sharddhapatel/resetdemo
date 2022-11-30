<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="{{URL:: asset('assets/css/style.css')}}">

</head>

<body>

<h2>Rejester User</h2>
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
<button type="submit" class="btn btn-primary"><a href={{ url('rejestration') }}>Add</a></button>
<form class="example" action="#" method="get" style="margin:auto;max-width:300px">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
<table style="width: 100%">
  <tr>
    <th>ID</th>
    <th>Fname</th>
    <th>Lname</th>
    <th>Email</th>
    <th>Password</th>
    <th>Stat</th>
    <th>District</th>
    <th>Message</th>
    <th>Action</th>
    {{-- <th>Delete</th> --}}
  
  </tr>
  @foreach($data as $ans)
  <tr>
    <td>{{$ans->id}}</td>
    <td>{{$ans->fname}}</td>
    <td>{{$ans->lname}}</td>
    <td>{{$ans->email}}</td>
    <td>{{$ans->password}}</td>
    <td>{{$ans->stat}}</td>
    <td>{{ $ans->dist }}</td>
    <td>{{ $ans->message }}</td>
    <td>
      <button type="submit"><a href="editrejestration/{{ $ans->id }}">Edit</a></button>
      <button type="submit"><a href="deleterejester/{{ $ans->id }}">Delete</a></button></td>
  </tr>
  @endforeach


</table>

<div class="page" >
    {{$data->links()}}
  </div>


</body>
</html>


