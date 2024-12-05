<?php


/**
 * classes controller
 */
class Report_grade3 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_3();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade3', ['grade1s' => $grade1s]);
	}

}
