<?php

/**
 * invoice controller
 */
class Invoices extends Controller 
{

  function index()
  {
    
        
      $mode = isset($_GET['mode']) ? $_GET['mode'] : '';
      $errors = array();
  
      if(count($_POST) > 0){
          $invoice = new Invoice();
  
          if($invoice->validate($_POST)) {
              
  
            // Proceed with user data insertion if no errors
            if (empty($errors)) {
                $arr = array(
                    'fullname' => $_POST['fullname'],
                    'fullname_ar' => $_POST['fullname_ar'],
                    'position' => $_POST['position'],
                    'academic_year' => $_POST['academic_year'],
                    'Class' => $_POST['Class'],
                    'Section' => $_POST['Section'],
                    'Fees_in_Dollar' => $_POST['Fees_in_Dollar'],
                    'Fees_in_lebanese' => $_POST['Fees_in_lebanese'],
                    'Paid_in_Dollar' => $_POST['Paid_in_Dollar'],
                    'Paid_in_lebanese' => $_POST['Paid_in_lebanese'],
                    'Remain_in_Dollar' => $_POST['Remain_in_Dollar'],
                    'Remain_in_lebanese' => $_POST['Remain_in_lebanese'],
                    'Discount_d' => $_POST['Discount_d'],
                    'Discount' => $_POST['Discount'],
                    'Total_d' => $_POST['Total_d'],
                    'Total' => $_POST['Total'],
                
                );


  
                  // Insert user data
                  $invoice->insert($arr);
  
                  
              }
  
          } else {
              // Handle validation errors
              $errors = $invoice->errors;
          }
      }
  
     // Render the signup view with errors and mode
     $this->view('invoice', array(
        'errors' => $errors,
        'mode' => $mode
    ));

    


  }
  public function pdf($id = null)
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
	   $crumbs[] = ['PDF','classes/pdf'];

	   $this->view('fees.pdf',[
		   'row'=>$row,
		   'errors'=>$errors,
		   'crumbs'=>$crumbs,
	   ]);
	}
  
}