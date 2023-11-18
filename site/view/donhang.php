

<link rel="stylesheet" href="../content/layout/css/giohangphp.css">
<link rel="stylesheet" href="../content/layout/css/userp.css">
<link rel="stylesheet" href="../content/layout/css/donhang.css">
<main class="">

    <aside class="">

        <div>
            <img src="../content/layout/images/avata1.png" alt="">
            <h5><?= ucwords($tenkh) ?></h5>
        </div>

        <div>
            <a href="?mod=page&act=user"><i class="fa-solid fa-user"></i> Thông tin tài khoản</a>
            <a href="?mod=cart&act=donhang" style="color: #e95221;"><i class="fa-solid fa-list"></i> Quản lý đơn hàng</a>
            <a href="#"><i class="fa-solid fa-bell"></i> Quản lý thông báo</a>
            <a href="?mod=page&act=like"><i class="fa-solid fa-heart"></i> Sản phẩm yêu thích</a>
            <?= $admin_button ?>
            <a href="?mod=page&act=dangxuat"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
        </div>

    </aside>

    <article class="">

        <h5 id="titleuser" style="margin: 20px 0; text-align: center; color: #e95221;">ĐƠN HÀNG CỦA BẠN</h5>

        <table class="container table-donhang" id="pagedonhang">
            <tr class="tbhead">
                <th>MÃ ĐƠN</th>
                <th>NGƯỜI ĐẶT HÀNG</th>
                <th>THỜI GIAN</th>
                <th>TỔNG TIỀN</th>
                <th>TRẠNG THÁI</th>
                <th>THAO TÁC</th>
            </tr>

            <?php
            foreach (get_donhang1() as $item) : extract($item);
                $linkct = '?mod=cart&act=chitietdonhang&id=' . $id;
            ?>
                <tr class="tbbody">
                    <td><?= $id ?></td>
                    <td>
                        <span><?= $tenkh ?></span>
                    </td>
                    <td>
                        <span><?= date("H:i:s | d-m-Y", strtotime($ngaydat)) ?></span>
                    </td>
                    <td>
                        <span><?= doitien($tongtien) ?></span>đ
                    </td>
                    <td>
                        <span><?= $trangthai ?></span>
                    </td>
                    <td>
                        <a href="<?= $linkct ?>">Xem chi tiết</a>
                    </td>
                </tr>
            <?php endforeach; ?>

        </table>

    </article>


</main>