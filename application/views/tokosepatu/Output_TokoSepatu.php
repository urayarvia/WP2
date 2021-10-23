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
        <table bgcolor="pink">
            <tr>
                <th colspan="3">
                        Form Output Transaksi Toko Sepatu
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
                    <?= $nama; ?>
                </td>
            </tr>
            <tr>
                <th>No HP</th>
                <td>:</td>
                <td>
                    <?=$nohp; ?>
                </td>
            </tr>
            <tr>
            <th>Merek Sepatu</th>
                <td>:</td>
                <td>
                   <?= $merk; ?>
                </td>
            </tr>

            <tr>
                <th>Ukuran Sepatu</th>
                <td>:</td>
                <td>
                  <?= $ukuran; ?>
                </td>
            </tr>

            <tr>
                <th>Harga</th>
                <td>:</td>
                <td>
                  <?= $harga; ?>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                   <a href="<?= base_url('TokoSepatu');?>">Kembali</a>
            </tr>
        </table>
    </center>
</body>
</html>