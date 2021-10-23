<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaksi Toko Sepatu</title>
</head>
<body>
    <center>
        <form action="<?php echo base_url('tokosepatu/cetak');?>" method="POST">
        <table bgcolor="pink">
            <tr>
                <th colspan="3">
                        <br>Form Input Transaksi Toko Sepatu</br> 
                </th>
            </tr>
            <tr>
                <td colspan="3">
                    <hr>
                </td>
            </tr>
            <tr>
                <th>Nama Pembeli</th>
                <th>:</th>
                <td>
                    <input type="text" name="nama" id="nama">
                    <?=form_error ('nama', '<br> <span style="color :red;" >Terjadi Error</span>'); ?>
                </td>
            </tr>
            <tr>
                <th>No HP</th>
                <td>:</td>
                <td>
                    <input type="text" name="nohp" id="nohp">
                    <?=form_error ('nohp', '<br> <span style="color :red;" >Terjadi Error</span>'); ?>
                </td>
            </tr>
            <tr>
            <th>Merek Sepatu</th>
                <td>:</td>
                <td>
                   <select name="merk" id="merek">
                   <option value="">Pilih</option>
                   <option value="Nike">NIKE</option>
                   <option value="Adidas">ADIDAS</option>
                   <option value="Kickers">KICKERS</option>
                   <option value="Eiger">EIGER</option>
                   <option value="Bucherri">BUCHERRI</option>
                   </select>
                   <?=form_error ('merk', '<br> <span style="color :red;" >Terjadi Error</span>'); ?>
                </td>
            </tr>

            <tr>
                <th>Ukuran Sepatu</th>
                <td>:</td>
                <td>
                    <select name="ukuran" id="ukuran">
                        <option>Pilih Ukuran...</option>
                        <?php for($i = 32; $i <= 44; $i++) : ?>
                            <option value="<?= $i ?>"><?= $i; ?></option>
                            <?php endfor; ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <hr>
                    <button class="btn btn-outnlien-primary btn-sm">Submit</button>
                </td>
            </tr>
        </table>
    </center>
</body>
</html>