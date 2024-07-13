<?php

class Grade_2 extends Model{

    protected $table = 'grade_2';

    protected $allowedColumns = [
        'student_id',
        'class_id',
        'fullname',
        'user_id',
        'english',
        'arabic',
        'math',
        'science',
        'religion',
        'english',
       
    ];
}