
<?php
include_once "DB.php";
$id=$_GET['nim'];
$sql="SELECT * FROM mahasiswa WHERE nim='$id'";
//proses sql
$query=mysqli_query($koneksi,$sql);
$data=mysqli_fetch_assoc($query);
?>
<h2>Update Data Mahasiswa</h2>
<!-- tag form -->
<form action="edit.php" method="post">
<input type="hidden" name="nim"  value="<?=$data['nim']?>">
<br>
Nama : <br>
<input type="text" name="nama"  value="<?=$data['nama']?>">
<br>
Jenis Kelamin : <br>
<select name="jenis_kelamin">
<option ><?=$data['jenis_kelamin']?></option>
</select>
<br>
Alamat : <br>
<textarea name="alamat" cols="30" rows="10"><?=$data['alamat']?></textarea>
<br>
Agama : <br>
<select name="agama">
<option > <?=$data['agama']?></option>
</select>
<br>
Email : <br>
<input type="text" name="email" value="<?=$data['email']?>" >
<br>
Password: <br>
<input type="password" name="password" value="<?=$data['password']?>" >
<br>
<br>
<button type="submit">Edit Mahasiawa</button>
</form>
