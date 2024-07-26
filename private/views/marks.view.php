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
            var exam1 = parseFloat(document.getElementById('exam1').value);
            var exam2 = parseFloat(document.getElementById('exam2').value);
            var exam3 = parseFloat(document.getElementById('exam3').value);
            
            // Calculate the sum
            var average = (exam1 + exam2 + exam3) / 3;
            
            // Update the result textbox
            document.getElementById('average').value = average;
          
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
        <h2 class="text-center text-primary">Grades</h2>
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
        <label for="academic_year">Academic Year</label>
          
            <input class="my-2 form-control" value="<?=get_var('academic_year')?>"
            type="academic_year" name="academic_year" id="academic_year" placeholder="academic_year" autofocus></input>
      </div>

      <div class="col-sm-6 form-group">
        <label for="class">Class</label>
        <select name="class" id="class" class="form-control browser-default custom-select">
        <option <?=get_select('class','')?> value="" placeholder="Please Choose a Class">Please choose a class</option>
        <option <?=get_select('class', 'general')?> name="general" value="general">General</option>
				<option <?=get_select('class', 'grade_1')?> name="grade_1" value="grade_1">Grade 1</option>
				<option <?=get_select('class', 'grade_2')?> name="grade_2" value="grade_2">Grade 2</option>
				<option <?=get_select('class', 'grade_3')?> name="grade_3" value="grade_2">Grade 3</option>
				<option <?=get_select('class', 'grade_4')?> name="grade_4" value="grade_2">Grade 4</option>
				<option <?=get_select('class', 'grade_5')?> name="grade_5" value="grade_2">Grade 5</option>
				<option <?=get_select('class', 'grade_6')?> name="grade_6" value="grade_2">Grade 6</option>
				<option <?=get_select('class', 'grade_7')?> name="grade_7" value="grade_2">Grade 7</option>
				<option <?=get_select('class', 'grade_8')?> name="grade_8" value="grade_2">Grade 8</option>
				<option <?=get_select('class', 'grade_9')?> name="grade_9" value="grade_2">Grade 9</option>
				<option <?=get_select('class', 'grade_10')?> name="grade_10" value="grade_2">Grade 10</option>
				<option <?=get_select('class', 'grade_11')?> name="grade_11" value="grade_2">Grade 11</option>
				<option <?=get_select('class', 'grade_12')?> name="grade_12" value="grade_2">Grade 12</option>
        </select>
      </div>

       <div class="col-sm-6 form-group">
        <label for="section">Section.</label>
        <select name="section" id="section" class="form-control browser-default custom-select">
        <option <?=get_select('st_type', '')?> value="" placeholder="Please Choose a Section">Please choose a section</option>
        <option <?=get_select('section', 'section_A')?> value="section_A">A</option>
         <option <?=get_selecT('section', 'section_B')?> value="section_B">B</option>
            </select>
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Exam 1 Grade</label>
        <input class="my-2 form-control" value="<?=get_var('exam1')?>"type="text" id="exam1" name="exam1" oninput="calculateSum()" placeholder="...." autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Exam 2 Grade</label>
        <input class="my-2 form-control" value="<?=get_var('exam2')?>"type="text" id="exam2" name="exam2" placeholder="...." oninput="calculateSum()" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Exam 3 Grade</label>
        <input class="my-2 form-control" value="<?=get_var('exam3')?>"type="text" id="exam3" name="exam3" oninput="calculateSum()" placeholder="..." autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Average</label>
        <input class="my-2 form-control" value="<?=get_var('average')?>"type="text" id="average" name="average" placeholder="...." oninput="calculateSum()" autofocus></input>
      </div>

        <center><button style="margin-left:20%;" class="fs-1 btn btn-primary">Submit</button></center>
        
        <a href="<?=ROOT?>/Grade_Calc">
			 		<input style="margin-left:30%;"class="btn btn-danger" type="button" value="Cancel">
			 	</a>    

    </div>
  </form>
</div>
<script type="text/javascript" src="assets/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap.min.js"></script>


         </body>
         </html>