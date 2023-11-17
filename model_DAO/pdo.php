<?php


function pdo_get_connection()
{
    $dburl = "mysql:host=localhost;dbname=winx;charset=utf8";
    $username = 'root';
    $password = '';

    $conn = new PDO($dburl, $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $conn;
}

function pdo_execute($sql) //thêm, sửa, xóa 
{
    $sql_args = array_slice(func_get_args(), 1);
    try {
        $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute($sql_args);
    } catch (PDOException $e) {
        throw $e;
    } finally {
        unset($conn);
    }
}

function pdo_query($sql) //truy xuất
{
    $sql_args = array_slice(func_get_args(), 1);
    try {
        $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute($sql_args);
        $rows = $stmt->fetchAll();
        return $rows;
    } catch (PDOException $e) {
        throw $e;
    } finally {
        unset($conn);
    }
}

function pdo_query_one($sql) //truy xuất
{
    $sql_args = array_slice(func_get_args(), 1);
    try {
        $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute($sql_args);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row;
    } catch (PDOException $e) {
        throw $e;
    } finally {
        unset($conn);
    }
}

function pdo_query_value($sql) //truy xuất
{
    $sql_args = array_slice(func_get_args(), 1);
    try {
        $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute($sql_args);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return array_values($row)[0];
    } catch (PDOException $e) {
        throw $e;
    } finally {
        unset($conn);
    }
}



function doitien($number)
{
    if (!empty($number)) return number_format($number, 0, ',', '.');
}


function showSP($sanpham)
{
    $showsp = '';
    foreach ($sanpham as $item) {
        extract($item);

        $linkchitiet = '?mod=page&act=chitiet&iddm=' . $iddm . '&id=' . $id;
        $linkdathang = '?mod=cart&act=giohang&idsanpham=' . $id;
<<<<<<< HEAD

=======
>>>>>>> main
        $showsp .= '
        <div class="box-sp">
            <a href="' . $linkchitiet . '" class="img-sp">
                <img src="../content/layout/images/images_product/' . get_hinhanh1($id)["hinhanh"] . '" alt="">
                <p class="ten-sp">' . $tensp . '</p>
                <div class="gia">
                    <del>' . doitien($giagoc) . 'đ</del>
                    <span>' . doitien($giasale) . 'đ</span>
                </div>
            </a>
            
            <div class="chucnang-sp">
                <a href="' . $linkdathang . '"><i class="fa-solid fa-cart-shopping"></i></a>
                <a href="' . $linkchitiet . '"><i class="fa-solid fa-ellipsis"></i></a>
                <a href="#"><i class="fa-regular fa-heart"></i></a>
            </div>
         </div>        
    ';
    }
    return $showsp;
}
