<link rel="stylesheet" href="../content/layout/css/sanpham.css">

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
            </div>
        </section>
    </aside>


    <article>
        <h4>DANH SÁCH SẢN PHẨM</h4>

        <div class="sanpham" id="sanpham">
            <?= showSP(get_sanpham2($iddm)) ?>
        </div>
        
    </article>

</main>