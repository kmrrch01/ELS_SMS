<?php

class Grade_12ls_mathT1 extends Model{

    protected $table = 'grade_12ls_matht1';

    protected $allowedColumns = [
        'student_id',
        'class_id',
        'fullname',
        'user_id',
        'acad_year',
        'st_type',
        'acad_year',
        'homework',
        'test',
        'term_avg',
        'term_perc',
        'section',
        'quiz',
    ];
}