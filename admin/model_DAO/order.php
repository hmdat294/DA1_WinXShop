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
function update_donhang($id, $trangthai)
{
    $sql = "UPDATE donhang SET trangthai=? WHERE id=?";
    return pdo_execute($sql, $trangthai, $id);
}

function donhang_dagiao()
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã giao%' ORDER BY id ASC";
    return pdo_query($sql);
}

function donhang_dahuy()
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã hủy%' ORDER BY id ASC";
    return pdo_query($sql);
}
