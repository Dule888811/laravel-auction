@extends('layouts.layout')

@section('content')
    @if(count($errors))
        @foreach($errors->all() as $error)
            {{$error}}<br>
        @endforeach
    @endif
    <form action ="{{route('offer.store',$id)}}" method="POST">
        {{csrf_field()}}
    <div class="form-input">
        <label for="offer">insert your offer:
            <input type="text" name="offer"></label>
    </div>
    </form>
    @stop