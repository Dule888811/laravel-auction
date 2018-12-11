@extends('layouts.layout')

@section('content')
    @if(count($errors))
        @foreach($errors->all() as $error)
            {{$error}}<br>
        @endforeach
    @endif
    <form action ="{{route('product.store')}}" method="POST" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="form-input">
        <label for="product_name">product_name:
            <input type="text" name="product_name" id="product_name"></label>
        </div>
        <div class="form-input">
        <label for="product_description">Product description:
            <input type="text" name="product_description" id="product_description"></label>
        </div>
        <div class="form-input">
        <label for="start_price">start_price:
            <input type="text" name="start_price" id="start_price"></label>
        </div>
        <div class="form-input">
        <label for="product_delivery">product_delivery:
            <input type="text" name="product_delivery" id="product_delivery"></label>
        </div>
        <div class="form-input">
            <label for="featured">featured image</label>
            <input type="file" name="featured">
        </div>
        <div class="form-input">
            <label for="payment_choice">payment choice</label>
            <input type="text" name="payment_choice">
        </div>

        <input type="submit" name="insert"  value="Create"><br/>
    </form>
    <a href="{{route('home')}}">Home</a>
@stop