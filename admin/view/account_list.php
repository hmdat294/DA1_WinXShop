<main>

    <div style="margin: 10px 35px;">
        <h3 class="">Tài Khoản Người Dùng</h3>
    </div>
    <hr>
    <table class="table text-center table-bordered border" style="font-size: 0.8em;">
        <thead class="table-danger border-2">
            <tr>
                <th>STT</th>
                <th>TÊN KHÁCH HÀNG</th>
                <th>EMAIL</th>
                <th>MẬT KHẨU</th>
                <th>SỐ ĐIỆN THOẠI</th>
                <th>NGÀY SINH</th>
                <th>GIỚI TÍNH</th>
                <th>VAI TRÒ</th>
                <th style="width: 150px;">CHỨC NĂNG</th>
            </tr>
        </thead>
        <?php
        $stt = 0;
        foreach (account()  as $item) : extract($item);
            $stt++;
            if ($vaitro == 1) $tenvaitro = 'Quản Trị';
            else $tenvaitro = 'Khách Hàng';
        ?>
            <tr>
                <td><?= $stt ?></td>
                <td><?= $tenkh ?></td>
                <td><?= $email ?></td>
                <td><?= $matkhau ?></td>
                <td><?= $sdt ?></td>
                <td><?= $ngaysinh ?></td>
                <td><?= $gioitinh ?></td>
                <td><?= $tenvaitro ?></td>
                <td>
                    <a href="?mod=account&act=edit&id=<?= $id ?>" class="btn btn-info">Sửa</a>
                </td>
            </tr>

        <?php endforeach; ?>
    </table>
</main>