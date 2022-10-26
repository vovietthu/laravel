<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use App\Models\Brand;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();
        $products = DB::select(
            'select p.*,c.name cate_title from products p,categories c
             where p.category_id = c.id and p.status = 1'
        );
        View::share('categories', Category::all());
        View::share('products', $products);
        View::share('brands', Brand::all());
        view()->composer('admin.layouts.index', function ($view) {
            $data = DB::select(
                'SELECT DATE_FORMAT(o.created_at,"%d/%m/%Y") order_day, SUM(o.total) total_price FROM orders o WHERE o.status = 2 GROUP BY order_day'
            );
            $data1 =  DB::select(
                'SELECT MONTH(o.created_at) order_month, SUM(o.total) total_price FROM orders o WHERE o.status = 2 GROUP BY order_month'
            );
            $data2 = DB::select(
                'SELECT YEAR(o.created_at) order_year, SUM(o.total) total_price FROM orders o WHERE o.status = 2 GROUP BY order_year'
            );
            $view->with(['data' => $data, 'data1' => $data1, 'data2' => $data2]);
        });
    }
}