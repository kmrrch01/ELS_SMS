<?php

class Grade9 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade9 = new Grade_9();
        $grade9s = $grade9->findAll();
        $this->view('grade9', ['grade9s' => $grade9s]);

        
    }
    
}

