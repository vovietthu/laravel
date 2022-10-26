@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Mã khuyến mãi
                    <small>Thêm</small>
                </h1>
                <form action="{{ route('voucher.add') }}" method="POST" enctype="multipart/form-data">

                    @csrf
                    <div class="form-group">
                        <label for="code">Mã khuyến mãi: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập mã khuyến mãi" id="code" name="code" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Mệnh giá: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập mệnh giá" id="price" name="price" min=1 required>
                    </div>
                    <div class="form-group">
                        <label for="qty">Số lượng: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập số lượng" id="qty" name="qty" min=1 required>
                    </div>
                    <button type="submit" class="btn btn-primary">Thêm</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection