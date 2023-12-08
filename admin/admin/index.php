<?php
    extract($_REQUEST);
    if(isset($mod)){
        switch($mod){
            case 'statistic':
                include_once('controller/statistic.php');
                break;
            case 'category':
                include_once('controller/category.php');
                break;
            case 'product':
                include_once('controller/product.php');
                break;
            case 'account':
                include_once('controller/account.php');
                break;
            case 'order':
                include_once('controller/order.php');
                break;
            default:
                break;
        }
    }
    else header('location: ?mod=statistic&act=list');
?>
