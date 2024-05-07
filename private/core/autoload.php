<?php

require "config.php";
require "functions.php";
require "database.php";
require "controller.php";
require "model.php";
require "app.php";


spl_autoload_register(function($class_name){

        // Check if the class name ends with "Controller"
        if (substr($class_name, -10) === 'Controller') {
            // Load controller classes from the controllers directory
            require "../private/controllers/". $class_name . ".php";
        } else {
            // Load other classes (models) from the models directory
            require "../private/models/" . $class_name . ".php";
        }
    
    });
    
    

#spl_autoload_register(function($class_name){

   #     require "../private/models/". ucfirst($class_name) . ".php";

#});
