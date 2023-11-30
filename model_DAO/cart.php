<?php

include_once 'pdo.php';


function add_donhang($idkh, $tongtien, $tenkh, $sdt, $email, $ghichu, $diachi, $phuongthuc)
{
    $sql = "INSERT INTO donhang(idkh, tongtien, tenkh, sdt, email, ghichu, diachi, phuongthuc) 
    VALUES ('$idkh', '$tongtien', '$tenkh', '$sdt', '$email', '$ghichu', '$diachi', '$phuongthuc')";
    return pdo_execute($sql);
}

function get_last_donhang()
{
    $sql = "SELECT * FROM donhang ORDER BY id DESC LIMIT 1";
    return pdo_query_one($sql);
}

function add_chitietdonhang($iddh, $idsp, $soluong, $giasale)
{
    $sql = "INSERT INTO chitietdonhang(iddh,idsp,soluong,giasale) 
    VALUES ('$iddh','$idsp','$soluong','$giasale')";
    return pdo_execute($sql);
}


function get_chitietdonhang_sp($id)
{
    $sql = "SELECT *, sp.id AS idsanpham FROM chitietdonhang ctdh INNER JOIN sanpham sp
    ON ctdh.idsp=sp.id WHERE ctdh.iddh=$id ORDER BY ctdh.iddh DESC";
    return pdo_query($sql);
}


function get_donhang_user_one($id)
{
    $sql = "SELECT * FROM donhang WHERE id=$id";
    return pdo_query_one($sql);
}


