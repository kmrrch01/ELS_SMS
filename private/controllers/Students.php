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

		$parent_dropdown = $student->get_parent_dropdown();
		//$school_id = Auth::getSchool_id();
		$data = $student->query("select * from students");
		$this->view('students', [
			'rows'=>$data,
			'crumbs'=>$crumbs,
			'parent_dropdown'=>$parent_dropdown		
		]);
	}
}