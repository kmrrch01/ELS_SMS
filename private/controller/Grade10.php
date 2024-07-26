<?php

class Grade10 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade10 = new Grade_10();
        $grade10s = $grade10->findAll();
        $this->view('grade10', ['grade10s' => $grade10s]);

        
    }
    
}

