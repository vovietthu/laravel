@extends('client.layouts.template')

@section('main')

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <i class="bi bi-telephone-fill icon_contact"></i>
                        <h4>Điện thoại</h4>
                        <p>+84.123.456.789</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <i class="bi bi-geo-alt-fill icon_contact"></i>
                        <h4>Địa chỉ</h4>
                        <p>3/2, Xuân Khánh, Ninh Kiều, Cần Thơ, Việt Nam</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget icon_contact">
                        <i class="bi bi-alarm-fill"></i>
                        <h4>Mở cửa</h4>
                        <p>7:00 am to 19:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget icon_contact">
                        <i class="bi bi-envelope-fill"></i>
                        <h4>Email</h4>
                        <p>riverman@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Begin -->
    <div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4717.451949161583!2d105.75487702727592!3d10.026575287854223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a088476bb00027%3A0xd3c02747d1cbc8c6!2zMjg4IMSQxrDhu51uZyBOZ3V54buFbiBWxINuIExpbmgsIEjGsG5nIEzhu6NpLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1640153992534!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            <div class="map-inside">
            <i class="bi bi-geo-alt-fill icon_contact"></i>
            <!-- <div class="inside-widget">
                <h4>Cần Thơ</h4>
                <ul>
                    <li>Phone: +01 23.456.789</li>
                    <li>Phước Thới, Ô Môn, Cần Thơ, Việt Nam</li>
                </ul>
            </div> -->
        </div>
    </div>
    <!-- Map End -->

    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Liên Hệ</h2>
                    </div>
                </div>
            </div>
            <form action="#">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Tên">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Email">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="Nội dung"></textarea>
                        <button type="submit" class="site-btn">Gửi</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

@stop