<?php

/**
 * Students controller
 */
class ReportCardT1_grade2 extends Controller
{
	
	function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

        $grade2_arT1 = new Grade_2_arabicT1();
        $grade2_mathT1 = new Grade_2_mathT1();
        $grade2_englishT1 = new Grade_2_englishT1();
        $grade2_scienceT1 = new Grade_2_scienceT1();
        $grade2_religionT1 = new Grade_2_religionT1();

        $grade2s_arT1 = $grade2_arT1->findAll();
        $grade2s_mathT1 = $grade2_mathT1->findAll();
        $grade2s_enT1 = $grade2_englishT1->findAll();
        $grade2s_scT1 = $grade2_scienceT1->findAll();
        $grade2s_relT1 = $grade2_religionT1->findAll();


		$this->view('reportCardGrade2T1', [
            'grade2s_arT1'=> $grade2s_arT1,
            'grade2s_mathT1' => $grade2s_mathT1,
            'grade2s_enT1' => $grade2s_enT1,
            'grade2s_scT1' => $grade2s_scT1,
            'grade2s_relT1' => $grade2s_relT1,
            
		]);
	}
}