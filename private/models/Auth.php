<?php

/**
 * Authentication class
 */
class Auth
{
	
	public static function authenticate($row)
	{
		// code...
		$_SESSION['USER'] = $row;
	}

	public static function logout()
	{
		// code...
		if(isset($_SESSION['USER']))
		{
			unset($_SESSION['USER']);
		}
	}

	public static function logged_in()
	{
		// code...
		if(isset($_SESSION['USER']))
		{
			return true;
		}

		return false;
	}

	public static function user()
	{
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->firstname . "_". $_SESSION['USER']->lastname;
		}

		return false;
	}

	public static function __callStatic($method, $params)
	{
		// Extract property name from the method name
		$prop = strtolower(str_replace("get", "", $method));
	
		// Check if the property exists in the $_SESSION['USER'] object
		if (isset($_SESSION['USER']) && isset($_SESSION['USER']->$prop)) {
			// Return the value of the property
			return $_SESSION['USER']->$prop;
		}
	
		// If property doesn't exist or $_SESSION['USER'] is not set, return 'Unknown'
		return 'Unknown';
	}
	

	public static function switch_school($id)
	{
		if(isset($_SESSION['USER']) && $_SESSION['USER']->rank == 'super_admin')
		{
			$user = new User();
			$school = new School();

			if($row = $school->where('id',$id))
			{
				$row = $row[0];
 				$arr['school_id'] = $row->school_id;

				$user->update($_SESSION['USER']->id,$arr);
 				$_SESSION['USER']->school_id = $row->school_id;
				$_SESSION['USER']->school_name = $row->school;

			}
			
			return true;
		}

		return false;
	}

	
}