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
                    <a href="?mod=category&act=edit&id=<?=$id?>" class="btn btn-info">Sửa</a>
                    <a href="?mod=category&act=del&id=<?=$id?>" class="btn btn-info">Xóa</a>
                </td>
            </tr>
        </tbody>

        <?php endforeach; ?>
    </table>
    
</main>