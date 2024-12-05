<?php


/**
 * classes controller
 */
class Report_grade6 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_6();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade6', ['grade1s' => $grade1s]);
	}

}
