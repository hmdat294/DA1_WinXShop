<?php
extract(get_sanpham_chitiet($id));

if (get_idgiohang($id))
    $slgiohang = get_idgiohang($id)['soluong'];
else
    $slgiohang = 0;

?>

<link rel="stylesheet" href="../content/layout/css/chitietp.css">

<main>

    <div class="thongtin-chitiet">

        <div class="box-left">

            <div class="thongtin-sanpham">

                <div class="img-chitiet">
                    <img id="anhto" src="../content/layout/images/images_product/<?= get_hinhanh1($id)["hinhanh"] ?>" alt="">

                    <div class="img-child">
                        <?php foreach (get_hinhanh2($id) as $item) : extract($item); ?>

                            <img id="anhnho<?= $id ?>" src="../content/layout/images/images_product/<?= $hinhanh ?>" alt="">

                            <script>
                                var anhto = document.getElementById("anhto");
                                var anhnho<?= $id ?> = document.getElementById("anhnho<?= $id ?>");
                                anhnho<?= $id ?>.onclick = () => {
                                    anhto.src = anhnho<?= $id ?>.src;
                                }
                            </script>

                        <?php endforeach; ?>
                    </div>
                </div>


                <div class="tt-chitiet">
                    <h5><?= $tensp ?></h5>
                    <div>Mã: <span>WX<?= $idsanpham ?></span></div>
                    <?php if ($soluongkho > 10) : ?>
                        <div>Tình trạng: Còn hàng - <span><?= $soluongkho ?></span> sản phẩm</div>
                    <?php else : ?>
                        <div>Tình trạng: Kho còn ít - <span><?= $soluongkho ?></span> sản phẩm</div>
                    <?php endif; ?>
                    <div>
                        <h3><?= doitien($giasale)  ?>₫</h3> <span>Giá niêm yết: <del><?= doitien($giagoc)  ?>₫</del></span>
                    </div>

                    <div class="uudai">
                        <div class="icon-uudai">
                            <img src="../content/layout/images/uudai.png" alt="">
                            <span>ƯU ĐÃI</span>
                        </div>

                        <p>✔ Tặng 1 đôi vớ cầu lông (vớ <span>dài nhiều màu</span> hoặc vớ <span>VNB
                                Ngắn</span>)</p>
                        <p>✔ Sản phẩm cam kết chính hãng</p>
                        <p>✔ Thanh toán sau khi kiểm tra và nhận hàng</p>
                        <p>✔ Bảo hành chính hãng theo nhà sản xuất (Trừ hàng nội địa, xách tay)</p>

                        <b>🎁 Ưu đãi thêm khi mua sản phẩm tại <span>Premium</span></b>

                        <p>✅ <span> Sơn logo mặt vợt </span> miễn phí</p>
                        <p>✅ <span> Bảo Hành lưới đan </span> trong 72 giờ</p>
                        <p>✅ <span> Thay gen vợt </span> miễn phí trọn đời</p>
                        <p>✅ <span> Tích luỹ điểm thành viên </span> Premium</p>
                        <p>✅ <span> Voucher giảm giá </span> cho lần mua hàng tiếp theo</p>

                    </div>

                    <div class="mua">

                        <form action="?mod=cart&act=giohang" method="post" enctype="multipart/form-data" class="soluong">
                            <div id="giamspct">-</div>
                            <input type="hidden" name="idsanpham" value="<?= $idsanpham ?>">
                            <input class="valuenum-hidden" type="hidden" name="numsp" value="1">
                            <input class="valuenum text-center" disabled type="text" value="1">
                            <div id="tangspct">+</div>

                            <?php if (($slgiohang < $soluongkho - 1) && ($soluongkho > 1)) : ?>
                                <input class="addgh" name="addgh" type="submit" value="THÊM VÀO GIỎ HÀNG">
                            <?php else : ?>
                                <input class="addgh" disabled type="button" value="ĐÃ HẾT HÀNG">
                            <?php endif; ?>
                        </form>

                        <script>
                            var num = 1;

                            var giam = document.getElementById("giamspct");
                            var tang = document.getElementById("tangspct");
                            var valuenum = document.querySelector(".valuenum");
                            var valuenum_hidden = document.querySelector(".valuenum-hidden");

                            tang.onclick = () => {
                                if (num < <?= $soluongkho - ($slgiohang + 1) ?>) {
                                    ++num;
                                    valuenum.value = num;
                                    valuenum_hidden.value = num;
                                }
                            }
                            giam.onclick = () => {
                                if (num > 1) {
                                    --num;
                                    valuenum.value = num;
                                    valuenum_hidden.value = num;
                                }
                            }
                        </script>

                    </div>

                </div>

            </div>

            <div class="mota-sanpham">
                <div>
                    <h5 id="sc1">MÔ TẢ SẢN PHẨM</h5>
                    <h5 id="sc2">THÔNG SỐ KỸ THUẬT</h5>
                </div>
                <hr>
                <section class="section1">

                    <b><?= $tensp ?></b>
                    <p><?= $mota ?></p>

                </section>

                <section class="section2">

                    <table class="table table-bordered">
                        <tbody class="">
                            <tr>
                                <th class="col-4">Phân Khúc:</th>
                                <td>Trung Cấp</td>
                            </tr>
                            <tr>
                                <th>Phân Khúc:</th>
                                <td>Trung Cấp</td>
                            </tr>
                            <tr>
                                <th>Phân Khúc:</th>
                                <td>Trung Cấp</td>
                            </tr>
                            <tr>
                                <th>Phân Khúc:</th>
                                <td>Trung Cấp</td>
                            </tr>
                            <tr>
                                <th>Phân Khúc:</th>
                                <td>Trung Cấp</td>
                            </tr>
                        </tbody>
                    </table>

                </section>



                <section class="tatca-binhluan">

                    <h3>Bình luận</h3>
                    <hr>

                    <form class="nguoi-bl" action="" method="post" enctype="multipart/form-data">
                        <div>
                            <i class="fa-regular fa-circle-user"></i>
                            <span><?= ucwords($ten_ngbl) ?></span>
                        </div>
                        <section>
                            <input type="text" name="binhluan" placeholder="Bình luận">
                            <input name="submitbinhluan" type="submit" value="Đăng">
                        </section>
                    </form>

                    <?php
                    $stt = 0;
                    foreach (get_comment_user($idsanpham) as $item) : extract($item);
                        $stt++;
                    ?>
                        <div class="binhluan">
                            <div class="ten-bl">
                                <div>
                                    <i class="fa-regular fa-circle-user"></i>
                                    <span><?= ucwords($tenkh) ?></span>
                                </div>

                                <span><?= date("d / m / Y", strtotime($ngaybinhluan)) ?></span>
                            </div>
                            <div class="bl">

                                <div class="text-comment text-comment<?= $stt ?>">
                                    <span>
                                        <?= $noidung ?>
                                    </span>

                                    <?php if ($email == $email_ngbl) : ?>
                                        <div>
                                            <button onclick='Editcmt(<?= $stt ?>)'>Sửa</button>
                                            <a href='?mod=page&act=deletecomment&idsp=<?= $idsp ?>&delcmt=<?= $idbl ?>'>Xóa</a>
                                        </div>
                                    <?php endif; ?>

                                </div>
                                <form class="text-comment-hide text-comment-hide<?= $stt ?>" action="" method="post" enctype="multipart/form-data">
                                    <input type="text" name="editcomment" value="<?= $noidung ?>">
                                    <input type="hidden" name="idcomment" value="<?= $idbl ?>">

                                    <div>
                                        <input type="submit" name="submitcomment" value="Đăng">
                                        <input type="button" onclick="huyEditcmt(<?= $stt ?>)" value="Hủy">
                                    </div>
                                </form>

                            </div>

                        </div>

                    <?php endforeach; ?>


                </section>

            </div>


        </div>

        <div class="box-right">

            <div class="danhmucsanpham">
                <div>Danh Mục Liên Quan</div>
                <?php
                if ($iddm <= 5) $iddm_lienquan = 0;
                else if ($iddm <= 10) $iddm_lienquan = 5;
                else if ($iddm <= 15) $iddm_lienquan = 10;
                else $iddm_lienquan = 15;
                ?>
                <?php foreach (get_danhmuc1($iddm_lienquan) as $item) : extract($item); ?>
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><i class="fa-solid fa-right-long"></i> <?= $tendm ?></a>
                <?php endforeach; ?>
            </div>

            <div class="dangcohangtai">
                <div>ĐANG CÓ HÀNG TẠI</div>
                <button>QUẬN 1</button>
                <button>QUẬN 3</button>
                <button>QUẬN 4</button>
                <button>QUẬN 7</button>
                <button>BÌNH THẠNH</button>
                <button>PHÚ NHUẬN</button>
                <button>TÂN BÌNH</button>
                <button>GÒ VẤP</button>
                <button>TÂY NINH</button>
                <button>BÀ RỊA</button>
                <button>LONG AN</button>
                <button>SÓC TRĂNG</button>
            </div>



        </div>

    </div>

    <h4 style="color: #e95221; margin-top:50px;">ĐỀ XUẤT CHO BẠN</h4>
    <div class="sanpham0">
        <?= showSP(get_sanpham1($iddm, 4)) ?>
    </div>

</main>
<script>
    var sc1 = document.getElementById("sc1");
    var sc2 = document.getElementById("sc2");
    var section1 = document.querySelector(".section1");
    var section2 = document.querySelector(".section2");

    sc1.onclick = () => {
        sc1.style.color = "#e95221";
        sc2.style.color = "black";
        section1.style.display = "block";
        section2.style.display = "none";
    }
    sc2.onclick = () => {
        sc1.style.color = "black";
        sc2.style.color = "#e95221";
        section1.style.display = "none";
        section2.style.display = "block";
    }

    function Editcmt(stt) {
        document.querySelector(".text-comment" + stt).style.display = 'none';
        document.querySelector(".text-comment-hide" + stt).style.display = 'flex';
    }

    function huyEditcmt(stt) {
        document.querySelector(".text-comment" + stt).style.display = 'flex';
        document.querySelector(".text-comment-hide" + stt).style.display = 'none';
    }
</script>