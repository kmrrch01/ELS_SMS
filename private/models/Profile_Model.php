<?php

class Profile_Model extends Model
{
    public function get_students_by_parent($parent_id) {
        $student = new Student();
        $user = new User();
        
        $parent = $user->where('user_id', $parent_id);
        
        if ($parent && isset($parent[0]) && $parent[0]->position == 'parent') {
            $students = $student->where('parent_id', $parent_id);
            return $students;
        }
        
        return [];
    }
    
}
