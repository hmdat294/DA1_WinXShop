<style>
    hr {
        margin: 20px 0;
        width: calc(100% - 25px);
    }
</style>

<main class="px-5">
    <h3 class="text-center">Thống kê số lượng</h3>
    <div class="row tksl">
        <div class="col-lg m-2 border bg-danger rounded">
            <h2 class="m-3 text-white"><?= count_product()['soluong'] ?></h2>
            <h5 class="m-2 text-white">Sản Phẩm</h5>
            <a class="btn btn-light form-control my-3" href="?mod=product&act=list">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <div></div>
        </div>
        <div class="col-lg m-2 border bg-success rounded">
            <h2 class="m-3 text-white"><?= count_category()['soluong'] ?></h2>
            <h5 class="m-2 text-white">Danh Mục</h5>
            <a class="btn btn-light form-control my-3" href="?mod=category&act=list">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <div></div>
        </div>
        <div class="col-lg m-2 border bg-primary rounded">
            <h2 class="m-3 text-white"><?= count_order()['soluong'] ?></h2>
            <h5 class="m-2 text-white">Đơn Hàng</h5>
            <a class="btn btn-light form-control my-3" href="?mod=order&act=list">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <div></div>
        </div>
        <div class="col-lg m-2 border bg-warning rounded">
            <h2 class="m-3 text-white"><?= count_account()['soluong'] ?></h2>
            <h5 class="m-2 text-white">Người Dùng</h5>
            <a class="btn btn-light form-control my-3" href="?mod=account&act=list">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <div></div>
        </div>
    </div>

    <hr>

    <div style="margin: 10px 35px; display: grid; grid-template-columns: 1fr 1fr;">
        <h3>Thống Kê</h3>

        <select class="form-select" name="" id="myThongke">
            <?php if (isset($day)) : ?>
                <option value="?mod=statistic&act=list&day=<?= $day ?>"><?= $day ?> ngày trước</option>
            <?php endif; ?>
            <option value="?mod=statistic&act=list">Tất cả</option>
            <option value="?mod=statistic&act=list&day=3">3 ngày trước</option>
            <option value="?mod=statistic&act=list&day=7">7 ngày trước</option>
            <option value="?mod=statistic&act=list&day=10">10 ngày trước</option>
            <option value="?mod=statistic&act=list&day=15">15 ngày trước</option>
            <option value="?mod=statistic&act=list&day=30">30 ngày trước</option>
            <option value="?mod=statistic&act=list&day=60">60 ngày trước</option>
            <option value="?mod=statistic&act=list&day=90">90 ngày trước</option>
        </select>
    </div>

    <script>
        var selectElement = document.getElementById("myThongke");
        selectElement.onchange = () => {
            var selectedValue = selectElement.value;
            window.location.href = selectedValue;
        }
    </script>

    <hr>

    <div class="row">
        <div class="col-sm m-1 border">
            <div id="myChartpie" style="height:300px;"></div>
        </div>
        <div class="col-sm m-1  border">
            <div id="myPlot" style="height:300px; "></div>
        </div>
        <div class="col-sm m-1  border">
            <div id="myChartbar" style="height:300px;"></div>
        </div>
    </div>

    <hr>

    <div class="row tksl">
        <div class="col-lg m-2 border bg-success rounded">
            <h2 class="m-3 text-white"><?= $sl_donhang_dagiao['sl_donhang_dagiao'] ?></h2>
            <h5 class="m-2 text-white">Đơn Hàng Đã Giao (Tổng doanh thu: <?= doitien($sl_donhang_dagiao['tongtien']) ?>đ)</h5>
            <?php if (isset($day)) : ?>
                <a class="btn btn-light form-control my-3" href="?mod=statistic&act=done&done=dagiao&day=<?= $day ?>">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <?php else : ?>
                <a class="btn btn-light form-control my-3" href="?mod=statistic&act=done&done=dagiao">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <?php endif; ?>
            <div></div>
        </div>
        <div class="col-lg m-2 border bg-secondary rounded">
            <h2 class="m-3 text-white"><?= $sl_donhang_dahuy['sl_donhang_dahuy'] ?></h2>
            <h5 class="m-2 text-white">Đơn Hàng Đã Hủy</h5>
            <?php if (isset($day)) : ?>
                <a class="btn btn-light form-control my-3" href="?mod=statistic&act=done&done=dahuy&day=<?= $day ?>">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <?php else : ?>
                <a class="btn btn-light form-control my-3" href="?mod=statistic&act=done&done=dahuy">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <?php endif; ?>
            <div></div>
        </div>
    </div>

</main>
<script>
    google.charts.load('current', {
        'packages': ['corechart']
    });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        // Set Data 1
        const data1 = google.visualization.arrayToDataTable([
            ['Trạng Thái', 'Số Lượng'],
            <?php foreach ($trangthaidonhang as $data) {
                extract($data);
                echo "['$trangthai', $soluong],";
            } ?>
        ]);
        // Set Data 2
        const data2 = google.visualization.arrayToDataTable([
            ['Thống Kê', 'Số Lượng'],
            <?php foreach ($donhangdaban as $data) {
                extract($data);
                echo "['$ngaydat', $soluongoder],";
            } ?>
        ]);
        // Set Data 3
        const data3 = google.visualization.arrayToDataTable([
            ['Thống Kê', 'Số Lượng'],
            <?php foreach ($sanphamdaban as $data) {
                extract($data);
                echo "['$ngaydat', $sanphamdaban],";
            } ?>
        ]);

        const chart1 = new google.visualization.PieChart(document.getElementById('myChartpie'));
        chart1.draw(data1, {
            title: 'Thống Kê Trạng Thái Đơn Hàng'
        });
        const chart2 = new google.visualization.ColumnChart(document.getElementById('myPlot'));
        chart2.draw(data2, {
            title: 'Thống Kê Số Lượng Đơn Hàng Đã Bán'
        });
        const chart3 = new google.visualization.BarChart(document.getElementById('myChartbar'));
        chart3.draw(data3, {
            title: 'Thống Kê Số Lượng Sản Phẩm Đã Bán'
        });

    }
</script>