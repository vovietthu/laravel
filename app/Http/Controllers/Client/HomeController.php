<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Article;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index() {
        $product_slide_1 = Product::where('status','=',1)->orderBy('id', 'DESC')->limit(3)->get();
        $product_slide_2 = Product::where('status','=',1)->orderBy('id', 'DESC')->skip(3)->limit(3)->get();
        $product_top_sale_1 = Product::where('status','=',1)->orderBy('qty_buy', 'DESC')->limit(3)->get();
        $product_top_sale_2 = Product::where('status','=',1)->orderBy('qty_buy', 'DESC')->skip(3)->limit(3)->get();
        $product_top_sale_3 = Product::where('status','=',1)->orderBy('qty_buy', 'DESC')->skip(6)->limit(3)->get();
        $product_top_review_1 =  DB::select(
            'SELECT b.*, count(a.product_id) FROM comments a, products b WHERE a.product_id = b.id GROUP BY a.product_id ORDER BY count(*) DESC LIMIT 3'
        );
        $product_top_review_2 =  DB::select(
            'SELECT b.*, count(a.product_id) FROM comments a, products b WHERE a.product_id = b.id GROUP BY a.product_id ORDER BY count(*) DESC LIMIT 3 OFFSET 3'
        );
        $product_top_review_3 =  DB::select(
            'SELECT b.*, count(a.product_id) FROM comments a, products b WHERE a.product_id = b.id GROUP BY a.product_id ORDER BY count(*) DESC LIMIT 3 OFFSET 6'
        );
        return view('client.home', compact('product_slide_1', 'product_slide_2', 'product_top_sale_1', 'product_top_sale_2', 'product_top_sale_3', 'product_top_review_1', 'product_top_review_2', 'product_top_review_3'));
    }

    public function article()
    {
        $articles = Article::orderBy('sort_order','DESC')->paginate(12);
        return view('client.article', compact('articles'));
    }

    public function article_detail($id)
    {
        $article = Article::find($id);
        return view('client.article-detail', compact('article'));
    }

    public function about(){
        return view('client.about');
    }

    public function contact(){
        return view('client.contact');
    }
}