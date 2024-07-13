<?php $this->view('includes/header');?>
<?php $this->view('includes/nav');?>

<style>
    .circle-tile {
    text-align: center;
}
.circle-tile-heading {
    border: 3px solid rgba(255, 255, 255, 0.3);
    border-radius: 100%;
    color: #FFFFFF;
    height: 80px;
    margin: 0 auto -40px;
    position: relative;
    transition: all 0.3s ease-in-out 0s;
    width: 80px;
}
.circle-tile-heading .fa {
    text-align:center;
    margin-left: 5px;

}
.circle-tile-content {
    padding-top: 50px;
}
.circle-tile-number {
    font-size: 26px;
    font-weight: 700;
    line-height: 1;
    padding: 5px 0 15px;
}
.circle-tile-description {
    text-transform: uppercase;
}
.circle-tile-footer {
    background-color: rgba(0, 0, 0, 0.1);
    color: rgba(255, 255, 255, 0.5);
    display: block;
    padding: 5px;
    transition: all 0.3s ease-in-out 0s;
}
.circle-tile-footer:hover {
    background-color: rgba(0, 0, 0, 0.2);
    color: rgba(255, 255, 255, 0.5);
    text-decoration: none;
}
.circle-tile-heading.dark-blue:hover {
    background-color: #2E4154;
}
.circle-tile-heading.green:hover {
    background-color: #138F77;
}
.circle-tile-heading.orange:hover {
    background-color: #DA8C10;
}
.circle-tile-heading.blue:hover {
    background-color: #2473A6;
}
.circle-tile-heading.red:hover {
    background-color: #CF4435;
}
.circle-tile-heading.purple:hover {
    background-color: #7F3D9B;
}
.tile-img {
    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);
}

.dark-blue {
    background-color: #34495E;
}
.green {
    background-color: #16A085;
}
.blue {
    background-color: #2980B9;
}
.orange {
    background-color: #F39C12;
}
.red {
    background-color: #E74C3C;
}
.purple {
    background-color: #8E44AD;
}
.dark-gray {
    background-color: #7F8C8D;
}
.gray {
    background-color: #95A5A6;
}
.light-gray {
    background-color: #BDC3C7;
}
.yellow {
    background-color: #F1C40F;
}
.text-dark-blue {
    color: #34495E;
}
.text-green {
    color: #16A085;
}
.text-blue {
    color: #2980B9;
}
.text-orange {
    color: #F39C12;
}
.text-red {
    color: #E74C3C;
}
.text-purple {
    color: #8E44AD;
}
.text-faded {
    color: rgba(255, 255, 255, 0.7);
}
</style>
<?php           $table_user = 'users';
                $user = new User();
                $result = $user->count($table_user)[0];
                $usCount = $result->{'count(*)'};

                $table_student = 'students';
                $student = new Student();
                $result = $student->count($table_student)[0];
                $stuCount = $result->{'count(*)'};

                $table_classes = 'classes';
                $classes = new Classes_model();
                $result = $classes->count($table_classes)[0];
                $classCount = $result->{'count(*)'};

                ?>


<div style="margin-left:300px"class="container bootstrap snippet">
  <div class="row">
    <div class="col-lg-2 col-sm-6">
      <div class="circle-tile ">
        <a href="<?=ROOT?>/users"><div class="circle-tile-heading dark-blue"><i class="fa fa-users fa-fw  fa-3x"></i></div></a>
        <div class="circle-tile-content dark-blue">
          <div class="circle-tile-description text-faded"> Users</div>
          <div class="circle-tile-number text-faded "><?php echo $usCount?></div>
      
        </div>
      </div>
    </div>
     
    <div class="col-lg-2 col-sm-6">
      <div class="circle-tile ">
        <a href="<?=ROOT?>/students"><div class="circle-tile-heading dark-blue"><i class="fa fa-user-graduate fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content dark-blue">
          <div class="circle-tile-description text-faded"> Students </div>
          <div class="circle-tile-number text-faded "><?php echo $stuCount?></div>
        </div>
      </div>
    </div> 
    <div class="col-lg-2 col-sm-6">
      <div class="circle-tile ">
        <a href="<?=ROOT?>/classes"><div class="circle-tile-heading dark-blue"><i class="fa fa-book fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content dark-blue">
          <div class="circle-tile-description text-faded"> Classes </div>
          <div class="circle-tile-number text-faded "><?php echo $classCount?></div>
        </div>
      </div>
    </div> 
 
  </div> 
</div>  
  
</div>
</div>

<?php $this->view('includes/footer');?>


<!-- This is the Home view -->