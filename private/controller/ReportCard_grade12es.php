<?php


/**
 * classes controller
 */
class ReportCard_grade12es extends Controller
{

	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_12es_arabicT1();
		$grade1s_en = new Grade_12es_englishT1();
		$grade1s_bi = new Grade_12es_biologyT1();
		$grade1s_hi = new Grade_12es_historyT1();
		$grade1s_ma = new Grade_12es_mathT1();
		$grade1s_ph = new Grade_12es_physicsT1();
		$grade1s_ch = new Grade_12es_chemistryT1();
        $grade1s_ge = new Grade_12es_geoT1();
		$grade1s_ci = new Grade_12es_civT1();
        $grade1s_ec = new Grade_12es_ecoT1();
		$grade1s_so = new Grade_12es_socioT1();
        $grade1s_ph = new Grade_12es_philoT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_hi = $grade1s_hi->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
        $grade1s_ge = $grade1s_ge->findAll();
		$grade1s_ci = $grade1s_ci->findAll();
        $grade1s_ec = $grade1s_ec->findAll();
		$grade1s_so = $grade1s_so->findAll();
        $grade1s_ph = $grade1s_ph->findAll();
		




		$this->view('grade12es_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_hi' => $grade1s_hi,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
            'grade1s_ge' => $grade1s_ge,
			'grade1s_ci' => $grade1s_ci,
            'grade1s_ec' => $grade1s_ec,
			'grade1s_so' => $grade1s_so,
            'grade1s_ph' => $grade1s_ph,
			
		]);
	}
	public function pdf()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}
      
		$grade1s_ar = new Grade_12es_arabicT1();
		$grade1s_en = new Grade_12es_englishT1();
		$grade1s_bi = new Grade_12es_biologyT1();
		$grade1s_hi = new Grade_12es_historyT1();
		$grade1s_ma = new Grade_12es_mathT1();
		$grade1s_ph = new Grade_12es_physicsT1();
		$grade1s_ch = new Grade_12es_chemistryT1();
        $grade1s_ge = new Grade_12es_geoT1();
		$grade1s_ci = new Grade_12es_civT1();
        $grade1s_ec = new Grade_12es_ecoT1();
		$grade1s_so = new Grade_12es_socioT1();
        $grade1s_ph = new Grade_12es_philoT1();



		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_bi->findAll();
		$grade1s_hi = $grade1s_hi->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		$grade1s_ph = $grade1s_ph->findAll();
		$grade1s_ch = $grade1s_ch->findAll();
        $grade1s_ge = $grade1s_ge->findAll();
		$grade1s_ci = $grade1s_ci->findAll();
        $grade1s_ec = $grade1s_ec->findAll();
		$grade1s_so = $grade1s_so->findAll();
        $grade1s_ph = $grade1s_ph->findAll();
		




		$this->view('grade12es_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_hi' => $grade1s_hi,
			'grade1s_ma' => $grade1s_ma,
			'grade1s_ph' => $grade1s_ph,
			'grade1s_ch' => $grade1s_ch,
            'grade1s_ge' => $grade1s_ge,
			'grade1s_ci' => $grade1s_ci,
            'grade1s_ec' => $grade1s_ec,
			'grade1s_so' => $grade1s_so,
            'grade1s_ph' => $grade1s_ph,
			
		]);
	}
}
