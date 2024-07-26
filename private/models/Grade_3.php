<?php

class Grade_3 extends Model{

    protected $table = 'grade_3';

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