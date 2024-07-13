<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>
  	<meta name="description" content="Free Web tutorials">
  	<meta name="keywords" content="HTML, CSS, JavaScript">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" type="text/css" href="<?=ASSETS?>/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?=ASSETS?>/all.min.css">
	<link rel="stylesheet" type="text/css" href="<?=ASSETS?>/1.css">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

</head>
<header>




</div>

</header>
<div>
	<style>
		<style>
$primary: #dd5555;

*, *:before, *:after {
box-sizing: border-box;
}
img { max-width: 100%; height: auto; vertical-align: sub; }

body {
  font-family: 'Montserrat', sans-serif;
  background: #ebebeb;  
  padding-top: 20px;
}


	#ribbon{
		margin-bottom: 10px;
		position: relative;
		z-index: 1;
		background: #34495E;
		color: white;
		text-align: center;
		font-family: 'Bodoni MT';
		padding: 10px;
		border: 1px solid #ccc;
		box-shadow: 0 6px 10px rgba(0, 0, 0, 1);
		
	}


	.fa-user-graduate{
		font-size: 25px;
		display: flex;
		position: 0px 0px;
		z-index: 1;
	}

	.hover-menu{
		display: none;
	}
	.user-icon-container {
        position: relative;
        display: inline-block;
        margin-left: 10px;
    }

    .user-icon-container .fa-user {
        font-size: 20px;
        color: white;
        cursor: pointer;
    }

    .user-name {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        color: #333;
        padding: 5px 10px;
        border-radius: 4px;
        top: 100%;
        right: 0;
        white-space: nowrap;
    }

    .user-icon-container:hover .user-name {
        display: block;
    }
	

</style>
<div id="ribbon" style="display:flex;" class="container">
    <h3 class="col text-center">EUROPEAN LEBANESE SCHOOL MANAGEMENT SYSTEM</h3>
    <div class="user-icon-container">
        <i class="fa fa-user"></i>
        <span class="user-name"><?= ucwords(str_replace("_", " ", Auth::user())) ?> || <?=Auth::user_id()?></span>
    </div>
</div>

</div>
</div>



</h3>




  



<div style="min-width:350px;">