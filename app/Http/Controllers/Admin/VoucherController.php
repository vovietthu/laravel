<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Voucher;
use App\Models\Order;

class VoucherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vouchers = Voucher::all();
        return view('admin.vouchers.list',compact('vouchers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.vouchers.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Voucher::create([
            'code' => $request->code,
            'price' => $request->price,
            'qty' => $request->qty
        ]);
        return redirect()->route('voucher.list')->with("success","Thêm thành công");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $voucher = Voucher::where('code',$id)->first();
        return view('admin.vouchers.edit',compact('voucher'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $voucher = Voucher::where('code',$id)->first();
        $voucher->code = $request->code;
        $voucher->price = $request->price;
        $voucher->qty = $request->qty;
        $voucher->save();
        return redirect()->route('voucher.list')->with("success","Cập nhật thành công");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $order = Order::where('voucher_code',$id)->exists();
        if ($order) {
            return redirect()->route('voucher.list')->with("invalid","Bạn không thể xóa loại voucher này vì một số đơn hàng đang sử sụng");
        }
        $voucher = Voucher::where('code',$id)->first();
        $voucher->delete();
        return redirect()->route('voucher.list')->with("success","Cập nhật thành công");
    }
}