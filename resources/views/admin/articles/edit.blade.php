@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Bài viết
                    <small>Sửa</small>
                </h1>
                <form action="{{ route('article.edit',['id' => $article->id]) }}" method="POST" enctype="multipart/form-data">

                    @csrf
                    <div class="form-group">
                        <label for="title">Tiêu đề: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập tiêu đề" id="title" name="title" value="{{ $article->title }}" required>
                    </div>
                    <div class="form-group">
                        <label for="content">Nội dung:</label>
                        <textarea class="form-control" id="content" name="content" required>{{ $article->content }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="sort_order">Thứ tự: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập thứ tự" id="sort_order" name="sort_order" value="{{ $article->sort_order }}" required>
                    </div>
                    <div class="form-group">
                        <label for="image">Chọn hình ảnh:</label>
                        <div class="custom-file">
                            <input type="file" id="image" name="image" accept=".png,.gif,.jpg,.jpeg" />
                        </div>
                    </div>
                    <div class="image-preview mb-4" id="imagePreview">
                        <img src="{{ asset($article['image']) }}" alt="Image Preview" class="image-preview__image" style="display:block;" />
                        <span class="image-preview__default-text" style="display:none;">Hình ảnh</span>
                    </div>
                    <br />
                    <button type="submit" class="btn btn-primary">Sửa</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection