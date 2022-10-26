@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Thêm</small>
                </h1>
                <form action="{{ route('product.add') }}" method="POST" enctype="multipart/form-data">

                    @csrf

                    <div class="form-group">
                        <label for="title">Tên sản phẩm: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập tên sản phẩm" id="title" name="title" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Giá tiền: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập giá tiền" id="price" name="price" min=1 required>
                    </div>
                    <div class="form-group">
                        <label for="quantity">Số lượng: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập số lượng" id="quantity" name="quantity" min=1 required>
                    </div>
                    <div class="form-group">
                        <label for="content">Mô tả sản phẩm:</label>
                        <textarea class="form-control" id="content" name="content"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="category_id">Danh mục sản phẩm: <span class="text-danger">*</span></label>
                        <select class="form-control" name="category_id" id="category_id" required>
                            @foreach ($categories as $category)
                                <option value="{{ $category['id'] }}">{{ $category['name'] }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="brand_id">Hãng sản phẩm: <span class="text-danger">*</span></label>
                        <select class="form-control" name="brand_id" id="brand_id">
                            @foreach ($brands as $brand)
                                <option value="{{ $brand['id'] }}">{{ $brand['name'] }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="type">Loại sản phẩm:</label>
                        <select class="form-control" name="type" id="type">
                           <option value="">Chọn loại sản phẩm</option>
                           <option value="1">Sản phẩm khuyến mãi</option>
                           <option value="2">Hàng sắp về</option>
                        </select>
                    </div>
                    <div class="form-group" id="discount-container">
                        <label for="discount">Khuyến mãi:</label>
                        <input type="number" class="form-control" placeholder="Nhập khuyến mãi" id="discount" name="discount" min=0>
                    </div>
                    <div class="form-group">
                        <label for="image">Chọn hình ảnh:</label>
                        <div class="custom-file">
                            <input type="file" id="image" name="image" accept=".png,.gif,.jpg,.jpeg"  required/>
                        </div>
                    </div>
                    <div class="image-preview mb-4" id="imagePreview">
                        <img src="" alt="Image Preview" class="image-preview__image" />
                        <span class="image-preview__default-text">Hình ảnh</span>
                    </div>
                    <br />
                    <button type="submit" class="btn btn-primary" style="margin-bottom:1rem;">Thêm</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection