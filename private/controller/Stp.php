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
		$image = array();
		$row = $student->first('student_id',$id);

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['student','student'];
		if($row){
			$crumbs[] = [$row->firstname,'student'];
		}

		$this->view('stp',[
			'image' => $image,
			'row'=>$row,
			'crumbs'=>$crumbs,
		]);
	}
}
