<?php
/**
 * Student Model
 */

 class Student extends Model
 {
      protected $allowedColumns = [
            'firstname',
            'middlename',
            'lastname',
            'firstname_ar',
            'middlename_ar',
            'lastname_ar',
            'acad_year',
            'class',
            'class_id',
            'dob',
            'st_type',
            'section',
            'gender',
            'date',
            'PoB',
            'Nationality',
            'blood_type',
            'health_condition',
            'home_phone',
            'address', 
            'MISC',
            'cell_phone1', 
            'cell_phone2',
            'email',
        ];
    
        protected $beforeInsert = [
            'make_student_id',
        ];
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

         if(count($this->errors) == 0)
         {
               return true;
         }
         return false;
    }


    //test function for rng
      function make_student_id($data) 
      {

        $data['student_id'] = make_student_id_from_post();   
        return $data;         

      }
  



 }
