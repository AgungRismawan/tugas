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
			<?php echo form_open('laporan/update') ?>
			  
			  <div class="form-group">
			    <label for="text">Kode Dosen</label>
			    <input type="text" name="kodos" value="<?php echo $data_laporan->kodos ?>" class="form-control" placeholder="Masukkan Kode Dosen">
			    <input type="hidden" value="<?php echo $data_laporan->noid ?>" name="noid">
			  </div>

			  <div class="form-group">
			    <label for="text">Nama Dosen</label>
			    <input type="text" name="nama_dosen" value="<?php echo $data_laporan->nama_dosen ?>" class="form-control" placeholder="Masukkan Nama Dosen">
			  </div>

			  <div class="form-group">
			    <label for="text">Tanggal</label>
			    <input type="date" name="tanggal" value="<?php echo $data_laporan->tanggal ?>" class="form-control" >
			  </div>

			  <div class="form-group">
			    <label for="text">Waktu</label>
			    <input type="time" name="time" value="<?php echo $data_laporan->time ?>" class="form-control" >
			  </div>

			  <div class="form-group">
			    <label for="text">Mata kuliah</label>
			    <input type="text" name="matkul" value="<?php echo $data_laporan->matkul ?>" class="form-control" placeholder="Masukkan Mata kuliah" >
			  </div>

			  <div class="form-group">
			    <label for="text">Paraf</label>
			    <input type="text" name="paraf" value="<?php echo $data_laporan->paraf ?>" class="form-control" >
			  </div>
			  
			  <button type="submit" class="btn btn-md btn-success">Update</button>
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