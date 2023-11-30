<?php

include_once 'pdo.php';

function get_sanpham_search($keyword)
{
    $sql = "SELECT *, id AS idsanpham FROM sanpham WHERE tensp LIKE '%$keyword%'";
    return pdo_query($sql);
}


function get_sanpham_noibat()
{
    $sql = "WITH NumberedProducts AS (SELECT *, ROW_NUMBER() OVER (PARTITION BY iddm ORDER BY id) AS row_num
        FROM sanpham WHERE iddm IN (1, 2, 3, 4, 5, 6, 7, 8, 9))
        SELECT *, id AS idsanpham FROM NumberedProducts WHERE row_num = 1; ";
    return pdo_query($sql);
}



function get_sanpham_banchay($limit)
{
    $sql = "SELECT sp.*, sp.id AS idsanpham , SUM(soluong) AS sldamua FROM chitietdonhang ct INNER JOIN sanpham sp 
    ON ct.idsp=sp.id GROUP BY idsp ORDER BY sldamua DESC LIMIT $limit";
    return pdo_query($sql);
}


function get_sanpham1($id, $limit)
{
    $sql = "SELECT *, id AS idsanpham FROM sanpham WHERE iddm=$id ORDER BY id DESC limit $limit";
    return pdo_query($sql);
}



function fill_product($iddm, $min_price, $max_price, $filter_order)
{
    $sql = "SELECT *, id AS idsanpham FROM sanpham WHERE iddm=? 
    AND giasale BETWEEN ? AND ? ORDER BY $filter_order LIMIT 12";
    return pdo_query($sql, $iddm, $min_price, $max_price);
}

function get_sanpham_saleoff()
{
    $sql = "SELECT *, id AS idsanpham FROM sanpham ORDER BY giagoc-giasale DESC limit 10";
    return pdo_query($sql);
}

function get_sanpham_chitiet($id)
{
    $sql = "SELECT * , id as idsanpham FROM sanpham WHERE id=$id";
    return pdo_query_one($sql);
}

function get_hinhanh1($id)
{
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query_one($sql);
}

function get_hinhanh2($id)
{
    $sql = "SELECT * FROM hinhanh WHERE idsp=$id";
    return pdo_query($sql);
}

// function get_sanpham1_hinhanh($id, $limit)
// {
//     $sql = "SELECT * FROM sanpham sp INNER JOIN hinhanh ha 
//     ON sp.id=ha.idsp WHERE sp.iddm=$id ORDER BY sp.id DESC limit $limit";
//     return pdo_query($sql);
// }

function update_slkho($id, $slkhonew)
{
    $sql = "UPDATE sanpham SET soluongkho='$slkhonew' WHERE id=$id";
    return pdo_execute($sql);
}


