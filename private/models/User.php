<?php
/**
 * User Model
 */

 class User extends Model
 {


   //protected $table = "users";
    public function validate($DATA)
    {
         $this->errors = array();

         //check for first_name
         if(empty($DATA['first_name']))
         {
               $this->errors['first_name'] = "First name cannot be empty.";
         }
          //check for middle_name
         if(empty($DATA['middle_name']))
         {
               $this->errors['middle_name'] = "Middle name cannot be empty.";
         }
          //check for last_name
         if(empty($DATA['last_name']))
         {
               $this->errors['last_name'] = "Last name cannot be empty.";
         }
          //check for email
         if(empty($DATA['email']) || !filter_var($DATA['email'],FILTER_VALIDATE_EMAIL))
         {
               $this->errors['email'] = "Email is invalid";
         }
         //check for gender
         if(empty($DATA['gender']))
         {
          $this->errors['gender'] = "Please choose a gender.";
         }
         //check for academic year
         if(empty($DATA['acad_year']))
         {
          $this->errors['acad_year'] = "Academic year cannot be empty.";
         }
         //check for level
         if(empty($DATA['level']))
         {
          $this->errors['level'] = "Level cannot be empty.";
         }

                  //check for password
         if(empty($DATA['password']) || $DATA['password'] != $DATA['password2'] )
         {
               $this->errors['password'] = "The passwords do not match";
         }

         if(strlen($DATA['password']) < 8)
         {
            $this->errors['password'] = "Password must be at least 8 characters long.";
         }

         if(count($this->errors) == 0)
         {
               return true;
         }
         return false;
    }


    //test function for rng
      function make_user_id($data) 
      {

            $data['user_id'] = $this->randString(15);   
            return $data;         

      }


  public function hash_password($data)
  {
      var_dump($data);
      $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
      return $data;
  }

public function randString($length)
{
      $array = array(0,1,2,3,4,5,6,7,8,9, 'a', 'b', 'c', 'd','e','f','g','h','i','j','k', '1', 'm','n','o','p','q','r','s','t','u','v','w','x','y','z');
      $text = "";
      for($x = 0; $x < $length; $x++)
      {
      $random = rand(0,16);
      $text .= $array[$random];
      }
      return $text;
     
}




 }


