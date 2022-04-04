<div class="modal fade" id="modal-add">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<form method="POST" autocomplete="off" action="{{ route('product-size.store') }}" data-url="" id="form-add" role="form">
				@csrf
				<div class="modal-header">
					<h4 class="modal-title">Thêm kích cỡ sản phẩm</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group" style="display:flex;">
						<p style="display:inline;">Tên kích cỡ</p>
						<input name="size" type="number" class="form-control" id="hoten-add" placeholder="Kích cỡ.....">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<input type="submit" value="Thêm" class="btn btn-primary" />
				</div>
			</form>
		</div>
	</div>
</div>
