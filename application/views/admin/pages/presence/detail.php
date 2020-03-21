<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<script>
	const LABEL_BULANAN = <?= json_encode($label_bulanan) ?>;
	const WARNA_BULANAN = <?= json_encode($warna_bulanan) ?>;
	const DATA_BULANAN = <?= json_encode($data_bulanan) ?>;
	const TANGGAL_HARIAN = <?= json_encode($date) ?>;
	const JAM_HARIAN = <?= json_encode($time_in) ?>;
	const BULAN = <?= $periode->bulan ?>;
	const TAHUN = <?= $periode->tahun ?>;
	const PERIOD = '<?= get_month_name($periode->bulan)." ".$periode->tahun ?>';
	const FILE_NAME = `detail_<?= $employee->id ?>_<?= $periode->tahun ?>_<?=$periode->bulan?>.pdf`;
</script>
<!-- Content Header (Page header) -->
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>Detail Pegawai</h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="<?= site_url() ?>">Home</a></li>
					<li class="breadcrumb-item active">Detail Pegawai</li>
				</ol>
			</div>
		</div>
	</div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-header d-flex justify-content-between align-items-center">
						<a href="<?= site_url('presence/report') ?>"><i class="fas fa-arrow-left"></i>
						Kembali</a>
						<button id="print_btn" target="_blank" class="btn btn-info btn-sm d-block mr-0 ml-auto"><i class="fas fa-download"></i> Unduh Data</button>
					</div>
					<div class="card-body row">
						<div class="col-md-6">
							<!-- DONUT CHART -->
							<div class="card card-success card-outline">
								<div class="card-header">
									<h3 class="card-title"><strong class="text-muted">Data Pegawai</strong></h3>
								</div>
								<div class="card-body" style="min-height:250px">
									<table class="table table-bordered" id="detail">
										<tr>
											<th>Kode Pegawai</th>
											<td><?= $employee->id ?></td>
										</tr>
										<tr>
											<th>Nama Pegawai</th>
											<td><?= ucwords($employee->nama) ?></td>
										</tr>
										<tr>
											<th>Status Pegawai</th>
											<td><?= $employee->jenis == 1 ? 'Pegawai' : 'Non-pegawai' ?></td>
										</tr>
										<tr>
											<th>Periode</th>
											<td><?= get_month_name($periode->bulan)." ".$periode->tahun ?></td>
										</tr>
										<tr>
											<th>Hadir</th>
											<td><?= $data_bulanan[0] ?> kali</td>
										</tr>
										<tr>
											<th>Terlambat</th>
											<td><?= $data_bulanan[2] ?> kali</td>
										</tr>
										<tr>
											<th>Tidak Hadir</th>
											<td><?= $data_bulanan[1]?> kali</td>
										</tr>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<div class="col-md-6">
							<!-- DONUT CHART -->
							<div class="card card-warning card-outline">
								<div class="card-header">
									<h3 class="card-title"><strong class="text-muted">Rekap Bulanan</strong></h3>
								</div>
								<div class="card-body">
									<canvas id="rekap-bulanan"
										style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<!-- BAR CHART -->
				<div class="card card-info card-outline">
					<div class="card-header">
						<h3 class="card-title"><strong>Rekap harian</strong></h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<div class="chart">
							<canvas id="rekap-harian"
								style="min-height: 250px; height: 400px; max-height: 400px; max-width: 100%;"></canvas>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</div>
		</div>
		<!-- /.row -->
	
</section>
