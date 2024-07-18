<?php

class Grade1_Table extends Controller{

    public function index(){
        $grade1 = new Grade_1();
        $englishTotal = isset($_SESSION['englishTotal']) ? $_SESSION['englishTotal'] : 0;
        $grade1s = $grade1->findAll();
        $this->view('grade1_table', ['grade1s'=>$grade1s, 'englishTotal' => $englishTotal]);
    }

    public function updateTable() {
        $grade1 = new Grade_1();
    
        if (count($_POST) > 0) {
            foreach ($_POST['math'] as $id => $math_score) {
                $data = ['math' => $math_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['english'] as $id => $english_score) {
                $data = ['english' => $english_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['arabic'] as $id => $arabic_score) {
                $data = ['arabic' => $arabic_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['religion'] as $id => $religion_score) {
                $data = ['religion' => $religion_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['science'] as $id => $science_score) {
                $data = ['science' => $science_score];
                $result = $grade1->update($id, $data);
            }
    
            if ($result) {
                // Optionally, set a success message here
                $this->redirect('Grade1_Table');

            } else {
                // Handle update failure
                echo "Update failed. Please try again.";
            }
        }
    }

    

    
    
}