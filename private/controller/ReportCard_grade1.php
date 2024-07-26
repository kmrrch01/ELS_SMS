<?php


/**
 * classes controller
 */
class ReportCard_grade1 extends Controller
{



	public function index()
	{
		// code...
		if (!Auth::logged_in()) {
			$this->redirect('login');
		}

		$grade1s_ar = new Grade_1_arabicT1();
		$grade1s_en = new Grade_1_englishT1();
		$grade1s_sc = new Grade_1_scienceT1();
		$grade1s_re = new Grade_1_religionT1();
		$grade1s_ma = new Grade_1_mathT1();


		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade1_reportCard', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
		]);
	}
	public function Term2()
    {
		$grade1s_ar = new Grade_1_arabicT2();
		$grade1s_en = new Grade_1_englishT2();
		$grade1s_sc = new Grade_1_scienceT2();
		$grade1s_re = new Grade_1_religionT2();
		$grade1s_ma = new Grade_1_mathT2();


		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		




		$this->view('grade1_reportCardT2', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
		]);
    }
    public function Term3(){
    
        $grade1s_ar = new Grade_1_arabicT1();
		$grade1s_en = new Grade_1_englishT1();
		$grade1s_sc = new Grade_1_scienceT1();
		$grade1s_re = new Grade_1_religionT1();
		$grade1s_ma = new Grade_1_mathT1();


		$grade1s_ar = $grade1s_ar->findAll();
		$grade1s_en = $grade1s_en->findAll();
		$grade1s_sc = $grade1s_sc->findAll();
		$grade1s_re = $grade1s_re->findAll();
		$grade1s_ma = $grade1s_ma->findAll();
		
		$grade1s_arT2 = new Grade_1_arabicT2();
		$grade1s_enT2 = new Grade_1_englishT2();
		$grade1s_scT2 = new Grade_1_scienceT2();
		$grade1s_reT2 = new Grade_1_religionT2();
		$grade1s_maT2 = new Grade_1_mathT2();


		$grade1s_arT2 = $grade1s_arT2->findAll();
		$grade1s_enT2 = $grade1s_enT2->findAll();
		$grade1s_scT2 = $grade1s_scT2->findAll();
		$grade1s_reT2 = $grade1s_reT2->findAll();
		$grade1s_maT2 = $grade1s_maT2->findAll();

		$grade1s_arT3 = new Grade_1_arabicT3();
		$grade1s_enT3 = new Grade_1_englishT3();
		$grade1s_scT3 = new Grade_1_scienceT3();
		$grade1s_reT3 = new Grade_1_religionT3();
		$grade1s_maT3 = new Grade_1_mathT3();


		$grade1s_arT3 = $grade1s_arT3->findAll();
		$grade1s_enT3 = $grade1s_enT3->findAll();
		$grade1s_scT3 = $grade1s_scT3->findAll();
		$grade1s_reT3 = $grade1s_reT3->findAll();
		$grade1s_maT3 = $grade1s_maT3->findAll();
		
		




		$this->view('grade1_reportCardT3', [
			'grade1s_ar' => $grade1s_ar,
			'grade1s_en' => $grade1s_en,
			'grade1s_sc' => $grade1s_sc,
			'grade1s_re' => $grade1s_re,
			'grade1s_ma' => $grade1s_ma,
			
			'grade1s_arT2' => $grade1s_arT2,
			'grade1s_enT2' => $grade1s_enT2,
			'grade1s_scT2' => $grade1s_scT2,
			'grade1s_reT2' => $grade1s_reT2,
			'grade1s_maT2' => $grade1s_maT2,

			'grade1s_arT3' => $grade1s_arT3,
			'grade1s_enT3' => $grade1s_enT3,
			'grade1s_scT3' => $grade1s_scT3,
			'grade1s_reT3' => $grade1s_reT3,
			'grade1s_maT3' => $grade1s_maT3,
			
			
		]);
    
	}
}
