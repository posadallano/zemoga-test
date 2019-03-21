jQuery(document).ready(function($) {
 
    /**
     * When user clicks on button...
     *
     */
    $('#btn-new-user').click( function(event) {
   
      /**
       * Prevent default action, so when user clicks button he doesn't navigate away from page
       *
       */
      if (event.preventDefault) {
          event.preventDefault();
      } else {
          event.returnValue = false;
      }
   
      // Show 'Please wait' loader to user, so she/he knows something is going on
      $('.indicator').show();
   
      // If for some reason result field is visible hide it
      $('.result-message').hide();
   
      // Collect data from inputs
      var reg_fname  = $('#wf_fname').val();
      var reg_lname  = $('#wf_lname').val();
      var reg_user  = $('#wf_username').val();
      var reg_mail  = $('#wf_email').val();
      var reg_nonce  = $('#wf_new_user_nonce').val();
   
      /**
       * AJAX URL where to send data
       * (from localize_script)
       */
      var ajax_url = wf_vars.wf_ajax_url;
   
      // Data to send
      data = {
        action: 'register_user',
        nonce: reg_nonce,
        fname: reg_fname,
        lname: reg_lname,
        user: reg_user,
        mail: reg_mail
      };
   
      // Do AJAX request
      $.post( ajax_url, data, function(response) {
   
        // If we have response
        if( response ) {
   
          // Hide 'Please wait' indicator
          $('.indicator').hide();
   
          if( response === '1' ) {
            // If user is created
            $('.result-message').html('Your user submission is complete.'); // Add success message to results div
            $('.result-message').addClass('alert-success'); // Add class success to results div
            $('.result-message').show(); // Show results div
          } else {
            $('.result-message').html( response ); // If there was an error, display it in results div
            $('.result-message').addClass('alert-danger'); // Add class failed to results div
            $('.result-message').show(); // Show results div
          }
        }
      });
   
    });
  });