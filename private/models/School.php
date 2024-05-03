<?php

/**
 * School Model
 */
class School extends Model
{

	protected $allowedColumns = [
        'school',
        'school_id',
        'date',
    ];

    protected $beforeInsert = [
        'make_user_id',
        'make_school_id',
    ];

    protected $afterSelect = [
        'get_user',
    ];


    public function validate($DATA)
    {
        $this->errors = array();

        //check for school name
        if(empty($DATA['school']))
        {
            $this->errors['school'] = "School cannot be empty.";
        }
 
        if(count($this->errors) == 0)
        {
            return true;
        }

        return false;
    }

    public function make_user_id($data)
    {
        if (!is_array($data)) {
            return "Invalid data format";
        }
    
        // Check if the user ID already exists in the session
        if (isset($_SESSION['USER']->user_id)) {
            // If the user ID exists, use it from the session
            $data['user_id'] = $_SESSION['USER']->user_id;
        } else {
            echo "Deleted user.";
        }
    
        return $data;
    }
    

    public function make_school_id($data)
    {
        if (!isset($data['school'])) {
            return "Missing school data";
        }
    
        $name_prefix = $data['school'];        
        // Generate the ID 
        $school_id = "ELS" . '_' . strtoupper($name_prefix);
        $data['school_id'] = $school_id;
    
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