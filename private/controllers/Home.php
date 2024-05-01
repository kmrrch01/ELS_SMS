<?php

/**
 * home controller
 */
class Home extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::isLoggedIn())
		{
			$this->redirect('login');
		}

		
		$this->view('home');
	}
}