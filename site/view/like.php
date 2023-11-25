<link rel="stylesheet" href="../content/layout/css/giohangphp.css">
<link rel="stylesheet" href="../content/layout/css/userppp.css">
<link rel="stylesheet" href="../content/layout/css/donhang.css">

<style>
    .box-sp {
        margin-top: 0;
        height: 320px;
        font-size: 0.8em;
    }

    .box-sp:hover>.chucnang-sp {
        transform: translateY(-20px);
        opacity: 1;
    }
</style>
<main class="">

    <aside class="">

        <div>
            <img src="../content/layout/images/avata1.png" alt="">
            <h5><?= ucwords($tenkh) ?></h5>
        </div>

        <div>
            <a href="?mod=page&act=user"><i class="fa-solid fa-user"></i> Thông tin tài khoản</a>
            <a href="?mod=cart&act=donhang"><i class="fa-solid fa-list"></i> Quản lý đơn hàng</a>
            <a href="?mod=page&act=like" style="color: #e95221;"><i class="fa-solid fa-heart"></i> Sản phẩm yêu thích</a>
            <?= $admin_button ?>
            <a href="?mod=page&act=dangxuat"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
        </div>

    </aside>

    <article class="">

        <h5 id="titleuser" style="margin: 20px 0; text-align: center; color: #e95221;">SẢN PHẨM YÊU THÍCH</h5>

        <div class="sanpham0">
            <?php
            foreach (get_like_product() as $item) : extract($item);

                if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                    $id_nglike = $_SESSION['accountwinx']['id'];
                    $linkyeuthich = '?mod=page&act=like&idsp_like=' . $id . '&idkhachhang=' . $id_nglike;
                } else {
                    $id_nglike = 0;
                    $linkyeuthich = '#';
                }

                $checklike = get_like_one($id, $id_nglike);
                if ($checklike) $icon_heart = '<i class="fa-solid fa-heart" style="color: red;"></i>';
                else $icon_heart = '<i class="fa-regular fa-heart"></i>';

                if (get_idgiohang($idsanpham)) $slgiohang = get_idgiohang($idsanpham)['soluong'];
                else $slgiohang = 0;

                if (($slgiohang < $soluongkho - 1) && ($soluongkho > 1))
                    $linkdathang = '<a href="?mod=cart&act=giohang&idsanpham=' . $id . '"><i class="fa-solid fa-cart-shopping"></i></a>';
                else
                    $linkdathang = '<a href="#"><i class="fa-solid fa-cart-shopping"></i></a>';
            ?>
                <?php if ($idkh == $id_nglike) : ?>

                    <div class="box-sp">
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

                <?php endif; ?>
            <?php endforeach; ?>
        </div>

    </article>


</main>