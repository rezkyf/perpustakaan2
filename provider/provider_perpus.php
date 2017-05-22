<?php
	error_reporting(0);
	header("Content-type: text/xml");
	require_once("../conn/koneksi.php");
	$sql = "select * from tbl_buku";
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