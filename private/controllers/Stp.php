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
}
