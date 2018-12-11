@extends('layouts.layout')

@section('content')
<a href="{{route('offer.remove',['id' => $id])}}">Remove your offer</a>

@stop