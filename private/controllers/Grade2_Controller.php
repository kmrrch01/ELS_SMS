<?php

class Grade2_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade2 = new Grade_2();
        $grade2s = $grade2->findAll();
        $this->view('grade2', ['grade2s' => $grade2s]);

        
    }
    
}

