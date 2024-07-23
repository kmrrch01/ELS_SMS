<?php


/**
 * classes controller
 */
class Subjects_grade9 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_9();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade9', ['grade1s' => $grade1s]);
	}
	
}
