<?php
/**
 * Student Model
 */

 class Student extends Model
 {
      protected $table = 'students';
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
        ];
    
        protected $beforeInsert = [
            'make_student_id',
            'make_class_id',
        ];

        protected $afterInsert = [
            'insertIntoGrade',
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

      public function insertIntoGrade($data){
            if(!isset($data['class'])){
                return $data;
            }
            
            $student_class = $data['class'];

            //loop through all the grades and insert the student into the correct grade according to their $data['class']
            //try grade_1
            if($student_class == 'grade_1'){
                // Check if student_id is complete, if not, generate it
                if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
        
                $grade1 = new Grade_1();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                
                $grade1->insert($arr);

            //try grade_2
            }elseif($student_class == 'grade_2'){
                // Check if student_id is complete, if not, generate it
                if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
        
                $grade2 = new Grade_2();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                
                $grade2->insert($arr);


            //try grade_3
            }elseif($student_class == 'grade_3'){
                 // Check if student_id is complete, if not, generate it
                 if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
        
                $grade3 = new Grade_3();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                
                $grade3->insert($arr);

            //try grade_4
            }elseif($student_class == 'grade_4'){
                  // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
        
                $grade4 = new Grade_4();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                
                $grade4->insert($arr);

            //try grade_5
            }elseif($student_class == 'grade_5'){
                  // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }

                $grade5 = new Grade_5();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );

                $grade5->insert($arr);
            
            //try grade_6
            }elseif($student_class == 'grade_6'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade6 = new Grade_6();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade6->insert($arr);

            //try grade_7
            }elseif($student_class == 'grade_7'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade7 = new Grade_7();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade7->insert($arr);
            
            //try grade_8
            }elseif($student_class == 'grade_8'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade8 = new Grade_8();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade8->insert($arr);

            //try grade_9
            }elseif($student_class == 'grade_9'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade9 = new Grade_9();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade9->insert($arr);
            
            //try grade_10
            }elseif($student_class == 'grade_10'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade10 = new Grade_10();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade10->insert($arr);
            
            //try grade_11S
            }elseif($student_class == 'grade_11s'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade11s = new Grade_11S();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade11s->insert($arr);

            //try grade_11L
            }elseif($student_class == 'grade_11l'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade11l = new Grade_11L();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade11l->insert($arr);

            //try grade_12LS
            }elseif($student_class == 'grade_12ls'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade12ls = new Grade_12LS();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade12ls->insert($arr);
            
            //try grade_12ES
            }elseif($student_class == 'grade_12es'){
                // Check if student_id is complete, if not, generate it
                  if (!isset($data['student_id']) || strlen($data['student_id']) <= 4) {
                    $data['student_id'] = make_student_id_from_post();
                }
                $grade12es = new Grade_12ES();
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                );
                $grade12es->insert($arr);
            }

            
            return $data;
        }
        



 }
