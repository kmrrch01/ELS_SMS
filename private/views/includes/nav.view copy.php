<style>
	nav ul li a{
		width: 110px;
    text-align: center;
    border-left: solid thin #eee;
    border-right: solid thin #fff;
	}
  nav ul li a:hover{
    background-color: grey;
    color: white !important;
  }
  
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light p-2">
  	<a class="navbar-brand" href="#">
  		<img src="<?=ROOT?>/assets/els_logo1.png"style="width:50px;">
	</a>
  <br>
  <div style="cursor:default;" class="btn btn-primary fw-light fst-italic">ELS MS</div>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link active" href="<?=ROOT?>/home">DASHBOARD</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/roster">ROSTER</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/users">STAFF</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/students">STUDENTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/classes">CLASSES</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/tests">TESTS</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="<?=ROOT?>/logout">LOG OUT</a>
      </li>
      <hr>
      <hr>
      <li style="margin-left:30%;" class="nav-item">
        <a class="nav-link" href="#"><?=Auth::user()?></a>
      </li>

      


    




     </div>
</nav>
</div>

