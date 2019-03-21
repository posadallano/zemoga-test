<?php 
/**
* Plugin Name: Wizard Form
* Description: Test plugin for the Zemoga WordPress test
* Version: 1.0
* Author: Andres Posada
**/

// Exit if Accessed Directly
if (!defined('ABSPATH')) {
	exit;
}

// Load scripts
require_once( plugin_dir_path( __FILE__ ) . 'includes/wizard-form-scripts.php' );

// Load registration form
require_once( plugin_dir_path( __FILE__ ) . 'includes/wizard-form-registration.php' );

// Add user
require_once( plugin_dir_path( __FILE__ ) . 'includes/wizard-form-add-user.php' );

// Register the shortcode
require_once( plugin_dir_path( __FILE__ ) . 'includes/wizard-form-shortcode.php' );

?>