<?php

ob_start();

include_once 'model_DAO/order.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            include_once('view/order_list.php');
            break;

        case 'edit':

            if (isset($update_donhang)) {
                update_donhang($id, $trangthai);

                if ($trangthai == 'Khách hàng không nhận hàng') {

                    foreach (get_chitietdonhang($id) as $item) {
                        extract($item);
                        $slkho = get_sanpham_chitiet($idsp)['soluongkho'];
                        $slkhonew = $slkho + $soluong;
                        update_slkho($idsp, $slkhonew);
                    }
                    
                }

                header('location: ?mod=order&act=list');
            }

            include_once('view/order_edit.php');
            break;

        case 'done':

            switch ($done) {
                case 'dagiao':
                    $title = "Đơn Hàng Đã Giao";
                    $donhang_done = donhang_dagiao();
                    break;

                case 'dahuy':
                    $title = "Đơn Hàng Đã Hủy";
                    $donhang_done = donhang_dahuy();
                    break;
            }

            include_once('view/order_done.php');
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
