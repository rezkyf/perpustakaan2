<?php
	error_reporting(0);
	header("Content-type: text/xml");
	require_once("../conn/koneksi.php");

	$username=$_REQUEST['username'];
	$password=$_REQUEST['password'];
	$sql_auth=mysql_query("select * from tbl_user where username='$username'");
	$data=mysql_fetch_array($sql_auth);
	$pw=$data['password'];
	
	//kondisi jika username dan password diisi
	if($password==$pw){
		$respond="TRUE";
		//pencarian berdasarkan judul buku
		if($_REQUEST[judul])
		{
			$sql = "select * from tbl_buku where judul like '%$_REQUEST[judul]%'";
		}
		//pencarian berdasarkan pengarang
		elseif($_REQUEST[pengarang])
		{
			$sql = "select * from tbl_buku where pengarang like '%$_REQUEST[pengarang]%'";
		}
		//tidak melakukan pencarian
		else
		{
			$sql="select * from tbl_buku";
			$result = mysql_query($sql) or die(mysql_error());
		}}
	//kondisi ketika username atau password salah
	elseif($password!=$pw){
		$respond="FALSE";
		echo "<script>alert('Username dan password anda salah, Silahkan login kembali !');</script>";
	}
	
	//menampilkan data hasil pencarian
	$result = mysql_query($sql) or die(mysql_error());
	echo "<perpus>";
	while($row = mysql_fetch_array($result))
	{
	   $judul=$row[judul];
	   echo "<buku>";
	   echo "<id>$row[id]</id>";
	   echo "<judul>".htmlspecialchars($judul, ENT_COMPAT)."</judul>";
	   echo "<pengarang>$row[pengarang]</pengarang>";
	   echo "<penerbit>$row[penerbit]</penerbit>";
	   echo "<thn_terbit>$row[thn_terbit]</thn_terbit>";
	   echo "<jumlah_buku>$row[jumlah_buku]</jumlah_buku>";
	   echo "<lokasi>$row[lokasi]</lokasi>";
	   echo "<tgl_input>$row[tgl_input]</tgl_input>";
	   echo "</buku>";
	}
	echo "</perpus>";
?>