<?php
/**
 * Customizer panels.
 *
 * @package Zemoga
 */

/**
 * Add a custom panels to attach sections too.
 *
 * @param object $wp_customize Instance of WP_Customize_Class.
 */
function zemoga_customize_panels( $wp_customize ) {

	// Register a new panel.
	$wp_customize->add_panel(
		'site-options', array(
			'priority'       => 10,
			'capability'     => 'edit_theme_options',
			'theme_supports' => '',
			'title'          => esc_html__( 'Site Options', 'zemoga' ),
			'description'    => esc_html__( 'Other theme options.', 'zemoga' ),
		)
	);
}
add_action( 'customize_register', 'zemoga_customize_panels' );
