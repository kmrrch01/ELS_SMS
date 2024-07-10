<nav class="navbar navbar-light bg-light">
	  <form class="form-inline">
	    <div class="input-group">
	      <div class="input-group-prepend">
	        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i>&nbsp</span>
	      </div>
	      <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
	    </div>
	  </form>

	  	<div>
			<a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teacher-add&select=true">
				<button class="btn btn-sm btn-primary"><i class="fa-solid fa-plus"></i>Add New</button>
			</a>			
			<a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teacher-remove&select=true">
				<button class="btn btn-sm btn-primary"><i class="fa-solid fa-minus"></i>Remove</button>
			</a>
 
		</div>
			
	</nav>

<div class="card-group justify-content-center">
	<table class="table table-striped-hover">
		<th>First Name</th>
		<th>Last Name</th>
		<th>Position</th>
	<?php if(is_array($teachers)):?>
		<?php foreach($teachers as $teacher):?>
			
			<?php 
				$row = $teacher->user;
				include(views_path('user'));

			?>
		<?php endforeach;?>
	<?php else:?>
		<center><h4>No teachers were found in this class</h4></center>
	<?php endif;?>
	</table>
 </div>