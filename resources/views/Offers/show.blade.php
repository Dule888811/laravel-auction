@extends('layouts.layout')

@section('content')
@foreach($offers as $offer)
@if($offer->offer_active)
    <p class="show">Offer: {{$offer->money}}</p></br>
 @endif
 @endforeach

@stop