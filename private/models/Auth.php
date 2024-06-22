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

	public static function classes()
	{
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->class_id;
		}
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
		return 'Not Specified';
	}
	

	public static function switch_class($id)
	{
		if(isset($_SESSION['USER']))
		{
			$user = new User();
			$school = new Classes_model();

			if($row = $school->where('id',$id))
			{
				$row = $row[0];
 				$arr['school_id'] = $row->school_id;

				$user->update($_SESSION['USER']->id,$arr);
 				$_SESSION['USER']->class_id = $row->class_id;
				$_SESSION['USER']->class_name = $row->class_name;

			}
			
			return true;
		}

		return false;
	}

	public static function access($rank = 'student')
	{
		// code...
		if(!isset($_SESSION['USER']))
		{
			return false;
		}
		$logged_in_rank = $_SESSION['USER']->rank;
		$RANK['super_admin'] = ['super_admin','admin','lecturer','reception','student'];
		$RANK['admin'] = ['admin','lecturer','reception','student'];
		$RANK['lecturer'] = ['lecturer','reception','student'];
		$RANK['reception'] = ['reception','student'];
		$RANK['student'] = ['student'];

		if(!isset($RANK[$logged_in_rank]))
		{
			return false;
		}

		if(in_array($rank,$RANK[$logged_in_rank]))
		{
			return true;
		}

		return false;
	}
}