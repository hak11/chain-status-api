-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 29 Mar 2017 pada 19.19
-- Versi Server: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 5.6.30-7+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `challange`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2017-03-19 19:36:29', '2017-03-19 19:36:29'),
(2, NULL, 1, 'Category 2', 'category-2', '2017-03-19 19:36:29', '2017-03-19 19:36:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`) VALUES
(1, 1, 'id', 'PRI', 'ID', 1, 0, 1, 1, 0, 1, ''),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, ''),
(3, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, ''),
(4, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, ''),
(5, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, ''),
(6, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\n"resize": {\n"width": "1000",\n"height": "null"\n},\n"quality": "70%",\n"upsize": true,\n"thumbnails": [\n{\n"name": "medium",\n"scale": "50%"\n},\n{\n"name": "small",\n"scale": "25%"\n},\n{\n"name": "cropped",\n"crop": {\n"width": "300",\n"height": "250"\n}\n}\n]\n}'),
(7, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify": {"origin": "title", "forceUpdate": true}}'),
(8, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, ''),
(9, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, ''),
(10, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\n"default": "DRAFT",\n"options": {\n"PUBLISHED": "published",\n"DRAFT": "draft",\n"PENDING": "pending"\n}\n}'),
(11, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, ''),
(12, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(13, 2, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
(14, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, ''),
(15, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, ''),
(16, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, ''),
(17, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, ''),
(18, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify": {"origin": "title"}}'),
(19, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, ''),
(20, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, ''),
(21, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\n"default": "INACTIVE",\n"options": {\n"INACTIVE": "INACTIVE",\n"ACTIVE": "ACTIVE"\n}\n}'),
(22, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, ''),
(23, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, ''),
(24, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, ''),
(25, 3, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
(26, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
(27, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, ''),
(28, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, ''),
(29, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, ''),
(30, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, ''),
(31, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(32, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, ''),
(33, 5, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
(34, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
(35, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
(36, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(37, 4, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
(38, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\n"default": "__null__",\n"null": "__null__",\n"options": {\n"__null__": "NULL"\n},\n"relationship": {\n"key": "id",\n"label": "name"\n}\n}'),
(39, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\n"default": 1\n}\n'),
(40, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
(41, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, ''),
(42, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, ''),
(43, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(44, 6, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
(45, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
(46, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
(47, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(48, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, ''),
(49, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, ''),
(50, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, ''),
(51, 3, 'role_id', 'text', 'role_id', 1, 0, 0, 1, 1, 0, ''),
(67, 10, 'id', 'PRI', 'Id', 1, 0, 0, 0, 0, 0, ''),
(68, 10, 'param', 'text', 'Param', 1, 1, 1, 1, 1, 1, ''),
(69, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
(70, 10, 'subject', 'text', 'Subject', 1, 0, 1, 1, 1, 1, ''),
(71, 10, 'message', 'text', 'Message', 1, 0, 1, 1, 1, 1, ''),
(72, 10, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, ''),
(73, 10, 'created_at', 'text', 'Created At', 0, 1, 1, 0, 0, 0, ''),
(74, 10, 'updated_at', 'text', 'Updated At', 0, 0, 0, 0, 0, 0, ''),
(75, 10, 'deleted_at', 'text', 'Deleted At', 0, 0, 0, 0, 0, 0, ''),
(76, 11, 'id', 'PRI', 'Id', 1, 1, 0, 0, 0, 0, ''),
(77, 11, 'param', 'text', 'Param', 1, 1, 1, 1, 1, 1, ''),
(78, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
(79, 11, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, ''),
(80, 11, 'message', 'text_area', 'Message', 1, 0, 1, 1, 1, 1, ''),
(81, 11, 'parent_id', 'number', 'Parent Id', 0, 0, 1, 1, 1, 1, ''),
(82, 11, 'created_at', 'text', 'Created At', 0, 1, 1, 0, 0, 0, ''),
(83, 11, 'updated_at', 'text', 'Updated At', 0, 0, 0, 0, 0, 0, ''),
(84, 11, 'deleted_at', 'text', 'Deleted At', 0, 0, 0, 0, 0, 0, ''),
(85, 12, 'id', 'PRI', 'Id', 1, 0, 0, 0, 0, 0, ''),
(86, 12, 'status_id', 'text', 'Status Id', 1, 1, 1, 1, 1, 1, ''),
(87, 12, 'param_action', 'text', 'Param Action', 1, 1, 1, 1, 1, 1, ''),
(88, 12, 'mac', 'text', 'Mac', 1, 1, 1, 1, 1, 1, ''),
(89, 12, 'ip', 'text', 'Ip', 1, 1, 1, 1, 1, 1, ''),
(90, 12, 'created_at', 'text', 'Created At', 0, 1, 1, 0, 0, 0, ''),
(91, 12, 'updated_at', 'text', 'Updated At', 0, 0, 0, 0, 0, 0, ''),
(92, 12, 'deleted_at', 'text', 'Deleted At', 0, 0, 0, 0, 0, 0, ''),
(93, 12, 'bgcolor', 'text', 'Bgcolor', 0, 1, 1, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', '', 1, 0, '2017-03-19 19:36:21', '2017-03-19 19:36:21'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', '', 1, 0, '2017-03-19 19:36:21', '2017-03-19 19:36:21'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', 1, 0, '2017-03-19 19:36:21', '2017-03-19 19:36:21'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', 1, 0, '2017-03-19 19:36:21', '2017-03-19 19:36:21'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', 1, 0, '2017-03-19 19:36:21', '2017-03-19 19:36:21'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', 1, 0, '2017-03-19 19:36:22', '2017-03-19 19:36:22'),
(10, 'forum_status', 'forum-status', 'Forum Status', 'Forum Statuses', 'voyager-pen', 'App\\ForumStatus', '', 1, 1, '2017-03-21 08:10:40', '2017-03-21 08:10:40'),
(11, 'forum_statuses', 'forum-statuses', 'Forum Status', 'Forum Statuses', '', 'App\\ForumStatus', '', 1, 1, '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(12, 'forum_actions', 'forum-actions', 'Forum Action', 'Forum Actions', '', 'App\\ForumAction', '', 1, 1, '2017-03-21 08:51:48', '2017-03-21 08:51:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_actions`
--

CREATE TABLE `forum_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_id` int(11) NOT NULL,
  `param_action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bgcolor` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `forum_actions`
--

INSERT INTO `forum_actions` (`id`, `status_id`, `param_action`, `bgcolor`, `mac`, `ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'mood', '#1BBC9B', '0', '0', '2017-03-21 08:54:33', '2017-03-21 08:54:33', NULL),
(2, 6, 'sentiment_satisfied', '#4183D7', '0', '0', '2017-03-21 08:55:29', '2017-03-21 08:55:29', NULL),
(3, 6, 'sentiment_neutral', '#F2784B', '0', '0', '2017-03-21 08:55:43', '2017-03-21 08:55:43', NULL),
(4, 6, 'sentiment_dissatisfied', '#913D88', '0', '0', '2017-03-21 08:56:02', '2017-03-21 08:56:02', NULL),
(5, 6, 'mood_bad', '#EF4836', '0', '0', '2017-03-21 08:56:39', '2017-03-21 08:56:39', NULL),
(6, 2, 'mood', '#1BBC9B', '0', '0', '2017-03-21 08:54:33', '2017-03-21 08:54:33', NULL),
(7, 2, 'sentiment_satisfied', '#4183D7', '0', '0', '2017-03-21 08:55:29', '2017-03-21 08:55:29', NULL),
(8, 2, 'sentiment_neutral', '#F2784B', '0', '0', '2017-03-21 08:55:43', '2017-03-21 08:55:43', NULL),
(9, 2, 'sentiment_dissatisfied', '#913D88', '0', '0', '2017-03-21 08:56:02', '2017-03-21 08:56:02', NULL),
(10, 2, 'mood_bad', '#EF4836', '0', '0', '2017-03-21 08:56:39', '2017-03-21 08:56:39', NULL),
(11, 3, 'sentiment_neutral', '#F2784B', '0', '0', '2017-03-21 08:55:43', '2017-03-21 08:55:43', NULL),
(12, 4, 'sentiment_dissatisfied', '#913D88', '0', '0', '2017-03-21 08:56:02', '2017-03-21 08:56:02', NULL),
(13, 5, 'mood_bad', '#EF4836', '0', '0', '2017-03-21 08:56:39', '2017-03-21 08:56:39', NULL),
(14, 8, 'mood', '#1BBC9B', '0', '0', '2017-03-26 18:27:45', '2017-03-26 18:27:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_statuses`
--

CREATE TABLE `forum_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `param` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `forum_statuses`
--

INSERT INTO `forum_statuses` (`id`, `param`, `name`, `subject`, `message`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'ini name', 'ini subject', 'ini message', 0, '2017-03-21 08:23:43', '2017-03-21 08:23:43', NULL),
(3, 1, 'adalah nama', 'adalah subject', 'adalah message', 0, '2017-03-21 08:25:01', '2017-03-21 08:25:01', NULL),
(4, 0, 'saya nama', 'saya subject', 'saya message', 2, '2017-03-21 08:25:37', '2017-03-21 08:25:37', NULL),
(5, 0, 'gw nama', 'gw subject', 'gw message', 2, '2017-03-21 08:26:01', '2017-03-21 08:26:01', NULL),
(6, 0, 'apa nama', 'apa subject', 'apa message', 3, '2017-03-21 08:26:22', '2017-03-21 08:26:22', NULL),
(7, 1, 'ini adalah nama saya', 'ini adalah subject saya', 'ini adalah message', 6, '2017-03-22 07:16:34', '2017-03-22 07:16:34', NULL),
(8, 1, 'name', 'subject lagi', 'message lagi', 7, '2017-03-22 08:22:05', '2017-03-22 08:22:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-03-19 19:36:25', '2017-03-19 19:36:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', '/', '_self', 'voyager-boat', NULL, NULL, 1, '2017-03-19 19:36:25', '2017-03-19 19:36:25'),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2017-03-19 19:36:25', '2017-03-26 18:26:25'),
(9, 1, 'Menu Builder', '/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-03-19 19:36:25', '2017-03-19 19:52:22'),
(11, 1, 'Settings', '/settings', '_self', 'voyager-settings', NULL, NULL, 5, '2017-03-19 19:36:25', '2017-03-26 18:26:25'),
(12, 1, 'Comment', 'forum-status', '_self', 'voyager-bubble', '#000000', NULL, 2, '2017-03-19 19:51:43', '2017-03-26 18:25:47'),
(14, 1, 'Database', '/database', '_self', 'voyager-pen', '#000000', 8, 2, '2017-03-21 08:12:25', '2017-03-21 08:19:06'),
(15, 1, 'Actions', 'forum-actions', '_self', 'voyager-pen', '#000000', NULL, 3, '2017-03-26 18:26:20', '2017-03-26 18:26:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_user_avatar', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_10_30_000000_set_user_avatar_nullable', 1),
(12, '2016_11_30_131710_add_user_role', 1),
(13, '2016_11_30_135954_create_permission_table', 1),
(14, '2016_11_30_141208_create_permission_role_table', 1),
(15, '2016_12_26_201236_data_types__add__server_side', 1),
(16, '2017_02_08_161252_create_master_locations_table', 1),
(17, '2017_02_10_115213_create_master_items_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Scurvy Page', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/AAgCCnqHfLlRub9syUdw.jpg', 'scurvy-page', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-03-19 19:36:30', '2017-03-19 19:36:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', 'admin', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(2, 'browse_database', 'admin', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(3, 'browse_media', 'admin', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(4, 'browse_settings', 'admin', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(5, 'browse_menus', 'menus', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(6, 'read_menus', 'menus', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(7, 'edit_menus', 'menus', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(8, 'add_menus', 'menus', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(9, 'delete_menus', 'menus', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(10, 'browse_pages', 'pages', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(11, 'read_pages', 'pages', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(12, 'edit_pages', 'pages', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(13, 'add_pages', 'pages', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(14, 'delete_pages', 'pages', '2017-03-19 19:36:26', '2017-03-19 19:36:26'),
(15, 'browse_roles', 'roles', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(16, 'read_roles', 'roles', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(17, 'edit_roles', 'roles', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(18, 'add_roles', 'roles', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(19, 'delete_roles', 'roles', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(20, 'browse_users', 'users', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(21, 'read_users', 'users', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(22, 'edit_users', 'users', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(23, 'add_users', 'users', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(24, 'delete_users', 'users', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(25, 'browse_posts', 'posts', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(26, 'read_posts', 'posts', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(27, 'edit_posts', 'posts', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(28, 'add_posts', 'posts', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(29, 'delete_posts', 'posts', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(30, 'browse_categories', 'categories', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(31, 'read_categories', 'categories', '2017-03-19 19:36:27', '2017-03-19 19:36:27'),
(32, 'edit_categories', 'categories', '2017-03-19 19:36:28', '2017-03-19 19:36:28'),
(33, 'add_categories', 'categories', '2017-03-19 19:36:28', '2017-03-19 19:36:28'),
(34, 'delete_categories', 'categories', '2017-03-19 19:36:28', '2017-03-19 19:36:28'),
(45, 'browse_forum_status', 'forum_status', '2017-03-21 08:10:41', '2017-03-21 08:10:41'),
(46, 'read_forum_status', 'forum_status', '2017-03-21 08:10:41', '2017-03-21 08:10:41'),
(47, 'edit_forum_status', 'forum_status', '2017-03-21 08:10:41', '2017-03-21 08:10:41'),
(48, 'add_forum_status', 'forum_status', '2017-03-21 08:10:41', '2017-03-21 08:10:41'),
(49, 'delete_forum_status', 'forum_status', '2017-03-21 08:10:41', '2017-03-21 08:10:41'),
(50, 'browse_forum_statuses', 'forum_statuses', '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(51, 'read_forum_statuses', 'forum_statuses', '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(52, 'edit_forum_statuses', 'forum_statuses', '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(53, 'add_forum_statuses', 'forum_statuses', '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(54, 'delete_forum_statuses', 'forum_statuses', '2017-03-21 08:22:01', '2017-03-21 08:22:01'),
(55, 'browse_forum_actions', 'forum_actions', '2017-03-21 08:51:48', '2017-03-21 08:51:48'),
(56, 'read_forum_actions', 'forum_actions', '2017-03-21 08:51:48', '2017-03-21 08:51:48'),
(57, 'edit_forum_actions', 'forum_actions', '2017-03-21 08:51:48', '2017-03-21 08:51:48'),
(58, 'add_forum_actions', 'forum_actions', '2017-03-21 08:51:48', '2017-03-21 08:51:48'),
(59, 'delete_forum_actions', 'forum_actions', '2017-03-21 08:51:48', '2017-03-21 08:51:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/nlje9NZQ7bTMYOUG4lF1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-03-19 19:36:29', '2017-03-19 19:36:29'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/7uelXHi85YOfZKsoS6Tq.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-03-19 19:36:29', '2017-03-19 19:36:29'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/9txUSY6wb7LTBSbDPrD9.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-03-19 19:36:30', '2017-03-19 19:36:30'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/yuk1fBwmKKZdY2qR1ZKM.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-03-19 19:36:30', '2017-03-19 19:36:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-03-19 19:36:25', '2017-03-19 19:36:25'),
(2, 'user', 'Normal User', '2017-03-19 19:36:26', '2017-03-19 19:36:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'title', 'Site Title', 'Site Title', '', 'text', 1),
(2, 'description', 'Site Description', 'Site Description', '', 'text', 2),
(3, 'logo', 'Site Logo', '', '', 'image', 3),
(4, 'admin_bg_image', 'Admin Background Image', '', '', 'image', 9),
(5, 'admin_title', 'Admin Title', 'Voyager', '', 'text', 4),
(6, 'admin_description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 5),
(7, 'admin_loader', 'Admin Loader', '', '', 'image', 6),
(8, 'admin_icon_image', 'Admin Icon Image', '', '', 'image', 7),
(9, 'google_analytics_client_id', 'Google Analytics Client ID', '', '', 'text', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$WUe9s.X1DeRwkDAZcas28.3uWwnTC1DXAaIeR48N7uFvfZ5e.djG.', 'bWmp3LZts0ePAhu1Y6YP1Z5JYAKt8ZyIFF768Zr5pOW6ncqbuqzncmjjWYS7', '2017-03-19 19:36:29', '2017-03-19 19:36:29', 'users/default.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `forum_actions`
--
ALTER TABLE `forum_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_statuses`
--
ALTER TABLE `forum_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `forum_actions`
--
ALTER TABLE `forum_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `forum_statuses`
--
ALTER TABLE `forum_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
