<?php

class Grade4 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade4 = new Grade_4();
        $grade4s = $grade4->findAll();
        $this->view('grade4', ['grade4s' => $grade4s]);

        
    }
    
}

