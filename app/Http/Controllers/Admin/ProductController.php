<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Category;
use App\Models\Product;
use App\Models\Brand;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = DB::select(
        'select p.*,c.name cate_title,b.name brand_title from products p,categories c,brands b
            where p.category_id = c.id and p.brand_id = b.id'
        );
        return view('admin.products.list',['products'=>$products]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        $brands = Brand::all();
        return view('admin.products.add',['categories'=>$categories, 'brands' => $brands]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('image')) {
            //  Let's do everything here
            if ($request->file('image')->isValid()) {
                //
                $validated = $request->validate([
                    'title' => 'required',
                    'price' => 'required',
                    'category_id' => 'required',
                    'quantity' => 'required',
                    'brand_id' => 'required'
                ]);
                $request->image->storeAs('/public/images/products', $request->image->getClientOriginalName());
                $product = Product::create([
                   'name' => $validated['title'],
                   'price' => $validated['price'],
                   'category_id' => $validated['category_id'],
                   'brand_id' => $validated['brand_id'],
                   'image_path' => '/storage/images/products/' . $request->image->getClientOriginalName(),
                   'description' => $request->input('content'),
                   'qty' => $validated['quantity'],
                   'type' => $request->input('type'),
                   'discount' => $request->input('discount')
                ]);
                $product->save();
                return redirect()->route('product.list')->with("success","Lưu thành công");
            }
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories = Category::all();
        $product = Product::find($id);
        $brands = Brand::all();
        return view('admin.products.edit',['product' => $product,'categories'=>$categories, 'brands' => $brands]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $product = Product::find($id);
        if ($request->hasFile('image')) {
            //  Let's do everything here
            if ($request->file('image')->isValid()) {
                $request->image->storeAs('/public/images/products', $request->image->getClientOriginalName());
                $product->image_path = '/storage/images/products/' .  $request->image->getClientOriginalName();
            }
        }
        $product->name = $request->input('title');
        $product->price = $request->input('price');
        $product->category_id = $request->input('category_id');
        $product->brand_id = $request->input('brand_id');
        $product->description = !empty($request->input('content')) ? $request->input('content'):'';
        $product->qty = $request->input('quantity');
        $product->type = $request->input('type');
        $product->discount = $request->input('discount');
        $product->save();
        return redirect()->route('product.list')->with("success","Sửa thành công");
    }

     /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return redirect()->route('product.list')->with("success","Xóa thành công");
    }

    /**
     * Disable status product
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function disable($id)
    {
        $product = Product::find($id);
        $product->status = 0;
        $product->save();
        return redirect()->route('product.list')->with("success","Vô hiệu hóa thành công");
    }

    /**
     * Enable status product
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function enable($id)
    {
        $product = Product::find($id);
        $product->status = 1;
        $product->save();
        return redirect()->route('product.list')->with("success","Mở thành công");
    }
}
