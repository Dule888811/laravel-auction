<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::group( ['middleware' => 'auth' ], function()
{
    Route::get('/delete/product/{id}', 'ProductController@delete')->name('product.delete');
    Route::get('/offer/remove/form/{id}', 'OfferController@remove_form')->name('offer.remove.form');
    Route::get('/offer/remove/{id}', 'OfferController@remove')->name('offer.remove');
    Route::post('/offer/{id}', 'OfferController@store')->name('offer.store');
    Route::get('/offer/{id}', 'OfferController@insert')->name('offer.insert');
    Route::get('/offers/active/{id}', 'ProductController@showOffers')->name('offers.active');
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/user/seals', 'UserController@seals')->name('user.seals');
    Route::get('/user/edit', 'UserController@edit')->name('user.edit');
    Route::post('/user/save', 'UserController@save')->name('user.save');
    Route::get('/user/buys', 'UserController@buys')->name('user.buys');
    Route::get('/product/insert',[
        'uses' => 'ProductController@insert',
        'as' => 'product.insert'
    ]);
    Route::post('/products/store',[
        'uses' => 'ProductController@store',
        'as' => 'product.store'
    ]);
});
Route::post('/search', 'ProductController@search_products')->name('products.search');
Route::get('welcome', 'HomeController@index')->name('welcome');

