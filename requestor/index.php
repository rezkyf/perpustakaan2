<!--halaman login-->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sistem Informasi Perpustakaan Fakultas Teknologi Informasi Unisbank</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--bootstrap-->
	<link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!--javascript-->
	<script src="../assets/jquery/jquery-3.1.1.min.js"></script>
	<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- Custom JS -->
	<script src="../assets/custom.js"></script>
	<!-- css-->
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<div class="container">
	<div class="row" style="text-align:center">
		<h4 ><b>Masuk Sistem Informasi Perpustakaan Fakultas Teknologi Informasi Unisbank</b></H4>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<form action="cek-login.php" method="POST">
			<form>
				<div class="form-group">
					<input type="text" name="username" class="form-control" placeholder="Username" size="50%" required="required">
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control" placeholder="Password" required="required">
				</div>
				<input type="submit" name="masuk" value="Masuk" class="btn btn-primary btn-block" style="background-color:pink;color:black;border:0px">
			</form></form>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
</div>

</body>
</html>