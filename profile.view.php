<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Profile</title>
</head>
<body>
<div style="min-width:350px;">

    <div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Library</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-sm-4 col-md-3">
                <img src="C:\xampp\htdocs\ELS\public\assets" class="border border-primary d-block mx-auto rounded-circle" style="width: 150px;">
                <h3 class="text center">Hasan Hammoud</h3>
            </div>
            <div class="col-sm-8 col-md-9 bg-light p-2">
                <table class="table table-hover table-striped table-bordered">
                    <tr><th>Grade:</th><td>7th</td></tr>
                    <tr><th>Phone number:</th><td>+961  71421318</td></tr>
                    <tr><th>Gender:</th><td>Male</td></tr>
                </table>
            </div>
        </div>
        <br>
        <div class="container-fluid">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Personal</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Family</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Grades</a>
            </li>
            </ul>
            <nav class="navbar bg-body-tertiary">
                <div class="container-fluid">
                    <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
                </nav>
        </div>
    </div>

</div>

</body>
</html>