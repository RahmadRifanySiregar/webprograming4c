<?php
include_once "DB.php";
$nim=$_POST['nim'];
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$agama=$_POST['agama'];
$email=$_POST['email'];
$password=$_POST['password'];
$create_at="current_timestamp()";
$update_at="current_timestamp()";
//buat SQL
$sql="INSERT INTO mahasiswa
VALUES ('$nim','$nama','$jenis_kelamin','$alamat','$agama','$email','$password',$create_at,$update_at)";
//proses ke database
$simpan=mysqli_query($koneksi,$sql)or die("Error, $sql");
if($simpan){
echo "Sukses";
header("location:read.php");
}else{
echo "Gagal";
}
?>