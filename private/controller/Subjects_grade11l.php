<?php


/**
 * classes controller
 */
class Subjects_grade11l extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_11L();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade11s', ['grade1s' => $grade1s]);
	}
	
}
