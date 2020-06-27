<?php

    // start all sessions
    session_start();

    // Functions
    require_once('inc/functions.php');
    // End functions

    // Check secure data (Security function)
    if(!empty($_POST)){
        $_POST = checkVariable($_POST);
    }

    if(!empty($_GET)){
        $_GET = checkVariable($_GET);
    }
    // End Security check

    // Load class by name
    spl_autoload_register(function ($class) {
        if (strpos($class, '\\')) {
            $class_array = explode('\\', $class);
            $class_name = array_pop($class_array);
            $class_path = str_replace('\\', '/', $class).'.php';
        } else {
            $class_name = $class;
            $class_path = $class.'.php';
        }
        if (is_file("classes/$class_path")) {
            require "classes/$class_path";
        } else if (is_file("inc/lib/$class_path")) {
            require "inc/lib/$class_path";
        } else {
            exit("Error loading: $class_name");
        }
    });
    // End classes

    // URL settings
    $url = new Url();

    // If file exists
    if ( is_dir("layouts/".$url->PATH) && !is_file("layouts/".$url->PATH.".php") && !empty($url->PAGE)) {

        header("Location: /".$url->PATH."/");
        exit;

    }

    // Require main configurations
    foreach( glob("configurations/*.php") as $filename ) {

        require_once $filename;

    }
    // End configurations

    // URL Controller
    require_once "controller.php";
    // End URL Controller

?>
