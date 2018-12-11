@extends('layouts.layout')

@section('content')
    @foreach($products as $product)
        <p class="show">Your product {{$product->product_name}} was sold for {{$product->offers()->where('offer_active',1)->max('money')}}</p>
    @endforeach
@stop