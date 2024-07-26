<?php


/**
 * classes controller
 */
class ReportCard_grade3 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_3_arabicT1();
		$grade1s_en = new Grade_3_englishT1();
		$grade1s_sc = new Grade_3_scienceT1();
		$grade1s_re = new Grade_3_religionT1();
		$grade1s_ma = new Grade_3_mathT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade3_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
		]);
	}
	public function pdf()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_3_arabicT1();
		$grade1s_en = new Grade_3_englishT1();
		$grade1s_sc = new Grade_3_scienceT1();
		$grade1s_re = new Grade_3_religionT1();
		$grade1s_ma = new Grade_3_mathT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade3_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
		]);
	}
}
