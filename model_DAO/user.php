<?php

include_once 'pdo.php';

function get_user_test()
{
    $sql = "SELECT * FROM user WHERE id=1";
    return pdo_query_one($sql);
}