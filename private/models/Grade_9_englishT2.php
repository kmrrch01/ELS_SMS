<?php

class Grade_9_englishT2 extends Model{

    protected $table = 'grade_9_engt2';

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