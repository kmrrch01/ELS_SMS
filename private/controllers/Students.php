<?php
/**
 * Students Controller
 */

class Students extends Controller
{

    function index($id = null)
    {
        // code...
        echo "This is the students controller ". $id;
    }

}