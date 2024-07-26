<?php


/**
 * classes controller
 */
class Subjects_grade12ls extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_12LS();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade12ls', ['grade1s' => $grade1s]);
	}
	
}
