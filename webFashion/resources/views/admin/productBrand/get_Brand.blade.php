
@extends('admin.layoutsadmin')
@section('admin')

<div class="card-body" id="table_load">

<table class='table table-striped' id="table1">
@if (Session::get('Thêm, xóa, Sửa danh mục sản phẩm') == "Thêm, xóa, Sửa danh mục sản phẩm")
    <div style="margin-left: 10px;">
        <a href="" class="btn btn-success btn-add" data-target="#modal-add" data-toggle="modal">Thêm mới</a>
    </div>
@endif
<thead style="text-align">
        <tr>
            <th style="text-align:center;">STT</th>
            <th style="text-align:center;">Tên thương hiệu</th>
            @if (Session::get('Thêm, xóa, Sửa danh mục sản phẩm') == "Thêm, xóa, Sửa danh mục sản phẩm")
            <th style="text-align:center;"> Quản lý</th>  
            @endif            
        </tr>
    </thead>
    <tbody>
    @php
        $i = 0;
    @endphp 
    @foreach($brand as $brands )
    @csrf     
    @php
        $i++
    @endphp                                   
        <tr style="text-align:center;">
            <td>{{$i}}</td>
            <td>{{$brands->BrandName}}</td>
            <td> 
            @if (Session::get('Thêm, xóa, Sửa danh mục sản phẩm') == "Thêm, xóa, Sửa danh mục sản phẩm")     
                <a href="{{route('product-brand.show',[$brands->Brand])}}" ><img style="width:23px" src="{{asset('/icon/pencil.png')}}" alt=""></a>
                <button name="delete" style="border:none; background: transparent; margin-left:10px;" data-url="{{ route('product-brand.destroy',[$brands->Brand]) }}"​ type="button" id="btn-delete" data-target="#delete" data-toggle="modal" ><img style="width:23px" src="{{asset('/icon/cancel.png')}}" alt=""></button>
			@endif
            </td>                                    
        </tr>
    @endforeach
    </tbody>
    </tbody>
</table>
</div>
@include('admin.productBrand.add_Brand')


@endsection