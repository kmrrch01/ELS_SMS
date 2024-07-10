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
    <div style="padding-left:0px;">
		<h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
      USERS AND STAFF <hr> <i class="fa-solid fa-clipboard-user fa-1x"></i></h1>
		</div>
    <?php //$this->view('includes/crumbs');?>
    <nav class="navbar navbar-light bg-light">
    <form class="form-inline">
		    <div class="input-group">
		      <div class="input-group-prepend">
		        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-search"></i>&nbsp</span>
		      </div>
		      <input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
		    </div>
		  </form>
  <div><a href="<?=ROOT?>/signup">
      <h1 class="mx-3 btn btn-primary" style="font-size:15px;"><i class="fa-solid fa-plus"></i> Add new</h1>
</a></div>
</nav>
      <!--<div class="card-group justify-content-center">-->
        <?php if($rows):?>
          <table class="table table-striped table-hover" id="myTable">
          <tr><th>First Name</th><th>Last Name</th><th>Position</th><th>Profile</th></tr>
        
          <?php foreach($rows as $row):?>
              <?php include(views_path('user'));?>
              
          <?php endforeach;?>
          <?php else:?>
            <h4> No staff members were found.</h4>
          </table>
          <?php endif;?>
          

      </div>

</div>
</div>



<?php $this->view('includes/footer')?>