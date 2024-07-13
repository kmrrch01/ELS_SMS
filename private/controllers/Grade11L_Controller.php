<?php

class Grade11L_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade11L = new Grade_11L();
        $grade11L_row = $grade11L->findAll();
        $this->view('grade11L', ['grade11L_row' => $grade11L_row]);

        
    }
    
}

