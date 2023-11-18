<?php

include_once 'pdo.php';

function get_giohang()
{
    $sql = "SELECT * FROM sanpham sp INNER JOIN giohang gh 
    ON sp.id=gh.idsp ORDER BY gh.id DESC";
    return pdo_query($sql);
}

function get_idgiohang($id)
{
    $sql = "SELECT * FROM giohang WHERE idsp=$id";
    return pdo_query_one($sql);
}

function update_slsp($id, $slnew)
{
    $sql = "UPDATE giohang SET soluong='$slnew' WHERE idsp=$id";
    return pdo_execute($sql);
}

function add_cart($idsp, $soluong)
{
    $sql = "INSERT INTO giohang(idsp,soluong) 
    VALUES ('$idsp','$soluong')";
    return pdo_execute($sql);
}

function delete_cart($id)
{
    $sql = "DELETE FROM giohang WHERE id=$id";
    return pdo_execute($sql);
}

function get_slgiohang($id)
{
    $sql = "SELECT * FROM giohang WHERE id=$id";
    return pdo_query_one($sql);
}

function update_slgh($id, $slnew)
{
    $sql = "UPDATE giohang SET soluong='$slnew' WHERE id=$id";
    return pdo_execute($sql);
}



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

function delete_all_cart()
{
    $sql = "DELETE FROM giohang";
    return pdo_execute($sql);
}


function get_chitietdonhang_sp($id)
{
    $sql = "SELECT * FROM chitietdonhang ctdh INNER JOIN sanpham sp
    ON ctdh.idsp=sp.id WHERE ctdh.iddh=$id ORDER BY ctdh.iddh DESC";
    return pdo_query($sql);
}


function get_donhang_user_one($id)
{
    $sql = "SELECT * FROM donhang WHERE id=$id";
    return pdo_query_one($sql);
}



function get_slsp_giohang(){
    $sql = "SELECT SUM(soluong) as slsp FROM giohang";
    return pdo_query_one($sql);
}