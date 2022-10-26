@extends('client.layouts.template')

@section('css')
    <link rel="stylesheet" href="{{ asset('client/css/comment.css') }}">
@stop

@section('main')

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.png') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>{{ $product->name }}</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                            src="{{  asset($product->image_path) }}" alt="{{ $product->name }}">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>{{ $product->name }}</h3>
                    <div class="product__details__price">{{ number_format($product->price,-3,',',',') }} VND</div>
                      @if ($product->type !=2)
                        <a href="javascript:void(0)" onclick="addToCart({{ $product->id }});" class="primary-btn">THÊM GIỎ HÀNG</a>
                        @if (Auth::check())
                          @if (!in_array($product->id,$wishlist))
                            <a href="{{ route('client.add.wishlist',['id' => $product->id]) }}"><button type="button" class="btn btn-danger" style="padding:0.84rem;">YÊU THÍCH</button></a>
                          @else
                            <a href="{{ route('client.add.wishlist',['id' => $product->id]) }}"><button type="button" class="btn btn-secondary" style="padding:0.84rem;" disabled>ĐÃ YÊU THÍCH</button></a>
                          @endif
                        @endif
                      @else
                        <a href="javascript:void(0)" class="release-btn">HÀNG SẮP VỀ</a>
                      @endif
                      @if ($product->type !=2)
                    <ul>
                        <li><b>Trạng thái</b> <span>{{ $product->qty > 0 ? 'Còn hàng' : 'Hết hàng' }}</span></li>
                        <li><b>Số lượng còn lại</b> <span>{{ $product->qty }}</span></li>
                        <li><b>Hãng</b> <span>{{ $product->brand_name }}</span></li>
                    </ul>
                    @endif
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active">Mô tả sản phẩm</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <p>{!! $product->description !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Start comment-sec Area -->
<section class="comment-sec-area pt-80 pb-80">
    <div class="container">
      <div class="row flex-column">
        <h5 class="text-uppercase pb-80">{{ $comments->count() }} bình luận</h5>
        <br />
      <div class="comment">
            @foreach ($comments as $comment)
              <div class="comment-list comment-container">
                <div class="single-comment justify-content-between d-flex">
                  <div class="user justify-content-between d-flex">
                    <div class="thumb">
                      <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Avatar" width="50px">
                    </div>
                    <div class="desc mb-4">
                      <h5><a href="javascript:void(0)">{{ $comment->name }}</a></h5>
                      <p class="date">{{ date('d/m/Y H:i:s', strtotime($comment->created_at)) }}</p>
                      <p class="comment">
                        {{ $comment->content }}
                      </p>
                      @if (Auth::check())
                        <a class="text-primary reply" cid="{{ $comment->id }}" name_a="{{ Auth::user()->name }}" token="{{ csrf_token() }}">Phản hồi</a>
                        <div class="row flex-row d-flex reply-form"></div>
                      @endif
                    <!-- show reply -->
                    @foreach ($replies as $reply)
                      @if ($reply->comment_id === $comment->id)
                        <div class="comment-list left-padding">
                          <div class="single-comment justify-content-between d-flex mt-4 mb-4" >
                            <div class="user justify-content-between d-flex">
                              <div class="thumb">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Avatar" width="50px"/>
                              </div>
                              <div class="desc">
                                <h5><a href="javascript:void(0)">{{ $reply->name }}</a></h5>
                                <p class="date">{{ date('d/m/Y H:i:s', strtotime($reply->created_at)) }}</p>
                                <p class="comment">
                                  {{ $reply->content }}
                                </p>
                                @if (Auth::check())
                                  <a class="text-primary reply-to-reply" rid="{{ $reply->id }}" rname="{{ Auth::user()->name }}" token="{{ csrf_token() }}">Phản hồi</a>
                                  <div class="row flex-row d-flex reply-to-reply-form"></div>
                                @endif
                              </div>
                            </div>
                          </div>
                        </div>
                      @endif
                    @endforeach
                    <!-- end reply -->
                  </div>
                </div>
              </div>
            @endforeach
        </div>
      </div>
    </div>
  </section>
  <!-- End comment-sec Area -->

  <!-- Start commentform Area -->
  @if (Auth::check())
    <section class="commentform-area pb-120 pt-80 mb-100">
      <div class="container">
          <h5 class="text-uppercas pb-50">Bình luận</h5>
          <div class="row flex-row d-flex">
              <div class="col-lg-12">
                  <form action="{{ route('add.comment') }}" method="POST">
                      @csrf
                      <input type="hidden" name="user_id" value="{{ Auth::user()->id }}" />
                      <input type="hidden" name="product_id" value="{{ $product->id }}" />
                      <textarea
                      class="form-control mb-10"
                      name="message"
                      cols="5"
                      rows="4"
                      placeholder="Nhập bình luận"
                      required
                      ></textarea>
                      <button type="submit" class="primary-btn mt-20" href="#">Bình luận</button>
                  </form>
              </div>
          </div>
      </div>
    </section> 
  @endif
<!-- End commentform Area -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Sản phẩm liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach ($products as $product)
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="{{  asset($product->image_path) }}">
                            <ul class="product__item__pic__hover">
                                @if ($product->type != 2)
                                    <li><a href="javascript:void(0)" onclick="addToCart({{ $product->id }});"><i class="fa fa-shopping-cart"></i></a></li>
                                @else
                                    <li><a href="{{ route('client.product.detail', ['id' => $product->id]) }}"><i class="fas fa-eye"></i></a></li>
                                @endif
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="{{ route('client.product.detail', ['id' => $product->id]) }}">{{ $product->name }}</a></h6>
                            <h5>{{ number_format($product->price,-3,',',',') }} VND</h5>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Related Product Section End -->
@stop