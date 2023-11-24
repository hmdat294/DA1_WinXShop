<link rel="stylesheet" href="../content/layout/css/giohangphp.css">
<link rel="stylesheet" href="../content/layout/css/userpp.css">

<?php extract(get_donhang_user_one($id))?>

<main class="">

    <aside class="aside-ctdh">
        <table class="donhangcuaban donhang-ctdh table table-borderless table-striped">
            <tbody>
                <tr>
                    <th>Mã Đơn: </th>
                    <td style="width: 250px;"><?=$id?></td>
                </tr>
                <tr>
                    <th>Ngày Đặt Hàng: </th>
                    <td><?=$tenkh?></td>
                </tr>
                <tr>
                    <th>Thời Gian: </th>
                    <td><?= date("d / m / Y", strtotime($ngaydat)) ?></td>
                </tr>
                <tr>
                    <th>Tổng Tiền: </th>
                    <td><?= doitien($tongtien) ?>đ</td>
                </tr>
                <tr>
                    <th>Trạng Thái: </th>
                    <td><?=$trangthai?></td>
                </tr>
                <tr>
                    <th>Ghi Chú: </th>
                    <td><?=$ghichu?></td>
                </tr>
                <tr>
                    <th>Địa Chỉ: </th>
                    <td><?=$diachi?></td>
                </tr>
                <tr>
                    <th>Phương Thức Thanh Toán: </th>
                    <td><?=$phuongthuc?></td>
                </tr>
            </tbody>
        </table>

        <div class="text-center">
            <a class="btn" style="background-color: #e95221; color: white" href="#">Hủy đơn</a>
        </div>
    </aside>

    <article class="">

        <h3 class="text-center p-4">CHI TIẾT ĐƠN HÀNG</h3>

        <table class="sp-ctdh">
            <tr class="tbhead">
                <th>STT</th>
                <th>SẢN PHẨM</th>
                <th>ĐƠN GIÁ</th>
                <th>THÀNH TIỀN</th>
            </tr>

            <?php
            $stt = 0;
            foreach (get_chitietdonhang_sp($id) as $item) : extract($item);
                $stt++;
            ?>
                <tr class="tbbody">
                    <th><?= $stt ?></th>
                    <td class="sanpham-ctdh">
                        <img style="width: 100px;" class="img-gh" src="../content/layout/images/images_product/<?= get_hinhanh1($idsp)["hinhanh"] ?>" alt="">
                        <div>
                            <p><?= $tensp ?></p>
                            <p>Số lượng: <?= $soluong ?></p>
                        </div>
                    </td>
                    <td><span><?= doitien($giasale) ?></span>đ</td>
                    <td><span><?= doitien($giasale * $soluong) ?></span>đ</td>
                </tr>
            <?php endforeach; ?>

        </table>
    </article>

</main>