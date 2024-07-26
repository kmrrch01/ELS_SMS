<?php

class Grade3 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade3 = new Grade_3();
        $grade3s = $grade3->findAll();
        $this->view('grade3', ['grade3s' => $grade3s]);

        
    }
    
}

