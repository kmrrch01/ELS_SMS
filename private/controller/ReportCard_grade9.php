<?php


/**
 * classes controller
 */
class ReportCard_grade9 extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_9_arabicT1();
		$grade1s_en = new Grade_9_englishT1();
		$grade1s_bi = new Grade_9_biologyT1();
		$grade1s_hi = new Grade_9_historyT1();
		$grade1s_ma = new Grade_9_mathT1();
		$grade1s_ph = new Grade_9_physicsT1();
		$grade1s_ch = new Grade_9_chemistryT1();
        $grade1s_ge = new Grade_9_geoT1();
		$grade1s_ci = new Grade_9_civT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_hi = $grade1s_hi->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
        $grade1s_ge = $grade1s_ge->findAll();
		$grade1s_ci = $grade1s_ci->findAll();
		




		$this->view('grade9_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_hi' => $grade1s_hi,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
            'grade1s_ge' => $grade1s_ge,
			'grade1s_ci' => $grade1s_ci,
			
		]);
	}
	public function pdf()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}
        $grade1s_ar = new Grade_9_arabicT1();
		$grade1s_en = new Grade_9_englishT1();
		$grade1s_bi = new Grade_9_biologyT1();
		$grade1s_hi = new Grade_9_historyT1();
		$grade1s_ma = new Grade_9_mathT1();
		$grade1s_ph = new Grade_9_physicsT1();
		$grade1s_ch = new Grade_9_chemistryT1();
        $grade1s_ge = new Grade_9_geoT1();
		$grade1s_ci = new Grade_9_civT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_hi = $grade1s_hi->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
        $grade1s_ge = $grade1s_ge->findAll();
		$grade1s_ci = $grade1s_ci->findAll();
		




		$this->view('grade9_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_hi' => $grade1s_hi,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
            'grade1s_ge' => $grade1s_ge,
			'grade1s_ci' => $grade1s_ci,
			
		]);
	}
}
