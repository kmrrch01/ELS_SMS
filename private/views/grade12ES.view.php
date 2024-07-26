<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>


					
<a style="margin-left:85%;"class="btn btn-danger" href="<?=ROOT?>/classes/">Back</a>
<div style="margin-left: 100px" class="card-group justify-content-center">
<h1 style="text-align:center;font-family: copperplate;" class="breadcrumb justify-content-center">
				GRADE 12 ES DETAILS <i class="fa fa-book"></i></h1>

			<table id="myTable" class="table table-striped table-hover">
            <th style="text-align:center;">Student Name</th>
            <th style="text-align:center;">Student ID</th>
            <th style="text-align:center;">Section</th>
            <th style="text-align:center;">Student Type</th>
            <th style="text-align:center;">Academic Year</th>
          
            <br><br>
			<?php if (is_array($grade12ES_row) || is_object($grade12ES_row)): ?>
			<?php foreach ($grade12ES_row as $grade12es): ?>
				<tr>
                    <td>
                        <div style="text-align:center;">
                        <a href="<?=ROOT?>/stp/<?=$grade11s->student_id?>">
                            <button class="btn-outline-primary"><i class="fa-solid fa-user-graduate"></i>
                    </a>
            </div>
                    </td>
                    <td>
                        <p style="text-align:center;"><?=$grade12es->fullname?>
                    </td>

                    <td>
                        <div style="text-align:center;"><?=$grade12es->student_id?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade12es->section?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade12es->st_type?></div>
                    </td>
                    <td>
                        <div style="text-align:center;"><?=$grade12es->acad_year?></div>
                    </td>
				</tr>
			<?php endforeach; ?>
		<?php else: ?>
			<tr>
                
				<td colspan="5">
                    <center><h4><i style="color: red;" class="fa-solid fa-exclamation-triangle"></i>
                        No students were found at this time</h4>
                </td>
        
			</tr>
		<?php endif; ?>

			</table>

		</div>





<?php $this->view('includes/footer')?>
