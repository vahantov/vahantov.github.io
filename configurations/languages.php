<?php

    $WEBSITE_Languages = scandir('languages/');
    $WEBSITE_Languages_Check = false;

    // Language session
    if(isset($url->GET['lang'])){

        $lang_encrypt = openssl_encrypt($url->GET['lang'], $ENCODE_Cypher, $ENCODE_Key['language'], 0, $ENCODE_IV);

        setcookie('lang', $lang_encrypt, time() + (86400 * 30 * 365), "/");
        header("Location: /" . $url->PATH);

        exit;
    }

    if( !isset($_COOKIE['lang'])){

        $lang_encrypt = openssl_encrypt($WEBSITE_Languages_Default, $ENCODE_Cypher, $ENCODE_Key['language'], 0, $ENCODE_IV);

        setcookie('lang', $lang_encrypt, time() + (86400 * 30 * 365), "/");
        header( "Location: /" . $url->PATH );

    }

    foreach ( $WEBSITE_Languages as $value ) {

        if ( $_COOKIE['lang'] == openssl_encrypt(str_replace('.php', '', $value), $ENCODE_Cypher, $ENCODE_Key['language'], 0, $ENCODE_IV)) {
            $WEBSITE_Languages_Check = true;
        }

    }

    if ( $WEBSITE_Languages_Check == false ) {

        header('Location: /?lang=' . $WEBSITE_Languages_Default);
        die;

    }

    $WEBSITE_Languages_Current = openssl_decrypt($_COOKIE['lang'], $ENCODE_Cypher, $ENCODE_Key['language'], 0, $ENCODE_IV);