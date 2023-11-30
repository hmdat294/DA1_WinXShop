<?php extract(get_donhangchitiet($id)) ?>

<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Cập Nhật Đơn Hàng</h3>
    </div>
    <hr>
    <div class="form-parent">
        <h4 class="text-center">Cập Nhật Đơn Hàng</h4>
        <hr>

        <form method="POST" enctype="multipart/form-data" action="">
            <label for="">Mã Đơn: </label>
            <input name="id" disabled class="form-control form-text" type="text" value="WX<?= $id ?>">

            <label for="">Tên Khách Hàng:</label>
            <input name="tenkh" disabled class="form-control" type="text" value="<?= $tenkh ?>">

            <label for="">Thời Gian Đặt Hàng:</label>
            <input name="ngaydat" disabled class="form-control" type="date" value="<?= $ngaydat ?>">

            <label for="">Tổng Tiền:</label>
            <input name="tongtien" disabled class="form-control" type="number" value="<?= $tongtien ?>">

            <label for="">Ghi Chú:</label>
            <input name="ghichu" disabled class="form-control" type="text" value="<?= $ghichu ?>">

            <label for="">Địa Chỉ:</label>
            <input name="diachi" disabled class="form-control" type="text" value="<?= $diachi ?>">

            <label for="">Trạng Thái:</label>
            <select class="form-select" name="trangthai" id="">
                <option value="<?= $trangthai ?>"><?= $trangthai ?></option>
                <option value="Đang chờ xử lý">Đang chờ xử lý</option>
                <option value="Đã duyệt">Đã duyệt</option>
                <option value="Đang giao">Đang giao</option>
                <option value="Đã giao">Đã giao</option>
                <option value="Đã hủy">Đã hủy</option>
                <option value="Khách hàng không nhận hàng">Khách hàng không nhận hàng</option>

            </select>

            <hr>
            <div class="text-center">
                <button name="update_donhang" class="btn btn-danger text-white">Cập Nhật Đơn Hàng</button>
            </div>
        </form>
    </div>
</main>