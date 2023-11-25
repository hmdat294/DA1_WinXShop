<link rel="stylesheet" href="../content/layout/css/giohangphp.css">

<script>
    if ("<?= $thongbao ?>") alert("<?= $thongbao ?>");
</script>

<main>

    <h3 class="text-center p-4">GIỎ HÀNG CỦA BẠN</h3>

    <table class="container">
        <tr class="tbhead">
            <th>STT</th>
            <th>SẢN PHẨM</th>
            <th>ĐƠN GIÁ</th>
            <th>THÀNH TIỀN</th>
            <th>THAO TÁC</th>
        </tr>

        <?php
        $stt = 0;
        $tong = 0;
        foreach (get_giohang() as $item) : extract($item);
            $tong += $giasale * $soluong;
            $stt++;
            $linkdel = '?mod=cart&act=deletegiohang&id=' . $id;
            $giamsl  = '?mod=cart&act=giamsoluong&id=' . $id;
            $tangsl  = '?mod=cart&act=tangsoluong&id=' . $id;
        ?>

            <tr class="tbbody">
                <th><?= $stt ?></th>
                <td class="sanpham-gh">
                    <img class="img-gh" src="../content/layout/images/images_product/<?= get_hinhanh1($idsp)["hinhanh"] ?>" alt="">
                    <div>
                        <b><?= $tensp ?></b>
                        <div class="soluong">
                            <a href="<?= $giamsl ?>">-</a>
                            <input disabled type="text" value="<?= $soluong ?>" class="text-center">
                            <?php if ($soluong >= $soluongkho - 1) : ?>
                                <a href="#">+</a>
                            <?php else : ?>
                                <a href="<?= $tangsl ?>">+</a>
                            <?php endif; ?>
                        </div>
                    </div>
                </td>
                <td><span><?= doitien($giasale) ?></span>đ</td>
                <td>
                    <div><span><?= doitien($giasale) ?></span>đ</div>
                    <span><?= doitien($giasale * $soluong) ?></span>đ
                </td>
                <td><a href="<?= $linkdel ?>">XÓA</a></td>
            </tr>

        <?php endforeach; ?>

    </table>

    <div class="thanhtoan">
        <div>TỔNG TIỀN: <span><?= doitien($tong) ?>đ</span></div>
        <a href="?mod=cart&act=giohang&buynow=thanhtoan">THANH TOÁN</a>
    </div>

</main>