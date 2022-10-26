@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Đơn vị giao hàng
                    <small>Danh sách</small>
                </h1>
                @if(Session::has('invalid'))
                    <div class="alert alert-danger alert-dismissible">
                         <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
                         {{Session::get('invalid')}}
                    </div>
               @endif
               @if(Session::has('success'))
                    <div class="alert alert-success alert-dismissible">
                         <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
                         {{Session::get('success')}}
                    </div>
               @endif
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Tên đơn vị</th>
                        <th>Giá tiền</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody align="center">
                    @php $count = 1; @endphp
                    @foreach ($ships as $ship)
                        <tr>
                            <td>{{ $count }}</td>
                            <td>{{ $ship->name }}</td>
                            <td>{{ number_format($ship->price,-3,',',',') }} VND</td>
                            <td>
                                <a href="{{ route('ship.delete',['id'=>$ship->id]) }}" onclick="return confirm('Bạn muốn xóa item này ?')"><i class="fa fa-times" aria-hidden="true"></i></a>
                                <a href="{{ route('ship.edit.form',['id'=>$ship->id]) }}" style="margin-left:1rem;"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                    @php $count++; @endphp
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection