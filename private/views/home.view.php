<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img style="width:65px;" src="assets/els_logo1.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">DASHBOARD <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">STAFF</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">STUDENTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">CLASSES</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">TESTS</a>
      </li>
</ul>
      <ul class="navbar-nav ms-auto">
      <li class="nav-item dropdown dropdown-content-start">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <?=Auth::user()?>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">PROFILE</a>
          <a class="dropdown-item" href="#">LOG OUT</a>
        </div>
      </li>

    </ul>
  </div>
</nav>
<div style="min-width:350px;">

    <div class="container-fluid">
    </div>


<script type="text/javascript" src="assets/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap.min.js"></script>

<?php

?>

</body>
</html>