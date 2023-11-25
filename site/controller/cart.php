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

        case 'giohang':

            if (isset($idsanpham) && ($idsanpham > 0)) {

                if ((!$numsp) && ($numsp < 1)) $numsp = 1;

                $checkid = get_idgiohang($idsanpham);

                if ($checkid) {
                    $slnew = $checkid['soluong'];
                    $slnew += $numsp;
                    update_slsp($idsanpham, $slnew);
                } else add_cart($idsanpham, $numsp);

                header('location: ?mod=cart&act=giohang');
            }

            if (isset($buynow) && ($buynow == "thanhtoan")) {
                if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '' && get_giohang() != [])
                    header('location: ?mod=cart&act=thanhtoan');
                else
                    header('location: ?mod=page&act=dangnhap');
            }

            include_once "view/giohang.php";
            break;

        case 'deletegiohang':

            if (isset($id) && ($id > 0)) delete_cart($id);
            header('location: ?mod=cart&act=giohang');

            break;

        case 'giamsoluong':

            if (isset($id) && ($id > 0)) {
                $slnew = get_slgiohang($id)['soluong'];
                if ($slnew <= 1) {
                    delete_cart($id);
                } else {
                    $slnew--;
                    update_slgh($id, $slnew);
                }
                header('location: ?mod=cart&act=giohang');
            };

            break;

        case 'tangsoluong':

            if (isset($id) && ($id > 0)) {
                $slnew = get_slgiohang($id)['soluong'];
                $slnew++;
                update_slgh($id, $slnew);
                header('location: ?mod=cart&act=giohang');
            };

            break;

        case 'thanhtoan':

            $idkhachhang = $_SESSION['accountwinx']['id'];

            if (isset($dathang) && ($dathang) && ($stt > 0)) {

                if ($ghichu == '') $ghichu = "Trống";
                if ($diachi == '') $diachi = "Trống";

                add_donhang($idkhachhang, $tongtien, $tenkh, $sdt, $email, $ghichu, $diachi, $phuongthuc);

                $last_donhang = get_last_donhang();
                foreach (get_giohang() as $item) {
                    extract($item);

                    $slkho = get_sanpham_chitiet($idsp)['soluongkho'];
                    $slkhonew = $slkho - $soluong;
                    update_slkho($idsp, $slkhonew);

                    add_chitietdonhang($last_donhang['id'], $idsp, $soluong, $giasale);
                }

                delete_all_cart();

                header('location: ?mod=cart&act=dathangthanhcong');
            }

            include_once "view/thanhtoan.php";
            break;

        case 'chitietdonhang':
            
            if (isset($idhuydon) && ($idhuydon > 0)) {
                huy_donhang($idhuydon);

                foreach (get_chitietdonhang($idhuydon) as $item) {
                    extract($item);
                    $slkho = get_sanpham_chitiet($idsp)['soluongkho'];
                    $slkhonew = $slkho + $soluong;
                    update_slkho($idsp, $slkhonew);
                }

                header('location: ?mod=cart&act=chitietdonhang&id='.$idhuydon);
            }

            include_once "view/chitietdonhang.php";
            break;

        case 'dathangthanhcong':

            include_once "view/dathangthanhcong.php";
            break;

        case 'donhang':

            if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
                $id_ngmua = $_SESSION['accountwinx']['id'];
                $tenkh =  $_SESSION['accountwinx']['tenkh'];
                $email =  $_SESSION['accountwinx']['email'];
                $sdt =  $_SESSION['accountwinx']['sdt'];
                $ngaysinh =  $_SESSION['accountwinx']['ngaysinh'];
                $gioitinh =  $_SESSION['accountwinx']['gioitinh'];

                if ($_SESSION['accountwinx']['vaitro'] == 1)
                    $admin_button = '<a href="?mod=page&act=admin"><i class="fa-solid fa-screwdriver-wrench"></i> Trang quản trị</a>';
                else $admin_button = '';
            }

            include_once "view/donhang.php";
            break;

        default:

            include_once "view/home.php";
            break;
    }
} else {

    include_once "view/home.php";
}

include_once "view/footer.php";
