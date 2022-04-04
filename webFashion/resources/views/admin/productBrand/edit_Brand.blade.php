@extends('admin.layoutsadmin')
@section('admin')


<form method="POST" action="{{route('product-brand.update',[$brands->Brand])}}">
  @method('PUT')
  @csrf
<div class="modal-dialog-small modal-dialog-centered" role="document">
  <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Sửa thông tin </h5>  
        </button>
      </div>
   
      <div class="modal-body" style="display:flex">
      <div class="form-group" style="display:flex; margin-top:10px">
						<p >Tên thương hiệu:&emsp;</p>
						<input style="width:350px" value="{{$brands->BrandName}}" name="brand" type="text" class="form-control" id="hoten-edit" placeholder="Nhập thương hiệu">
					</div>
          <input type="submit" style="margin-left:20px"  type="button" class="btn btn-primary" value="Lưu" >
      </div>
      <div class="modal-footer">
        <div style="margin:20px 250px 20px 0px">      
        <a href="{{route('product-brand.index')}}" type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</a>
        </div>
      </div>
    </div>
   
  </div>
</form>
 
@endsection