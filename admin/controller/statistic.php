<?php

ob_start();

include_once 'model_DAO/statistic.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':

            $trangthaidonhang = trangthaidonhang_all();
            $donhangdaban = donhangdaban_all();
            $sanphamdaban = sanphamdaban_all();
            $sl_donhang_dagiao = sl_donhang_dagiao_all();
            $sl_donhang_dahuy = sl_donhang_dahuy_all();

            if (isset($day) && $day > 0) {
                $trangthaidonhang = trangthaidonhang($day);
                $donhangdaban = donhangdaban($day);
                $sanphamdaban = sanphamdaban($day);
                $sl_donhang_dagiao = sl_donhang_dagiao($day);
                $sl_donhang_dahuy = sl_donhang_dahuy($day);
            }

            include_once('view/statistic_list.php');
            break;

        case 'done':

            switch ($done) {
                case 'dagiao':
                    $title = "Đơn Hàng Đã Giao";
                    $donhang_done = donhang_dagiao_all();
                    if (isset($day) && $day > 0) {
                        $donhang_done = donhang_dagiao($day);
                    }
                    break;

                case 'dahuy':
                    $title = "Đơn Hàng Đã Hủy";
                    $donhang_done = donhang_dahuy_all();
                    if (isset($day) && $day > 0) {
                        $donhang_done = donhang_dahuy($day);
                    }
                    break;
            }

            include_once('view/order_done.php');
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
