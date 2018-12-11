<style>
    .list{
        text-align: center;
    }
    .ul-products{
        list-style: none;
    }
</style>
    <div class="list">
    @foreach($products as $product)
        <ul class="ul-products">
            <li class="li-products">Product name: {{$product->product_name}}</li>
            <li class="li-products">Product description: {{$product->product_description}}</li>
            <li class="li-products">Start price: {{$product->start_price}}</li>
            <li class="li-products">Product delivery: {{$product->product_delivery}}</li>
            <li><img src="{{$product->featured}}" alt="no image" width="50px" height="50px"></li>
        </ul>
        @if(\Auth::user() && \Auth::user()->id !== $product->user_id)
            <a href="{{route('offer.insert',['id' => $product->id])}}">Insert offer</a>
            @else
                <a href="{{route('offers.active',['id' => $product->id])}}">See all active offers</a>
                <a href="{{route('product.delete',['id' => $product->id])}}">Delete product</a>
         @endif
        <hr>
    @endforeach
        <a href="{{route('home')}}">Home</a>
    </div>