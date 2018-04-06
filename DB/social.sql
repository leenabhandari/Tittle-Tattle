-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 07:28 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `des` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `des`) VALUES
(2, 'i agree'),
(5, 'publicity stunt'),
(9, 'yes .. a lot of info anout it is available on the internet.'),
(12, 'okay'),
(11, 'hmm'),
(15, 'tvv');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `subject` longtext NOT NULL,
  `description` longtext NOT NULL,
  `agree` int(11) NOT NULL DEFAULT '0',
  `disagree` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `name`, `subject`, `description`, `agree`, `disagree`) VALUES
(14, 't', 'i dont know', 'what are you talking about?', 0, 0),
(15, 'g', 'wait hold no', 'what are you saying', 2, 1),
(16, 'aaa', 'let us see', 'what', 0, 0),
(13, 'kk', 'yy', 'hfhf', 0, 0),
(11, 'xyz', 'Adulterated sweets', '70 quintal of adulterated sweets found in Ludhiana', 1, 1),
(12, 'xyz', 'demo', 'testing...', 5, 2),
(9, 'lmn', 'Adulteration of Pulses ', 'Pulses from Malakangri contain Chakunda beans in them which are toxic.', 3, 1),
(8, 'abc', 'Milk aduleration', 'milk bought from XYZ shop is not pure and contains mostly water.', 2, 1),
(10, 'kk', 'Adulteration of Rice', 'Plastic rice found in Cuttack markets.', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-25 06:51:10', '2018-03-25 06:51:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Tittle-Tattle', 'yes'),
(4, 'blogdescription', 'An attempt to eradicate fake news.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leenaleece@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:71:"C:\\wamp64\\www\\wordpress/wp-content/themes/twentyseventeen/functions.php";i:1;s:67:"C:\\wamp64\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '35', 'yes'),
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
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:8:{i:0;s:7:"pages-3";i:1;s:10:"archives-2";i:2;s:6:"meta-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:14:"recent-posts-2";}s:9:"sidebar-1";a:4:{i:0;s:8:"search-2";i:1;s:10:"calendar-3";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(101, 'widget_calendar', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'nonce_key', 'K6^}=: KjR<BPrM+TGCf%M[R%E#.W^?COnfZXmnNchM;a~mHwQD{9:q7C01bR~F!', 'no'),
(107, 'nonce_salt', 'nQ`KUnF!Eq# } 1RS@yGi+ a)YJ`oQbpF}8bC7GwOAn1mK!m&N-@z1$G|a6Wi~)/', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1522911071;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1522911586;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522912219;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1522912610;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:5:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}s:16:"header_textcolor";s:6:"000000";s:11:"colorscheme";s:5:"light";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521966609;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:8:"search-2";i:1;s:10:"calendar-3";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(123, 'auth_key', 'x.FJB{L^{s=@LfwK8T_9`qh`d|Myw:=xl5wY3yVRI6]Z;H/Nzh,a~aYCp^l`{X:/', 'no'),
(116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip";}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1522908596;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(125, 'logged_in_key', '(UW xeE]yO.#5FV2s@J^UHTQmlwUr:DPTl6o:>wAJ@KTENw!>-~22HF/XvGO=g7d', 'no'),
(231, '_site_transient_timeout_theme_roots', '1522910403', 'no'),
(232, '_site_transient_theme_roots', 'a:4:{s:6:"sydney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(234, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1522908617;s:7:"checked";a:4:{s:6:"sydney";s:4:"1.45";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no'),
(235, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1522908619;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(124, 'auth_salt', '_x35g3EtRPD@*:@,+t&Z<|-Rg<Qac]d0% 8?^ti+2^Z@Fw$FwAsGby|#gwibT?~b', 'no'),
(126, 'logged_in_salt', 'B3o~Rz(0YK;N3U!6&Mr_a#1#lMOK2%>X]9h4)jR[0rPv<,bj-e+f =AFDxRe`jS@', 'no'),
(222, '_transient_sydney_categories', '1', 'yes'),
(152, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(221, '_transient_is_multi_author', '0', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'current_theme', 'Sydney', 'yes'),
(174, 'theme_mods_sydney', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521966663;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:8:{i:0;s:7:"pages-3";i:1;s:10:"archives-2";i:2;s:6:"meta-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:14:"recent-posts-2";}s:9:"sidebar-1";a:4:{i:0;s:8:"search-2";i:1;s:10:"calendar-3";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}s:9:"site_logo";s:0:"";s:14:"slider_title_1";s:8:"Welcome!";s:17:"slider_subtitle_2";s:42:"To work for the betterment of the society?";s:14:"slider_image_3";s:114:"http://localhost/wordpress/wp-content/uploads/2018/03/man_reading_newspaper_151909898-56a9fe073df78cf772abf2de.jpg";s:14:"slider_title_3";s:17:"Process is simple";s:17:"slider_subtitle_3";s:33:"Post a news and wait for a reply.";s:11:"blog_layout";s:9:"fullwidth";s:16:"fullwidth_single";i:1;s:17:"full_content_home";i:1;s:25:"footer_widgets_background";s:7:"#020202";s:20:"footer_widgets_color";s:7:"#020202";s:17:"footer_background";s:7:"#020202";s:12:"footer_color";s:7:"#020202";}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(177, 'theme_mods_mesmerize', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:20:"theme_default_preset";i:2;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521966683;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:8:{i:0;s:7:"pages-3";i:1;s:10:"archives-2";i:2;s:6:"meta-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:14:"recent-posts-2";}s:9:"sidebar-1";a:4:{i:0;s:8:"search-2";i:1;s:10:"calendar-3";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";}s:23:"mesmerize_pages_sidebar";a:0:{}s:17:"first_box_widgets";a:0:{}s:18:"second_box_widgets";a:0:{}s:17:"third_box_widgets";a:0:{}}}}', 'yes'),
(201, '_site_transient_timeout_browser_f27a70fef65ab50236291e1635e268f3', '1523386048', 'no'),
(202, '_site_transient_browser_f27a70fef65ab50236291e1635e268f3', 'a:10:{s:4:"name";s:17:"Internet Explorer";s:7:"version";s:4:"11.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:74:"https://support.microsoft.com/en-us/help/17621/internet-explorer-downloads";s:7:"img_src";s:39:"http://s.w.org/images/browsers/ie.png?1";s:11:"img_src_ssl";s:40:"https://s.w.org/images/browsers/ie.png?1";s:15:"current_version";s:2:"11";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(225, 'WPLANG', '', 'yes'),
(226, 'new_admin_email', 'leenaleece@gmail.com', 'yes'),
(236, 'auto_core_update_failed', 'a:6:{s:9:"attempted";s:5:"4.9.5";s:7:"current";s:5:"4.9.4";s:10:"error_code";s:15:"download_failed";s:10:"error_data";s:60:"cURL error 28: Connection timed out after 10015 milliseconds";s:9:"timestamp";i:1522908619;s:5:"retry";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(116, 1, '_wp_page_template', 'default'),
(115, 1, '_edit_last', '1'),
(114, 1, '_edit_lock', '1522781908:1'),
(28, 13, '_edit_last', '1'),
(29, 13, '_wp_page_template', 'templatename.php'),
(30, 13, '_edit_lock', '1521962114:1'),
(31, 15, '_edit_last', '1'),
(32, 15, '_wp_page_template', 'default'),
(33, 15, '_edit_lock', '1521962494:1'),
(35, 13, '_wp_trash_meta_status', 'publish'),
(36, 13, '_wp_trash_meta_time', '1521962529'),
(37, 13, '_wp_desired_post_slug', '13-2'),
(38, 2, '_edit_lock', '1521962620:1'),
(39, 2, '_edit_last', '1'),
(40, 20, '_edit_last', '1'),
(41, 20, '_edit_lock', '1521972521:1'),
(42, 20, '_wp_page_template', 'default'),
(43, 23, '_menu_item_type', 'post_type'),
(44, 23, '_menu_item_menu_item_parent', '0'),
(45, 23, '_menu_item_object_id', '20'),
(46, 23, '_menu_item_object', 'page'),
(47, 23, '_menu_item_target', ''),
(48, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 23, '_menu_item_xfn', ''),
(50, 23, '_menu_item_url', ''),
(51, 24, '_menu_item_type', 'custom'),
(52, 24, '_menu_item_menu_item_parent', '0'),
(53, 24, '_menu_item_object_id', '24'),
(54, 24, '_menu_item_object', 'custom'),
(55, 24, '_menu_item_target', ''),
(56, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 24, '_menu_item_xfn', ''),
(58, 24, '_menu_item_url', 'http://localhost/wordpress'),
(59, 22, '_wp_trash_meta_status', 'publish'),
(60, 22, '_wp_trash_meta_time', '1521962891'),
(61, 25, '_edit_last', '1'),
(62, 25, '_wp_page_template', 'default'),
(63, 25, '_edit_lock', '1521963013:1'),
(111, 39, '_wp_trash_meta_time', '1521972852'),
(110, 39, '_wp_trash_meta_status', 'publish'),
(109, 39, '_edit_lock', '1521972832:1'),
(108, 15, '_wp_desired_post_slug', 'this'),
(107, 15, '_wp_trash_meta_time', '1521972640'),
(106, 15, '_wp_trash_meta_status', 'publish'),
(72, 27, '_wp_trash_meta_status', 'publish'),
(73, 27, '_wp_trash_meta_time', '1521963203'),
(89, 32, '_wp_trash_meta_time', '1521963812'),
(88, 32, '_wp_trash_meta_status', 'publish'),
(87, 32, '_edit_lock', '1521963791:1'),
(86, 31, '_wp_trash_meta_time', '1521963709'),
(85, 31, '_wp_trash_meta_status', 'publish'),
(82, 29, '_wp_trash_meta_status', 'publish'),
(83, 29, '_wp_trash_meta_time', '1521963550'),
(84, 31, '_edit_lock', '1521963683:1'),
(90, 33, '_edit_lock', '1521972135:1'),
(91, 34, '_wp_attached_file', '2018/03/beats.png'),
(92, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:17:"2018/03/beats.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"beats-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"beats-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"beats-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:17:"beats-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:17:"beats-230x230.png";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:17:"beats-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:17:"beats-480x480.png";s:5:"width";i:480;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 35, '_wp_attached_file', '2018/03/cropped-beats.png'),
(94, 35, '_wp_attachment_context', 'site-icon'),
(95, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:25:"2018/03/cropped-beats.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"cropped-beats-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"cropped-beats-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:25:"cropped-beats-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:25:"cropped-beats-230x230.png";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:25:"cropped-beats-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:25:"cropped-beats-480x480.png";s:5:"width";i:480;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:25:"cropped-beats-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:25:"cropped-beats-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:25:"cropped-beats-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:23:"cropped-beats-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 33, '_wp_trash_meta_status', 'publish'),
(97, 33, '_wp_trash_meta_time', '1521972138'),
(98, 36, '_edit_lock', '1521972531:1'),
(99, 37, '_wp_attached_file', '2018/03/man_reading_newspaper_151909898-56a9fe073df78cf772abf2de.jpg'),
(100, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:854;s:4:"file";s:68:"2018/03/man_reading_newspaper_151909898-56a9fe073df78cf772abf2de.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:69:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-830x554.jpg";s:5:"width";i:830;s:6:"height";i:554;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-230x153.jpg";s:5:"width";i:230;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-350x234.jpg";s:5:"width";i:350;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:68:"man_reading_newspaper_151909898-56a9fe073df78cf772abf2de-480x320.jpg";s:5:"width";i:480;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 36, '_wp_trash_meta_status', 'publish'),
(102, 36, '_wp_trash_meta_time', '1521972542'),
(103, 25, '_wp_trash_meta_status', 'publish'),
(104, 25, '_wp_trash_meta_time', '1521972570'),
(105, 25, '_wp_desired_post_slug', 'ok'),
(112, 40, '_wp_trash_meta_status', 'publish'),
(113, 40, '_wp_trash_meta_time', '1521972946');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-25 06:51:10', '2018-03-25 06:51:10', 'Welcome to Tittle-Tattle!\r\n\r\nThe ultimate platform to confirm if what you know is actually true. Or at least, check how genuine the news is.\r\n\r\nGuidelines-\r\n<ol>\r\n 	<li>Open Myspace page.</li>\r\n 	<li>Sign-up.</li>\r\n 	<li>Login.</li>\r\n 	<li>Post.</li>\r\n 	<li>Check the post regularly.</li>\r\n 	<li>You can view other posts and express your opinion also.</li>\r\n</ol>', 'Instructions', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-03 18:58:26', '2018-04-03 18:58:26', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-25 06:51:10', '2018-03-25 06:51:10', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-25 07:25:03', '2018-03-25 07:25:03', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(41, 1, '2018-04-03 18:47:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-03 18:47:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=41', 0, 'post', '', 0),
(42, 1, '2018-04-03 18:56:49', '2018-04-03 18:56:49', 'Welcome to Tittle-Tattle!\n\nThe ultimate platform to confirm if what you know is actually true. Or at least, check how genuine the news is.\n\nGuidelines-\n<ol>\n 	<li>=dcdc</li>\n 	<li>Register.</li>\n 	<li>Login.</li>\n</ol>', 'Instructions', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-04-03 18:56:49', '2018-04-03 18:56:49', '', 1, 'http://localhost/wordpress/2018/04/03/1-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-03 18:58:26', '2018-04-03 18:58:26', 'Welcome to Tittle-Tattle!\r\n\r\nThe ultimate platform to confirm if what you know is actually true. Or at least, check how genuine the news is.\r\n\r\nGuidelines-\r\n<ol>\r\n 	<li>Open Myspace page.</li>\r\n 	<li>Sign-up.</li>\r\n 	<li>Login.</li>\r\n 	<li>Post.</li>\r\n 	<li>Check the post regularly.</li>\r\n 	<li>You can view other posts and express your opinion also.</li>\r\n</ol>', 'Instructions', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-03 18:58:26', '2018-04-03 18:58:26', '', 1, 'http://localhost/wordpress/2018/04/03/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-03-25 07:17:34', '2018-03-25 07:17:34', '', '', '', 'trash', 'closed', 'closed', '', '13-2__trashed', '', '', '2018-03-25 07:22:09', '2018-03-25 07:22:09', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-03-25 07:17:34', '2018-03-25 07:17:34', '', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 07:17:34', '2018-03-25 07:17:34', '', 13, 'http://localhost/wordpress/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-03-25 07:20:38', '2018-03-25 07:20:38', '', 'my page', '', 'trash', 'closed', 'closed', '', 'this__trashed', '', '', '2018-03-25 10:10:40', '2018-03-25 10:10:40', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-03-25 07:18:30', '2018-03-25 07:18:30', '', 'this', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-03-25 07:18:30', '2018-03-25 07:18:30', '', 15, 'http://localhost/wordpress/2018/03/25/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-03-25 07:23:06', '2018-03-25 07:23:06', '', 'this', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2018-03-25 07:23:06', '2018-03-25 07:23:06', '', 15, 'http://localhost/wordpress/2018/03/25/15-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-25 07:23:37', '2018-03-25 07:23:37', '', 'my page', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-03-25 07:23:37', '2018-03-25 07:23:37', '', 15, 'http://localhost/wordpress/2018/03/25/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-03-25 07:25:03', '2018-03-25 07:25:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-25 07:25:03', '2018-03-25 07:25:03', '', 2, 'http://localhost/wordpress/2018/03/25/2-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-03-25 07:26:25', '2018-03-25 07:26:25', 'ew2e<span id="transmark"></span>', 'My Space', '', 'publish', 'closed', 'closed', '', 'try', '', '', '2018-03-25 10:10:56', '2018-03-25 10:10:56', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-03-25 07:26:25', '2018-03-25 07:26:25', 'ew2e<span id="transmark"></span>', 'try', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-03-25 07:26:25', '2018-03-25 07:26:25', '', 20, 'http://localhost/wordpress/2018/03/25/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-03-25 07:28:11', '2018-03-25 07:28:11', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": -779424235,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:28:11"\n    },\n    "nav_menu[-779424235]": {\n        "value": {\n            "name": "my menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:28:11"\n    },\n    "nav_menu_item[-1850044308]": {\n        "value": {\n            "object_id": 20,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "try",\n            "url": "http://localhost/wordpress/try/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "try",\n            "nav_menu_term_id": -779424235,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:28:11"\n    },\n    "nav_menu_item[-1415873769]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -779424235,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:28:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '253d0068-4192-43b3-ae03-598e3b19c305', '', '', '2018-03-25 07:28:11', '2018-03-25 07:28:11', '', 0, 'http://localhost/wordpress/2018/03/25/253d0068-4192-43b3-ae03-598e3b19c305/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-03-25 07:28:11', '2018-03-25 07:28:11', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-03-25 10:10:29', '2018-03-25 10:10:29', '', 0, 'http://localhost/wordpress/2018/03/25/23/', 2, 'nav_menu_item', '', 0),
(24, 1, '2018-03-25 07:28:11', '2018-03-25 07:28:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-25 10:10:29', '2018-03-25 10:10:29', '', 0, 'http://localhost/wordpress/2018/03/25/home/', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-03-25 07:32:17', '2018-03-25 07:32:17', 'ok<span id="transmark"></span>', 'OK', '', 'trash', 'closed', 'closed', '', 'ok__trashed', '', '', '2018-03-25 10:09:30', '2018-03-25 10:09:30', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-25 07:32:17', '2018-03-25 07:32:17', 'ok<span id="transmark"></span>', 'OK', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-25 07:32:17', '2018-03-25 07:32:17', '', 25, 'http://localhost/wordpress/2018/03/25/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-03-25 07:33:23', '2018-03-25 07:33:23', '{\n    "nav_menu_item[-880187565]": {\n        "value": {\n            "object_id": 25,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "OK",\n            "url": "http://localhost/wordpress/ok/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "OK",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:33:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b758ade3-5a5b-4787-9228-dee974227e28', '', '', '2018-03-25 07:33:23', '2018-03-25 07:33:23', '', 0, 'http://localhost/wordpress/2018/03/25/b758ade3-5a5b-4787-9228-dee974227e28/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-03-25 10:10:56', '2018-03-25 10:10:56', 'ew2e<span id="transmark"></span>', 'My Space', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-03-25 10:10:56', '2018-03-25 10:10:56', '', 20, 'http://localhost/wordpress/2018/03/25/20-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-03-25 07:39:10', '2018-03-25 07:39:10', '{\n    "nav_menu_item[-429128650]": {\n        "value": {\n            "object_id": 2,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "post_type",\n            "title": "Sample Page",\n            "url": "http://localhost/wordpress/sample-page/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Sample Page",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:39:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7f9d801-8684-45dc-ad71-01cf9833478b', '', '', '2018-03-25 07:39:10', '2018-03-25 07:39:10', '', 0, 'http://localhost/wordpress/2018/03/25/b7f9d801-8684-45dc-ad71-01cf9833478b/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-03-25 07:43:32', '2018-03-25 07:43:32', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "calendar-3",\n            "recent-comments-2",\n            "categories-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:43:32"\n    },\n    "widget_pages[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:42:55"\n    },\n    "widget_calendar[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:43:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fd892b2f-43a4-4994-b018-9e51514d89d9', '', '', '2018-03-25 07:43:32', '2018-03-25 07:43:32', '', 0, 'http://localhost/wordpress/?p=32', 0, 'customize_changeset', '', 0),
(31, 1, '2018-03-25 07:41:49', '2018-03-25 07:41:49', '{\n    "twentyseventeen::header_textcolor": {\n        "value": "#000000",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:40:23"\n    },\n    "twentyseventeen::colorscheme": {\n        "value": "light",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:40:23"\n    },\n    "nav_menu_item[30]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:40:23"\n    },\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:41:23"\n    },\n    "page_on_front": {\n        "value": "15",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:41:23"\n    },\n    "page_for_posts": {\n        "value": "15",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:41:23"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "recent-comments-2",\n            "categories-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 07:41:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9feaa57d-c3a8-4d85-9b28-c05c59da8827', '', '', '2018-03-25 07:41:49', '2018-03-25 07:41:49', '', 0, 'http://localhost/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(33, 1, '2018-03-25 10:02:18', '2018-03-25 10:02:18', '{\n    "blogdescription": {\n        "value": "An attempt to eradicate fake news.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 09:59:57"\n    },\n    "sydney::site_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:02:15"\n    },\n    "site_icon": {\n        "value": 35,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:02:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36b5b9a8-5910-4ef8-8ef0-bd0467910ee4', '', '', '2018-03-25 10:02:18', '2018-03-25 10:02:18', '', 0, 'http://localhost/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2018-03-25 10:01:05', '2018-03-25 10:01:05', '', 'beats', '', 'inherit', 'open', 'closed', '', 'beats', '', '', '2018-03-25 10:01:05', '2018-03-25 10:01:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/beats.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-03-25 10:02:06', '2018-03-25 10:02:06', 'http://localhost/wordpress/wp-content/uploads/2018/03/cropped-beats.png', 'cropped-beats.png', '', 'inherit', 'open', 'closed', '', 'cropped-beats-png', '', '', '2018-03-25 10:02:06', '2018-03-25 10:02:06', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/cropped-beats.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-03-25 10:09:02', '2018-03-25 10:09:02', '{\n    "sydney::slider_title_1": {\n        "value": "Welcome!",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:06:51"\n    },\n    "sydney::slider_subtitle_2": {\n        "value": "To work for the betterment of the society?",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:07:51"\n    },\n    "sydney::slider_image_3": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/03/man_reading_newspaper_151909898-56a9fe073df78cf772abf2de.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:07:51"\n    },\n    "sydney::slider_title_3": {\n        "value": "Process is simple",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:08:50"\n    },\n    "sydney::slider_subtitle_3": {\n        "value": "Post a news and wait for a reply.",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:08:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93ffec5a-1636-4298-a751-deebdd803c90', '', '', '2018-03-25 10:09:02', '2018-03-25 10:09:02', '', 0, 'http://localhost/wordpress/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2018-03-25 10:07:17', '2018-03-25 10:07:17', '', 'man_reading_newspaper_151909898-56a9fe073df78cf772abf2de', '', 'inherit', 'open', 'closed', '', 'man_reading_newspaper_151909898-56a9fe073df78cf772abf2de', '', '', '2018-03-25 10:07:17', '2018-03-25 10:07:17', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/man_reading_newspaper_151909898-56a9fe073df78cf772abf2de.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-03-25 10:14:12', '2018-03-25 10:14:12', '{\n    "sydney::blog_layout": {\n        "value": "fullwidth",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:13:52"\n    },\n    "sydney::fullwidth_single": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:13:52"\n    },\n    "sydney::full_content_home": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:13:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4782478d-8b58-4b90-891a-59d526bea3b8', '', '', '2018-03-25 10:14:12', '2018-03-25 10:14:12', '', 0, 'http://localhost/wordpress/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2018-03-25 10:15:46', '2018-03-25 10:15:46', '{\n    "sydney::footer_widgets_background": {\n        "value": "#020202",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:15:46"\n    },\n    "sydney::footer_widgets_color": {\n        "value": "#020202",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:15:46"\n    },\n    "sydney::footer_background": {\n        "value": "#020202",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:15:46"\n    },\n    "sydney::footer_color": {\n        "value": "#020202",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-25 10:15:46"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b30a876c-65b0-4365-bd83-99ac2fe6fbd0', '', '', '2018-03-25 10:15:46', '2018-03-25 10:15:46', '', 0, 'http://localhost/wordpress/2018/03/25/b30a876c-65b0-4365-bd83-99ac2fe6fbd0/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'my menu', 'my-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(24, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'onemovequeen'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(24, 1, 'session_tokens', 'a:1:{s:64:"ec6145c0eabfd47d2fa59d3727ad132984411b4eff4af8f3b65c7a55eaea9c89";a:4:{s:10:"expiration";i:1522955444;s:2:"ip";s:3:"::1";s:2:"ua";s:69:"Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1522782644;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '41'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1521972555');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'onemovequeen', '$P$BMiXw.RInGh.X8LfDho69m5Uk8KbOd/', 'onemovequeen', 'leenaleece@gmail.com', '', '2018-03-25 06:51:10', '1521961088:$P$Bmp7OiWzi/71E.UixBWhBmaGLpmyxR1', 0, 'onemovequeen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
