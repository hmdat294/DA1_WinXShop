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

                if (($trangthai == 'Khách hàng không nhận hàng') || ($trangthai == 'Đã hủy')) {

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

        default:
            break;
    }
}
include_once "view/footer.php";
