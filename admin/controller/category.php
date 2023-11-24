<?php

ob_start();

include_once 'model_DAO/category.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            include_once('view/category_list.php');
            break;

        case 'add':

            if (isset($add_category_submit)) {
                category_add($tendanhmuc);
                header('location: ?mod=category&act=list');
            }
            include_once('view/category_add.php');
            break;

        case 'edit':

            if (isset($edit_category_submit)) {
                category_edit($id, $editdanhmuc);
                header('location: ?mod=category&act=list');
            }
            include_once('view/category_edit.php');
            break;

        case 'del':

            category_delete($id);
            header('location: ?mod=category&act=list');
            break;
            
        default:
            break;
    }
}
include_once "view/footer.php";
