<?php $this->view('includes/header')?>
<title>Parents</title>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php  //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>
		<div style="padding-left:0px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
      PARENTS & FAMILY <hr> <i class="fa-solid fa-people-roof"></i></h1>
		</div>

		<nav class="navbar navbar-light bg-light">
		  <form class="form-inline">
		    <div class="input-group">
		      <div class="input-group-prepend">
		        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i>&nbsp</span>
		      </div>
		      <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
		    </div>
		  </form>
 			<a href="<?=ROOT?>/signup?mode=parents">
				<button class="btn btn-sm btn-primary"><i class="fa-solid fa-plus"></i>Add New</button>
			</a>
 		</nav>

		 <?php if($rows):?>
          <table class="table table-striped table-hover" id="myTable">
          <tr><th>First Name</th><th>Last Name</th><th>Position</th><th>Profile</th></tr>
        
          <?php foreach($rows as $row):?>
              <?php include(views_path('user'));?>
              
          <?php endforeach;?>
          <?php else:?>
            <h4> No staff members were found.</h4>
       
          <?php endif;?>
          </table>
		</div>

		
	 
	</div>
 
<?php $this->view('includes/footer')?>