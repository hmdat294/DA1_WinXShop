<main>

    <div class="banner">
        <img src="../content/layout/images/banner1.jpg" alt="">
    </div>

    <div class="quangcao1">
        <div class="">
            <img src="../content/layout/images/icon_ship.png" alt="">
            <div>
                <span>Vận chuyển <b>TOÀN QUỐC</b></span>
                <span>Thanh toán khi nhận hàng</span>
            </div>
        </div>
        <div class="">
            <img src="../content/layout/images/icon_like.png" alt="">
            <div>
                <span><b>Bảo đảm chất lượng</b></span>
                <span>Sản phẩm chất lượng</span>
            </div>
        </div>
        <div class="">
            <img src="../content/layout/images/icon_card.png" alt="">
            <div>
                <span>Tiến hành <b>THANH TOÁN</b></span>
                <span>Với nhiều <b>PHƯƠNG THỨC</b></span>
            </div>
        </div>
        <div class="">
            <img src="../content/layout/images/icon_coin.png" alt="">
            <div>
                <span><b>Đổi sản phẩm mới</b></span>
                <span>Nếu sản phẩm lỗi</span>
            </div>
        </div>
    </div>

    <div class="sp-title p-5">
        <h4>SẢN PHẨM NỔI BẬT</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <hr>
    <div class="sp-danhmuc-noibat text-center">

        <a href="?mod=page&act=sanpham&iddm=6" class="">Áo bóng đá</a>
        <a href="?mod=page&act=sanpham&iddm=3" class="">Giày cầu lông</a>
        <a href="?mod=page&act=sanpham&iddm=4" class="">Vợt cầu lông</a>
        <a href="?mod=page&act=sanpham&iddm=1" class="">Áo cầu lông</a>
        <a href="?mod=page&act=sanpham&iddm=2" class="">Quần cầu lông</a>
        <a href="?mod=page&act=sanpham&iddm=15" class="">Balo bóng rổ</a>

    </div>

    <div class="sanpham-noibat">

        <div class="next-sp">
            <i onclick="prevProduct()" class="fa-solid fa-arrow-left"></i>
            <i onclick="nextProduct()" class="fa-solid fa-arrow-right"></i>
        </div>

        <div class="sp-noibat">
            <?php foreach (get_sanpham_noibat() as $item) : extract($item);

                if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                    $id_nglike = $_SESSION['accountwinx']['id'];
                    $linkyeuthich = '?mod=page&act=like&idsp_like=' . $id . '&idkhachhang=' . $id_nglike;
                } else {
                    $id_nglike = 0;
                    $linkyeuthich = '?mod=page&act=dangnhap';
                }

                $checklike = get_like_one($id, $id_nglike);
                if ($checklike) $icon_heart = '<i class="fa-solid fa-heart" style="color: red;"></i>';
                else $icon_heart = '<i class="fa-regular fa-heart"></i>';

                if (isset($_SESSION['cartwinx'])) {
                    foreach ($_SESSION['cartwinx'] as $item) {
                        if ($item['id'] == $idsanpham) $slgiohang = $item['soluong'];
                    }
                }
                if (!isset($slgiohang)) $slgiohang = 0;

                if (($slgiohang < $soluongkho - 1) && ($soluongkho > 1))
                    $linkdathang = '<a href="?mod=cart&act=giohang&idsanpham=' . $id . '"><i class="fa-solid fa-cart-shopping"></i></a>';
                else
                    $linkdathang = '<a href="#"><i class="fa-solid fa-cart-shopping"></i></a>';

            ?>

                <div class="box-sp" id="slidesp">
                    <a href="?mod=page&act=chitiet&iddm=<?= $iddm ?>&id=<?= $id ?>" class="img-sp">
                        <img src="../content/layout/images/images_product/<?= get_hinhanh1($id)["hinhanh"] ?>" alt="">
                        <p class="ten-sp"><?= $tensp ?></p>
                        <div class="gia">
                            <del><?= doitien($giagoc) ?>đ</del>
                            <span><?= doitien($giasale) ?>đ</span>
                        </div>
                    </a>

                    <div class="chucnang-sp">
                        <?= $linkdathang ?>
                        <a href="?mod=page&act=chitiet&iddm=<?= $iddm ?>&id=<?= $id ?>"><i class="fa-solid fa-ellipsis"></i></a>
                        <a href="<?= $linkyeuthich ?>"><?= $icon_heart ?></a>
                    </div>
                </div>

            <?php endforeach; ?>
        </div>

    </div>


    <div class="sp-title p-5">
        <h4>SẢN PHẨM MỚI RA MẮT</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <div class="sp-moiramat">
        <img class="" src="../content/layout/images/spnew1.png" alt="">
        <img class="" src="../content/layout/images/spnew2.png" alt="">
        <img class="" src="../content/layout/images/spnew3.png" alt="">
    </div>


    <div class="sp-title p-5">
        <h4>SẢN PHẨM BÁN CHẠY</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <div class="sp-yeuthich">
        <img src="../content/layout/images/quangcao1.png" alt="">
        <div class="sanpham2">
            <?= showSP(get_sanpham_banchay('0,2')) ?>
        </div>
    </div>

    <div class="sanpham0">
        <?= showSP(get_sanpham_banchay('2,4')) ?> 
    </div>

    <div class="sp-title p-5">
        <h4>SALE OFF</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <div class="sp-saleoff">
        <img class="" src="../content/layout/images/banner2.png" alt="">
        <img class="" src="../content/layout/images/banner3.png" alt="">
    </div>


    <div class="sp-title p-5">
        <h4>GIẢM NGAY 20%-70%</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <div class="sp-giamngay">
        <div class="sanpham3">
            <?= showSP(get_sanpham1(1, 4)) ?>
        </div>
        <img src="../content/layout/images/quangcao2.png" alt="">

    </div>

    <div class="sp-title p-5">
        <h4>THƯƠNG HIỆU HỢP TÁC</h4>
        <div class="line">
            <div></div>
        </div>
    </div>

    <img class="container" src="../content/layout/images/thuonghieu.png" alt="">

</main>

<script>
    const nextProduct = () => {
        Next("#slidesp", ".sp-noibat");
    }
    setInterval(nextProduct, 3000);
    const prevProduct = () => {
        Prev("#slidesp", ".sp-noibat");
    }

    const Next = (className, idName) => {
        let Element = document.querySelectorAll(className);
        document.querySelector(idName).appendChild(Element[0]);
    }
    const Prev = (className, idName) => {
        let Element = document.querySelectorAll(className);
        document.querySelector(idName).prepend(Element[Element.length - 1]);
    }
</script>