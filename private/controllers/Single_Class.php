<?php

/**
 * single class controller
 */
class Single_class extends Controller
{
	
	public function index($id = '')
	{
		// code...
		// code...
		$errors = array();
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$classes = new Classes_model();
		$row = $classes->first('class_id',$id);


		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];

		if($row){
			$crumbs[] = [$row->class,''];
		}	

		$results = false;

		
		

		$data['row'] 		= $row;
 		$data['crumbs'] 	= $crumbs;
		$data['results'] 	= $results;
		$data['errors'] 	= $errors;

		$this->view('single-class',$data);
	}

  }



