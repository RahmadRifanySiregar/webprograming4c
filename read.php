<a href="form.php">Tambah data !</a>

<?php
include_once "DB.php";
$sql="SELECT * FROM mahasiswa";
$q=mysqli_query($koneksi,$sql);
?>
<table width="100%" border="1">
<thead>
<tr>
<th>NO</th>
<th>NIM</th>
<th>Nama</th>
<th>Alamat</th>
<th>Jenis Kelamin</th>
<th>Agama</th>
<th>Email</th>
<th>Password</th>
<th>Aksi</th>
</tr>
</thead>
<tbody>
<?php
$no=1;
while($data=mysqli_fetch_assoc($q)) {
?>
<tr>
<td><?=$no?></td>
<td><?=$data['nim']?></td>
<td><?=$data['nama']?></td>
<td><?=$data['alamat']?></td>
<td><?=$data['jenis_kelamin']?></td>
<td><?=$data['agama']?></td>
<td><?=$data['email']?></td>
<td><?=$data['password']?></td>
<td>
<a href="form-edit.php?nim=<?=$data['nim']?>">Edit</a> |
<a href="delete.php?nim=<?=$data['nim']?>">Delete</a>
</td>
</tr>
<?php $no++; } ?>
</tbody>
</table>