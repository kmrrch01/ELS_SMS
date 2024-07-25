<?php
/**
 * User Model
 */

 class User extends Model
 {
      protected $table = 'users';
      protected $allowedColumns = [
            'firstname',
            'middlename',
            'lastname',
            'spouse',
            'firstname_ar',
            'middlename_ar',
            'lastname_ar',
            'spouse_ar',
            'acad_year',
            'email',
            'password',
            'class',
            'dob',
            'address',
            'phone_number',
            'st_type',
            'section',
            'class_id',
            'gender',
            'position',
            'date',
        ];
    
        protected $beforeInsert = [
            'make_user_id',
            'hash_password',
            'make_class_id',
        ];

   //protected $table = "users";
    public function validate($DATA)
    {
         $this->errors = array();

         //check for first_name
         if(empty($DATA['firstname']))
         {
               $this->errors['firstname'] = "First name cannot be empty.";
         }
         if(empty($DATA['firstname_ar']))
         {
               $this->errors['firstname_ar'] = "Please inut first name (arabic)";
         }
          //check for middle_name
         if(empty($DATA['middlename']))
         {
               $this->errors['middlename'] = "Middle name cannot be empty.";
         }
         if(empty($DATA['middlename_ar']))
         {
               $this->errors['middlename_ar'] = "Please input middle name (arabic)";
         }
          //check for last_name
         if(empty($DATA['lastname']))
         {
               $this->errors['lastname'] = "Last name cannot be empty.";
         }
         if(empty($DATA['lastname_ar']))
         {
               $this->errors['lastname_ar'] = "Please input last name (arabic)";
         }
          //check for email
         if(empty($DATA['email']) || !filter_var($DATA['email'],FILTER_VALIDATE_EMAIL))
         {
               $this->errors['email'] = "Email is invalid";
         }
         if(empty($DATA['address'])){
            $this->errors['address'] = "Address cannot be empty.";
         }

         if(empty($DATA['phone_number'])){
            
            $this->errors['phone_number'] = "Phone number cannot be empty.";
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
  
      public function make_class_id($data)
      {
          if (!isset($data['class'])) {
              return ["error" => "Missing class data"];
          }
      
          $name_prefix = $data['class'];
          // Generate the ID 
          $school_id = "ELS" . '_' . strtoupper($name_prefix);
          $data['class_id'] = $school_id;
      
          return $data;
      }
        // Function to get school ID based on school name
   
        
        

  
      
  public function hash_password($data)
  {
      var_dump($data);
      $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
      return $data;
  }




 }
