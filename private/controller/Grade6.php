<?php

class Grade6 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade6 = new Grade_6();
        $grade6s = $grade6->findAll();
        $this->view('grade6', ['grade6s' => $grade6s]);

        
    }
    
}

