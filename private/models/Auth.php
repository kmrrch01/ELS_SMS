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

	public static function image($gender = 'male')
	{
		if(isset($_SESSION['USER'])){
			$gender = $_SESSION['USER']->gender;	
			if($gender == "male"){
				return (ASSETS.'/male_user.jpg');
			}
			else{
				return ASSETS.'/female_user.jpg';
			}
		}
	}

	public static function gender(){
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->gender;
		}
	}

	public static function position(){
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->position;
		}
	}
	
	public static function email(){
		if(isset($_SESSION['USER'])){
			return $_SESSION['USER']->email;
		}
	}
	
     public static function user_id(){
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->user_id;
		}
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
				$_SESSION['USER']->class = $row->class;

			}
			
			return true;
		}

		return false;
	}

	public static function access($position = 'student')
	{
		// code...
		if(!isset($_SESSION['USER']))
		{
			return false;
		}
		$logged_in_position = $_SESSION['USER']->position;
		$POSITION['super_admin'] = ['super_admin','admin','lecturer','reception','student'];
		$POSITION['admin'] = ['admin','lecturer','reception','student'];
		$POSITION['lecturer'] = ['lecturer','reception','student'];
		$POSITION['reception'] = ['reception','student'];
		$POSITION['student'] = ['student'];

		if(!isset($POSITION[$logged_in_position]))
		{
			return false;
		}

		if(in_array($position,$POSITION[$logged_in_position]))
		{
			return true;
		}

		return false;
	}



	
	public static function ownership($row)
	{

		if(!isset($_SESSION['USER']))
		{
			return false;
		}

		if(isset($row->user_id)){

			if($_SESSION['USER']->user_id == $row->user_id){
				return true;
			}
		}

		$allowed[] = "super_admin";
		$allowed[] = "admin";

		if(in_array($_SESSION['USER']->position,$allowed)){
			return true;
		}


		return false;
	}
	
}