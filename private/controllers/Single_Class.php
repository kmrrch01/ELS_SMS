<?php

/**
 * Single class controller
 */
class Single_class extends Controller
{
	
	function index($id = '')
	{
		// code...

		$user = new User();
		$classes = new Classes_model();


		$row = $classes->first('class_id',$id);

		

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['classes','classes'];
        $row_user = array();
		if($row){
			$crumbs[] = [$row->class_name,''];
		    $row_user = $user->first('user_id',$row->user_id);
        }

		$page_tab = isset($_GET['tab']) ? $_GET['tab'] : 'teachers';

		$this->view('single-class',[
			'row'=>$row,
			'row_user'=>$row_user,
			'crumbs'=>$crumbs,
			'page_tab'=>$page_tab,
		]);
	}
}
