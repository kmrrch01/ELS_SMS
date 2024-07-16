<?php

/**
 * home controller
 */
class NAccess extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		
		$this->view('naccess');
	}
}