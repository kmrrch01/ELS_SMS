<tr>
                    <td>
                        <a href="<?=ROOT?>/profile/student/<?=$row->student_id?>">
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