<?php

/**
 * home controller
 */
class Single_school extends Controller
{
	
	function index($id = '')
	{
		// code...

		$user = new User();
        $school = new School();
		$row = $school->first('school_id',$id);
        

		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['school','school'];
		
        if($row){
            $crumbs[] = [$row->school,''];
			
		}

        $user = new User();
		$school = Auth::getSchool();
		$data = $user->query("select * from users where school = :school",['school'=>$school]);
		$this->view('users', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);

        

        
	}
}
