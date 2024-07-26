<?php

/**
 * statistics controller
 */
class Statistics extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $statistic = new Statistic();
        $data1 = $statistic->query("select count(*) from users;");
        $data2 = $statistic->query("select count(*) from students;");		
		$this->view('statistics', [
            'rows1'=>$data1,
            'rows2'=>$data2,	
        ]);
    }
}

		