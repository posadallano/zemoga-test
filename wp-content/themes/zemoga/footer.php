<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Zemoga
 */

?>

	<footer class="site-footer background-gallery">

		<div class="site-info">
			<?php zemoga_display_copyright_text(); ?>
			<?php zemoga_display_social_network_links(); ?>
		</div><!-- .site-info -->
	</footer><!-- .site-footer container-->

	<?php wp_footer(); ?>

	<?php zemoga_display_mobile_menu(); ?>

</body>
</html>
