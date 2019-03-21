<?php 

// Add scripts

function wf_add_scripts() {
	wp_enqueue_style('wf-main-style', plugins_url() . '/wizard-form/css/style.css');
	wp_enqueue_script('wf-main-script', plugins_url() . '/wizard-form/js/main.js', array('jquery'), null, false);

	wp_localize_script( 'wf-main-script', 'wf_vars', array(
		'wf_ajax_url' => admin_url( 'admin-ajax.php' ),
	  	)
  	);
}

add_action('wp_enqueue_scripts', 'wf_add_scripts');


?>