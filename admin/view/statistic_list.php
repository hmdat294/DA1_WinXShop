<style>
    hr{
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

    <div style="margin: 10px 35px;">
        <h3>Thống Kê</h3>
    </div>

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
            <h2 class="m-3 text-white"><?= sl_donhang_dagiao()['sl_donhang_dagiao'] ?></h2>
            <h5 class="m-2 text-white">Đơn Hàng Đã Giao (Tổng doanh thu: <?= doitien(sl_donhang_dagiao()['tongtien']) ?>đ)</h5>
            <a class="btn btn-light form-control my-3" href="?mod=order&act=done&done=dagiao">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
            <div></div>
        </div>
        <div class="col-lg m-2 border bg-secondary rounded">
            <h2 class="m-3 text-white"><?= sl_donhang_dahuy()['sl_donhang_dahuy'] ?></h2>
            <h5 class="m-2 text-white">Đơn Hàng Đã Hủy</h5>
            <a class="btn btn-light form-control my-3" href="?mod=order&act=done&done=dahuy">Xem Chi Tiết <i class="fa-solid fa-circle-arrow-right"></i></a>
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
        // Set Data 2
        const data1 = google.visualization.arrayToDataTable([
            ['Trạng Thái', 'Số Lượng'],
            <?php foreach (trangthaidonhang() as $data) {
                extract($data);
                echo "['$trangthai', $soluong],";
            } ?>
        ]);
        // Set Data 2
        const data2 = google.visualization.arrayToDataTable([
            ['Thống Kê', 'Số Lượng'],
            <?php foreach (donhangdaban() as $data) {
                extract($data);
                echo "['$ngaydat', $soluongoder],";
            } ?>
        ]);
        // Set Data 3
        const data3 = google.visualization.arrayToDataTable([
            ['Thống Kê', 'Số Lượng'],
            <?php foreach (sanphamdaban() as $data) {
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