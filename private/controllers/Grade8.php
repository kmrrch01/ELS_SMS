<?php

class Grade8 extends Controller{



    public function index(){

        if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
        $grade8 = new Grade_8();
        $grade8s = $grade8->findAll();
        $this->view('grade8', ['grade8s' => $grade8s]);

        
    }
    
}

