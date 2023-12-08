<link rel="stylesheet" href="../content/layout/css/giohangphp.css">
<link rel="stylesheet" href="../content/layout/css/thanhtoanp.css">

<?php extract(get_user_test($idkhachhang)); ?>

<main>
    
    <h3 class="text-center">THANH TOÁN</h3>

    <div class="">

        <div class="sanpham-tt">

            <table class="sp-ctdh">
                <tr class="tbhead">
                    <th>STT</th>
                    <th>SẢN PHẨM</th>
                    <th>ĐƠN GIÁ</th>
                    <th>THÀNH TIỀN</th>
                </tr>

                <?php
                $stt = 0;
                $tong = 0;
                $ship = round(rand(10000, 100000), -3);
                if (isset($_SESSION['cartwinx'])) $giohang = $_SESSION['cartwinx'];
                else $giohang = [];
                
                foreach ($giohang as $item) : extract($item);
                    $tong += $giasale * $soluong;
                    $stt++;
                ?>

                    <tr class="tbbody">
                        <th><?= $stt ?></th>
                        <td class="sanpham-ctdh">
                            <img class="img-gh" src="../content/layout/images/images_product/<?= $hinhanh ?>" alt="">
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

        </div>
        <div class="thongtin-tt">

            <form action="" method="post" enctype="multipart/form-data">

                <div>

                    <h6>THÔNG TIN NHẬN HÀNG</h6>

                    <label>Họ và tên người nhận hàng (*)
                        <input type="text" name="tenkh" value="<?= $tenkh ?>" required>
                    </label>

                    <label>Số điện thoại (*)
                        <input type="number" name="sdt" value="<?= $sdt ?>" required>
                    </label>

                    <label>Email (*)
                        <input type="email" name="email" value="<?= $email ?>" required>
                    </label>

                    <label>Ghi chú
                        <input type="text" name="ghichu" placeholder="Trống">
                    </label>

                    <label>Địa chỉ người nhận (*)
                        <input type="text" name="diachi" placeholder="Trống" required>
                    </label>


                </div>

                <div>

                    <h6>PHƯƠNG THỨC THANH TOÁN</h6>

                    <label>
                        <input type="radio" checked name="phuongthuc" value="Thanh toán khi nhận hàng (COD)" id="tructiep">
                        <span><i class="fa-solid fa-wallet"></i> Thanh toán khi nhận hàng (COD)</span>
                    </label>

                    <label>
                        <input type="radio" name="phuongthuc" value="Thanh toán qua ngân hàng" id="nganhang">
                        <span><i class="fa-solid fa-building-columns"></i> Thanh toán qua ngân hàng</span>
                    </label>

                    <div class="row row-cols-2" id="qr">
                        <img width="100%" src="../content/layout/images/qrmomo.png" alt="">
                        <img width="100%" src="../content/layout/images/qrvcb.png" alt="">
                    </div>

                </div>

                <div>
                    <div>
                        <span>Thành tiền:</span>
                        <span><?= doitien($tong) ?>đ</span>
                    </div>
                    <div>
                        <span>Phí vận chuyển:</span>
                        <span><?= doitien($ship) ?>đ</span>
                    </div>
                    <div>
                        <span>Tổng tiền:</span>
                        <span><?= doitien($tong + $ship) ?>đ</span>
                    </div>
                </div>

                <input type="hidden" name="stt" value="<?= $stt ?>">
                <input type="hidden" name="idkhachhang" value="1">
                <input type="hidden" name="tongtien" value="<?= $tong + $ship ?>">
                <input class="but-dathang" type="submit" name="dathang" value="ĐẶT HÀNG">

            </form>

        </div>
    </div>


</main>

<script>
    $("#qr").css("display", "none");
    $("#nganhang").click(() => $("#qr").slideDown());
    $("#tructiep").click(() => $("#qr").slideUp());
</script>