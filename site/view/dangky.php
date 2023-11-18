<link rel="stylesheet" href="../content/layout/css/dangnhap.css">

<script>
    if ("<?= $thongbao ?>") alert("<?= $thongbao ?>");
</script>

<main class="form_dangky">
    <form action="" method="post" enctype="multipart/form-data" onsubmit="return kiemtraformdk()">
        <h2>Đăng ký</h2>
        <input name="tenkh" class="taikhoan-dk" type="text" placeholder="Tài khoản">
        <input name="sdt" class="sdt-dk" type="text" placeholder="Số điện thoại">
        <input name="email" class="email-dk" type="email" placeholder="Email">
        <input class="pass-dk" type="password" placeholder="Mật khẩu">
        <input name="matkhau" class="repass-dk" type="password" placeholder="Nhập lại mật khẩu">

        <section>
            <input name="ngaysinh" class="ngaysinh-dk" type="date">

            <div>
                <label><input class="nam-dk" name="gioitinh" type="radio" value="Nam">Nam</label>
                <label><input class="nu-dk" name="gioitinh" type="radio" value="Nữ">Nữ</label>
            </div>
        </section>

        <div>
            <a href="?mod=page&act=dangnhap">Chuyển sang đăng nhập <i class="fa-solid fa-arrow-right"></i> </a>
            <input name="dangky" type="submit" value="Đăng ký">
        </div>
    </form>
    <div class="bg_login"><img src="../content/layout/images/bg_login.jpg" alt=""></div>

</main>