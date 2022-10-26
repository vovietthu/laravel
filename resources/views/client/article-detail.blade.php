@extends('client.layouts.template')

@section('main')

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.png') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>{{ $article->title }}</h2>
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
            <div class="col-lg-12 col-md-12">
                {!! $article->content !!}
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
@stop