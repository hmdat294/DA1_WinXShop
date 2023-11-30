<?php

include_once "../model_DAO/pdo.php";


function get_sanpham_search_admin($keyword)
{
    $sql = "SELECT * FROM sanpham WHERE tensp LIKE '%$keyword%'";
    return pdo_query($sql);
}

function product($iddm)
{
    $sql = "SELECT * FROM sanpham WHERE iddm=$iddm ORDER BY id DESC";
    return pdo_query($sql);
}

function get_hinhanhadmin($id)
{
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query_one($sql);
}

function get_hinhanhadmin_all($id)
{
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query($sql);
}

function category_product()
{
    $sql = "SELECT * FROM danhmuc ORDER BY id ASC";
    return pdo_query($sql);
}

function category_slt($id)
{
    $sql = "SELECT * FROM danhmuc WHERE id=$id";
    return pdo_query_one($sql);
}


function get_product_edit($id)
{
    $sql = "SELECT * FROM sanpham WHERE id=$id";
    return pdo_query_one($sql);
}


function product_add($iddm_add, $tensp_add, $giagoc_add, $giasale_add, $mota_add, $soluong_add)
{
    $sql = "INSERT INTO sanpham(iddm,tensp,giagoc,giasale,mota,soluongkho) VALUES (?,?,?,?,?,?)";
    return pdo_execute($sql, $iddm_add, $tensp_add, $giagoc_add, $giasale_add, $mota_add, $soluong_add);
}

function img_product_add($idsp, $hinhanh)
{
    $sql = "INSERT INTO hinhanh(idsp,hinhanh) VALUES (?,?)";
    return pdo_execute($sql, $idsp, $hinhanh);
}

function get_last_product()
{
    $sql = "SELECT * FROM sanpham ORDER BY id DESC LIMIT 1";
    return pdo_query_one($sql);
}

function delete_product($id)
{
    $sql = "DELETE FROM sanpham WHERE id=$id";
    return pdo_execute($sql);
}

function delete_img_product($id)
{
    $sql = "DELETE FROM hinhanh WHERE idsp=$id";
    return pdo_execute($sql);
}


function product_edit($id, $iddm_edit, $tensp_edit, $giagoc_edit, $giasale_edit, $mota_edit, $soluong_edit)
{
    $sql = "UPDATE sanpham SET iddm=?, tensp=?, giagoc=?, giasale=?, mota=?, soluongkho=? WHERE id=?";
    return pdo_execute($sql, $iddm_edit, $tensp_edit, $giagoc_edit, $giasale_edit, $mota_edit, $soluong_edit, $id);
}

function img_product_edit($id, $hinhanh)
{
    $sql = "UPDATE hinhanh SET hinhanh=? WHERE id=?";
    return pdo_execute($sql, $hinhanh, $id);
}





function check_product_binhluan($id)
{
    $sql = "SELECT * FROM binhluan WHERE idsp=$id";
    return pdo_query_one($sql);
}

function check_product_chitietdonhang($id)
{
    $sql = "SELECT * FROM chitietdonhang WHERE idsp=$id";
    return pdo_query_one($sql);
}

function check_product_yeuthich($id)
{
    $sql = "SELECT * FROM yeuthich WHERE idsp=$id";
    return pdo_query_one($sql);
}