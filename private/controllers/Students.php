<?php

/**
 * Students controller
 */
class Students extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		$crumbs[] = ['Dashboard', ''];
		$crumbs[] = ['students', 'student'];

        $student = new Student();
		//$school_id = Auth::getSchool_id();
		$data = $student->query("select * from students");
		$this->view('students', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);
	}
}