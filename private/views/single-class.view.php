<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
	
	<div class="justify-content-center container-fluid p-6 shadow mx-auto" style="max-width: 1000px;">
		<?php // $this->view('includes/crumbs')?>
		<div style="padding-left:0px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
		</div>
		<?php if($row):?>
		<div class="row">
			<center><h4><?=esc(ucwords($row->class))?></h4></center>
				<table class="table table-hover table-striped table-bordered">
				    <tr><th>Created By:</th><td><?=esc($row->user->firstname)?> <?=esc($row->user->lastname)?></td>
					<th>Date Created:</th><td><?=get_date($row->date)?></td></tr>
				

				</table>
				<a style="margin-left:90%" href="<?=ROOT?>/classes">
				<button class="btn btn-danger">Back</button>
		</a>
			</div>
		</div>
		<br>
		<div style="padding-left:15%;" class="m-2 justify-content-center container-fluid">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link <?=$page_tab=='teachers'?'active':'';?> " href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teachers ">Teachers</a>
			  </li>
			</ul>


					

		<?php else:?>
			<center><h4>That class was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
