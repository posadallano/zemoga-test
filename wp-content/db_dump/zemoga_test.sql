-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2019 a las 02:07:26
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zemoga_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_commentmeta`
--

CREATE TABLE `zt_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_comments`
--

CREATE TABLE `zt_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_comments`
--

INSERT INTO `zt_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-20 21:16:57', '2019-03-20 21:16:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_links`
--

CREATE TABLE `zt_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_options`
--

CREATE TABLE `zt_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_options`
--

INSERT INTO `zt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/zemoga-test', 'yes'),
(2, 'home', 'http://localhost:8080/zemoga-test', 'yes'),
(3, 'blogname', 'Zemoga WP Test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'posadallano2@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"wizard-form/wizard-form.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'zemoga', 'yes'),
(41, 'stylesheet', 'zemoga', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'zt_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1553217425;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1553246225;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1553289695;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1553289696;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1553289698;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553117557;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1553203059;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1553203061;s:7:\"checked\";a:1:{s:6:\"zemoga\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_75b3341da9e7208fc03d0909f69991aa', '1553721696', 'no'),
(121, '_site_transient_browser_75b3341da9e7208fc03d0909f69991aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"72.0.3626.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, '_site_transient_timeout_php_check_882a19ac04e3a86778c3ecaa4af27e2b', '1553721697', 'no'),
(123, '_site_transient_php_check_882a19ac04e3a86778c3ecaa4af27e2b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:5:\"5.2.4\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(138, '_transient_timeout_plugin_slugs', '1553299583', 'no'),
(139, '_transient_plugin_slugs', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"wizard-form/wizard-form.php\";}', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'acf_version', '5.7.13', 'yes'),
(144, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T0RJd01qQjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRZdE1EVXRNakFnTVRnNk5ERTZNamM9IjtzOjM6InVybCI7czozMzoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL3plbW9nYS10ZXN0Ijt9', 'yes'),
(145, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1553213181;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(148, 'current_theme', 'Zemoga', 'yes'),
(149, 'theme_mods_wd_s-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553119170;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(152, '_transient__s_categories', '1', 'yes'),
(154, 'theme_mods_zemoga', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'category_children', 'a:0:{}', 'yes'),
(185, '_site_transient_timeout_theme_roots', '1553204860', 'no'),
(186, '_site_transient_theme_roots', 'a:1:{s:6:\"zemoga\";s:7:\"/themes\";}', 'no'),
(193, '_transient_is_multi_author', '0', 'yes'),
(194, '_transient_timeout_acf_plugin_updates', '1553299583', 'no'),
(195, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.13\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_postmeta`
--

CREATE TABLE `zt_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_postmeta`
--

INSERT INTO `zt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1553126510:1'),
(17, 9, '_wp_page_template', 'template-acf.php'),
(18, 9, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(19, 9, '_content_blocks', 'field_58ebdb2e95d03'),
(20, 10, 'content_blocks', ''),
(21, 10, '_content_blocks', 'field_58ebdb2e95d03'),
(22, 11, '_edit_lock', '1553125319:1'),
(23, 11, '_edit_last', '1'),
(24, 9, 'content_blocks_0_background_options_background_type', 'none'),
(25, 9, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(26, 9, 'content_blocks_0_background_options', ''),
(27, 9, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(28, 9, 'content_blocks_0_display_options_block_width', 'container-width'),
(29, 9, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(30, 9, 'content_blocks_0_display_options_color_picker', ''),
(31, 9, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(32, 9, 'content_blocks_0_display_options_font_color', ''),
(33, 9, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(34, 9, 'content_blocks_0_display_options_animation', 'null'),
(35, 9, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(36, 9, 'content_blocks_0_display_options', ''),
(37, 9, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(38, 9, 'content_blocks_0_other_options_custom_id', ''),
(39, 9, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(40, 9, 'content_blocks_0_other_options_custom_css_class', ''),
(41, 9, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(42, 9, 'content_blocks_0_other_options_start_date', ''),
(43, 9, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(44, 9, 'content_blocks_0_other_options_end_date', ''),
(45, 9, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(46, 9, 'content_blocks_0_other_options', ''),
(47, 9, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(48, 9, 'content_blocks_0_block_layout', 'media_text'),
(49, 9, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(50, 9, 'content_blocks_0_media_left', '44'),
(51, 9, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(52, 9, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(53, 9, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(54, 43, 'content_blocks', 'a:1:{i:0;s:17:\"fifty_fifty_block\";}'),
(55, 43, '_content_blocks', 'field_58ebdb2e95d03'),
(56, 43, 'content_blocks_0_background_options_background_type', 'none'),
(57, 43, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(58, 43, 'content_blocks_0_background_options', ''),
(59, 43, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(60, 43, 'content_blocks_0_display_options_block_width', 'container-width'),
(61, 43, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(62, 43, 'content_blocks_0_display_options_color_picker', ''),
(63, 43, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(64, 43, 'content_blocks_0_display_options_font_color', ''),
(65, 43, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(66, 43, 'content_blocks_0_display_options_animation', 'null'),
(67, 43, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(68, 43, 'content_blocks_0_display_options', ''),
(69, 43, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(70, 43, 'content_blocks_0_other_options_custom_id', ''),
(71, 43, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(72, 43, 'content_blocks_0_other_options_custom_css_class', ''),
(73, 43, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(74, 43, 'content_blocks_0_other_options_start_date', ''),
(75, 43, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(76, 43, 'content_blocks_0_other_options_end_date', ''),
(77, 43, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(78, 43, 'content_blocks_0_other_options', ''),
(79, 43, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(80, 43, 'content_blocks_0_block_layout', 'media_text'),
(81, 43, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(82, 43, 'content_blocks_0_media_left', ''),
(83, 43, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(84, 43, 'content_blocks_0_text_primary', ''),
(85, 43, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(88, 45, 'content_blocks', 'a:1:{i:0;s:17:\"fifty_fifty_block\";}'),
(89, 45, '_content_blocks', 'field_58ebdb2e95d03'),
(90, 45, 'content_blocks_0_background_options_background_type', 'none'),
(91, 45, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(92, 45, 'content_blocks_0_background_options', ''),
(93, 45, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(94, 45, 'content_blocks_0_display_options_block_width', 'container-width'),
(95, 45, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(96, 45, 'content_blocks_0_display_options_color_picker', ''),
(97, 45, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(98, 45, 'content_blocks_0_display_options_font_color', ''),
(99, 45, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(100, 45, 'content_blocks_0_display_options_animation', 'null'),
(101, 45, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(102, 45, 'content_blocks_0_display_options', ''),
(103, 45, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(104, 45, 'content_blocks_0_other_options_custom_id', ''),
(105, 45, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(106, 45, 'content_blocks_0_other_options_custom_css_class', ''),
(107, 45, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(108, 45, 'content_blocks_0_other_options_start_date', ''),
(109, 45, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(110, 45, 'content_blocks_0_other_options_end_date', ''),
(111, 45, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(112, 45, 'content_blocks_0_other_options', ''),
(113, 45, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(114, 45, 'content_blocks_0_block_layout', 'media_text'),
(115, 45, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(116, 45, 'content_blocks_0_media_left', '44'),
(117, 45, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(118, 45, 'content_blocks_0_text_primary', 'Quisque id mi. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Phasellus accumsan cursus velit.'),
(119, 45, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(120, 46, '_edit_lock', '1553192643:1'),
(121, 46, '_edit_last', '1'),
(122, 53, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(123, 53, '_content_blocks', 'field_58ebdb2e95d03'),
(124, 53, 'content_blocks_0_background_options_background_type', 'none'),
(125, 53, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(126, 53, 'content_blocks_0_background_options', ''),
(127, 53, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(128, 53, 'content_blocks_0_display_options_block_width', 'container-width'),
(129, 53, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(130, 53, 'content_blocks_0_display_options_color_picker', ''),
(131, 53, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(132, 53, 'content_blocks_0_display_options_font_color', ''),
(133, 53, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(134, 53, 'content_blocks_0_display_options_animation', 'null'),
(135, 53, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(136, 53, 'content_blocks_0_display_options', ''),
(137, 53, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(138, 53, 'content_blocks_0_other_options_custom_id', ''),
(139, 53, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(140, 53, 'content_blocks_0_other_options_custom_css_class', ''),
(141, 53, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(142, 53, 'content_blocks_0_other_options_start_date', ''),
(143, 53, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(144, 53, 'content_blocks_0_other_options_end_date', ''),
(145, 53, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(146, 53, 'content_blocks_0_other_options', ''),
(147, 53, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(148, 53, 'content_blocks_0_block_layout', 'media_text'),
(149, 53, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(150, 53, 'content_blocks_0_media_left', '44'),
(151, 53, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(152, 53, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(153, 53, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(158, 9, 'content_blocks_0_image_plus_caption', ''),
(159, 9, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(160, 55, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(161, 55, '_content_blocks', 'field_58ebdb2e95d03'),
(162, 55, 'content_blocks_0_background_options_background_type', 'none'),
(163, 55, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(164, 55, 'content_blocks_0_background_options', ''),
(165, 55, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(166, 55, 'content_blocks_0_display_options_block_width', 'container-width'),
(167, 55, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(168, 55, 'content_blocks_0_display_options_color_picker', ''),
(169, 55, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(170, 55, 'content_blocks_0_display_options_font_color', ''),
(171, 55, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(172, 55, 'content_blocks_0_display_options_animation', 'null'),
(173, 55, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(174, 55, 'content_blocks_0_display_options', ''),
(175, 55, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(176, 55, 'content_blocks_0_other_options_custom_id', ''),
(177, 55, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(178, 55, 'content_blocks_0_other_options_custom_css_class', ''),
(179, 55, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(180, 55, 'content_blocks_0_other_options_start_date', ''),
(181, 55, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(182, 55, 'content_blocks_0_other_options_end_date', ''),
(183, 55, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(184, 55, 'content_blocks_0_other_options', ''),
(185, 55, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(186, 55, 'content_blocks_0_block_layout', 'media_text'),
(187, 55, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(188, 55, 'content_blocks_0_media_left', '44'),
(189, 55, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(190, 55, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(191, 55, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(192, 55, 'content_blocks_0_image_plus_caption_0_media_left', '44'),
(193, 55, '_content_blocks_0_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(194, 55, 'content_blocks_0_image_plus_caption_0_text_primary', 'Sed lectus. Phasellus gravida semper nisi. Phasellus gravida semper nisi.'),
(195, 55, '_content_blocks_0_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(196, 55, 'content_blocks_0_image_plus_caption', '1'),
(197, 55, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(198, 56, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(199, 56, '_content_blocks', 'field_58ebdb2e95d03'),
(200, 56, 'content_blocks_0_background_options_background_type', 'none'),
(201, 56, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(202, 56, 'content_blocks_0_background_options', ''),
(203, 56, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(204, 56, 'content_blocks_0_display_options_block_width', 'container-width'),
(205, 56, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(206, 56, 'content_blocks_0_display_options_color_picker', ''),
(207, 56, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(208, 56, 'content_blocks_0_display_options_font_color', ''),
(209, 56, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(210, 56, 'content_blocks_0_display_options_animation', 'null'),
(211, 56, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(212, 56, 'content_blocks_0_display_options', ''),
(213, 56, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(214, 56, 'content_blocks_0_other_options_custom_id', ''),
(215, 56, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(216, 56, 'content_blocks_0_other_options_custom_css_class', ''),
(217, 56, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(218, 56, 'content_blocks_0_other_options_start_date', ''),
(219, 56, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(220, 56, 'content_blocks_0_other_options_end_date', ''),
(221, 56, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(222, 56, 'content_blocks_0_other_options', ''),
(223, 56, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(224, 56, 'content_blocks_0_block_layout', 'media_text'),
(225, 56, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(226, 56, 'content_blocks_0_media_left', '44'),
(227, 56, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(228, 56, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(229, 56, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(230, 56, 'content_blocks_0_image_plus_caption', ''),
(231, 56, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(232, 9, 'image_plus_caption_0_media_left', '61'),
(233, 9, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(234, 9, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(235, 9, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(236, 9, 'image_plus_caption_1_media_left', '61'),
(237, 9, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(238, 9, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(239, 9, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(240, 9, 'image_plus_caption', '2'),
(241, 9, '_image_plus_caption', 'field_5c92bed92bea2'),
(242, 9, 'block_content', ''),
(243, 9, '_block_content', 'field_596e67dad2cac'),
(244, 57, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(245, 57, '_content_blocks', 'field_58ebdb2e95d03'),
(246, 57, 'content_blocks_0_background_options_background_type', 'none'),
(247, 57, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(248, 57, 'content_blocks_0_background_options', ''),
(249, 57, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(250, 57, 'content_blocks_0_display_options_block_width', 'container-width'),
(251, 57, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(252, 57, 'content_blocks_0_display_options_color_picker', ''),
(253, 57, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(254, 57, 'content_blocks_0_display_options_font_color', ''),
(255, 57, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(256, 57, 'content_blocks_0_display_options_animation', 'null'),
(257, 57, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(258, 57, 'content_blocks_0_display_options', ''),
(259, 57, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(260, 57, 'content_blocks_0_other_options_custom_id', ''),
(261, 57, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(262, 57, 'content_blocks_0_other_options_custom_css_class', ''),
(263, 57, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(264, 57, 'content_blocks_0_other_options_start_date', ''),
(265, 57, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(266, 57, 'content_blocks_0_other_options_end_date', ''),
(267, 57, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(268, 57, 'content_blocks_0_other_options', ''),
(269, 57, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(270, 57, 'content_blocks_0_block_layout', 'media_text'),
(271, 57, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(272, 57, 'content_blocks_0_media_left', '44'),
(273, 57, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(274, 57, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(275, 57, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(276, 57, 'content_blocks_0_image_plus_caption', ''),
(277, 57, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(278, 57, 'image_plus_caption_0_media_left', '44'),
(279, 57, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(280, 57, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Suspendisse eu ligula.'),
(281, 57, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(282, 57, 'image_plus_caption_1_media_left', '44'),
(283, 57, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(284, 57, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Vivamus in erat ut urna cursus vestibulum.'),
(285, 57, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(286, 57, 'image_plus_caption', '2'),
(287, 57, '_image_plus_caption', 'field_5c92bed92bea2'),
(288, 57, 'block_content', ''),
(289, 57, '_block_content', 'field_596e67dad2cac'),
(290, 9, 'image_plus_caption_0_url', 'http://www.example.com'),
(291, 9, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(292, 9, 'image_plus_caption_1_url', 'http://www.example.com'),
(293, 9, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(294, 59, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(295, 59, '_content_blocks', 'field_58ebdb2e95d03'),
(296, 59, 'content_blocks_0_background_options_background_type', 'none'),
(297, 59, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(298, 59, 'content_blocks_0_background_options', ''),
(299, 59, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(300, 59, 'content_blocks_0_display_options_block_width', 'container-width'),
(301, 59, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(302, 59, 'content_blocks_0_display_options_color_picker', ''),
(303, 59, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(304, 59, 'content_blocks_0_display_options_font_color', ''),
(305, 59, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(306, 59, 'content_blocks_0_display_options_animation', 'null'),
(307, 59, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(308, 59, 'content_blocks_0_display_options', ''),
(309, 59, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(310, 59, 'content_blocks_0_other_options_custom_id', ''),
(311, 59, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(312, 59, 'content_blocks_0_other_options_custom_css_class', ''),
(313, 59, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(314, 59, 'content_blocks_0_other_options_start_date', ''),
(315, 59, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(316, 59, 'content_blocks_0_other_options_end_date', ''),
(317, 59, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(318, 59, 'content_blocks_0_other_options', ''),
(319, 59, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(320, 59, 'content_blocks_0_block_layout', 'media_text'),
(321, 59, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(322, 59, 'content_blocks_0_media_left', '44'),
(323, 59, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(324, 59, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(325, 59, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(326, 59, 'content_blocks_0_image_plus_caption', ''),
(327, 59, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(328, 59, 'image_plus_caption_0_media_left', '44'),
(329, 59, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(330, 59, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(331, 59, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(332, 59, 'image_plus_caption_1_media_left', '44'),
(333, 59, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(334, 59, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(335, 59, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(336, 59, 'image_plus_caption', '2'),
(337, 59, '_image_plus_caption', 'field_5c92bed92bea2'),
(338, 59, 'block_content', ''),
(339, 59, '_block_content', 'field_596e67dad2cac'),
(340, 59, 'image_plus_caption_0_url', ''),
(341, 59, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(342, 59, 'image_plus_caption_1_url', ''),
(343, 59, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(344, 60, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(345, 60, '_content_blocks', 'field_58ebdb2e95d03'),
(346, 60, 'content_blocks_0_background_options_background_type', 'none'),
(347, 60, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(348, 60, 'content_blocks_0_background_options', ''),
(349, 60, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(350, 60, 'content_blocks_0_display_options_block_width', 'container-width'),
(351, 60, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(352, 60, 'content_blocks_0_display_options_color_picker', ''),
(353, 60, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(354, 60, 'content_blocks_0_display_options_font_color', ''),
(355, 60, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(356, 60, 'content_blocks_0_display_options_animation', 'null'),
(357, 60, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(358, 60, 'content_blocks_0_display_options', ''),
(359, 60, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(360, 60, 'content_blocks_0_other_options_custom_id', ''),
(361, 60, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(362, 60, 'content_blocks_0_other_options_custom_css_class', ''),
(363, 60, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(364, 60, 'content_blocks_0_other_options_start_date', ''),
(365, 60, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(366, 60, 'content_blocks_0_other_options_end_date', ''),
(367, 60, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(368, 60, 'content_blocks_0_other_options', ''),
(369, 60, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(370, 60, 'content_blocks_0_block_layout', 'media_text'),
(371, 60, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(372, 60, 'content_blocks_0_media_left', '44'),
(373, 60, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(374, 60, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(375, 60, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(376, 60, 'content_blocks_0_image_plus_caption', ''),
(377, 60, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(378, 60, 'image_plus_caption_0_media_left', '44'),
(379, 60, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(380, 60, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(381, 60, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(382, 60, 'image_plus_caption_1_media_left', '44'),
(383, 60, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(384, 60, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(385, 60, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(386, 60, 'image_plus_caption', '2'),
(387, 60, '_image_plus_caption', 'field_5c92bed92bea2'),
(388, 60, 'block_content', ''),
(389, 60, '_block_content', 'field_596e67dad2cac'),
(390, 60, 'image_plus_caption_0_url', 'http://www.example.com'),
(391, 60, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(392, 60, 'image_plus_caption_1_url', 'http://www.example.com'),
(393, 60, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(394, 61, '_wp_attached_file', '2019/03/640x480.png'),
(395, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:19:\"2019/03/640x480.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"640x480-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"640x480-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(396, 62, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(397, 62, '_content_blocks', 'field_58ebdb2e95d03'),
(398, 62, 'content_blocks_0_background_options_background_type', 'none'),
(399, 62, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(400, 62, 'content_blocks_0_background_options', ''),
(401, 62, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(402, 62, 'content_blocks_0_display_options_block_width', 'container-width'),
(403, 62, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(404, 62, 'content_blocks_0_display_options_color_picker', ''),
(405, 62, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(406, 62, 'content_blocks_0_display_options_font_color', ''),
(407, 62, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(408, 62, 'content_blocks_0_display_options_animation', 'null'),
(409, 62, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(410, 62, 'content_blocks_0_display_options', ''),
(411, 62, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(412, 62, 'content_blocks_0_other_options_custom_id', ''),
(413, 62, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(414, 62, 'content_blocks_0_other_options_custom_css_class', ''),
(415, 62, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(416, 62, 'content_blocks_0_other_options_start_date', ''),
(417, 62, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(418, 62, 'content_blocks_0_other_options_end_date', ''),
(419, 62, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(420, 62, 'content_blocks_0_other_options', ''),
(421, 62, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(422, 62, 'content_blocks_0_block_layout', 'media_text'),
(423, 62, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(424, 62, 'content_blocks_0_media_left', '44'),
(425, 62, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(426, 62, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(427, 62, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(428, 62, 'content_blocks_0_image_plus_caption', ''),
(429, 62, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(430, 62, 'image_plus_caption_0_media_left', '61'),
(431, 62, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(432, 62, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(433, 62, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(434, 62, 'image_plus_caption_1_media_left', '61'),
(435, 62, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(436, 62, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(437, 62, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(438, 62, 'image_plus_caption', '2'),
(439, 62, '_image_plus_caption', 'field_5c92bed92bea2'),
(440, 62, 'block_content', ''),
(441, 62, '_block_content', 'field_596e67dad2cac'),
(442, 62, 'image_plus_caption_0_url', 'http://www.example.com'),
(443, 62, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(444, 62, 'image_plus_caption_1_url', 'http://www.example.com'),
(445, 62, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(446, 63, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(447, 63, '_content_blocks', 'field_58ebdb2e95d03'),
(448, 63, 'content_blocks_0_background_options_background_type', 'none'),
(449, 63, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(450, 63, 'content_blocks_0_background_options', ''),
(451, 63, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(452, 63, 'content_blocks_0_display_options_block_width', 'container-width'),
(453, 63, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(454, 63, 'content_blocks_0_display_options_color_picker', ''),
(455, 63, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(456, 63, 'content_blocks_0_display_options_font_color', ''),
(457, 63, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(458, 63, 'content_blocks_0_display_options_animation', 'null'),
(459, 63, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(460, 63, 'content_blocks_0_display_options', ''),
(461, 63, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(462, 63, 'content_blocks_0_other_options_custom_id', ''),
(463, 63, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(464, 63, 'content_blocks_0_other_options_custom_css_class', ''),
(465, 63, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(466, 63, 'content_blocks_0_other_options_start_date', ''),
(467, 63, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(468, 63, 'content_blocks_0_other_options_end_date', ''),
(469, 63, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(470, 63, 'content_blocks_0_other_options', ''),
(471, 63, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(472, 63, 'content_blocks_0_block_layout', 'media_text'),
(473, 63, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(474, 63, 'content_blocks_0_media_left', '44'),
(475, 63, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(476, 63, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(477, 63, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(478, 63, 'content_blocks_0_image_plus_caption', ''),
(479, 63, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(480, 63, 'image_plus_caption_0_media_left', '61'),
(481, 63, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(482, 63, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(483, 63, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(484, 63, 'image_plus_caption_1_media_left', '61'),
(485, 63, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(486, 63, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(487, 63, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(488, 63, 'image_plus_caption', '2'),
(489, 63, '_image_plus_caption', 'field_5c92bed92bea2'),
(490, 63, 'block_content', ''),
(491, 63, '_block_content', 'field_596e67dad2cac'),
(492, 63, 'image_plus_caption_0_url', 'http://www.example.com'),
(493, 63, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(494, 63, 'image_plus_caption_1_url', 'http://www.example2.com'),
(495, 63, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(496, 64, 'content_blocks', 'a:1:{i:0;s:19:\"zemoga_custom_block\";}'),
(497, 64, '_content_blocks', 'field_58ebdb2e95d03'),
(498, 64, 'content_blocks_0_background_options_background_type', 'none'),
(499, 64, '_content_blocks_0_background_options_background_type', 'field_5ab3e6937bb9d'),
(500, 64, 'content_blocks_0_background_options', ''),
(501, 64, '_content_blocks_0_background_options', 'field_596e67f9d2cad_field_596d117a08098'),
(502, 64, 'content_blocks_0_display_options_block_width', 'container-width'),
(503, 64, '_content_blocks_0_display_options_block_width', 'field_5c1418bbb3fbe'),
(504, 64, 'content_blocks_0_display_options_color_picker', ''),
(505, 64, '_content_blocks_0_display_options_color_picker', 'field_5bb7935bde7ea'),
(506, 64, 'content_blocks_0_display_options_font_color', ''),
(507, 64, '_content_blocks_0_display_options_font_color', 'field_5c49f13b705f3'),
(508, 64, 'content_blocks_0_display_options_animation', 'null'),
(509, 64, '_content_blocks_0_display_options_animation', 'field_5c49f169705f4'),
(510, 64, 'content_blocks_0_display_options', ''),
(511, 64, '_content_blocks_0_display_options', 'field_5c141a741af3b_field_5c141b521fc2d'),
(512, 64, 'content_blocks_0_other_options_custom_id', ''),
(513, 64, '_content_blocks_0_other_options_custom_id', 'field_5ba51914757eb'),
(514, 64, 'content_blocks_0_other_options_custom_css_class', ''),
(515, 64, '_content_blocks_0_other_options_custom_css_class', 'field_5ab3e4afab635'),
(516, 64, 'content_blocks_0_other_options_start_date', ''),
(517, 64, '_content_blocks_0_other_options_start_date', 'field_5ab53deb4fbc4'),
(518, 64, 'content_blocks_0_other_options_end_date', ''),
(519, 64, '_content_blocks_0_other_options_end_date', 'field_5ab53ec34fbc5'),
(520, 64, 'content_blocks_0_other_options', ''),
(521, 64, '_content_blocks_0_other_options', 'field_596e6816d2cae_field_596d122ed7ea3'),
(522, 64, 'content_blocks_0_block_layout', 'media_text'),
(523, 64, '_content_blocks_0_block_layout', 'field_596e67dad2cac_field_59089fd63f35f'),
(524, 64, 'content_blocks_0_media_left', '44'),
(525, 64, '_content_blocks_0_media_left', 'field_596e67dad2cac_field_5908a2874dd20'),
(526, 64, 'content_blocks_0_text_primary', 'Morbi vestibulum volutpat enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce ac felis sit amet ligula pharetra condimentum.'),
(527, 64, '_content_blocks_0_text_primary', 'field_596e67dad2cac_field_596e6ed60914d'),
(528, 64, 'content_blocks_0_image_plus_caption', ''),
(529, 64, '_content_blocks_0_image_plus_caption', 'field_596e67dad2cac_field_5c92bed92bea2'),
(530, 64, 'image_plus_caption_0_media_left', '61'),
(531, 64, '_image_plus_caption_0_media_left', 'field_5908a2874dd20'),
(532, 64, 'image_plus_caption_0_text_primary', 'Donec vitae orci sed dolor rutrum auctor.'),
(533, 64, '_image_plus_caption_0_text_primary', 'field_596e6ed60914d'),
(534, 64, 'image_plus_caption_1_media_left', '61'),
(535, 64, '_image_plus_caption_1_media_left', 'field_5908a2874dd20'),
(536, 64, 'image_plus_caption_1_text_primary', 'Vivamus euismod mauris.'),
(537, 64, '_image_plus_caption_1_text_primary', 'field_596e6ed60914d'),
(538, 64, 'image_plus_caption', '2'),
(539, 64, '_image_plus_caption', 'field_5c92bed92bea2'),
(540, 64, 'block_content', ''),
(541, 64, '_block_content', 'field_596e67dad2cac'),
(542, 64, 'image_plus_caption_0_url', 'http://www.example.com'),
(543, 64, '_image_plus_caption_0_url', 'field_5c92d061b896c'),
(544, 64, 'image_plus_caption_1_url', 'http://www.example.com'),
(545, 64, '_image_plus_caption_1_url', 'field_5c92d061b896c'),
(546, 65, '_edit_last', '1'),
(547, 65, '_edit_lock', '1553210076:1'),
(548, 65, '_wp_page_template', 'default'),
(557, 70, '_edit_lock', '1553213039:1'),
(558, 70, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_posts`
--

CREATE TABLE `zt_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_posts`
--

INSERT INTO `zt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-20 21:16:57', '2019-03-20 21:16:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-03-20 21:16:57', '2019-03-20 21:16:57', '', 0, 'http://localhost:8080/zemoga-test/?p=1', 0, 'post', '', 1),
(4, 1, '2019-03-20 21:21:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-20 21:21:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/zemoga-test/?p=4', 0, 'post', '', 0),
(9, 1, '2019-03-20 22:11:52', '2019-03-20 22:11:52', '', 'Zemoga page', '', 'publish', 'closed', 'closed', '', 'zemoga-page', '', '', '2019-03-20 23:58:31', '2019-03-20 23:58:31', '', 0, 'http://localhost:8080/zemoga-test/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-03-20 22:11:52', '2019-03-20 22:11:52', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:11:52', '2019-03-20 22:11:52', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-03-20 22:15:31', '2019-03-20 22:15:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"template-acf.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Global Content Blocks', 'global-content-blocks', 'publish', 'open', 'open', '', 'group_58ebdb1fb1278', '', '', '2019-03-20 22:48:34', '2019-03-20 22:48:34', '', 0, 'http://localhost:8080/zemoga-test/?p=11', 0, 'acf-field-group', '', 0),
(23, 1, '2019-03-20 22:15:29', '2019-03-20 22:15:29', 'a:10:{s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"clone\";a:1:{i:0;s:19:\"group_596e6776dab80\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'Block Content', 'block_content', 'publish', 'closed', 'closed', '', 'field_596e67dad2cac', '', '', '2019-03-20 22:48:34', '2019-03-20 22:48:34', '', 11, 'http://localhost:8080/zemoga-test/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(43, 1, '2019-03-20 22:17:21', '2019-03-20 22:17:21', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:17:21', '2019-03-20 22:17:21', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-03-20 22:20:06', '2019-03-20 22:20:06', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:20:06', '2019-03-20 22:20:06', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-03-20 22:22:28', '2019-03-20 22:22:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Group: Zemoga custom block — To Clone', 'group-zemoga-custom-block-to-clone', 'acf-disabled', 'open', 'open', '', 'group_596e6776dab80', '', '', '2019-03-20 23:45:54', '2019-03-20 23:45:54', '', 0, 'http://localhost:8080/zemoga-test/?p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2019-03-20 22:22:27', '2019-03-20 22:22:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Block Content', '', 'publish', 'closed', 'closed', '', 'field_59416beff0b0b', '', '', '2019-03-20 22:22:27', '2019-03-20 22:22:27', '', 46, 'http://localhost:8080/zemoga-test/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(49, 1, '2019-03-20 22:22:27', '2019-03-20 22:22:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:23:\"Add or Upload an image.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5c92bed92bea2\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:19:\"jpg, jpeg, png, gif\";}', 'Left Side Image', 'media_left', 'publish', 'closed', 'closed', '', 'field_5908a2874dd20', '', '', '2019-03-20 23:45:53', '2019-03-20 23:45:53', '', 54, 'http://localhost:8080/zemoga-test/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2019-03-20 22:22:28', '2019-03-20 22:22:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'text_primary', 'publish', 'closed', 'closed', '', 'field_596e6ed60914d', '', '', '2019-03-20 23:45:53', '2019-03-20 23:45:53', '', 54, 'http://localhost:8080/zemoga-test/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(53, 1, '2019-03-20 22:25:33', '2019-03-20 22:25:33', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:25:33', '2019-03-20 22:25:33', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-03-20 22:31:27', '2019-03-20 22:31:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:19:\"Add image + caption\";}', 'Image + Caption', 'image_plus_caption', 'publish', 'closed', 'closed', '', 'field_5c92bed92bea2', '', '', '2019-03-20 22:43:00', '2019-03-20 22:43:00', '', 46, 'http://localhost:8080/zemoga-test/?post_type=acf-field&#038;p=54', 1, 'acf-field', '', 0),
(55, 1, '2019-03-20 22:38:52', '2019-03-20 22:38:52', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:38:52', '2019-03-20 22:38:52', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-03-20 22:42:12', '2019-03-20 22:42:12', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:42:12', '2019-03-20 22:42:12', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-03-20 22:49:00', '2019-03-20 22:49:00', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 22:49:00', '2019-03-20 22:49:00', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-03-20 23:45:53', '2019-03-20 23:45:53', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:25:\"Please enter the full URL\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'url', 'publish', 'closed', 'closed', '', 'field_5c92d061b896c', '', '', '2019-03-20 23:45:53', '2019-03-20 23:45:53', '', 54, 'http://localhost:8080/zemoga-test/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2019-03-20 23:46:14', '2019-03-20 23:46:14', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 23:46:14', '2019-03-20 23:46:14', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-03-20 23:46:38', '2019-03-20 23:46:38', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 23:46:38', '2019-03-20 23:46:38', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-03-20 23:57:21', '2019-03-20 23:57:21', '', '640x480', '', 'inherit', 'open', 'closed', '', '640x480', '', '', '2019-03-20 23:57:21', '2019-03-20 23:57:21', '', 9, 'http://localhost:8080/zemoga-test/wp-content/uploads/2019/03/640x480.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-03-20 23:57:29', '2019-03-20 23:57:29', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 23:57:29', '2019-03-20 23:57:29', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-03-20 23:57:53', '2019-03-20 23:57:53', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 23:57:53', '2019-03-20 23:57:53', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-03-20 23:58:31', '2019-03-20 23:58:31', '', 'Zemoga page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-20 23:58:31', '2019-03-20 23:58:31', '', 9, 'http://localhost:8080/zemoga-test/2019/03/20/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-03-21 18:26:40', '2019-03-21 18:26:40', '[wf_custom_registration]', 'Form Registration', '', 'publish', 'closed', 'closed', '', 'form-registration', '', '', '2019-03-21 21:47:59', '2019-03-21 21:47:59', '', 0, 'http://localhost:8080/zemoga-test/?page_id=65', 0, 'page', '', 0),
(66, 1, '2019-03-21 18:26:40', '2019-03-21 18:26:40', '[cr_custom_registration]', 'Form Registration', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-03-21 18:26:40', '2019-03-21 18:26:40', '', 65, 'http://localhost:8080/zemoga-test/2019/03/21/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-03-21 21:47:54', '2019-03-21 21:47:54', '[wf_custom_registration]', 'Form Registration', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-03-21 21:47:54', '2019-03-21 21:47:54', '', 65, 'http://localhost:8080/zemoga-test/2019/03/21/65-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-03-21 23:22:50', '2019-03-21 23:22:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'User', 'user', 'acf-disabled', 'closed', 'closed', '', 'group_5c941cbb6fc95', '', '', '2019-03-21 23:43:42', '2019-03-21 23:43:42', '', 0, 'http://localhost:8080/zemoga-test/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-03-21 23:22:50', '2019-03-21 23:22:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_5c941cc2ad5ae', '', '', '2019-03-21 23:22:50', '2019-03-21 23:22:50', '', 70, 'http://localhost:8080/zemoga-test/?post_type=acf-field&p=71', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_termmeta`
--

CREATE TABLE `zt_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_terms`
--

CREATE TABLE `zt_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_terms`
--

INSERT INTO `zt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_term_relationships`
--

CREATE TABLE `zt_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_term_relationships`
--

INSERT INTO `zt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 1, 0),
(46, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_term_taxonomy`
--

CREATE TABLE `zt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_term_taxonomy`
--

INSERT INTO `zt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_usermeta`
--

CREATE TABLE `zt_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_usermeta`
--

INSERT INTO `zt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'zmgusn'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'zt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'zt_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"02d20d6c145c3bbebc5d937cc2af3ce40cfda9dc9583e16802899b8cf13bb67b\";a:4:{s:10:\"expiration\";i:1554326494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1553116894;}}'),
(17, 1, 'zt_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'zt_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'zt_user-settings-time', '1553192797'),
(350, 26, 'nickname', 'zemgtest'),
(351, 26, 'first_name', 'Zemoga'),
(352, 26, 'last_name', 'Lastname'),
(353, 26, 'description', ''),
(354, 26, 'rich_editing', 'true'),
(355, 26, 'syntax_highlighting', 'true'),
(356, 26, 'comment_shortcuts', 'false'),
(357, 26, 'admin_color', 'fresh'),
(358, 26, 'use_ssl', '0'),
(359, 26, 'show_admin_bar_front', 'true'),
(360, 26, 'locale', ''),
(361, 26, 'zt_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(362, 26, 'zt_user_level', '0'),
(363, 26, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zt_users`
--

CREATE TABLE `zt_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zt_users`
--

INSERT INTO `zt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zmgusn', '$P$BmiYUqPJhlWvTgubjeDXiWr10.Saxw/', 'zmgusn', 'posadallano2@gmail.com', '', '2019-03-20 21:16:53', '', 0, 'zmgusn'),
(26, 'zemgtest', '$P$BmpX22Qzx4VVneeElVr25TDLw9pyOG0', 'zemgtest', 'zmtgt@gmail.com', '', '2019-03-22 01:07:02', '', 0, 'Zemoga Lastname');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `zt_commentmeta`
--
ALTER TABLE `zt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `zt_comments`
--
ALTER TABLE `zt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `zt_links`
--
ALTER TABLE `zt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `zt_options`
--
ALTER TABLE `zt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `zt_postmeta`
--
ALTER TABLE `zt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `zt_posts`
--
ALTER TABLE `zt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `zt_termmeta`
--
ALTER TABLE `zt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `zt_terms`
--
ALTER TABLE `zt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `zt_term_relationships`
--
ALTER TABLE `zt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `zt_term_taxonomy`
--
ALTER TABLE `zt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `zt_usermeta`
--
ALTER TABLE `zt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `zt_users`
--
ALTER TABLE `zt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `zt_commentmeta`
--
ALTER TABLE `zt_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zt_comments`
--
ALTER TABLE `zt_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `zt_links`
--
ALTER TABLE `zt_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zt_options`
--
ALTER TABLE `zt_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT de la tabla `zt_postmeta`
--
ALTER TABLE `zt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;
--
-- AUTO_INCREMENT de la tabla `zt_posts`
--
ALTER TABLE `zt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `zt_termmeta`
--
ALTER TABLE `zt_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zt_terms`
--
ALTER TABLE `zt_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `zt_term_taxonomy`
--
ALTER TABLE `zt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `zt_usermeta`
--
ALTER TABLE `zt_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;
--
-- AUTO_INCREMENT de la tabla `zt_users`
--
ALTER TABLE `zt_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
