<?php 

/**
 * Register the shortcode
 *
 * @package     Wizard_Form
 * @author      Andres Posada
 * @link        https://github.com/posadallano
 * @since       1.0.0
 *
 */

// Register a new shortcode: [wf_custom_registration]
add_shortcode( 'wf_custom_registration', 'custom_registration_shortcode' );
 
// The callback function that will replace [book]
function custom_registration_shortcode() {
    ob_start();
    wf_registration_form();
    return ob_get_clean();
}

?>