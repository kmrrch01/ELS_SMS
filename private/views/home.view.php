<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
  

    <style>
        h1{
            font-size: 80px;

        }

        .card{
            min-width: 250px;
        }
    </style>
    <div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
        <div class="row justify-content-center">
           
            <div class="card col-3 shadow rounded m-4 p-0 border">
                <div class="card-header">SCHOOLS</div>
                <h1 class="text-center" style="font-size: 80px;">
                    <i class="fa fa-graduation-cap"></i>
                </h1>
                <div class="card-footer">view all schools</div>
            </div>
            

            <div class="card col-3 shadow rounded m-4 p-0 border">
                <div class="card-header">Staff</div>
                <h1 class="text-center" style="font-size: 80px;">
                    <i class="fa fa-chalkboard-teacher"></i>
                </h1>
                <div class="card-footer">view all staff</div>
            </div>

            <div class="card col-3 shadow rounded m-4 p-0 border">
                <a href="<?ROOT?>/profile">
                <div class="card-header">Profile</div>
                <h1 class="text-center" style="font-size: 80px;">
                    <i class="fa fa-user-graduate"></i>
                </h1>
                <div class="card-footer">view personal profile</div>
                </a>
            </div>
        </div>
    </div>
<?php $this->view('includes/footer')?>