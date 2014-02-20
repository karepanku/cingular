<?php

/**
 * This is the global helper file.
 * All functions used throughout the site
 */

if ( ! function_exists('global_user_auth')) {
  function global_user_auth() {
    
  }
}

/**
 * This function will be used when ever I want to link any page.
 * This will add the index.php automatically with the base_url
 * which is required in almost all links.
 */
if ( ! function_exists('base_path'))
{
  function base_path() {
    $CI =& get_instance();
    $path = base_url();
    $path .= 'index.php/';
    print $path;
  }
}