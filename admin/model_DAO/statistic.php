<?php

include_once "../model_DAO/pdo.php";


function count_product()
{
    $sql = "SELECT count(id) as soluong from sanpham";
    return pdo_query_one($sql);
}
function count_category()
{
    $sql = "SELECT count(id) as soluong from danhmuc";
    return pdo_query_one($sql);
}
function count_order()
{
    $sql = "SELECT count(id) as soluong from donhang";
    return pdo_query_one($sql);
}
function count_account()
{
    $sql = "SELECT count(id) as soluong from user";
    return pdo_query_one($sql);
}


function trangthaidonhang()
{
    $sql = "SELECT trangthai, count(id) as soluong from donhang group by trangthai";
    return pdo_query($sql);
}
function donhangdaban()
{
    $sql = "SELECT ngaydat, count(id) as soluongoder from donhang group by ngaydat";
    return pdo_query($sql);
}
function sanphamdaban()
{
    $sql = "SELECT ngaydat, count(id) as sanphamdaban from chitietdonhang group by ngaydat";
    return pdo_query($sql);
}


function sl_donhang_dagiao()
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dagiao, 
            SUM(tongtien) as tongtien 
            FROM donhang WHERE trangthai LIKE '%Đã giao%'";
    return pdo_query_one($sql);
}

function sl_donhang_dahuy()
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dahuy
            FROM donhang WHERE trangthai LIKE '%Đã hủy%'";
    return pdo_query_one($sql);
}