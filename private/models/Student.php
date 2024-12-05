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

                //grade_1 init
                $grade_1_mathT1 = new Grade_1_mathT1();
                $grade_1_mathT2 = new Grade_1_mathT2();
                $grade_1_mathT3 = new Grade_1_mathT3();
                $grade_1_englishT1 = new Grade_1_englishT1();
                $grade_1_englishT2 = new Grade_1_englishT2();
                $grade_1_englishT3 = new Grade_1_englishT3();
                $grade_1_arabicT1 = new Grade_1_arabicT1();
                $grade_1_arabicT2 = new Grade_1_arabicT2();
                $grade_1_arabicT3 = new Grade_1_arabicT3();
                $grade_1_scienceT1 = new Grade_1_scienceT1();
                $grade_1_scienceT2 = new Grade_1_scienceT2();
                $grade_1_scienceT3 = new Grade_1_scienceT3();
                $grade_1_religionT1 = new Grade_1_religionT1();
                $grade_1_religionT2 = new Grade_1_religionT2();
                $grade_1_religionT3 = new Grade_1_religionT3();
             









                
                $arr = array(
                    'student_id' => $data['student_id'],
                    'class_id' => $data['class_id'],
                    'fullname' => $data['firstname'].' '. $data['middlename'].' '. $data['lastname'],
                    'user_id' => Auth::user_id(),
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],
                    
                );
                
                $grade1->insert($arr);
                $grade_1_mathT1->insert($arr);
                $grade_1_mathT2->insert($arr);
                $grade_1_mathT3->insert($arr);
                $grade_1_englishT1->insert($arr);
                $grade_1_englishT2->insert($arr);
                $grade_1_englishT3->insert($arr);
                $grade_1_arabicT1->insert($arr);
                $grade_1_arabicT2->insert($arr);
                $grade_1_arabicT3->insert($arr);
                $grade_1_scienceT1->insert($arr);
                $grade_1_scienceT2->insert($arr);
                $grade_1_scienceT3->insert($arr);
                $grade_1_religionT1->insert($arr);
                $grade_1_religionT2->insert($arr);
                $grade_1_religionT3->insert($arr);
             

                

            //try grade_2
            }elseif($student_class == 'grade_2'){
                
                //grade_2 init
                $grade_2_mathT1 = new Grade_2_mathT1();
                $grade_2_mathT2 = new Grade_2_mathT2();
                $grade_2_mathT3 = new Grade_2_mathT3();
                $grade_2_englishT1 = new Grade_2_englishT1();
                $grade_2_englishT2 = new Grade_2_englishT2();
                $grade_2_englishT3 = new Grade_2_englishT3();
                $grade_2_arabicT1 = new Grade_2_arabicT1();
                $grade_2_arabicT2 = new Grade_2_arabicT2();
                $grade_2_arabicT3 = new Grade_2_arabicT3();
                $grade_2_scienceT1 = new Grade_2_scienceT1();
                $grade_2_scienceT2 = new Grade_2_scienceT2();
                $grade_2_scienceT3 = new Grade_2_scienceT3();
                $grade_2_religionT1 = new Grade_2_religionT1();
                $grade_2_religionT2 = new Grade_2_religionT2();
                $grade_2_religionT3 = new Grade_2_religionT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],
                    
                );
                
                $grade2->insert($arr);
                $grade_2_mathT1->insert($arr);
                $grade_2_mathT2->insert($arr);
                $grade_2_mathT3->insert($arr);
                $grade_2_englishT1->insert($arr);
                $grade_2_englishT2->insert($arr);
                $grade_2_englishT3->insert($arr);
                $grade_2_arabicT1->insert($arr);
                $grade_2_arabicT2->insert($arr);
                $grade_2_arabicT3->insert($arr);
                $grade_2_scienceT1->insert($arr);
                $grade_2_scienceT2->insert($arr);
                $grade_2_scienceT3->insert($arr);
                $grade_2_religionT1->insert($arr);
                $grade_2_religionT2->insert($arr);
                $grade_2_religionT3->insert($arr);


            //try grade_3
            }elseif($student_class == 'grade_3'){
                                //grade_3 init
                $grade_3_mathT1 = new Grade_3_mathT1();
                $grade_3_mathT2 = new Grade_3_mathT2();
                $grade_3_mathT3 = new Grade_3_mathT3();
                $grade_3_englishT1 = new Grade_3_englishT1();
                $grade_3_englishT2 = new Grade_3_englishT2();
                $grade_3_englishT3 = new Grade_3_englishT3();
                $grade_3_arabicT1 = new Grade_3_arabicT1();
                $grade_3_arabicT2 = new Grade_3_arabicT2();
                $grade_3_arabicT3 = new Grade_3_arabicT3();
                $grade_3_scienceT1 = new Grade_3_scienceT1();
                $grade_3_scienceT2 = new Grade_3_scienceT2();
                $grade_3_scienceT3 = new Grade_3_scienceT3();
                $grade_3_religionT1 = new Grade_3_religionT1();
                $grade_3_religionT2 = new Grade_3_religionT2();
                $grade_3_religionT3 = new Grade_3_religionT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                
                $grade3->insert($arr);
                $grade_3_mathT1->insert($arr);
                $grade_3_mathT2->insert($arr);
                $grade_3_mathT3->insert($arr);
                $grade_3_englishT1->insert($arr);
                $grade_3_englishT2->insert($arr);
                $grade_3_englishT3->insert($arr);
                $grade_3_arabicT1->insert($arr);
                $grade_3_arabicT2->insert($arr);
                $grade_3_arabicT3->insert($arr);
                $grade_3_scienceT1->insert($arr);
                $grade_3_scienceT2->insert($arr);
                $grade_3_scienceT3->insert($arr);
                $grade_3_religionT1->insert($arr);
                $grade_3_religionT2->insert($arr);
                $grade_3_religionT3->insert($arr);


            //try grade_4
            }elseif($student_class == 'grade_4'){
                 //grade_4 init
                 $grade_4_mathT1 = new Grade_4_mathT1();
                 $grade_4_mathT2 = new Grade_4_mathT2();
                 $grade_4_mathT3 = new Grade_4_mathT3();
                 $grade_4_englishT1 = new Grade_4_englishT1();
                 $grade_4_englishT2 = new Grade_4_englishT2();
                 $grade_4_englishT3 = new Grade_4_englishT3();
                 $grade_4_arabicT1 = new Grade_4_arabicT1();
                 $grade_4_arabicT2 = new Grade_4_arabicT2();
                 $grade_4_arabicT3 = new Grade_4_arabicT3();
                 $grade_4_scienceT1 = new Grade_4_scienceT1();
                 $grade_4_scienceT2 = new Grade_4_scienceT2();
                 $grade_4_scienceT3 = new Grade_4_scienceT3();
                 $grade_4_religionT1 = new Grade_4_religionT1();
                 $grade_4_religionT2 = new Grade_4_religionT2();
                 $grade_4_religionT3 = new Grade_4_religionT3();

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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                
                $grade4->insert($arr);
                $grade_4_mathT1->insert($arr);
                $grade_4_mathT2->insert($arr);
                $grade_4_mathT3->insert($arr);
                $grade_4_englishT1->insert($arr);
                $grade_4_englishT2->insert($arr);
                $grade_4_englishT3->insert($arr);
                $grade_4_arabicT1->insert($arr);
                $grade_4_arabicT2->insert($arr);
                $grade_4_arabicT3->insert($arr);
                $grade_4_scienceT1->insert($arr);
                $grade_4_scienceT2->insert($arr);
                $grade_4_scienceT3->insert($arr);
                $grade_4_religionT1->insert($arr);
                $grade_4_religionT2->insert($arr);
                $grade_4_religionT3->insert($arr);


            //try grade_5
            }elseif($student_class == 'grade_5'){

                                //grade_5 init
                $grade_5_mathT1 = new Grade_5_mathT1();
                $grade_5_mathT2 = new Grade_5_mathT2();
                $grade_5_mathT3 = new Grade_5_mathT3();
                $grade_5_englishT1 = new Grade_5_englishT1();
                $grade_5_englishT2 = new Grade_5_englishT2();
                $grade_5_englishT3 = new Grade_5_englishT3();
                $grade_5_arabicT1 = new Grade_5_arabicT1();
                $grade_5_arabicT2 = new Grade_5_arabicT2();
                $grade_5_arabicT3 = new Grade_5_arabicT3();
                $grade_5_scienceT1 = new Grade_5_scienceT1();
                $grade_5_scienceT2 = new Grade_5_scienceT2();
                $grade_5_scienceT3 = new Grade_5_scienceT3();
                $grade_5_religionT1 = new Grade_5_religionT1();
                $grade_5_religionT2 = new Grade_5_religionT2();
                $grade_5_religionT3 = new Grade_5_religionT3();

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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );

                $grade5->insert($arr);
                $grade_5_mathT1->insert($arr);
                $grade_5_mathT2->insert($arr);
                $grade_5_mathT3->insert($arr);
                $grade_5_englishT1->insert($arr);
                $grade_5_englishT2->insert($arr);
                $grade_5_englishT3->insert($arr);
                $grade_5_arabicT1->insert($arr);
                $grade_5_arabicT2->insert($arr);
                $grade_5_arabicT3->insert($arr);
                $grade_5_scienceT1->insert($arr);
                $grade_5_scienceT2->insert($arr);
                $grade_5_scienceT3->insert($arr);
                $grade_5_religionT1->insert($arr);
                $grade_5_religionT2->insert($arr);
                $grade_5_religionT3->insert($arr);

            
            //try grade_6
            }elseif($student_class == 'grade_6'){
                
                //grade_6 init
                $grade_6_mathT1 = new Grade_6_mathT1();
                $grade_6_mathT2 = new Grade_6_mathT2();
                $grade_6_mathT3 = new Grade_6_mathT3();
                $grade_6_englishT1 = new Grade_6_englishT1();
                $grade_6_englishT2 = new Grade_6_englishT2();
                $grade_6_englishT3 = new Grade_6_englishT3();
                $grade_6_arabicT1 = new Grade_6_arabicT1();
                $grade_6_arabicT2 = new Grade_6_arabicT2();
                $grade_6_arabicT3 = new Grade_6_arabicT3();
                $grade_6_scienceT1 = new Grade_6_scienceT1();
                $grade_6_scienceT2 = new Grade_6_scienceT2();
                $grade_6_scienceT3 = new Grade_6_scienceT3();
                $grade_6_religionT1 = new Grade_6_religionT1();
                $grade_6_religionT2 = new Grade_6_religionT2();
                $grade_6_religionT3 = new Grade_6_religionT3();

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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                
                $grade6->insert($arr);
                $grade_6_mathT1->insert($arr);
                $grade_6_mathT2->insert($arr);
                $grade_6_mathT3->insert($arr);
                $grade_6_englishT1->insert($arr);
                $grade_6_englishT2->insert($arr);
                $grade_6_englishT3->insert($arr);
                $grade_6_arabicT1->insert($arr);
                $grade_6_arabicT2->insert($arr);
                $grade_6_arabicT3->insert($arr);
                $grade_6_scienceT1->insert($arr);
                $grade_6_scienceT2->insert($arr);
                $grade_6_scienceT3->insert($arr);
                $grade_6_religionT1->insert($arr);
                $grade_6_religionT2->insert($arr);
                $grade_6_religionT3->insert($arr);

            //try grade_7
            }elseif($student_class == 'grade_7'){

              
               
                $grade_7_mathT1 = new Grade_7_mathT1();
                $grade_7_mathT2 = new Grade_7_mathT2();
                $grade_7_mathT3 = new Grade_7_mathT3();
                $grade_7_englishT1 = new Grade_7_englishT1();
                $grade_7_englishT2 = new Grade_7_englishT2();
                $grade_7_englishT3 = new Grade_7_englishT3();
                $grade_7_arabicT1 = new Grade_7_arabicT1();
                $grade_7_arabicT2 = new Grade_7_arabicT2();
                $grade_7_arabicT3 = new Grade_7_arabicT3();
                $grade_7_scienceT1 = new Grade_7_biologyT1();
                $grade_7_scienceT2 = new Grade_7_biologyT2();
                $grade_7_scienceT3 = new Grade_7_biologyT3();
                $grade_7_religionT1 = new Grade_7_religionT1();
                $grade_7_religionT2 = new Grade_7_religionT2();
                $grade_7_religionT3 = new Grade_7_religionT3();
                $grade_7_chemistryT1 = new Grade_7_chemistryT1();
                $grade_7_chemistryT2 = new Grade_7_chemistryT2();
                $grade_7_chemistryT3 = new Grade_7_chemistryT3();
                $grade_7_physicsT1 = new Grade_7_physicsT1();
                $grade_7_physicsT2 = new Grade_7_physicsT2();
                $grade_7_physicsT3 = new Grade_7_physicsT3();
             
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );

                $grade7->insert($arr);
                $grade_7_mathT1->insert($arr);
                $grade_7_mathT2->insert($arr);
                $grade_7_mathT3->insert($arr);
                $grade_7_physicsT1->insert($arr);
                $grade_7_physicsT2->insert($arr);
                $grade_7_physicsT3->insert($arr);
                $grade_7_englishT1->insert($arr);
                $grade_7_englishT2->insert($arr);
                $grade_7_englishT3->insert($arr);
                $grade_7_arabicT1->insert($arr);
                $grade_7_arabicT2->insert($arr);
                $grade_7_arabicT3->insert($arr);
                $grade_7_scienceT1->insert($arr);
                $grade_7_scienceT2->insert($arr);
                $grade_7_scienceT3->insert($arr);
                $grade_7_religionT1->insert($arr);
                $grade_7_religionT2->insert($arr);
                $grade_7_religionT3->insert($arr);
                $grade_7_chemistryT1->insert($arr);
                $grade_7_chemistryT2->insert($arr);
                $grade_7_chemistryT3->insert($arr);
               
              
            
            //try grade_8
            }elseif($student_class == 'grade_8'){

                $grade_8_mathT1 = new Grade_8_mathT1();
                $grade_8_mathT2 = new Grade_8_mathT2();
                $grade_8_mathT3 = new Grade_8_mathT3();
                $grade_8_englishT1 = new Grade_8_englishT1();
                $grade_8_englishT2 = new Grade_8_englishT2();
                $grade_8_englishT3 = new Grade_8_englishT3();
                $grade_8_arabicT1 = new Grade_8_arabicT1();
                $grade_8_arabicT2 = new Grade_8_arabicT2();
                $grade_8_arabicT3 = new Grade_8_arabicT3();
                $grade_8_biologyT1 = new Grade_8_biologyT1();
                $grade_8_biologyT2 = new Grade_8_biologyT2();
                $grade_8_biologyT3 = new Grade_8_biologyT3();
                $grade_8_religionT1 = new Grade_8_religionT1();
                $grade_8_religionT2 = new Grade_8_religionT2();
                $grade_8_religionT3 = new Grade_8_religionT3();
                $grade_8_physicsT1 = new Grade_8_physicsT1();
                $grade_8_physicsT2 = new Grade_8_physicsT2();
                $grade_8_physicsT3 = new Grade_8_physicsT3();
                $grade_8_chemistryT1 = new Grade_8_chemistryT1();
                $grade_8_chemistryT2 = new Grade_8_chemistryT2();
                $grade_8_chemistryT3 = new Grade_8_chemistryT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade8->insert($arr);
                $grade_8_mathT1->insert($arr);
                $grade_8_mathT2->insert($arr);
                $grade_8_mathT3->insert($arr);
                $grade_8_englishT1->insert($arr);
                $grade_8_englishT2->insert($arr);
                $grade_8_englishT3->insert($arr);
                $grade_8_arabicT1->insert($arr);
                $grade_8_arabicT2->insert($arr);
                $grade_8_arabicT3->insert($arr);
                $grade_8_biologyT1->insert($arr);
                $grade_8_biologyT2->insert($arr);
                $grade_8_biologyT3->insert($arr);
                $grade_8_religionT1->insert($arr);
                $grade_8_religionT2->insert($arr);
                $grade_8_religionT3->insert($arr);
                $grade_8_physicsT1->insert($arr);
                $grade_8_physicsT2->insert($arr);
                $grade_8_physicsT3->insert($arr);
                $grade_8_chemistryT1->insert($arr);
                $grade_8_chemistryT2->insert($arr);
                $grade_8_chemistryT3->insert($arr);

            //try grade_9
            }elseif($student_class == 'grade_9'){
                $grade_9_mathT1 = new Grade_9_mathT1();
                $grade_9_mathT2 = new Grade_9_mathT2();
                $grade_9_mathT3 = new Grade_9_mathT3();
                $grade_9_englishT1 = new Grade_9_englishT1();
                $grade_9_englishT2 = new Grade_9_englishT2();
                $grade_9_englishT3 = new Grade_9_englishT3();
                $grade_9_arabicT1 = new Grade_9_arabicT1();
                $grade_9_arabicT2 = new Grade_9_arabicT2();
                $grade_9_arabicT3 = new Grade_9_arabicT3();
                $grade_9_biologyT1 = new Grade_9_biologyT1();
                $grade_9_biologyT2 = new Grade_9_biologyT2();
                $grade_9_biologyT3 = new Grade_9_biologyT3();
                $grade_9_historyT1 = new Grade_9_historyT1();
                $grade_9_historyT2 = new Grade_9_historyT2();
                $grade_9_historyT3 = new Grade_9_historyT3();
                $grade_9_physicsT1 = new Grade_9_physicsT1();
                $grade_9_physicsT2 = new Grade_9_physicsT2();
                $grade_9_physicsT3 = new Grade_9_physicsT3();
                $grade_9_chemistryT1 = new Grade_9_chemistryT1();
                $grade_9_chemistryT2 = new Grade_9_chemistryT2();
                $grade_9_chemistryT3 = new Grade_9_chemistryT3();
                $grade_9_civT1 = new Grade_9_civT1();
                $grade_9_civT2 = new Grade_9_civT2();
                $grade_9_civT3 = new Grade_9_civT3();
                $grade_9_geoT1 = new Grade_9_geoT1();
                $grade_9_geoT2 = new Grade_9_geoT2();
                $grade_9_geoT3 = new Grade_9_geoT3();
                
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade9->insert($arr);
                $grade_9_mathT1->insert($arr);
                $grade_9_mathT2->insert($arr);
                $grade_9_mathT3->insert($arr);
                $grade_9_englishT1->insert($arr);
                $grade_9_englishT2->insert($arr);
                $grade_9_englishT3->insert($arr);
                $grade_9_arabicT1->insert($arr);
                $grade_9_arabicT2->insert($arr);
                $grade_9_arabicT3->insert($arr);
                $grade_9_biologyT1->insert($arr);
                $grade_9_biologyT2->insert($arr);
                $grade_9_biologyT3->insert($arr);
                $grade_9_historyT1->insert($arr);
                $grade_9_historyT2->insert($arr);
                $grade_9_historyT3->insert($arr);
                $grade_9_physicsT1->insert($arr);
                $grade_9_physicsT2->insert($arr);
                $grade_9_physicsT3->insert($arr);
                $grade_9_chemistryT1->insert($arr);
                $grade_9_chemistryT2->insert($arr);
                $grade_9_chemistryT3->insert($arr);
                $grade_9_civT1->insert($arr);
                $grade_9_civT2->insert($arr);
                $grade_9_civT3->insert($arr);
                $grade_9_geoT1->insert($arr);
                $grade_9_geoT2->insert($arr);
                $grade_9_geoT3->insert($arr);
                
            
            //try grade_10
            }elseif($student_class == 'grade_10'){
                $grade_10_mathT1 = new Grade_10_mathT1();
                $grade_10_mathT2 = new Grade_10_mathT2();
                $grade_10_mathT3 = new Grade_10_mathT3();
                $grade_10_englishT1 = new Grade_10_englishT1();
                $grade_10_englishT2 = new Grade_10_englishT2();
                $grade_10_englishT3 = new Grade_10_englishT3();
                $grade_10_arabicT1 = new Grade_1_arabicT1();
                $grade_10_arabicT2 = new Grade_1_arabicT2();
                $grade_10_arabicT3 = new Grade_1_arabicT3();
                $grade_10_biologyT1 = new Grade_10_biologyT1();
                $grade_10_biologyT2 = new Grade_10_biologyT2();
                $grade_10_biologyT3 = new Grade_10_biologyT3();
                $grade_10_historyT1 = new Grade_10_historyT1();
                $grade_10_historyT2 = new Grade_10_historyT2();
                $grade_10_historyT3 = new Grade_10_historyT3();
                $grade_10_physicsT1 = new Grade_10_physicsT1();
                $grade_10_physicsT2 = new Grade_10_physicsT2();
                $grade_10_physicsT3 = new Grade_10_physicsT3();
                $grade_10_chemistryT1 = new Grade_10_chemistryT1();
                $grade_10_chemistryT2 = new Grade_10_chemistryT2();
                $grade_10_chemistryT3 = new Grade_10_chemistryT3();
                $grade_10_civT1 = new Grade_10_civT1();
                $grade_10_civT2 = new Grade_10_civT2();
                $grade_10_civT3 = new Grade_10_civT3();
                $grade_10_geoT1 = new Grade_10_geoT1();
                $grade_10_geoT2 = new Grade_10_geoT2();
                $grade_10_geoT3 = new Grade_10_geoT3();
                $grade_10_ecoT1 = new Grade_10_ecoT1();
                $grade_10_ecoT2 = new Grade_10_ecoT2();
                $grade_10_ecoT3 = new Grade_10_ecoT3();
                $grade_10_socioT1 = new Grade_10_socioT1();
                $grade_10_socioT2 = new Grade_10_socioT2();
                $grade_10_socioT3 = new Grade_10_socioT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade10->insert($arr);
                $grade_10_mathT1->insert($arr);
                $grade_10_mathT2->insert($arr);
                $grade_10_mathT3->insert($arr);
                $grade_10_englishT1->insert($arr);
                $grade_10_englishT2->insert($arr);
                $grade_10_englishT3->insert($arr);
                $grade_10_arabicT1->insert($arr);
                $grade_10_arabicT2->insert($arr);
                $grade_10_arabicT3->insert($arr);
                $grade_10_biologyT1->insert($arr);
                $grade_10_biologyT2->insert($arr);
                $grade_10_biologyT3->insert($arr);
                $grade_10_historyT1->insert($arr);
                $grade_10_historyT2->insert($arr);
                $grade_10_historyT3->insert($arr);
                $grade_10_physicsT1->insert($arr);
                $grade_10_physicsT2->insert($arr);
                $grade_10_physicsT3->insert($arr);
                $grade_10_chemistryT1->insert($arr);
                $grade_10_chemistryT2->insert($arr);
                $grade_10_chemistryT3->insert($arr);
                $grade_10_civT1->insert($arr);
                $grade_10_civT2->insert($arr);
                $grade_10_civT3->insert($arr);
                $grade_10_geoT1->insert($arr);
                $grade_10_geoT2->insert($arr);
                $grade_10_geoT3->insert($arr);
                $grade_10_ecoT1->insert($arr);
                $grade_10_ecoT2->insert($arr);
                $grade_10_ecoT3->insert($arr);
                $grade_10_socioT1->insert($arr);
                $grade_10_socioT2->insert($arr);
                $grade_10_socioT3->insert($arr);
                
            //try grade_11S
            }elseif($student_class == 'grade_11s'){
                $grade_11s_mathT1 = new Grade_11s_mathT1();
                $grade_11s_mathT2 = new Grade_11s_mathT2();
                $grade_11s_mathT3 = new Grade_11s_mathT3();
                $grade_11s_englishT1 = new Grade_11s_englishT1();
                $grade_11s_englishT2 = new Grade_11s_englishT2();
                $grade_11s_englishT3 = new Grade_11s_englishT3();
                $grade_11s_arabicT1 = new Grade_11s_arabicT1();
                $grade_11s_arabicT2 = new Grade_11s_arabicT2();
                $grade_11s_arabicT3 = new Grade_11s_arabicT3();
                $grade_11s_biologyT1 = new Grade_11s_biologyT1();
                $grade_11s_biologyT2 = new Grade_11s_biologyT2();
                $grade_11s_biologyT3 = new Grade_11s_biologyT3();
                $grade_11s_historyT1 = new Grade_11s_historyT1();
                $grade_11s_historyT2 = new Grade_11s_historyT2();
                $grade_11s_historyT3 = new Grade_11s_historyT3();
                $grade_11s_physicsT1 = new Grade_11s_physicsT1();
                $grade_11s_physicsT2 = new Grade_11s_physicsT2();
                $grade_11s_physicsT3 = new Grade_11s_physicsT3();
                $grade_11s_chemistryT1 = new Grade_11s_chemistryT1();
                $grade_11s_chemistryT2 = new Grade_11s_chemistryT2();
                $grade_11s_chemistryT3 = new Grade_11s_chemistryT3();
                $grade_11s_civT1 = new Grade_11s_civT1();
                $grade_11s_civT2 = new Grade_11s_civT2();
                $grade_11s_civT3 = new Grade_11s_civT3();
                $grade_11s_geoT1 = new Grade_11s_geoT1();
                $grade_11s_geoT2 = new Grade_11s_geoT2();
                $grade_11s_geoT3 = new Grade_11s_geoT3();
                $grade_11s_ecoT1 = new Grade_11s_ecoT1();
                $grade_11s_ecoT2 = new Grade_11s_ecoT2();
                $grade_11s_ecoT3 = new Grade_11s_ecoT3();
                $grade_11s_socioT1 = new Grade_11s_socioT1();
                $grade_11s_socioT2 = new Grade_11s_socioT2();
                $grade_11s_socioT3 = new Grade_11s_socioT3();
                $grade_11s_philoT1 = new Grade_11s_philoT1();
                $grade_11s_philoT2 = new Grade_11s_philoT2();
                $grade_11s_philoT3 = new Grade_11s_philoT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade11s->insert($arr);
                $grade_11s_mathT1->insert($arr);
                $grade_11s_mathT2->insert($arr);
                $grade_11s_mathT3->insert($arr);
                $grade_11s_englishT1->insert($arr);
                $grade_11s_englishT2->insert($arr);
                $grade_11s_englishT3->insert($arr);
                $grade_11s_arabicT1->insert($arr);
                $grade_11s_arabicT2->insert($arr);
                $grade_11s_arabicT3->insert($arr);
                $grade_11s_biologyT1->insert($arr);
                $grade_11s_biologyT2->insert($arr);
                $grade_11s_biologyT3->insert($arr);
                $grade_11s_historyT1->insert($arr);
                $grade_11s_historyT2->insert($arr);
                $grade_11s_historyT3->insert($arr);
                $grade_11s_physicsT1->insert($arr);
                $grade_11s_physicsT2->insert($arr);
                $grade_11s_physicsT3->insert($arr);
                $grade_11s_chemistryT1->insert($arr);
                $grade_11s_chemistryT2->insert($arr);
                $grade_11s_chemistryT3->insert($arr);
                $grade_11s_civT1->insert($arr);
                $grade_11s_civT2->insert($arr);
                $grade_11s_civT3->insert($arr);
                $grade_11s_geoT1->insert($arr);
                $grade_11s_geoT2->insert($arr);
                $grade_11s_geoT3->insert($arr);
                $grade_11s_ecoT1->insert($arr);
                $grade_11s_ecoT2->insert($arr);
                $grade_11s_ecoT3->insert($arr);
                $grade_11s_socioT1->insert($arr);
                $grade_11s_socioT2->insert($arr);
                $grade_11s_socioT3->insert($arr);
                $grade_11s_philoT1->insert($arr);
                $grade_11s_philoT2->insert($arr);
                $grade_11s_philoT3->insert($arr);

            //try grade_11L
            }elseif($student_class == 'grade_11l'){
                $grade_11l_mathT1 = new Grade_11l_mathT1();
                $grade_11l_mathT2 = new Grade_11l_mathT2();
                $grade_11l_mathT3 = new Grade_11l_mathT3();
                $grade_11l_englishT1 = new Grade_11l_englishT1();
                $grade_11l_englishT2 = new Grade_11l_englishT2();
                $grade_11l_englishT3 = new Grade_11l_englishT3();
                $grade_11l_arabicT1 = new Grade_11l_arabicT1();
                $grade_11l_arabicT2 = new Grade_11l_arabicT2();
                $grade_11l_arabicT3 = new Grade_11l_arabicT3();
                $grade_11l_biologyT1 = new Grade_11l_biologyT1();
                $grade_11l_biologyT2 = new Grade_11l_biologyT2();
                $grade_11l_biologyT3 = new Grade_11l_biologyT3();
                $grade_11l_historyT1 = new Grade_11l_historyT1();
                $grade_11l_historyT2 = new Grade_11l_historyT2();
                $grade_11l_historyT3 = new Grade_11l_historyT3();
                $grade_11l_physicsT1 = new Grade_11l_physicsT1();
                $grade_11l_physicsT2 = new Grade_11l_physicsT2();
                $grade_11l_physicsT3 = new Grade_11l_physicsT3();
                $grade_11l_chemistryT1 = new Grade_11l_chemistryT1();
                $grade_11l_chemistryT2 = new Grade_11l_chemistryT2();
                $grade_11l_chemistryT3 = new Grade_11l_chemistryT3();
                $grade_11l_civT1 = new Grade_11l_civT1();
                $grade_11l_civT2 = new Grade_11l_civT2();
                $grade_11l_civT3 = new Grade_11l_civT3();
                $grade_11l_geoT1 = new Grade_11l_geoT1();
                $grade_11l_geoT2 = new Grade_11l_geoT2();
                $grade_11l_geoT3 = new Grade_11l_geoT3();
                $grade_11l_ecoT1 = new Grade_11l_ecoT1();
                $grade_11l_ecoT2 = new Grade_11l_ecoT2();
                $grade_11l_ecoT3 = new Grade_11l_ecoT3();
                $grade_11l_socioT1 = new Grade_11l_socioT1();
                $grade_11l_socioT2 = new Grade_11l_socioT2();
                $grade_11l_socioT3 = new Grade_11l_socioT3();
                $grade_11l_philoT1 = new Grade_11l_philoT1();
                $grade_11l_philoT2 = new Grade_11l_philoT2();
                $grade_11l_philoT3 = new Grade_11l_philoT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade11l->insert($arr);
                $grade_11l_mathT1->insert($arr);
                $grade_11l_mathT2->insert($arr);
                $grade_11l_mathT3->insert($arr);
                $grade_11l_englishT1->insert($arr);
                $grade_11l_englishT2->insert($arr);
                $grade_11l_englishT3->insert($arr);
                $grade_11l_arabicT1->insert($arr);
                $grade_11l_arabicT2->insert($arr);
                $grade_11l_arabicT3->insert($arr);
                $grade_11l_biologyT1->insert($arr);
                $grade_11l_biologyT2->insert($arr);
                $grade_11l_biologyT3->insert($arr);
                $grade_11l_historyT1->insert($arr);
                $grade_11l_historyT2->insert($arr);
                $grade_11l_historyT3->insert($arr);
                $grade_11l_physicsT1->insert($arr);
                $grade_11l_physicsT2->insert($arr);
                $grade_11l_physicsT3->insert($arr);
                $grade_11l_chemistryT1->insert($arr);
                $grade_11l_chemistryT2->insert($arr);
                $grade_11l_chemistryT3->insert($arr);
                $grade_11l_civT1->insert($arr);
                $grade_11l_civT2->insert($arr);
                $grade_11l_civT3->insert($arr);
                $grade_11l_geoT1->insert($arr);
                $grade_11l_geoT2->insert($arr);
                $grade_11l_geoT3->insert($arr);
                $grade_11l_ecoT1->insert($arr);
                $grade_11l_ecoT2->insert($arr);
                $grade_11l_ecoT3->insert($arr);
                $grade_11l_socioT1->insert($arr);
                $grade_11l_socioT2->insert($arr);
                $grade_11l_socioT3->insert($arr);
                $grade_11l_philoT1->insert($arr);
                $grade_11l_philoT2->insert($arr);
                $grade_11l_philoT3->insert($arr);
            //try grade_12LS
            }elseif($student_class == 'grade_12ls'){
                $grade_12ls_mathT1 = new Grade_12ls_mathT1();
                $grade_12ls_mathT2 = new Grade_12ls_mathT2();
                $grade_12ls_mathT3 = new Grade_12ls_mathT3();
                $grade_12ls_englishT1 = new Grade_12ls_englishT1();
                $grade_12ls_englishT2 = new Grade_12ls_englishT2();
                $grade_12ls_englishT3 = new Grade_12ls_englishT3();
                $grade_12ls_arabicT1 = new Grade_12ls_arabicT1();
                $grade_12ls_arabicT2 = new Grade_12ls_arabicT2();
                $grade_12ls_arabicT3 = new Grade_12ls_arabicT3();
                $grade_12ls_biologyT1 = new Grade_12ls_biologyT1();
                $grade_12ls_biologyT2 = new Grade_12ls_biologyT2();
                $grade_12ls_biologyT3 = new Grade_12ls_biologyT3();
                $grade_12ls_historyT1 = new Grade_12ls_historyT1();
                $grade_12ls_historyT2 = new Grade_12ls_historyT2();
                $grade_12ls_historyT3 = new Grade_12ls_historyT3();
                $grade_12ls_physicsT1 = new Grade_12ls_physicsT1();
                $grade_12ls_physicsT2 = new Grade_12ls_physicsT2();
                $grade_12ls_physicsT3 = new Grade_12ls_physicsT3();
                $grade_12ls_chemistryT1 = new Grade_12ls_chemistryT1();
                $grade_12ls_chemistryT2 = new Grade_12ls_chemistryT2();
                $grade_12ls_chemistryT3 = new Grade_12ls_chemistryT3();
                $grade_12ls_civT1 = new Grade_12ls_civT1();
                $grade_12ls_civT2 = new Grade_12ls_civT2();
                $grade_12ls_civT3 = new Grade_12ls_civT3();
                $grade_12ls_geoT1 = new Grade_12ls_geoT1();
                $grade_12ls_geoT2 = new Grade_12ls_geoT2();
                $grade_12ls_geoT3 = new Grade_12ls_geoT3();
                $grade_12ls_philoT1 = new Grade_12ls_philoT1();
                $grade_12ls_philoT2 = new Grade_12ls_philoT2();
                $grade_12ls_philoT3 = new Grade_12ls_philoT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],
    

                );
                $grade12ls->insert($arr);
                $grade_12ls_mathT1->insert($arr);
                $grade_12ls_mathT2->insert($arr);
                $grade_12ls_mathT3->insert($arr);
                $grade_12ls_englishT1->insert($arr);
                $grade_12ls_englishT2->insert($arr);
                $grade_12ls_englishT3->insert($arr);
                $grade_12ls_arabicT1->insert($arr);
                $grade_12ls_arabicT2->insert($arr);
                $grade_12ls_arabicT3->insert($arr);
                $grade_12ls_biologyT1->insert($arr);
                $grade_12ls_biologyT2->insert($arr);
                $grade_12ls_biologyT3->insert($arr);
                $grade_12ls_historyT1->insert($arr);
                $grade_12ls_historyT2->insert($arr);
                $grade_12ls_historyT3->insert($arr);
                $grade_12ls_physicsT1->insert($arr);
                $grade_12ls_physicsT2->insert($arr);
                $grade_12ls_physicsT3->insert($arr);
                $grade_12ls_chemistryT1->insert($arr);
                $grade_12ls_chemistryT2->insert($arr);
                $grade_12ls_chemistryT3->insert($arr);
                $grade_12ls_civT1->insert($arr);
                $grade_12ls_civT2->insert($arr);
                $grade_12ls_civT3->insert($arr);
                $grade_12ls_geoT1->insert($arr);
                $grade_12ls_geoT2->insert($arr);
                $grade_12ls_geoT3->insert($arr);
                $grade_12ls_philoT1->insert($arr);
                $grade_12ls_philoT2->insert($arr);
                $grade_12ls_philoT3->insert($arr);
            
            //try grade_12ES
            }elseif($student_class == 'grade_12es'){
                $grade_12es_mathT1 = new Grade_12es_mathT1();
                $grade_12es_mathT2 = new Grade_12es_mathT2();
                $grade_12es_mathT3 = new Grade_12es_mathT3();
                $grade_12es_englishT1 = new Grade_12es_englishT1();
                $grade_12es_englishT2 = new Grade_12es_englishT2();
                $grade_12es_englishT3 = new Grade_12es_englishT3();
                $grade_12es_arabicT1 = new Grade_12es_arabicT1();
                $grade_12es_arabicT2 = new Grade_12es_arabicT2();
                $grade_12es_arabicT3 = new Grade_12es_arabicT3();
                $grade_12es_biologyT1 = new Grade_12es_biologyT1();
                $grade_12es_biologyT2 = new Grade_12es_biologyT2();
                $grade_12es_biologyT3 = new Grade_12es_biologyT3();
                $grade_12es_historyT1 = new Grade_12es_historyT1();
                $grade_12es_historyT2 = new Grade_12es_historyT2();
                $grade_12es_historyT3 = new Grade_12es_historyT3();
                $grade_12es_physicsT1 = new Grade_12es_physicsT1();
                $grade_12es_physicsT2 = new Grade_12es_physicsT2();
                $grade_12es_physicsT3 = new Grade_12es_physicsT3();
                $grade_12es_chemistryT1 = new Grade_12es_chemistryT1();
                $grade_12es_chemistryT2 = new Grade_12es_chemistryT2();
                $grade_12es_chemistryT3 = new Grade_12es_chemistryT3();
                $grade_12es_civT1 = new Grade_12es_civT1();
                $grade_12es_civT2 = new Grade_12es_civT2();
                $grade_12es_civT3 = new Grade_12es_civT3();
                $grade_12es_geoT1 = new Grade_12es_geoT1();
                $grade_12es_geoT2 = new Grade_12es_geoT2();
                $grade_12es_geoT3 = new Grade_12es_geoT3();
                $grade_12es_ecoT1 = new Grade_12es_ecoT1();
                $grade_12es_ecoT2 = new Grade_12es_ecoT2();
                $grade_12es_ecoT3 = new Grade_12es_ecoT3();
                $grade_12es_socioT1 = new Grade_12es_socioT1();
                $grade_12es_socioT2 = new Grade_12es_socioT2();
                $grade_12es_socioT3 = new Grade_12es_socioT3();
                $grade_12es_philoT1 = new Grade_12es_philoT1();
                $grade_12es_philoT2 = new Grade_12es_philoT2();
                $grade_12es_philoT3 = new Grade_12es_philoT3();
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
                    'acad_year'=> $data['acad_year'],
                    'st_type'=> $data['st_type'],
                    'section'=> $data['section'],

                );
                $grade12es->insert($arr);
                $grade_12es_mathT1->insert($arr);
                $grade_12es_mathT2->insert($arr);
                $grade_12es_mathT3->insert($arr);
                $grade_12es_englishT1->insert($arr);
                $grade_12es_englishT2->insert($arr);
                $grade_12es_englishT3->insert($arr);
                $grade_12es_arabicT1->insert($arr);
                $grade_12es_arabicT2->insert($arr);
                $grade_12es_arabicT3->insert($arr);
                $grade_12es_biologyT1->insert($arr);
                $grade_12es_biologyT2->insert($arr);
                $grade_12es_biologyT3->insert($arr);
                $grade_12es_historyT1->insert($arr);
                $grade_12es_historyT2->insert($arr);
                $grade_12es_historyT3->insert($arr);
                $grade_12es_physicsT1->insert($arr);
                $grade_12es_physicsT2->insert($arr);
                $grade_12es_physicsT3->insert($arr);
                $grade_12es_chemistryT1->insert($arr);
                $grade_12es_chemistryT2->insert($arr);
                $grade_12es_chemistryT3->insert($arr);
                $grade_12es_civT1->insert($arr);
                $grade_12es_civT2->insert($arr);
                $grade_12es_civT3->insert($arr);
                $grade_12es_geoT1->insert($arr);
                $grade_12es_geoT2->insert($arr);
                $grade_12es_geoT3->insert($arr);
                $grade_12es_ecoT1->insert($arr);
                $grade_12es_ecoT2->insert($arr);
                $grade_12es_ecoT3->insert($arr);
                $grade_12es_socioT1->insert($arr);
                $grade_12es_socioT2->insert($arr);
                $grade_12es_socioT3->insert($arr);
                $grade_12es_philoT1->insert($arr);
                $grade_12es_philoT2->insert($arr);
                $grade_12es_philoT3->insert($arr);
            }

            
            return $data;
        }
        



 }
