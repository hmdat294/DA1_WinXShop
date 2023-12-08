<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Thêm Sản Phẩm</h3>
    </div>
    <hr />
    <div class="form-parent">
        <h4 class="text-center">Thêm Sản Phẩm Mới</h4>
        <hr>

        <form method="post" action="" enctype="multipart/form-data">
            <label for="">Nhập Tên Sản Phẩm: </label>
            <input name="tensp_add" class="form-control form-text" type="text" required placeholder="Nhập tên sản phẩm">

            <div class="img-product-edit">

                <?php for ($i = 1; $i <= 4; $i++) : ?>

                    <label class="border rounded p-2">
                        <img src="../content/layout/images/images_product/clothes.png" alt="">

                        <span class="form-control btn btn-outline-success" style="font-size: 0.9em;">
                            Tải Ảnh Lên
                        </span>

                        <?php if ($i == 1) : ?>
                            <input name="hinhanh_add<?= $i ?>" class="d-none" type="file" required>
                        <?php else : ?>
                            <input name="hinhanh_add<?= $i ?>" class="d-none" type="file">
                        <?php endif; ?>
                    </label>

                <?php endfor; ?>
                
            </div>

            <label>Giá Gốc:</label>
            <input name="giagoc_add" class="form-control" type="text" required placeholder="Nhập giá gốc">

            <label>Giá Sale:</label>
            <input name="giasale_add" class="form-control" type="text" required placeholder="Nhập giá sale">

            <label>Mô tả:</label>
            <input name="mota_add" class="form-control " type="text" required placeholder="Nhập mô tả">

            <label>Số lượng:</label>
            <input name="soluong_add" class="form-control " type="number" min="1" required placeholder="Nhập số lượng">

            <label>Chọn Danh Mục:</label>
            <select class="form-select" name="iddm_add">
                <?php
                foreach ($dm_product_edit as $item) {
                    extract($item);
                    echo ' <option value="' . $id . '">' . $tendm . '</option> ';
                }
                ?>
            </select>
            <hr>
            <div class="text-center">
                <button name="but_add_sp" class="btn btn-danger text-white">Thêm Sản Phẩm</button>
            </div>
        </form>
    </div>

</main>