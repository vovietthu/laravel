@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Sửa</small>
                </h1>
                <form action="{{ route('product.edit',['id' => $product['id']]) }}" method="POST" enctype="multipart/form-data">

                    @csrf

                    <div class="form-group">
                        <label for="title">Tên sản phẩm: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập tên sản phẩm" id="title" name="title" value="{{ $product['name'] }}" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Giá tiền: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập giá tiền" id="price" name="price" value="{{ $product['price'] }}" min=1 required>
                    </div>
                    <div class="form-group">
                        <label for="quantity">Số lượng: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập số lượng" id="quantity" name="quantity" value="{{ $product['qty'] }}" min=1 required>
                    </div>
                    <div class="form-group">
                        <label for="content">Mô tả sản phẩm:</label>
                        <textarea class="form-control" id="content" name="content">{!! $product['description'] !!}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="category_id">Danh mục sản phẩm: <span class="text-danger">*</span></label>
                        <select class="form-control" name="category_id" id="category_id" required>
                            @foreach ($categories as $category)
                                @if ($category['id'] === $product['category_id'])
                                    <option value="{{ $category['id'] }}" selected>{{ $category['name'] }}</option>
                                @else
                                    <option value="{{ $category['id'] }}">{{ $category['name'] }}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="brand_id">Hãng sản phẩm: <span class="text-danger">*</span></label>
                        <select class="form-control" name="brand_id" id="brand_id">
                            @foreach ($brands as $brand)
                                @if ($brand['id'] === $product['brand_id'])
                                    <option value="{{ $brand['id'] }}" selected>{{ $brand['name'] }}</option>
                                @else
                                    <option value="{{ $brand['id'] }}">{{ $brand['name'] }}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="type">Loại sản phẩm:</label>
                        <select class="form-control" name="type" id="type-edit">
                           <option value="">Chọn loại sản phẩm</option>
                           <option value="1" {{ $product->type == 1 ? 'selected' : '' }}>Sản phẩm khuyến mãi</option>
                           <option value="2" {{ $product->type == 2 ? 'selected' : '' }}>Hàng sắp về</option>
                        </select>
                    </div>
                    @if ($product->type == 1)
                        <div class="form-group" id="discount-container-edit">
                            <label for="discount">Khuyến mãi:</label>
                            <input type="number" class="form-control" placeholder="Nhập khuyến mãi" id="discount" name="discount" min=0 value="{{ $product['discount'] }}">
                        </div>  
                    @endif
                    <div class="form-group">
                        <label for="image">Chọn hình ảnh:</label>
                        <div class="custom-file">
                            <input type="file" id="image" name="image" accept=".png,.gif,.jpg,.jpeg" />
                        </div>
                    </div>
                    <div class="image-preview mb-4" id="imagePreview">
                        <img src="{{ asset($product['image_path']) }}" alt="Image Preview" class="image-preview__image" style="display:block;" />
                        <span class="image-preview__default-text" style="display:none;">Hình ảnh</span>
                    </div>
                    <br />
                    <button type="submit" class="btn btn-primary" style="margin-bottom:1rem;">Sửa</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection