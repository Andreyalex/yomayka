#!/usr/bin/php
<?php

    ini_set('display_errors', 'On');
    error_reporting(E_ALL);

//    if (!empty($_REQUEST['argv'])) {
//        $argv = $_REQUEST['argv'];
//    }

    if ("$argv[1] $argv[2] $argv[3]" == 'lang update component'){

        require_once (__DIR__.'/../administrator/components/com_yoshop/classes/lang.php');

        $ext = $argv[4];

        $base = dirname(__DIR__);

        echo "\n Updating $ext component";

        $extDir = "$base/components/$ext";
        $langFile = "$base/language/ru-RU/ru-RU.$ext.ini";
        echo "\n $extDir -> $langFile";
        YoshopLang::updateLangFile($langFile, $extDir);
        $langFile = "$base/language/en-GB/en-GB.$ext.ini";
        echo "\n $extDir -> $langFile";
        YoshopLang::updateLangFile($langFile, $extDir);

        $extDir = "$base/administrator/components/$ext";
        $langFile = "$base/administrator/language/ru-RU/ru-RU.$ext.ini";
        echo "\n $extDir -> $langFile";
        YoshopLang::updateLangFile($langFile, $extDir);
        $langFile = "$base/administrator/language/en-GB/en-GB.$ext.ini";
        echo "\n $extDir -> $langFile";
        YoshopLang::updateLangFile($langFile, $extDir);

        echo "\nEnjoy!\n";
    }