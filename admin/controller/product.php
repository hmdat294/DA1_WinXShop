<?php
// include_once '../model_DAO/product.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            include_once('view/product_list.php');
            break;

        case 'add':
            include_once('view/product_add.php');
            break;

        case 'edit':
            include_once('view/product_edit.php');
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
