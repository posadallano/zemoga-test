<?php 

/**
 * Registration Form
 *
 * @package     Wizard_Form
 * @author      Andres Posada
 * @link        https://github.com/posadallano
 * @since       1.0.0
 *
 */

function wf_registration_form() { ?>
 
    <div class="wf-registration-form">
      <form class="form-horizontal registraion-form" role="form">
        <ul class="form-style-1"> 
            <li>
                <label for="wf_username" class="sr-only">Choose Username</label>
                <input type="text" name="wf_username" id="wf_username" value="" placeholder="Choose Username" class="form-control" />
                <span class="help-block">Please use only a-z,A-Z,0-9,dash and underscores, minimum 5 characters</span>
            </li>

            <li>
                <label for="wf_email" class="sr-only">Your Email</label>
                <input type="email" name="wf_email" id="wf_email" value="" placeholder="Your Email" class="form-control" />
            </li>

            <li>
                <label for="wf_name" class="sr-only">Full Name</label>
                <input type="text" name="wf_fname" class="field-divided" id="wf_fname" value="" placeholder="First Name" class="form-control" />
                <input type="text" name="wf_lname" class="field-divided" id="wf_lname" value="" placeholder="Last Name" class="form-control" />
            </li>
                
            <?php wp_nonce_field('wf_new_user','wf_new_user_nonce', true, true ); ?>
        
            <input type="submit" class="btn btn-primary" id="btn-new-user" value="Register User" />
        </ul>
      </form>
     
        <div class="indicator">Please wait...</div>
        <div class="alert result-message"></div>
    </div>
     
    <?php
    }

    

?>