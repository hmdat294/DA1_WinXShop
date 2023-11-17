<?php

include_once 'pdo.php';

function get_donhang1()
{
    $sql = "SELECT * FROM donhang ORDER BY id ASC";
    return pdo_query($sql);
}