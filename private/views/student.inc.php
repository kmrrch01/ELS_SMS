
<style>
  .card-body{
    background-color: white;
    transition: background-color 0.5s;
  }
  .card-body:hover{
    background-color: lightgray;
  }
</style>

<tr><td><?=$row->firstname?></td><td><?=$row->lastname?></td><td></td>
                    <td>
                    <?php 
                      		$page_tab = isset($_GET['tab']) ? $_GET['tab'] : 'students';?>
                    <?php if($page_tab == 'students-add'):?>
                      <button class="btn btn-primary"><i class="fa-solid fa-plus"></i></button>
                  </td>
                    <?php else:?>
                      <a  href="<?=ROOT?>/profile/<?=$row->student_id?>"
                      <button class="btn btn-primary"><i class="fa-solid fa-user"></i></button>
                    </a>
                    <?php endif;?>


        <?php if(isset($_GET['select'])):?>
                  <button name="selected" value="<?=$row->student_id?>" class="btn btn-danger">Select</button>
        <?php endif;?>     
                </div>
</div>

                    

