<?php


/**
 * classes controller
 */
class Subjects_grade12es extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_12ES();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade12es', ['grade1s' => $grade1s]);
	}
	
}
