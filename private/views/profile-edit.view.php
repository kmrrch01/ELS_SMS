<?php $this->view('includes/header')?>
<title>Profile Edit</title>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php //$this->view('includes/crumbs',['crumbs'=>$crumbs])?>
        <h4><center>Edit Profile</center></h4>

		<?php if($row):?>
		<?php
 			$image = get_image($row->image,$row->gender);
 		?>

		<div class="row">
			<div class="col-sm-4 col-md-3">
				<img src="<?=$image?>" class="border d-block mx-auto " style="width:150px;">
				<br>
				<div class ="text-center">
				 <button class = "btn-sm btn btn-info text-white">Browse Image</button>
				</div>
			</div>
			<div class="col-sm-8 col-md-9 bg-light p-2">
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
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">First Name[EN]</label>
        <input class="my-2 form-control" value="<?=$row->firstname?>"type="firstname" name="firstname" placeholder="First Name" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Middle Name[EN]</label>
        <input class="my-2 form-control" value="<?=$row->middlename?>"type="middlename" name="middlename" placeholder="Middle Name" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">Last Name[EN]</label>
        <input class="my-2 form-control" value="<?=$row->lastname?>"type="lastname" name="lastname" placeholder="Last Name" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f">First Name[AR]</label>
        <input class="my-2 form-control" value="<?=$row->firstname_ar?>"type="firstname_ar" name="firstname_ar" placeholder="First Name[AR]" autofocus></input>
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Middle Name[AR]</label>
        <input class="my-2 form-control" value="<?=$row->middlename_ar?>"type="middlename_ar" name="middlename_ar" placeholder="Middle Name[AR]" autofocus></input>
      </div>

      <div class="col-sm-6 form-group">
        <label for="name-f">Last Name[AR]</label>
        <input class="my-2 form-control" value="<?=$row->lastname_ar?>"type="lastname_ar" name="lastname_ar" placeholder="Last Name[AR]" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="Date">Date Of Birth</label>
        <input type="Date" value="<?=$row->dob?>" name="dob" class="form-control" id="Date" placeholder="">
      </div>
      <div class="col-sm-6 form-group">
        <label for="gender">Gender</label>
        <select class="my-2 form-control" name="gender">
							<option <?=get_select('gender',$row->gender)?> value="<?=$row->gender?>"><?=ucwords($row->gender)?></option>
							<option <?=get_select('gender','male')?> value="male">Male</option>
							<option <?=get_select('gender','female')?> value="female">Female</option>
						</select>
      </div>
      <div class="col-sm-6 form-group">
      <label for="Position">Position</label>
        <select name="position" id="Position" class="form-control browser-default custom-select">
        <option <?=get_select('position','')?> value="<?=$row->position?>"><?=ucwords($row->position)?></option>
        <option <?=get_select('position','super_admin')?> value="super_admin">Super Admin</option>
        <option <?=get_select('position','admin')?> value="admin">Admin</option>
        <option <?=get_select('position','principal')?> value="principal">Principal</option>
        <option <?=get_select('position','teacher')?> value="teacher">Teacher</option>
        <option <?=get_select('position','student')?> value="student">Student</option>
        <option <?=get_select('position','parent')?> value="parent">Parent</option>
        </select>
        </div>
      <div class="col-sm-6 form-group">
        <label for="acad_year">Academic Year</label>
        <select name="acad_year" id="acad_year" class="form-control browser-default custom-select">
        <option <?=$row->acad_year?> value="">Please choose an academic year</option>
          <option selected="true" <?=$row->acad_year?> value="2024">Academic Year 2023-2024</option>
        </select>
      </div>
      <div class="col-sm-6 form-group">
        <label for="class">Class</label>
        <select name="class"  value="<?=ucwords($row->position)?>" id="class" class="form-control browser-default custom-select">
				<option <?=$row->class?> name="grade_1" value="grade_1">Grade 1</option>
				<option <?=$row->class?> name="grade_2" value="grade_2">Grade 2</option>
				<option <?=$row->class?> name="grade_3" value="grade_2">Grade 3</option>
				<option <?=$row->class?> name="grade_4" value="grade_2">Grade 4</option>
				<option <?=$row->class?> name="grade_5" value="grade_2">Grade 5</option>
				<option <?=$row->class?> name="grade_6" value="grade_2">Grade 6</option>
				<option <?=$row->class?> name="grade_7" value="grade_2">Grade 7</option>
				<option <?=$row->class?> name="grade_8" value="grade_2">Grade 8</option>
				<option <?=$row->class?> name="grade_9" value="grade_2">Grade 9</option>
				<option <?=$row->class?> name="grade_10" value="grade_2">Grade 10</option>
				<option <?=$row->class?> name="grade_11" value="grade_2">Grade 11</option>
				<option <?=$row->class?> name="grade_12" value="grade_2">Grade 12</option>
        </select>
      </div>
       <div class="col-sm-6 form-group">
        <label for="section">Section.</label>
        <select name="section" id="section" value= "<?=$row->section?>"class="form-control browser-default custom-select">
        <option <?=$row->section?> value="section_A">A</option>
         <option <?=$row->section?> value="section_B">B</option>
            </select>
      </div>
      <div class="col-sm-6 form-group">
        <label for="st_type">Student Type</label>
        <select name="st_type" id="st_type" value="<?=$row->st_type?>" class="form-control browser-default custom-select">
        <option <?=$row->st_type?> value="regular">Regular</option>
         <option <?=$row->st_type?> value="sip">SIP</option>
         <option <?=$row->st_type?> value="american_system">American System</option>
            </select>
      </div>
      <div class="col-sm-6 form-group">
        <label for="address-2">Address</label>
        <input type="address" value="<?=$row->address?>" name="address" class="form-control" id="Date" placeholder="Address" required>
      </div>
      <div class="col-sm-6 form-group">
        <label for="tel">Phone</label>
        <input <?=$row->phone_number?> value="<?=$row->phone_number?>" type="tel" name="phone_number" class="my-2 form-control" id="tel" placeholder="Mobile No." required>
      </div>
      <div class="col-sm-6 form-group">
        <label for="email">Email</label>
        <input <?=$row->email?>type="email" value="<?=$row->email?>" class="my-2 form-control" name="email" id="email" placeholder="Enter your email" required>
      </div>
      <div class="col-sm-6 form-group">
        <label for="password">Password</label>
        <input class="my-2 form-control" value="<?=$row->password?>"type="password" name="password" placeholder="Enter Your Password" autofocus></input>
      </div>
      <div class="col-sm-6 form-group">
        <label for="password2">Confirm Password</label>
        <input class="my-2 form-control" value="<?=$row->password2?>"type="password" name="password2" placeholder="Confirm Your Password" autofocus></input>
	   </div>
     
    <button type="submit" href="<?=ROOT?>/profile/<?=$row->user_id?>" class="btn btn-primary float-end">Save Changes</button>
    
     <a href="<?=ROOT?>/profile/<?=$row->user_id?>">
				<button type="button" class="btn btn-danger">Back to profile</button>
			</a>    
    </div>
  </form>
			</div>
		</div>
		<br>
		<div class="container-fluid">
			<nav class="navbar navbar-light bg-light">
			  <form class="form-inline">
			    <div class="input-group">
			      <div class="input-group-prepend">
			      </div>
			    </div>
			  </form>
			</nav>

		</div>
        <br>
		
		<?php else:?>
			<center><h4>That profile was not found!</h4></center>
		<?php endif;?>

	</div>

<?php $this->view('includes/footer')?>
