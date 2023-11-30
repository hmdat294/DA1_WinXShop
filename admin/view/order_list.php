<main>
    <div style="margin: 10px 35px; display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 20px;">
        <h3 class="">Đơn Hàng</h3>

        <form class="input-group" method='post' action='?mod=order&act=list' role="search">
            <input type="search" name="search" class="form-control" placeholder="Tìm đơn hàng...">
            <button class="btn btn-outline-secondary z-0" name="submit_search"><i class="fa-solid fa-magnifying-glass"></i></button>
        </form>

        <select class="form-select" name="" id="myOrder">
            <?php if (isset($tthai)) : ?>
                <option value="?mod=order&act=list&tthai=<?= $tthai ?>"><?= $tthai ?></option>
            <?php endif; ?>
            <option value="?mod=order&act=list&tthai=Đang chờ xử lý">Đang chờ xử lý</option>
            <option value="?mod=order&act=list&tthai=Đã duyệt">Đã duyệt</option>
            <option value="?mod=order&act=list&tthai=Đang giao">Đang giao</option>
            <option value="?mod=order&act=list&tthai=Đã giao">Đã giao</option>
            <option value="?mod=order&act=list&tthai=Đã hủy">Đã hủy</option>
            <option value="?mod=order&act=list&tthai=Khách hàng không nhận hàng">Khách hàng không nhận hàng</option>
        </select>
    </div>

    <script>
        var selectElement = document.getElementById("myOrder");
        selectElement.onchange = () => {
            var selectedValue = selectElement.value;
            window.location.href = selectedValue;
        }
    </script>

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
        foreach ($get_donhang as $item) : extract($item);

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