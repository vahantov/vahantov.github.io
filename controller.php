<?php

    require_once "configurations/global_vars.php";

    // URL Controller
    if( isset($url->DIR[0]) && $url->DIR[0] == $WEBSITE_Admin ) {

        $cnt = new Admin();

        $cnt->lang = $WEBSITE_Languages_Default;
        $cnt->val = require "languages/$WEBSITE_Languages_Default.php";

        require_once "configurations/admin/admin.php";

    } else {

        $cnt = new User();

        $cnt->lang = $WEBSITE_Languages_Current;

        if( $WEBSITE_Languages_Check == true ) {

            $cnt->val = require "languages/" . $WEBSITE_Languages_Current . ".php";

        } else {

            $cnt->val = require "languages/$WEBSITE_Languages_Default.php";

        }

        if (isset($url->GET['cmd'])) {

            $cnt->{$url->GET['cmd']}();

            if (isset($url->GET['backUrl'])) {

                header("Location: ".urldecode($url->GET['backUrl']));
                die;

            } else if ($url->type=='ajax') {

                die;

            } else {

                header("Location: /".$url->PATH."");
                die;

            }
        }

        if (isset($url->DIR[0]) && ($url->DIR[0]=="overlay" || $url->DIR[0]=="load") && ($url->type != "ajax")) {
            die;
        }

        if (isset($url->DIR[0]) && $url->DIR[0]=="inc") {
            die;
        }

        // Require user checks
        require_once "configurations/user/user_rules.php";

        // Check file
        if ( !is_file("layouts/$WEBSITE_Site/" . $url->PATH . ".php")) {

            if ( !empty($url->DIR_STR) && is_file("layouts/$WEBSITE_Site/".$url->DIR_STR."$WEBSITE_Site_Default.php")) {

                $url->PATH = $url->DIR_STR."$WEBSITE_Site_Default";

            } else {

                if( !empty($url->PATH)) {
                    require_once "layouts/404.php";
                }

                if ( empty($url->PATH) ) {
                    $url->PAGE = "";
                    $url->DIR_STR = "";
                    $url->PATH = "$WEBSITE_Site_Default";
                }
            }
        }

        // Require file
        if ( is_file("layouts/$WEBSITE_Site/" . $url->PATH . ".php") ) {

            require_once("layouts/$WEBSITE_Site/" . $url->PATH . ".php");

        }
    }