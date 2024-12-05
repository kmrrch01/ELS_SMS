<?php $this->view('includes/header')?>
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
        <div style="padding-left:0px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
      ALL STUDENTS <hr> <i class="fa-solid fa-graduation-cap"></i></h1>
		</div>
		<form class="form-inline">
		    <div class="input-group">
		      <div class="input-group-prepend">
		        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-search"></i>&nbsp</span>
		      </div>
		      <input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
             
            </div>
            <div style="margin-bottom:5%; margin-left:88%" >
            <a class="btn btn-primary" href="<?=ROOT?>/student_signup">
        <i class="fa-solid fa-plus"></i> Add New
    </a>

                
           
	</form>
   
    
</div>

		<div class="card-group justify-content-center">
			<table id="myTable" class="table table-striped table-hover">
            <th style="text-align:center;">Profile</th>
            <th style="text-align:center;">Student Name</th>
            <th style="text-align:center;">Class</th>
            <th style="text-align:center;">Academic Year</th>
          
            <br><br>
			<?php if (is_array($rows) || is_object($rows)): ?>
			<?php foreach ($rows as $row): ?>
				<tr>
                    <td>
                        <div style="text-align:center;">
                        <a href="<?=ROOT?>/stp/<?=$row->student_id?>">
                            <button class="btn-outline-primary"><i class="fa-solid fa-user-graduate"></i>
                    </a>
            </div>
                    </td>
                    <td>
                        <p style="text-align:center;"><?=$row->firstname?> <?=$row->middlename?> <?=$row->lastname?></p>
                    </td>
                    <td style="text-align:center;">
                        <?=str_replace("_", " ", ucwords($row->class))?>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$row->acad_year?></div>
            </td>
				</tr>
			<?php endforeach; ?>
		<?php else: ?>
			<tr>
                
				<td colspan="5">
                    <center><h3><i style="color: red;" class="fa-solid fa-exclamation-triangle"></i>
                        No students were found at this time</h4>
                </td>
        
			</tr>
		<?php endif; ?>

			</table>

		</div>

		
	 
	</div>
 
<?php $this->view('includes/footer')?>