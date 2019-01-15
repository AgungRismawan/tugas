<?php
include 'k1.html';
?>

<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title ?></title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
</head>
<body>

	<div class="container" style="margin-top: 80px">
		<?php echo $this->session->flashdata('notif') ?>
		<a href="<?php echo base_url() ?>tugas/tambah/" class="btn btn-md btn-success">Tambah Data</a>
		<hr>
		<!-- table -->
		<div class="table-responsive">
			<table id="table" class="table table-striped table-bordered table-hover">
			    <thead>
			      <tr>
			        <th>No.</th>
			        <th>Kode Buku</th>
			        <th>Judul Buku</th>
			        <th>Pengarang</th>
			        <th>Penerbit</th>
			        <th>stok</th> 
			        <th>Tahun Terbit</th>
			        <th>Options</th>
			      </tr>
			    </thead>
			    <tbody>

			    <?php
			    	$no = 1; 
			    	foreach($data_tugas as $hasil){ 
			    ?>
			      
			      <tr>
			        <td><?php echo $no++ ?></td>
			        <td><?php echo $hasil->kd_buku ?></td>
			        <td><?php echo $hasil->jd_buku ?></td>
			        <td><?php echo $hasil->pengarang ?></td>
			        <td><?php echo $hasil->penerbit ?></td>
			        <td><?php echo $hasil->stok ?></td>
			        <td><?php echo $hasil->th_terbit ?></td> 
			        <td>
			        	<a href="<?php echo base_url() ?>tugas/edit/<?php echo $hasil->noid ?>" class="btn btn-sm btn-success">Edit</a>
			        	<a href="<?php echo base_url() ?>tugas/hapus/<?php echo $hasil->noid ?>" class="btn btn-sm btn-danger">Hapus</a>
			        </td>
			      </tr>

			    <?php } ?>

			    </tbody>
			  </table>
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

<?php
include 'k2.html';
?>