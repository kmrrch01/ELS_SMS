<?php

/**
 * single class controller
 */
class Single_class extends Controller
{
	
	public function index($id = '')
	{
		// code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}

		$page_tab = isset($_GET['tab']) ? $_GET['tab'] : 'teachers';
		$teachers = new Teachers_model();

		$results = false;

		if($page_tab == 'teachers'){
			
			//display teachers
			$query = "select * from class_teachers where class_id = :class_id && disabled = 0";
			$teachers = $teachers->query($query,['class_id'=>$id]);

			$data['teachers']   = $teachers;
		}else
		if($page_tab == 'students'){
			
			//display students
			$query = "select * from class_students where class_id = :class_id && disabled = 0";
			$students = $teachers->query($query,['class_id'=>$id]);

			$data['students']   = $students;
		}

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['page_tab'] 	= $page_tab;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);
	}

	public function teacheradd($id = '')
	{
	    // code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}

		$page_tab = 'teacher-add';
		$teachers = new Teachers_model();

		$results = false;

		if(count($_POST) > 0)
		{

			if(isset($_POST['search'])){

				if(trim($_POST['name']) != ""){

					//find teacher
					$user = new User();
					$name = "%".trim($_POST['name'])."%";
					$query = "select * from users where (firstname like :fname || lastname like :lname) && position = 'Teacher' limit 10";
					$results = $user->query($query,['fname'=>$name,'lname'=>$name,]);
				}else{
					$errors[] = "please type a name to find";
				}
			
			}else
			if(isset($_POST['selected'])){

				//add teacher
				$query = "select id from class_teachers where user_id = :user_id && class_id = :class_id && disabled = 0 limit 1";
				

					if(!$teachers->query($query,[
						'user_id' => $_POST['selected'],
						'class_id' => $id,
					])){

						$arr = array();
		 				$arr['user_id'] 	= $_POST['selected'];
		 				$arr['class_id'] 	= $id;
						$arr['disabled'] 	= 0;
						$arr['date'] 		= date("Y-m-d H:i:s");

						$teachers->insert($arr);

						$this->redirect("classes");

					}else{
						$errors[] = "that teacher already belongs to this class";
					}			

			}

		} 

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['page_tab'] 	= $page_tab;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);

    }
	public function teacherremove($id = '')
	{
	    // code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}

		$page_tab = 'teacher-remove';
		$teachers = new Teachers_model();

		$results = false;

		if(count($_POST) > 0)
		{

			if(isset($_POST['search'])){

				if(trim($_POST['name']) != ""){

					//find teacher
					$user = new User();
					$name = "%".trim($_POST['name'])."%";
					$query = "select * from users where (firstname like :fname || lastname like :lname) && position = 'Teacher' limit 10";
					$results = $user->query($query,['fname'=>$name,'lname'=>$name,]);
				}else{
					$errors[] = "please type a name to find";
				}
			
			}else
			if(isset($_POST['selected'])){

				//add teacher
				$query = "select id from class_teachers where user_id = :user_id && class_id = :class_id && disabled = 0 limit 1";
				
				

					if($row = $teachers->query($query,[
						'user_id' => $_POST['selected'],
						'class_id' => $id,
					])){

						$arr = array();
 						$arr['disabled'] 	= 1;
 
						$teachers->update($row[0]->id,$arr);

						$this->redirect("classes");

					}else{
						$errors[] = "that teacher was not found in this class";
					}
				

			}

		} 

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['page_tab'] 	= $page_tab;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);

    }
	public function studentadd($id = '')
	{
	    // code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}

		$page_tab = 'student-add';
		$student = new Students_model();

		$results = false;

		if(count($_POST) > 0)
		{

			if(isset($_POST['search'])){

				if(trim($_POST['name']) != ""){

					//find student
					$user = new User();
					$name = "%".trim($_POST['name'])."%";
					$query = "select * from students where (firstname like :fname || lastname like :lname)";
					$results = $user->query($query,['fname'=>$name,'lname'=>$name,]);
				}else{
					$errors[] = "please type a name to find";
				}
			
			}else
			if(isset($_POST['selected'])){

				//add student
				$query = "select id from class_students where user_id = :user_id && class_id = :class_id && disabled = 0 limit 1";
				

					if(!$student->query($query,[
						'user_id' => $_POST['selected'],
						'class_id' => $id,
					])){

						$arr = array();
		 				$arr['user_id'] 	= $_POST['selected'];
		 				$arr['class_id'] 	= $id;
						$arr['disabled'] 	= 0;
						$arr['date'] 		= date("Y-m-d H:i:s");

						$student->insert($arr); //this is to insert the result into the class_students table

						$this->redirect("classes");

					}else{
						$errors[] = "that student already belongs to this class";
					}			

			}

		} 

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['page_tab'] 	= $page_tab;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);

    }
	public function studentremove($id = '')
	{
	    // code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}

		$page_tab = 'student-remove';
		$student = new students_model();

		$results = false;

		if(count($_POST) > 0)
		{

			if(isset($_POST['search'])){

				if(trim($_POST['name']) != ""){

					//find student
					$user = new User();
					$name = "%".trim($_POST['name'])."%";
					$query = "select * from students where (firstname like :fname || lastname like :lname)";
					$results = $user->query($query,['fname'=>$name,'lname'=>$name,]);
				}else{
					$errors[] = "please type a name to find";
				}
			
			}else
			if(isset($_POST['selected'])){

				//add student
				$query = "select id from class_students where user_id = :user_id && class_id = :class_id && disabled = 0 limit 1";
				
				

					if($row = $student->query($query,[
						'user_id' => $_POST['selected'],
						'class_id' => $id,
					])){

						$arr = array();
 						$arr['disabled'] 	= 1;
 
						$student->update($row[0]->id,$arr);

						$this->redirect("classes");

					}else{
						$errors[] = "that student was not found in this class";
					}
				

			}

		} 

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['page_tab'] 	= $page_tab;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);

    }

  }



