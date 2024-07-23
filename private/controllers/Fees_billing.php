<?php


/**
 * Fees controller
 */
class Fees_billing extends Controller
{
	
    function index()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		
		$crumbs[] = ['Dashboard', ''];
		$crumbs[] = ['invoices', 'student'];

        $student = new Student();
		//$school_id = Auth::getSchool_id();
		$data = $student->query("select * from invoices");
		$this->view('fees', [
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

		$invoice = new Invoice();

		$errors = array();
		if(count($_POST) > 0)
 		{

			if($invoice->validate($_POST))
 			{
 				
 				$invoice->update($id,$_POST);
 				$this->redirect('Fees_billing');
 			}else
 			{
 				//errors
 				$errors = $invoice->errors;
 			}
 		}

 		$row = $invoice->where('id',$id);

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

		$invoice = new Invoice();

		$errors = array();

		if(count($_POST) > 0)
 		{
 
 			$invoice->delete($id);
 			$this->redirect('Fees_billing');
 		 
 		}

 		$row = $invoice->where('id',$id);

 		$crumbs[] = ['Dashboard',''];
		$crumbs[] = ['Classes','classes'];
		$crumbs[] = ['Delete','classes/delete'];

		$this->view('fees.delete',[
			'row'=>$row,
 			'crumbs'=>$crumbs,
		]);
	}
	
	public function pdf()
	{
		// code...
		if(!Auth::logged_in())
		{
			$this->redirect('login');
		}
		
		$crumbs[] = ['Dashboard', ''];
		$crumbs[] = ['invoices', 'student'];

        $student = new Student();
		//$school_id = Auth::getSchool_id();
		$data = $student->query("select * from invoices");

	   $this->view('fees.pdf',[
		   'rows'=>$data,
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
