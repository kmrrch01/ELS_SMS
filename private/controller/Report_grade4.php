<?php


/**
 * classes controller
 */
class Report_grade4 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_4();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade4', ['grade1s' => $grade1s]);
	}

}
