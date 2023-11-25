<?php

include_once 'pdo.php';


function add_like($idkh, $idsp)
{
    $sql = "INSERT INTO yeuthich(idkh, idsp) 
            VALUES ('$idkh','$idsp')";
    return pdo_execute($sql);
}

function delete_like($id, $idkh)
{
    $sql = "DELETE FROM yeuthich WHERE idsp=$id AND idkh=$idkh";
    return pdo_execute($sql);
}

function get_like_one($id, $idkh)
{
    $sql = "SELECT * FROM yeuthich WHERE idsp=$id AND idkh=$idkh";
    return pdo_query_one($sql);
}

function get_like_product()
{
    $sql = "SELECT yt.idkh,sp.id,sp.tensp,sp.giagoc,sp.giasale,
    sp.soluongkho,sp.luotxem,sp.iddm,sp.mota,sp.id AS idsanpham
    FROM yeuthich yt INNER JOIN sanpham sp
    ON yt.idsp=sp.id ORDER BY yt.id DESC";
    return pdo_query($sql);
}