<?php

class Grade7_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade7 = new Grade_7();
        $grade7s = $grade7->findAll();
        $this->view('grade7', ['grade7s' => $grade7s]);

        
    }
    
}

