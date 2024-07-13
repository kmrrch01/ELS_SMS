<?php

/**
 * signup controller
 */
class Student_signup extends Controller 
{

  function index()
  {
      $mode = isset($_GET['mode']) ? $_GET['mode'] : '';
      $errors = array();
  
      if(count($_POST) > 0){
          $student = new Student();
  
          if($student->validate($_POST)) {
              
  
              // Proceed with user data insertion if no errors
              if (empty($errors)) {
                  $arr = array(
                      'firstname' => $_POST['firstname'],
                      'middlename' => $_POST['middlename'],
                      'lastname' => $_POST['lastname'],
                      'firstname_ar' => $_POST['firstname_ar'],
                      'middlename_ar' => $_POST['middlename_ar'],
                      'lastname_ar' => $_POST['lastname_ar'],
                      'dob' => $_POST['dob'],
                      'gender' => $_POST['gender'],
                      'acad_year' => $_POST['acad_year'],
                      'class' => $_POST['class'],
                      'st_type' => $_POST['st_type'],
                      'section' => $_POST['section'],
                      'date' => date("Y-m-d H:i:s")
                  );
  
                  // Insert user data
                  $student->insert($arr);
  
                  // Redirect after successful insertion
                  $this->redirect('students');
              }
  
          } else {
              // Handle validation errors
              $errors = $student->errors;
          }
      }
  
      // Render the signup view with errors and mode
      $this->view('student_signup', array(
          'errors' => $errors,
          'mode' => $mode
      ));
  }
  
  
}