<?php
extract(get_nguoidung($id));

$arr_vaitro = ["Khách Hàng", "Quản Trị"];

?>
<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Sửa Tài Khoản Người Dùng</h3>
    </div>
    <hr>
    <div class="form-parent">
        <h4 class="text-center">Cập Nhật Tài Khoản Người Dùng</h4>
        <hr>

        <form method="POST" action="">
            <label for="">Tên Tài Khoản: </label>
            <input value="<?= $tenkh ?>" disabled class="form-control form-text" type="text">

            <label for="">Mật Khẩu:</label>
            <input value="<?= $matkhau ?>" disabled class="form-control" type="text">

            <label for="">Số Điện Thoại:</label>
            <input value="<?= $sdt ?>" disabled class="form-control" type="text">

            <label for="">Email:</label>
            <input value="<?= $email ?>" disabled class="form-control" type="email">

            <label for="">Ngày Sinh:</label>
            <input value="<?= date("Y-m-d", strtotime($ngaysinh)) ?>" disabled class="form-control" type="date">

            <label for="">Vai Trò:</label>
            <select class="form-select" name="vaitro" id="">
                <option value="0">Khách Hàng</option>
                <option value="1">Quản Trị Viên</option>
            </select>

            <hr>
            <div class="text-center">
                <button name="update_account" class="btn btn-danger text-white">Cập Nhật Tài Khoản</button>
            </div>
        </form>
    </div>
</main>