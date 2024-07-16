<?php

class Grade1 extends Controller{


    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade1 = new Grade_1();
        $grade1s = $grade1->findAll();
        $this->view('grade1', ['grade1s' => $grade1s]);

        
    }
    
}

