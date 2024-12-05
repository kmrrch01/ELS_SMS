<?php


/**
 * classes controller
 */
class Report_grade11l extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_11l();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade11l', ['grade1s' => $grade1s]);
	}

}
