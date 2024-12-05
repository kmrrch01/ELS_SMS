<?php

/**
 * home controller
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
		$crumbs[] = ['class','class'];
		
        if($row){
            $crumbs[] = [$row->class,''];
			
		}

		$this->view('single-class',[
			'row'=>$row,
			'crumbs'=>$crumbs,
		]);
	}
}
