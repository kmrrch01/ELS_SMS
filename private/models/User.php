<?php
/**
 * User Model
 */

 class User extends Model
 {
    protected $beforeInsert = ['make_user_id'];

   //protected $table = "users";
    public function validate($DATA)
    {
         $this->errors = array();

         //check for first_name
         if(empty($DATA['firstname']))
         {
               $this->errors['firstname'] = "First name cannot be empty.";
         }
          //check for middle_name
         if(empty($DATA['middlename']))
         {
               $this->errors['middlename'] = "Middle name cannot be empty.";
         }
          //check for last_name
         if(empty($DATA['lastname']))
         {
               $this->errors['lastname'] = "Last name cannot be empty.";
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
         if(empty($DATA['position']))
         {
          $this->errors['position'] = "Position cannot be empty.";
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

        $data['user_id'] = make_user_id_from_post();   
        return $data;         

      }


  public function hash_password($data)
  {
      var_dump($data);
      $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
      return $data;
  }

        function getSchoolID($schoolName)
        {
            $query = "select school_id from schools where school = $schoolName";
            $result = $query;

            return $result;
        }
        


 }

