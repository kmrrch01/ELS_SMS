<?php

class Grade5_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade5 = new Grade_5();
        $grade5s = $grade5->findAll();
        $this->view('grade5', ['grade5s' => $grade5s]);

        
    }
    
}

