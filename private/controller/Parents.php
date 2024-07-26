<?php

/**
 * Parents controller
 */
class Parents extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$user = new User();
		$data = $user->query("select * from users where position in ('parent') order by id desc");

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['parents','parents'];

		$this->view('parents',[
			'rows'=>$data,
			'crumbs'=>$crumbs,
		]);
	}
}