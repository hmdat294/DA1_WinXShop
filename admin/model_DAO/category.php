<?php

include_once "../model_DAO/pdo.php";

function category (){
    $sql = "SELECT * FROM danhmuc ORDER BY id DESC";
    return pdo_query($sql);
}
function category_add ($tendanhmuc){
   $sql="INSERT INTO danhmuc (tendm) VALUES (?)";
   return pdo_execute($sql,$tendanhmuc);
}
function category_edit ($id, $editdanhmuc){
    $sql="UPDATE danhmuc SET tendm=? WHERE id=?";
    return pdo_execute($sql,$editdanhmuc, $id);

 }
 function get_id_danhmuc ($id){
    $sql="SELECT * FROM danhmuc WHERE id=$id";
    return pdo_query_one($sql);
    
 }
 function category_delete ($id){
    $sql="DELETE FROM danhmuc WHERE id=$id";
    return pdo_execute($sql);
    
 }
?>