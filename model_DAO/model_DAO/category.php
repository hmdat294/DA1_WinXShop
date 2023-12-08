<?php

include_once 'pdo.php';

function get_danhmuc1($limit)
{
    $sql = "SELECT * FROM danhmuc ORDER BY id ASC limit $limit,5";
    return pdo_query($sql);
}

function get_danhmuc_one($iddm)
{
    $sql = "SELECT * FROM danhmuc WHERE id=$iddm";
    return pdo_query_one($sql);
}