<?php

include_once 'pdo.php';


function add_comment($idkh, $idsp, $noidung)
{
    $sql = "INSERT INTO binhluan(idkh,idsp,noidung) VALUES ('$idkh','$idsp','$noidung')";
    return pdo_execute($sql);
}


function edit_comment($id,$noidung) 
{
    $sql = "UPDATE binhluan SET noidung=? WHERE id=?";
    return pdo_execute($sql, $noidung, $id);
}

function delete_comment($id)
{
    $sql = "DELETE FROM binhluan WHERE id=?";
    return pdo_execute($sql, $id);
}




function get_comment_user($id)
{
    $sql = "SELECT *, bl.id AS idbl FROM binhluan bl INNER JOIN user us
    ON bl.idkh=us.id WHERE bl.idsp=$id ORDER BY bl.id DESC";
    return pdo_query($sql);
}