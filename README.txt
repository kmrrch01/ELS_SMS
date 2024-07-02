UPDATES: 

> COMPLETED MAIN DASHBOARD LAYOUT // NEED TO CONFIGURE STATS & SETTINGS + ADDING VISUALS 

> SETUP STP CONTROLLER (STUDENT PROFILE) IN ADDITION TO STP.VIEW TO FIX THE ISSUE WHERE STUDENT PROFILES WERE NOT BEING READ. 

> CONFIGURED 404 TO FUNCTION PROPERLY FOR CASES WHERE THE PAGE BEING REDIRECTED TO IS NOT FOUND, INSTEAD OF BEING REDIRECTED TO THE LOGIN PAGE. 

	-- The solution is:
		. add a controller named "NFound" (see code) 
		. redirect the controller in the app.php to assign the controller to "NFound" (using $this->controller("NFound") in the else{} statement) 
		. Make sure that the NFound controller has a view pointing to the 404.view.php ( $this->view("404") ) 


> AS FOR THE PROFILE PAGE FOR THE STUDENTS: REQUIRED IS A STUDENT PROFILE CONTROLLER (NAMED STP IN CODE) THAT WILL REDIRECT TO A VIEW CALLED stp AS WELL; THE CONTROLLER IS VERY SIMILAR TO THE PROFILE CONTROLLER, AND THE VIEW IS THE SAME AS THE PROFILE.VIEW.PHP 

What is left as far as the vids are concerned is the implementation of search results (follow-up with Hasan) to merge filters on Staff and Students, in addition to completing the page tabs for BASIC INFO, CLASSES, & TESTS in the singular profile views for both Students and Teachers alike. 

// last update : 29/6/2024 ~karim

p.s the version all this was implemented on is the one uploaded by Marwan in his branch of the repo; please make sure to import his database schema when altering/working with this version 
			

