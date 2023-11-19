<?php

include_once 'pdo.php';

function get_user_test()
{
    $sql = "SELECT * FROM user WHERE id=1";
    return pdo_query_one($sql);
}

function getuser($email, $matkhau)
{
    $sql = "SELECT * FROM user WHERE email='" . $email . "' AND matkhau='" . $matkhau . "'";
    return pdo_query_one($sql);
}

function gettaikhoan($email)
{
    $sql = "SELECT * FROM user WHERE email='" . $email . "'";
    return pdo_query_one($sql);
}

function adduser($tenkh, $email, $matkhau, $sdt, $ngaysinh, $gioitinh)
{
    $sql = "INSERT INTO user(tenkh, email, matkhau, sdt, ngaysinh, gioitinh) 
            VALUES ('$tenkh','$email','$matkhau','$sdt','$ngaysinh','$gioitinh')";
    return pdo_execute($sql);
}

function account_edit($id, $tenkh, $email, $sdt, $ngaysinh, $gioitinh)
{
    $sql = "UPDATE user SET tenkh=?, email=?, sdt=?, ngaysinh=?, gioitinh=? WHERE id=?";
    return pdo_execute($sql, $tenkh, $email, $sdt, $ngaysinh, $gioitinh, $id);
}

