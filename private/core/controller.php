<?php

// main controller class


class Controller 
{
    public function view($view, $data = array())
    {
        extract($data);
        
        // Define the path to the view file
        $viewFilePath = "../private/views/" . $view . ".view.php";

        // Check if the view file exists
        if (file_exists($viewFilePath)) {
            // Include the view file
            include $viewFilePath;
        } else {
            // Display a 404 view if the requested view doesn't exist
            include "../private/views/404.view.php";
        }
    }

    public function load_model($model)
    {
        $modelFile = "../private/models/" . ucfirst($model) . ".php";
    
        if (file_exists($modelFile)) {
            include($modelFile);
            return new $model();
        }
    
        return false;
    }

    public function redirect($link){
        header("Location: ". ROOT . "/".trim($link, "/"));
        die;
    }
    

}


