<?php

/**
 * Classes Model
 */
class Classes_model extends Model
{
    protected $table = 'classes';

	protected $allowedColumns = [
        'class',
        'date',
        'school_id',
    ];

    protected $beforeInsert = [
        'make_school_id',
        'make_class_id',
        'make_user_id',
    ];

    protected $afterSelect = [
        'get_user',
    ];


    public function validate($DATA)
    {
        $this->errors = array();

        //check for class name
        if(empty($DATA['class']))
        {
            $this->errors['class'] = "Class name cannot be empty.";
        }
 
        if(count($this->errors) == 0)
        {
            return true;
        }

        return false;
    }

    public function make_school_id($data)
    {
        if(isset($_SESSION['USER']->section)){
            $data['school_id'] = $_SESSION['USER']->section;
        }
        return $data;
    }

    public function make_user_id($data)
    {
        if(isset($_SESSION['USER']->user_id)){
            $data['user_id'] = $_SESSION['USER']->user_id;
        }
        return $data;
    }

    public function make_class_id($data)
    {
        if (!isset($data['class'])) {
            return ["error" => "Missing class data"];
        }
    
        $name_prefix = $data['class'];
        // Generate the ID 
        $school_id = "ELS" . '_' . strtoupper($name_prefix);
        $data['class_id'] = $school_id;
    
        return $data;
    }

    public function get_user($data)
    {
        
        $user = new User();
        foreach ($data as $key => $row) {
            // code...
            $result = $user->where('user_id',$row->user_id);
            $data[$key]->user = is_array($result) ? $result[0] : false;
        }
       
        return $data;
    }

    

 
}