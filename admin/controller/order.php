<?php
// include_once '../model_DAO/product.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            include_once('view/order_list.php');
            break;

        case 'edit':
            include_once('view/order_edit.php');
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
