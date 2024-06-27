<?php 

function get_var($key,$default = "")
{

	if(isset($_POST[$key]))
	{
		return $_POST[$key];
	}

	return $default;
}

function get_select($key,$value)
{
	if(isset($_POST[$key]))
	{
		if($_POST[$key] == $value)
		{
			return "selected";
		}
	}

	return "";
}

function esc($var)
{
	return htmlspecialchars($var);
}

function make_user_id_from_post() {
    // Extract the first three letters of the position
    $position_prefix = substr($_POST['position'], 0, 3);
	$unique = substr(uniqid(), 0, 6);

    // Generate the user ID by concatenating the academic year, an underscore, and the uppercase position prefix
    $user_id = $_POST['acad_year'] . strtoupper($position_prefix) . strtoupper($unique);

    return $user_id;
}


function make_student_id_from_post() {
    // Extract the first three letters of the position
    $position_prefix = "STU";
	$unique = substr(uniqid(), 0, 6);

    // Generate the user ID by concatenating the academic year, an underscore, and the uppercase position prefix
    $user_id = $_POST['acad_year'] . strtoupper($position_prefix) . strtoupper($unique);

    return $user_id;
}




function get_date($date)
{

	return date("jS M, Y",strtotime($date));
}

function show($data)
{
	echo "<pre>";
	print_r($data);
	echo "</pre>";
}

function get_image($image,$gender = 'male')
{
	if(!file_exists($image)){
 		$image = ASSETS.'/female_user.jpg';
 		if($gender == 'male'){
 			$image = ASSETS.'/male_user.jpg';
 		}
 	}

 	return $image;
}

function deleteUserFromUrl()
{
    // Check if user ID is provided in the URL
    if (isset($_GET['user_id'])) {
        // Extract user ID from the URL
        $userId = $_GET['user_id'];

        // Validate user ID (you might want to perform additional validation)
        if (is_numeric($userId) && $userId > 0) {
            // Perform deletion operation (replace this with your actual deletion logic)
            if (deleteUser($userId)) {
                // User deleted successfully
                echo "User deleted successfully.";
            } else {
                // Failed to delete user
                echo "Failed to delete user.";
            }
        } else {
            // Invalid user ID
            echo "Invalid user ID.";
        }
    } else {
        // User ID not provided in the URL
        echo "User ID not found in the URL.";
    }
}




function deleteUser($userId) {
    global $pdo; // Assuming $pdo is your database connection object

    // Perform deletion query
    $sql = "DELETE FROM users WHERE user_id = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$userId]);

    // Return true or false based on deletion success
    return $stmt->rowCount() > 0; // Return true if at least one row was affected (user deleted), false otherwise
}

// functions.php

function getSchoolIDByName($school_name) {
    // Create a PDO connection using the defined constants
    $dsn = DBDRIVER . ':host=' . DBHOST . ';dbname=' . DBNAME;
    $pdo = new PDO($dsn, DBUSER, DBPASSWORD);

    // Prepare and execute the SQL statement
    $stmt = $pdo->prepare("SELECT school_id FROM schools WHERE school = :school_name");
    $stmt->bindParam(':school_name', $school_name);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if a row was found and return the school ID
    if ($row) {
        return $row['school_id'];
    } else {
        return null; // Return null if the school name is not found
    }
}

function views_path($inc)
{
    if(file_exists("../private/views/" . $inc . ".inc.php"))
		{
			return ("../private/views/" . $inc . ".inc.php");
		}else{
			return ("../private/views/404.view.php");
		}
}



