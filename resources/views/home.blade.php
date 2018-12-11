@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">


                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="content">
                            <div class="title m-b-md">
                                <form action="/search" method="POST" role="search">
                                    {{ csrf_field() }}
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="criteria"
                                               placeholder="Search products">
                                    </div>
                                </form>
                            </div>
                            <br class="input-group">
                                <a class="hrefInsert" href="{{route('product.insert')}}">Insert product</a></br>
                                <a class="hrefInsert" href="{{route('user.seals')}}">Your seals</a></br>
                                <a class="hrefInsert" href="{{route('user.buys')}}">Your buys</a></br>
                                <a class="hrefInsert" href="{{route('user.edit')}}">Edit Profile</a></br>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
@endsection
