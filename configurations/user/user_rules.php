<?php  // User Standart Checkes

    // Check if URL is profile but user not signed
    if ( isset($url->DIR[0]) && $url->DIR[0]=="profile" && empty($user["userID"])) {
        header("Location: /");
        die;
    }