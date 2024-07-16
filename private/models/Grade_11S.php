<?php

class Grade_11S extends Model{

    protected $table = 'grade_11s';

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