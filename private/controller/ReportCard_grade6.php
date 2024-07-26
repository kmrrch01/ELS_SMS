<?php


/**
 * classes controller
 */
class ReportCard_grade6 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_6_arabicT1();
		$grade1s_en = new Grade_6_englishT1();
		$grade1s_sc = new Grade_6_scienceT1();
		$grade1s_re = new Grade_6_religionT1();
		$grade1s_ma = new Grade_6_mathT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade6_reportCard', [
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

		$grade1s_ar = new Grade_6_arabicT1();
		$grade1s_en = new Grade_6_englishT1();
		$grade1s_sc = new Grade_6_scienceT1();
		$grade1s_re = new Grade_6_religionT1();
		$grade1s_ma = new Grade_6_mathT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade6_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
		]);
}
