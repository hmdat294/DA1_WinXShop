<?php extract($product_edit) ?>

<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Sửa Sản Phẩm</h3>
    </div>
    <hr>
    <div class="form-parent">
        <h4 class="text-center">Sửa Sản Phẩm</h4>
        <hr>

        <form method="post" action="" enctype="multipart/form-data">
            <label for="">Nhập Tên Sản Phẩm: </label>
            <input name="tensp_edit" class="form-control form-text" type="text" required value="<?= $tensp ?>">

            <div class="img-product-edit">

                <?php
                $stt = 0;
                foreach ($product_img as $item) : extract($item);
                    $stt++;
                ?>

                    <label class="border rounded p-2">
                        <img src="../content/layout/images/images_product/<?= $hinhanh ?>" alt="">

                        <span class="form-control btn btn-outline-success" style="font-size: 0.9em;">
                            Tải Ảnh Lên
                        </span>

                        <input name="hinhanh_edit_old<?= $stt ?>" type="hidden" value="<?= $hinhanh ?>">
                        <input name="hinhanh_edit<?= $stt ?>" class="d-none" type="file">
                    </label>

                <?php endforeach; ?>

            </div>

            <label>Giá Gốc:</label>
            <input name="giagoc_edit" class="form-control" type="text" value="<?= $giagoc ?>" required>

            <label>Giá Sale:</label>
            <input name="giasale_edit" class="form-control" type="text" value="<?= $giasale ?>" required>

            <label>Mô tả:</label>
            <input name="mota_edit" class="form-control" type="text" value="<?= $mota ?>" required>

            <label>Số lượng:</label>
            <input name="soluong_edit" class="form-control" type="text" value="<?= $soluongkho ?>" required>

            <label>Chọn Danh Mục:</label>
            <select class="form-select" name="iddm_edit">
                <option value="<?= $tendanhmuc['id'] ?>"><?= $tendanhmuc['tendm'] ?></option>
                <?php
                foreach ($dm_product_edit as $item) {
                    extract($item);
                    echo ' <option value="' . $id . '">' . $tendm . '</option> ';
                }
                ?>
            </select>

            <hr>
            <div class="text-center">
                <button name="but_edit_sp" class="btn btn-danger text-white">Cập Nhật Sản Phẩm</button>
            </div>
        </form>
    </div>

</main>