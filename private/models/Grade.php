<?php
/**
 * Invoice Model
 */

 class Grade extends Model
 {
      protected $allowedColumns = [
            'fullname',
            'fullname_ar',
            'position',
            'academic_year',
            'class',
            'section',
            'exam1',
            'exam2',
            'exam3',
            'average'
        ];
    
       

    public function validate($DATA)
    {
         $this->errors = array();

        
         if(empty($DATA['fullname']))
         {
               $this->errors['fullname'] = "Full name cannot be empty.";
         }
         if(empty($DATA['fullname_ar']))
         {
               $this->errors['fullname_ar'] = "Please Select Full name in (arabic)";
         }
          
         if(empty($DATA['position']))
         {
               $this->errors['position'] = "position name cannot be empty.";
         }
         if(empty($DATA['academic_year']))
         {
               $this->errors['academic_year'] = "Please input Academic Year";
         }
         
         if(empty($DATA['Class']))
         {
               $this->errors['Class'] = "Please input Class.";
         }
         if(empty($DATA['Section']))
         {
              $this->errors['Section'] = "Please input Section.";
         }

         if(empty($DATA['exam1'])){
            $this->errors['exam1'] = "Exam 1 Grade cannot be empty.";
         }

         if(empty($DATA['exam2']))
         {
            $this->errors['exam2'] = "Exam 2 Grade cannot be empty.";
         }

         if(empty($DATA['exam3'])){
            
            $this->errors['exam3'] = "Exam 3 Grade cannot be empty.";
         }
        
         
         if(count($this->errors) == 0)
         {
               return true;
         }
         return false;
    }








 }
