<?php
/**
 * Invoice Model
 */

 class Invoice extends Model
 {
      protected $allowedColumns = [
            'fullname',
            'fullname_ar',
            'academic_year',
            'Class',
            'parent_id',
            'Section',
            'Fees_in_Dollar',
            'Fees_in_lebanese',
            'Paid_in_Dollar',
            'Paid_in_lebanese',
            'Remain_in_Dollar',
            'Remain_in_lebanese',
            'Discount_d',
            'Discount',
            'Total_d',
            'Total',
           
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
          
         
         if(empty($DATA['Class']))
         {
               $this->errors['Class'] = "Please input Class.";
         }
         if(empty($DATA['Section']))
         {
              $this->errors['Section'] = "Please input Section.";
         }

         if(empty($DATA['Fees_in_Dollar'])){
            $this->errors['Fees_in_Dollar'] = "Fees cannot be empty.";
         }

         if(empty($DATA['Fees_in_lebanese']))
         {
            $this->errors['Fees_in_lebanese'] = "Fees cannot be empty.";
         }

         if(empty($DATA['Paid_in_Dollar'])){
            
            $this->errors['Paid_in_Dollar'] = "Paid cannot be empty.";
         }
        
         if(empty($DATA['Paid_in_lebanese']))
         {
          $this->errors['Paid_in_lebanese'] = "Paid cannot be empty.";
         }
       
         if(empty($DATA['Remain_in_Dollar']))
         {
          $this->errors['Remain_in_Dollar'] = "Remain cannot be empty.";
         }
        
         if(empty($DATA['Remain_in_lebanese']))
         {
          $this->errors['Remain_in_lebanese'] = "Remain cannot be empty.";
         }


         
         if(count($this->errors) == 0)
         {
               return true;
         }
         return false;
    }


    







 }
