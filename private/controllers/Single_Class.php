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
			$crumbs[] = [$row->class,''];
		    $row_user = $user->first('user_id',$row->user_id);
        }
		
		$page_tab = isset($_GET['tab']) ? $_GET['tab'] : 'teachers';
		$results = false;
		if(isset($page_tab) && count($_POST) > 0 ){

			if(isset($_POST['search'])){
					//find teacher
					$user = new User();
					$name = "%".trim($_POST['name'])."%";
					$query = "select * from users where (firstname like :fname || lastname like :lname) && (position = 'teacher' || position = 'coordinator') limit 10";
					$results = $user->query($query,['fname'=>$name, 'lname'=>$name]);

				}else{
					if(isset($_POST['selected'])){
						//add teacher

					}
				}
		}
		$this->view('single-class',[
			'row'=>$row,
			'row_user'=>$row_user,
			'crumbs'=>$crumbs,
			'page_tab'=>$page_tab,
			'results'=>$results
		]);
		
	}
}
