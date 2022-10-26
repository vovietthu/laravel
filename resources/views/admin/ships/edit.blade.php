@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Đơn vị giao hàng
                    <small>Sửa</small>
                </h1>
                <form action="{{ route('ship.edit', ['id' => $ship->id]) }}" method="POST" enctype="multipart/form-data">

                    @csrf
                    <div class="form-group">
                        <label for="name">Tên đơn vị: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập tên danh mục" id="name" name="name" value="{{ $ship->name }}" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Giá tiền: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập giá tiền" id="price" name="price" min=1 value="{{ $ship->price }}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Sửa</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection