<form method="post" class="form mx-auto" style="width:100%;max-width:400px">
    <br><center><p class="fw-light">Add Teacher</p></center>
    <input value="<?=get_var('name')?>" autofocus class="form-control" type="text" name="name" placeholder="Teacher Name">
    <br>
    <center><div><a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=teachers ">
        <button type="button" class="btn btn-danger float-end">Cancel</button>
</a>
    <button class="btn btn-primary float-end" name="search">Search</button>
</div></center>
    <div class="clearfix"></div>
</form>
<hr>
<br>


<div class="container-fluid">
<form method="post">
    
    <?php if(is_array($results) || is_object($results) && $results):?>
        <table class="table table-striped table-hover">
            <tr><th>First Name</th><th>Last Name</th><th>Position</th><th>Add</th></tr>
       
        <?php foreach ($results as $row):?>
                    <?php include(views_path('user'));?>
            <?php endforeach;?>

            <?php else:?>
                <?php if(count($_POST) > 0):?>
                <hr><center><h4> Your search did not return a result.</h4></center>
            <?php endif;?>
            <?php endif;?>
                </table>
                </form>
</div>