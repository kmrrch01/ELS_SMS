<?php $this->view('includes/header')?>
<title>Student</title>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>

		<?php if($row):?>
		<?php
 			$image = get_image($row->image,$row->gender);
 		?>

		<div class="row">
			<div class="col-sm-4 col-md-3">
				<img src="<?=$image?>" class="border border-primary d-block mx-auto rounded-circle " style="width:150px;">
				<h3 style="padding-top:10px" class="text-center col-11"><?=esc($row->firstname)?> <?=esc($row->lastname)?></h3>
			</div>
			<div class ="text-center">
				<a class = "btn-sm btn btn-success" href="<?=ROOT?>/stp/edit/<?=$row->student_id?>">Edit</a>
                <a class = "btn btn-primary" href="<?=ROOT?>/stp/edit/<?=$row->student_id?>">Delete</a>
				</div>
			<div class="col-sm-8 col-md-9 bg-light p-2">
				<table class="table table-hover table-striped table-bordered">
				<tr><th>ID:</th><td><?=esc($row->student_id)?></td></tr>
				<tr><th>First Name:</th><td><?=esc($row->firstname)?></td></tr>
				<tr><th>Last Name:</th><td><?=esc($row->lastname)?></td></tr>
				<tr><th>Gender:</th><td><?=ucfirst(esc($row->gender))?></td></tr>
				<tr><th>Email:</th><td><?=esc($row->email)?></td></tr>
				<tr><th>Address:</th><td><?=ucwords(str_replace("_"," ",$row->address))?></td></tr>
				<tr><th>Place of birth:</th><td><?=ucwords(str_replace("_"," ",$row->PoB))?></td></tr>
				<tr><th>Nationality:</th><td><?=ucwords(str_replace("_"," ",$row->Nationality))?></td></tr>
				<tr><th>Blood Type:</th><td><?=ucwords(str_replace("_"," ",$row->blood_type))?></td></tr>
				<tr><th>Health condition:</th><td><?=ucwords(str_replace("_"," ",$row->health_condition))?></td></tr>
				<tr><th>Class:</th><td><?=ucwords(str_replace("_"," ",$row->class))?></td></tr>
				<tr><th>Home Phone:</th><td><?=ucwords(str_replace("_"," ",$row->home_phone))?></td></tr>
				<tr><th>Cell PHONE 1:</th><td><?=ucwords(str_replace("_"," ",$row->cell_phone1))?></td></tr>
				<tr><th>Cell PHONE 2:</th><td><?=ucwords(str_replace("_"," ",$row->cell_phone2))?></td></tr>
				<tr><th>Date Created:</th><td><?=get_date($row->date)?></td></tr>
				<tr><th>Additional Info:</th><td><?=ucwords(str_replace("_"," ",$row->MISC))?></td></tr>

				</table>
			</div>
		</div>
		<br>

		<!--to be worked on to include same functionality from Staff tabs-->
		
		<?php else:?>
			<center><h4>That profile was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
