<?php $this->view('includes/header')?>
<title>Classes</title>
<?php $this->view('includes/nav')?>
<script>
  function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, j,i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 1; i < tr.length; i++) {
        tr[i].style.display = "none";
        td = tr[i].getElementsByTagName("td");
        for (j = 0; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                    break;
                }
            }
        }
    }
}
</script>

	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>
		<div style="padding-left:100px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
      CLASSES <hr> <i class="fa-solid fa-landmark"></i></h1>
		</div>
		<div style="margin-left:10%;" class="card-group justify-content-center">
		
			<table id="myTable" class="table table-striped table-hover">
				<div style="left: 278px; position:relative; display:inline-block;">
				<nav class="navbar navbar-light bg-light">
					<form class="form-inline">
						<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-search"></i>&nbsp</span>
						</div>
						<input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
						</div>
		  			</form>
				</nav>
				</div>
				
				<tr>
					<th>View</th>
					<th>Class Name</th>
					<th>Created by</th>
					<th>Date</th>
					<th>
						<a href="<?=ROOT?>/classes/add">
							<button class="btn btn-sm btn-primary"><i class="fa-solid fa-plus"></i>Add New</button>
						</a>
					</th>
				</tr>
				<br><br>
				<?php if(is_array($rows) || is_object($rows)):?>
					 
					<?php foreach ($rows as $row):?>
					 
					 <tr>
					 	<td>
							<a href="<?=ROOT?>/single_class/<?=$row->class_id?>">
							<button class="btn btn-sm btn-primary"><i class="fa-solid fa-landmark"></i></button></td>
					</a>
					 	<td><?=str_replace("_", " ", ucwords($row->class))?></td>
						<td><?=$row->user->firstname?> <?=$row->user->lastname?></td>
						<td><?=get_date($row->date)?></td>

					 	<td>
					 		<a href="<?=ROOT?>/classes/edit/<?=$row->id?>">
					 			<button class="btn-sm btn btn-info text-white"><i class="fa-solid fa-edit"></i></button>
					 		</a>

					 		<a href="<?=ROOT?>/classes/delete/<?=$row->id?>">
					 			<button class="btn-sm btn btn-danger"><i class="fa-solid fa-trash-alt"></i></button>
					 		</a>
 					 		
					 	</td>

					 </tr>

		 			<?php endforeach;?>
	 			<?php else:?>
	 				<h4>No classes were found at this time</h4>
	 			<?php endif;?>

			</table>

		</div>

		
	 
	</div>
 
<?php $this->view('includes/footer')?>