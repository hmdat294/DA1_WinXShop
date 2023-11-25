<main>
    <div style="margin: 10px 35px; display: grid; grid-template-columns: 1fr 2fr;">
        <h3 class="">Sản Phẩm</h3>
        <select class="form-select" name="" id="mySelect">
            <option value="0"><?= $tendanhmuc ?></option>
            <?php
            foreach (category_product() as $item) {
                extract($item);
                echo ' <option value="' . $id . '">' . $tendm . '</option> ';
            }
            ?>
        </select>
    </div>


    <script>
        var selectElement = document.getElementById("mySelect");
        selectElement.onchange = () => {
            switch (selectElement.value) {
                case 0:
                    break;

                    <?php foreach (category_product() as $item) : extract($item); ?>
                    case "<?= $id ?>":
                        window.location.href = "?mod=product&act=list&iddm=<?= $id ?>";
                        break;
                    <?php endforeach; ?>

                default:
                    break;
            }
        }
    </script>
    <hr>
    <a href="?mod=product&act=add" class="btn btn-danger text-white" style="margin: 10px 0;">Thêm Sản Phẩm</a>
    <table class="table text-center table-bordered border rounded-3" style="font-size: 0.8em;">
        <thead class="table-danger border-1 rounded-3">
            <tr>
                <th>STT</th>
                <th style="width: 400px;">TÊN SẢN PHẨM</th>
                <th>HÌNH ẢNH</th>
                <th>GIÁ GỐC</th>
                <th>GIÁ GIẢM</th>
                <th style="width: 200px;">THAO TÁC</th>
            </tr>
        </thead>
        <?php
        $stt = 0;
        foreach ($get_sanpham  as $item) : extract($item);
            $stt++;
        ?>
            <tr>
                <td><?= $stt ?></td>
                <td class="test"><?= $tensp ?></td>
                <td>
                    <img src="../content/layout/images/images_product/<?= get_hinhanhadmin($id)['hinhanh'] ?>" alt="" widtd="72" height="90">
                </td>
                <td><?= doitien($giagoc) ?> đ</td>
                <td><?= doitien($giasale) ?> đ</td>
                <td>
                    <a href="?mod=product&act=edit&id=<?= $id ?>" class="btn btn-info">Sửa</a>

                    <a onclick="xoadm(<?= $id ?>)" class="btn btn-info">Xóa</a>

                    <div class="check-xoadm" id="checkxoa<?= $id ?>">

                        <div class="text-center">

                            <?php if (
                                check_product_binhluan($id) ||
                                check_product_giohang($id) ||
                                check_product_chitietdonhang($id) ||
                                check_product_yeuthich($id)
                            ) : ?>

                                <h4>Xin lỗi bạn không thể xóa sản phẩm <br>"<?= $tensp ?>"!</h4>
                                <img src="../content/layout/images/icon-sorry.png" alt="">

                                <div>
                                    <a onclick="qlxoadm(<?= $id ?>)" class="btn">Quay lại</a>
                                </div>

                            <?php else : ?>

                                <h4>Bạn có chắc là muốn xóa sản phẩm <br>"<?= $tensp ?>" không?</h4>
                                <img src="../content/layout/images/icon-question.png" alt="">

                                <div>
                                    <a onclick="qlxoadm(<?= $id ?>)" class="btn">Quay lại</a>
                                    <a class="btn" href="?mod=product&act=delete&id=<?= $id ?>">Xóa sản phẩm</a>
                                </div>

                            <?php endif; ?>

                        </div>
                    </div>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>

    <script>
        function xoadm(id) {
            var form_xoadm = document.getElementById('checkxoa' + id);
            form_xoadm.style.display = "block";
        }

        function qlxoadm(id) {
            var form_xoadm = document.getElementById('checkxoa' + id);
            form_xoadm.style.display = "none";
        }
    </script>

</main>