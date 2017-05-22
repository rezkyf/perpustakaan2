<?php
error_reporting(0);
$doc = new DOMDocument();
//alamat provider
$doc->load('http://localhost/perpustakaan/provider/provider_perpus.php');
?>

<div id="menu-tengah">
	<div id="bg_menu">Data Buku</div>
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
			
			//nama dalam getElementsByTagName harus sama dengan nama yang ada di file provider_perpus.php
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
   	          <tr>
				<!--menampilkan data hasil pengambilan data dari file provider-->
   	            <td><?php echo $no; ?></td>
   	            <td><?php echo $judul;?></a></td>
   	            <td><?php echo $pengarang; ?></td>
   	            <td><?php echo $penerbit; ?></td>
				<td><?php echo $tahunterbit; ?></td>
   	            <td><?php echo $jumlahbuku; ?></td>
				<td><?php echo $lokasi; ?></td>
				<td><?php echo $tanggalinput; ?></td>
              </tr>
				<?php $no++; } ?>
            </tbody>
    </table>
</div>