<?php
require_once __DIR__ . '/../../vendor/autoload.php';
/**
 * invoice controller
 */
class Invoices extends Controller
{

    function index()
    {


        $mode = isset($_GET['mode']) ? $_GET['mode'] : '';
        $errors = array();

        if (count($_POST) > 0) {
            $invoice = new Invoice();

            if ($invoice->validate($_POST)) {


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
    public function generatePDF($id) {
        $invoice = new Invoice();
        $row = $invoice->where('id', $id);
    
        if ($row) {
            $pdf = new \FPDF();
            $pdf->AddPage();
            $pdf->SetFont('Arial', 'B', 16);
            $pdf->Cell(0, 10, 'Invoice #' . $id, 0, 1, 'C');
            $pdf->Ln(10);
    
            // Set font for table header
            $pdf->SetFont('Arial', 'B', 12);
    
            // Add table headers
            $headers = array('Field', 'Value');
            foreach ($headers as $header) {
                $pdf->Cell(95, 10, $header, 1);
            }
            $pdf->Ln();
    
            // Set font for table content
            $pdf->SetFont('Arial', '', 12);
    
            // Add table content
            foreach ($row as $key => $value) {
                $pdf->Cell(95, 10, $key, 1);
                $pdf->Cell(95, 10, is_object($value) ? 'Object' : (string)$value, 1);
                $pdf->Ln();
            }
    
            $pdf->Output('D', 'Invoice_' . $id . '.pdf');
        } else {
            // Handle case when no invoice is found
            echo "Invoice not found";
        }
    }
    public function pdf($id = null)
    {
        // code...
        if (!Auth::logged_in()) {
            $this->redirect('login');
        }

        $invoice = new Invoice();

        $errors = array();

        if (count($_POST) > 0) {
            if ($invoice->validate($_POST)) {

                $invoice->update($id, $_POST);
                $this->redirect('Fees_billing');
            } else {
                //errors
                $errors = $invoice->errors;
            }
        }

        $row = $invoice->where('id', $id);

        $crumbs[] = ['Dashboard', ''];
        $crumbs[] = ['Classes', 'classes'];
        $crumbs[] = ['PDF', 'classes/pdf'];

        $this->view('fees.pdf', [
            'row' => $row,
            'errors' => $errors,
            'crumbs' => $crumbs,
        ]);
    }
}
