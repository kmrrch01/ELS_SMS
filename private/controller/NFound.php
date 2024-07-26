<?php

/**
 * home controller
 */
class NFound extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		
		$this->view('404');
	}
}