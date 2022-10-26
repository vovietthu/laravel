<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="{{ route('dashboard') }}"><i class="fa fa-tachometer" aria-hidden="true"></i> Bảng điều khiển</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-cube fa-fw"></i> Danh mục sản phẩm<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('category.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('category.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-list" aria-hidden="true"></i> Hãng sản phẩm<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('brand.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('brand.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-dropbox" aria-hidden="true"></i> Sản phẩm<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('product.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('product.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-ticket" aria-hidden="true"></i> Voucher<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('voucher.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('voucher.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-users fa-fw"></i> Người dùng<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('customer.list') }}">Danh sách</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-comments" aria-hidden="true"></i> Bình luận<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('comment.list') }}">Danh sách</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-truck" aria-hidden="true"></i> Đơn vị giao hàng<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('ship.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('ship.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-newspaper-o" aria-hidden="true"></i> Tin tức<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('article.list') }}">Danh sách</a>
                    </li>
                    <li>
                        <a href="{{ route('article.add.form') }}">Thêm mới</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-usd" aria-hidden="true"></i> Đơn hàng<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('order.list') }}">Danh sách</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>