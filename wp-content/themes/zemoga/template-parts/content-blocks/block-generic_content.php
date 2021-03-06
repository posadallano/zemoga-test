<?php
/**
 * The template used for displaying a generic content block.
 *
 * @package Zemoga
 */

// Set up fields.
$title           = get_sub_field( 'title' );
$content         = get_sub_field( 'content' );
$animation_class = zemoga_get_animation_class();

// Start a <container> with possible block options.
zemoga_display_block_options(
	array(
		'container' => 'section', // Any HTML5 container: section, div, etc...
		'class'     => 'content-block generic-block', // Container class.
	)
);
?>
	<div class="container <?php echo esc_attr( $animation_class ); ?>">

		<?php if ( $title ) : ?>
			<h2 class="generic-content-title"><?php echo esc_html( $title ); ?></h2>
		<?php endif; ?>

		<?php
			echo zemoga_get_the_content( $content ); // WP XSS OK.
		?>

	</div><!-- .container -->
</section><!-- .generic-content -->
