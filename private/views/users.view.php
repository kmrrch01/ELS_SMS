<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>

    <div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
    <?php //$this->view('includes/crumbs');?>
    <nav class="navbar navbar-light bg-light">
	<form class="form-inline">
	   <div class="input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1"><i class="fas fa-magnifying-glass"></i></span>
		</div>
		<input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-add">
	  </div>
	</form>
  <div><a href="<?=ROOT?>/signup">
      <h1 class="mx-3 btn btn-primary" style="font-size:15px;"><i class="fa-solid fa-plus"></i> Add new</h1>
</a></div>
</nav>
      <div class="card-group justify-content-center">
        <?php if($rows):?>
          <?php foreach($rows as $row):?>

              <?php 
                
                $image = get_image($row->image,$row->gender);
                ?>



              <div class="card m-2 shadow-small" style="max-width: 14rem;min-width:14rem;">
                <img src="<?=$image?>" class="card-img-top" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><?=$row->firstname?> <?=$row->lastname?></h5>
                  <p class="card-title"><?=$row->firstname_ar?> <?=$row->lastname_ar?></p>
                  <p class="card-text"><?=ucwords(str_replace("_", " ", $row->position))?></p>
                  <a href="<?=ROOT?>/profile/<?=$row->user_id?>" class="btn btn-primary">Profile</a>
              </div>
            </div>
          <?php endforeach;?>
          <?php else:?>
            <h4> No staff members were found.</h4>
          <?php endif;?>

      </div>

</div>
</div>



<?php $this->view('includes/footer')?>