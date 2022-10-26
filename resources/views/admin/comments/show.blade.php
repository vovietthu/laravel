@extends('admin.layouts.index')


@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Phản hồi
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
                        <tr align="center">
                            <th>#</th>
                            <th>Người phản hồi</th>
                            <th>Nội dung</th>
                            <th>Ngày phản hồi</th>
                            <th>Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $count = 1;
                        @endphp
                        @foreach ($replies as $row)
                            <tr>
                                <td>{{ $count }}</td>
                                <td>{{ $row->name }}</td>
                                <td>{{ $row->content }}</td>
                                <td>{{ date('d/m/Y H:i:s', strtotime($row->created_at)) }}</td>
                                <td>
                                    <a href="{{ route('reply.delete',['id' => $row->id]) }}" onclick="return confirm('Bạn muốn xóa item này ?')" style="margin:0 1rem;"><i class="fa fa-times" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            @php
                                $count++;
                            @endphp
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
@endsection