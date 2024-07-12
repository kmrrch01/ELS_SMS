Dashboard optimization:

added live clock using js script from codepen

faced issues with profile icon regarding the gender, function can be found in Auth.php model
on line 55 (user_gender function)
	public static function user_gender()
{

    if(isset($_SESSION['USER']))
    {
        $gender = $_SESSION['USER']->gender; 

        if ($gender === 'male') { 
            return 'fas fa-user-male'; 
        } else {
            return 'fas fa-user-female'; 
        }
    }
will require more time to figure out
 
other function added in Auth model is user_email which fetches
the current user's email (line 45)
	public static function user_email()
	{
		if(isset($_SESSION['USER']))
		{
			return $_SESSION['USER']->email;
		}

		return false;
	}

Count functions working as intended, could not test further data due to database importing issue
(see comment related to the task on clickup)

went with a minimalistic design, awaiting review 