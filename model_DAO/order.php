<?php

include_once 'pdo.php';

function get_donhang1()
{
    $sql = "SELECT * FROM donhang ORDER BY id DESC";
    return pdo_query($sql);
}

function get_chitietdonhang($id)
{
    $sql = "SELECT * FROM chitietdonhang WHERE iddh=$id";
    return pdo_query($sql);
}

function get_nguoimua($id,$idsp)
{
    $sql = "SELECT * FROM donhang dh INNER JOIN chitietdonhang ct
    ON dh.id=ct.iddh WHERE dh.idkh=$id AND ct.idsp=$idsp AND dh.trangthai='Đã giao'";
    return pdo_query_one($sql);
}

function huy_donhang($id)
{
    $sql = "UPDATE donhang SET trangthai='Đã hủy' WHERE id=?";
    return pdo_execute($sql, $id);
}