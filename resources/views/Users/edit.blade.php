@extends('layouts.app')

@section('content')

    @if(count($errors))
        @foreach($errors->all() as $error)
            {{$error}}<br>
        @endforeach
    @endif

    <form action = "{{route('user.save')}}" method="post">
        {{csrf_field()}}
    <div class="form-input">
        <label for="f_name">First name</label>
        <input type="text"  name="f_name">
    </div>

    <div class="form-input">
        <label for="l_name">Last name</label>
        <input type="text" name="l_name">
    </div>

        <div class="form-input">
            <label for="email">Email</label>
            <input type="text" name="email">
        </div>




        <div class="form-input">
            <button type="submit">Submit</button>
        </div>

    </form>
    <a href="{{route('home')}}">Home</a>
@endsection