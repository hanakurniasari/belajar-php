<?php

// echo "<h2>Pengulangan</h2>";

/*
$nama = "Hana Kurniasari";
$usia = 22;

echo "Nama saya $nama <br>";

for($i = 0; $i < 8; $i++){
    echo "Nama saya $nama <br>";
}


for($i = 1; $i < 11; $i++){
    echo "Angka ke-$i <br>";
}
*/

/*
$usiasaya = 22;

while($usiasaya < 27){
    echo "<p>Usia saya dalam 5 tahun kedepan. $usiasaya</p>";
    $usiasaya++;
}
*/

/*
$usiakebelakang = 22;

do {
    echo "Usia saya dalam 5 tahun kebelakang $usiakebelakang <br>";
    $usiakebelakang--;
} while ($usiakebelakang > 17);
*/

/*
$Smartphone = [
    "Iphone",
    "Samsung",
    "Nothing Phone",
    "Huawei"
];
*/

/*
echo "<p><strong>Brand Smartphone</p></strong>";
foreach($Smartphone as $merk){
    echo "<li>$merk</li>";
}
*/

// echo "<h2>Percabangan</h2>";

/*
$total_nilai = 89;

if($total_nilai > 85){
    echo "Lulus Ujian!!! <br>";
}
*/

/*
$nilai = 89; 
if($nilai>80)
{
    echo "Nilai: A <br>";
}
else
{
    echo "Nilai: bukan A <br>";
}
*/

/*
$role = 2;
switch($role)
{
    case 1:
        echo "Peminatan Ekonomi";
        break;
    case 2:
        echo "Peminatan Geografi";
        break;
    default:
        echo "Peminatan Sejarah";
}
*/


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Input Nama dan Yang Akan Diulang!</h1>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <label>Nama</label>
        <input type="text" name="nama">
        <label>Jumlah</label>
        <input type="text" name="no">
        <input type="submit" name="submit" value="Submit">
    </form>
    <?php
        if(!empty($_POST['submit'])) {

            switch($_POST['nama']) {
                case "Putu":
                    $pesan = $_POST['nama']." adalah orang Bali";
                break;
                case "Hana":
                    $pesan = $_POST['nama']." berasal dari pulau Jawa";
                break;
                default:
                    $pesan = $_POST['nama']." bukan orang Bali atau Jawa";
            
            }

            for ($i=0;$i<$_POST['no'];$i++) {
                echo $pesan."<br>";
            }

        } else {
            echo "Anda belum input nama dan jumlah.";
        }
    ?>
</body>
</html>