@extends('layouts.layout')

@section('content')
        @foreach($productSold as $sold)
    <p class="show">You bought it {{$sold->product_name}} for {{$sold->money}}</p>
        @endforeach

@stop
