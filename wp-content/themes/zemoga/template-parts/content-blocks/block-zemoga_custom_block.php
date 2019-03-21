<?php
/**
 * The template used for displaying fifty/fifty blocks.
 *
 * @package Zemoga
 */

// Start a <container> with a possible media background.
zemoga_display_block_options(array(
	'container' => 'section', // Any HTML5 container: section, div, etc...
	'class'     => 'content-block', // The class of the container.
) );

// check if the repeater field has rows of data
if( have_rows('image_plus_caption') ):

 	// loop through the rows of data
    while ( have_rows('image_plus_caption') ) : the_row();

		// Set up fields.
		$image_data      = get_sub_field( 'media_left' );
		$text            = get_sub_field( 'text_primary' );
		$url            = get_sub_field( 'url' );
		?>

		<a href="<?php echo esc_url( $url ); ?>" target="_blank" class="display-flex container margin-bottom-20">

			<div class="half">
				<img class="fifty-image" src="<?php echo esc_url( $image_data['url'] ); ?>" alt="<?php echo esc_html( $image_data['alt'] ); ?>">
			</div>

			<div class="half">
				<?php echo zemoga_get_the_content( $text ); // WPCS XSS OK. ?>
			</div>

		</a><!-- .container -->

	<?php
    endwhile;

endif;
?>

</section><!-- .fifty-media-text -->