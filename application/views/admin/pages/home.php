<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Content Header (Page header) -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark">Dashboard</h1>
			</div><!-- /.col -->
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active">Dashboard v1</li>
				</ol>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
	<div class="container-fluid">
		<!-- Small boxes (Stat box) -->
		<div class="row">
			<div class="col-lg-4 col-6">
				<!-- small box -->
				<div class="small-box bg-info">
					<div class="inner">
						<h3><?= $employee_numrows ?></h3>

						<p>Pegawai terdaftar</p>
					</div>
					<div class="icon">
						<i class="ion ion-person-stalker"></i>
					</div>
					<a href="#" class="small-box-footer">Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-4 col-6">
				<!-- small box -->
				<div class="small-box bg-danger">
					<div class="inner">
						<h3><?= $holiday_numrows ?></h3>

						<p>Hari libur bulan ini</p>
					</div>
					<div class="icon">
						<i class="ion ion-calendar"></i>
					</div>
					<a href="#" class="small-box-footer">Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-4 col-6">
				<!-- small box -->
				<div class="small-box bg-warning">
					<div class="inner">
						<h3><?= $vacation_employee_numrows ?></h3>

						<p>Pegawai yang cuti bulan ini</p>
					</div>
					<div class="icon">
						<i class="ion ion-android-bicycle"></i>
					</div>
					<a href="#" class="small-box-footer">Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
		</div>
		<!-- /.row -->
		<!-- Main row -->
		<div class="row">
			<!-- Left col -->
			<section class="col-lg-7 connectedSortable">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title text-bold">Daftar Pegawai dengan Jumlah Keterlambatan Tertinggi</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body p-0 table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th style="width: 10px">#</th>
									<th>Nama Pegawai</th>
									<th>Terlambat</th>
									<th>Tidak hadir</th>
									<th style="width: 30px">Kehadiran</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1.</td>
									<td>Tuti Amalia</td>
									<td>3</td>
									<td>4</td>
									<td><span class="badge bg-danger">71%</span></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>Cici Purnama Sari</td>
									<td>3</td>
									<td>3</td>
									<td><span class="badge bg-warning">75%</span></td>
								</tr>
								<tr>
									<td>3.</td>
									<td>Nurul Musfirah</td>
									<td>2</td>
									<td>3</td>
									<td><span class="badge bg-warning">79%</span></td>
								</tr>
								<tr>
									<td>4.</td>
									<td>Ahmad Kadir</td>
									<td>2</td>
									<td>1</td>
									<td><span class="badge bg-primary">89%</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

			</section>
			<!-- /.Left col -->
			<!-- right col (We are only adding the ID to make the widgets sortable)-->
			<section class="col-lg-5 connectedSortable">

				<!-- Calendar -->
				<div class="card bg-gradient-cyan">
					<div class="card-header border-0">
						<h3 class="card-title">
							<i class="far fa-calendar-alt"></i>
							Kalender
						</h3>
						<!-- /. tools -->
					</div>
					<!-- /.card-header -->
					<div class="card-body pt-0">
						<!--The calendar -->
						<div id="calendar" style="width: 100%"></div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</section>
			<!-- right col -->
		</div>
		<!-- /.row (main row) -->
	</div><!-- /.container-fluid -->
</section>
<!-- /.content -->
