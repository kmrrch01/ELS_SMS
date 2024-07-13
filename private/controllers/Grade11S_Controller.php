<?php

class Grade11S_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade11s = new Grade_11S();
        $grade11S_row = $grade11s->findAll();
        $this->view('grade11S', ['grade11S_row' => $grade11S_row]);

        
    }
    
}

