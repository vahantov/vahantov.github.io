<?php

    $ROOT = $_SERVER['DOCUMENT_ROOT'];

    // Get user Browser
    $USER_Browser = $_SERVER['HTTP_USER_AGENT'];

    // User Session Register
    $USER = $_COOKIE;

    // Get URL
    $USER_URL = $_SERVER['REQUEST_URI'];

    // Default language
    $WEBSITE_Languages_Default = 'ru';

    // Locations
    $WEBSITE_Site = 'main'; // Main site folder
    $WEBSITE_Site_Default = 'default'; // Main site index file

    $WEBSITE_Admin = 'admin'; // Admin panel folder
    $WEBSITE_Admin_Default = 'default'; // Admin panel index file