<?php


/**
 * classes controller
 */
class Report_grade7 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_7();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade7', ['grade1s' => $grade1s]);
	}

}
