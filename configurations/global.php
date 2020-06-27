<?php

    // Global configs
    ini_set('display_errors', 1);
    ini_set('error_reporting', E_ALL);
    ini_set( 'date.timezone', 'Asia/Yerevan' );
    mb_internal_encoding("UTF-8");
    mb_regex_encoding("UTF-8");

    /*if ( !isset($_SERVER['HTTPS']) ) {
header('Location: https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
}

if ( substr($_SERVER['HTTP_HOST'], 0, strpos($_SERVER['HTTP_HOST'], ".")) == 'hnchak' ) {
$ROOT = $_SERVER['DOCUMENT_ROOT'] . '/arm/';
}*/