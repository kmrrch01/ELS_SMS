<?php $this->view('includes/header'); ?>
<?php $this->view('includes/nav'); ?>
<script>
    function sumEnglishGrades() {
        let total = 0;
        const englishGrades = document.querySelectorAll('input[name^="english["]');

        englishGrades.forEach(grade => {
            total += parseFloat(grade.value) || 0;
        });

        document.getElementById('englishTotal').textContent = total.toFixed(2);
    }
    document.addEventListener('DOMContentLoaded', sumEnglishGrades);
    document.querySelectorAll('input[name^="english["]').forEach(input => {
        input.addEventListener('change', sumEnglishGrades);
    });


    function sumMathGrades() {
        let total = 0;
        const mathGrades = document.querySelectorAll('input[name^="math["]');

        mathGrades.forEach(grade => {
            total += parseFloat(grade.value) || 0;
        });

        document.getElementById('mathTotal').textContent = total.toFixed(2);
    }
    document.addEventListener('DOMContentLoaded', sumMathGrades);
    document.querySelectorAll('input[name^="math["]').forEach(input => {
        input.addEventListener('change', sumMathGrades);
    });

    function sumArabicGrades() {
        let total = 0;
        const arabicGrades = document.querySelectorAll('input[name^="arabic["]');

        arabicGrades.forEach(grade => {
            total += parseFloat(grade.value) || 0;
        });

        document.getElementById('arabicTotal').textContent = total.toFixed(2);
    }
    document.addEventListener('DOMContentLoaded', sumArabicGrades);
    document.querySelectorAll('input[name^="math["]').forEach(input => {
        input.addEventListener('change', sumArabicGrades);
    });


    function sumScienceGrades() {
        let total = 0;
        const scienceGrades = document.querySelectorAll('input[name^="science["]');

        scienceGrades.forEach(grade => {
            total += parseFloat(grade.value) || 0;
        });

        document.getElementById('scienceTotal').textContent = total.toFixed(2);
    }
    document.addEventListener('DOMContentLoaded', sumScienceGrades);
    document.querySelectorAll('input[name^="math["]').forEach(input => {
        input.addEventListener('change', sumScienceGrades);
    });

    function sumReligionGrades() {
        let total = 0;
        const religionGrades = document.querySelectorAll('input[name^="religion["]');

        religionGrades.forEach(grade => {
            total += parseFloat(grade.value) || 0;
        });

        document.getElementById('religionTotal').textContent = total.toFixed(2);
    }
    document.addEventListener('DOMContentLoaded', sumReligionGrades);
    document.querySelectorAll('input[name^="religion["]').forEach(input => {
        input.addEventListener('change', sumReligionGrades);
    });
</script>

<div class="container">
    <div style="padding-left:100px;">
        <h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
            STUDENT EVALUTAION - GRADE 1
            <hr> <i class="fa-solid fa-landmark"></i>
        </h1>
    </div>
    <form action="<?= ROOT ?>/Grade1_Table/updateTable" method="post">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Student ID</th>
                    <th>Full Name</th>
                    <th>Date</th>
                    <th>English</th>
                    <th>Math</th>
                    <th>Arabic</th>
                    <th>Religion</th>
                    <th>Science</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($grade1s as $grade1) : ?>
                    <tr>
                        <td><?= $grade1->id ?></td>
                        <td><?= $grade1->student_id ?></td>
                        <td><?= $grade1->fullname ?></td>
                        <td><?= $grade1->date ?></td>
                        <td>
                            <input type="number" step="1" id="english_<?= $grade1->id ?> " name="english[<?= $grade1->id ?>]" value="<?= $grade1->english ?? '' ?>" class="form-control">
                        </td>
                        <td>
                            <input type="number" step="1" id="math_<?= $grade1->id ?>" name="math[<?= $grade1->id ?>]" value="<?= $grade1->math ?? '' ?>" class="form-control">
                        </td>
                        <td>
                            <input type="number" step="1" id="arabic_<?= $grade1->id ?>" name="arabic[<?= $grade1->id ?>]" value="<?= $grade1->arabic ?? '' ?>" class="form-control">
                        </td>
                        <td>
                            <input type="number" step="1" id="religion_<?= $grade1->id ?>" name="religion[<?= $grade1->id ?>]" value="<?= $grade1->religion ?? '' ?>" class="form-control">
                        </td>
                        <td>
                            <input type="number" step="1" id="science_<?= $grade1->id ?>" name="science[<?= $grade1->id ?>]" value="<?= $grade1->science ?? '' ?>" class="form-control">
                        </td>
                    </tr>

                <?php endforeach; ?>
                <tr>
                    <td><label>Total</label< /td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><span id="englishTotal">0</span></td>
                    <td><span id="mathTotal">0</span></td>
                    <td><span id="arabicTotal">0</span></td>
                    <td><span id="religionTotal">0</span></td>
                    <td><span id="scienceTotal">0</span></td>

                </tr>

                </body>
        </table>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="<?= ROOT ?>/classes" class="btn btn-danger">Back</a>
    </form>

</div>


<?php $this->view('includes/footer'); ?>