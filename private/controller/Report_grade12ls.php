<?php


/**
 * classes controller
 */
class Report_grade12ls extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_12ls();
        $grade1s = $grade1->findAll();
		

		$this->view('reportT1_grade12ls', ['grade1s' => $grade1s]);
	}

}
