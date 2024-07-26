<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>

		<?php if($row):?>
		<?php
 			/**
     * Retrieves the appropriate image for the given student based on their gender.
     *
     * @param string $image The image filename for the student.
     * @param string $gender The gender of the student.
     * @return string The full path to the student's image.
     */
    $image = get_image($row->image,$row->gender);
 		?>

		<div class="row">
			<div class="col-sm-4 col-md-3">
				<img src="<?=$image?>" class="border border-primary d-block mx-auto rounded-circle " style="width:150px;">
				<h3 style="padding-top:10px" class="text-center col-11"><?=esc($row->firstname)?> <?=esc($row->lastname)?></h3>
			</div>
			<div class="col-sm-8 col-md-9 bg-light p-2">
				<table class="table table-hover table-striped table-bordered">
					<tr><th>ID:</th><td><?=esc($row->student_id)?></td></tr>
					<tr><th>First Name:</th><td><?=esc($row->firstname)?></td></tr>
					<tr><th>Last Name:</th><td><?=esc($row->lastname)?></td></tr>
					<tr><th>Gender:</th><td><?=ucfirst(esc($row->gender))?></td></tr>
					<tr><th>Class:</th><td><?=ucwords(str_replace("_"," ",$row->class))?></td></tr>
					<tr><th>Date Created:</th><td><?=get_date($row->date)?></td></tr>
				

				</table>
			</div>
			<a style="margin-top:5px; margin-left: 94%" href="<?=ROOT?>/students?>" class="btn btn-danger">Back</a>

		</div>
		<br>

		<!--to be worked on to include same functionality from Staff tabs-->
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

			<nav class="navbar navbar-light bg-light">
			  <form class="form-inline">
			    <div class="input-group">
			      <div class="input-group-prepend">
			        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i>&nbsp</span>
			      </div>
			      <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
			    </div>
			  </form>
			</nav>

		</div>
		<?php else:?>
			<center><h4>That profile was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
