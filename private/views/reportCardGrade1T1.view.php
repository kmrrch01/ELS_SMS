<?php $this->view('includes/header') ?>
<?php $this->view('includes/nav') ?>
<html>
<style>
  h2 {
    line-height: 0px;
  }

  .semester {}

  .content tr,
  td {
    padding: 25px;
    border: 2px solid grey;
  }

  content {
    font-family: serif;
  }

  body {
    font-family: Helvetica, sans-serif;
  }

  thead {
    font-family: Helvetica, sans-serif;
    font-weight: bold;
    background-color: #333300;
    color: white;
  }

  table {
    border-collapse: collapse;
  }

  th,
  tr {
    border: 2px solid grey;
  }

  tbody {}

  .course {
    padding: 0px 250px;
  }

  .code {}

  th {
    padding: 10px 20px;
  }
</style>

<script>
  function printPage() {
    var printContents = document.getElementById("rcardtitle").innerHTML;
    var originalContents = document.body.innerHTML;
  }

  function ar_average() {
    var arH = parseFloat(document.getElementById("arHomework").textContent);
    var arQ = parseFloat(document.getElementById("arQuiz").textContent);
    var arT = parseFloat(document.getElementById("arTest").textContent);

    var arAvg = (arH + arQ + arT) / 3;


    document.getElementById('arAvg').textContent = arAvg.toFixed(2);

  }

  document.addEventListener('DOMContentLoaded', ar_average);

  function math_average() {
    var mathH = parseFloat(document.getElementById("mathHomework").textContent);
    var mathQ = parseFloat(document.getElementById("mathQuiz").textContent);
    var mathT = parseFloat(document.getElementById("mathTest").textContent);

    var mathAvg = (mathH + mathQ + mathT) / 3;

    document.getElementById('mathAvg').textContent = mathAvg.toFixed(2);
  }

  document.addEventListener('DOMContentLoaded', math_average);

  function en_average() {
    var enH = parseFloat(document.getElementById("enHomework").textContent);
    var enQ = parseFloat(document.getElementById("enQuiz").textContent);
    var enT = parseFloat(document.getElementById("enTest").textContent);

    var enAvg = (enH + enQ + enT) / 3;

    document.getElementById('enAvg').textContent = enAvg.toFixed(2);
  }
  document.addEventListener('DOMContentLoaded', en_average);



  function sc_average() {
    var scH = parseFloat(document.getElementById("scHomework").textContent);
    var scQ = parseFloat(document.getElementById("scQuiz").textContent);
    var scT = parseFloat(document.getElementById("scTest").textContent);

    var scAvg = (scH + scQ + scT) / 3;
    document.getElementById('scAvg').textContent = scAvg.toFixed(2);
  }
  document.addEventListener('DOMContentLoaded', sc_average);

  function rel_average() {
    var relH = parseFloat(document.getElementById("relHomework").textContent);
    var relQ = parseFloat(document.getElementById("relQuiz").textContent);
    var relT = parseFloat(document.getElementById("relTest").textContent);

    var relAvg = (relH + relQ + relT) / 3;

    document.getElementById('relAvg').textContent = relAvg.toFixed(2);
  }
  document.addEventListener('DOMContentLoaded', rel_average);

  function ar_gradePerc() {
    var arAvg = parseFloat(document.getElementById("arAvg").textContent);
    var arGradePerc = (arAvg / 100) * 100;
    document.getElementById('arGradePerc').textContent = arGradePerc.toFixed(2) + '%';

  }
  document.addEventListener('DOMContentLoaded', ar_gradePerc);
</script>


<body style="max-width:2480px; max-height:3508px; margin-left:100px;">
  <?php foreach ($grade1s_arT1 as $key => $grade1_arT1) : ?>
    <?php $grade1_mathT1 = $grade1s_mathT1[$key] ?? null; ?>
    <?php $grade1_enT1 = $grade1s_enT1[$key] ?? null; ?>
    <?php $grade1_scT1 = $grade1s_scT1[$key] ?? null; ?>
    <?php $grade1_relT1 = $grade1s_relT1[$key] ?? null; ?>
    <div style="margin-top: 100px;" id="rcardtitle">

      <h3>Student Report Card - <?= $grade1_arT1->fullname ?></h3>
    </div>
    <table class="table striped-hover content">
      <th>SUBJECT</th>

      <th colspan="3">GRADES
        <br>
        <tr>
          <th></th>
          <th>SUBJECT WEIGHT</th>
          <th>HOMEWORK</th>
          <th>QUIZ</th>
          <th>TEST</th>
          <th>AVERAGE</th>
          <th id="avgPerc">Grade Perc.</th>
        </tr>
      </th>
      <th>

        <tr>
          <td>ARABIC</td>
          <td>100</td>
          <td id="arHomework"><?= $grade1_arT1->homework ?></td>
          <td id="arQuiz"><?= $grade1_arT1->quiz ?></td>
          <td id="arTest"><?= $grade1_arT1->test ?></td>
          <td id="arAvg"></td>
          <td id="arGradePerc"></td>

        </tr>

        <tr>
          <td>ENGLISH</td>
          <td>100</td>
          <td id="enHomework"><?= $grade1_enT1->homework ?></td>
          <td id="enQuiz"><?= $grade1_enT1->quiz ?></td>
          <td id="enTest"><?= $grade1_enT1->test ?></td>
          <td id="enAvg"></td>
        </tr>

        <tr>
          <td>MATH</td>
          <td>100</td>
          <td id="mathHomework"><?= $grade1_mathT1->homework ?></td>
          <td id="mathQuiz"><?= $grade1_mathT1->quiz ?></td>
          <td id="mathTest"><?= $grade1_mathT1->test ?></td>
          <td id="mathAvg"></td>
        </tr>

        <tr>
          <td>SCIENCE</td>
          <td>100</td>
          <td id="scHomework"><?= $grade1_scT1->homework ?></td>
          <td id="scQuiz"><?= $grade1_scT1->quiz ?></td>
          <td id="scTest"><?= $grade1_scT1->test ?></td>
          <td id="scAvg"></td>
        </tr>

        <tr>
          <td>RELIGION</td>
          <td>100</td>
          <td id="relHomework"><?= $grade1_relT1->homework ?></td>
          <td id="relQuiz"><?= $grade1_relT1->quiz ?></td>
          <td id="relTest"><?= $grade1_relT1->test ?></td>
          <td id="relAvg"></td>
        </tr>


    </table>
  <?php endforeach; ?>
  <a href="<?= ROOT ?>/classes" class="btn btn-primary">Back</a>


</body>

<?php $this->view('includes/footer') ?>