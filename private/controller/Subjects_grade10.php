<?php


/**
 * classes controller
 */
class Subjects_grade10 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_10();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade10', ['grade1s' => $grade1s]);
	}
	
}
