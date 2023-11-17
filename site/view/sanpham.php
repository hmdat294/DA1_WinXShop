<<<<<<< HEAD
<link rel="stylesheet" href="../content/layout/css/sanpham.css">
=======
<link rel="stylesheet" href="../content/layout/css/sanphamph.css">
>>>>>>> main

<main>

    <div class="btn-locsanpham">
        <span class="loc">Lọc</span>
        <i class="fa-solid fa-sort icon-loc"></i>
    </div>

    <aside class="menu-loc">
        <h5>LỌC SẢN PHẨM</h5>
        <section>

            <div>
                <b>CHỌN MỨC GIÁ</b>
<<<<<<< HEAD
                <a href="#">Giá dưới 500.000đ</a>
                <a href="#">500.000đ - 1 triệu</a>
                <a href="#">1 triệu - 2 triệu</a>
                <a href="#">2 triệu - 3 triệu</a>
                <a href="#">3 triệu trở lên</a>
            </div>
            <div>
                <b>ĐỐI TƯỢNG</b>
                <a href="#">Nam</a>
                <a href="#">Nữ</a>
                <a href="#">Nam - Nữ</a>
                <a href="#">Trẻ em</a>
            </div>
            <div>
                <b>SẮP XẾP</b>
                <a href="#">Từ A - Z</a>
                <a href="#">Từ Z - A</a>
                <a href="#">Giá giảm dần</a>
                <a href="#">Giá tăng dần</a>
                <a href="#">Hàng mới nhất</a>
                <a href="#">Hàng củ nhất</a>
=======
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=0&max_price=500000">Giá dưới 500.000đ</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=500000&max_price=1000000">500.000đ - 1 triệu</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=1000000&max_price=2000000">1 triệu - 2 triệu</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=2000000&max_price=3000000">2 triệu - 3 triệu</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=3000000&max_price=100000000">3 triệu trở lên</a>
            </div>
            <div>
                <b>SẮP XẾP</b>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=giasale ASC">Giá tăng dần</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=giasale DESC">Giá giảm dần</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=tensp ASC">Từ A - Z</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=tensp DESC">Từ Z - A</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=id DESC">Hàng mới nhất</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=id ASC">Hàng củ nhất</a>
>>>>>>> main
            </div>
        </section>
    </aside>

<<<<<<< HEAD

    <article>
        <h4>DANH SÁCH SẢN PHẨM</h4>

        <div class="sanpham" id="sanpham">
            <?= showSP(get_sanpham2($iddm)) ?>
=======
    <article>
        <h4>DANH SÁCH SẢN PHẨM</h4>


        <div class="sanpham" id="sanpham">
            <?= showSP($sp_fill) ?>
>>>>>>> main
        </div>
        
    </article>

<<<<<<< HEAD
</main>
=======
</main>

<script>
    var btn_loc = document.querySelector(".btn-locsanpham");
    var menu_loc = document.querySelector(".menu-loc");
    var loc = document.querySelector(".loc");
    var icon_loc = document.querySelector(".icon-loc");

    btn_loc.onclick = () => {
        if (menu_loc.style.display === "block") {
            menu_loc.style.display = "none";
            loc.style.display = "block";
        }
        else {
            menu_loc.style.display = "block";
            loc.style.display = "none";
        }
    }
</script>
>>>>>>> main
