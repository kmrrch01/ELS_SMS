<?php $this->view('includes/header') ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
<script>
	function myFunction() {
		// Declare variables
		var input, filter, table, tr, td, j, i, txtValue;
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


	function exportToExcel(tableId) {
		let tableData = document.getElementById(tableId).outerHTML;
		tableData = tableData.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
		tableData = tableData.replace(/<input[^>]*>|<\/input>/gi, ""); //remove input params
		tableData = tableData + '<br /><br />';

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

	function exportToPDF(tableId) {
		let tableData = document.getElementById(tableId).outerHTML;
		tableData = tableData.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
		tableData = tableData.replace(/<input[^>]*>|<\/input>/gi, ""); //remove input params
		tableData = tableData + '<br /><br />';

		let a = document.createElement('a');
		a.href = `data:application/pdf,${encodeURIComponent(tableData)}`;
		a.download = 'downloaded_file_' + getRandomNumbers() + '.pdf';
		a.click();
	}

	
</script>
<div class="container-fluid p-4 shadow mx-auto"  style="max-width: 1000px;">
	<form  id="myTable">
	<div style="padding-left:0px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
			FEES & INVOICING
			<hr> <i class="fa-solid fa-file-invoice-dollar"></i>
		</h1>
	</div>

	<!--<h5>Students</h5>-->

	<div class="card-group justify-content-center">
		<table class="table table-striped table-hover" id="myTable">
			<tr>

				<th>Student name</th>
				<th>Class</th>
				<th>Paid in $</th>
				<th>Paid in L.L.</th>
				<th>Remain $</th>
				<th>Remain L.L.</th>


			</tr>
			<br><br>
			<?php if (is_array($rows) || is_object($rows)) : ?>
				<?php foreach ($rows as $row) : ?>
					<tr>

						<td>
							<p><?= $row->fullname ?> </p>
						</td>
						<td>
							<?= str_replace("_", " ", ucwords($row->Class)) ?>
						</td>
						<td>
							<p><?= $row->Fees_in_Dollar ?> $ </p>
						</td>
						<td>
							<p><?= $row->Fees_in_lebanese ?> L.L. </p>
						</td>
						<td>
							<p><?= $row->Paid_in_Dollar ?> $ </p>
						</td>
						<td>
							<p><?= $row->Paid_in_lebanese ?> L.L. </p>
						</td>
					</tr>
				<?php endforeach; ?>
			<?php else : ?>
				<tr>
					<td colspan="5">
						<h4>No students were found at this time</h4>
					</td>
				</tr>
			<?php endif; ?>

		</table>
		<button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
		<button type="button" class="btn btn-success" onclick="exportToPDF('myTable')">Download PDF</button>
	</div>

	</form>

</div>

<?php $this->view('includes/footer') ?>