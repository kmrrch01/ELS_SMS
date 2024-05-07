<?php

/**
 * students controller
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

		$user = new User();
		$data = $user->query("select * from users where position in ('student') order by id desc");

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['students','students'];

		$this->view('students',[
			'rows'=>$data,
			'crumbs'=>$crumbs,
		]);
	}
}