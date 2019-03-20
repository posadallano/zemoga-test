<?php
/**
 * Customizer sections.
 *
 * @package Zemoga
 */

/**
 * Register the section sections.
 *
 * @param object $wp_customize Instance of WP_Customize_Class.
 */
function zemoga_customize_sections( $wp_customize ) {

	// Register additional scripts section.
	$wp_customize->add_section(
		'zemoga_additional_scripts_section',
		array(
			'title'    => esc_html__( 'Additional Scripts', 'zemoga' ),
			'priority' => 10,
			'panel'    => 'site-options',
		)
	);

	// Register a social links section.
	$wp_customize->add_section(
		'zemoga_social_links_section',
		array(
			'title'       => esc_html__( 'Social Media', 'zemoga' ),
			'description' => esc_html__( 'Links here power the display_social_network_links() template tag.', 'zemoga' ),
			'priority'    => 90,
			'panel'       => 'site-options',
		)
	);

	// Register a header section.
	$wp_customize->add_section(
		'zemoga_header_section',
		array(
			'title'    => esc_html__( 'Header Customizations', 'zemoga' ),
			'priority' => 90,
			'panel'    => 'site-options',
		)
	);

	// Register a footer section.
	$wp_customize->add_section(
		'zemoga_footer_section',
		array(
			'title'    => esc_html__( 'Footer Customizations', 'zemoga' ),
			'priority' => 90,
			'panel'    => 'site-options',
		)
	);
}
add_action( 'customize_register', 'zemoga_customize_sections' );
