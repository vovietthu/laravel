<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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
// Client

Route::namespace('Client')->prefix('/')->group(function () {
    Route::namespace('Auth')->prefix('auth')->group(function () {

        Route::get('/login', 'AuthController@showLogin')->name('auth.show.login');
        Route::post('/login', 'AuthController@login')->name('auth.post.login');
        Route::get('/register', 'AuthController@showRegister')->name('auth.show.register');
        Route::post('/register', 'AuthController@register')->name('auth.post.register');
        Route::get('/logout', 'AuthController@logout')->name('auth.logout');
        Route::get('/resetpass', 'AuthController@resetPass')->name('auth.resetpass');
        Route::post('/sendlink', 'AuthController@sendLink')->name('auth.sendlink');
        Route::get('change-password/{token}','AuthController@showChangePassword');
        Route::post('change-password','AuthController@updatePassword')->name('auth.updatepassword');
        // Social Login
        Route::get('/oauth/{driver}', 'SocialController@redirectToProvider')->name('auth.social.oauth');
        Route::get('/oauth/{driver}/callback', 'SocialController@handleProviderCallback')->name('auth.social.callback');
    });

    Route::get('', 'HomeController@index')->name('client.home');
    Route::get('article', 'HomeController@article')->name('client.article');
    Route::get('article-detail/{id}', 'HomeController@article_detail')->name('client.article.detail');
    Route::get('product', 'ProductController@product')->name('client.product');
    Route::get('product-detail/{id}', 'ProductController@product_detail')->name('client.product.detail');
    Route::get('product-search','ProductController@search')->name('client.search.product');
    Route::get('product-category/{category}','ProductController@category')->name('client.product.category');
    Route::get('product-brand/{brand}','ProductController@brand')->name('client.product.brand');
    Route::get('add-to-cart', 'ProductController@addToCart');
    Route::get('delete-item/{id}', 'ProductController@deleteItem')->name('delete.item');
    Route::get('increase-item/{id}', 'ProductController@increaseItem')->name('increase.item');
    Route::get('decrease-item/{id}', 'ProductController@decreaseItem')->name('decrease.item');
    Route::get('shopping-cart', 'OrderController@shopping_cart')->name('client.shopping.cart');
    Route::get('checkout', 'OrderController@checkout')->name('client.checkout');
    Route::get('check-voucher', 'OrderController@checkVoucher');
    Route::post('pay','OrderController@pay')->name('pay');
    Route::get('thank','OrderController@thank')->name('thank');
    Route::get('filter', 'ProductController@filter');
    Route::get('sort', 'ProductController@sort');
    Route::get('my-order','OrderController@myOrder')->name('my.order');
    Route::get('my-order/{id}','OrderController@showMyOrder')->name('my.order.show');
    Route::post('add-comment','CommentController@store')->name('add.comment');
    Route::get('wishlist','ProductController@wishlist')->name('client.wishlist');
    Route::get('add-wishlist/{id}','ProductController@addWishlist')->name('client.add.wishlist');
    Route::get('delete-wishlist/{id}','ProductController@deleteWishlist')->name('client.delete.wishlist');
    Route::resource('replies','ReplyController');
    Route::get('about','HomeController@about')->name('client.about');
    Route::get('contact','HomeController@contact')->name('client.contact');
});

// Admin
Route::namespace('Admin')->prefix('ad')->group(function () {
    Route::get('/', function () {
        if (Auth::guard('admin')->check()) {
            return redirect()->route('dashboard');
        } else {
            return redirect()->route('admin.form.login');
        }
    });
    // Login, logout
    Route::get('/login', 'LoginController@showLoginForm')->name('admin.form.login');
    Route::post('/login', 'LoginController@login')->name('admin.handle.login');
    Route::get('/logout', 'LoginController@logout')->name('admin.handle.logout');

    Route::group(['middleware' => 'check.admin.login'], function() {
        // Dashboard
        Route::get('dashboard',['uses'=>'DashboardController@index','as'=>'dashboard']);
        // Category
        Route::group(['prefix'=>'category'],function(){
            Route::get('list','CategoryController@index')->name('category.list');
            
            Route::get('edit/{id}','CategoryController@edit')->name('category.edit.form');

            Route::post('edit/{id}','CategoryController@update')->name('category.edit');

            Route::get('add','CategoryController@create')->name('category.add.form');

            Route::post('add','CategoryController@store')->name('category.add');
            
            Route::get('delete/{id}','CategoryController@destroy')->name('category.delete');

            Route::get('disable/{id}','CategoryController@disable')->name('category.disable');

            Route::get('enable/{id}','CategoryController@enable')->name('category.enable');
        });
        // Brand
        Route::group(['prefix'=>'brand'],function(){
            Route::get('list','BrandController@index')->name('brand.list');
            
            Route::get('edit/{id}','BrandController@edit')->name('brand.edit.form');

            Route::post('edit/{id}','BrandController@update')->name('brand.edit');

            Route::get('add','BrandController@create')->name('brand.add.form');

            Route::post('add','BrandController@store')->name('brand.add');
            
            Route::get('delete/{id}','BrandController@destroy')->name('brand.delete');

            Route::get('disable/{id}','BrandController@disable')->name('brand.disable');

            Route::get('enable/{id}','BrandController@enable')->name('brand.enable');
        });
        // Ship
        Route::group(['prefix'=>'ship'],function(){
            Route::get('list','ShipController@index')->name('ship.list');
            
            Route::get('edit/{id}','ShipController@edit')->name('ship.edit.form');

            Route::post('edit/{id}','ShipController@update')->name('ship.edit');

            Route::get('add','ShipController@create')->name('ship.add.form');

            Route::post('add','ShipController@store')->name('ship.add');
            
            Route::get('delete/{id}','ShipController@destroy')->name('ship.delete');
        });
        // Product
        Route::group(['prefix'=>'product'],function(){
            Route::get('list','ProductController@index')->name('product.list');
            
            Route::get('edit/{id}','ProductController@edit')->name('product.edit.form');

            Route::post('edit/{id}','ProductController@update')->name('product.edit');

            Route::get('add','ProductController@create')->name('product.add.form');

            Route::post('add','ProductController@store')->name('product.add');
            
            Route::get('delete/{id}','ProductController@destroy')->name('product.delete');

            Route::get('disable/{id}','ProductController@disable')->name('product.disable');

            Route::get('enable/{id}','ProductController@enable')->name('product.enable');
        });
        // Voucher
        Route::group(['prefix'=>'voucher'],function(){
            Route::get('list','VoucherController@index')->name('voucher.list');
            
            Route::get('edit/{id}','VoucherController@edit')->name('voucher.edit.form');

            Route::post('edit/{id}','VoucherController@update')->name('voucher.edit');

            Route::get('add','VoucherController@create')->name('voucher.add.form');

            Route::post('add','VoucherController@store')->name('voucher.add');
            
            Route::get('delete/{id}','VoucherController@destroy')->name('voucher.delete');
        });
        // User
        Route::group(['prefix'=>'user'],function(){
            Route::get('list','UserController@index')->name('customer.list');
            
            Route::get('edit/{id}','UserController@edit')->name('customer.edit.form');
            
            Route::get('delete/{id}','UserController@destroy')->name('customer.delete');

            Route::get('disable/{id}','UserController@disable')->name('customer.disable');

            Route::get('enable/{id}','UserController@enable')->name('customer.enable');
        });
        // Comment
        Route::group(['prefix'=>'comment'],function(){
            Route::get('list','CommentController@index')->name('comment.list');

            Route::get('show/{id}','CommentController@show')->name('comment.show');
            
            Route::get('delete/{id}','CommentController@destroy')->name('comment.delete');
        });
        // Article
        Route::group(['prefix'=>'article'],function(){
            Route::get('list','ArticleController@index')->name('article.list');
            
            Route::get('edit/{id}','ArticleController@edit')->name('article.edit.form');

            Route::post('edit/{id}','ArticleController@update')->name('article.edit');

            Route::get('add','ArticleController@create')->name('article.add.form');

            Route::post('add','ArticleController@store')->name('article.add');
            
            Route::get('delete/{id}','ArticleController@destroy')->name('article.delete');
        });
        // Reply
        Route::group(['prefix'=>'reply'],function(){            
            Route::get('delete/{id}','ReplyController@destroy')->name('reply.delete');
        });
        // Order
        Route::group(['prefix'=>'order'],function(){
            Route::get('list','OrderController@index')->name('order.list');

            Route::get('show/{id}','OrderController@show')->name('order.show');

            Route::post('edit/{id}','OrderController@update')->name('order.edit');
        });
    });
});