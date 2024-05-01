<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Signup</title> 
</head>
<body style="background-image: url('assets/blue1.jpg');">
<div style="min-width:350px;">



<!-- USE THE STUDENT REGISTRATION FORM FROM PICTURES ON WTSP GROUP-->

<form style="width: 100%;" method="post">
        <div class="container-lg text-center">
            <div class="border border-primary p-4 mx-auto shadow rounded" style="background-color: #282855; margin-top: 100px;width: 100%; max-width: 340px;">
            <h4 class="text-center" style="color: white; margin-top: 5px;">Student Registration</h4>
            <img src="assets/els_logo1.png" class="mx-auto d-block rounded-circle" style="width: 250px;">
            <br>
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
             <input class="my-2 form-control" value="<?=get_var('first_name')?>"type="first_name" name="first_name" placeholder="First Name" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('middle_name')?>"type="middle_name" name="middle_name" placeholder="Middle Name" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('last_name')?>"type="last_name" name="last_name" placeholder="Last Name" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('email')?>"type="email" name="email" placeholder="Email" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('acad_year')?>"type="number" name="acad_year" placeholder="Academic Year" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('password')?>"type="password" name="password" placeholder="Password" autofocus></input>
             <input class="my-2 form-control" value="<?=get_var('password2')?>"type="password" name="password2" placeholder="Confirm Password" autofocus></input>


             <select class="my-2 form-control" name="gender" id="Gender">
                <option <?=get_select('gender','')?> value="">--Select a Gender--</option>
                <option <?=get_select('gender','male')?> value="male">Male</option>
                <option <?=get_select('gender','male')?> value="female">Female</option>
             </select>


             <select class="my-2 form-control" name="level" id="Level">
                <option <?=get_select('gender','')?> value="">--Select a Level--</option>
                <option <?=get_select('gender','student')?> value="student">Student</option>
                <option <?=get_select('gender','registrar')?> value="registrar">Registrar</option>
                <option <?=get_select('gender','teacher')?> value="teacher">Teacher</option>
                <option <?=get_select('gender','admin')?> value="admin">Admin</option>
                <option <?=get_select('gender','super_admin')?> value="super_admin">Super Admin</option>
             </select>
             
             <select name="class" class="my-2 form-control" id="Class">
             <option <?=get_select('class','')?> value="">--Select a Class--</option>
                <option <?=get_select('class','kg1')?> value="kg1">KG1</option>
                <option <?=get_select('class', 'kg2')?> value="kg2">KG2</option>
                <option <?=get_select('class', 'kg3')?> value="kg3">KG3</option>
                <option <?=get_select('class', 'grade_1')?> value="grade_1">Grade 1</option>
                <option <?=get_select('class', 'grade_2')?> value="grade_2">Grade 2</option>
                <option <?=get_select('class', 'grade_3')?> value="grade_3">Grade 3</option>
                <option <?=get_select('class', 'grade_4')?> value="grade_4">Grade 4</option>
                <option <?=get_select('class', 'grade_5')?> value="grade_5">Grade 5</option>
                <option <?=get_select('class', 'grade_6')?> value="grade_6">Grade 6</option>
                <option <?=get_select('class', 'grade_7')?> value="grade_7">Grade 7</option>
                <option <?=get_select('class', 'grade_8')?> value="grade_8">Grade 8</option>
                <option <?=get_select('class', 'grade_9')?> value="grade_9">Grade 9</option>
                <option <?=get_select('class', 'grade_10')?> value="grade_10">Grade 10</option>
                <option <?=get_select('class', 'grade_11')?>value="grade_11">Grade 11</option>
                <option <?=get_select('class', 'grade_12')?> value="grade_12">Grade 12</option>
             </select>

             <select name="section" class="my-2 form-control" id="Section">
                <option <?=get_select('section', '')?> value=''>--Select a Section--</option>
                <option <?=get_select('section', 'section_A')?> value="section_A">A</option>
                <option <?=get_selecT('section', 'section_B')?> value="section_B">B</option>
             </select>

             <select name="st_type" class="my-2 form-control" id="StdType">
                <option <?=get_select('st_type', '')?> value="">--Select a Student Type</option>
                <option <?=get_select('st_type','regular')?> value="regular">Regular</option>
                <option <?=get_select('st_type', 'sip')?> value="sip">SIP</option>
                <option <?=get_select('st_type', 'american_system')?> value="american_system">American System</option>
             </select>
                    <br>
                    <button class="btn btn-primary float-end">Create User</button>
                    <button type="button" class="btn btn-danger text-white">Cancel</button>
            </div>


        </div>
        </form>

</div>
<script type="text/javascript" src="assets/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap.min.js"></script>

</body>
</html>