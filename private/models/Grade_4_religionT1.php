<?php

class Grade_4_religionT1 extends Model{

    protected $table = 'grade_4_religiont1';

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