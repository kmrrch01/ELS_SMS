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
function exportToExcel(tableId){
	let tableData = document.getElementById(tableId).outerHTML;
	tableData = tableData.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
    tableData = tableData.replace(/<input[^>]*>|<\/input>/gi, ""); //remove input params
	tableData = tableData + '<br /><br />Code witten By sudhir K gupta.<br />My Blog - https://comedymood.com'

	let a = document.createElement('a');
	a.href = `data:application/vnd.ms-excel, ${encodeURIComponent(tableData)}`
	a.download = 'downloaded_file_' + getRandomNumbers() + '.xls'
	a.click()
}
function getRandomNumbers() {
	let dateObj = new Date()
	let dateTime = `${dateObj.getHours()}${dateObj.getMinutes()}${dateObj.getSeconds()}`

	return `${dateTime}${Math.floor((Math.random().toFixed(2)*100))}`
}
</script>
<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
			<div style="padding-left:0px;">
					<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
				GRADES <hr> <i class="fa-solid fa-file-invoice-dollar"></i></h1>
					</div>

			<!--<h5>Students</h5>-->
			<nav class="navbar navbar-light bg-light">
		  <form class="form-inline">
		    <div class="input-group">
		      <div class="input-group-prepend">
		        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-search"></i>&nbsp</span>
		      </div>
		      <input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
		    </div>
		  </form>
		  <a href="<?=ROOT?>/marks">
		  <button class="btn btn-sm btn-primary"><i class="fa-solid fa-plus" ></i>Add New</button>
      				</a>
 		</nav>
		<div class="card-group justify-content-center">
			<table class="table table-striped table-hover" id="myTable" >
            <tr>	
				
				<th>Student name</th>
				<th>Class</th>
				<th>Exam 1</th>
				<th>Exam 2</th>
				<th>Exam 3</th>
				<th>Term Average</th>
				
				<th>
					<a href="" style="margin-left: 100px ;" >
            			<button class="btn btn-success"  onclick="exportToExcel('myTable')" ><i class="fa-solid fa-download"></i></button> 
      				</a>
					  <a href="<?=ROOT?>/Fees_billing/excel">
					  <button class="btn btn-success"><i class="fa-solid fa-file-import"></i></button> 
					 		</a>
			  	</th>
			</tr>	
            <br><br>
						<?php if (is_array($rows) || is_object($rows)): ?>
			<?php foreach ($rows as $row): ?>
				<tr>
                    
                    <td>
                        <p><?=$row->fullname?> </p>
                    </td>
                    <td>
                        <?=str_replace("_", " ", ucwords($row->class))?>
                    </td>
					<td>
                        <p><?=$row->exam1?></p>
                    </td>
					<td>
                        <p><?=$row->exam2?></p>
                    </td>
					<td>
                        <p><?=$row->exam3?></p>
                    </td>
					<td>
                        <p><?=$row->average?></p>
                    </td>
					<td>
					 		<a href="<?=ROOT?>/Fees_billing/edit/<?=$row->id?>">
					 			<button class="btn-sm btn btn-info text-white"><i class="fa-solid fa-edit"></i></button>
					 		</a>

					 		<a href="<?=ROOT?>/Fees_billing/delete/<?=$row->id?>">
					 			<button class="btn-sm btn btn-dark"><i class="fa-solid fa-trash-alt"></i></button>
					 		</a>
							 <a href="<?=ROOT?>/Invoices/pdf/<?=$row->id?>">
					 			<button class="btn-sm btn btn-danger" ><i class="fa-regular fa-file-pdf"></i></button>
					 		</a>
							
 					 		
					 	</td>
				</tr>
			<?php endforeach; ?>
		<?php else: ?>
			<tr>
				<td colspan="5"><h4>No students were found at this time</h4></td>
			</tr>
		<?php endif; ?>

			</table>

		</div>

		
	 
</div>
   
<?php $this->view('includes/footer')?>