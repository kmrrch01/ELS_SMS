<?php $this->view('includes/header') ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

<div class="container-fluid p-4 shadow mx-auto" style="max-width: 210mm; height: 297mm; background-color: white;">
    <html>

    <head>
        <title>school report card design</title>

        <style>
            @media print {
                body {
                    margin: 0;
                    padding: 0;
                }

                .container-fluid {
                    width: 210mm;
                    height: 297mm;
                    page-break-after: always;
                }
            }
        </style>
        <script>
            function calculateTotalSum() {
                var table = document.getElementById('myTable'); // Replace 'myTable' with your table's ID
                var totalSum1 = 0;
                var totalColumnIndex = 4; // Adjust this index based on which column is your total column

                for (var i = 1; i < table.rows.length; i++) {
                    var cellValue = parseFloat(table.rows[i].cells[totalColumnIndex].innerText) || 0;
                    totalSum1 += cellValue;
                }

                document.getElementById('totalSum1').innerText = totalSum1.toFixed(2);


            }

            function calculateTotalSum1() {
                var table = document.getElementById('myTable'); // Replace 'myTable' with your table's ID
                var totalSum2 = 0;
                var totalColumnIndex = 8; // Adjust this index based on which column is your total column

                for (var i = 1; i < table.rows.length; i++) {
                    var cellValue = parseFloat(table.rows[i].cells[totalColumnIndex].innerText) || 0;
                    totalSum2 += cellValue;
                }

                document.getElementById('totalSum2').innerText = totalSum2.toFixed(2);


            }

            function calculateTotalSum2() {
                var table = document.getElementById('myTable'); // Replace 'myTable' with your table's ID
                var totalSum3 = 0;
                var totalColumnIndex = 12; // Adjust this index based on which column is your total column

                for (var i = 1; i < table.rows.length; i++) {
                    var cellValue = parseFloat(table.rows[i].cells[totalColumnIndex].innerText) || 0;
                    totalSum3 += cellValue;
                }

                document.getElementById('totalSum3').innerText = totalSum3.toFixed(2);



            }

            function calculateGrandTotal() {
                var sum1 = parseFloat(document.getElementById('totalSum1').innerText) || 0;
                var sum2 = parseFloat(document.getElementById('totalSum2').innerText);
                var sum3 = parseFloat(document.getElementById('totalSum3').innerText);

                var grandTotal = sum1 + sum2 + sum3;

                document.getElementById('totalSum').innerText = grandTotal.toFixed(2);
                var maxScore = 5; // Adjust this if the maximum score is different
                var percentage = grandTotal / maxScore;
                document.getElementById('per').innerText = percentage.toFixed(2) + '%';
                var grade = '';
                if (percentage >= 90) {
                    grade = 'A';
                } else if (percentage >= 80) {
                    grade = 'B';
                } else if (percentage >= 70) {
                    grade = 'C';
                } else if (percentage >= 60) {
                    grade = 'D';
                } else if (percentage >= 50) {
                    grade = 'E';
                } else {
                    grade = 'F';
                }
                document.getElementById('grade').innerText = grade;

            }
        </script>
    </head>

    <body onload="calculateTotalSum(),calculateTotalSum1(),calculateTotalSum2(),calculateGrandTotal()">
        <?php foreach ($grade1s_ar as $key => $grade1_ar) : ?>
            <?php $grade1_en = $grade1s_en[$key] ?? null; ?>
            <?php $grade1s_sc = $grade1s_sc[$key] ?? null; ?>
            <?php $grade1s_ma = $grade1s_ma[$key] ?? null; ?>
            <?php $grade1s_re = $grade1s_re[$key] ?? null; ?>

            <?php $grade1_arT2 = $grade1s_arT2[$key] ?? null; ?>
            <?php $grade1_enT2 = $grade1s_enT2[$key] ?? null; ?>
            <?php $grade1s_scT2 = $grade1s_scT2[$key] ?? null; ?>
            <?php $grade1s_maT2 = $grade1s_maT2[$key] ?? null; ?>
            <?php $grade1s_reT2 = $grade1s_reT2[$key] ?? null; ?>

            <?php $grade1s_arT3 = $grade1s_arT3[$key] ?? null; ?>
            <?php $grade1s_enT3 = $grade1s_enT3[$key] ?? null; ?>
            <?php $grade1s_scT3 = $grade1s_scT3[$key] ?? null; ?>
            <?php $grade1s_maT3 = $grade1s_maT3[$key] ?? null; ?>
            <?php $grade1s_reT3 = $grade1s_reT3[$key] ?? null; ?>


            <div style="page-break-after: always;">
                <div style="text-align:center;">
                    <img class="btn position-relative" style="cursor: default; width: 150px; height:100px;" src="<?= ASSETS ?>/els_logo1.png"></img>

                    <H6 style=" font-weight:bold; font-size:20px; font-family: 'Strait', sans-serif;">Student Name: <?= $grade1_ar->fullname ?> </h2>
                        <h6 style=" font-style:italic; font-size:20px; font-family: 'Strait', sans-serif;">Student ID:<?= $grade1_ar->student_id ?></h6><br>
                </div>
                <div id="reportCard_<?= $key ?>" class="report-card">
                    <table id="myTable" height="100%" width="100%" border="1" border color="black" cellpadding="1" cellspacing="0">
                        <tr>
                            <th>
                                <font size="4">Scholastic<br>area
                            </th>
                            </font>
                            <th colspan="4">
                                <font size="4">Academic year 2023-<?= $grade1_ar->acad_year ?>(Term1)
                            </th>
                            <th colspan="4">
                                <font size="4">Academic year 2023-<?= $grade1_ar->acad_year ?>(Term2)
                            </th>
                            <th colspan="4">
                                <font size="4">Academic year 2023-<?= $grade1_ar->acad_year ?>(Term3)
                            </th>
                            </font>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <th>assg</th>
                            <th>test</th>
                            <th>quiz</th>
                            <th>Total</th>

                            <th>assg</th>
                            <th>test</th>
                            <th>quiz</th>
                            <th>Total</th>

                            <th>assg</th>
                            <th>test</th>
                            <th>quiz</th>
                            <th>Total</th>
                        </tr>
                        <tr>
                            <td>Arabic</td>
                            <td><?= $grade1_ar->homework ?></td>
                            <td><?= $grade1_ar->test ?></td>
                            <td><?= $grade1_ar->quiz ?></td>
                            <td><?= $grade1_ar->term_avg ?></td>
                            <td><?= $grade1_arT2->homework ?></td>
                            <td><?= $grade1_arT2->test ?></td>
                            <td><?= $grade1_arT2->quiz ?></td>
                            <td><?= $grade1_arT2->term_avg ?></td>
                            <td><?= $grade1s_arT3->homework ?></td>
                            <td><?= $grade1s_arT3->test ?></td>
                            <td><?= $grade1s_arT3->quiz ?></td>
                            <td><?= $grade1s_arT3->term_avg ?></td>
                        </tr>
                        <tr>
                            <TD>English</TD>
                            <td><?= $grade1_en->homework ?></td>
                            <td><?= $grade1_en->test ?></td>
                            <td><?= $grade1_en->quiz ?></td>
                            <td><?= $grade1_en->term_avg ?></td>
                            <td><?= $grade1_enT2->homework ?></td>
                            <td><?= $grade1_enT2->test ?></td>
                            <td><?= $grade1_enT2->quiz ?></td>
                            <td><?= $grade1_enT2->term_avg ?></td>
                            <td><?= $grade1s_enT3->homework ?></td>
                            <td><?= $grade1s_enT3->test ?></td>
                            <td><?= $grade1s_enT3->quiz ?></td>
                            <td><?= $grade1s_enT3->term_avg ?></td>
                        </tr>
                        <TR>
                            <TD>Math</TD>
                            <td><?= $grade1s_ma->homework ?></td>
                            <td><?= $grade1s_ma->test ?></td>
                            <td><?= $grade1s_ma->quiz ?></td>
                            <td><?= $grade1s_ma->term_avg ?></td>
                            <td><?= $grade1s_maT2->homework ?></td>
                            <td><?= $grade1s_maT2->test ?></td>
                            <td><?= $grade1s_maT2->quiz ?></td>
                            <td><?= $grade1s_maT2->term_avg ?></td>.
                            <td><?= $grade1s_maT3->homework ?></td>
                            <td><?= $grade1s_maT3->test ?></td>
                            <td><?= $grade1s_maT3->quiz ?></td>
                            <td><?= $grade1s_maT3->term_avg ?></td>

                        </tr>
                        <TD>Science</TD>
                        <td><?= $grade1s_sc->homework ?></td>
                        <td><?= $grade1s_sc->test ?></td>
                        <td><?= $grade1s_sc->quiz ?></td>
                        <td><?= $grade1s_sc->term_avg ?></td>
                        <td><?= $grade1s_scT2->homework ?></td>
                        <td><?= $grade1s_scT2->test ?></td>
                        <td><?= $grade1s_scT2->quiz ?></td>
                        <td><?= $grade1s_scT2->term_avg ?></td>
                        <td><?= $grade1s_scT3->homework ?></td>
                        <td><?= $grade1s_scT3->test ?></td>
                        <td><?= $grade1s_scT3->quiz ?></td>
                        <td><?= $grade1s_scT3->term_avg ?></td>
                        </tr>
                        <tr>
                            <TD>Religion</TD>
                            <td><?= $grade1s_re->homework ?></td>
                            <td><?= $grade1s_re->test ?></td>
                            <td><?= $grade1s_re->quiz ?></td>
                            <td><?= $grade1s_re->term_avg ?></td>
                            <td><?= $grade1s_reT2->homework ?></td>
                            <td><?= $grade1s_reT2->test ?></td>
                            <td><?= $grade1s_reT2->quiz ?></td>
                            <td><?= $grade1s_reT2->term_avg ?></td>
                            <td><?= $grade1s_reT3->homework ?></td>
                            <td><?= $grade1s_reT3->test ?></td>
                            <td><?= $grade1s_reT3->quiz ?></td>
                            <td><?= $grade1s_reT3->term_avg ?></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <TD>Total</TD>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td id="totalSum1"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td id="totalSum2"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td id="totalSum3"></td>

                        </tr>

                    </TABLE><BR>
                    <hr align="center" size"2"noshade>
                    <Table height="20%" width="100%" border="2" cellpadding"1"cellspacing="5" align="center" <TR>
                        <td id="totalSum"></td>
                        <td id="per"></td>
                        <td id="grade"></td>
                        </tr>
                        <tr>
                            <td>Grand Total</td>
                            <td>Percentage</td>
                            <td>Over all Grade</td>
                        </tr>
                    </table><br>
                </div>
                <BR>
                <p align="left"><B>Class teacher's Remark:</b></p>
                <hr size="2" width="75%" align="right" color="black"><BR>
                <hr size="2" width"100%"align="center" color="black"><BR>
                <hr size="2" width="20%" align="left" noshade><br>
                <p align="left"><B>Date</b></p>
                <hr size="2" width"20%"align="center" noshade><b>Signature Of Principal</b><br>
            </div>
            <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
    </body><br><br><br><br><br><br><br><br><br><br><br><br>
    <div id="ribbon" style="display:flex;" class="container">
        <h3 class="col text-center">EUROPEAN LEBANESE SCHOOL MANAGEMENT SYSTEM</h3>
        <div class="user-icon-container">
            <i class="fa fa-user"></i>
            <span class="user-name"><?= ucwords(str_replace("_", " ", Auth::user())) ?> || <?= Auth::user_id() ?></span>
        </div>
    </div>
<?php endforeach; ?>

    </html>

</div>



<?php $this->view('includes/footer') ?>