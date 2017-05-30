<!DOCTYPE html> 
<html lang="en"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistem Informasi Perpustakaan Fakultas Teknologi Informasi Unisbank</title>
<!--bootstrap-->
<link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--javascript-->
<script src="../assets/jquery/jquery-3.1.1.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<!-- Custom JS -->
<script src="../assets/custom.js"></script>
<link rel="stylesheet" type="text/css" href="../style.css" />
</head>

<body>
<!-- menu utama-->
<div id="main">
	<!-- menu Header -->
    <div id="header">
		<h3 style="text-align:center">Selamat Datang di Sistem Informasi Perpustakaan</h3>
		<h3 style="text-align:center">Fakultas Teknologi Informasi Universitas Stikubank Semarang</h3>
    </div>
    
<nav class="navbar navbar-inverse" style="background-color:#FFA500;border:0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	  </a>
    </div>
	<!--menu-->
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		<li><a href="?menu=home" style="color:black"><span class="glyphicon glyphicon-home"></span></a></li>
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="*">Buku
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="?menu=buku_data">Data Buku</a></li>
				<li><a href="?menu=buku_search">Cari Buku</a></li>
			</ul>
		</li>
      </ul>
    </div>
  </div>
</nav>
	    
<?php
	error_reporting(0);
	if($_GET['menu']=='') {
		include ('home.php');
	}else{
		include($_GET['menu'].'.php');
	}
?>
			
</div>
    <!-- menu Merapikan div content -->
    <div class="clear">
   	</div>
    
<!-- menu Footer -->
<footer class="container-fluid text-left" style="background-color:#FF8C00;width:950px">
	<div class="col-sm-12 text-center" >
			<p>&copy; Sistem Informasi Perpustakaan 2017 || created by Rizka Fitriani Hadi, Agnes Oka Rosalin, Rezky Febriani || klp:B2</p>  
		</div>
</footer>
</body>
</html>

<?php ?>