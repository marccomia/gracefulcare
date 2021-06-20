<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'ss_gracefulcare',
	'password' => 'xxxx',
	'database' => 'ss_gracefulcare',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');
date_default_timezone_set('Pacific/Auckland');

//additional function for text editor
HtmlEditorConfig::get('cms')->addButtonsToLine(3, 'fontsizeselect,fontselect,forecolor');
// HtmlEditorConfig::get('cms')->enablePlugins('media');
