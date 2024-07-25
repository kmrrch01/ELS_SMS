<?php

require "config.php";
require "functions.php";
require "database.php";
require "controller.php";
require "model.php";
require "app.php";




spl_autoload_register(function($class){

    require "../private/models/". ucfirst($class) . ".php";

});
