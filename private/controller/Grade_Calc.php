<?php


/**
 * Grade Calculation
 */
class Grade_Calc extends Controller
{
	
    function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		
		$crumbs[] = ['Dashboard', ''];
		$crumbs[] = ['grades', 'student'];

        $student = new Student();
		//$school_id = Auth::getSchool_id();
		$data = $student->query("select * from grades");
		$this->view('grades', [
			'rows'=>$data,
			'crumbs'=>$crumbs,		
		]);
	}
	public function edit($id = null)
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$grade = new Grade();

		$errors = array();
		if(count($_POST) > 0)
 		{

			if($grade->validate($_POST))
 			{
 				
 				$grade->update($id,$_POST);
 				$this->redirect('Grade_Calc');
 			}else
 			{
 				//errors
 				$errors = $grade->errors;
 			}
 		}

 		$row = $grade->where('id',$id);

 		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['Classes','classes'];
		$crumbs[] = ['Edit','classes/edit'];

		$this->view('fees.edit',[
			'row'=>$row,
			'errors'=>$errors,
			'crumbs'=>$crumbs,
		]);
	}
	public function delete($id = null)
	{
		
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$grade = new grade();

		$errors = array();

		if(count($_POST) > 0)
 		{
 
 			$grade->delete($id);
 			$this->redirect('Fees_billing');
 		 
 		}

 		$row = $grade->where('id',$id);

 		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['Classes','classes'];
		$crumbs[] = ['Delete','classes/delete'];

		$this->view('fees.delete',[
			'row'=>$row,
 			'crumbs'=>$crumbs,
		]);
	}
	public function pdf($id = null)
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}

		$grade = new grade();

		$errors = array();

		if(count($_POST) > 0)
 		{
			if($grade->validate($_POST))
			{
				
				$grade->update($id,$_POST);
				$this->redirect('Fees_billing');
			}else
			{
				//errors
				$errors = $grade->errors;
			}
		}

		$row = $grade->where('id',$id);

		$crumbs[] = ['Dashboard',''];
	   $crumbs[] = ['Classes','classes'];
	   $crumbs[] = ['PDF','classes/pdf'];

	   $this->view('fees.pdf',[
		   'row'=>$row,
		   'errors'=>$errors,
		   'crumbs'=>$crumbs,
	   ]);
	}
	public function excel()
	{
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		
		
        
		$this->view('fees.excel', [
				
		]);
	}



}
