<?php


/**
 * classes controller
 */
class Subjects_grade8 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1 = new Grade_8();
        $grade1s = $grade1->findAll();
		

		$this->view('subject_grade8', ['grade1s' => $grade1s]);
	}
	
}
