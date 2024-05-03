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

        $user = new User();
		$data = $user->query("select * from users where position not in ('student')");
		$this->view('users', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);
	}
}