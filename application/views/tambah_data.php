<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title ?></title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
</head>
<body>

	<div class="container" style="margin-top: 80px">
		<div class="col-md-12">
			<?php echo form_open('tugas/simpan') ?>
			  
			  <div class="form-group">
			    <label for="text">Kode Buku</label>
			    <input type="number" name="kd_buku" class="form-control" placeholder="Masukkan Kode Buku">
			  </div>

			  <div class="form-group">
			    <label for="text">Judul Buku</label>
			    <input type="text" name="jd_buku" class="form-control" placeholder="Masukkan Judul Buku">
			  </div>

			  <div class="form-group">
			    <label for="text">Pengarang</label>
			    <input type="text" name="pengarang" class="form-control" placeholder="Masukkan Nama Pengarang" >
			  </div>

			  <div class="form-group">
			    <label for="text">Penerbit</label>
			    <input type="text" name="penerbit" class="form-control" placeholder="penerbit">
			  </div>

			  <div class="form-group">
			    <label for="text">Stock </label>
			    <input type="number" name="stok" class="form-control" placeholder="Masukkan Stock">
			  </div>

			  <div class="form-group">
			    <label for="text">Tahun Terbit </label>
			    <input type="date" name="th_terbit" class="form-control" placeholder="Masukkan Tahun Terbit">
			  </div>

			 <!-- <div class="form-group">
			    <label for="text">Paraf</label>
			    <input type="text" name="paraf" class="form-control" >
			  </div>-->
			  
			  <button type="submit" class="btn btn-md btn-success">Simpan</button>
			  <button type="reset" class="btn btn-md btn-warning">reset</button>
			<?php echo form_close() ?>
		</div>
	</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<script>
	$('#table').DataTable( {
    autoFill: true
} );
</script>
</body>
</html>