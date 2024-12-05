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

<nav class="navbar navbar-light bg-light">
						<form class="form-inline">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i class="fas fa-magnifying-glass"></i></span>
							</div>
							<input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Username" aria-label="Username" aria-describedby="basic-add">
						</div>
						</form>
					<!--<a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teachers-add">
								<button class="btn btn-primary"><i class="fa-solid fa-plus" aria-hidden="true"></i> Add Teacher </button> 
						</a>-->
					</nav>
<div class="container-fluid">
	
	<?php if(is_array($data_students) || is_object($data_students)):?>
		<table id="myTable" class="table table-striped hover justify-content-center">
		<th>First Name</th>
		<th>Last Name</th>
		<th>Section</th>
		<th>Date Of Birth</th>
		<th>Gender</th>
		<?php foreach($data_students as $students):?>
		<tr>
				<td><?=$students->firstname?></td> 
				<td><?=$students->lastname?></td>
				<td><?=ucfirst(str_replace("_", " ", $students->section))?></td>
				<td><?=get_date($students->dob)?></td>
				<td><?=ucfirst($students->gender)?></td>
			</tr>
		<?php endforeach?>
		<?php else:?>
			<center><h3><i style="color: red;" class="fa-solid fa-exclamation-triangle"></i>
			No students were found at this time</h4>
		<?php endif?>
	</table>

</div>