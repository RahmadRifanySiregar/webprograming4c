<?php
include_once "DB.php";
$nim=$_POST['nim'];
$nama=$_POST['nama'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$agama=$_POST['agama'];
$email=$_POST['email'];
$password=$_POST['password'];
$create_at="current_timestamp()";
$update_at="current_timestamp()";

$sql="UPDATE mahasiswa SET nim='$nim', nama='$nama', alamat='$alamat', jenis_kelamin='$jenis_kelamin',
agama='$agama', email='$email', password='$password' WHERE nim='$nim'";

$update=mysqli_query($koneksi,$sql)or die("Error, $sql");
if($update){
echo "Sukses";
header("location:read.php");
}else{
echo "Gagal";
}