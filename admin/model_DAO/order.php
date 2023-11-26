<?php

include_once "../model_DAO/pdo.php";

function donhang()
{
    $sql = "SELECT * FROM donhang ORDER BY id ASC";
    return pdo_query($sql);
}
function get_donhangchitiet($id)
{
    $sql = "SELECT * FROM donhang WHERE id=$id";
    return pdo_query_one($sql);
}

function get_chitietdonhang($id)
{
    $sql = "SELECT * FROM chitietdonhang WHERE iddh=$id";
    return pdo_query($sql);
}

function get_sanpham_chitiet($id)
{
    $sql = "SELECT * , id as idsanpham FROM sanpham WHERE id=$id";
    return pdo_query_one($sql);
}

function update_slkho($id, $slkhonew)
{
    $sql = "UPDATE sanpham SET soluongkho='$slkhonew' WHERE id=$id";
    return pdo_execute($sql);
}

function update_donhang($id, $trangthai)
{
    $sql = "UPDATE donhang SET trangthai=? WHERE id=?";
    return pdo_execute($sql, $trangthai, $id);
}

