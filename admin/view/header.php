<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://kit.fontawesome.com/eee285df14.js" crossorigin="anonymous"></script>
    <script src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <link rel="stylesheet" href="../content/layout/admin/css/style-adm.css" />
    <link rel="stylesheet" href="../content/layout/admin/scss/custom.scss">
    <link rel="stylesheet" href="../content/layout/admin/scss/custom.css">
    <title>WinX Quản Trị</title>
</head>

<body>
    <div class="head-parent">
        <div class="">
            <nav>
                <div class="khung position-fixed">
                    <div class="text-center">
                        <img class="" src="../content/layout/admin/img/logowinx.png" alt="" height="80px" />
                    </div>
                    <hr>
                    <h5 class="text-center">
                        <i class="fa-solid fa-hand-peace"></i> Xin Chào ADMIN
                    </h5>
                    <hr>
                    <div class="sitebar">

                        <a class="bg-cus text-decoration-none" href="?mod=statistic&act=list">
                            <div class="mx-2">
                                <i class="mx-1 fa-solid fa-chart-simple"></i>
                                Thống kê
                            </div>
                        </a>

                        <a class="bg-cus text-decoration-none" href="?mod=category&act=list">
                            <div class="mx-2">
                                <i class="mx-1 fa-solid fa-bars"></i>
                                Quản Lý Danh Mục
                            </div>
                        </a>

                        <a class="bg-cus text-decoration-none" href="?mod=product&act=list">
                            <div class="mx-2">
                                <i class="mx-1 fa-solid fa-cart-shopping"></i>
                                Quản Lý Sản Phẩm
                            </div>
                        </a>

                        <a class="bg-cus text-decoration-none" href="?mod=order&act=list">
                            <div class="mx-2">
                                <i class="mx-1 fa-regular fa-calendar"></i>
                                Quản Lý Đơn Hàng
                            </div>
                        </a>

                        <a class="bg-cus text-decoration-none" href="?mod=account&act=list">
                            <div class="mx-2">
                                <i class="mx-1 fa-solid fa-users"></i>
                                Quản Lý Tài Khoản
                            </div>
                        </a>
                    </div>


                    <a class="bg-cus text-decoration-none dangxuatadmin" href="../index.php">
                        <div class="mx-2">
                            <i class="mx-1 fa-solid fa-right-to-bracket"></i> Thoát
                        </div>
                    </a>
                </div>
            </nav>
        </div>
        <div class="">
            <header class="">
                <div class="">
                    <div>
                        <h4>TRANG QUẢN TRỊ WEBSITE</h4>
                    </div>
                </div>
            </header>