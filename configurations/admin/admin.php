<?php  // Admin controller

    if (
        isset($url->GET['cmd'])
        && (( !isset($_COOKIE['admin_ID'])
                && $url->GET['cmd'] == 'adminLogin'
                || $url->GET['cmd'] == 'adminReg'
                || $url->GET['cmd'] == 'adminReset')
                || ( isset($_COOKIE['admin_ID'] )
               && isset($_COOKIE['admin_email'])))) {

        $cnt->{$url->GET['cmd']}();

        if (isset($url->GET['backUrl'])) {

            header("Location: ".urldecode($url->GET['backUrl']));
            die;

        } else if ($url->type=='ajax'){
            die;

        } else {

            header("Location: /".$url->PATH."");
            die;

        }
    }

    if (isset($_COOKIE['admin_ID']) && !empty($_COOKIE['admin_ID'])) {

        if ( !is_file("layouts/".$url->PATH.".php")) {

            $url->PAGE = $WEBSITE_Admin_Default;
            require "layouts/$WEBSITE_Admin/".$url->PAGE.".php";

        } else {

            require "layouts/".$url->PATH.".php";

        }

    } else {

        require "layouts/$WEBSITE_Admin/login.php";
    }

