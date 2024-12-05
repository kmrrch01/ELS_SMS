<?php

class Grade9_physicsT1 extends Controller
{

    public function index()
    {
        $grade1 = new Grade_9_physicsT1();
        $englishTotal = isset($_SESSION['englishTotal']) ? $_SESSION['englishTotal'] : 0;
        $grade1s = $grade1->findAll();
        $this->view('grade9_physicsT1', ['grade1s' => $grade1s, 'englishTotal' => $englishTotal]);
    }
    public function Term2()
    {
        $grade1 = new Grade_9_physicsT2();
        $englishTotal = isset($_SESSION['englishTotal']) ? $_SESSION['englishTotal'] : 0;
        $grade1s = $grade1->findAll();
        $this->view('grade9_physicsT2', ['grade1s' => $grade1s, 'englishTotal' => $englishTotal]);
    }
    public function Term3()
    {
        $grade1 = new Grade_9_physicsT3();
        $englishTotal = isset($_SESSION['englishTotal']) ? $_SESSION['englishTotal'] : 0;
        $grade1s = $grade1->findAll();
        $this->view('grade9_physicsT3', ['grade1s' => $grade1s, 'englishTotal' => $englishTotal]);
    }

    public function updateTable()
    {
        $grade1 = new Grade_9_physicsT1();

        if (count($_POST) > 0) {
            foreach ($_POST['homework'] as $id => $homework_score) {
                $data = ['homework' => $homework_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['test'] as $id => $test_score) {
                $data = ['test' => $test_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_avg'] as $id => $term_avg_score) {
                $data = ['term_avg' => $term_avg_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_perc'] as $id => $term_perc_score) {
                $data = ['term_perc' => $term_perc_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['quiz'] as $id => $quiz_score) {
                $data = ['quiz' => $quiz_score];
                $result = $grade1->update($id, $data);
            }

            if ($result) {
                // Optionally, set a success message here
                $this->redirect('Grade9_physicsT1');
            } else {
                // Handle update failure
                echo "Update failed. Please try again.";
            }
        }
    }
    public function updateTableT2()
    {
        $grade1 = new Grade_9_physicsT2();

        if (count($_POST) > 0) {
            foreach ($_POST['homework'] as $id => $homework_score) {
                $data = ['homework' => $homework_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['test'] as $id => $test_score) {
                $data = ['test' => $test_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_avg'] as $id => $term_avg_score) {
                $data = ['term_avg' => $term_avg_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_perc'] as $id => $term_perc_score) {
                $data = ['term_perc' => $term_perc_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['quiz'] as $id => $quiz_score) {
                $data = ['quiz' => $quiz_score];
                $result = $grade1->update($id, $data);
            }

            if ($result) {
                // Optionally, set a success message here
                $this->redirect('Grade9_physicsT1/Term2');
            } else {
                // Handle update failure
                echo "Update failed. Please try again.";
            }
        }
    }
    public function updateTableT3()
    {
        $grade1 = new Grade_9_physicsT3();

        if (count($_POST) > 0) {
            foreach ($_POST['homework'] as $id => $homework_score) {
                $data = ['homework' => $homework_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['test'] as $id => $test_score) {
                $data = ['test' => $test_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_avg'] as $id => $term_avg_score) {
                $data = ['term_avg' => $term_avg_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['term_perc'] as $id => $term_perc_score) {
                $data = ['term_perc' => $term_perc_score];
                $result = $grade1->update($id, $data);
            }
            foreach ($_POST['quiz'] as $id => $quiz_score) {
                $data = ['quiz' => $quiz_score];
                $result = $grade1->update($id, $data);
            }

            if ($result) {
                // Optionally, set a success message here
                $this->redirect('Grade9_physicsT1/Term3');
            } else {
                // Handle update failure
                echo "Update failed. Please try again.";
            }
        }
    }
    public function excel()
    {
        if (!Auth::logged_in()) {
            $this->redirect('login');
        }



        $this->view('grade9_arabic.excel', []);
    }
}
