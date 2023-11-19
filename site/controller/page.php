<?php

ob_start();

include_once '../model_DAO/product.php';
include_once '../model_DAO/category.php';
include_once '../model_DAO/cart.php';
include_once '../model_DAO/user.php';
include_once '../model_DAO/order.php';
include_once '../model_DAO/comment.php';
include_once '../model_DAO/like.php';


include_once "view/header.php";

extract($_REQUEST);

if (isset($act)) {

    switch ($act) {

        case 'like':

            if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                $tenkh =  $_SESSION['accountwinx']['tenkh'];
                $email =  $_SESSION['accountwinx']['email'];
                $sdt =  $_SESSION['accountwinx']['sdt'];
                $ngaysinh =  $_SESSION['accountwinx']['ngaysinh'];
                $gioitinh =  $_SESSION['accountwinx']['gioitinh'];

                if ($_SESSION['accountwinx']['vaitro'] == 1)
                    $admin_button = '<a href="?mod=page&act=admin"><i class="fa-solid fa-screwdriver-wrench"></i> Trang quản trị</a>';
                else $admin_button = '';
            }

            if (isset($idsp_like) && ($idsp_like > 0)) {

                $checklike = get_like_one($idsp_like, $idkhachhang);

                if ($checklike) delete_like($idsp_like, $idkhachhang);
                else add_like($idkhachhang, $idsp_like);

                header('location: ?mod=page&act=like');
            }

            include_once "view/like.php";
            break;

        case 'sanpham':

            if (isset($iddm) && ($iddm > 0)) {

                if (!isset($min_price)) $min_price = 0;
                if (!isset($max_price)) $max_price = 500000000;
                if (!isset($filter_order)) $filter_order = "giasale ASC";

                $sp_fill = fill_product($iddm, $min_price, $max_price, $filter_order);
            }

            include_once "view/sanpham.php";
            break;

        case 'chitiet':

            if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                $ten_ngbl =  $_SESSION['accountwinx']['tenkh'];
                $email_ngbl =  $_SESSION['accountwinx']['email'];
            } else {
                $ten_ngbl = 'User';
                $email_ngbl = 'User';
            }

            if (isset($submitbinhluan) && ($submitbinhluan)) {
                if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {

                    $idkh = $_SESSION['accountwinx']['id'];
                    $noidung = $_POST['binhluan'];

                    add_comment($idkh, $id, $noidung);
                } else $thongbao = "Đăng nhập để bình luận!";
            }

            if (isset($submitcomment) && ($submitcomment)) {
                edit_comment($idcomment, $editcomment);
                header('location: ?mod=page&act=chitiet&iddm=' . $iddm . '&id=' . $id);
            }

            include_once "view/chitiet.php";
            break;

        case 'deletecomment':

            if (isset($delcmt) && ($delcmt >= 0)) delete_comment($delcmt);

            $danhmuc_sp = get_sanpham_chitiet($idsp);
            header('location: ?mod=page&act=chitiet&iddm=' . $danhmuc_sp['iddanhmuc'] . '&id=' . $idsp);

            break;

        case 'dangky':

            if (isset($dangky) && ($dangky)) {

                if (
                    $tenkh != '' &&
                    $sdt != '' &&
                    $email != '' &&
                    $matkhau != '' &&
                    $ngaysinh != '' &&
                    $gioitinh != ''
                ) {

                    $tk = gettaikhoan($email);

                    if ($tk) $thongbao = 'Đăng ký thất bại, tài khoản đã tồn tại!';
                    else {
                        adduser($tenkh, $email, $matkhau, $sdt, $ngaysinh, $gioitinh);
                        $thongbao = 'Đăng ký thành công, bạn có thể đăng nhập!';
                    }
                }
            }

            include_once "view/dangky.php";
            break;

        case 'dangnhap':

            if (isset($dangnhap) && ($dangnhap)) {

                if ($email != '' && $matkhau != '') {

                    $user = getuser($email, $matkhau);

                    if ($user) {
                        $_SESSION['accountwinx'] = $user;
                        header('location: index.php');
                    } else $thongbao = 'Đăng nhập thất bại, tài khoản hoặc mật khẩu không chính xác!';
                }
            }

            include_once "view/dangnhap.php";
            break;

        case 'dangxuat':

            unset($_SESSION['accountwinx']);
            header('location: index.php');
            break;

        case 'lienhe':

            include_once "view/lienhe.php";
            break;

        case 'saleoff':

            include_once "view/saleoff.php";
            break;

        case 'user':

            if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                $idkh =  $_SESSION['accountwinx']['id'];
                $tenkh =  $_SESSION['accountwinx']['tenkh'];
                $email =  $_SESSION['accountwinx']['email'];
                $sdt =  $_SESSION['accountwinx']['sdt'];
                $ngaysinh =  $_SESSION['accountwinx']['ngaysinh'];
                $gioitinh =  $_SESSION['accountwinx']['gioitinh'];

                if ($_SESSION['accountwinx']['vaitro'] == 1)
                    $admin_button = '<a href="?mod=page&act=admin"><i class="fa-solid fa-screwdriver-wrench"></i> Trang quản trị</a>';
                else $admin_button = '';
            }

            if (isset($editAccount_submit) && ($editAccount_submit)) {
                account_edit($idedit, $tenkhedit, $emailedit, $sdtedit, $ngaysinhedit, $gioitinhedit); 
                unset($_SESSION['accountwinx']);
                header('location: index.php');
            }

            include_once "view/user.php";
            break;

        case 'search':

            include_once "view/search.php";
            break;

        case 'admin':

            header('location: ../admin/index.php');
            break;

        default:

            include_once "view/home.php";
            break;
    }
} else {

    include_once "view/home.php";
}

include_once "view/footer.php";
