<?php

/**
 * Students controller
 */
class ReportCardT1_grade1 extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

        $grade1_arT1 = new Grade_1_arabicT1();
        $grade1_mathT1 = new Grade_1_mathT1();
        $grade1_englishT1 = new Grade_1_englishT1();
        $grade1_scienceT1 = new Grade_1_scienceT1();
        $grade1_religionT1 = new Grade_1_religionT1();

        $grade1s_arT1 = $grade1_arT1->findAll();
        $grade1s_mathT1 = $grade1_mathT1->findAll();
        $grade1s_enT1 = $grade1_englishT1->findAll();
        $grade1s_scT1 = $grade1_scienceT1->findAll();
        $grade1s_relT1 = $grade1_religionT1->findAll();


		$this->view('reportCardGrade1T1', [
            'grade1s_arT1'=> $grade1s_arT1,
            'grade1s_mathT1' => $grade1s_mathT1,
            'grade1s_enT1' => $grade1s_enT1,
            'grade1s_scT1' => $grade1s_scT1,
            'grade1s_relT1' => $grade1s_relT1,
            
		]);
	}
}