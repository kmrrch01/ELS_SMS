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

        var_dump($_POST);
        if($user->validate($_POST))
        {
          $arr['firstname'] = $_POST['firstname'];
          $arr['middlename'] = $_POST['middlename'];
          $arr['lastname'] = $_POST['lastname'];
          $arr['email'] = $_POST['email'];
          $arr['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);
          $arr['position'] = $_POST['position'];
          $arr['gender'] = $_POST['gender'];
          $arr['acad_year'] = $_POST['acad_year'];
          $arr['school'] = $_POST['school'];
          $arr['st_type'] = $_POST['st_type'];
          $arr['section'] = $_POST['section'];
          $arr['date'] = date("Y-m-d H:i:s");

          $user->insert($arr);
          $redirect = $mode == 'students' ? 'students' : 'users';
          $this->redirect($redirect);

        }else
        {
          //errors
          $errors = $user->errors;
        }
      }

      $mode = isset($_GET['mode']) ? $_GET['mode'] : '';

      $this->view('signup',[
        'errors'=>$errors,
        'mode'=>$mode,
      ]);

    }
}
