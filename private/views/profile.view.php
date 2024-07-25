<?php $this->view('includes/header') ?>
<?php $this->view('includes/nav') ?>

<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
	<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])
	?>

	<?php if ($row) : ?>
		<?php
		$image = get_image($row->image, $row->gender);
		?>

		<div class="row">
			<div class="col-sm-4 col-md-3">
				<img src="<?= $image ?>" class="border border-primary d-block mx-auto rounded-circle " style="width:150px;">
				<h3 class="text-center"><?= esc($row->firstname) ?> <?= esc($row->lastname) ?></h3>
			</div>
			<div class="col-sm-8 col-md-9 bg-light p-2">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>ID:</th>
						<td><?= esc($row->user_id) ?></td>
					</tr>
					<tr>
						<th>First Name:</th>
						<td><?= esc($row->firstname) ?></td>
					</tr>
					<tr>
						<th>Last Name:</th>
						<td><?= esc($row->lastname) ?></td>
					</tr>
					<tr>
						<th>Email:</th>
						<td><?= esc($row->email) ?></td>
					</tr>
					<tr>
						<th>Gender:</th>
						<td><?= ucfirst(esc($row->gender)) ?></td>
					</tr>
					<tr>
						<th>Position:</th>
						<td><?= ucwords(str_replace("_", " ", $row->position)) ?></td>
					</tr>
					<tr>
						<th>Class:</th>
						<td><?= ucwords(str_replace("_", " ", $row->class)) ?></td>
					</tr>
					<tr>
						<th>Date Created:</th>
						<td><?= get_date($row->date) ?></td>
					</tr>


				</table>
			</div>
			<a style="margin-top:5px; margin-left: 94%" class="btn btn-danger" href="<?= ROOT ?>/home" ?>Back</a>

		</div>
		<br>
		<div class="container-fluid">
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link active" href="#">Basic Info</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Classes</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Tests</a>
				</li>

			</ul>

			<?php if ($row->position == 'parent') : ?>
				<div class="container-fluid mt-4">
					<h3>Associated Students</h3>
					<table class="table table-hover table-striped table-bordered">
						<thead>
							<tr>
								<th>Student ID</th>
								<th>Name</th>
								<th>Class</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($parents as $parent) : ?>
								<tr>
									<td><?= esc($parent->student_id) ?></td>
									<td><?= esc($parent->firstname) ?> <?= esc($parent->lastname) ?></td>
									<td><?= esc($parent->class) ?></td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			<?php endif; ?>

		</div>
	<?php else : ?>
		<center>
			<h4>That profile was not found!</h4>
		</center>
	<?php endif; ?>

</div>

<?php $this->view('includes/footer') ?>