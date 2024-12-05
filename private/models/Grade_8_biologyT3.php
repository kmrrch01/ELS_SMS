<?php

class Grade_8_biologyT3 extends Model{

    protected $table = 'grade_8_biot3';

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