<link rel="stylesheet" href="../content/layout/css/giohangphp.css">
<link rel="stylesheet" href="../content/layout/css/userppp.css">

<script>
    if ("<?= $thongbao ?>") alert("<?= $thongbao ?>");
</script>

<main class="">

    <aside class="">

        <div>
            <img src="../content/layout/images/avata1.png" alt="">
            <h5><?= ucwords($tenkh) ?></h5>
        </div>

        <div>
            <a href="?mod=page&act=user" style="color: #e95221;"><i class="fa-solid fa-user"></i> Thông tin tài khoản</a>
            <a href="?mod=cart&act=donhang"><i class="fa-solid fa-list"></i> Quản lý đơn hàng</a>
            <a href="?mod=page&act=like"><i class="fa-solid fa-heart"></i> Sản phẩm yêu thích</a>
            <?= $admin_button ?>
            <a href="?mod=page&act=dangxuat"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
        </div>

    </aside>

    <article class="">

        <h5 id="titleuser" style="margin: 20px 0; text-align: center; color: #e95221;">THÔNG TIN CỦA BẠN</h5>

        <section class="" id="pagetaikhoan">
            <div class="">
                <div class="tt-tichluy p-3">
                    <div class="d-flex">
                        <img src="../content/layout/images/avata1.png" alt="">
                        <div>Xin chào <br> <span><?= ucwords($tenkh) ?></span></div>
                    </div>
                    <div class="d-flex">
                        <img src="../content/layout/images/tichluy.png" alt="">
                        <div>Điểm tích lũy <br> <span>0</span></div>
                    </div>
                </div>
                <div class="sua-tt p-3 my-3">

                    <form action="" method="post" enctype="multipart/form-data">
                        <section class="">
                            <div class="">
                                <div>
                                    <b>Tên:</b>
                                    <input type="text" name="tenkhedit" value="<?= $tenkh ?>" required maxlength="15">

                                </div>
                                <div>
                                    <b>Email:</b>
                                    <input type="email" name="emailedit" value="<?= $email ?>" required>

                                </div>
                                <div>
                                    <b>SĐT:</b>
                                    <input type="number" name="sdtedit" value="<?= $sdt ?>" required>

                                </div>
                                <div>
                                    <b>Ngày sinh:</b>
                                    <input type="date" min="1900-01-01" max="2008-01-01" name="ngaysinhedit" value="<?= date("Y-m-d", strtotime($ngaysinh)) ?>" required>

                                </div>


                                <style>
                                    input[type="radio"]:checked {
                                        accent-color: #e95221;
                                    }
                                </style>


                                <div>
                                    <b>Giới tính: </b>
                                    <div>
                                        <?php if ($gioitinh == "Nam") : ?>

                                            <label class="mx-2">
                                                <input class="nam-dk mx-2" name="gioitinhedit" type="radio" checked value="Nam">Nam
                                            </label>
                                            <label class="mx-2">
                                                <input class="nu-dk mx-2" name="gioitinhedit" type="radio" value="Nữ">Nữ
                                            </label>

                                        <?php else : ?>
                                            <label class="mx-2">
                                                <input class="nam-dk mx-2" name="gioitinhedit" type="radio" value="Nam">Nam
                                            </label>
                                            <label class="mx-2">
                                                <input class="nu-dk mx-2" name="gioitinhedit" type="radio" checked value="Nữ">Nữ
                                            </label>

                                        <?php endif; ?>
                                    </div>

                                </div>
                            </div>
                        </section>
                        <div class="text-center">
                            <input type="hidden" name="idedit" value="<?= $idkh ?>">
                            <input type="submit" name="editAccount_submit" value="SỬA THÔNG TIN">
                        </div>
                    </form>

                </div>
            </div>
            <style>
                main>article>section>.tt-user>.table-user a{
                    font-size: 0.8em; 
                    color: #e95221; 
                    text-decoration: none; 
                    border: 2px solid #e95221; 
                    border-radius:5px; 
                    padding: 5px 10px;
                    transition: 0.3s;
                }
                main>article>section>.tt-user>.table-user a:hover{
                    background-color: #e95221;
                    color: white;
                }
            </style>
            <div class="tt-user">

                <table class="table-user donhangcuaban table table-borderless table-striped">
                    <tr>
                        <th>Tên: </th>
                        <td><?= $tenkh ?></td>
                    </tr>
                    <tr>
                        <th>Email: </th>
                        <td><?= $email ?></td>
                    </tr>
                    <tr>
                        <th>SĐT: </th>
                        <td><?= $sdt ?></td>
                    </tr>
                    <tr>
                        <th>Ngày sinh: </th>
                        <td><?= date("d / m / Y", strtotime($ngaysinh)) ?></td>
                    </tr>
                    <tr>
                        <th>Giới tính: </th>
                        <td><?= $gioitinh ?></td>
                    </tr>
                    <tr class="lienket">
                        <th><img src="../content/layout/images/facebook1.png" alt=""> Facebook </th>
                        <td><a href="https://www.facebook.com/">Liên kết</a></td>
                    </tr>
                    <tr class="lienket">
                        <th><img src="../content/layout/images/instagram.png" alt=""> Instagram </th>
                        <td><a href="https://www.instagram.com/">Liên kết</a></td>
                    </tr>
                </table>

            </div>

        </section>

    </article>


</main>