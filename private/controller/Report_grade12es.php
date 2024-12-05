<?php


/**
 * classes controller
 */
class Report_grade12es extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_12es();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade12es', ['grade1s' => $grade1s]);
	}

}
