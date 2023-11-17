<link rel="stylesheet" href="../content/layout/css/giohang.css">
<link rel="stylesheet" href="../content/layout/css/userp.css">
<main class="">

    <aside class="">

        <div>
            <img src="../content/layout/../content/layout/images/avata1.png" alt="">
            <h5>Minh Dat</h5>
        </div>

        <div>
            <a href="?mod=page&act=user" style="color: #e95221;"><i class="fa-solid fa-user"></i> Thông tin tài khoản</a>
            <a href="?mod=cart&act=donhang"><i class="fa-solid fa-list"></i> Quản lý đơn hàng</a>
            <a href="#"><i class="fa-solid fa-bell"></i> Quản lý thông báo</a>
            <a href="#"><i class="fa-solid fa-heart"></i> Sản phẩm yêu thích</a>
            <a href="?mod=page&act=admin"><i class="fa-solid fa-screwdriver-wrench"></i> Trang quản trị</a>
            <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
        </div>

    </aside>

    <article class="">

        <h5 id="titleuser" style="margin: 20px 0; text-align: center; color: #e95221;">THÔNG TIN CỦA BẠN</h5>

        <section class="" id="pagetaikhoan">
            <div class="">
                <div class="tt-tichluy p-3">
                    <div class="d-flex">
                        <img src="../content/layout/images/avata1.png" alt="">
                        <div>Xin chào <br> <span>Minh Dat</span></div>
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
                                    <b>Họ tên:</b>
                                    <input type="text" value="Minh Dat">

                                </div>
                                <div>
                                    <b>Email:</b>
                                    <input type="email" value="hominhdat@gmail.com">

                                </div>
                                <div>
                                    <b>SĐT:</b>
                                    <input type="text" value="0357072913">

                                </div>
                                <div>
                                    <b>Ngày sinh:</b>
                                    <input type="date">

                                </div>
                                <div>
                                    <b>Giới tính:</b>
                                    <div>

                                        <label class="mx-2">
                                            <input class="nam-dk mx-2" name="gioitinh" type="radio" checked value="Nam">Nam
                                        </label>
                                        <label class="mx-2">
                                            <input class="nu-dk mx-2" name="gioitinh" type="radio" value="Nữ">Nữ
                                        </label>

                                    </div>

                                </div>
                            </div>
                        </section>
                        <div class="text-center">
                            <input type="button" value="SỬA THÔNG TIN">
                        </div>
                    </form>

                </div>
            </div>
            <div class="tt-user">

                <table class="table-user donhangcuaban table table-borderless table-striped">
                    <tr>
                        <th>Họ tên: </th>
                        <td>Minh Dat</td>
                    </tr>
                    <tr>
                        <th>Email: </th>
                        <td>hominhdat@gmail.com</td>
                    </tr>
                    <tr>
                        <th>SĐT: </th>
                        <td>0357072913</td>
                    </tr>
                    <tr>
                        <th>Ngày sinh: </th>
                        <td>20/09/2004</td>
                    </tr>
                    <tr>
                        <th>Giới tính: </th>
                        <td>Nam</td>
                    </tr>
                    <tr>
                        <th>Địa chỉ: </th>
                        <td>Trống</td>
                    </tr>
                    <tr class="lienket">
                        <th><img src="../content/layout/images/facebook1.png" alt=""> Facebook </th>
                        <td><button class="p-1 text-center">Liên kết</button></td>
                    </tr>
                    <tr class="lienket">
                        <th><img src="../content/layout/images/instagram.png" alt=""> Instagram </th>
                        <td><button class="p-1 text-center">Liên kết</button></td>
                    </tr>
                </table>

            </div>

        </section>

    </article>


</main>