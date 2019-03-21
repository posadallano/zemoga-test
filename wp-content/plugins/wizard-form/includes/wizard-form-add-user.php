<?php 

/**
 * Add new user
 *
 * @package     Wizard_Form
 * @author      Andres Posada
 * @link        https://github.com/posadallano
 * @since       1.0.0
 *
 */

function wf_reg_new_user() {
 
    if( !isset( $_POST['nonce'] ) || !wp_verify_nonce( $_POST['nonce'], 'wf_new_user' ) )
      die( 'Ooops, something went wrong, please try again later.' );
   
    // Post values
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $username = $_POST['user'];
    $email    = $_POST['mail'];

    $userdata = array(
        'first_name' => $fname,
        'last_name'  => $lname,
        'user_email' => $email,
        'user_login' => $username
    );
  
    $user_id = wp_insert_user( $userdata ) ;
  
    // Return
    if( !is_wp_error($user_id) ) {
        echo '1';
    } else {
        echo $user_id->get_error_message();
    }
    die();
   
  }
   
  // Hook the ajax function
  add_action('wp_ajax_register_user', 'wf_reg_new_user');
  add_action('wp_ajax_nopriv_register_user', 'wf_reg_new_user');

?>