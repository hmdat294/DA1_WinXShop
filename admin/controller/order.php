<?php

ob_start();

include_once 'model_DAO/order.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':

            if (isset($tthai)) $get_donhang = donhang_tthai($tthai);
            else $get_donhang = donhang();


            if (isset($submit_search) && ($search)) {
                if (substr(strtolower($search), 0, 2) === "wx") $search = substr($search, 2);
                $get_donhang = get_donhang_search_admin($search);
            }

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
