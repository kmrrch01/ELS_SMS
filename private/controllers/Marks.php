<?php

/**
 * Marks controller
 */
class Marks extends Controller 
{

  function index()
  {
    
        
      $mode = isset($_GET['mode']) ? $_GET['mode'] : '';
      $errors = array();
  
      if(count($_POST) > 0){
          $grade = new Grade();
  
          if($grade->validate($_POST)) {
              
  
            // Proceed with user data insertion if no errors
            if (empty($errors)) {
                $arr = array(
                    'fullname' => $_POST['fullname'],
                    'fullname_ar' => $_POST['fullname_ar'],
                    'position' => $_POST['position'],
                    'academic_year' => $_POST['academic_year'],
                    'class' => $_POST['class'],
                    'section' => $_POST['section'],
                    'exam1' => $_POST['exam1'],
                    'exam2' => $_POST['exam2'],
                    'exam3' => $_POST['exam3'],
                    'average' => $_POST['average'],
                
                );


  
                  // Insert user data
                  $grade->insert($arr);
  
                  
              }
  
          } else {
              // Handle validation errors
              $errors = $grade->errors;
          }
      }
  
     // Render the signup view with errors and mode
     $this->view('marks', array(
        'errors' => $errors,
        'mode' => $mode
    ));

    


  }
 
}