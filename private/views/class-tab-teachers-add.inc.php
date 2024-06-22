<form method="post" class="form mx-auto" style="width:100%;max-width:400px">
    <br><center><p class="fw-light">Add Teacher</p></center>
    <input autofocus class="form-control" type="text" name="name" placeholder="Teacher Name">
    <br>
    <center><div><a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teachers ">
        <button type="button" class="btn btn-danger float-end">Cancel</button>
</a>
    <button class="btn btn-primary float-end">Search</button>
</div></center>
    <div class="clearfix"></div>
</form>

<div class="container-fluid">
    
<?php if(isset($results) && $results):?>
					 
     <?php foreach ($results as $row):?>
        <?php include(views_path('user'));?>


        <?php endforeach;?>
        <?php else:?>
            <?php if(count($_POST) > 0):?>
            <hr><center><h4> Your search did not return a result.</h4></center>
        <?php endif;?>
        <?php endif;?>
</div>