<?php


/**
 * classes controller
 */
class ReportCard_grade8 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_8_arabicT1();
		$grade1s_en = new Grade_8_englishT1();
		$grade1s_bi = new Grade_8_biologyT1();
		$grade1s_re = new Grade_8_religionT1();
		$grade1s_ma = new Grade_8_mathT1();
		$grade1s_ph = new Grade_8_physicsT1();
		$grade1s_ch = new Grade_8_chemistryT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
		




		$this->view('grade8_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
			
		]);
	}
	public function pdf()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}
		$grade1s_ar = new Grade_8_arabicT1();
		$grade1s_en = new Grade_8_englishT1();
		$grade1s_bi = new Grade_8_biologyT1();
		$grade1s_re = new Grade_8_religionT1();
		$grade1s_ma = new Grade_8_mathT1();
		$grade1s_ph = new Grade_8_physicsT1();
		$grade1s_ch = new Grade_8_chemistryT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
		




		$this->view('grade8_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
			
		]);
	}
}
