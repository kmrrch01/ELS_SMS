<?php

/**
 * signup controller
 */
class Signup extends Controller 
{

    function index()
   {
      $errors = array();
    
      if(count($_POST) > 0){

        $user = new User();

        if($user->validate($_POST))
        {
          $arr['first_name'] = $_POST['first_name'];
          $arr['middle_name'] = $_POST['middle_name'];
          $arr['last_name'] = $_POST['last_name'];
          $arr['email'] = $_POST['email'];
          $arr['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);
          $arr['level'] = $_POST['level'];
          $arr['gender'] = $_POST['gender'];
          $arr['acad_year'] = $_POST['acad_year'];
          $arr['st_type'] = $_POST['st_type'];
          $arr['section'] = $_POST['section'];
          $arr['date'] = date("Y-m-d H:i:s");

          $user->insert($arr);
          $this->redirect('login');


        }else
        {
          //errors
          $errors = $user->errors;
        }
      }

      $this->view('signup',[
        'errors'=>$errors,
      ]);

    }
}
