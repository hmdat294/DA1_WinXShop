<?php

ob_start();

include_once '../model_DAO/product.php';
include_once '../model_DAO/category.php';
include_once '../model_DAO/cart.php';
include_once '../model_DAO/user.php';
include_once '../model_DAO/order.php';


include_once "view/header.php";

extract($_REQUEST);

if (isset($act)) {

    switch ($act) {

        case 'giohang':

            if (isset($idsanpham) && ($idsanpham > 0)) {
                
                if((!$numsp) && ($numsp<1)) $numsp = 1;

                $checkid = get_idgiohang($idsanpham);

                if ($checkid) {
                    $slnew = $checkid['soluong'];
                    $slnew++;
                    update_slsp($idsanpham, $slnew);
                } else add_cart($idsanpham, $numsp);

                header('location: ?mod=cart&act=giohang');
            }

            include_once "view/giohang.php";
            break;

        case 'deletegiohang':

            if (isset($id) && ($id > 0)) delete_cart($id);
            header('location: ?mod=cart&act=giohang');

            break;

        case 'giamsoluong':

            if (isset($id) && ($id > 0)) {
                $chageSL = get_slgiohang($id);
                $slnew = $chageSL['soluong'];
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
                $chageSL = get_slgiohang($id);
                $slnew = $chageSL['soluong'];
                $slnew++;
                update_slgh($id, $slnew);
                header('location: ?mod=cart&act=giohang');
            };

            break;

        case 'thanhtoan':

            if (isset($dathang) && ($dathang)) {

                if ($ghichu == '') $ghichu = "Trống";
                if ($diachi == '') $diachi = "Trống";

                add_donhang($idkhachhang, $tongtien, $tenkh, $sdt, $email, $ghichu, $diachi, $phuongthuc);

                $last_donhang = get_last_donhang();
                foreach (get_giohang() as $item) {
                    extract($item);
                    add_chitietdonhang($last_donhang['id'], $idsp, $soluong, $giasale);
                }

                delete_all_cart();

                header('location: ?mod=cart&act=dathangthanhcong');
            }

            include_once "view/thanhtoan.php";
            break;

        case 'chitietdonhang':

            include_once "view/chitietdonhang.php";
            break;

        case 'dathangthanhcong':

            include_once "view/dathangthanhcong.php";
            break;

        case 'donhang':

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
