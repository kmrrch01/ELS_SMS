<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>

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

.btn {
  display: inline-block;
  padding: 6px 14px;
  background: #f2f2f2;
  border-radius: 3px;
  color: #7a7a7a;
  font-size: (13/16) + em;
  transition: background .3s ease, color .3s ease;
  text-decoration: none;
  &:hover {
    background: darken(#f2f2f2, 5%);
    color: darken(#b9bcbc, 15%);
  }
  &.btn-primary {
    background: $primary;
    color: rgba(255,255,255,.9);
    &:hover, &.active {
      background: darken($primary, 5%);
    }
  }
  &.btn-large {
    padding: 12px 28px;
  }
  &.btn-caps {
    text-transform: uppercase;
  }
  &.btn-block {
    display: block;
    width: 100%; 
    text-align: center;
  }
}



.box {
  background: #f9f9f9;
  box-shadow: 0 0 1px rgba(0,0,0,.2), 0 2px 4px rgba(0,0,0,.1);
  border-radius: 5px;
  margin-bottom: 20px;
  text-shadow: 1px 1px 1px rgba(0,0,0,.1);
  h2 {
    color: $primary;
    font-size: (14/16) + em;
  }
  p {
    font-size: (12/16) + em;
    color: #7d7d7d;
  }
}



.logo{
  text-align: center;
  background: #f9f9f9;
  box-shadow: 0 0 1px rgba(0,0,0,.2), 0 2px 4px rgba(0,0,0,.1);
  border-radius: 5px;
  margin-bottom: 20px;
  text-shadow: 1px 1px 1px rgba(0,0,0,.1);
  height: 150px;
  
}


.row{ margin: 10px; }
.card {
    text-align: left;
    height: 250px;
    width: 100%;
    background: #f9f9f9;
    box-shadow: 1px 1px 5px lightgrey;
    padding: 10px;
    border: 1px solid lightgrey;
    border-radius: 4px;
    text-shadow: 1px 1px 1px rgba(0,0,0,.1);
  h2 {
    color: $primary;
    font-size: (14/16) + em;
  }
  p {
    font-size: (12/16) + em;
    color: #7d7d7d;
  }
  
}

h1 {
        font-size:55px;

    }
    .cardO-header{
        font-weight: bold;
        text-align: center;

    }
    col-3{
        color: black;
        transition: color 0.5s;

    }
    col-3:hover{
        color: black;
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
        color: black;
    }
    .cardO{
    background-color: #f9f9f9;
     min-width: 250px;
    --c: #000000; /* the border color */
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
    .cardO:hover {
        --_i: 100%;
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        transition: .2s, background-size .2s .2s;
    }

    .card:hover {
        --_i: 100%;
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        transition: .2s, background-size .2s .2s;
    }

    .avatar{
        height: 200px;
        width: 200px;
        border-radius: 50%;
        text-align: center;
    }

    .details{
        text-align: center;
        bottom: 10%;
    }

    #clock {
  color: #000000;
  font-size: 60px;
  background-color: transparent;
  width: 400px;
  height: 100px;
  text-align: center;
  padding-top: 2%;
  border: 5px solid #000000;
  position: absolute;
  left: 160%;
  transform: translate(-50%);
  top: 30%;
}

.info{
    text-align: left;
}

.count{
    text-align: center;
}

.SCC{
    text-align: center;
    width: 100px;
    height: 100px;
}

.count{
    text-align: center;
}
</style>

<div class="container">
  
    <div class="logo">
       
        <img class="logo" src="<?=ASSETS?>/els_logo1.png"></img>
        
    </div>
    
        <div class="col-sm-6">
            
            <img class = "avatar" src="<?=ASSETS?>/male_user.jpg">
            
            <h2><?php echo Auth::User()?></h2>
            <h2><?php echo Auth::user_email()?></h2>
            <div id="clock"></div>
            
        </div>
<?php
        $table = 'students';
		$student = new Student();
		$student_result = $student->count($table)[0];
		$studentCount = $student_result->{'count(*)'};

        $table = 'users';
		$user = new User();
		$user_result = $user->count($table)[0];
		$userCount = $user_result->{'count(*)'};

        ?>
 
  <div class="row">
    <div class="col-sm-3 count">
        <div class="card">
            <h2>Number of students</h2>
            <h1 class="text-center"><i class="fa fa-user-graduate fa-1x"></i></h1>
            <h2 class = "count"><?php echo $studentCount ?></h2>
        </div>
    </div>
    <div class="col-sm-3 count">
        <div class="card">
            <h2>number of staff</h2>
            <br>
            <h1 class="text-center"><i class="fa fa-user fa-1x"></i></h1>
            <h2 class = "count"><?php echo $userCount ?></h2>
        </div>
        
    </div>
    <div class="col-sm-6">
        <div class="card">
            <h2>You are responsible for</h2>
            <h2>grade 8 (example)</h2>
            
        </div>
    </div>
  </div>

    <div class="row justify-content-center">
        
            <div class="cardO col-3 shadow rounded-lg m-4 p-2 border">
                <a href="<?=ROOT?>/settings">
                    <div class="card-header">Settings</div>
                <h1 class="text-center"><i class="fa fa-cogs fa-1x "></i></h1>
                </a>
            </div>
            <div class="cardO col-3 shadow rounded-lg m-4 p-2 border">
                 <a href="<?=ROOT?>/signup">
                <div class="card-header">Logout</div>
                <h1 class="text-center"><i class="fa fa-sign-out fa-1x"></i></h1>
                </a>
            </div>
        
            <div class="cardO col-3 shadow rounded-lg m-4 p-2 border">
               <a href="<?=ROOT?>/Help">
                 <div class="card-header">Help</div>
                <h1 class="text-center"><i class="fa fa-lightbulb fa-1x"></i></h1>
                </a>
            </div>
    </div>
    
</div>

<script>
    const clock = document.getElementById("clock");

var showCurrentTime = () => {
  var currentTime = new Date();
  var hours = currentTime.getHours();
  var minutes = currentTime.getMinutes();
  var seconds = currentTime.getSeconds();
  var meridian = "AM";

  if (hours >= 12) {
    meridian = "PM";
  }
  if (minutes < 10) {
    minutes = "0" + minutes;
  }
  if (seconds < 10) {
    seconds = "0" + seconds;
  }
  var clockTime = hours + ":" + minutes + ":" + seconds + " " + meridian;
  clock.innerText = clockTime;
}

var updateClock = () => {
  var time = new Date().getHours();
  showCurrentTime();
};

updateClock();

var oneSecond = 1000;
setInterval( updateClock, oneSecond);


</script>
<?php $this->view('includes/footer')?>