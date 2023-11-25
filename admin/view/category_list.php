<main>
    <div style="margin: 10px 35px;">
        <h3 class="">Danh Mục</h3>
    </div>
    <hr>
    <a href="?mod=category&act=add" class="btn btn-danger text-white" style="margin: 10px 0;">Thêm Danh Mục</a>
    <table class="table text-center table-bordered border rounded-3">
        <thead class="table-danger border-1 rounded-3">
            <tr>
                <th>STT</th>
                <th>TÊN DANH MỤC</th>
                <th style="width: 200px;">THAO TÁC</th>
            </tr>
        </thead>
        <?php
        $stt = 0;
        foreach (category()  as $item) : extract($item);
            $stt++;
        ?>

            <tbody>
                <tr>
                    <td><?= $stt ?></td>
                    <td><?= $tendm ?></td>
                    <td>
                        <a href="?mod=category&act=edit&id=<?= $id ?>" class="btn btn-info">Sửa</a>

                        <a onclick="xoadm(<?= $id ?>)" class="btn btn-info">Xóa</a>

                        <div class="check-xoadm" id="checkxoa<?= $id ?>">

                            <div class="text-center">

                                <?php if (check_product($id)) : ?>

                                    <h4>Xin lỗi bạn không thể xóa danh mục "<?= $tendm ?>"!</h4>
                                    <img src="../content/layout/images/icon-sorry.png" alt="">

                                    <div>
                                        <a onclick="qlxoadm(<?= $id ?>)" class="btn">Quay lại</a>
                                    </div>

                                <?php else : ?>

                                    <h4>Bạn có chắc là muốn xóa danh mục "<?= $tendm ?>" không?</h4>
                                    <img src="../content/layout/images/icon-question.png" alt="">

                                    <div>
                                        <a onclick="qlxoadm(<?= $id ?>)" class="btn">Quay lại</a>
                                        <a class="btn" href="?mod=category&act=del&id=<?= $id ?>">Xóa danh mục</a>
                                    </div>

                                <?php endif; ?>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>

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