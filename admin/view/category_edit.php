<?php extract(get_id_danhmuc($id))?>

<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Sửa Danh Mục</h3>
    </div>
    <hr>
    <div class="form-parent">
        <h4 class="text-center">Sửa Danh Mục</h4>
        <hr>

        <form method="POST" enctype="multipart/form-data" action="">
            <label for="">Nhập Tên Danh Mục: </label>
            <input name="id" type="hidden" value="<?=$id?>" >
            <input name="editdanhmuc" class="form-control form-text" type="text" value="<?=$tendm?>">
            <hr>
            <div class="text-center">
                <button name="edit_category_submit" class="btn btn-danger text-white">Cập Nhật Danh Mục</button>
            </div>
        </form>
    </div>
</main>