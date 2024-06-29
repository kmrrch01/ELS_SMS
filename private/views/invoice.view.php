<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Invoice</title> 
    <script>
        function calculateSum() {
            // Get the values from the input fields
            var num1 = parseFloat(document.getElementById('Fees_in_Dollar').value);
            var num2 = parseFloat(document.getElementById('Paid_in_Dollar').value);
            
            
            // Calculate the sum
            var sum = num1 - num2;
            
            // Update the result textbox
            document.getElementById('Remain_in_Dollar').value = sum;
          
        }
    </script>
      <script>
        function calculateSum1() {
            // Get the values from the input fields
            var num3 = parseFloat(document.getElementById('Fees_in_lebanese').value);
            var num4 = parseFloat(document.getElementById('Paid_in_lebanese').value);
            
            // Calculate the sum
            var sum1 = num3 - num4;
            
            // Update the result textbox
            document.getElementById('Remain_in_lebanese').value = sum1;
           
        }
    </script>
    
    <script>
    function calculateDiscount() {
        // Get the values from the input fields
        let originalValue = parseFloat(document.getElementById('Remain_in_Dollar').value);
        let discountRate = parseFloat(document.getElementById('Discount_d').value);

        // Validate the input values
        if (isNaN(originalValue) || isNaN(discountRate)) {
            alert('Please enter valid numbers for both the original value and discount rate.');
            return;
        }

        // Calculate the discounted value
        let discountedValue = originalValue - (originalValue * (discountRate / 100));

        // Display the discounted value
        document.getElementById('Total_d').value = discountedValue.toFixed(2);
    }
</script>
<script>
    function calculateDiscount1() {
        // Get the values from the input fields
        let originalValue = parseFloat(document.getElementById('Remain_in_lebanese').value);
        let discountRate = parseFloat(document.getElementById('Discount').value);

        // Validate the input values
        if (isNaN(originalValue) || isNaN(discountRate)) {
            alert('Please enter valid numbers for both the original value and discount rate.');
            return;
        }

        // Calculate the discounted value
        let discountedValue = originalValue - (originalValue * (discountRate / 100));

        // Display the discounted value
        document.getElementById('Total').value = discountedValue.toFixed(2);
    }
</script>
     
</head>
<body style="background-image: url('<?=ASSETS?>/blue1.jpg');">
<div style="min-width:350px;">

<div class="container mt-3">
  <form method="post">
  <?php if(count($errors) > 0):?>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Errors:</strong>
            <?php foreach($errors as $error):?>
               <br><?=$error?>
            <?php endforeach?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <?php endif;?>



    <div class="row jumbotron box8">
      <div class="col-sm-12 mx-t3 mb-4">
        <h2 class="text-center text-primary">Payment Fees</h2>
      </div>
      
      <div class="col-sm-6 form-group">
        <label for="name-f">Full Name[EN]</label>    
            <input class="my-2 form-control" value="<?=get_var('fullname')?>"
            type="firstname" name="fullname" id="fullname" placeholder="Full Name" autofocus></input>
    </div>

    <div class="col-sm-6 form-group">
        <label for="name-f">Full Name[AR]</label>    
            <input class="my-2 form-control" value="<?=get_var('fullname_ar')?>"
            type="fullname_ar" name="fullname_ar" id="fullname_ar" placeholder="fullname_ar" autofocus></input>
    </div>

   
      
      <div class="col-sm-6 form-group">
        <label for="Position">Position</label>
        
            <input class="my-2 form-control" value="<?=get_var('position')?>"
            type="position" name="position" id="position" placeholder="position" autofocus></input>
      </div>


      <div class="col-sm-6 form-group">
        <label for="acad_year">Academic Year</label>
          
            <input class="my-2 form-control" value="<?=get_var('academic_year')?>"
            type="academic_year" name="academic_year" id="academic_year" placeholder="academic_year" autofocus></input>
      </div>

      <div class="col-sm-6 form-group">
        <label for="Class">Class</label>
        <select name="Class" id="Class" class="form-control browser-default custom-select">
        <option <?=get_select('Class','')?> value="" placeholder="Please Choose a Class">Please choose a class</option>
        <option <?=get_select('Class', 'general')?> name="general" value="general">General</option>
				<option <?=get_select('Class', 'grade_1')?> name="grade_1" value="grade_1">Grade 1</option>
				<option <?=get_select('Class', 'grade_2')?> name="grade_2" value="grade_2">Grade 2</option>
				<option <?=get_select('Class', 'grade_3')?> name="grade_3" value="grade_2">Grade 3</option>
				<option <?=get_select('Class', 'grade_4')?> name="grade_4" value="grade_2">Grade 4</option>
				<option <?=get_select('Class', 'grade_5')?> name="grade_5" value="grade_2">Grade 5</option>
				<option <?=get_select('Class', 'grade_6')?> name="grade_6" value="grade_2">Grade 6</option>
				<option <?=get_select('Class', 'grade_7')?> name="grade_7" value="grade_2">Grade 7</option>
				<option <?=get_select('Class', 'grade_8')?> name="grade_8" value="grade_2">Grade 8</option>
				<option <?=get_select('Class', 'grade_9')?> name="grade_9" value="grade_2">Grade 9</option>
				<option <?=get_select('Class', 'grade_10')?> name="grade_10" value="grade_2">Grade 10</option>
				<option <?=get_select('Class', 'grade_11')?> name="grade_11" value="grade_2">Grade 11</option>
				<option <?=get_select('Class', 'grade_12')?> name="grade_12" value="grade_2">Grade 12</option>
        </select>
      </div>

       <div class="col-sm-6 form-group">
        <label for="section">Section.</label>
        <select name="Section" id="Section" class="form-control browser-default custom-select">
        <option <?=get_select('st_type', '')?> value="" placeholder="Please Choose a Section">Please choose a section</option>
        <option <?=get_select('section', 'section_A')?> value="section_A">A</option>
         <option <?=get_selecT('section', 'section_B')?> value="section_B">B</option>
            </select>
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Fees in Dollar</label>
        <input class="my-2 form-control" value="<?=get_var('Fees_in_Dollar')?>"type="text" id="Fees_in_Dollar" name="Fees_in_Dollar" oninput="calculateSum()" placeholder="$" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Fees in lebanese lira</label>
        <input class="my-2 form-control" value="<?=get_var('Fees_in_lebanese')?>"type="text" id="Fees_in_lebanese" name="Fees_in_lebanese" placeholder="L.L." oninput="calculateSum1()" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Paid in $</label>
        <input class="my-2 form-control" value="<?=get_var('Paid_in_Dollar')?>"type="text" id="Paid_in_Dollar" name="Paid_in_Dollar" oninput="calculateSum()" placeholder="..." autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Paid in L.L.</label>
        <input class="my-2 form-control" value="<?=get_var('Paid_in_lebanese')?>"type="text" id="Paid_in_lebanese" name="Paid_in_lebanese" placeholder="...." oninput="calculateSum1()" autofocus></input>
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Remain in $</label>
        <input class="my-2 form-control" value="<?=get_var('Remain_in_Dollar')?>"type="text" id="Remain_in_Dollar" name="Remain_in_Dollar"  placeholder="..." autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Remain in L.L.</label>
        <input class="my-2 form-control" value="<?=get_var('Remain_in_lebanese')?>"type="text" id="Remain_in_lebanese" name="Remain_in_lebanese"  placeholder="...." autofocus></input>        
      </div>
    
      <div class="col-sm-6 form-group">
        <label for="name-f">Discount in $</label>
        <input class="my-2 form-control" value="<?=get_var('Discount_d')?>" type="text" id="Discount_d" name="Discount_d"  placeholder="..." oninput="calculateDiscount()" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Discount in L.L.</label>
        <input class="my-2 form-control" value="<?=get_var('Discount')?>" type="text" id="Discount" name="Discount"  placeholder="...." oninput="calculateDiscount1()" autofocus></input>
        
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Total in $</label>
        <input class="my-2 form-control" type="text" value="<?=get_var('Total_d')?>" id="Total_d" name="Total_d"  placeholder="..." autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Total in L.L.</label>
        <input class="my-2 form-control" type="text" value="<?=get_var('Total')?> " id="Total" name="Total"  placeholder="...." autofocus></input>
        
      </div>
        <center><button style="margin-left:20%;" class="fs-1 btn btn-primary" >Submit</button></center>
        
        <a href="<?=ROOT?>/Fees_billing">
			 		<input style="margin-left:30%;"class="btn btn-danger" type="button" value="Cancel">
			 	</a>    

    </div>
  </form>
</div>
<script type="text/javascript" src="assets/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap.min.js"></script>


         </body>
         </html>