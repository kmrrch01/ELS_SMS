<?php

class Grade_10 extends Model{

    protected $table = 'grade_10';

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
        'acad_year',
        'st_type',
        'section',
       
    ];
}