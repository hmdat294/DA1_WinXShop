
<main>
    <div style="margin: 10px 35px;">
        <h3 class=""><?=$title?></h3>
    </div>
    <hr>
    <table class="table text-center table-bordered border" style="font-size: 0.8em;">
        <thead class="table-danger border-2">
            <tr>
                <th>MÃ ĐƠN</th>
                <th>TÊN KHÁCH HÀNG</th>
                <th>SDT</th>
                <th>EMAIL</th>
                <th>TỔNG TIỀN</th>
                <th>THỜI GIAN ĐẶT HÀNG</th>
                <th>TRẠNG THÁI</th>
                <th>GHI CHÚ</th>
                <th>ĐỊA CHỈ</th>
                <th>PHƯƠNG THỨC</th>

                <th style="width: 150px;">CHỨC NĂNG</th>
            </tr>
        </thead>
        <?php
        foreach ($donhang_done as $item) : extract($item);

        ?>
            <tr>
                <td>WX<?= $id ?></td>
                <td><?= $tenkh ?></td>
                <td><?= $sdt ?></td>
                <td><?= $email ?></td>
                <td><?= doitien($tongtien) ?></td>
                <td><?= date("d/m/Y", strtotime($ngaydat)) ?></td>
                <td><?= $trangthai ?></td>
                <td><?= $ghichu ?></td>
                <td><?= $diachi ?></td>
                <td><?= $phuongthuc ?></td>
                <td>
                    <?php if (($trangthai == 'Đã giao') ||
                        ($trangthai == 'Đã hủy') ||
                        ($trangthai == 'Khách hàng không nhận hàng')
                    ) : ?>
                        <a class="btn btn-secondary" style="font-size: 0.9em;">Không thể cập nhật</a>
                    <?php else : ?>
                        <a href="?mod=order&act=edit&id=<?= $id ?>" class="btn btn-info">Cập nhật</a>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
</main>