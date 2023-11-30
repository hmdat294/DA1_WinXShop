<style>
    
    .container>main>.bton>a {
        padding: 10px 20px;
        width: 200px;
        display: inline-block;
        font-weight: bold;
        border-radius: 5px;
        color: white;
        background-color: #e95221;
        margin: 10px 20px;
        text-decoration: none;
    }

    .container>main>.bton>a:hover {
        background-color: #ff4000;
    }

    @media only screen and (max-width: 768px) {
        .container>main>h2 {
            font-size: 1.5em;
        }

        .container>main>.text-dhtt {
            font-size: 0.9em;
        }
    }

    @media only screen and (max-width: 576px) {
        .container>main>h2 {
            font-size: 1.3em;
        }
    }
</style>

<main class="container text-center" style="margin-top: 100px;">

    <h2>ĐẶT HÀNG THÀNH CÔNG</h2>

    <div class="text-dhtt" style="color: gray; margin-bottom: 30px;">
        Cảm ơn khách hàng đã tin tưởng và ủng hộ cửa hàng. Cửa hàng xin tặng<br>
        1 mã giảm giá 5% cho đơn hàng tiếp theo (Áp dụng cho hoá đơn trên 100k).<br>
        Mã giảm giá: TTKPTD (mã giảm giá sẽ được kích hoạt khi đơn hàng này được giao thành công).
    </div>

    <div class="bton">
        <a href="index.php">Tiếp tục mua sắm</a>
        <a href="?mod=cart&act=donhang">Xem đơn hàng</a>
    </div>

</main>