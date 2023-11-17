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

            include_once "view/chitiet.php";
            break;

        case 'dangky':

            include_once "view/dangky.php";
            break;

        case 'dangnhap':

            include_once "view/dangnhap.php";
            break;

        case 'lienhe':

            include_once "view/lienhe.php";
            break;

        case 'saleoff':

            include_once "view/saleoff.php";
            break;

        case 'user':

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
