<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>
	
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
		<?php $this->view('includes/crumbs',['crumbs'=>$crumbs])?>

			<h5>Students</h5>
		<div class="card-group justify-content-center">
			<table class="table table-striped table-hover">
            <th>View</th><th>Student name</th><th>Class</th>
            <div style="margin-bottom:2%; margin-left:90%" >
            <a  href="<?=ROOT?>/student_signup/">
                <button class="btn btn-primary"><i class="fa-solid fa-plus"></i>Add New</button>
            </a>
</div>
            <br><br>
						<?php if (is_array($rows) || is_object($rows)): ?>
			<?php foreach ($rows as $row): ?>
				<tr>
                    <td>
                        <a href="<?=ROOT?>/students/profile">
                            <button class="btn-outline-primary"><i class="fa-solid fa-search"></i>
                    </a>
                    </td>
                    <td>
                        <p><?=$row->firstname?> <?=$row->middlename?> <?=$row->lastname?></p>
                    </td>
                    <td>
                        <?=str_replace("_", " ", ucwords($row->class_name))?>
                    </td>
				</tr>
			<?php endforeach; ?>
		<?php else: ?>
			<tr>
				<td colspan="5"><h4>No students were found at this time</h4></td>
			</tr>
		<?php endif; ?>

			</table>

		</div>

		
	 
	</div>
 
<?php $this->view('includes/footer')?>