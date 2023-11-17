<?php

include_once 'pdo.php';

function get_sanpham_search($keyword)
{
    $sql = "SELECT * FROM sanpham WHERE tensp LIKE '%$keyword%'";
    return pdo_query($sql);
}

function get_sanpham1($id, $limit)
{
    $sql = "SELECT * FROM sanpham WHERE iddm=$id ORDER BY id DESC limit $limit";
    return pdo_query($sql);
}

<<<<<<< HEAD
function get_sanpham2($id)
{
    $sql = "SELECT * FROM sanpham WHERE iddm=$id ORDER BY id ASC";
    return pdo_query($sql);
=======
// function get_sanpham2($id)
// {
//     $sql = "SELECT * FROM sanpham WHERE iddm=$id ORDER BY id DESC limit 12";
//     return pdo_query($sql);
// }

function fill_product($iddm,$min_price,$max_price,$filter_order){
    $sql = "SELECT * FROM sanpham WHERE iddm=? 
    AND giasale BETWEEN ? AND ? ORDER BY $filter_order LIMIT 12";
    return pdo_query($sql,$iddm,$min_price,$max_price);
>>>>>>> main
}

function get_sanpham_saleoff()
{
    $sql = "SELECT * FROM `sanpham` ORDER BY giagoc-giasale DESC limit 10";
    return pdo_query($sql);
}

function get_sanpham_chitiet($id)
{
    $sql = "SELECT * , id as issanpham FROM sanpham WHERE id=$id";
    return pdo_query_one($sql);
}

function get_hinhanh1($id){
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query_one($sql);
}
<<<<<<< HEAD
=======

>>>>>>> main
function get_hinhanh2($id){
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query($sql);
}

// function get_sanpham1_hinhanh($id, $limit)
// {
//     $sql = "SELECT * FROM sanpham sp INNER JOIN hinhanh ha 
//     ON sp.id=ha.idsp WHERE sp.iddm=$id ORDER BY sp.id DESC limit $limit";
//     return pdo_query($sql);
// }