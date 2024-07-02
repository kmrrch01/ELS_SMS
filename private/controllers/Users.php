<?php

/**
 * users controller
 */
class Users extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		
		$crumbs[] = ['Dashboard', ''];
		$crumbs[] = ['staff', 'users'];
		$page_tab = isset($_GET['tab']) ? $_GET['tab'] : 'teachers';


        $user = new User();
		$school_id = Auth::getSchool_id();
		$data = $user->query("select * from users where position != 'student' && position !='parent'");
		$this->view('users', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);
	}
}