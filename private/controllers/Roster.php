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
        $search = $_POST['search'];
		$data = $user->query("select * from users where :");
		$this->view('rosters', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);
	}
}