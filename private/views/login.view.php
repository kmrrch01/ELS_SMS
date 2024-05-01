<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Login</title>
</head>
<body style="background-image: url('assets/blue1.jpg');">
<div style="min-width:350px;">
<form method="post">
        <div class="container-fluid">
            

            <div class="border border-primary p-4 mx-auto shadow rounded" style="background-color: #282855; margin-top: 100px;width: 100%; max-width: 340px;">
            <h4 class="text-center" style="color: white; margin-top: 5px;">ELS Management System</h4>
            <img src="assets/els_logo1.png" class="mx-auto d-block rounded-circle" style="width: 250px;">
            <br>
            <?php if(count($errors) > 0):?>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Errors:</strong>
            <?php foreach($errors as $error):?>
               <br><?=$error?>
            <?php endforeach?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <?php endif;?>
                    <input class="my-2 form-control" type="email" value="<?=get_var('email')?>" name="email" placeholder="Email" autofocus></input>
                    <input class="my-2 form-control" type="password" value="<?=get_var('password')?>" name="password" placeholder="Password"></input>
                    <br>
                    <button class="btn btn-primary" style="margin-left: 40%;">Login</button>

            </div>
            </form>

        </div>


</div>

</body>
</html>