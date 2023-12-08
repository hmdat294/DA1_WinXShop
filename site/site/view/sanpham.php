<link rel="stylesheet" href="../content/layout/css/sanphamph.css">

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
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=0&max_price=200000">Giá dưới 200.000đ</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=200000&max_price=500000">200.000đ - 500.000đ</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=500000&max_price=1000000">500.000đ - 1 triệu</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=1000000&max_price=2000000">1 triệu - 2 triệu</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&min_price=2000000&max_price=100000000">2 triệu trở lên</a>
            </div>
            <div>
                <b>SẮP XẾP</b>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=giasale ASC">Giá tăng dần</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=giasale DESC">Giá giảm dần</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=tensp ASC">Từ A - Z</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=tensp DESC">Từ Z - A</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=id DESC">Hàng mới nhất</a>
                <a href="<?= $_SERVER['REQUEST_URI'] ?>&filter_order=id ASC">Hàng củ nhất</a>
            </div>
        </section>
    </aside>

    <article>
        <h4>DANH SÁCH SẢN PHẨM</h4>


        <div class="sanpham" id="sanpham">
            <?= showSP($sp_fill) ?>
        </div>
        
    </article>

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