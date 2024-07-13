<?php

class Grade_12ES extends Model{

    protected $table = 'grade_12es';

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