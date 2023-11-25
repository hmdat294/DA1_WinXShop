<?php

ob_start();

include_once 'model_DAO/product.php';

include_once('view/header.php');

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'list':
            if ($iddm) {
                $get_sanpham = product($iddm);
                $tendanhmuc = category_slt($iddm)['tendm'];
            } else {
                $get_sanpham = product(1);
                $tendanhmuc = category_slt(1)['tendm'];
            }

            include_once('view/product_list.php');
            break;

        case 'add':

            $dm_product_edit = category_product();

            if (
                isset($but_add_sp) &&
                ($iddm_add) &&
                ($tensp_add) &&
                ($giagoc_add) &&
                ($giasale_add) &&
                ($mota_add) &&
                ($soluong_add)
            ) {

                product_add($iddm_add, $tensp_add, $giagoc_add, $giasale_add, $mota_add, $soluong_add);
                $last_product = get_last_product();

                for ($i = 1; $i <= 4; $i++){
                    if ($_FILES['hinhanh_add'.$i]['name']) {
                        move_uploaded_file($_FILES['hinhanh_add'.$i]['tmp_name'], '../content/layout/images/images_product/' . $_FILES['hinhanh_add'.$i]['name']);
                        img_product_add($last_product['id'], $_FILES['hinhanh_add'.$i]['name']);
                    }
                }

                header('location: ?mod=product&act=list&iddm='.$iddm_add);
            }

            include_once('view/product_add.php');
            break;

        case 'edit':

            $product_edit = get_product_edit($id);
            $dm_product_edit = category_product();
            $tendanhmuc = category_slt($product_edit['iddm']);
            $product_img = get_hinhanhadmin_all($id);

            if (isset($but_edit_sp)) {

                $stt = 0;
                foreach ($product_img as $item) {
                    $stt++;

                    if ($_FILES['hinhanh_edit'.$stt]['name']) {

                        $image = $_FILES['hinhanh_edit'.$stt]['name'];
                        if ($image == "") $image = $hinhanh_edit_old.$stt;

                        move_uploaded_file($_FILES['hinhanh_edit'.$stt]['tmp_name'], '../content/layout/images/images_product/' . $image);
                        img_product_edit($item['id'], $image);
                    }
                }
                
                product_edit($id, $iddm_edit, $tensp_edit, $giagoc_edit, $giasale_edit, $mota_edit, $soluong_edit);
                header('location: ?mod=product&act=list&iddm='.$iddm_edit);
            }

            include_once('view/product_edit.php');
            break;

        case 'delete':

            if (isset($id) && ($id > 0)) {

                delete_img_product($id);
                delete_product($id);

            }
            
            header('location: ?mod=product&act=list');

            break;

        default:
            break;
    }
}
include_once "view/footer.php";
