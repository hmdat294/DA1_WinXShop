<?php
// include_once '../model_DAO/product.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            
            include_once('view/statistic_list.php');
            
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
