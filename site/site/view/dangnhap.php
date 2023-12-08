<link rel="stylesheet" href="../content/layout/css/dangnhap-php.css">

<script>
    if ("<?= $thongbao ?>") alert("<?= $thongbao ?>");
</script>

<main>

    <form action="" method="post" enctype="multipart/form-data" onsubmit="return kiemtraform()">
        <h2>Đăng nhập</h2>

        <input name="email" class="email-dn" type="email" placeholder="Email" onchange="kiemtraform()">
        <input name="matkhau" class="pass-dn" id="my-pass0" type="password" placeholder="Mật khẩu" onchange="kiemtraform()">

        <div class="show-hide" id="show-hide" onclick="showpass('my-pass0',0)">
            <i id="show0" class="fa-regular fa-eye"></i>
            <i id="hide0" class="fa-regular fa-eye-slash"></i>
        </div>

        <div>
            <a href="?mod=page&act=dangky">Chuyển sang đăng ký <i class="fa-solid fa-arrow-right"></i></a>
            <input type="submit" name="dangnhap" value="Đăng nhập">
        </div>
    </form>
    <div class="bg_login"><img src="../content/layout/images/bg_login.jpg" alt=""></div>

</main>