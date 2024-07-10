<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
  <style>
    h1 {
        font-size:55px;

    }
    .card-header{
        font-weight: bold;
        text-align: center;

    }
    col-3{
        color: black;
        transition: color 0.5s;

    }
    col-3:hover{
        color: blue;
    }
    a{
        color: black;
    }
    a:link{
        text-decoration: none;
        transition: color 1s;

    }
    a:hover{
        opacity: 1;
        color: blue;
    }
    .card{
     min-width: 250px;
    --c: #0000FF; /* the border color */
    --b: 5px;    /* the border thickness*/
    --g: 5px;     /* the gap on hover */

    padding: calc(var(--g) + var(--b));
    --_g: #0000 25%,var(--c) 0;
    background: 
    conic-gradient(from 180deg at top    var(--b) right var(--b),var(--_g))
    var(--_i,200%) 0  /200% var(--_i,var(--b))  no-repeat,
    conic-gradient(            at bottom var(--b) left  var(--b),var(--_g))
    0   var(--_i,200%)/var(--_i,var(--b)) 200%  no-repeat;
    transition: .2s, background-position .2s .2s;
    cursor: pointer;
}
    .card:hover {
        --_i: 100%;
        transition: .2s, background-size .2s .2s;
    }
</style>
<div class="dashboard">
<div class=" container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">

    <div class="row justify-content-center">
        
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/users">
                    <div class="card-header">STAFF</div>
                <h1 class="text-center"><i class="fa fa-chalkboard-teacher fa-1x "></i></h1>
                <div class="card-footer">View all staff members</div>
                </a>
            </div>
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                 <a href="<?=ROOT?>/signup">
                <div class="card-header">REGISTRATION</div>
                <h1 class="text-center"><i class="fa fa-graduation-cap fa-1x"></i></h1>
                <div class="card-footer">Register a new student or staff member</div>
                </a>
            </div>
        
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
               <a href="<?=ROOT?>/students">
                 <div class="card-header">STUDENTS</div>
                <h1 class="text-center"><i class="fa fa-user-graduate fa-1x"></i></h1>
                <div class="card-footer">View all students</div>
                </a>
            </div>

        
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/classes">
                <div class="card-header">CLASSES</div>
                <h1 class="text-center"><i class="fa fa-university fa-1x"></i></h1>
                <div class="card-footer">View all classes</div>
                </a>
            </div>

        
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/statistics">
                <div class="card-header">STATISTICS</div>
                <h1 class="text-center"><i class="fa-solid fa-chart-line fa-1x"></i></h1>
                <div class="card-footer">View school statistics</div>
                </a>
            </div>

       
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                 <a href="<?=ROOT?>/profile">
                <div class="card-header">PROFILE</div>
                <h1 class="text-center"><i class="fa fa-id-card fa-1x"></i></h1>
                <div class="card-footer">View your profile</div>
                </a>
            </div>

            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/settings">
                <div class="card-header">SETTINGS</div>
                <h1 class="text-center"><i class="fa fa-cogs fa-1x"></i></h1>
                <div class="card-footer">View app settings</div>
                </a>
            </div>

        
            <div class="card col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/logout">
                <div class="card-header">LOG OUT</div>
                <h1 class="text-center"><i class="fa-solid fa-arrow-right-from-bracket fa-1x"></i></h1>
                <div class="card-footer">Log out of your account</div>
                </a>
            </div>

    </div>
</div>
</div>

<?php $this->view('includes/footer')?>