<?php
/**
 * The template used for displaying Buttons in the scaffolding library.
 *
 * @package Zemoga
 */

?>

<section class="section-scaffolding">

	<h2 class="scaffolding-heading"><?php esc_html_e( 'Buttons', 'zemoga' ); ?></h2>
	<?php
		// Button.
		zemoga_display_scaffolding_section( array(
			'title'       => 'Button',
			'description' => 'Display a button.',
			'usage'       => '<button class="button" href="#">Click Me</button>',
			'output'      => '<button class="button">Click Me</button>',
		) );
	?>
</section>
