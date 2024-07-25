<?php $this->view('includes/header')?>
<title>Student Profile Edit</title>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>

		<?php if($row):?>
		<?php
 		$image = get_image($row->image,$row->gender);
 		?>
        <form method="post">
		<div class="row">
			<div class="col-sm-4 col-md-3">
				<img src="<?=$image?>" class="border border-primary d-block mx-auto rounded-circle " style="width:150px;">
				<h3 style="padding-top:10px" class="text-center col-11"><?=esc($row->firstname)?> <?=esc($row->lastname)?></h3>
		    </div>
        </div>
        <div class="row jumbotron box8">
      <div class="col-sm-12 mx-t3 mb-4">
        <h2 class="text-center text-primary">Edit Student Profile</h2>
      </div>
	<div class="col-sm-6 form-group">
        <label for="name-f">First Name[EN]</label>
        <input class="my-2 form-control" value="<?=get_var('firstname')?>"type="firstname" name="firstname" placeholder="First Name" autofocus></input>
      </div>
    <div class="col-sm-6 form-group">
        <label for="name-f">Middle Name[EN]</label>
        <input class="my-2 form-control" value="<?=get_var('middlename')?>"type="middlename" name="middlename" placeholder="Middle Name" autofocus></input>
      </div>
    <div class="col-sm-6 form-group">
        <label for="name-f">Last Name[EN]</label>
        <input class="my-2 form-control" value="<?=get_var('lastname')?>"type="lastname" name="lastname" placeholder="Last Name" autofocus></input>
      </div>
    <div class="col-sm-6 form-group">
        <label for="name-f">First Name[AR]</label>
        <input class="my-2 form-control" value="<?=get_var('firstname_ar')?>"type="firstname_ar" name="firstname_ar" placeholder="First Name[AR]" autofocus></input>
      </div>

    <div class="col-sm-6 form-group">
        <label for="name-f">Middle Name[AR]</label>
        <input class="my-2 form-control" value="<?=get_var('middlename_ar')?>"type="middlename_ar" name="middlename_ar" placeholder="Middle Name[AR]" autofocus></input>
      </div>

    <div class="col-sm-6 form-group">
        <label for="name-f">Last Name[AR]</label>
        <input class="my-2 form-control" value="<?=get_var('lastname_ar')?>"type="lastname_ar" name="lastname_ar" placeholder="Last Name[AR]" autofocus></input>
      </div>
    <div class="col-sm-6 form-group">
        <label for="Date">Date Of Birth</label>
        <input type="Date" value="<?=get_var('dob')?>" name="dob" class="form-control" id="Date" placeholder="" required>
      </div>
    <div class="col-sm-6 form-group">
        <label for="gender">Gender</label>
        <select name="gender" id="gender" class="form-control browser-default custom-select">
        <option <?=get_select('gender','')?> value="">Please choose a gender</option>
         <option <?=get_select('gender','male')?> value="male">Male</option>
         <option <?=get_select('gender','female')?> value="female">Female</option>
               </select>
      </div>
    
      <div class="col-sm-6 form-group">
        <label for="acad_year">Academic Year</label>
        <select name="acad_year" id="acad_year" class="form-control browser-default custom-select">
        <option <?=get_select('acad_year','')?> value="">Please choose an academic year</option>
          <option selected="true" <?=get_select('acad_year','2023-2024')?> value="2024">Academic Year 2023-2024</option>
        </select>
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
        <label for="st_type">Student Type</label>
        <select name="st_type" id="st_type" class="form-control browser-default custom-select">
        <option <?=get_select('st_type', '')?> value="" placeholder="Please choose a Student Type">Please choose a student type</option>
        <option <?=get_select('st_type', 'regular')?> value="regular">Regular</option>
         <option <?=get_selecT('st_type', 'sip')?> value="sip">SIP</option>
         <option <?=get_selecT('st_type', 'american_system')?> value="american_system">American System</option>
            </select>
      </div>
      <div class="col-sm-6 form-group">
        <label for="address-2">Address</label>
        <input type="address" value="<?=get_var('address')?>" name="address" class="form-control" id="Date" placeholder="Address" required>
      </div>
      
      <div class="col-sm-4 form-group">
        <label for="tel">Phone</label>
        <input <?=get_var('phone_number','phone_number')?>type="tel" name="phone_number" class="form-control" id="tel" placeholder="Mobile No." required>
      </div>
		<br>
        <button type="submit" href="<?=ROOT?>/stp/<?=$row->student_id?>" class="btn btn-primary float-end">Save Changes</button>
        <a href="<?=ROOT?>/stp/<?=$row->student_id?>">
            <button type="button" class="btn btn-danger">Back to profile</button>
        </a>  
        </form>  
		<!--to be worked on to include same functionality from Staff tabs-->
		
		<?php else:?>
			<center><h4>That profile was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
