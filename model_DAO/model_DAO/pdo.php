<?php


function pdo_get_connection()
{
    $dburl = "mysql:host=localhost;dbname=winx;charset=utf8";
    $username = 'winx';
    $password = 'winxsportshop';

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

        if (isset($_SESSION['accountwinx']) && ($_SESSION['accountwinx']) != '') {
            $id_nglike = $_SESSION['accountwinx']['id'];
            $linkyeuthich = '?mod=page&act=like&idsp_like=' . $id . '&idkhachhang=' . $id_nglike;
        } else {
            $id_nglike = 0;
            $linkyeuthich = '?mod=page&act=dangnhap';
        }

        $checklike = get_like_one($id, $id_nglike);
        if ($checklike) $icon_heart = '<i class="fa-solid fa-heart" style="color: red;"></i>';
        else $icon_heart = '<i class="fa-regular fa-heart"></i>';

        $linkchitiet = '?mod=page&act=chitiet&iddm=' . $iddm . '&id=' . $id;

        if (isset($_SESSION['cartwinx'])) {
            foreach ($_SESSION['cartwinx'] as $item) {
                if ($item['id'] == $idsanpham) $slgiohang = $item['soluong'];
            }
        }
        if (!isset($slgiohang)) $slgiohang = 0;
        
        if (($slgiohang < $soluongkho - 1) && ($soluongkho > 1))
            $linkdathang = '<a href="?mod=cart&act=giohang&idsanpham=' . $id . '"><i class="fa-solid fa-cart-shopping"></i></a>';
        else
            $linkdathang = '<a href="#"><i class="fa-solid fa-cart-shopping"></i></a>';
        
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
                ' . $linkdathang . '
                <a href="' . $linkchitiet . '"><i class="fa-solid fa-ellipsis"></i></a>
                <a href="' . $linkyeuthich . '">' . $icon_heart . '</a>
            </div>
         </div>        
    ';
    }
    return $showsp;
}
