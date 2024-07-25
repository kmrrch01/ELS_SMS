<?php

/**
 * signup controller
 */
class Signup extends Controller 
{

  function index()
  {
      $mode = isset($_GET['mode']) ? $_GET['mode'] : '';
      $errors = array();
  
      if(count($_POST) > 0){
          $user = new User();
  
          if($user->validate($_POST)) {
              
  
              // Proceed with user data insertion if no errors
              if (empty($errors)) {
                  $arr = array(
                      'firstname' => $_POST['firstname'],
                      'middlename' => $_POST['middlename'],
                      'lastname' => $_POST['lastname'],
                      'spouse'=> $_POST['spouse'],
                      'firstname_ar' => $_POST['firstname_ar'],
                      'middlename_ar' => $_POST['middlename_ar'],
                      'lastname_ar' => $_POST['lastname_ar'],
                      'spouse_ar'=> $_POST['spouse_ar'],
                      'dob' => $_POST['dob'],
                      'phone_number' => $_POST['phone_number'],
                      'email' => $_POST['email'],
                      'address' => $_POST['address'],
                      'password' => password_hash($_POST['password'], PASSWORD_DEFAULT),
                      'position' => $_POST['position'],
                      'gender' => $_POST['gender'],
                      'acad_year' => $_POST['acad_year'],
                      'class' => $_POST['class'],
                      'st_type' => $_POST['st_type'],
                      'section' => $_POST['section'],
                      'date' => date("Y-m-d H:i:s")
                  );
  
                  // Insert user data
                  $user->insert($arr);
  
                  // Redirect after successful insertion
                  $redirect = ($mode == 'students') ? 'students' : 'users';
                  $this->redirect($redirect);
              }
  
          } else {
              // Handle validation errors
              $errors = $user->errors;
          }
      }
  
      // Render the signup view with errors and mode
      $this->view('signup', array(
          'errors' => $errors,
          'mode' => $mode
      ));
  }
  
  
}