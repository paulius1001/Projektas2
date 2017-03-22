# WordPress MySQL database migration
#
# Generated: Wednesday 22. March 2017 06:13 UTC
# Hostname: localhost
# Database: `wp_kprojektas`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=531 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-2/Paulius-Milaknis', 'yes'),
(2, 'home', 'http://localhost/vcs-2/Paulius-Milaknis', 'yes'),
(3, 'blogname', 'duHoot', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulius1001@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=27&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:41:"widget-css-classes/widget-css-classes.php";i:6;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:84:"C:\\wamp64\\www\\KProjektas-wp\\Paulius-Milaknis/wp-content/themes/vcs-starter/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'vcs-starter', 'yes'),
(41, 'stylesheet', 'vcs-starter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '61', 'yes'),
(59, 'thumbnail_size_h', '60', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:8:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:6;a:4:{s:5:"title";s:7:"Address";s:4:"text";s:51:" Aliquam quis\r\nIpsum quis\r\nAliquam quis\r\nIpsum quis";s:6:"filter";b:1;s:7:"classes";s:11:"footer-li-1";}i:8;a:4:{s:5:"title";s:12:"Contact info";s:4:"text";s:34:"Aliquam quis\r\nIpsum quis\r\nFolow us";s:6:"filter";b:1;s:7:"classes";s:11:"footer-li-2";}i:9;a:4:{s:5:"title";s:9:"Follow us";s:4:"text";s:194:"<div>\r\n<a href="#" class="facebook"></a>\r\n\r\n<a href="#" class="twiter"></a>\r\n\r\n<a href="#" class="google"></a>\r\n\r\n<a href="#" class="youtube"></a>\r\n</div>\r\n&copy; copyright. All rights reserved.";s:6:"filter";b:0;s:7:"classes";s:11:"footer-li-3";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '27', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:14:"footer-widgets";a:3:{i:0;s:6:"text-6";i:1;s:6:"text-8";i:2;s:6:"text-9";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1490175725;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490175755;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490189275;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1488537069;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'VCS Starter', 'yes'),
(142, 'theme_mods_vcs-starter', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:4:{s:16:"third-navigation";i:6;s:18:"primary-navigation";i:2;s:17:"second-navigation";i:5;s:17:"fourth-navigation";i:7;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(151, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"paulius1001@gmail.com";s:7:"version";s:5:"4.7.3";s:9:"timestamp";i:1489410686;}', 'no'),
(170, 'recently_activated', 'a:1:{s:24:"wordpress-seo/wp-seo.php";i:1489753604;}', 'yes'),
(177, 'acf_version', '4.4.11', 'yes'),
(212, 'WPLANG', 'en_GB', 'yes'),
(259, 'WCSSC_options', 'a:6:{s:7:"show_id";i:0;s:4:"type";i:1;s:15:"defined_classes";s:0:"";s:11:"show_number";i:1;s:13:"show_location";i:1;s:12:"show_evenodd";i:1;}', 'yes'),
(260, 'WCSSC_db_version', '1.3', 'yes'),
(272, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(320, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1489688936;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(321, 'hicpo_activation', '1', 'yes'),
(322, 'wpseo', 'a:23:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"4.4";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1489688946;}', 'yes'),
(323, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(324, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(325, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"27a432371683be89a9733f02c6cf5b19";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(326, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(327, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(328, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(329, 'wpseo_flush_rewrite', '1', 'yes'),
(332, 'wpseo_sitemap_1_cache_validator', '464v7', 'no'),
(333, 'wpseo_sitemap_page_cache_validator', '3LXXg', 'no'),
(366, 'wpseo_sitemap_category_cache_validator', '6KQ5W', 'no'),
(367, 'wpseo_sitemap_post_cache_validator', '6KOsQ', 'no'),
(413, 'wpseo_sitemap_29_cache_validator', '464v9', 'no'),
(414, 'wpseo_sitemap_30_cache_validator', '464vc', 'no'),
(415, 'wpseo_sitemap_31_cache_validator', '464vf', 'no'),
(416, 'wpseo_sitemap_32_cache_validator', '464vh', 'no'),
(451, 'category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=994 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(23, 13, '_menu_item_type', 'custom'),
(24, 13, '_menu_item_menu_item_parent', '0'),
(25, 13, '_menu_item_object_id', '13'),
(26, 13, '_menu_item_object', 'custom'),
(27, 13, '_menu_item_target', ''),
(28, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 13, '_menu_item_xfn', ''),
(30, 13, '_menu_item_url', 'http://localhost/vcs-2/Paulius-Milaknis/'),
(31, 13, '_menu_item_orphaned', '1489579300'),
(41, 15, '_menu_item_type', 'custom'),
(42, 15, '_menu_item_menu_item_parent', '0'),
(43, 15, '_menu_item_object_id', '15'),
(44, 15, '_menu_item_object', 'custom'),
(45, 15, '_menu_item_target', ''),
(46, 15, '_menu_item_classes', 'a:1:{i:0;s:5:"posts";}'),
(47, 15, '_menu_item_xfn', ''),
(48, 15, '_menu_item_url', '#main-post'),
(50, 16, '_menu_item_type', 'custom'),
(51, 16, '_menu_item_menu_item_parent', '0'),
(52, 16, '_menu_item_object_id', '16'),
(53, 16, '_menu_item_object', 'custom'),
(54, 16, '_menu_item_target', ''),
(55, 16, '_menu_item_classes', 'a:1:{i:0;s:5:"about";}'),
(56, 16, '_menu_item_xfn', ''),
(57, 16, '_menu_item_url', '#main-offer1'),
(59, 17, '_menu_item_type', 'custom'),
(60, 17, '_menu_item_menu_item_parent', '0'),
(61, 17, '_menu_item_object_id', '17'),
(62, 17, '_menu_item_object', 'custom'),
(63, 17, '_menu_item_target', ''),
(64, 17, '_menu_item_classes', 'a:1:{i:0;s:8:"contacts";}'),
(65, 17, '_menu_item_xfn', ''),
(66, 17, '_menu_item_url', '#footer-inner'),
(85, 23, '_wp_attached_file', '2017/03/Logo.png'),
(86, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:154;s:6:"height";i:44;s:4:"file";s:16:"2017/03/Logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"Logo-61x44.png";s:5:"width";i:61;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:14:"Logo-61x44.png";s:5:"width";i:61;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 27, '_edit_last', '1'),
(93, 27, '_edit_lock', '1490124287:1'),
(94, 27, '_wp_page_template', 'default'),
(95, 27, '_thumbnail_id', '23'),
(96, 23, '_wp_attachment_backup_sizes', 'a:1:{s:14:"thumbnail-orig";a:4:{s:4:"file";s:15:"Logo-150x44.png";s:5:"width";i:150;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}}'),
(133, 33, '_form', '<div class="footer-subscribe">\n\n<div class="mail-icon"></div>\n    [email* email-177 class:email1 placeholder "Your email@email.com"]\n\n   [submit class:footer-a "subscribe"]\n\n</div>'),
(134, 33, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:11:"duHoot page";s:6:"sender";s:35:"[your-name] <paulius1001@gmail.com>";s:9:"recipient";s:21:"paulius1001@gmail.com";s:4:"body";s:183:"From: [your-name] <[email-177]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on duHoot (http://localhost/vcs-2/Paulius-Milaknis)";s:18:"additional_headers";s:21:"Reply-To: [email-177]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:1;}'),
(135, 33, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:23:"duHoot "[your-subject]"";s:6:"sender";s:30:"duHoot <paulius1001@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:126:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on duHoot (http://localhost/vcs-2/Paulius-Milaknis)";s:18:"additional_headers";s:31:"Reply-To: paulius1001@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(136, 33, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:55:"Email fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(137, 33, '_additional_settings', ''),
(138, 33, '_locale', 'en_GB'),
(148, 27, '_yoast_wpseo_content_score', '30'),
(150, 35, 't_hpf_address', 'a:1:{i:0;s:2:"27";}'),
(151, 35, '_t_hpf_address', 'field_58cadc5594854'),
(152, 35, 't_hpf_contact_info', 'a:1:{i:0;s:2:"27";}'),
(153, 35, '_t_hpf_contact_info', 'field_58cadd5194855'),
(154, 35, 't_hpf_follow_us', ''),
(155, 35, '_t_hpf_follow_us', 'field_58cadd9094856'),
(156, 27, 't_hpf_address', '<h2>Ipsum quis</h2>\r\n\r\n<p> Aliquam quis</p>\r\n<p>Ipsum quis</p>\r\n<p>Folow us</p>'),
(157, 27, '_t_hpf_address', 'field_58cadc5594854'),
(158, 27, 't_hpf_contact_info', 'a:1:{i:0;s:2:"27";}'),
(159, 27, '_t_hpf_contact_info', 'field_58cadd5194855'),
(160, 27, 't_hpf_follow_us', ''),
(161, 27, '_t_hpf_follow_us', 'field_58cadd9094856'),
(165, 36, 't_hpf_address', '<h2>Ipsum quis</h2>\r\n\r\n<p> Aliquam quis</p>\r\n<p>Ipsum quis</p>\r\n<p>Folow us</p>'),
(166, 36, '_t_hpf_address', 'field_58cadc5594854'),
(167, 36, 't_hpf_contact_info', 'a:1:{i:0;s:2:"27";}'),
(168, 36, '_t_hpf_contact_info', 'field_58cadd5194855'),
(169, 36, 't_hpf_follow_us', ''),
(170, 36, '_t_hpf_follow_us', 'field_58cadd9094856'),
(174, 37, '_edit_last', '1'),
(175, 37, '_edit_lock', '1490124292:1'),
(176, 37, '_wp_page_template', 'default'),
(177, 37, '_yoast_wpseo_content_score', '30'),
(178, 39, '_edit_last', '1'),
(179, 39, 'field_58cae8554ddcb', 'a:14:{s:3:"key";s:19:"field_58cae8554ddcb";s:5:"label";s:9:"Section 1";s:4:"name";s:15:"t_hps_section_1";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:4:"page";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(183, 39, 'position', 'normal'),
(184, 39, 'layout', 'default'),
(185, 39, 'hide_on_screen', ''),
(186, 39, '_edit_lock', '1490090124:1'),
(187, 27, 't_caa_city', 'vilnius: Vilnius'),
(188, 27, '_t_caa_city', 'field_58cae8554ddcb'),
(189, 27, 't_caa_keywords', ''),
(190, 27, '_t_caa_keywords', 'field_58cae9284ddcc'),
(191, 27, '_', 'field_58cae9a04ddcd'),
(197, 42, '_wp_attached_file', '2017/03/search-img.jpg'),
(198, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:451;s:4:"file";s:22:"2017/03/search-img.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"search-img-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"search-img-300x106.jpg";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"search-img-768x271.jpg";s:5:"width";i:768;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"search-img-1024x361.jpg";s:5:"width";i:1024;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:22:"search-img-890x451.jpg";s:5:"width";i:890;s:6:"height";i:451;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:22:"search-img-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:22:"search-img-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:22:"search-img-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:20:"search-img-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(199, 39, 'rule', 'a:5:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(200, 43, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(201, 43, '_t_hps_section_1', 'field_58cae8554ddcb'),
(202, 27, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(203, 27, '_t_hps_section_1', 'field_58cae8554ddcb'),
(204, 44, '_edit_last', '1'),
(205, 44, 'field_58cafb19058e2', 'a:14:{s:3:"key";s:19:"field_58cafb19058e2";s:5:"label";s:9:"Link text";s:4:"name";s:14:"t_fl_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:4:"Link";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(206, 44, 'field_58cafbb7058e3', 'a:14:{s:3:"key";s:19:"field_58cafbb7058e3";s:5:"label";s:8:"Link URL";s:4:"name";s:13:"t_fl_link_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(208, 44, 'position', 'side'),
(209, 44, 'layout', 'default'),
(210, 44, 'hide_on_screen', ''),
(211, 44, '_edit_lock', '1490090124:1'),
(218, 44, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"37";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(219, 44, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"27";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(220, 45, 't_fl_link_text', 'Search'),
(221, 45, '_t_fl_link_text', 'field_58cafb19058e2'),
(222, 45, 't_fl_link_url', '#header'),
(223, 45, '_t_fl_link_url', 'field_58cafbb7058e3') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(224, 45, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(225, 45, '_t_hps_section_1', 'field_58cae8554ddcb'),
(226, 27, 't_fl_link_text', 'Search'),
(227, 27, '_t_fl_link_text', 'field_58cafb19058e2'),
(228, 27, 't_fl_link_url', '#header'),
(229, 27, '_t_fl_link_url', 'field_58cafbb7058e3'),
(230, 46, 't_fl_link_text', 'Search'),
(231, 46, '_t_fl_link_text', 'field_58cafb19058e2'),
(232, 46, 't_fl_link_url', '#header'),
(233, 46, '_t_fl_link_url', 'field_58cafbb7058e3'),
(234, 37, 't_fl_link_text', 'Searchsda'),
(235, 37, '_t_fl_link_text', 'field_58cafb19058e2'),
(236, 37, 't_fl_link_url', '#header'),
(237, 37, '_t_fl_link_url', 'field_58cafbb7058e3'),
(238, 47, 't_fl_link_text', 'Searchsss'),
(239, 47, '_t_fl_link_text', 'field_58cafb19058e2'),
(240, 47, 't_fl_link_url', '#header'),
(241, 47, '_t_fl_link_url', 'field_58cafbb7058e3'),
(242, 47, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(243, 47, '_t_hps_section_1', 'field_58cae8554ddcb'),
(244, 48, 't_fl_link_text', 'Search'),
(245, 48, '_t_fl_link_text', 'field_58cafb19058e2'),
(246, 48, 't_fl_link_url', '#header'),
(247, 48, '_t_fl_link_url', 'field_58cafbb7058e3'),
(248, 48, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(249, 48, '_t_hps_section_1', 'field_58cae8554ddcb'),
(250, 49, 't_fl_link_text', 'Searchsda'),
(251, 49, '_t_fl_link_text', 'field_58cafb19058e2'),
(252, 49, 't_fl_link_url', '#header'),
(253, 49, '_t_fl_link_url', 'field_58cafbb7058e3'),
(254, 37, '_thumbnail_id', '42'),
(255, 50, '_edit_last', '1'),
(256, 50, 'field_58cb0c01558dd', 'a:14:{s:3:"key";s:19:"field_58cb0c01558dd";s:5:"label";s:10:"link text ";s:4:"name";s:14:"t_sl_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(257, 50, 'field_58cb0c30558de', 'a:14:{s:3:"key";s:19:"field_58cb0c30558de";s:5:"label";s:8:"link URL";s:4:"name";s:13:"t_sl_link_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(259, 50, 'position', 'normal'),
(260, 50, 'layout', 'default'),
(261, 50, 'hide_on_screen', ''),
(262, 50, '_edit_lock', '1490090126:1'),
(268, 52, 't_fl_link_text', 'Search'),
(269, 52, '_t_fl_link_text', 'field_58cafb19058e2'),
(270, 52, 't_fl_link_url', '#header'),
(271, 52, '_t_fl_link_url', 'field_58cafbb7058e3'),
(272, 52, 't_sl_text_link', 'Subscribe'),
(273, 52, '_t_sl_text_link', 'field_58cb0c01558dd'),
(274, 52, 't_sl_link_url', '#header'),
(275, 52, '_t_sl_link_url', 'field_58cb0c30558de'),
(276, 52, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(277, 52, '_t_hps_section_1', 'field_58cae8554ddcb'),
(278, 27, 't_sl_text_link', 'Subscribe'),
(279, 27, '_t_sl_text_link', 'field_58cb0c01558dd'),
(280, 27, 't_sl_link_url', '#header'),
(281, 27, '_t_sl_link_url', 'field_58cb0c30558de'),
(283, 50, 'rule', 'a:5:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(284, 53, 't_fl_link_text', 'Search'),
(285, 53, '_t_fl_link_text', 'field_58cafb19058e2'),
(286, 53, 't_fl_link_url', '#header'),
(287, 53, '_t_fl_link_url', 'field_58cafbb7058e3'),
(288, 53, 't_sl_link_text', 'Subscribe'),
(289, 53, '_t_sl_link_text', 'field_58cb0c01558dd'),
(290, 53, 't_sl_link_url', '#header'),
(291, 53, '_t_sl_link_url', 'field_58cb0c30558de'),
(292, 53, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(293, 53, '_t_hps_section_1', 'field_58cae8554ddcb'),
(294, 27, 't_sl_link_text', 'Subscribe'),
(295, 27, '_t_sl_link_text', 'field_58cb0c01558dd'),
(296, 55, 't_fl_link_text', 'Search'),
(297, 55, '_t_fl_link_text', 'field_58cafb19058e2'),
(298, 55, 't_fl_link_url', '#header'),
(299, 55, '_t_fl_link_url', 'field_58cafbb7058e3'),
(300, 55, 't_sl_link_text', 'Subscribe'),
(301, 55, '_t_sl_link_text', 'field_58cb0c01558dd'),
(302, 55, 't_sl_link_url', '#header'),
(303, 55, '_t_sl_link_url', 'field_58cb0c30558de'),
(304, 55, 't_hps_section_1', 'a:1:{i:0;s:2:"37";}'),
(305, 55, '_t_hps_section_1', 'field_58cae8554ddcb'),
(306, 56, '_edit_last', '1'),
(307, 56, 'field_58cb8c54d38ce', 'a:13:{s:3:"key";s:19:"field_58cb8c54d38ce";s:5:"label";s:11:"City select";s:4:"name";s:15:"t_s_city_select";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cb8ca8d38cf";s:8:"operator";s:2:"==";s:5:"value";s:10:"-Activity-";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(308, 56, 'field_58cb8ca8d38cf', 'a:13:{s:3:"key";s:19:"field_58cb8ca8d38cf";s:5:"label";s:15:"Activity select";s:4:"name";s:19:"t_s_activity_select";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(310, 56, 'position', 'normal'),
(311, 56, 'layout', 'default'),
(312, 56, 'hide_on_screen', ''),
(313, 56, '_edit_lock', '1490090126:1'),
(319, 27, 't_s_city_select', '-City-'),
(320, 27, '_t_s_city_select', 'field_58cb8c54d38ce'),
(321, 27, 't_s_activity_select', '-Activity-'),
(322, 27, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(328, 37, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago,France,Barcelona'),
(329, 37, '_t_s_city_select', 'field_58cb8c54d38ce'),
(330, 37, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport,Community'),
(331, 37, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(332, 56, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"37";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(333, 57, 't_fl_link_text', 'Searchsda'),
(334, 57, '_t_fl_link_text', 'field_58cafb19058e2'),
(335, 57, 't_fl_link_url', '#header'),
(336, 57, '_t_fl_link_url', 'field_58cafbb7058e3'),
(337, 57, 't_s_city_select', '-City-,Vilnius,Kaunas,Molėtai'),
(338, 57, '_t_s_city_select', 'field_58cb8c54d38ce'),
(339, 57, 't_s_activity_select', '-Activity-,Education,Entertainment,Living'),
(340, 57, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(341, 58, 't_fl_link_text', 'Searchsda') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(342, 58, '_t_fl_link_text', 'field_58cafb19058e2'),
(343, 58, 't_fl_link_url', '#header'),
(344, 58, '_t_fl_link_url', 'field_58cafbb7058e3'),
(345, 58, 't_s_city_select', '-City-,Vilnius,Kaunas,Molėtai,Dubai'),
(346, 58, '_t_s_city_select', 'field_58cb8c54d38ce'),
(347, 58, 't_s_activity_select', '-Activity-,Education,Entertainment,Living'),
(348, 58, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(349, 59, 't_fl_link_text', 'Searchsda'),
(350, 59, '_t_fl_link_text', 'field_58cafb19058e2'),
(351, 59, 't_fl_link_url', '#header'),
(352, 59, '_t_fl_link_url', 'field_58cafbb7058e3'),
(353, 59, 't_s_city_select', '-City-,Vilnius,Kaunas,Molėtai'),
(354, 59, '_t_s_city_select', 'field_58cb8c54d38ce'),
(355, 59, 't_s_activity_select', '-Activity-,Education,Entertainment,Living,Dancing'),
(356, 59, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(357, 60, '_menu_item_type', 'custom'),
(358, 60, '_menu_item_menu_item_parent', '0'),
(359, 60, '_menu_item_object_id', '60'),
(360, 60, '_menu_item_object', 'custom'),
(361, 60, '_menu_item_target', ''),
(362, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(363, 60, '_menu_item_xfn', ''),
(364, 60, '_menu_item_url', ''),
(366, 61, '_menu_item_type', 'custom'),
(367, 61, '_menu_item_menu_item_parent', '0'),
(368, 61, '_menu_item_object_id', '61'),
(369, 61, '_menu_item_object', 'custom'),
(370, 61, '_menu_item_target', ''),
(371, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(372, 61, '_menu_item_xfn', ''),
(373, 61, '_menu_item_url', ''),
(429, 68, '_menu_item_type', 'custom'),
(430, 68, '_menu_item_menu_item_parent', '0'),
(431, 68, '_menu_item_object_id', '68'),
(432, 68, '_menu_item_object', 'custom'),
(433, 68, '_menu_item_target', ''),
(434, 68, '_menu_item_classes', 'a:1:{i:0;s:12:"filter-house";}'),
(435, 68, '_menu_item_xfn', ''),
(436, 68, '_menu_item_url', '#'),
(438, 69, '_menu_item_type', 'custom'),
(439, 69, '_menu_item_menu_item_parent', '0'),
(440, 69, '_menu_item_object_id', '69'),
(441, 69, '_menu_item_object', 'custom'),
(442, 69, '_menu_item_target', ''),
(443, 69, '_menu_item_classes', 'a:1:{i:0;s:11:"filter-girl";}'),
(444, 69, '_menu_item_xfn', ''),
(445, 69, '_menu_item_url', '#'),
(447, 70, '_menu_item_type', 'custom'),
(448, 70, '_menu_item_menu_item_parent', '0'),
(449, 70, '_menu_item_object_id', '70'),
(450, 70, '_menu_item_object', 'custom'),
(451, 70, '_menu_item_target', ''),
(452, 70, '_menu_item_classes', 'a:1:{i:0;s:11:"filter-stud";}'),
(453, 70, '_menu_item_xfn', ''),
(454, 70, '_menu_item_url', '#'),
(456, 71, '_menu_item_type', 'custom'),
(457, 71, '_menu_item_menu_item_parent', '0'),
(458, 71, '_menu_item_object_id', '71'),
(459, 71, '_menu_item_object', 'custom'),
(460, 71, '_menu_item_target', ''),
(461, 71, '_menu_item_classes', 'a:1:{i:0;s:11:"filter-note";}'),
(462, 71, '_menu_item_xfn', ''),
(463, 71, '_menu_item_url', '#'),
(465, 72, '_menu_item_type', 'custom'),
(466, 72, '_menu_item_menu_item_parent', '0'),
(467, 72, '_menu_item_object_id', '72'),
(468, 72, '_menu_item_object', 'custom'),
(469, 72, '_menu_item_target', ''),
(470, 72, '_menu_item_classes', 'a:1:{i:0;s:10:"filter-bus";}'),
(471, 72, '_menu_item_xfn', ''),
(472, 72, '_menu_item_url', '#'),
(474, 73, '_edit_last', '1'),
(475, 73, '_edit_lock', '1490124347:1'),
(476, 73, '_wp_page_template', 'default'),
(477, 78, '_menu_item_type', 'custom'),
(478, 78, '_menu_item_menu_item_parent', '0'),
(479, 78, '_menu_item_object_id', '78'),
(480, 78, '_menu_item_object', 'custom'),
(481, 78, '_menu_item_target', ''),
(482, 78, '_menu_item_classes', 'a:1:{i:0;s:11:"offer-house";}'),
(483, 78, '_menu_item_xfn', ''),
(484, 78, '_menu_item_url', '#'),
(486, 79, '_menu_item_type', 'custom'),
(487, 79, '_menu_item_menu_item_parent', '0'),
(488, 79, '_menu_item_object_id', '79'),
(489, 79, '_menu_item_object', 'custom'),
(490, 79, '_menu_item_target', ''),
(491, 79, '_menu_item_classes', 'a:1:{i:0;s:10:"offer-girl";}'),
(492, 79, '_menu_item_xfn', ''),
(493, 79, '_menu_item_url', '#'),
(495, 80, '_menu_item_type', 'custom'),
(496, 80, '_menu_item_menu_item_parent', '0'),
(497, 80, '_menu_item_object_id', '80'),
(498, 80, '_menu_item_object', 'custom'),
(499, 80, '_menu_item_target', ''),
(500, 80, '_menu_item_classes', 'a:1:{i:0;s:10:"offer-stud";}'),
(501, 80, '_menu_item_xfn', ''),
(502, 80, '_menu_item_url', '#'),
(504, 81, '_menu_item_type', 'custom'),
(505, 81, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(506, 81, '_menu_item_object_id', '81'),
(507, 81, '_menu_item_object', 'custom'),
(508, 81, '_menu_item_target', ''),
(509, 81, '_menu_item_classes', 'a:1:{i:0;s:10:"offer-note";}'),
(510, 81, '_menu_item_xfn', ''),
(511, 81, '_menu_item_url', '#'),
(513, 82, '_menu_item_type', 'custom'),
(514, 82, '_menu_item_menu_item_parent', '0'),
(515, 82, '_menu_item_object_id', '82'),
(516, 82, '_menu_item_object', 'custom'),
(517, 82, '_menu_item_target', ''),
(518, 82, '_menu_item_classes', 'a:1:{i:0;s:9:"offer-bus";}'),
(519, 82, '_menu_item_xfn', ''),
(520, 82, '_menu_item_url', '#'),
(522, 83, '_menu_item_type', 'custom'),
(523, 83, '_menu_item_menu_item_parent', '0'),
(524, 83, '_menu_item_object_id', '83'),
(525, 83, '_menu_item_object', 'custom'),
(526, 83, '_menu_item_target', ''),
(527, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(528, 83, '_menu_item_xfn', ''),
(529, 83, '_menu_item_url', '#'),
(530, 83, '_menu_item_orphaned', '1489764100'),
(539, 86, '_edit_last', '1'),
(540, 86, 'field_58cd1d51cc1c1', 'a:13:{s:3:"key";s:19:"field_58cd1d51cc1c1";s:5:"label";s:11:"Paragraph_1";s:4:"name";s:17:"t_s_2_paragraph_1";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(543, 86, 'position', 'normal'),
(544, 86, 'layout', 'no_box'),
(545, 86, 'hide_on_screen', ''),
(546, 86, '_edit_lock', '1490090125:1'),
(548, 87, 't_sf_reality', 'Reality'),
(549, 87, '_t_sf_reality', 'field_58cd1c95c0a71'),
(550, 73, 't_sf_reality', 'Reality'),
(551, 73, '_t_sf_reality', 'field_58cd1c95c0a71'),
(553, 86, 'field_58cd235ea6725', 'a:13:{s:3:"key";s:19:"field_58cd235ea6725";s:5:"label";s:11:"Paragraph_2";s:4:"name";s:17:"t_s_2_paragraph_2";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(556, 88, 't_s_2_paragraph_1', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph llllllllllllllllllllllll'),
(557, 88, '_t_s_2_paragraph_1', 'field_58cd1d51cc1c1'),
(558, 88, 't_s_2_paragraph_2', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph'),
(559, 88, '_t_s_2_paragraph_2', 'field_58cd235ea6725'),
(560, 88, 't_sf_reality', 'Reality'),
(561, 88, '_t_sf_reality', 'field_58cd1c95c0a71'),
(562, 73, 't_s_2_paragraph_1', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph llllllllllllllllllllllll'),
(563, 73, '_t_s_2_paragraph_1', 'field_58cd1d51cc1c1'),
(564, 73, 't_s_2_paragraph_2', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph'),
(565, 73, '_t_s_2_paragraph_2', 'field_58cd235ea6725'),
(566, 86, 'field_58cd24417dae4', 'a:14:{s:3:"key";s:19:"field_58cd24417dae4";s:5:"label";s:7:"Reality";s:4:"name";s:13:"t_s_2_reality";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(575, 86, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"73";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(576, 89, 't_s_2_paragraph_1', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph llllllllllllllllllllllll'),
(577, 89, '_t_s_2_paragraph_1', 'field_58cd1d51cc1c1'),
(578, 89, 't_s_2_paragraph_2', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph'),
(579, 89, '_t_s_2_paragraph_2', 'field_58cd235ea6725'),
(580, 89, 't_s_2_reality', 'Reality'),
(581, 89, '_t_s_2_reality', 'field_58cd24417dae4'),
(582, 73, 't_s_2_reality', 'Reality'),
(583, 73, '_t_s_2_reality', 'field_58cd24417dae4'),
(590, 92, '_edit_last', '1'),
(591, 92, '_edit_lock', '1490038543:1'),
(593, 96, '_edit_last', '1'),
(594, 96, '_edit_lock', '1490161037:1'),
(598, 99, '_edit_last', '1'),
(599, 99, '_edit_lock', '1490159067:1'),
(600, 100, '_edit_last', '1'),
(601, 100, '_edit_lock', '1490161197:1'),
(602, 101, '_edit_last', '1'),
(603, 101, '_edit_lock', '1490161219:1'),
(604, 102, '_edit_last', '1'),
(605, 102, '_edit_lock', '1490161730:1'),
(606, 104, '_edit_last', '1'),
(607, 104, '_edit_lock', '1490161073:1'),
(608, 105, '_wp_attached_file', '2017/03/study.jpg'),
(609, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:201;s:4:"file";s:17:"2017/03/study.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"study-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"study-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:17:"study-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:17:"study-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:17:"study-300x120.jpg";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:15:"study-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(610, 99, '_thumbnail_id', '154'),
(612, 106, '_wp_attached_file', '2017/03/living-picture.jpg'),
(613, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:209;s:4:"file";s:26:"2017/03/living-picture.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"living-picture-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"living-picture-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:26:"living-picture-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:26:"living-picture-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:26:"living-picture-300x120.jpg";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:24:"living-picture-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(614, 108, '_wp_attached_file', '2017/03/innovasocial_world-community-grid-ordenadores-voluntarios1.png'),
(615, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:285;s:6:"height";i:285;s:4:"file";s:70:"2017/03/innovasocial_world-community-grid-ordenadores-voluntarios1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"innovasocial_world-community-grid-ordenadores-voluntarios1-61x60.png";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:15:"protfolio-small";a:4:{s:4:"file";s:70:"innovasocial_world-community-grid-ordenadores-voluntarios1-210x140.png";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:9:"image/png";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:70:"innovasocial_world-community-grid-ordenadores-voluntarios1-285x200.png";s:5:"width";i:285;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:17:"protfolio-comment";a:4:{s:4:"file";s:70:"innovasocial_world-community-grid-ordenadores-voluntarios1-285x120.png";s:5:"width";i:285;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:68:"innovasocial_world-community-grid-ordenadores-voluntarios1-61x60.png";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(616, 101, '_thumbnail_id', '108'),
(617, 110, '_wp_attached_file', '2017/03/viesasis-transportas-70384624.jpg'),
(618, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:41:"2017/03/viesasis-transportas-70384624.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"viesasis-transportas-70384624-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"viesasis-transportas-70384624-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-890x593.jpg";s:5:"width";i:890;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:41:"viesasis-transportas-70384624-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:39:"viesasis-transportas-70384624-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(619, 102, '_thumbnail_id', '110'),
(620, 112, '_wp_attached_file', '2017/03/mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1.jpg'),
(621, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:84:"2017/03/mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:82:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:84:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:84:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:84:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:84:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:84:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:82:"mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(622, 100, '_thumbnail_id', '112'),
(623, 113, '_edit_last', '1'),
(624, 113, '_edit_lock', '1490147014:1'),
(625, 114, '_wp_attached_file', '2017/03/Club.jpg'),
(626, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:455;s:6:"height";i:120;s:4:"file";s:16:"2017/03/Club.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"Club-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"Club-300x79.jpg";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:16:"Club-210x120.jpg";s:5:"width";i:210;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:14:"Club-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(627, 113, '_thumbnail_id', '114'),
(636, 116, '_wp_attached_file', '2017/03/face.png'),
(637, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:61;s:6:"height";i:60;s:4:"file";s:16:"2017/03/face.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(638, 113, 'p_cp_img', '116'),
(639, 113, '_p_cp_img', 'field_58ce7a69ec049'),
(640, 100, 'p_cp_img', ''),
(641, 100, '_p_cp_img', 'field_58ce7a69ec049'),
(642, 101, 'p_cp_img', ''),
(643, 101, '_p_cp_img', 'field_58ce7a69ec049'),
(644, 96, 'p_cp_img', ''),
(645, 96, '_p_cp_img', 'field_58ce7a69ec049'),
(646, 118, '_edit_last', '1'),
(647, 118, 'field_58ce9d44de1f4', 'a:12:{s:3:"key";s:19:"field_58ce9d44de1f4";s:5:"label";s:4:"City";s:4:"name";s:6:"p_city";s:4:"type";s:6:"select";s:12:"instructions";s:11:"Choose city";s:8:"required";s:1:"1";s:7:"choices";a:7:{s:7:"vilnius";s:7:"Vilnius";s:6:"kaunas";s:6:"Kaunas";s:5:"dubai";s:5:"Dubai";s:6:"london";s:6:"London";s:6:"berlin";s:6:"Berlin";s:7:"chicago";s:7:"Chicago";s:6:"france";s:6:"France";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58d16130764cb";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(649, 118, 'position', 'side') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(650, 118, 'layout', 'default'),
(651, 118, 'hide_on_screen', ''),
(652, 118, '_edit_lock', '1490146943:1'),
(655, 99, 'p_cp_img', ''),
(656, 99, '_p_cp_img', 'field_58ce7a69ec049'),
(657, 99, 'p_pc_city', 'Vilnius'),
(658, 99, '_p_pc_city', 'field_58ce9d44de1f4'),
(665, 119, '_edit_last', '1'),
(666, 119, 'field_58ce9ff0c2dba', 'a:12:{s:3:"key";s:19:"field_58ce9ff0c2dba";s:5:"label";s:12:"Comment type";s:4:"name";s:17:"p_pc_comment_type";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:6:{s:0:"";s:0:"";s:9:"Community";s:9:"Community";s:9:"Education";s:9:"Education";s:13:"Entertainment";s:13:"Entertainment";s:8:"Property";s:8:"Property";s:9:"Transport";s:9:"Transport";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(668, 119, 'position', 'normal'),
(669, 119, 'layout', 'no_box'),
(670, 119, 'hide_on_screen', ''),
(671, 119, '_edit_lock', '1490146987:1'),
(676, 119, 'field_58cea1e6634e5', 'a:11:{s:3:"key";s:19:"field_58cea1e6634e5";s:5:"label";s:5:"Image";s:4:"name";s:10:"p_pc_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:15:"protfolio-small";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58ce9ff0c2dba";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(682, 113, 'p_pc_comment_type', 'Education'),
(683, 113, '_p_pc_comment_type', 'field_58ce9ff0c2dba'),
(684, 113, 'p_pc_image', '116'),
(685, 113, '_p_pc_image', 'field_58cea1e6634e5'),
(686, 113, 'p_city', 'kaunas'),
(687, 113, '_p_city', 'field_58ce9d44de1f4'),
(688, 120, '_edit_last', '1'),
(689, 120, '_edit_lock', '1490162893:1'),
(690, 120, 'p_pc_comment_type', 'Property'),
(691, 120, '_p_pc_comment_type', 'field_58ce9ff0c2dba'),
(692, 120, 'p_pc_image', '116'),
(693, 120, '_p_pc_image', 'field_58cea1e6634e5'),
(694, 120, 'p_city', 'berlin'),
(695, 120, '_p_city', 'field_58ce9d44de1f4'),
(696, 120, '_thumbnail_id', '157'),
(697, 99, 'p_city', 'vilnius'),
(698, 99, '_p_city', 'field_58ce9d44de1f4'),
(699, 96, 'p_city', 'dubai'),
(700, 96, '_p_city', 'field_58ce9d44de1f4'),
(701, 104, 'p_city', 'london'),
(702, 104, '_p_city', 'field_58ce9d44de1f4'),
(703, 100, 'p_city', 'chicago'),
(704, 100, '_p_city', 'field_58ce9d44de1f4'),
(705, 102, 'p_city', 'vilnius'),
(706, 102, '_p_city', 'field_58ce9d44de1f4'),
(707, 101, 'p_city', 'chicago'),
(708, 101, '_p_city', 'field_58ce9d44de1f4'),
(709, 121, 't_fl_link_text', 'Searchsda'),
(710, 121, '_t_fl_link_text', 'field_58cafb19058e2'),
(711, 121, 't_fl_link_url', '#header'),
(712, 121, '_t_fl_link_url', 'field_58cafbb7058e3'),
(713, 121, 't_s_city_select', 'City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(714, 121, '_t_s_city_select', 'field_58cb8c54d38ce'),
(715, 121, 't_s_activity_select', '-Activity-,Education,Entertainment,Living,Dancing'),
(716, 121, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(719, 123, '_edit_last', '1'),
(720, 123, 'field_58cfddf47acab', 'a:12:{s:3:"key";s:19:"field_58cfddf47acab";s:5:"label";s:4:"Form";s:4:"name";s:8:"t_f_form";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:18:"wpcf7_contact_form";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(721, 123, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(722, 123, 'position', 'side'),
(723, 123, 'layout', 'default'),
(724, 123, 'hide_on_screen', ''),
(725, 123, '_edit_lock', '1490090123:1'),
(726, 27, 't_f_form', '33'),
(727, 27, '_t_f_form', 'field_58cfddf47acab'),
(731, 124, '_edit_last', '1'),
(732, 124, 'field_58d0223f2c2b5', 'a:13:{s:3:"key";s:19:"field_58d0223f2c2b5";s:5:"label";s:8:"Property";s:4:"name";s:13:"t_fi_property";s:4:"type";s:8:"textarea";s:12:"instructions";s:27:"Info about property filter.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(733, 124, 'field_58d022c12c2b6', 'a:13:{s:3:"key";s:19:"field_58d022c12c2b6";s:5:"label";s:9:"Education";s:4:"name";s:14:"t_fi_education";s:4:"type";s:8:"textarea";s:12:"instructions";s:28:"Info about education filter.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(734, 124, 'field_58d022ea2c2b7', 'a:13:{s:3:"key";s:19:"field_58d022ea2c2b7";s:5:"label";s:13:"Entertainment";s:4:"name";s:18:"t_fi_entertainment";s:4:"type";s:8:"textarea";s:12:"instructions";s:32:"Info about entertainment filter.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(735, 124, 'field_58d023222c2b8', 'a:13:{s:3:"key";s:19:"field_58d023222c2b8";s:5:"label";s:9:"Transport";s:4:"name";s:14:"t_fi_transport";s:4:"type";s:8:"textarea";s:12:"instructions";s:28:"Info about transport filter.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(736, 124, 'field_58d023542c2b9', 'a:13:{s:3:"key";s:19:"field_58d023542c2b9";s:5:"label";s:9:"Community";s:4:"name";s:14:"t_fi_community";s:4:"type";s:8:"textarea";s:12:"instructions";s:28:"Info about community filter.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(738, 124, 'position', 'side'),
(739, 124, 'layout', 'default'),
(740, 124, 'hide_on_screen', ''),
(741, 124, '_edit_lock', '1490090082:1'),
(742, 124, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"73";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(743, 125, 't_fi_property', 'Property is that which belongs to or with something, whether as an attribute or as a component of said thing.'),
(744, 125, '_t_fi_property', 'field_58d0223f2c2b5'),
(745, 125, 't_fi_education', 'Education is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. '),
(746, 125, '_t_fi_education', 'field_58d022c12c2b6'),
(747, 125, 't_fi_entertainment', 'Entertainment is a form of activity that holds the attention and interest of an audience, or gives pleasure and delight.'),
(748, 125, '_t_fi_entertainment', 'field_58d022ea2c2b7'),
(749, 125, 't_fi_transport', 'Transport or transportation is the movement of people, animals and goods from one location to another. '),
(750, 125, '_t_fi_transport', 'field_58d023222c2b8'),
(751, 125, 't_fi_community', 'Community is a small or large social unit (a group of people) who have something in common, such as norms, religion, values, or identity.'),
(752, 125, '_t_fi_community', 'field_58d023542c2b9'),
(753, 125, 't_f_form', '33'),
(754, 125, '_t_f_form', 'field_58cfddf47acab'),
(755, 125, 't_s_2_paragraph_1', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph llllllllllllllllllllllll'),
(756, 125, '_t_s_2_paragraph_1', 'field_58cd1d51cc1c1'),
(757, 125, 't_s_2_paragraph_2', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph'),
(758, 125, '_t_s_2_paragraph_2', 'field_58cd235ea6725'),
(759, 125, 't_s_2_reality', 'Reality'),
(760, 125, '_t_s_2_reality', 'field_58cd24417dae4'),
(761, 73, 't_fi_property', 'Property is that which belongs to or with something, whether as an attribute or as a component of said thing.'),
(762, 73, '_t_fi_property', 'field_58d0223f2c2b5'),
(763, 73, 't_fi_education', 'Education is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. '),
(764, 73, '_t_fi_education', 'field_58d022c12c2b6'),
(765, 73, 't_fi_entertainment', 'Entertainment is a form of activity that holds the attention and interest of an audience, or gives pleasure and delight.'),
(766, 73, '_t_fi_entertainment', 'field_58d022ea2c2b7'),
(767, 73, 't_fi_transport', 'Transport or transportation is the movement of people, animals and goods from one location to another. '),
(768, 73, '_t_fi_transport', 'field_58d023222c2b8'),
(769, 73, 't_fi_community', 'Community is a small or large social unit (a group of people) who have something in common, such as norms, religion, values, or identity.'),
(770, 73, '_t_fi_community', 'field_58d023542c2b9'),
(771, 73, 't_f_form', '33'),
(772, 73, '_t_f_form', 'field_58cfddf47acab'),
(773, 126, 't_fi_property', 'Property is that which belongs to or with something, whether as an attribute or as a component of said thing.') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(774, 126, '_t_fi_property', 'field_58d0223f2c2b5'),
(775, 126, 't_fi_education', 'Education is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. '),
(776, 126, '_t_fi_education', 'field_58d022c12c2b6'),
(777, 126, 't_fi_entertainment', 'Entertainment is a form of activity that holds the attention and interest of an audience, or gives pleasure and delight.'),
(778, 126, '_t_fi_entertainment', 'field_58d022ea2c2b7'),
(779, 126, 't_fi_transport', 'Transport or transportation is the movement of people, animals and goods from one location to another. '),
(780, 126, '_t_fi_transport', 'field_58d023222c2b8'),
(781, 126, 't_fi_community', 'Community is a small or large social unit (a group of people) who have something in common, such as norms, religion, values, or identity.'),
(782, 126, '_t_fi_community', 'field_58d023542c2b9'),
(783, 126, 't_f_form', '33'),
(784, 126, '_t_f_form', 'field_58cfddf47acab'),
(785, 126, 't_s_2_paragraph_1', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph llllllllllllllllllllllll'),
(786, 126, '_t_s_2_paragraph_1', 'field_58cd1d51cc1c1'),
(787, 126, 't_s_2_paragraph_2', 'Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph, Paragraph, paragraph'),
(788, 126, '_t_s_2_paragraph_2', 'field_58cd235ea6725'),
(789, 126, 't_s_2_reality', 'Reality'),
(790, 126, '_t_s_2_reality', 'field_58cd24417dae4'),
(793, 92, '_wp_trash_meta_status', 'publish'),
(794, 92, '_wp_trash_meta_time', '1490081351'),
(795, 92, '_wp_desired_post_slug', 'post-section'),
(796, 127, '_edit_last', '1'),
(797, 127, '_edit_lock', '1490081480:1'),
(800, 131, 't_fl_link_text', 'Searchsda'),
(801, 131, '_t_fl_link_text', 'field_58cafb19058e2'),
(802, 131, 't_fl_link_url', '#header'),
(803, 131, '_t_fl_link_url', 'field_58cafbb7058e3'),
(804, 131, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(805, 131, '_t_s_city_select', 'field_58cb8c54d38ce'),
(806, 131, 't_s_activity_select', '-Activity-,Education,Entertainment,Living,Dancing'),
(807, 131, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(808, 131, 't_f_form', '33'),
(809, 131, '_t_f_form', 'field_58cfddf47acab'),
(810, 37, 't_f_form', '33'),
(811, 37, '_t_f_form', 'field_58cfddf47acab'),
(812, 132, 't_fl_link_text', 'Searchsda'),
(813, 132, '_t_fl_link_text', 'field_58cafb19058e2'),
(814, 132, 't_fl_link_url', '#header'),
(815, 132, '_t_fl_link_url', 'field_58cafbb7058e3'),
(816, 132, 't_s_city_select', '-City-,vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(817, 132, '_t_s_city_select', 'field_58cb8c54d38ce'),
(818, 132, 't_s_activity_select', '-Activity-,Education,Entertainment,Living,Dancing'),
(819, 132, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(820, 132, 't_f_form', '33'),
(821, 132, '_t_f_form', 'field_58cfddf47acab'),
(823, 133, 't_fl_link_text', 'Searchsda'),
(824, 133, '_t_fl_link_text', 'field_58cafb19058e2'),
(825, 133, 't_fl_link_url', '#header'),
(826, 133, '_t_fl_link_url', 'field_58cafbb7058e3'),
(827, 133, 't_s_city_select', '-City-,vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(828, 133, '_t_s_city_select', 'field_58cb8c54d38ce'),
(829, 133, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport'),
(830, 133, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(831, 133, 't_f_form', '33'),
(832, 133, '_t_f_form', 'field_58cfddf47acab'),
(833, 134, 't_fl_link_text', 'Searchsda'),
(834, 134, '_t_fl_link_text', 'field_58cafb19058e2'),
(835, 134, 't_fl_link_url', '#header'),
(836, 134, '_t_fl_link_url', 'field_58cafbb7058e3'),
(837, 134, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(838, 134, '_t_s_city_select', 'field_58cb8c54d38ce'),
(839, 134, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport'),
(840, 134, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(841, 134, 't_f_form', '33'),
(842, 134, '_t_f_form', 'field_58cfddf47acab'),
(843, 135, 't_fl_link_text', 'Searchsda'),
(844, 135, '_t_fl_link_text', 'field_58cafb19058e2'),
(845, 135, 't_fl_link_url', '#header'),
(846, 135, '_t_fl_link_url', 'field_58cafbb7058e3'),
(847, 135, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago'),
(848, 135, '_t_s_city_select', 'field_58cb8c54d38ce'),
(849, 135, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport,Community'),
(850, 135, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(851, 135, 't_f_form', '33'),
(852, 135, '_t_f_form', 'field_58cfddf47acab'),
(853, 136, '_edit_last', '1'),
(854, 136, '_edit_lock', '1490159088:1'),
(855, 136, 'p_city', 'kaunas'),
(856, 136, '_p_city', 'field_58ce9d44de1f4'),
(857, 137, '_edit_last', '1'),
(858, 137, '_edit_lock', '1490159126:1'),
(859, 137, 'p_city', 'dubai'),
(860, 137, '_p_city', 'field_58ce9d44de1f4'),
(861, 138, '_edit_last', '1'),
(862, 138, '_edit_lock', '1490159139:1'),
(863, 138, 'p_city', 'london'),
(864, 138, '_p_city', 'field_58ce9d44de1f4'),
(865, 139, '_edit_last', '1'),
(866, 139, '_edit_lock', '1490159150:1'),
(867, 139, 'p_city', 'london'),
(868, 139, '_p_city', 'field_58ce9d44de1f4'),
(869, 140, '_edit_last', '1'),
(870, 140, '_edit_lock', '1490159163:1'),
(871, 140, 'p_city', 'chicago'),
(872, 140, '_p_city', 'field_58ce9d44de1f4'),
(873, 141, '_edit_last', '1'),
(874, 141, '_edit_lock', '1490159111:1'),
(875, 141, 'p_city', 'berlin'),
(876, 141, '_p_city', 'field_58ce9d44de1f4'),
(877, 118, 'field_58d16130764cb', 'a:12:{s:3:"key";s:19:"field_58d16130764cb";s:5:"label";s:11:"Recommended";s:4:"name";s:13:"p_recommended";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:0:"";s:0:"";s:11:"recommended";s:11:"Recommended";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58ce9d44de1f4";s:8:"operator";s:2:"==";s:5:"value";s:7:"vilnius";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(879, 99, 'p_recommended', 'recommended') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(880, 99, '_p_recommended', 'field_58d16130764cb'),
(882, 101, 'p_recommended', 'recommended'),
(883, 101, '_p_recommended', 'field_58d16130764cb'),
(884, 113, 'p_recommended', 'recommended'),
(885, 113, '_p_recommended', 'field_58d16130764cb'),
(886, 142, '_wp_attached_file', '2017/03/upload78D8la.jpg'),
(887, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:213;s:4:"file";s:24:"2017/03/upload78D8la.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"upload78D8la-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"upload78D8la-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:24:"upload78D8la-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:24:"upload78D8la-320x200.jpg";s:5:"width";i:320;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:24:"upload78D8la-320x120.jpg";s:5:"width";i:320;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:22:"upload78D8la-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(889, 137, '_thumbnail_id', '154'),
(890, 137, 'p_recommended', ''),
(891, 137, '_p_recommended', 'field_58d16130764cb'),
(892, 138, '_thumbnail_id', '154'),
(893, 138, 'p_recommended', ''),
(894, 138, '_p_recommended', 'field_58d16130764cb'),
(895, 139, '_thumbnail_id', '154'),
(896, 139, 'p_recommended', ''),
(897, 139, '_p_recommended', 'field_58d16130764cb'),
(898, 140, '_thumbnail_id', '154'),
(899, 140, 'p_recommended', ''),
(900, 140, '_p_recommended', 'field_58d16130764cb'),
(901, 136, '_thumbnail_id', '154'),
(902, 136, 'p_recommended', ''),
(903, 136, '_p_recommended', 'field_58d16130764cb'),
(904, 141, '_thumbnail_id', '154'),
(905, 141, 'p_recommended', ''),
(906, 141, '_p_recommended', 'field_58d16130764cb'),
(907, 143, '_edit_last', '1'),
(908, 143, '_edit_lock', '1490159785:1'),
(909, 143, 'p_city', 'france'),
(910, 143, '_p_city', 'field_58ce9d44de1f4'),
(911, 143, 'p_recommended', 'recommended'),
(912, 143, '_p_recommended', 'field_58d16130764cb'),
(915, 118, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"posts1";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(918, 145, '_wp_attached_file', '2017/03/tumblr_mg5yb5Vz971ro7jdfo1_500.jpg'),
(919, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:747;s:4:"file";s:42:"2017/03/tumblr_mg5yb5Vz971ro7jdfo1_500.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"tumblr_mg5yb5Vz971ro7jdfo1_500-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"tumblr_mg5yb5Vz971ro7jdfo1_500-201x300.jpg";s:5:"width";i:201;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:42:"tumblr_mg5yb5Vz971ro7jdfo1_500-500x593.jpg";s:5:"width";i:500;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:42:"tumblr_mg5yb5Vz971ro7jdfo1_500-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:42:"tumblr_mg5yb5Vz971ro7jdfo1_500-500x200.jpg";s:5:"width";i:500;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:42:"tumblr_mg5yb5Vz971ro7jdfo1_500-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:40:"tumblr_mg5yb5Vz971ro7jdfo1_500-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(920, 143, '_thumbnail_id', '145'),
(921, 146, 't_fl_link_text', 'Searchsda'),
(922, 146, '_t_fl_link_text', 'field_58cafb19058e2'),
(923, 146, 't_fl_link_url', '#header'),
(924, 146, '_t_fl_link_url', 'field_58cafbb7058e3'),
(925, 146, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago,France'),
(926, 146, '_t_s_city_select', 'field_58cb8c54d38ce'),
(927, 146, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport,Community'),
(928, 146, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(929, 146, 't_f_form', '33'),
(930, 146, '_t_f_form', 'field_58cfddf47acab'),
(931, 147, 't_fl_link_text', 'Searchsda'),
(932, 147, '_t_fl_link_text', 'field_58cafb19058e2'),
(933, 147, 't_fl_link_url', '#header'),
(934, 147, '_t_fl_link_url', 'field_58cafbb7058e3'),
(935, 147, 't_s_city_select', '-City-,Vilnius,Kaunas,Dubai,London,Berlin,Chicago,France,Barcelona'),
(936, 147, '_t_s_city_select', 'field_58cb8c54d38ce'),
(937, 147, 't_s_activity_select', '-Activity-,Education,Entertainment,Property,Transport,Community'),
(938, 147, '_t_s_activity_select', 'field_58cb8ca8d38cf'),
(939, 147, 't_f_form', '33'),
(940, 147, '_t_f_form', 'field_58cfddf47acab'),
(941, 119, 'field_58d180e5c37dd', 'a:14:{s:3:"key";s:19:"field_58d180e5c37dd";s:5:"label";s:11:"Commentator";s:4:"name";s:16:"p_pc_commentator";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:16:"Commentator name";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58ce9ff0c2dba";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(943, 120, 'p_pc_commentator', 'James'),
(944, 120, '_p_pc_commentator', 'field_58d180e5c37dd'),
(945, 120, 'p_recommended', 'recommended'),
(946, 120, '_p_recommended', 'field_58d16130764cb'),
(948, 149, '_edit_last', '1'),
(949, 149, '_edit_lock', '1490161207:1'),
(950, 150, '_wp_attached_file', '2017/03/dippy-landscape.jpg'),
(951, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1536;s:6:"height";i:864;s:4:"file";s:27:"2017/03/dippy-landscape.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"dippy-landscape-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"dippy-landscape-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"dippy-landscape-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"dippy-landscape-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:27:"dippy-landscape-890x593.jpg";s:5:"width";i:890;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:27:"dippy-landscape-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:27:"dippy-landscape-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:27:"dippy-landscape-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:25:"dippy-landscape-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(952, 149, '_thumbnail_id', '150'),
(953, 149, 'p_city', 'london'),
(954, 149, '_p_city', 'field_58ce9d44de1f4'),
(955, 149, 'p_recommended', 'recommended'),
(956, 149, '_p_recommended', 'field_58d16130764cb'),
(957, 151, '_edit_last', '1'),
(958, 151, '_edit_lock', '1490161212:1'),
(959, 152, '_wp_attached_file', '2017/03/o.jpg'),
(960, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:666;s:4:"file";s:13:"2017/03/o.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:11:"o-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"o-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"o-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:13:"o-890x593.jpg";s:5:"width";i:890;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:13:"o-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:13:"o-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:13:"o-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:11:"o-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(961, 151, '_thumbnail_id', '152'),
(962, 151, 'p_pc_comment_type', 'Entertainment'),
(963, 151, '_p_pc_comment_type', 'field_58ce9ff0c2dba'),
(964, 151, 'p_pc_image', '153'),
(965, 151, '_p_pc_image', 'field_58cea1e6634e5'),
(966, 151, 'p_pc_commentator', 'Bond3000'),
(967, 151, '_p_pc_commentator', 'field_58d180e5c37dd'),
(968, 151, 'p_city', 'london'),
(969, 151, '_p_city', 'field_58ce9d44de1f4'),
(970, 151, 'p_recommended', 'recommended'),
(971, 151, '_p_recommended', 'field_58d16130764cb'),
(972, 153, '_wp_attached_file', '2017/03/no-face-man-29017456-e1490147346180.jpg'),
(973, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:61;s:6:"height";i:67;s:4:"file";s:47:"2017/03/no-face-man-29017456-e1490147346180.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"no-face-man-29017456-e1490147325260-54x60.jpg";s:5:"width";i:54;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"no-face-man-29017456-272x300.jpg";s:5:"width";i:272;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"no-face-man-29017456-768x846.jpg";s:5:"width";i:768;s:6:"height";i:846;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"no-face-man-29017456-929x1024.jpg";s:5:"width";i:929;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:32:"no-face-man-29017456-890x593.jpg";s:5:"width";i:890;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:32:"no-face-man-29017456-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:32:"no-face-man-29017456-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:32:"no-face-man-29017456-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:30:"no-face-man-29017456-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:31:"(c) Tony4urban | Dreamstime.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(974, 119, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:2:"13";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(975, 113, 'p_pc_commentator', 'Jack'),
(976, 113, '_p_pc_commentator', 'field_58d180e5c37dd'),
(977, 153, '_wp_attachment_backup_sizes', 'a:2:{s:14:"thumbnail-orig";a:4:{s:4:"file";s:30:"no-face-man-29017456-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:9:"full-orig";a:3:{s:5:"width";i:1180;s:6:"height";i:1300;s:4:"file";s:24:"no-face-man-29017456.jpg";}}'),
(978, 154, '_wp_attached_file', '2017/03/study_0.jpg'),
(979, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4371;s:6:"height";i:2087;s:4:"file";s:19:"2017/03/study_0.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"study_0-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"study_0-300x143.jpg";s:5:"width";i:300;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"study_0-768x367.jpg";s:5:"width";i:768;s:6:"height";i:367;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"study_0-1024x489.jpg";s:5:"width";i:1024;s:6:"height";i:489;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-large";a:4:{s:4:"file";s:19:"study_0-890x593.jpg";s:5:"width";i:890;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:19:"study_0-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:19:"study_0-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:19:"study_0-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:17:"study_0-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.2";s:6:"credit";s:0:"";s:6:"camera";s:8:"SLT-A65V";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1414450256";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(980, 96, 'p_recommended', ''),
(981, 96, '_p_recommended', 'field_58d16130764cb'),
(982, 155, '_wp_attached_file', '2017/03/house2-big.jpg'),
(983, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:455;s:6:"height";i:120;s:4:"file";s:22:"2017/03/house2-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"house2-big-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"house2-big-300x79.jpg";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:22:"house2-big-210x120.jpg";s:5:"width";i:210;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:20:"house2-big-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 96, '_thumbnail_id', '155'),
(985, 104, '_thumbnail_id', '106'),
(986, 104, 'p_recommended', ''),
(987, 104, '_p_recommended', 'field_58d16130764cb') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(988, 100, 'p_recommended', ''),
(989, 100, '_p_recommended', 'field_58d16130764cb'),
(992, 157, '_wp_attached_file', '2017/03/0D9FD12C00000578-3020383-image-a-2_1427836845930.jpg'),
(993, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:634;s:6:"height";i:548;s:4:"file";s:60:"2017/03/0D9FD12C00000578-3020383-image-a-2_1427836845930.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"0D9FD12C00000578-3020383-image-a-2_1427836845930-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"0D9FD12C00000578-3020383-image-a-2_1427836845930-300x259.jpg";s:5:"width";i:300;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:15:"protfolio-small";a:4:{s:4:"file";s:60:"0D9FD12C00000578-3020383-image-a-2_1427836845930-210x140.jpg";s:5:"width";i:210;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:21:"protfolio-comment-big";a:4:{s:4:"file";s:60:"0D9FD12C00000578-3020383-image-a-2_1427836845930-634x200.jpg";s:5:"width";i:634;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"protfolio-comment";a:4:{s:4:"file";s:60:"0D9FD12C00000578-3020383-image-a-2_1427836845930-455x120.jpg";s:5:"width";i:455;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:16:"protfolio-vsmall";a:4:{s:4:"file";s:58:"0D9FD12C00000578-3020383-image-a-2_1427836845930-61x60.jpg";s:5:"width";i:61;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:8:"© Alamy";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(13, 1, '2017-03-15 12:01:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 12:01:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=13', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-03-15 12:07:40', '2017-03-15 12:07:40', '', 'Posts', '', 'publish', 'closed', 'closed', '', 'reality', '', '', '2017-03-22 02:55:03', '2017-03-22 02:55:03', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-03-15 12:07:40', '2017-03-15 12:07:40', '', 'About', '', 'publish', 'closed', 'closed', '', 'living', '', '', '2017-03-22 02:55:03', '2017-03-22 02:55:03', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2017-03-15 12:07:40', '2017-03-15 12:07:40', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'education', '', '', '2017-03-22 02:55:03', '2017-03-22 02:55:03', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=17', 3, 'nav_menu_item', '', 0),
(22, 1, '2017-03-15 13:43:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-15 13:43:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=22', 0, 'post', '', 0),
(23, 1, '2017-03-15 13:44:46', '2017-03-15 13:44:46', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-03-15 13:44:46', '2017-03-15 13:44:46', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/Logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2017-03-15 13:45:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-15 13:45:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?page_id=24', 0, 'page', '', 0),
(26, 1, '2017-03-15 18:09:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-15 18:09:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-03-15 18:16:00', '2017-03-15 18:16:00', '<h2 class="footer-h2">Suscribe to our newsletter</h2>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-21 19:27:07', '2017-03-21 19:27:07', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?page_id=27', 0, 'page', '', 0),
(28, 1, '2017-03-15 18:16:00', '2017-03-15 18:16:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-15 18:16:00', '2017-03-15 18:16:00', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/2017/03/15/27-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-03-16 18:28:56', '2017-03-16 18:28:56', '<div class="footer-subscribe">\r\n\r\n<div class="mail-icon"></div>\r\n    [email* email-177 class:email1 placeholder "Your email@email.com"]\r\n\r\n   [submit class:footer-a "subscribe"]\r\n\r\n</div>\n1\nduHoot page\n[your-name] <paulius1001@gmail.com>\npaulius1001@gmail.com\nFrom: [your-name] <[email-177]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on duHoot (http://localhost/vcs-2/Paulius-Milaknis)\nReply-To: [email-177]\n\n\n1\n\nduHoot "[your-subject]"\nduHoot <paulius1001@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on duHoot (http://localhost/vcs-2/Paulius-Milaknis)\nReply-To: paulius1001@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nEmail fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-03-21 18:49:14', '2017-03-21 18:49:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=wpcf7_contact_form&#038;p=33', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2017-03-16 18:51:25', '2017-03-16 18:51:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 18:51:25', '2017-03-16 18:51:25', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-03-16 19:15:34', '2017-03-16 19:15:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 19:15:34', '2017-03-16 19:15:34', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-03-16 19:31:18', '2017-03-16 19:31:18', '', 'What are you looking for?', '', 'publish', 'closed', 'closed', '', 'what-are-you-looking-for', '', '', '2017-03-21 19:27:15', '2017-03-21 19:27:15', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?page_id=37', 0, 'page', '', 0),
(38, 1, '2017-03-16 19:31:18', '2017-03-16 19:31:18', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-16 19:31:18', '2017-03-16 19:31:18', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-03-16 19:41:10', '2017-03-16 19:41:10', '', 'Home page sections', '', 'publish', 'closed', 'closed', '', 'acf_home-page-sections', '', '', '2017-03-16 20:26:26', '2017-03-16 20:26:26', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(40, 1, '2017-03-16 19:45:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 19:45:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&p=40', 0, 'acf', '', 0),
(41, 1, '2017-03-16 19:48:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 19:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&p=41', 0, 'acf', '', 0),
(42, 1, '2017-03-16 19:55:27', '2017-03-16 19:55:27', '', 'search-img', '', 'inherit', 'open', 'closed', '', 'search-img', '', '', '2017-03-16 19:55:27', '2017-03-16 19:55:27', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/search-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-03-16 20:26:45', '2017-03-16 20:26:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 20:26:45', '2017-03-16 20:26:45', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-03-16 20:57:27', '2017-03-16 20:57:27', '', 'Future link', '', 'publish', 'closed', 'closed', '', 'acf_future-link', '', '', '2017-03-16 21:44:39', '2017-03-16 21:44:39', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=44', 0, 'acf', '', 0),
(45, 1, '2017-03-16 21:45:40', '2017-03-16 21:45:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 21:45:40', '2017-03-16 21:45:40', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-03-16 21:45:43', '2017-03-16 21:45:43', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-16 21:45:43', '2017-03-16 21:45:43', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-03-16 21:49:56', '2017-03-16 21:49:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 21:49:56', '2017-03-16 21:49:56', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-03-16 21:50:13', '2017-03-16 21:50:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 21:50:13', '2017-03-16 21:50:13', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-03-16 21:50:24', '2017-03-16 21:50:24', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-16 21:50:24', '2017-03-16 21:50:24', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-03-16 22:06:43', '2017-03-16 22:06:43', '', 'Subscribe link', '', 'publish', 'closed', 'closed', '', 'acf_subscribe-link', '', '', '2017-03-16 22:10:53', '2017-03-16 22:10:53', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=50', 0, 'acf', '', 0),
(52, 1, '2017-03-16 22:09:11', '2017-03-16 22:09:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 22:09:11', '2017-03-16 22:09:11', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-03-16 23:05:23', '2017-03-16 23:05:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 23:05:23', '2017-03-16 23:05:23', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-03-16 23:20:38', '2017-03-16 23:20:38', '<h2 class="footer-h2">Suscribe to our newsletter</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2017-03-16 23:20:38', '2017-03-16 23:20:38', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2017-03-16 23:20:51', '2017-03-16 23:20:51', '<h2 class="footer-h2">Suscribe to our newsletter</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-03-16 23:20:51', '2017-03-16 23:20:51', '', 27, 'http://localhost/vcs-2/Paulius-Milaknis/27-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-03-17 07:15:08', '2017-03-17 07:15:08', '', 'Selects', '', 'publish', 'closed', 'closed', '', 'acf_selects', '', '', '2017-03-18 12:14:56', '2017-03-18 12:14:56', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=56', 0, 'acf', '', 0),
(57, 1, '2017-03-17 09:43:26', '2017-03-17 09:43:26', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-17 09:43:26', '2017-03-17 09:43:26', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-03-17 10:37:07', '2017-03-17 10:37:07', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-17 10:37:07', '2017-03-17 10:37:07', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-03-17 10:39:12', '2017-03-17 10:39:12', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-17 10:39:12', '2017-03-17 10:39:12', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-03-17 11:59:35', '2017-03-17 11:59:35', '', 'Recommended', '', 'publish', 'closed', 'closed', '', 'recommended', '', '', '2017-03-21 18:33:17', '2017-03-21 18:33:17', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2017-03-17 11:59:35', '2017-03-17 11:59:35', '', 'Latest', '', 'publish', 'closed', 'closed', '', 'latest', '', '', '2017-03-21 18:33:17', '2017-03-21 18:33:17', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=61', 2, 'nav_menu_item', '', 0),
(68, 1, '2017-03-17 14:18:57', '2017-03-17 14:18:57', '', 'Property', '', 'publish', 'closed', 'closed', '', 'house', '', '', '2017-03-20 10:47:14', '2017-03-20 10:47:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2017-03-17 14:24:21', '2017-03-17 14:24:21', '', 'Community', '', 'publish', 'closed', 'closed', '', 'filter-girl', '', '', '2017-03-20 10:47:14', '2017-03-20 10:47:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2017-03-17 14:24:21', '2017-03-17 14:24:21', '', 'Education', '', 'publish', 'closed', 'closed', '', 'filter-stud', '', '', '2017-03-20 10:47:14', '2017-03-20 10:47:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2017-03-17 14:24:21', '2017-03-17 14:24:21', '', 'Entertainment', '', 'publish', 'closed', 'closed', '', 'filter-note', '', '', '2017-03-20 10:47:14', '2017-03-20 10:47:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2017-03-17 14:24:21', '2017-03-17 14:24:21', '', 'Transport', '', 'publish', 'closed', 'closed', '', 'filter-bus', '', '', '2017-03-20 10:47:14', '2017-03-20 10:47:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=72', 5, 'nav_menu_item', '', 0),
(73, 1, '2017-03-17 14:46:12', '2017-03-17 14:46:12', 'Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'publish', 'closed', 'closed', '', 'what-can-you-duhoot-offer-to-you', '', '', '2017-03-21 19:27:20', '2017-03-21 19:27:20', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?page_id=73', 0, 'page', '', 0),
(74, 1, '2017-03-17 14:46:12', '2017-03-17 14:46:12', '<p>Etiam cursus ipsum quis enim faucibus</p>', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-17 14:46:12', '2017-03-17 14:46:12', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-03-17 14:56:35', '2017-03-17 14:56:35', '<p>Etiam cursus ipsum quis enim faucibus</p>', 'What can you DuHoot offer to you? sadasdhfladskhfkjlasdjghf', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-17 14:56:35', '2017-03-17 14:56:35', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-03-17 14:56:45', '2017-03-17 14:56:45', '<p>Etiam cursus ipsum quis enim faucibus</p>', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-17 14:56:45', '2017-03-17 14:56:45', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-03-17 14:58:03', '2017-03-17 14:58:03', 'Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-17 14:58:03', '2017-03-17 14:58:03', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-03-17 15:14:46', '2017-03-17 15:14:46', '', 'House', '', 'publish', 'closed', 'closed', '', 'house-2', '', '', '2017-03-18 11:38:22', '2017-03-18 11:38:22', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2017-03-17 15:14:46', '2017-03-17 15:14:46', '', 'People', '', 'publish', 'closed', 'closed', '', 'people', '', '', '2017-03-18 11:38:22', '2017-03-18 11:38:22', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=79', 2, 'nav_menu_item', '', 0),
(80, 1, '2017-03-17 15:14:46', '2017-03-17 15:14:46', '', 'Studies', '', 'publish', 'closed', 'closed', '', 'studies', '', '', '2017-03-18 11:38:22', '2017-03-18 11:38:22', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=80', 3, 'nav_menu_item', '', 0),
(81, 1, '2017-03-17 15:14:46', '2017-03-17 15:14:46', '', 'Clubs', '', 'publish', 'closed', 'closed', '', 'clubs', '', '', '2017-03-18 11:38:22', '2017-03-18 11:38:22', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=81', 4, 'nav_menu_item', '', 0),
(82, 1, '2017-03-17 15:14:46', '2017-03-17 15:14:46', '', 'Transport', '', 'publish', 'closed', 'closed', '', 'transport', '', '', '2017-03-18 11:38:22', '2017-03-18 11:38:22', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=82', 5, 'nav_menu_item', '', 0),
(83, 1, '2017-03-17 15:21:40', '0000-00-00 00:00:00', '', '----------', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-17 15:21:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2017-03-18 11:38:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-18 11:38:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&p=84', 0, 'acf', '', 0),
(86, 1, '2017-03-18 11:48:29', '2017-03-18 11:48:29', '', 'Section2', '', 'publish', 'closed', 'closed', '', 'acf_section2', '', '', '2017-03-18 12:17:15', '2017-03-18 12:17:15', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=86', 0, 'acf', '', 0),
(87, 1, '2017-03-18 11:55:23', '2017-03-18 11:55:23', 'Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-18 11:55:23', '2017-03-18 11:55:23', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-03-18 12:10:24', '2017-03-18 12:10:24', 'Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-18 12:10:24', '2017-03-18 12:10:24', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-03-18 12:17:46', '2017-03-18 12:17:46', 'Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-18 12:17:46', '2017-03-18 12:17:46', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-03-18 14:28:28', '2017-03-18 14:28:28', '', 'Post section', '', 'trash', 'open', 'open', '', 'post-section__trashed', '', '', '2017-03-21 07:29:11', '2017-03-21 07:29:11', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=92', 0, 'post', '', 0),
(93, 1, '2017-03-18 14:28:28', '2017-03-18 14:28:28', '', 'Post section', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-03-18 14:28:28', '2017-03-18 14:28:28', '', 92, 'http://localhost/vcs-2/Paulius-Milaknis/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-03-18 14:33:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-18 14:33:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&p=94', 0, 'posts1', '', 0),
(95, 1, '2017-03-18 14:39:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-18 14:39:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&p=95', 0, 'posts1', '', 0),
(96, 1, '2017-03-18 15:19:07', '2017-03-18 15:19:07', '2 bedroom house for rent in Dubai. 2 bedroom house for rent in Dubai. 2 bedroom house for rent in Dubai.', 'House in Dubai', '', 'publish', 'closed', 'closed', '', 'labas-atu-pavyko', '', '', '2017-03-22 05:39:40', '2017-03-22 05:39:40', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=96', 0, 'posts1', '', 0),
(97, 1, '2017-03-18 15:22:10', '2017-03-18 15:22:10', '2 bedroom house for rent in Dubai', 'House in Dubai', '', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2017-03-18 15:22:10', '2017-03-18 15:22:10', '', 96, 'http://localhost/vcs-2/Paulius-Milaknis/96-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2017-03-18 19:52:16', '2017-03-18 19:52:16', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai', '', 'publish', 'closed', 'closed', '', 'antras-postas-education', '', '', '2017-03-22 05:06:36', '2017-03-22 05:06:36', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=99', 0, 'posts1', '', 0),
(100, 1, '2017-03-18 19:52:34', '2017-03-18 19:52:34', 'Tai, kas prasidėjo pamažu, bet užtikrintai, žaibišku greičiu įgavo pagreitį visomis prasmėmis: vis aukščiau keliama kokybės kartelė sau, vis maloniau muzikinėmis staigmenomis stebinami lankytojai ir kaskart garsiau nuaidinčios originalios vakarėlių idėjos. „Mojo Lounge“ veikla nuo pat atidarymo dienos žymima prabangiu pliuso ženklu.', 'Mojo Lounge Vilnius', '', 'publish', 'closed', 'closed', '', 'trecias-postas-entertain', '', '', '2017-03-22 05:42:16', '2017-03-22 05:42:16', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=100', 0, 'posts1', '', 0),
(101, 1, '2017-03-18 19:52:52', '2017-03-18 19:52:52', 'World Community Grid enables anyone with a computer, smartphone or tablet to donate their unused computing power to advance cutting-edge scientific research on topics related to health.', 'World community grid', '', 'publish', 'closed', 'closed', '', 'ketvirtas-property', '', '', '2017-03-21 17:26:42', '2017-03-21 17:26:42', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=101', 0, 'posts1', '', 0),
(102, 1, '2017-03-18 19:53:10', '2017-03-18 19:53:10', 'Information about public transportation and parking. Includes timetables of Vilnius buses and trolleybuses.', 'Vilnius transport', '', 'publish', 'closed', 'closed', '', 'penktas-transport', '', '', '2017-03-21 09:54:37', '2017-03-21 09:54:37', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=102', 0, 'posts1', '', 0),
(103, 1, '2017-03-18 19:53:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-18 19:53:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&p=103', 0, 'posts1', '', 0),
(104, 1, '2017-03-18 19:56:17', '2017-03-18 19:56:17', 'House in Dubai center. House in Dubai center. House in Dubai center. House in Dubai center', 'House in Dubai center', '', 'publish', 'closed', 'closed', '', 'hausas', '', '', '2017-03-22 05:40:13', '2017-03-22 05:40:13', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=104', 0, 'posts1', '', 0),
(105, 1, '2017-03-19 10:33:36', '2017-03-19 10:33:36', '', 'study', '', 'inherit', 'open', 'closed', '', 'study', '', '', '2017-03-19 10:33:36', '2017-03-19 10:33:36', '', 99, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/study.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-03-19 10:34:36', '2017-03-19 10:34:36', '', 'living picture', '', 'inherit', 'open', 'closed', '', 'living-picture', '', '', '2017-03-19 10:34:36', '2017-03-19 10:34:36', '', 96, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/living-picture.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-03-19 10:38:49', '2017-03-19 10:38:49', 'World Community Grid enables anyone with a computer, smartphone or tablet to donate their unused computing power to advance cutting-edge scientific research on topics related to health, poverty and sustainability. Through the contributions of over 650,000 individuals and 460 organizations, World Community Grid has supported 28 research projects to date, including searches for more effective treatments for cancer, HIV/AIDS and neglected tropical diseases. Other projects are looking for low-cost water filtration systems and new materials for capturing solar energy efficiently. ', 'world community grid', '', 'inherit', 'closed', 'closed', '', '101-autosave-v1', '', '', '2017-03-19 10:38:49', '2017-03-19 10:38:49', '', 101, 'http://localhost/vcs-2/Paulius-Milaknis/101-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2017-03-19 10:39:37', '2017-03-19 10:39:37', '', 'innovasocial_world-community-grid-ordenadores-voluntarios1', '', 'inherit', 'open', 'closed', '', 'innovasocial_world-community-grid-ordenadores-voluntarios1', '', '', '2017-03-19 10:39:37', '2017-03-19 10:39:37', '', 101, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/innovasocial_world-community-grid-ordenadores-voluntarios1.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2017-03-19 10:41:06', '2017-03-19 10:41:06', '', 'Vilnius transport', '', 'inherit', 'closed', 'closed', '', '102-autosave-v1', '', '', '2017-03-19 10:41:06', '2017-03-19 10:41:06', '', 102, 'http://localhost/vcs-2/Paulius-Milaknis/102-autosave-v1/', 0, 'revision', '', 0),
(110, 1, '2017-03-19 10:42:33', '2017-03-19 10:42:33', '', 'viesasis-transportas-70384624', '', 'inherit', 'open', 'closed', '', 'viesasis-transportas-70384624', '', '', '2017-03-19 10:42:33', '2017-03-19 10:42:33', '', 102, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/viesasis-transportas-70384624.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-03-19 10:44:46', '2017-03-19 10:44:46', 'A gorgeous place, decked out in style without ever going over-the-top, with a powerful sound system, sumptuous lighting and sexy patrons. Mojo Lounge hosts loads of regular parties, wild nights and live events and attracts a varied, affluent crowd. It\'s the kind of club where you don\'t have to worry about feeling too old, or too young. Top music, and the service is good too (it doesn\'t take all night to get a drink). A winner!', 'Mojo Lounge Vilnius', '', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2017-03-19 10:44:46', '2017-03-19 10:44:46', '', 100, 'http://localhost/vcs-2/Paulius-Milaknis/100-autosave-v1/', 0, 'revision', '', 0),
(112, 1, '2017-03-19 10:44:50', '2017-03-19 10:44:50', '', 'mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1', '', 'inherit', 'open', 'closed', '', 'mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai-lt_1', '', '', '2017-03-19 10:44:50', '2017-03-19 10:44:50', '', 100, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/mojo_lounge_vilnius_naktinis_klubas_kokteiliu_baras_naktiniaiklubai.lt_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-03-19 11:59:06', '2017-03-19 11:59:06', 'World Community Grid enables anyone with a computer, smartphone or tablet to donate their unused computing power to advance cutting-edge scientific research on topics related to health, poverty and sustainability. Through the contributions of over 650,000 individuals and 460 organizations, World C', 'Comment', '', 'publish', 'closed', 'closed', '', 'coment', '', '', '2017-03-22 01:45:53', '2017-03-22 01:45:53', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=113', 0, 'posts1', '', 0),
(114, 1, '2017-03-19 11:59:57', '2017-03-19 11:59:57', '', 'Club', '', 'inherit', 'open', 'closed', '', 'club', '', '', '2017-03-19 11:59:57', '2017-03-19 11:59:57', '', 113, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/Club.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-03-19 12:34:28', '2017-03-19 12:34:28', '', 'face', '', 'inherit', 'open', 'closed', '', 'face', '', '', '2017-03-19 12:34:28', '2017-03-19 12:34:28', '', 113, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/face.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2017-03-19 13:14:08', '2017-03-19 13:14:08', 'World Community Grid enables anyone with a computer, smartphone or tablet to donate their unused computing power to advance cutting-edge scientific research on topics related to health, poverty and sustainability. Through the contributions of over 650,000 individuals and 460 organizations, World Community Grid has supported 28 research projects to date, including searches for more effective treatments for cancer, HIV/AIDS and neglected tropical diseases. Other projects are looking for low-cost water filtration systems and new materials for capturing solar energy efficiently. ', 'Comment', '', 'inherit', 'closed', 'closed', '', '113-autosave-v1', '', '', '2017-03-19 13:14:08', '2017-03-19 13:14:08', '', 113, 'http://localhost/vcs-2/Paulius-Milaknis/113-autosave-v1/', 0, 'revision', '', 0),
(118, 1, '2017-03-19 15:03:51', '2017-03-19 15:03:51', '', 'Posts', '', 'publish', 'closed', 'closed', '', 'acf_posts', '', '', '2017-03-21 18:11:51', '2017-03-21 18:11:51', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=118', 0, 'acf', '', 0),
(119, 1, '2017-03-19 15:14:04', '2017-03-19 15:14:04', '', 'Post comment', '', 'publish', 'closed', 'closed', '', 'acf_post-comment', '', '', '2017-03-22 01:45:27', '2017-03-22 01:45:27', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=119', 0, 'acf', '', 0),
(120, 1, '2017-03-19 15:57:08', '2017-03-19 15:57:08', 'Hi everyone,\r\n\r\nA Berlin clubbing institution now in its sixth venue in 15 years, Cookies offers the best of underground house and disco in its central room, plus a more varied playlist, from indie to hip-hop, in its smaller second room.\r\n\r\n&nbsp;', 'Clubs in Berlin', '', 'publish', 'closed', 'closed', '', 'jono-komentaras', '', '', '2017-03-22 05:53:42', '2017-03-22 05:53:42', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=120', 0, 'posts1', '', 0),
(121, 1, '2017-03-19 21:05:39', '2017-03-19 21:05:39', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-19 21:05:39', '2017-03-19 21:05:39', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2017-03-20 07:42:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 07:42:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&p=122', 0, 'posts1', '', 0),
(123, 1, '2017-03-20 14:01:35', '2017-03-20 14:01:35', '', 'Form', '', 'publish', 'closed', 'closed', '', 'acf_form', '', '', '2017-03-20 14:01:35', '2017-03-20 14:01:35', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=123', 0, 'acf', '', 0),
(124, 1, '2017-03-20 18:46:36', '2017-03-20 18:46:36', '', 'Filter info', '', 'publish', 'closed', 'closed', '', 'acf_filter-info', '', '', '2017-03-20 18:47:32', '2017-03-20 18:47:32', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&#038;p=124', 0, 'acf', '', 0),
(125, 1, '2017-03-20 18:51:16', '2017-03-20 18:51:16', 'Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-20 18:51:16', '2017-03-20 18:51:16', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2017-03-20 19:01:31', '2017-03-20 19:01:31', 'Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus.Etiam cursus ipsum quis enim faucibus', 'What can you DuHoot offer to you?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-20 19:01:31', '2017-03-20 19:01:31', '', 73, 'http://localhost/vcs-2/Paulius-Milaknis/73-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-03-21 07:29:50', '2017-03-21 07:29:50', '', 'Footer contacts', '', 'publish', 'open', 'open', '', 'footer-contacts', '', '', '2017-03-21 07:29:50', '2017-03-21 07:29:50', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?p=127', 0, 'post', '', 0),
(128, 1, '2017-03-21 07:29:50', '2017-03-21 07:29:50', '', 'Footer contacts', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2017-03-21 07:29:50', '2017-03-21 07:29:50', '', 127, 'http://localhost/vcs-2/Paulius-Milaknis/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2017-03-21 07:33:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 07:33:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&p=129', 0, 'acf', '', 0),
(130, 1, '2017-03-21 07:34:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 07:34:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=acf&p=130', 0, 'acf', '', 0),
(131, 1, '2017-03-21 08:12:51', '2017-03-21 08:12:51', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 08:12:51', '2017-03-21 08:12:51', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2017-03-21 09:47:56', '2017-03-21 09:47:56', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 09:47:56', '2017-03-21 09:47:56', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-03-21 09:58:23', '2017-03-21 09:58:23', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 09:58:23', '2017-03-21 09:58:23', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2017-03-21 10:42:54', '2017-03-21 10:42:54', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 10:42:54', '2017-03-21 10:42:54', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2017-03-21 12:39:04', '2017-03-21 12:39:04', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 12:39:04', '2017-03-21 12:39:04', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(136, 1, '2017-03-21 13:00:56', '2017-03-21 13:00:56', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 1', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-1', '', '', '2017-03-22 05:07:10', '2017-03-22 05:07:10', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=136', 0, 'posts1', '', 0),
(137, 1, '2017-03-21 13:01:19', '2017-03-21 13:01:19', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 2', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-2', '', '', '2017-03-22 05:07:47', '2017-03-22 05:07:47', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=137', 0, 'posts1', '', 0),
(138, 1, '2017-03-21 13:01:35', '2017-03-21 13:01:35', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 3', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-3', '', '', '2017-03-22 05:08:00', '2017-03-22 05:08:00', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=138', 0, 'posts1', '', 0),
(139, 1, '2017-03-21 13:02:02', '2017-03-21 13:02:02', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 8', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-8', '', '', '2017-03-22 05:08:12', '2017-03-22 05:08:12', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=139', 0, 'posts1', '', 0),
(140, 1, '2017-03-21 13:02:25', '2017-03-21 13:02:25', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 9', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-9', '', '', '2017-03-22 05:08:25', '2017-03-22 05:08:25', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=140', 0, 'posts1', '', 0),
(141, 1, '2017-03-21 13:03:08', '2017-03-21 13:03:08', 'Primiršote kadaise gerai mokėtą anglų kalbą? O gal niekada jos nesimokėte, bet turite svajonę susikalbėti angliškai? Užsienio kalbos mokėjimas atveria daugiau galimybių ir leidžia išvengti nepatogių situacijų. Kursų metu simuliacijos sukurs palankią kalbinę atmosferą, o praktiniai užsiėmimai vyks tarsi pokalbiai realiose situacijose.', 'Anglu kalbos kursai 11', '', 'publish', 'closed', 'closed', '', 'anglu-kalbos-kursai-11', '', '', '2017-03-22 05:07:25', '2017-03-22 05:07:25', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=141', 0, 'posts1', '', 0),
(142, 1, '2017-03-21 18:01:11', '2017-03-21 18:01:11', '', 'upload78D8la', '', 'inherit', 'open', 'closed', '', 'upload78d8la', '', '', '2017-03-21 18:01:11', '2017-03-21 18:01:11', '', 136, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/upload78D8la.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-03-21 18:09:52', '2017-03-21 18:09:52', 'The Eiffel Tower is a wrought iron lattice tower on the Champ de Mars in Paris, France.', 'Eiffel tower', '', 'publish', 'closed', 'closed', '', 'eifelio-tower', '', '', '2017-03-22 05:09:14', '2017-03-22 05:09:14', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=143', 0, 'posts1', '', 0),
(145, 1, '2017-03-21 18:14:37', '2017-03-21 18:14:37', '', 'tumblr_mg5yb5Vz971ro7jdfo1_500', '', 'inherit', 'open', 'closed', '', 'tumblr_mg5yb5vz971ro7jdfo1_500', '', '', '2017-03-21 18:14:37', '2017-03-21 18:14:37', '', 143, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/tumblr_mg5yb5Vz971ro7jdfo1_500.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2017-03-21 18:17:00', '2017-03-21 18:17:00', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 18:17:00', '2017-03-21 18:17:00', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2017-03-21 18:19:18', '2017-03-21 18:19:18', '', 'What are you looking for?', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-21 18:19:18', '2017-03-21 18:19:18', '', 37, 'http://localhost/vcs-2/Paulius-Milaknis/37-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2017-03-22 05:52:38', '2017-03-22 05:52:38', 'Hi everyone,\n\nA Berlin clubbing institution now in its sixth venue in 15 years, Cookies offers the best of underground house and disco in its central room, plus a more varied playlist, from indie to hip-hop, in its smaller second room.\n\n&nbsp;', 'Clubs in Berlin', '', 'inherit', 'closed', 'closed', '', '120-autosave-v1', '', '', '2017-03-22 05:52:38', '2017-03-22 05:52:38', '', 120, 'http://localhost/vcs-2/Paulius-Milaknis/120-autosave-v1/', 0, 'revision', '', 0),
(149, 1, '2017-03-22 01:34:12', '2017-03-22 01:34:12', 'Find out how to visit the dinosaurs, get here, see exhibitions, galleries, what\'s on, buy tickets, and find our cafés and shops.', 'Natural History Museum', '', 'publish', 'closed', 'closed', '', 'natural-history-museum', '', '', '2017-03-22 05:42:26', '2017-03-22 05:42:26', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=149', 0, 'posts1', '', 0),
(150, 1, '2017-03-22 01:33:55', '2017-03-22 01:33:55', '', 'dippy-landscape', '', 'inherit', 'open', 'closed', '', 'dippy-landscape', '', '', '2017-03-22 01:33:55', '2017-03-22 01:33:55', '', 149, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/dippy-landscape.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2017-03-22 01:37:57', '2017-03-22 01:37:57', 'I really enjoyed visiting The British Museum on my trip to London. I arrived about 20 minutes before the exhibits opened and was able to enjoy a coffee in the center courtyard.', 'The British Museum', '', 'publish', 'closed', 'closed', '', 'the-british-museum', '', '', '2017-03-22 05:42:35', '2017-03-22 05:42:35', '', 0, 'http://localhost/vcs-2/Paulius-Milaknis/?post_type=posts1&#038;p=151', 0, 'posts1', '', 0),
(152, 1, '2017-03-22 01:36:47', '2017-03-22 01:36:47', '', 'o', '', 'inherit', 'open', 'closed', '', 'o', '', '', '2017-03-22 01:36:47', '2017-03-22 01:36:47', '', 151, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/o.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2017-03-22 01:39:42', '2017-03-22 01:39:42', '', 'no-face-man-29017456', '', 'inherit', 'open', 'closed', '', 'no-face-man-29017456', '', '', '2017-03-22 01:39:42', '2017-03-22 01:39:42', '', 151, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/no-face-man-29017456.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2017-03-22 05:06:27', '2017-03-22 05:06:27', '', 'study_0', '', 'inherit', 'open', 'closed', '', 'study_0', '', '', '2017-03-22 05:06:27', '2017-03-22 05:06:27', '', 99, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/study_0.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2017-03-22 05:20:14', '2017-03-22 05:20:14', '', 'house2-big', '', 'inherit', 'open', 'closed', '', 'house2-big', '', '', '2017-03-22 05:20:14', '2017-03-22 05:20:14', '', 96, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/house2-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-03-22 05:53:36', '2017-03-22 05:53:36', '', '0D9FD12C00000578-3020383-image-a-2_1427836845930', '', 'inherit', 'open', 'closed', '', '0d9fd12c00000578-3020383-image-a-2_1427836845930', '', '', '2017-03-22 05:53:36', '2017-03-22 05:53:36', '', 120, 'http://localhost/vcs-2/Paulius-Milaknis/wp-content/uploads/2017/03/0D9FD12C00000578-3020383-image-a-2_1427836845930.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(60, 5, 0),
(61, 5, 0),
(68, 6, 0),
(69, 6, 0),
(70, 6, 0),
(71, 6, 0),
(72, 6, 0),
(78, 7, 0),
(79, 7, 0),
(80, 7, 0),
(81, 7, 0),
(82, 7, 0),
(92, 1, 0),
(96, 8, 0),
(99, 11, 0),
(100, 12, 0),
(101, 9, 0),
(102, 10, 0),
(104, 8, 0),
(113, 13, 0),
(120, 13, 0),
(127, 1, 0),
(136, 11, 0),
(137, 11, 0),
(138, 11, 0),
(139, 11, 0),
(140, 11, 0),
(141, 11, 0),
(143, 12, 0),
(149, 12, 0),
(151, 13, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 7),
(12, 12, 'category', '', 0, 3),
(13, 13, 'category', '', 0, 3) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main Navigation', 'main-navigation', 0, 0),
(5, 'Filter nav', 'filter-nav', 0, 0),
(6, 'Filter nav 2', 'filter-nav-2', 0, 0),
(7, 'Offer nav', 'offer-nav', 0, 0),
(8, 'Property', 'property', 0, 0),
(9, 'Community', 'community', 0, 0),
(10, 'Transport', 'transport', 0, 0),
(11, 'Education', 'education', 0, 0),
(12, 'Entertainment', 'entertainment', 0, 0),
(13, 'Comment', 'comment', 0, 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:2:{s:64:"dc77485ec2dc4490b118efe8620d9a308e88162226fe7f21e531ec444e3e0149";a:4:{s:10:"expiration";i:1490211728;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490038928;}s:64:"befed8d4616302348b7a80a5c47a771505d948ebbec83ab72823a30ca0f87d13";a:4:{s:10:"expiration";i:1490253612;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490080812;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '22'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1490131797'),
(23, 1, 'closedpostboxes_page', 'a:1:{i:0;s:7:"acf_124";}'),
(24, 1, 'metaboxhidden_page', 'a:11:{i:0;s:6:"acf_44";i:1;s:6:"acf_56";i:2;s:6:"acf_50";i:3;s:7:"acf_118";i:4;s:7:"acf_119";i:5;s:10:"postcustom";i:6;s:6:"acf_39";i:7;s:16:"commentstatusdiv";i:8;s:11:"commentsdiv";i:9;s:7:"slugdiv";i:10;s:9:"authordiv";}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:57:"submitdiv,pageparentdiv,postimagediv,acf_44,acf_56,acf_50";s:6:"normal";s:84:"revisionsdiv,postcustom,acf_85,acf_39,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, '_yoast_wpseo_profile_updated', '1489737867'),
(28, 1, 'wpseo_title', ''),
(29, 1, 'wpseo_metadesc', ''),
(30, 1, 'wpseo_metakey', ''),
(31, 1, 'wpseo_excludeauthorsitemap', ''),
(32, 1, 'wpseo_content_analysis_disable', ''),
(33, 1, 'wpseo_keyword_analysis_disable', ''),
(34, 1, 'googleplus', ''),
(35, 1, 'twitter', ''),
(36, 1, 'facebook', ''),
(37, 1, 'closedpostboxes_acf', 'a:0:{}'),
(38, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(39, 1, 'closedpostboxes_posts1', 'a:0:{}'),
(40, 1, 'metaboxhidden_posts1', 'a:6:{i:0;s:6:"acf_44";i:1;s:6:"acf_39";i:2;s:6:"acf_86";i:3;s:6:"acf_56";i:4;s:6:"acf_50";i:5;s:7:"slugdiv";}'),
(41, 1, 'meta-box-order_posts1', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:41:"submitdiv,categorydiv,acf_44,postimagediv";s:6:"normal";s:51:"acf_39,acf_119,acf_118,acf_86,acf_56,acf_50,slugdiv";s:8:"advanced";s:0:"";}'),
(42, 1, 'screen_layout_posts1', '2'),
(43, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:"4.7";}'),
(44, 1, 'closedpostboxes_post', 'a:3:{i:0;s:11:"categorydiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:12:"postimagediv";}'),
(45, 1, 'metaboxhidden_post', 'a:15:{i:0;s:7:"acf_124";i:1;s:7:"acf_123";i:2;s:6:"acf_44";i:3;s:7:"acf_118";i:4;s:6:"acf_39";i:5;s:7:"acf_119";i:6;s:6:"acf_86";i:7;s:6:"acf_56";i:8;s:6:"acf_50";i:9;s:11:"postexcerpt";i:10;s:13:"trackbacksdiv";i:11;s:10:"postcustom";i:12;s:16:"commentstatusdiv";i:13;s:7:"slugdiv";i:14;s:9:"authordiv";}'),
(46, 1, 'edit_posts1_per_page', '20') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B50mlq3gjXqB8w7/mRIlUrZ/zM6hxS1', 'admin', 'paulius1001@gmail.com', '', '2017-03-03 09:42:05', '1489410939:$P$BdUQSGQR5SmKc5srBPyYSauoNXhP5u.', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

