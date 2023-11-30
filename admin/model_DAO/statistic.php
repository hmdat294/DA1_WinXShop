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







function trangthaidonhang_all()
{
    $sql = "SELECT trangthai, count(id) as soluong from donhang group by trangthai";
    return pdo_query($sql);
}
function donhangdaban_all()
{
    $sql = "SELECT ngaydat, count(id) as soluongoder from donhang group by DATE(ngaydat)";
    return pdo_query($sql);
}
function sanphamdaban_all()
{
    $sql = "SELECT ngaydat, count(id) as sanphamdaban from chitietdonhang group by DATE(ngaydat)";
    return pdo_query($sql);
}




function trangthaidonhang($day)
{
    $sql = "SELECT trangthai, count(id) as soluong from donhang
    WHERE ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW() 
    group by trangthai";
    return pdo_query($sql);
}
function donhangdaban($day)
{
    $sql = "SELECT ngaydat, count(id) as soluongoder from donhang
    WHERE ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW() 
    group by DATE(ngaydat)";
    return pdo_query($sql);
}
function sanphamdaban($day)
{
    $sql = "SELECT ngaydat, count(id) as sanphamdaban from chitietdonhang
    WHERE ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW() 
    group by DATE(ngaydat)";
    return pdo_query($sql);
}





function sl_donhang_dagiao_all()
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dagiao, 
            SUM(tongtien) as tongtien 
            FROM donhang WHERE trangthai LIKE '%Đã giao%'";
    return pdo_query_one($sql);
}

function sl_donhang_dahuy_all()
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dahuy
            FROM donhang WHERE trangthai LIKE '%Đã hủy%'";
    return pdo_query_one($sql);
}

function sl_donhang_dagiao($day)
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dagiao, 
            SUM(tongtien) as tongtien 
            FROM donhang WHERE trangthai LIKE '%Đã giao%'
            AND ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW()";
    return pdo_query_one($sql);
}

function sl_donhang_dahuy($day)
{
    $sql = "SELECT 
            COUNT(id) AS sl_donhang_dahuy
            FROM donhang WHERE trangthai LIKE '%Đã hủy%'
            AND ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW()";
    return pdo_query_one($sql);
}


function donhang_dagiao_all()
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã giao%' ORDER BY id ASC";
    return pdo_query($sql);
}

function donhang_dahuy_all()
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã hủy%' ORDER BY id ASC";
    return pdo_query($sql);
}


function donhang_dagiao($day)
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã giao%' 
    AND ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW()
    ORDER BY id ASC";
    return pdo_query($sql);
}

function donhang_dahuy($day)
{
    $sql = "SELECT * FROM donhang WHERE trangthai LIKE '%Đã hủy%' 
    AND ngaydat >= NOW() - INTERVAL $day DAY AND ngaydat <= NOW()
    ORDER BY id ASC";
    return pdo_query($sql);
}
