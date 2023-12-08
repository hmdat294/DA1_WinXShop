<?php

ob_start();

include_once 'model_DAO/account.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            include_once('view/account_list.php');
            break;

        case 'edit':
            if (isset($update_account)){
                update_account($id, $vaitro);
                header('location: ?mod=account&act=list');
            }
            include_once('view/account_edit.php');
            break;

        default:
            break;
    }
}
include_once "view/footer.php";
