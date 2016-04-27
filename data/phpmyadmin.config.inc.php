<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */

/*
 * This is needed for cookie based authentication to encrypt password in
 * cookie
 */
$cfg['blowfish_secret'] = '{blowfish_secret}';

/*
 * Servers configuration
 */
$i = 0;

/*
 * Default server
 */
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = '{auth_type}';
$cfg['Servers'][$i]['auth_http_realm'] = '{auth_http_realm}';
/* Server parameters */
$cfg['Servers'][$i]['host'] = '{host}';
$cfg['Servers'][$i]['port'] = {port};
$cfg['Servers'][$i]['connect_type'] = '{connect_type}';
$cfg['Servers'][$i]['compress'] = {compress};
$cfg['Servers'][$i]['nopassword'] = {nopassword};
$cfg['Servers'][$i]['AllowNoPassword'] = {AllowNoPassword};

/**
 * Other settings
 */

/**
 * Defines the default connection collation to use, if not user-defined.
 */
$cfg['DefaultConnectionCollation'] = '{DefaultConnectionCollation}';

/**
 * Default language to use, if not browser-defined or user-defined
 * (you find all languages in the locale folder)
 * uncomment the desired line:
 * default = 'en'
 * default = 'en'
 */
$cfg['DefaultLang'] = '{DefaultLang}';

/**
 * Number of rows displayed when browsing a result set. If the result
 * set contains more rows, "Previous" and "Next".
 * default = 30
 */
$cfg['MaxRows'] = {MaxRows};

// $cfg['AllowUserDropDatabase'] = true;

$cfg['AllowThirdPartyFraming'] = true;

/*
 * You can find more configuration options in the documentation
 * in the doc/ folder or at <http://docs.phpmyadmin.net/>.
 */
?>