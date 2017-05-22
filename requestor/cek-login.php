<?php
if(isset($_POST['masuk'])){
$username=mysql_real_escape_string($_POST['username']);
$password=mysql_real_escape_string($_POST['password']);

$url="http://localhost/perpustakaan/provider/provider_perpus3.php?username=".$username."&password=".$password;
$bacaxml=simplexml_load_file($url);
foreach($bacaxml->response as $respon)
{
	if($respon=="TRUE"){
		echo "Login Sukses";
	}
	elseif($respon=="FALSE"){
		echo "<script>alert('Username dan password anda salah, Silahkan login kembali !');</script>";
	}
}
}
?>