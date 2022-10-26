<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RIVERMAN</title>
	<link rel="shortcut icon" type="image/png" href="{{ asset('client/img/logo.png') }}" />
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Font Awaesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{ asset('client/css/bootstrap.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/font-awesome.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/elegant-icons.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/nice-select.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/jquery-ui.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/owl.carousel.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/slicknav.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/style.css') }}" type="text/css">
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
    @yield('css')
</head>

<body>
    @include('sweetalert::alert')
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="{{ route('client.home') }}"><img src="{{ asset('client/img/logo.png') }}" width="250" alt=""></a>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> riverman@gmail.com</li>
                                <li>Miễn phí ship với hóa đơn từ 500.000 VND</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            @if (!Auth::check())
                                <div class="header__top__right__auth">
                                    <a href="{{ route('auth.show.login') }}"><i class="fa fa-user"></i> Đăng nhập</a>
                                
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="{{ route('auth.show.register') }}">| Đăng ký</a>
                                </div>
                            @else
                                <div class="header__top__right__auth">
                                    <a href="{{ route('my.order') }}">Xin chào, {{ Auth::user()->name }}</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="{{ route('auth.logout') }}">| Đăng xuất</a>
                                </div>
                            @endif
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="{{ route('client.home') }}"><img src="{{ asset('client/img/logo.png') }}" width="250" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href={{ route('client.home') }}>Trang chủ</a></li>
                            <li><a href={{ route('client.about') }}>Giới thiệu</a></li>
                            <li><a href={{ route('client.product') }}>Sản phẩm</a></li>
                            <li><a href={{ route('client.article') }}>Bài viết</a></li>
                            <li><a href={{ route('client.contact') }}>Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            @if (Auth::check())
                                <li><a href="{{ route('client.wishlist') }}"><i class="fa fa-heart"></i> <span>{{ !is_null(\App\Models\Wishlist::where('user_id',Auth::user()->id)->get()) ? \App\Models\Wishlist::where('user_id',Auth::user()->id)->get()->count() : 0 }}</span></a></li>
                            @endif
                            <li><a href="{{ route('client.shopping.cart') }}"><i class="fa fa-shopping-bag"></i> <span id="qty_cart">{{ Session::has('cart') ? Session::get('cart')->totalQty : 0 }}</span></a></li>
                        </ul>
                        <div class="header__cart__price">Tổng: <span id="price_cart">{{ Session::has('cart') ? number_format(Session::get('cart')->totalPrice,-3,',',',') : 0 }} VND</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    @include('client.includes.search')
    @yield('main')

    <!-- Footer Section Begin -->
    <!-- <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="{{ asset('client/img/logo.png') }}" width="250" alt=""></a>
                        </div>
                        <ul>
                            <li>Địa chỉ: TP.CT</li>
                            <li>Số điện thoại: +84.372.100.335</li>
                            <li>Email: riverman@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8788098860264!2d105.75512251428215!3d10.026858375323638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a088476bb00027%3A0xd3c02747d1cbc8c6!2zMjg4IMSQxrDhu51uZyBOZ3V54buFbiBWxINuIExpbmgsIEjGsG5nIEzhu6NpLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1639703261316!5m2!1svi!2s" width="500" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__payment"><img src="{{ asset('client/img/payment-item.png') }}" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer> -->
    <footer class="text-center text-lg-start bg-light text-muted">
  <!-- Section: Social media -->
  <section
    class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
  >
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <!-- <span>Get connected with us on social networks:</span> -->
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-google"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-github"></i>
      </a>
    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h5 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i> RIVERMAN
          </h5>
          <p>
          Mua Laptop gaming, card màn hình, màn hình máy tính, ghế gaming, thiết bị chơi game hàng đầu Việt Nam bảo hành chính hãng. Mua online nhận nhiều ưu đãi hấp dẫn.
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h5 class="text-uppercase fw-bold mb-4">
            THÔNG TIN
          </h5>
          <p>
            <a href="#!" class="text-reset">Hỗ trơ sản phẩm</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Vận chuyển và lắp đặt</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Dịch vụ</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Cộng đồng</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h5 class="text-uppercase fw-bold mb-4">
              VỀ CHÚNG TÔI
          </h5>
          <p>
            <a href="#!" class="text-reset">Giới thiệu</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Bảo hành và dịch vụ</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Hỗ trợ trang 24/7</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Điều khoản và điều kiện</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
<div class="col-md-5 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h5 class="text-uppercase fw-bold mb-4">
            LIÊN HỆ
          </h5>
          <p><i class="fas fa-home me-3"></i>288, Nguyễn Văn Linh, Ninh Kiều, TP.Cần Thơ</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            Riverman@gmail.com
          </p>
          <p><i class="fas fa-phone me-3"></i> +84 3721 00 335</p>
      
        </div>
        <!-- Grid column -->
      </div>

      <!-- Grid row -->
    </div>

  </section>
  <!-- Section: Links  -->

  <!-- Copyright -->
  
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
              <div class="footer__copyright__payment"><img src="{{ asset('client/img/payment-item.png') }}" alt=""></div>
  </div>

  <!-- Copyright -->
</footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="{{ asset('client/js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset('client/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('client/js/jquery.nice-select.min.js') }}"></script>
    <script src="{{ asset('client/js/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('client/js/jquery.slicknav.js') }}"></script>
    <script src="{{ asset('client/js/mixitup.min.js') }}"></script>
    <script src="{{ asset('client/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('client/js/main.js') }}"></script>
    <script src="{{ asset('client/js/add-to-cart.js') }}"></script>
    <script src="{{ asset('client/js/filter.js') }}"></script>
    <script src="{{ asset('client/js/sort.js') }}"></script>
    <script src="{{ asset('client/js/comment.js') }}"></script>
    <script src="{{ asset('client/js/voucher.js') }}"></script>
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
    <script>
        Stripe.setPublishableKey('pk_test_51JnN53HEueodV3DAJxPIvHgy2bBdP5BmKIlvaUb1WZ64OSUZ9UcsbP2iKXzHZulqcVWvXigwCF6Wsh5Si1Ral20M00Wvg1qjBH');
        var $form = $('#checkout-form');
        $form.submit(function(event) {
        $('#charge-error').addClass('hidden');
        $form.find('button').prop('disabled', true);
        Stripe.card.createToken({
            number: $('#card-number').val(),
            cvc: $('#card-cvc').val(),
            exp_month: $('#card-expiry-month').val(),   
            exp_year: $('#card-expiry-year').val(),
            name: $('#card-name').val()
        }, stripeResponseHandler);
        return false;
        });	
    function stripeResponseHandler(status, response) {
        var token = response.id;
        $form.append($('<input type="hidden" name="stripeToken" />').val(token));
        // Submit the form:
        $form.get(0).submit();
    }
    </script>


</body>

</html>