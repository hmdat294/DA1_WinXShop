<?php
extract(get_sanpham_chitiet($id));
?>

<link rel="stylesheet" href="../content/layout/css/chitietph.css">

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
                                anhnho<?= $id ?>.onclick = () => { anhto.src = anhnho<?= $id ?>.src; }
                            </script>

                        <?php endforeach; ?>
                    </div>
                </div>


                <div class="tt-chitiet">
                    <h5><?= $tensp ?></h5>
                    <div>Mã: <span>VNB016303</span></div>
                    <div>Thương hiệu: <span>Mizuno</span> | Tình trạng: <span>Còn hàng</span></div>
                    <div>
                        <h3><?= doitien($giasale)  ?>₫</h3> <span>Giá niêm yết: <del><?= doitien($giagoc)  ?>₫</del></span>
                    </div>

                    <div class="uudai">
                        <div class="icon-uudai">
                            <img src="../content/layout/images/uudai.png" alt="">
                            <span>ƯU ĐÃI</span>
                        </div>

                        <p>✔ Tặng 1 đôi vớ cầu lông VNB (vớ <span>VNB dài nhiều màu</span> hoặc vớ <span>VNB
                                Ngắn</span>)</p>
                        <p>✔ Sản phẩm cam kết chính hãng</p>
                        <p>✔ Thanh toán sau khi kiểm tra và nhận hàng</p>
                        <p>✔ Bảo hành chính hãng theo nhà sản xuất (Trừ hàng nội địa, xách tay)</p>

                        <b>🎁 Ưu đãi thêm khi mua sản phẩm tại <span>VNB Premium</span></b>

                        <p>✅ <span> Sơn logo mặt vợt </span> miễn phí</p>
                        <p>✅ <span> Bảo Hành lưới đan </span> trong 72 giờ</p>
                        <p>✅ <span> Thay gen vợt </span> miễn phí trọn đời</p>
                        <p>✅ <span> Tích luỹ điểm thành viên </span> Premium</p>
                        <p>✅ <span> Voucher giảm giá </span> cho lần mua hàng tiếp theo</p>

                    </div>

                    <div class="chon-size-mua">
                        <h6>Chọn size:</h6>
                        <div class="chon-size">
                            <button class="btn btn-outline-secondary">38</button>
                            <button class="btn btn-outline-secondary">39</button>
                            <button class="btn btn-outline-secondary">40</button>
                            <button class="btn btn-outline-secondary">41</button>
                            <button class="btn btn-outline-secondary">42</button>
                            <button class="btn btn-outline-secondary">43</button>
                        </div>

                        <div class="mua">

                            <div class="soluong">
                                <button>-</button>
                                <input type="text" value="1" class="text-center">
                                <button>+</button>
                            </div>

                            <a href="?mod=cart&act=giohang&idsanpham=<?= $issanpham ?>">THÊM VÀO GIỎ HÀNG</a>
                        </div>

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
                            <span>Minh Dat</span>
                        </div>
                        <section>
                            <input type="text" name="binhluan" placeholder="Bình luận">
                            <input name="submitbinhluan" type="submit" value="Đăng">
                        </section>
                    </form>

                    <div class="binhluan">
                        <div class="ten-bl">
                            <div>
                                <i class="fa-regular fa-circle-user"></i>
                                <span>Minh Dat</span>
                            </div>

                            <span>01/01/2023</span>
                        </div>
                        <div class="bl">

                            <div class="text-comment text-comment1">
                                <span>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima, maiores.
                                </span>

                                <div>
                                    <button onclick='Editcmt(1)'>Sửa</button>
                                    <a href='?mod=page&act=deletecomment&idsp=#&delcmt=#'>Xóa</a>
                                </div>
                            </div>
                            <form class="text-comment-hide text-comment-hide1" action="" method="post" enctype="multipart/form-data">
                                <input type="text" name="editcomment" value="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima, maiores.">
                                <input type="hidden" name="idcomment" value="#">

                                <div>
                                    <input type="submit" name="submitcomment" value="Sửa">
                                    <input type="button" onclick="huyEditcmt(1)" value="Hủy">
                                </div>
                            </form>

                        </div>

                    </div>

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
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                <?php endforeach; ?>
            </div>

            <div class="dangcohangtai">
                <div>ĐANG CÓ HÀNG TẠI</div>
                <button>VNB PRIMEUM QUẬN 1</button>
                <button>VNB QUẬN 1</button>
                <button>VNB QUẬN 3</button>
                <button>VNB QUẬN 4</button>
                <button>VNB QUẬN 7</button>
                <button>VNB BÌNH THẠNH</button>
                <button>VNB PHÚ NHUẬN</button>
                <button>VNB TÂN BÌNH</button>
                <button>VNB GÒ VẤP</button>
                <button>VNB TÂY NINH</button>
                <button>VNB BÀ RỊA</button>
                <button>VNB LONG AN</button>
                <button>VNB SÓC TRĂNG</button>
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