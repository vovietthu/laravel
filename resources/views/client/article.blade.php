@extends('client.layouts.template')

@section('main')

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.png') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Bài viết</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            @if ($articles->count() > 0)
                @foreach ($articles as $article)
                    <div class="col-lg-12 col-md-12 mb-4 d-flex">
                        <div>
                            <img src="{{ asset($article->image) }}" width="200" />
                        </div>
                        <div style="margin:1rem;">
                            <a href="{{ route('client.article.detail',['id' => $article->id]) }}"><h3 class="text-primary">{{ $article->title }}</h3></a>
                            <small>Thời gian đăng: {{ date('d/m/Y H:i:s', strtotime($article->updated_at)) }}</small>
                        </div>
                    </div>
                @endforeach
            @else
                <div class="col-lg-12 col-md-12">
                   Hiện tại chưa có bài viết nào
                </div>
            @endif
        </div>
    </div>
</section>
<!-- Product Section End -->
@stop