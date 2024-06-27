<link rel="stylesheet" src="<?=ROOT?>/css/all.min.css">
<body>
	<style>
		.fa{
			margin-right: 4px;
		}
	</style>
<div style="min-width:350px;">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
.nav-pills > li > a {
   border-radius: 0;
}
#sidebar-wrapper {
    width: 0; /* Start with a width of 0 */
    transition: width 0.5s ease-in-out; /* Apply ease-in-ease-out transition */
}

.hidden {
    width: 0;
    overflow: hidden; /* Hide the content when sidebar is hidden */
}

.visible {
    width: 250px; /* Width of the sidebar when visible */
}


#wrapper {
   padding-left: 0;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
   overflow: hidden;
}

#wrapper.toggled {
   padding-left: 250px;
   overflow: hidden;
}

#sidebar-wrapper {
   z-index: 1000;
   position: absolute;
   left: 225px;
   width: 0;
   height: 100%;
   margin-left: -250px;
   overflow-y: auto;
   background: #000;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
   background-color: #181f29;
}

#wrapper.toggled #sidebar-wrapper {
   width: 250px;
}

#page-content-wrapper {
   position: absolute;
   padding: 25px;
   width: 100%;
   overflow-x: hidden;
}

.xyz {
   min-width: 360px;
}

#wrapper.toggled #page-content-wrapper {
   position: relative;
   margin-right: 0px;
}

.fixed-brand {
   width: auto;
}
/* Sidebar Styles */

.sidebar-nav {
   position: absolute;
   top: 0;
   width: 225px;
   margin: 0;
   padding: 0;
   list-style: none;
   margin-top: 2px;
}

.sidebar-nav li {
   text-indent: 15px;
   line-height: 50px;
   font-size: 20px;
}

.sidebar-nav li a {
   display: block;
   text-decoration: none;
   color: white;
}

.sidebar-nav li a:hover {
   text-decoration: none;
   color: #fff;
   background: rgba(255, 255, 255, 0.2);
   border-left: red 2px solid;
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
   text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
   height: 65px;
   font-size: 18px;
   line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
   color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
   color: #fff;
   background: none;
}

.no-margin {
   margin: 0;
}
#wrapper {
    transition: left 1s ease-out; /* Apply transition for ease-out animation */
}

.slide-off {
    left: -100%; /* Slide off the navbar */
}

@media (min-width: 768px) {
   #wrapper {
      padding-left: 250px;
   }
   .fixed-brand {
      width: 250px;
   }
   #wrapper.toggled {
      padding-left: 0;
   }
   #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled-2 #sidebar-wrapper {
      width: 50px;
   }
   #wrapper.toggled-2 #sidebar-wrapper:hover {
      width: 250px;
   }
   #page-content-wrapper {
      padding: 20px;
      position: relative;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
   }
   #wrapper.toggled #page-content-wrapper {
      position: relative;
      margin-right: 0;
      padding-left: 250px;
   }
   #wrapper.toggled-2 #page-content-wrapper {
      position: relative;
      margin-right: 0;
      margin-left: -200px;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
      width: auto;
   }

}
.vertical-line {
   border-right: 1px solid black; /* Adjust color and width as needed */
   height: 45px; /* Adjust height to match navbar */
   margin-left: 70%; /* Adjust spacing */
}

#mainnav {
  background-color: white;
  border: 1px solid blue;
}
</style>



<div id="sideNav">
<nav id="mainnav" class="navbar navbar-default no-margin">
   <div class="navbar-header fixed-brand">
      <a class="navbar-brand" href="#"><button class="btn btn-outline-primary" id="toggleButton"><i class="fa-sharp fa-solid fa-school fa-4"></i></button> ELS MANAGEMENT SYSTEM</a>
   </div>

   <!-- Add a vertical line to separate user's name -->
   <div class="vertical-line"></div>
   
   <div class="fs-1"><?=str_replace("_", " ", Auth::user())?></div>
      <!-- navbar-header-->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li class="active">
               <button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
               </button>
            </li>
         </ul>
      </div>
      <!-- bs-example-navbar-collapse-1 -->
   </nav>
   <div class="" id="wrapper">
      <!-- Sidebar -->
      <div id="sidebar-wrapper">
    <ul class="mx-auto p-2 sidebar-nav nav-pills nav-stacked" id="menu">
        <li class="active">
            <a href="<?=ROOT?>/home"><span class="fa-stack fa-lg pull-left"><i class="fa fa-dashboard fa-stack-1x "></i></span> Dashboard</a>
        </li>
        <li>
            <a href="<?=ROOT?>/users"><span class="fs-3 fa-stack fa-lg pull-left"><i class="fa-solid fa-chalkboard-user fa-stack-1x"></i></span> Staff</a>
        </li>
        <li>
            <a href="<?=ROOT?>/students"> <span class="fa-stack fa-lg pull-left"><i class="fa-solid fa-user-graduate fa-stack-1x"></i></span> Students</a>
        </li>
        <li>
            <a href="<?=ROOT?>/parents"> <span class="fa-stack fa-lg pull-left"><i class="fa-solid fa-people-roof fa-stack-1x"></i></span> Parents</a>
        </li>
        <li>
            <a href="<?=ROOT?>/classes"><span class="fa-stack fa-lg pull-left"><i class="fa-solid fa-book fa-stack-1x"></i></span> Classes</a>
        </li>
        <li>
            <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-calendar fa-stack-1x "></i></span> Roster</a>
        </li>
        <li>
            <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa-solid fa-award fa-stack-1x"></i></i></span> Tests</a>
        </li> 
        <li>
            <a href="<?=ROOT?>/Fees_billing"><span class="fa-stack fa-lg pull-left"><i class="fa-solid fa-award fa-stack-1x"></i></i></span> Fees</a>
        </li> 
    <!-- Logout button at the bottom -->
        <li style="margin-top: 200%;">
            <a href="<?=ROOT?>/logout"><span class="fa-stack fa-lg pull-left"><i class="fa fa-sign-out fa-stack-1x "></i></span> Log out</a>
        </li>
    </ul>
</div>



</div>
   </div>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
document.getElementById('toggleButton').addEventListener('click', function() {
    var sidebar = document.getElementById('sidebar-wrapper');
    sidebar.classList.toggle('visible');
});



</script>

<div class="container-fuild" style="margin-left:20%">

