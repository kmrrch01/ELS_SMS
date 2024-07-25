<?php
/**
 * Student Model
 */

 class Fees_model extends Model
 {
      protected $allowedColumns = [
            'firstname',
            'middlename',
            'lastname',
            'acad_year',
            'class',
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
