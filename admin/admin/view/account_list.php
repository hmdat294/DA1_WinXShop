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
                <td id="passwordDisplay<?= $stt ?>"></td>
                <td id="sdtDisplay<?= $stt ?>"></td>
                <td><?= date("d / m / Y", strtotime($ngaysinh)) ?></td>
                <td><?= $gioitinh ?></td>
                <td><?= $tenvaitro ?></td>
                <td>
                    <a href="?mod=account&act=edit&id=<?= $id ?>" class="btn btn-info">Sửa</a>
                </td>
            </tr>

            <script>
                var valueMK = "<?= $matkhau ?>";
                var maskedMK = "*".repeat(valueMK.length);
                document.getElementById("passwordDisplay<?= $stt ?>").innerHTML = maskedMK;

                var valueSDT = "<?= $sdt ?>";
                var length = valueSDT.length;
                var maskedSDT = "*".repeat(length - 3);
                maskedSDT += valueSDT.slice(-3);
                document.getElementById("sdtDisplay<?= $stt ?>").innerHTML = maskedSDT;
            </script>

        <?php endforeach; ?>
    </table>
</main>