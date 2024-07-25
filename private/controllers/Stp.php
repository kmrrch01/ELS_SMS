<?php

class Stp extends Controller
{
	
	function index($id = '')
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$student = new Student(); 

		$row = $student->first('student_id',$id);

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['students','student'];
		if($row){
			$crumbs[] = [$row->firstname,'student'];
		}

		$this->view('stp',[
			'row'=>$row,
			'crumbs'=>$crumbs,
		]);
	}

    function edit($id = '')

    {
	if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$errors = array();
		$student = new Student(); 

		$row = $student->first('student_id',$id);
	    $id = trim($id == '') ? Auth::getUser_id() : $id;

	if(count($_POST) > 0)
	{

		//something was posted

		//check if passwords exist
	
		if($student->validate($_POST,$id))
		 {
			$myrow = $student->first('student_id',$id);
			if(is_object($myrow)){
				$student->update($myrow->id,$_POST);
			}

			 $redirect = 'stp/'.$id;
			 $this->redirect($redirect);
		 }else
		 {
			 //errors
			 $errors = $student->errors;
		 }
	}

	$row = $student->first('student_id',$id);

	$data['row'] = $row;
	$data['errors'] = $errors;

	
	$this->view('stp-edit',$data);
    }	


}




