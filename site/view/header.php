<?php

session_start();

if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
    $linklogin = 'href="?mod=page&act=user"';
    $valuelogin =  ucwords($_SESSION['accountwinx']['tenkh']);
} else {
    $linklogin = 'href="?mod=page&act=dangnhap"';
    $valuelogin = 'Đăng nhập';
}

if(get_slsp_giohang()['slsp']) $slsp_gh = get_slsp_giohang()['slsp'];
else $slsp_gh = 0;

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/371bdbff34.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="favicon.ico" type="favicon">
    <link rel="stylesheet" href="../content/layout/css/style-p.css">
    <title>WinX Sport Shop</title>
</head>

<body>

    <div class="container">
        <header class="">
            <div class="logo">
                <a href="index.php">
                    <img src="../content/layout/images/logowinx.png">
                </a>
            </div>

            <div class="hotline">
                <i class="fa-solid fa-phone p-2"></i>
                <span>HOTLINE: <span>0357072913 | 0984700721</span></span>
            </div>

            <div class="address">
                <i class="fa-solid fa-location-dot p-2"></i>
                <span>HỆ THỐNG CỬA HÀNG</span>
            </div>

            <form class="search" method='post' action='?mod=page&act=search' role="search">
                <input type="search" name="search" placeholder="Tìm sản phẩm..." id="">
                <button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </form>

            <div class="information_cart">
                <a <?= $linklogin ?>>
                    <i class="fa-solid fa-user"></i>
                    <span> <?= $valuelogin ?></span>
                </a>
                <a href="?mod=cart&act=giohang" class="">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <div><?=$slsp_gh?></div>
                </a>
            </div>

        </header>

        <nav class="">
            <div class="container navchild">
                <a href="index.php" class="">
                    <i class="fa-solid fa-house"></i>
                    <span>TRANG CHỦ</span>
                </a>

                <a class="" id="buttonsp">
                    <i class="fa-solid fa-bars iconshow1"></i>
                    <i class="fa-solid fa-xmark iconhide1"></i>
                    <span>SẢN PHẨM</span>
                </a>

                <a href="?mod=page&act=saleoff" class="">
                    <i class="fa-solid fa-ticket"></i>
                    <span>SALE OFF</span>
                </a>

                <a href="?mod=page&act=lienhe" class="">
                    <i class="fa-solid fa-envelope"></i>
                    <span>LIÊN HỆ</span>
                </a>
            </div>
            <div class="container navhide">
                <div id="buttonnav">
                    <i class="fa-solid fa-bars iconshow2"></i>
                    <i class="fa-solid fa-xmark iconhide2"></i>
                </div>
                <div class="search">
                    <input type="search" placeholder="Tìm sản phẩm..." name="" id="">
                    <button>
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
            </div>
        </nav>

        <div class="menu-navhide">
            <a href="index.php" class="">
                <i class="fa-solid fa-house"></i>
                <span>TRANG CHỦ</span>
            </a>

            <a class="" id="buttonsphide">
                <i class="fa-solid fa-bars iconshow3"></i>
                <i class="fa-solid fa-xmark iconhide3"></i>
                <span>SẢN PHẨM</span>

            </a>
            <div class="menusanpham-hide">
                <div>
                    <b>CẦU LÔNG</b>
                    <hr>
                    <div>
                        <?php foreach (get_danhmuc1(0) as $item) : extract($item); ?>
                            <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                        <?php endforeach; ?>
                    </div>
                </div>

                <div>
                    <b>BÓNG ĐÁ</b>
                    <hr>
                    <div>
                        <?php foreach (get_danhmuc1(5) as $item) : extract($item); ?>
                            <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                        <?php endforeach; ?>
                    </div>
                </div>

                <div>
                    <b>BÓNG RỔ</b>
                    <hr>
                    <div>
                        <?php foreach (get_danhmuc1(10) as $item) : extract($item); ?>
                            <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                        <?php endforeach; ?>
                    </div>
                </div>

                <div>
                    <b>BÓNG BÀN</b>
                    <hr>
                    <div>
                        <?php foreach (get_danhmuc1(15) as $item) : extract($item); ?>
                            <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                        <?php endforeach; ?>
                    </div>
                </div>

            </div>

            <a href="?mod=page&act=saleoff" class="">
                <i class="fa-solid fa-ticket"></i>
                <span>SALE OFF</span>
            </a>

            <a href="?mod=page&act=lienhe" class="">
                <i class="fa-solid fa-envelope"></i>
                <span>LIÊN HỆ</span>
            </a>
        </div>

        <div class="menusanpham">
            <div class="">
                <h6>CẦU LÔNG</h6>
                <hr>
                <?php foreach (get_danhmuc1(0) as $item) : extract($item); ?>
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                <?php endforeach; ?>
            </div>
            <div class="">
                <h6>BÓNG ĐÁ</h6>
                <hr>
                <?php foreach (get_danhmuc1(5) as $item) : extract($item); ?>
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                <?php endforeach; ?>
            </div>
            <div class="">
                <h6>BÓNG RỔ</h6>
                <hr>
                <?php foreach (get_danhmuc1(10) as $item) : extract($item); ?>
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                <?php endforeach; ?>
            </div>
            <div class="">
                <h6>BÓNG BÀN</h6>
                <hr>
                <?php foreach (get_danhmuc1(15) as $item) : extract($item); ?>
                    <a href="?mod=page&act=sanpham&iddm=<?= $id ?>"><?= $tendm ?></a>
                <?php endforeach; ?>
            </div>
        </div>