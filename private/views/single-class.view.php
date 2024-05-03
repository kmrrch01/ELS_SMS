<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php $this->view('includes/crumbs',['crumbs'=>$crumbs])?>

		<?php if($row):?>

		

		<div class="row">
			
			<div class="col-sm-8 col-md-9 bg-light p-2">
				<table class="table table-hover table-striped table-bordered">
					<tr><th>Subject 1:</th><td><?=ucfirst(esc($row->subject1))?></td></tr>
					<tr><th>Subject 2:</th><td><?=ucfirst(esc($row->subject2))?></td></tr>
					<tr><th>Subject 3:</th><td><?=ucfirst(esc($row->subject3))?></td></tr>
						
				</table>
			</div>
		</div>
		<br>
		<div class="container-fluid">

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
			<center><h4>That class was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
