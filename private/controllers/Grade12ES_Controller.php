<?php

class Grade12ES_Controller extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade12ES = new Grade_12ES();
        $grade12ES_row = $grade12ES->findAll();
        $this->view('grade12ES', ['grade12ES_row' => $grade12ES_row]);

        
    }
    
}

