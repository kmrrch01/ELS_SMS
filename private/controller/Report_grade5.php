<?php


/**
 * classes controller
 */
class Report_grade5 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_5();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade5', ['grade1s' => $grade1s]);
	}

}
