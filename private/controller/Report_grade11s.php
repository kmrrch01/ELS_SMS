<?php


/**
 * classes controller
 */
class Report_grade11s extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_11s();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade11s', ['grade1s' => $grade1s]);
	}

}
