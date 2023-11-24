<?php

include_once "../model_DAO/pdo.php";

function account (){
    $sql = "SELECT * FROM user ORDER BY id ASC";
    return pdo_query($sql);
}
function get_nguoidung ($id){
    $sql = "SELECT * FROM user WHERE id=$id";
    return pdo_query_one($sql);
}
function update_account ($id, $vaitro){
    $sql = "UPDATE user SET vaitro=? WHERE id=?";
    return pdo_execute($sql,$vaitro,$id);
}
?>