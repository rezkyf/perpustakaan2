<div id="menu-tengah">
	<div id="bg_menu">Data Buku</div>
    <div id="menu_header">
        <form action="?menu=buku_search" method="post">
        	<table width="100%" height="100%" style="border:1px solid  #778899;">
            	<tr>
                	<td width="50%" align="left">
						<!--penggunaan radio button untuk melakukan pencarian buku berdasarkan judul atau pengarang-->
						Pencarian berdasarkan : 
						<input type="radio" name="rad" id="rad1" value="1" class="rad"/> Judul Buku 
						<input type="radio" name="rad" id="rad2" value="2" class="rad"/> Pengarang
					</td>
                    <td width="50%" align="right">
						<!--form 1 berdasarkan judul-->
						<div id="form1" style="display:none">
							<input type="text" name="judul" size="50" placeholder="Judul Buku">
							<input type="submit" name="submit" value="cari">
						</div>
						<!--form 2 berdasarkan judul-->
						<div id="form2" style="display:none">
							<input type="text" name="pengarang" size="50" placeholder="Pengarang">
							<input type="submit" name="submit" value="cari">
						</div>
					</td>
                </tr>
            </table>
        </form> 
		<!--kode java untuk menampilkan form ketika radio button dipilih-->
		<script type="text/javascript">
			$(function(){
				$(":radio.rad").click(function(){
					$("#form1, #form2").hide()
					if($(this).val() == "1"){
						$("#form1").show();
					}else{
						$("#form2").show();
					}
				});
			});
		</script>		
    </div>
	<table class="table table-striped">
			<!--kolom nama judul tabel-->
   	        <thead>
   	          <tr>
   	            <th width="5%">No</th>
   	            <th width="30%">Judul Buku</th>
   	            <th width="20%">Pengarang</th>
   	            <th width="15%">Penerbit</th>
				<th width="15%">Tahun Terbit</th>
   	            <th width="15%">Jumlah</th>
				<th width="15%">Lokasi</th>
				<th width="15%">Tanggal Input</th>
              </tr>
			</thead>
			
           <?php
		   		error_reporting(0);
				//kondisi ketika pencarian buku berdasarkan judul
				if(($_REQUEST[judul]) and ($_REQUEST[submit]))
				{	
					$judul=$_REQUEST[judul];
					echo "Hasil Pencarian Buku : $judul<br><br>";
	
					$doc = new DOMDocument();
					$doc->load('http://localhost/perpustakaan/provider/provider_perpus4.php?username=user1&password=user1&judul='.$judul);
					
					$bukus = $doc->getElementsByTagName("buku");
			
					//nomor urut bukan kode buku
					$no = 1;
			
					//perulangan pengambilan data dari file provider
					foreach($bukus as $buku)
					{
						//nama dalam getElementsByTagName harus sama dengan nama yang ada di file provider_perpus.php
						$kodes = $buku->getElementsByTagName("id");
						$kode = $kodes->item(0)->nodeValue;
				
						$juduls = $buku->getElementsByTagName("judul");
						$judul = $juduls->item(0)->nodeValue;
  
						$pengarangs = $buku->getElementsByTagName("pengarang");
						$pengarang = $pengarangs->item(0)->nodeValue;

						$penerbits = $buku->getElementsByTagName("penerbit");
						$penerbit = $penerbits->item(0)->nodeValue;
				
						$tahunterbits = $buku->getElementsByTagName("thn_terbit");
						$tahunterbit = $tahunterbits->item(0)->nodeValue;
				
						$jumlahbukus = $buku->getElementsByTagName("jumlah_buku");
						$jumlahbuku = $jumlahbukus->item(0)->nodeValue;
				
						$lokasis = $buku->getElementsByTagName("lokasi");
						$lokasi = $lokasis->item(0)->nodeValue;
				
						$tanggalinputs = $buku->getElementsByTagName("tgl_input");
						$tanggalinput = $tanggalinputs->item(0)->nodeValue;
			?>
			
			<tbody>
   	         <td><?php echo $no; ?></td>
   	            <td><?php echo $judul;?></a></td>
   	            <td><?php echo $pengarang; ?></td>
   	            <td><?php echo $penerbit; ?></td>
				<td><?php echo $tahunterbit; ?></td>
   	            <td><?php echo $jumlahbuku; ?></td>
				<td><?php echo $lokasi; ?></td>
				<td><?php echo $tanggalinput; ?></td>
              </tr>
			  
			<?php $no++; }
			//kondisi pada saat pencarian buku berdasarkan pengarang
			}elseif (($_REQUEST[pengarang]) and ($_REQUEST[submit])){
				$pengarangku=$_REQUEST[pengarang];
				echo "Hasil Pencarian Buku : $pengarangku<br><br>";
	
				$doc = new DOMDocument();
				$doc->load('http://localhost/perpustakaan/provider/provider_perpus4.php?username=user1&password=user1&pengarang='.$pengarangku);
					
				$bukus = $doc->getElementsByTagName("buku");
			
				//nomor urut bukan kode buku
				$no = 1;
			
				//perulangan pengambilan data dari file provider
				foreach($bukus as $buku)
				{
					//nama dalam getElementsByTagName harus sama dengan nama yang ada di file provider_perpus.php
					$kodes = $buku->getElementsByTagName("id");
					$kode = $kodes->item(0)->nodeValue;
				
					$juduls = $buku->getElementsByTagName("judul");
					$judul = $juduls->item(0)->nodeValue;
  
					$pengarangs = $buku->getElementsByTagName("pengarang");
					$pengarang = $pengarangs->item(0)->nodeValue;

					$penerbits = $buku->getElementsByTagName("penerbit");
					$penerbit = $penerbits->item(0)->nodeValue;
				
					$tahunterbits = $buku->getElementsByTagName("thn_terbit");
					$tahunterbit = $tahunterbits->item(0)->nodeValue;
				
					$jumlahbukus = $buku->getElementsByTagName("jumlah_buku");
					$jumlahbuku = $jumlahbukus->item(0)->nodeValue;
				
					$lokasis = $buku->getElementsByTagName("lokasi");
					$lokasi = $lokasis->item(0)->nodeValue;
				
					$tanggalinputs = $buku->getElementsByTagName("tgl_input");
					$tanggalinput = $tanggalinputs->item(0)->nodeValue;
			?>
			<tbody>
   	         <td><?php echo $no; ?></td>
   	            <td><?php echo $judul;?></a></td>
   	            <td><?php echo $pengarang; ?></td>
   	            <td><?php echo $penerbit; ?></td>
				<td><?php echo $tahunterbit; ?></td>
   	            <td><?php echo $jumlahbuku; ?></td>
				<td><?php echo $lokasi; ?></td>
				<td><?php echo $tanggalinput; ?></td>
              </tr>
			<?php $no++; }
			}?>
	</table>
</div>