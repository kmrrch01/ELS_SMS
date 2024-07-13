<?php

class Grade12LS_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade12LS = new Grade_12LS();
        $grade12LS_row = $grade12LS->findAll();
        $this->view('grade12LS', ['grade12LS_row' => $grade12LS_row]);

        
    }
    
}

