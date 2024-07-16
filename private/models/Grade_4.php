<?php

class Grade_4 extends Model{

    protected $table = 'grade_4';

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