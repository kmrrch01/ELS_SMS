<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>


<a style="margin-left:85%;"class="btn btn-danger" href="<?=ROOT?>/classes/">Back</a>					
<div style="margin-left: 100px" class="card-group justify-content-center">
<h1 style="text-align:center;font-family: copperplate;" class="breadcrumb justify-content-center">
				GRADE 3 DETAILS <i class="fa fa-book"></i></h1>

			<table id="myTable" class="table table-striped table-hover">
            <th style="text-align:center;">View Profile</th>
            <th style="text-align:center;">Student Name</th>
            <th style="text-align:center;">Student ID</th>
            <th style="text-align:center;">Section</th>
            <th style="text-align:center;">Student Type</th>
            <th style="text-align:center;">Academic Year</th>
          
            <br><br>
			<?php if (is_array($grade3s) || is_object($grade3s)): ?>
			<?php foreach ($grade3s as $grade3): ?>
				<tr>
                    <td>
                        <div style="text-align:center;">
                        <a href="<?=ROOT?>/stp/<?=$grade3->student_id?>">
                            <button class="btn-outline-primary"><i class="fa-solid fa-user-graduate"></i>
                    </a>
            </div>
                    </td>
                    <td>
                        <p style="text-align:center;"><?=$grade3->fullname?>
                    </td>

                    <td>
                        <div style="text-align:center;"><?=$grade3->student_id?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade3->section?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade3->st_type?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade3->acad_year?></div>
                    </td>
				</tr>
			<?php endforeach; ?>
		<?php else: ?>
			<tr>
                
				<td colspan="5">
                    <center><h3><i style="color: red;" class="fa-solid fa-exclamation-triangle"></i>
                        No students were found at this time</h4>
                </td>
        
			</tr>
		<?php endif; ?>

			</table>

		</div>





<?php $this->view('includes/footer')?>
