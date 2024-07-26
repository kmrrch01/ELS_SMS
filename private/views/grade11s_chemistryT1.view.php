<?php $this->view('includes/header'); ?>
<?php $this->view('includes/nav'); ?>
<script>
    function calculateAllSums() {
        var table = document.getElementById('myTable'); // Replace 'myTable' with your table's ID
        var rows = table.getElementsByTagName('tr');

        for (var i = 1; i < rows.length; i++) { // Start from 1 to skip header row
            var inputs = rows[i].getElementsByTagName('input');
            var sum = 0;

            for (var j = 0; j < inputs.length - 2; j++) { // -1 to exclude the sum input
                sum += parseFloat(inputs[j].value) || 0;
            }

            sum = (sum / 3);
            var percent = (sum / 100) * 100;

            inputs[inputs.length - 2].value = sum.toFixed(0);
            inputs[inputs.length - 1].value = percent.toFixed(0);
            // Set sum in the last input
        }
    }

    function exportToExcel(tableId) {
    let table = document.getElementById(tableId);
    let inputs = table.getElementsByTagName('input');
    
    // Replace input elements with their values
    for (let i = 0; i < inputs.length; i++) {
        let input = inputs[i];
        let value = input.value;
        let textNode = document.createTextNode(value);
        input.parentNode.replaceChild(textNode, input);
    }

    let tableData = table.outerHTML;
    tableData = tableData.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
    tableData = tableData + '<br /><br />';

    let a = document.createElement('a');
    a.href = `data:application/vnd.ms-excel, ${encodeURIComponent(tableData)}`;
    a.download = 'downloaded_file_' + getRandomNumbers() + '.xls';
    a.click();

    // Refresh the page to restore the inputs
    location.reload();
}

    function getRandomNumbers() {
        let dateObj = new Date()
        let dateTime = `${dateObj.getHours()}${dateObj.getMinutes()}${dateObj.getSeconds()}`

        return `${dateTime}${Math.floor((Math.random().toFixed(2)*100))}`
    }
</script>

<div class="container">
    <div style="padding-left:100px;">
        <h1 style="font-family: copperplate;" class="breadcrumb justify-content-center">
            STUDENT EVALUTAION - GRADE 11s Chemistry Term 1
            <hr> <i class="fa-solid fa-landmark"></i>
        </h1>
    </div>
    <a href="">
        <a href="" style="margin-left: 100px ;">
            <button class="btn btn-success" onclick="exportToExcel('myTable')"><i class="fa-solid fa-download"></i></button>
        </a>
        <a href="<?= ROOT ?>/Grade11s_arabicT1/excel">
            <button class="btn btn-success"><i class="fa-solid fa-file-import"></i></button>
        </a>
        <form action="<?= ROOT ?>/Grade11s_chemistryT1/updateTable" method="post">
            <table class="table table-striped" id="myTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Student ID</th>
                        <th>Full Name</th>
                        <th>Date</th>
                        <th>homework</th>
                        <th>test</th>
                        <th>quiz</th>
                        <th>term_avg</th>
                        <th>term_perc</th>
                        <th>
                        </th>
                    </tr>
                </thead>
                <tbody>
                <?php if(is_array($grade1s) || is_object($grade1s)) : ?>
                    <?php foreach ($grade1s as $grade1) : ?>
                        <tr>
                            <td><?= $grade1->id ?></td>
                            <td><?= $grade1->student_id ?></td>
                            <td><?= $grade1->fullname ?></td>
                            <td><?= $grade1->date ?></td>
                            <td>
                                <input type="number" step="1" id="homework_<?= $grade1->id ?> " name="homework[<?= $grade1->id ?>]" value="<?= $grade1->homework ?? '' ?>" class="form-control">
                            </td>
                            <td>
                                <input type="number" step="1" id="test_<?= $grade1->id ?>" name="test[<?= $grade1->id ?>]" value="<?= $grade1->test ?? '' ?>" class="form-control">
                            </td>
                            <td>
                                <input type="number" step="1" id="quiz_<?= $grade1->id ?>" name="quiz[<?= $grade1->id ?>]" value="<?= $grade1->quiz ?? '' ?>" class="form-control">
                            </td>
                            <td>
                                <input type="number" step="1" id="term_avg_<?= $grade1->id ?>" name="term_avg[<?= $grade1->id ?>]" value="<?= $grade1->term_avg ?? '' ?>" class="form-control">
                            </td>
                            <td>
                                <input type="number" step="1" id="term_perc_<?= $grade1->id ?>" name="term_perc[<?= $grade1->id ?>]" value="<?= $grade1->term_perc ?? '' ?>" class="form-control">
                            </td>
                            <td><button onclick="calculateAllSums()" class="btn-sm btn btn-info text-white"><i class="fa-solid fa-edit"></i></button></td>
                        </tr>

                    <?php endforeach; ?>
                    <?php else:?>
                        <h1><i class="fa-solid fa-triangle-exclamation"></i> No Students Found</h1>
                    <?php endif;?>

                    </body>
            </table><br />
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="<?= ROOT ?>/Subjects_grade11s" class="btn btn-danger">Back</a>
        </form>

</div>


<?php $this->view('includes/footer'); ?>