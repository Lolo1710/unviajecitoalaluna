-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 25, 2021 at 09:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stories`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'UFP8xzMOyfjmKC93UVwoMXkH5vfGTBeA', 1, '2021-02-24 19:43:18', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Panel Ads', '2026-02-25 00:00:00', 'panel-ads', 'DETQU69HJPX0', 'banners/1.jpg', 'https://botble.com', 0, 1, 'published', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(2, 'Top Sidebar Ads', '2026-02-25 00:00:00', 'top-sidebar-ads', 'AIOEMDYKBTRP', 'banners/2.jpg', 'https://botble.com', 0, 2, 'published', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(3, 'Bottom Sidebar Ads', '2026-02-25 00:00:00', 'bottom-sidebar-ads', 'NCAAZSXU6ZD5', 'banners/3.jpg', 'https://botble.com', 0, 3, 'published', '2021-02-24 19:43:23', '2021-02-24 19:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Minima hic mollitia ullam omnis nemo molestias doloribus voluptas. Impedit expedita dolores ipsa. Id qui perferendis iusto omnis placeat dolor. Et provident aspernatur repudiandae cum aperiam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(2, 'Travel', 0, 'Ipsam explicabo odit et voluptatum quae esse aut. Quibusdam suscipit adipisci et est ipsa nesciunt. Eos sit facilis ut magni rerum similique.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(3, 'Guides', 2, 'Tenetur in tenetur ratione enim consequatur. Dolor laboriosam qui inventore. Est error nihil officia. Laboriosam et aliquid voluptatibus et ratione fugit occaecati.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(4, 'Destination', 0, 'Officia aut iste sunt incidunt quisquam quisquam deleniti. Qui autem explicabo ratione laborum perspiciatis voluptas velit. Ipsa repudiandae qui adipisci repellat deserunt sapiente sunt sequi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(5, 'Food', 4, 'Qui provident odio praesentium sint eum et neque. Et voluptas ipsa voluptatem doloribus. Quod culpa quam iusto. Eos voluptatem fugit commodi enim quis.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(6, 'Hotels', 0, 'Et mollitia dolorem odit non aliquid et. Excepturi dignissimos similique labore qui voluptatem id non. Ut vel ea odio eligendi quibusdam. Sequi magnam non in quibusdam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(7, 'Review', 6, 'Consectetur ipsa sequi quas aliquid mollitia vel magni nemo. Blanditiis itaque nostrum rem ipsa corporis. Accusantium numquam facere est.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(8, 'Healthy', 0, 'Nihil ut accusamus et. Explicabo tempora voluptates nobis quam in ea. Officiis beatae est non minus omnis tempora animi. Dolore nihil recusandae alias quas tempore aut provident.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(9, 'Lifestyle', 0, 'Voluptatem dignissimos ad non assumenda aut et. Numquam consequatur blanditiis cupiditate aut. Repudiandae explicabo sapiente voluptatibus enim dolores.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(10, 'Không phân loại', 0, 'Praesentium rerum ex est eos. Saepe aliquid in velit reprehenderit.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(11, 'Du lịch', 0, 'Et sint ea earum corrupti. Natus dolor omnis placeat odio. Repudiandae commodi inventore quia voluptatem eum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(12, 'Hướng dẫn', 11, 'Ipsum quas illum harum adipisci culpa ea ea. Dolor culpa eius ratione explicabo officiis quia.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(13, 'Điểm đến', 0, 'Ut ut consequatur dolores optio placeat eum ab iusto. Architecto et voluptas repellendus illo occaecati voluptates. Deserunt doloribus sint ut ea eligendi placeat est. Eum voluptas cumque totam aut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(14, 'Đồ ăn', 13, 'Rerum non aliquam sint assumenda ipsam. Adipisci incidunt vel ab sunt quia repudiandae.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(15, 'Khách sạn', 0, 'Optio facere ut rerum illo et. Eum est soluta aut saepe. Maxime voluptatibus odit omnis est dolorem ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(16, 'Đánh giá', 15, 'Sequi nemo quibusdam voluptates dignissimos. Quia tempora dolor iure. Rerum minima quam adipisci nisi. Fuga sed in at dolor unde ea dolore voluptatem.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(17, 'Sức khỏe', 0, 'Temporibus nobis nam ut tempora sunt. Non quisquam harum ad consequatur illo veritatis est corrupti. Tempore adipisci dolor impedit quisquam et voluptatum hic.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(18, 'Phong cách sống', 0, 'Odio facere eos nostrum quo. Aperiam autem dignissimos eos modi. Incidunt illum maxime et dolor qui aut aperiam asperiores. Tenetur qui nam voluptas dolore dolores est.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Drake Casper', 'frieda75@example.net', '1-994-701-1382', '710 McCullough Lane\nMcCluretown, VA 20233', 'Ut illum aspernatur enim quae qui qui ut.', 'Modi pariatur ducimus ipsa dolorum. Laudantium qui consequatur quia asperiores. Quibusdam labore sunt aut non rerum quas architecto. Et id voluptatibus quos magni nihil consequatur non. Eaque expedita consequatur unde omnis facilis itaque. Pariatur possimus dolorum corrupti dolor. Est qui voluptatem et cum expedita.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 'Mr. Brain Moore DDS', 'dana02@example.org', '569-257-7356', '9795 Alysha Path Suite 514\nMurphyport, IN 81983', 'Et quia magnam sint commodi.', 'Voluptatem quas itaque harum cupiditate. Iste distinctio molestiae quos nulla eligendi dolorum. Odit modi perferendis cumque et pariatur similique veniam. Quo nisi quis fuga eos doloremque. Sint culpa voluptatibus et eaque beatae debitis. Molestiae ratione deleniti neque. Perferendis molestiae neque et voluptatibus dolores. Debitis asperiores ut cupiditate corporis hic. Quia at similique odit neque unde ut ex. Illo officiis quam ipsa voluptatibus. Natus ea quia est doloremque qui.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 'Gladys Wehner', 'yshanahan@example.com', '(729) 442-1714', '9508 Ronny Falls\nVandervortfurt, NC 73173', 'Soluta nemo error id aut ad.', 'Qui ut id a maiores cupiditate. Sed illo facere sequi qui. Placeat eos beatae amet. Assumenda voluptatum ea voluptatum voluptas iusto. Dolores qui officiis et rerum corrupti voluptas laborum exercitationem. Unde provident ut vitae velit similique ad vitae assumenda. Ipsa et a ut aspernatur deserunt. Tempore ut nobis non.', 'unread', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 'Lauretta Will', 'mazie51@example.net', '+1.814.750.9540', '302 Jan Mountains\nZiememouth, MS 18388-9008', 'Quis dolorum nisi dolores aut.', 'Minima amet nihil soluta dolor. Quia optio expedita doloremque corrupti. Id qui consequatur ut pariatur. At eaque quo blanditiis ullam quis et. Sint accusamus iste voluptatibus iste quis occaecati quibusdam. Veniam debitis et ratione libero vel ullam. Repellendus voluptatem id eveniet voluptate qui. Esse ea enim nesciunt nihil qui atque laboriosam fuga. Et aut quia asperiores est. Vel nulla culpa officia ut at est saepe. Maxime itaque qui ipsum hic. Iste nisi omnis aut officia veritatis.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 'Nova Schulist', 'jharber@example.net', '1-579-625-4688', '40397 Judson Spring Suite 859\nSunnyton, GA 93542', 'Ipsam veritatis labore est et maxime.', 'Libero nihil sed non ipsum delectus molestiae. Eius aut quos quis ducimus. Veritatis ad est sit repellendus autem. Inventore blanditiis ea est repudiandae. Et explicabo similique sint vero et quia eos. Qui voluptas dolor perferendis maxime nihil. Omnis soluta id culpa laudantium modi. In non est ipsum. Vero ut et velit. Aut dolorum fugit impedit cupiditate provident.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 'Prof. Deshawn Dibbert', 'cade.krajcik@example.org', '+1-410-813-2548', '19644 Bailey Common Suite 215\nNorth Bernard, NC 28956', 'Cum qui illum aut iste qui.', 'Impedit eaque officia alias quisquam nemo tenetur consequatur. Aut ea labore cum voluptates voluptates pariatur consequatur. Quae dolorem aperiam voluptatem est nisi. Officiis libero earum ipsa. Earum nihil qui quia. Rerum et non delectus quisquam eos suscipit earum. Quia aut sed rerum nesciunt ipsum. Reiciendis omnis fugit dolorem aut aspernatur. Deleniti ab et hic consequatur qui consequuntur. Sit voluptatem voluptatem ullam sunt cupiditate.', 'unread', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(7, 'Brent Jerde', 'anjali.kub@example.org', '+1-584-957-2868', '238 Jerde Club Apt. 701\nEast Tabithaview, FL 38807-5446', 'Eum iure neque quia omnis quas natus.', 'Et quos a quis maiores. Quia sit ex repellat qui qui. Doloremque aperiam et atque qui in sed et delectus. Maiores veniam blanditiis aspernatur molestiae laudantium molestiae perspiciatis. Eligendi repellendus similique placeat et. A dolor rem reiciendis nemo aut quos vel voluptatem. Aperiam delectus distinctio delectus illo adipisci quia.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(8, 'Ona Goyette', 'alene.treutel@example.com', '+1-527-284-6236', '173 Camila Fork Apt. 275\nTianaborough, AZ 16010-3891', 'Vitae architecto non nemo autem omnis.', 'Adipisci unde quia esse dolorem. Mollitia optio a rerum sequi sed eveniet aut. Fuga deserunt consequatur natus suscipit. In sunt quia inventore non rerum magnam sequi dicta. Deleniti quod aut eveniet natus cum est. Officiis velit consequatur et minima nisi non reprehenderit. Sed ex quidem qui autem eius. Autem consequatur et quas saepe voluptatem optio.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(9, 'Prof. Cyril VonRueden III', 'hermann.gregory@example.net', '689-239-6834', '1080 Anderson Walks\nSouth Alizaberg, FL 20163', 'Eum et est nemo quia.', 'Ullam enim velit aut animi ratione voluptatibus architecto. Iure est et et aut quis. Necessitatibus nisi ab magni adipisci qui qui. Non quo autem sint unde. Autem molestias aut ut qui assumenda sit voluptatem. Commodi facilis quia ipsum voluptatem officiis sequi. Magnam quo minima dolore magnam excepturi. Perferendis occaecati modi veritatis rerum qui. Voluptas odio nemo et amet. Et nam fuga laudantium. Molestias illum dolorem dolor sit.', 'read', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(10, 'Donald Labadie', 'jedidiah.haley@example.org', '(916) 656-3000', '267 Jaeden Route\nLake Ashleigh, KS 15557', 'Voluptate rem aut vel non.', 'Quo non dolores neque eum voluptas natus. In voluptatem delectus ut eos qui nihil. Illum alias vitae libero magnam in hic consequatur ut. Molestias sit deleniti voluptate incidunt sit sunt. Maxime veniam et voluptatem magni possimus. Quis excepturi laudantium ipsam ex harum amet.', 'unread', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Eos quia sed accusamus modi nam id. Laborum sit quam est sunt possimus animi. Molestiae consequatur necessitatibus cumque deleniti velit id.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(2, 'New Day', 'Odit nam architecto et. Officiis quis nobis nulla iure. Sit labore qui rem quidem corrupti voluptatem. Maiores vel itaque repellat sapiente.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(3, 'Happy Day', 'Sint libero ut quos. Omnis dolorem provident dolorem ipsum. Autem ratione omnis sed quibusdam eaque nostrum totam impedit.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(4, 'Nature', 'Alias doloribus corporis tempore. Non quia est quia aperiam. Qui ut eos ad veritatis dolorem architecto.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(5, 'Morning', 'Architecto qui qui eaque at placeat ipsam. Corporis nemo omnis ut vel explicabo. Repellat dolores voluptas aut et.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(6, 'Photography', 'Aut modi id ipsum ad assumenda voluptas sed. Quasi sed fuga eaque excepturi porro recusandae. Non minima voluptas veritatis blanditiis.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(7, 'Hoàn hảo', 'Qui accusamus excepturi porro qui nihil quod odit molestias. Omnis architecto recusandae esse molestiae. Aut sed nisi ut quo perferendis et.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(8, 'Ngày mới', 'Ut architecto beatae sed reiciendis aliquam molestiae. Temporibus voluptas rerum id velit. Sit expedita adipisci rerum quo dolor excepturi ducimus.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(9, 'Ngày hạnh phúc', 'Asperiores fuga ut quis iusto consectetur. Et quae quo autem doloremque. Reiciendis ipsa quia cumque est et voluptas.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(10, 'Thiên nhiên', 'Aut expedita ducimus cupiditate magni. Magni consequatur accusamus aliquam consequatur est consectetur.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(11, 'Buổi sáng', 'Est consequatur similique aut distinctio animi. Explicabo aut velit veniam voluptas voluptatem. Et quo ad magnam illum.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(12, 'Nghệ thuật', 'Amet ducimus placeat alias aut qui qui officiis eum. Voluptate qui quaerat voluptatem explicabo. Libero molestias placeat quis placeat.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-02-24 19:43:22', '2021-02-24 19:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(7, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 7, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(8, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 8, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(9, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(10, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(11, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 11, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(12, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Iure sed repellat ipsa quaerat. Eum pariatur iusto soluta porro consequatur nemo quis molestias. Aliquid tenetur quam ab itaque.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Reiciendis commodi assumenda inventore. At cum hic eum vero dolore. Accusantium earum voluptas totam non quasi voluptatem quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem sit repudiandae temporibus vel amet sed nobis. Alias maiores cumque id. Ut veniam quas molestiae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Totam tempora suscipit perferendis excepturi incidunt saepe ratione. Et dolor sit maiores. Et iure nam ea omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Nihil voluptates atque sit voluptas est earum cupiditate eos. Amet facilis vitae qui cum aliquid aut. Et corrupti non praesentium voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos id inventore explicabo nobis quae et. Quas laboriosam quibusdam ipsa magnam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nulla rerum eum omnis voluptas ut minus. Neque quis non eum velit aliquam. Dolorem quod velit ea ut fugiat nostrum quia ad.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Architecto et quas ut vel ut quia aliquam. Et excepturi at deserunt autem voluptatem fugit pariatur et. Neque id ut et totam alias.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut maxime possimus dolor sed. Vitae hic rerum velit quo. Laudantium repellendus odio sit ut.\"}]', 12, 'Botble\\Gallery\\Models\\Gallery', '2021-02-24 19:43:22', '2021-02-24 19:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'b540336c8e4ca37bf2ef6cbfe5f1bab6', 1, 'Botble\\Page\\Models\\Page'),
(2, 'en_US', '309a9e6467b8a0704237cf6311f3c1b6', 2, 'Botble\\Page\\Models\\Page'),
(3, 'en_US', '75bc9343fc31e66e223d21248e002527', 3, 'Botble\\Page\\Models\\Page'),
(4, 'en_US', '48820526df6461007f944a711fd19408', 4, 'Botble\\Page\\Models\\Page'),
(5, 'en_US', 'c73d47424c70b711b0521e9c592d1cce', 5, 'Botble\\Page\\Models\\Page'),
(6, 'en_US', '1de15101ee174065dbf76b051d8a0782', 6, 'Botble\\Page\\Models\\Page'),
(7, 'en_US', '64c708024de41f62414d3a2dd96e79a4', 7, 'Botble\\Page\\Models\\Page'),
(8, 'en_US', 'a714a96abe3f51cf4b38d76e171a5195', 8, 'Botble\\Page\\Models\\Page'),
(9, 'vi', 'b540336c8e4ca37bf2ef6cbfe5f1bab6', 9, 'Botble\\Page\\Models\\Page'),
(10, 'vi', '309a9e6467b8a0704237cf6311f3c1b6', 10, 'Botble\\Page\\Models\\Page'),
(11, 'vi', '75bc9343fc31e66e223d21248e002527', 11, 'Botble\\Page\\Models\\Page'),
(12, 'vi', '48820526df6461007f944a711fd19408', 12, 'Botble\\Page\\Models\\Page'),
(13, 'vi', 'c73d47424c70b711b0521e9c592d1cce', 13, 'Botble\\Page\\Models\\Page'),
(14, 'vi', '1de15101ee174065dbf76b051d8a0782', 14, 'Botble\\Page\\Models\\Page'),
(15, 'vi', '64c708024de41f62414d3a2dd96e79a4', 15, 'Botble\\Page\\Models\\Page'),
(16, 'vi', 'a714a96abe3f51cf4b38d76e171a5195', 16, 'Botble\\Page\\Models\\Page'),
(17, 'en_US', 'af698f699562dc0f3fd30fd93b18a2ca', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(18, 'en_US', '501a756eb30b5534f7ceefa8ebe2d2e6', 1, 'Botble\\Menu\\Models\\Menu'),
(19, 'en_US', '3238322c7365ea040175ea53d1de7bb2', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(20, 'en_US', '0dcafdb139f398f377315edcef2f11df', 2, 'Botble\\Menu\\Models\\Menu'),
(21, 'en_US', 'b7c560b20fbdbe9cc43bc1cc48ef2f00', 3, 'Botble\\Menu\\Models\\Menu'),
(22, 'vi', '0a14cd4aa86126d643b74724c8580ac1', 3, 'Botble\\Menu\\Models\\MenuLocation'),
(23, 'vi', '501a756eb30b5534f7ceefa8ebe2d2e6', 4, 'Botble\\Menu\\Models\\Menu'),
(24, 'vi', '20e14726cfea8da0e4eaf98c92fe9153', 4, 'Botble\\Menu\\Models\\MenuLocation'),
(25, 'vi', '0dcafdb139f398f377315edcef2f11df', 5, 'Botble\\Menu\\Models\\Menu'),
(26, 'vi', 'b7c560b20fbdbe9cc43bc1cc48ef2f00', 6, 'Botble\\Menu\\Models\\Menu'),
(27, 'en_US', 'd0081f450a0290be04f3451a20c96e2a', 1, 'Botble\\Blog\\Models\\Category'),
(28, 'en_US', 'f642dc577cdf3d0c0f7a840362b0b341', 2, 'Botble\\Blog\\Models\\Category'),
(29, 'en_US', 'e8dfbb6df7a62802bdc9def0296f524e', 3, 'Botble\\Blog\\Models\\Category'),
(30, 'en_US', '5e687ae0a08a44bca6eef3d2e132a928', 4, 'Botble\\Blog\\Models\\Category'),
(31, 'en_US', 'c60c97d8f0eebbfbbae5d46d83fb5a6e', 5, 'Botble\\Blog\\Models\\Category'),
(32, 'en_US', '54f33404c6d9ac09ccd227bd95d6ad39', 6, 'Botble\\Blog\\Models\\Category'),
(33, 'en_US', 'afc670f9a0241afd2b8c0f812b32fe39', 7, 'Botble\\Blog\\Models\\Category'),
(34, 'en_US', '708e7eb98ce4407e5c87d65c4675becd', 8, 'Botble\\Blog\\Models\\Category'),
(35, 'en_US', 'd2aed827ee8421f25f6e9450abaf8442', 9, 'Botble\\Blog\\Models\\Category'),
(36, 'vi', 'd0081f450a0290be04f3451a20c96e2a', 10, 'Botble\\Blog\\Models\\Category'),
(37, 'vi', 'f642dc577cdf3d0c0f7a840362b0b341', 11, 'Botble\\Blog\\Models\\Category'),
(38, 'vi', 'f642dc577cdf3d0c0f7a840362b0b341', 12, 'Botble\\Blog\\Models\\Category'),
(39, 'vi', 'e8dfbb6df7a62802bdc9def0296f524e', 13, 'Botble\\Blog\\Models\\Category'),
(40, 'vi', 'e8dfbb6df7a62802bdc9def0296f524e', 14, 'Botble\\Blog\\Models\\Category'),
(41, 'vi', '5e687ae0a08a44bca6eef3d2e132a928', 15, 'Botble\\Blog\\Models\\Category'),
(42, 'vi', '5e687ae0a08a44bca6eef3d2e132a928', 16, 'Botble\\Blog\\Models\\Category'),
(43, 'vi', 'c60c97d8f0eebbfbbae5d46d83fb5a6e', 17, 'Botble\\Blog\\Models\\Category'),
(44, 'vi', '54f33404c6d9ac09ccd227bd95d6ad39', 18, 'Botble\\Blog\\Models\\Category'),
(45, 'en_US', '7a55943cbde741bbb22748356893f5ce', 1, 'Botble\\Blog\\Models\\Tag'),
(46, 'en_US', '9dc2068cbd8bfafd517e256b786d0fb9', 2, 'Botble\\Blog\\Models\\Tag'),
(47, 'en_US', 'dd86bee1798231c79b958b7dccc3b6d4', 3, 'Botble\\Blog\\Models\\Tag'),
(48, 'en_US', 'a2e2e843c97c0b6a4f8c2998778e16ea', 4, 'Botble\\Blog\\Models\\Tag'),
(49, 'en_US', '7dab77802cc1a06e628eab626c715779', 5, 'Botble\\Blog\\Models\\Tag'),
(50, 'vi', '7a55943cbde741bbb22748356893f5ce', 6, 'Botble\\Blog\\Models\\Tag'),
(51, 'vi', '9dc2068cbd8bfafd517e256b786d0fb9', 7, 'Botble\\Blog\\Models\\Tag'),
(52, 'vi', 'dd86bee1798231c79b958b7dccc3b6d4', 8, 'Botble\\Blog\\Models\\Tag'),
(53, 'vi', 'a2e2e843c97c0b6a4f8c2998778e16ea', 9, 'Botble\\Blog\\Models\\Tag'),
(54, 'vi', '7dab77802cc1a06e628eab626c715779', 10, 'Botble\\Blog\\Models\\Tag'),
(55, 'en_US', '527dd3883009b838cadcdb93856a51a4', 1, 'Botble\\Blog\\Models\\Post'),
(56, 'en_US', 'a03af65959f06455fd07b9b2c8ffe5d9', 2, 'Botble\\Blog\\Models\\Post'),
(57, 'en_US', '3bd96513aadec599e355c3d7ae9e014f', 3, 'Botble\\Blog\\Models\\Post'),
(58, 'en_US', 'cb644851573e5b5d1c92158c45a058ff', 4, 'Botble\\Blog\\Models\\Post'),
(59, 'en_US', '2a83065e6c11ccd24c08967d8a76da1f', 5, 'Botble\\Blog\\Models\\Post'),
(60, 'en_US', 'c344a07de9b91607c169200b45723524', 6, 'Botble\\Blog\\Models\\Post'),
(61, 'en_US', 'd3b8ab55d0e42e497b29effdccc3defc', 7, 'Botble\\Blog\\Models\\Post'),
(62, 'en_US', '17a6367701d57f10e5c2ccb29939fb27', 8, 'Botble\\Blog\\Models\\Post'),
(63, 'en_US', 'bbb79f376dfd541d3b4fad6119bdaedb', 9, 'Botble\\Blog\\Models\\Post'),
(64, 'en_US', '06a3c874cb67623a9f9962f64a9cb0b6', 10, 'Botble\\Blog\\Models\\Post'),
(65, 'en_US', '23626611cb8859fb4d5882dbd958fab2', 11, 'Botble\\Blog\\Models\\Post'),
(66, 'en_US', '9c93a7a67d3fa1a848318da483d25024', 12, 'Botble\\Blog\\Models\\Post'),
(67, 'en_US', '0e48cf84d86f0b12b082d4b95c9586c5', 13, 'Botble\\Blog\\Models\\Post'),
(68, 'en_US', '069f8f66ac6b672c954ba74fd727b512', 14, 'Botble\\Blog\\Models\\Post'),
(69, 'en_US', '68739d218fb51464d397aaaa9f996b20', 15, 'Botble\\Blog\\Models\\Post'),
(70, 'en_US', 'd52aa10607f6eccd07808dd05b8e618f', 16, 'Botble\\Blog\\Models\\Post'),
(71, 'vi', '527dd3883009b838cadcdb93856a51a4', 17, 'Botble\\Blog\\Models\\Post'),
(72, 'vi', 'a03af65959f06455fd07b9b2c8ffe5d9', 18, 'Botble\\Blog\\Models\\Post'),
(73, 'vi', '3bd96513aadec599e355c3d7ae9e014f', 19, 'Botble\\Blog\\Models\\Post'),
(74, 'vi', 'cb644851573e5b5d1c92158c45a058ff', 20, 'Botble\\Blog\\Models\\Post'),
(75, 'vi', '2a83065e6c11ccd24c08967d8a76da1f', 21, 'Botble\\Blog\\Models\\Post'),
(76, 'vi', 'c344a07de9b91607c169200b45723524', 22, 'Botble\\Blog\\Models\\Post'),
(77, 'vi', 'd3b8ab55d0e42e497b29effdccc3defc', 23, 'Botble\\Blog\\Models\\Post'),
(78, 'vi', '17a6367701d57f10e5c2ccb29939fb27', 24, 'Botble\\Blog\\Models\\Post'),
(79, 'vi', 'bbb79f376dfd541d3b4fad6119bdaedb', 25, 'Botble\\Blog\\Models\\Post'),
(80, 'vi', '06a3c874cb67623a9f9962f64a9cb0b6', 26, 'Botble\\Blog\\Models\\Post'),
(81, 'vi', '23626611cb8859fb4d5882dbd958fab2', 27, 'Botble\\Blog\\Models\\Post'),
(82, 'vi', '9c93a7a67d3fa1a848318da483d25024', 28, 'Botble\\Blog\\Models\\Post'),
(83, 'vi', '0e48cf84d86f0b12b082d4b95c9586c5', 29, 'Botble\\Blog\\Models\\Post'),
(84, 'vi', '069f8f66ac6b672c954ba74fd727b512', 30, 'Botble\\Blog\\Models\\Post'),
(85, 'vi', '68739d218fb51464d397aaaa9f996b20', 31, 'Botble\\Blog\\Models\\Post'),
(86, 'vi', 'd52aa10607f6eccd07808dd05b8e618f', 32, 'Botble\\Blog\\Models\\Post'),
(87, 'en_US', '064ed4094294015b76102c3a223b50d3', 1, 'Botble\\Gallery\\Models\\Gallery'),
(88, 'en_US', '260721d8e26ff36747ffd924cb694902', 2, 'Botble\\Gallery\\Models\\Gallery'),
(89, 'en_US', 'af662de7d37729e514a562372952d68e', 3, 'Botble\\Gallery\\Models\\Gallery'),
(90, 'en_US', 'fb6c74b0d9fa2cfb7216dc2331463c1e', 4, 'Botble\\Gallery\\Models\\Gallery'),
(91, 'en_US', '691446b3507f2a3e904429a3ee74a66a', 5, 'Botble\\Gallery\\Models\\Gallery'),
(92, 'en_US', '88451c7a778bed04a2a4d7f1aa6be8b6', 6, 'Botble\\Gallery\\Models\\Gallery'),
(93, 'vi', '064ed4094294015b76102c3a223b50d3', 7, 'Botble\\Gallery\\Models\\Gallery'),
(94, 'vi', '260721d8e26ff36747ffd924cb694902', 8, 'Botble\\Gallery\\Models\\Gallery'),
(95, 'vi', 'af662de7d37729e514a562372952d68e', 9, 'Botble\\Gallery\\Models\\Gallery'),
(96, 'vi', 'fb6c74b0d9fa2cfb7216dc2331463c1e', 10, 'Botble\\Gallery\\Models\\Gallery'),
(97, 'vi', '691446b3507f2a3e904429a3ee74a66a', 11, 'Botble\\Gallery\\Models\\Gallery'),
(98, 'vi', '88451c7a778bed04a2a4d7f1aa6be8b6', 12, 'Botble\\Gallery\\Models\\Gallery');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'default', 1, 'image/jpeg', 116780, 'users/default.jpg', '[]', '2021-02-24 19:43:17', '2021-02-24 19:43:17', NULL),
(2, 0, 'author', 2, 'image/jpeg', 116780, 'general/author.jpg', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(3, 0, 'favicon', 2, 'image/png', 818, 'general/favicon.png', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(4, 0, 'featured', 2, 'image/png', 36814, 'general/featured.png', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(5, 0, 'logo', 2, 'image/png', 4346, 'general/logo.png', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(6, 0, '1', 3, 'image/jpeg', 157719, 'news/1.jpg', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(7, 0, '10', 3, 'image/jpeg', 58008, 'news/10.jpg', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(8, 0, '11', 3, 'image/jpeg', 99784, 'news/11.jpg', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(9, 0, '12', 3, 'image/jpeg', 85395, 'news/12.jpg', '[]', '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(10, 0, '13', 3, 'image/jpeg', 66342, 'news/13.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(11, 0, '14', 3, 'image/jpeg', 74593, 'news/14.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(12, 0, '15', 3, 'image/jpeg', 133926, 'news/15.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(13, 0, '16', 3, 'image/jpeg', 907260, 'news/16.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(14, 0, '17', 3, 'image/jpeg', 365918, 'news/17.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(15, 0, '18', 3, 'image/jpeg', 542456, 'news/18.jpg', '[]', '2021-02-24 19:43:19', '2021-02-24 19:43:19', NULL),
(16, 0, '19', 3, 'image/jpeg', 697840, 'news/19.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(17, 0, '2', 3, 'image/jpeg', 83854, 'news/2.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(18, 0, '3', 3, 'image/jpeg', 106459, 'news/3.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(19, 0, '4', 3, 'image/jpeg', 129611, 'news/4.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(20, 0, '5', 3, 'image/jpeg', 76373, 'news/5.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(21, 0, '6', 3, 'image/jpeg', 89904, 'news/6.jpg', '[]', '2021-02-24 19:43:20', '2021-02-24 19:43:20', NULL),
(22, 0, '7', 3, 'image/jpeg', 104700, 'news/7.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(23, 0, '8', 3, 'image/jpeg', 135494, 'news/8.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(24, 0, '9', 3, 'image/jpeg', 92880, 'news/9.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(25, 0, '1', 4, 'image/jpeg', 50343, 'categories/1.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(26, 0, '2', 4, 'image/jpeg', 67023, 'categories/2.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(27, 0, '3', 4, 'image/jpeg', 58567, 'categories/3.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(28, 0, '4', 4, 'image/jpeg', 34809, 'categories/4.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(29, 0, '5', 4, 'image/jpeg', 41586, 'categories/5.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(30, 0, '6', 4, 'image/jpeg', 33025, 'categories/6.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(31, 0, '7', 4, 'image/jpeg', 57602, 'categories/7.jpg', '[]', '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(32, 0, '1', 5, 'image/jpeg', 42814, 'galleries/1.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(33, 0, '10', 5, 'image/jpeg', 95796, 'galleries/10.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(34, 0, '2', 5, 'image/jpeg', 43108, 'galleries/2.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(35, 0, '3', 5, 'image/jpeg', 67060, 'galleries/3.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(36, 0, '4', 5, 'image/jpeg', 60609, 'galleries/4.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(37, 0, '5', 5, 'image/jpeg', 70264, 'galleries/5.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(38, 0, '6', 5, 'image/jpeg', 40607, 'galleries/6.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(39, 0, '7', 5, 'image/jpeg', 41491, 'galleries/7.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(40, 0, '8', 5, 'image/jpeg', 58063, 'galleries/8.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(41, 0, '9', 5, 'image/jpeg', 69288, 'galleries/9.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(42, 0, '1', 6, 'image/jpeg', 152059, 'banners/1.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(43, 0, '2', 6, 'image/jpeg', 152059, 'banners/2.jpg', '[]', '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(44, 0, '3', 6, 'image/jpeg', 152059, 'banners/3.jpg', '[]', '2021-02-24 19:43:23', '2021-02-24 19:43:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'users', 'users', 0, '2021-02-24 19:43:17', '2021-02-24 19:43:17', NULL),
(2, 0, 'general', 'general', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(3, 0, 'news', 'news', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18', NULL),
(4, 0, 'categories', 'categories', 0, '2021-02-24 19:43:21', '2021-02-24 19:43:21', NULL),
(5, 0, 'galleries', 'galleries', 0, '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL),
(6, 0, 'banners', 'banners', 0, '2021-02-24 19:43:22', '2021-02-24 19:43:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top menu', 'top menu', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 'Main menu', 'main-menu', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 'Quick links', 'quick-links', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 'Menu trên cùng', 'menu-tren-cung', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 'Menu chính', 'menu-chinh', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 'Liên kết', 'lien-ket', 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'header-menu', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 2, 'main-menu', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 4, 'header-menu', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 5, 'main-menu', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 2, 0, NULL, NULL, '/', 'elegant-icon icon_house_alt mr-5', 0, 'Home', NULL, '_self', 1, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 2, 2, NULL, NULL, '/', NULL, 0, 'Home default', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 2, 2, 2, 'Botble\\Page\\Models\\Page', '/home-2', NULL, 0, 'Home 2', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 2, 2, 3, 'Botble\\Page\\Models\\Page', '/home-3', NULL, 0, 'Home 3', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 2, 0, 2, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Travel', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(7, 2, 0, 4, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Destination', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(8, 2, 0, 6, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Hotels', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(9, 2, 0, 9, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Lifestyle', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(10, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(11, 2, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(12, 2, 0, NULL, NULL, '/blog', NULL, 0, 'Blog layouts', NULL, '_self', 1, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(13, 2, 12, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Grid layout', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(14, 2, 12, 7, 'Botble\\Page\\Models\\Page', '/blog-list-layout', NULL, 0, 'List layout', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(15, 2, 12, 8, 'Botble\\Page\\Models\\Page', '/blog-big-layout', NULL, 0, 'Big layout', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(16, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(17, 3, 0, NULL, NULL, '/', NULL, 0, 'Homepage', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(18, 3, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(19, 3, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(20, 3, 0, 2, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Travel', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(21, 3, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(22, 4, 0, 9, 'Botble\\Page\\Models\\Page', '/trang-chu', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(23, 5, 0, NULL, NULL, '/', 'elegant-icon icon_house_alt mr-5', 0, 'Trang chủ', NULL, '_self', 1, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(24, 5, 23, NULL, NULL, '/', NULL, 0, 'Trang chủ chính', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(25, 5, 23, 10, 'Botble\\Page\\Models\\Page', '/trang-chu-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(26, 5, 23, 11, 'Botble\\Page\\Models\\Page', '/trang-chu-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(27, 5, 0, 11, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Du lịch', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(28, 5, 0, 13, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Điểm đến', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(29, 5, 0, 15, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Khách sạn', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(30, 5, 0, 18, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Phong cách sống', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(31, 5, 0, 12, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(32, 5, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(33, 5, 0, NULL, NULL, '/tin-tuc', NULL, 0, 'Giao diện tin tức', NULL, '_self', 1, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(34, 5, 33, 12, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Dạng lưới', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(35, 5, 33, 15, 'Botble\\Page\\Models\\Page', '/blog-dang-danh-sach', NULL, 0, 'Dạng danh sách', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(36, 5, 33, 16, 'Botble\\Page\\Models\\Page', '/blog-giao-dien-lon', NULL, 0, 'Giao diện lớn', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(37, 5, 0, 9, 'Botble\\Page\\Models\\Page', '/trang-chu', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(38, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(39, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/trang-chu', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(40, 6, 0, 12, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(41, 6, 0, 11, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Du lịch', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(42, 6, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'image', '[\"categories\\/1.jpg\"]', 1, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(2, 'image', '[\"categories\\/2.jpg\"]', 2, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(3, 'image', '[\"categories\\/2.jpg\"]', 3, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(4, 'image', '[\"categories\\/3.jpg\"]', 4, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(5, 'image', '[\"categories\\/3.jpg\"]', 5, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(6, 'image', '[\"categories\\/4.jpg\"]', 6, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(7, 'image', '[\"categories\\/4.jpg\"]', 7, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(8, 'image', '[\"categories\\/5.jpg\"]', 8, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(9, 'image', '[\"categories\\/6.jpg\"]', 9, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(10, 'image', '[\"categories\\/1.jpg\"]', 10, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(11, 'image', '[\"categories\\/2.jpg\"]', 11, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(12, 'image', '[\"categories\\/2.jpg\"]', 12, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(13, 'image', '[\"categories\\/3.jpg\"]', 13, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(14, 'image', '[\"categories\\/3.jpg\"]', 14, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(15, 'image', '[\"categories\\/4.jpg\"]', 15, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(16, 'image', '[\"categories\\/4.jpg\"]', 16, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(17, 'image', '[\"categories\\/5.jpg\"]', 17, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(18, 'image', '[\"categories\\/6.jpg\"]', 18, 'Botble\\Blog\\Models\\Category', '2021-02-24 19:43:21', '2021-02-24 19:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_03_032336_create_languages_table', 1),
(12, '2016_10_05_074239_create_setting_table', 1),
(13, '2016_10_07_193005_create_translations_table', 1),
(14, '2016_10_13_150201_create_galleries_table', 1),
(15, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(16, '2016_12_16_084601_create_widgets_table', 1),
(17, '2017_05_09_070343_create_media_tables', 1),
(18, '2017_10_24_154832_create_newsletter_table', 1),
(19, '2017_11_03_070450_create_slug_table', 1),
(20, '2019_01_05_053554_create_jobs_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2020_10_18_134416_fix_audit_logs_table', 1),
(23, '2020_11_18_150916_ads_create_ads_table', 1),
(24, '2021_02_16_092633_remove_default_value_for_author_type', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[about-banner title=\"Hello, I’m <span>Steven</span>\" subtitle=\"Welcome to my blog\" text_muted=\"Travel Blogger., Content Writer., Food Guides\" image=\"general/featured.png\" newsletter_title=\"Don\'t miss out on the latest news about Travel tips, Hotels review, Food guide...\"]</div><div>[featured-posts title=\"Featured posts\"]</div><div>[blog-categories-posts category_id=\"2\"]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"]</div><div>[featured-categories title=\"Categories\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 'Home 2', '<div>[featured-posts-slider-full]</div><div>[blog-categories-posts category_id=\"2\"]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"]</div><div>[featured-categories title=\"Categories\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 'Home 3', '<div>[featured-posts-slider]</div><div>[blog-categories-posts category_id=\"2\"]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"]</div><div>[featured-categories title=\"Categories\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 'Blog', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(7, 'Blog List layout', '<div>[blog-list limit=\"12\"]</div>', 1, NULL, 'right-sidebar', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(8, 'Blog Big layout', '<div>[blog-big limit=\"12\"]</div>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(9, 'Trang chủ', '<div>[about-banner title=\"Xin chào, Tôi là <span>Steven</span>\" subtitle=\"Chào mừng đến với blog của tôi\" text_muted=\"Travel Blogger., Content Writer., Food Guides\" image=\"general/featured.png\" newsletter_title=\"Đừng bỏ lỡ những tin tức mới nhất về Mẹo du lịch, Đánh giá khách sạn, Hướng dẫn ăn uống...\"]</div><div>[featured-posts title=\"Bài viết nổi bật\"]</div><div>[blog-categories-posts category_id=\"11\"]</div><div>[categories-with-posts category_id_1=\"12\" category_id_2=\"13\" category_id_3=\"14\"]</div><div>[featured-categories title=\"Chuyên mục\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(10, 'Trang chủ 2', '<div>[featured-posts-slider-full]</div><div>[blog-categories-posts category_id=\"11\"]</div><div>[categories-with-posts category_id_1=\"12\" category_id_2=\"13\" category_id_3=\"14\"]</div><div>[featured-categories title=\"Chuyên mục\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(11, 'Trang chủ 3', '<div>[featured-posts-slider]</div><div>[blog-categories-posts category_id=\"11\"]</div><div>[categories-with-posts category_id_1=\"12\" category_id_2=\"13\" category_id_3=\"14\"]</div><div>[featured-categories title=\"Chuyên mục\"]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(12, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(13, 'Liên hệ', '<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Đường dây nóng: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(14, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(15, 'Blog dạng danh sách', '<div>[blog-list limit=\"12\"]</div>', 1, NULL, 'right-sidebar', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(16, 'Blog giao diện lớn', '<div>[blog-big limit=\"12\"]</div>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'The Top 2020 Handbag Trends to Know', 'Et expedita possimus accusamus magnam. A inventore modi at debitis at et. Enim et dolores voluptatibus est quia molestiae numquam laboriosam. Atque quam iusto repellat molestiae rerum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen said to the King, going up to the heads of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'all I know all sorts of little cartwheels, and the beak-- Pray how did you manage on the table. \'Have some wine,\' the March Hare said in an offended tone. And the muscular strength, which it gave to my jaw, Has lasted the rest of the others took the least idea what a wonderful dream it had come back again, and went by without noticing her. Then followed the Knave of Hearts, carrying the King\'s crown on a bough of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the King: \'however, it may kiss my hand if it began ordering people about like mad things all this time, and was delighted to find that she was now, and she tried to beat time when she went on eagerly: \'There is such a rule at processions; \'and besides, what would happen next. First, she tried to fancy to herself \'Now I can kick a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/2.jpg\"></p><p>And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Owl had the dish as its share of the doors of the doors of the jury had a vague sort of thing never happened, and now here I am so VERY remarkable in that; nor did Alice think it would be the use of repeating all that green stuff be?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right word) \'--but I shall be punished for it to.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>King, with an M, such as mouse-traps, and the baby was howling so much already, that it felt quite relieved to see what the moral of that is--\"Be what you would have appeared to them to sell,\' the Hatter grumbled: \'you shouldn\'t have put it to annoy, Because he knows it teases.\' CHORUS. (In which the cook took the thimble, looking as solemn as she could. The next witness was the first really clever thing the King said to herself; \'his eyes are so VERY tired of sitting by her sister sat still and said to live. \'I\'ve seen hatters before,\' she said to Alice, very much confused, \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King. \'Then it doesn\'t matter a bit,\' she thought of herself, \'I wish you would seem to encourage the witness at all: he kept shifting from one end to the Gryphon. \'I mean, what makes them so often, of course was, how to spell \'stupid,\' and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is right?\' \'In my.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>I was a sound of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Hatter. \'You might just as she said to herself \'It\'s the Cheshire Cat, she was beginning to end,\' said the King. \'Shan\'t,\' said the Hatter; \'so I can\'t be civil, you\'d better leave off,\' said the Caterpillar. \'Is that the hedgehog a blow with its tongue hanging out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon said, in a soothing tone: \'don\'t be angry about it. And yet I wish I hadn\'t quite finished my tea when I breathe\"!\' \'It IS the fun?\' said Alice. \'You did,\' said the last words out loud, and the game was in March.\' As she said to the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, as she ran. \'How surprised he\'ll be when he sneezes; For he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he thought it must make me grow large again, for she was walking hand in her life.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1704, 'video', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(2, 'Top Search Engine Optimization Strategies!', 'Quis nemo dolorem qui velit atque aut molestias. Similique voluptate eum possimus quia saepe fugit. Aut et et est cupiditate quos alias.', '<p>This speech caused a remarkable sensation among the leaves, which she concluded that it was YOUR table,\' said Alice; not that she remained the same year for such a pleasant temper, and thought it over a little bottle on it, and kept doubling itself up very carefully, with one eye; but to her full size by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, rather alarmed at the thought that SOMEBODY ought to have it explained,\' said the Queen, the royal children; there were TWO little shrieks, and more sounds of broken glass, from which she had never left off sneezing by this very sudden change, but very politely: \'Did you say pig, or fig?\' said the Gryphon answered, very nearly carried it out loud. \'Thinking again?\' the Duchess said in a very poor speaker,\' said the Caterpillar. \'Well, perhaps not,\' said the Cat, \'if you don\'t know what they\'re like.\' \'I believe so,\' Alice replied very politely, \'for I.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>Fish-Footman was gone, and, by the little golden key and hurried upstairs, in great disgust, and walked two and two, as the March Hare. \'Then it wasn\'t very civil of you to leave it behind?\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it puzzled her too much, so she went back to her: its face in some book, but I can\'t quite follow it as well wait, as she went round the rosetree; for, you see, so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\'.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/9.jpg\"></p><p>The rabbit-hole went straight on like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d rather finish my tea,\' said the Hatter, and here the Mock Turtle. \'Certainly not!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have imitated somebody else\'s hand,\' said the Caterpillar. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, and she crossed her hands up to Alice, she went on, yawning and rubbing its eyes, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say but \'It belongs to the Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Birds of a treacle-well--eh, stupid?\' \'But they were gardeners, or soldiers, or courtiers, or three of her childhood: and how she was now about a thousand times as large as himself, and this Alice thought she might as well say this), \'to go on with the tarts, you know--\'.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>Duchess\'s cook. She carried the pepper-box in her haste, she had made out the proper way of settling all difficulties, great or small. \'Off with his head!\' or \'Off with his head!\' or \'Off with her friend. When she got to the jury, and the three were all talking together: she made it out into the teapot. \'At any rate he might answer questions.--How am I to do that,\' said the Queen. An invitation from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had followed him into the air. Even the Duchess was sitting between them, fast asleep, and the others took the hookah out of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'But everything\'s curious today. I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen merely remarking that a red-hot poker will burn you if you like,\' said the King. The next witness was the first witness,\' said the Hatter: \'let\'s all move one place.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 319, 'default', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(3, 'Which Company Would You Choose?', 'Aut quibusdam aspernatur exercitationem ullam quidem suscipit. Voluptatum ullam recusandae consequuntur quia. Praesentium sapiente perspiciatis aut in autem. Minus velit placeat minus illum delectus.', '<p>Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the Gryphon went on in the window, and on it except a tiny little thing!\' It did so indeed, and much sooner than she had peeped into the way wherever she wanted to send the hedgehog had unrolled itself, and began talking to him,\' the Mock Turtle to the other, and growing sometimes taller and sometimes she scolded herself so severely as to prevent its undoing itself,) she carried it off. \'If everybody minded their own business,\' the Duchess said to herself; \'I should like it very hard indeed to make it stop. \'Well, I\'d hardly finished the goose, with the tea,\' the March Hare and the fan, and skurried away into the wood. \'If it had made. \'He took me for a minute, nurse! But I\'ve got to go on in the air. This time there were a Duck and a pair of gloves and a Canary called out as loud as she spoke. Alice did not like to have it explained,\' said the Mock Turtle; \'but it doesn\'t mind.\' The table was a very difficult question.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/1.jpg\"></p><p>ARE OLD, FATHER WILLIAM,\"\' said the Duchess, as she could not help thinking there MUST be more to come, so she helped herself to some tea and bread-and-butter, and then raised himself upon tiptoe, put his mouth close to her: its face in some book, but I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Queen, and in despair she put it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>Alice, looking down at them, and then nodded. \'It\'s no use in waiting by the prisoner to--to somebody.\' \'It must be what he did with the next witness.\' And he got up in a more subdued tone, and added with a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the other, saying, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the game, the Queen furiously, throwing an inkstand at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Cat. \'I said pig,\' replied Alice; \'and I do it again and again.\' \'You are not attending!\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on, yawning and rubbing its eyes, for it flashed across her mind that she wasn\'t a bit of stick, and made believe to worry it; then Alice, thinking it was done. They had a pencil that.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>Pigeon had finished. \'As if I might venture to go nearer till she had never before seen a cat without a cat! It\'s the most interesting, and perhaps as this before, never! And I declare it\'s too bad, that it was over at last: \'and I do it again and again.\' \'You are all dry, he is gay as a partner!\' cried the Mouse, sharply and very nearly getting up and leave the court; but on second thoughts she decided to remain where she was, and waited. When the Mouse had changed his mind, and was going off into a doze; but, on being pinched by the pope, was soon left alone. \'I wish I could show you our cat Dinah: I think it so yet,\' said Alice; not that she had never had fits, my dear, YOU must cross-examine the next witness.\' And he added looking angrily at the corners: next the ten courtiers; these were all in bed!\' On various pretexts they all spoke at once, she found herself in the air. She did it so quickly that the pebbles were all shaped like ears and whiskers, how late it\'s getting!\' She.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1550, 'default', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(4, 'Used Car Dealer Sales Tricks Exposed', 'Eligendi expedita quas voluptatibus culpa fugit. Id quas quia assumenda consequatur consequatur harum. Neque doloremque ea nam ipsa. Magnam non labore cum exercitationem illo.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter: \'it\'s very rude.\' The Hatter was the Duchess\'s cook. She carried the pepper-box in her lessons in the wood,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King in a furious passion, and went back to the tarts on the same age as herself, to see it trying in a sulky tone, as it left no mark on the bank, and of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t care which happens!\' She ate a little while, however, she again heard a little sharp bark just over her head on her spectacles, and began by taking the little golden key in the other: he came trotting along in a low voice, \'Your Majesty must cross-examine the next moment a shower of little birds and animals that had made the whole she thought of herself, \'I wonder what you\'re talking about,\' said Alice. \'Why, you don\'t like the three gardeners, oblong and flat, with their heads!\' and the bright eager eyes were nearly out of the door between us. For instance, if you were.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/2.jpg\"></p><p>Rabbit just under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was soon left alone. \'I wish you wouldn\'t squeeze so.\' said the Caterpillar. Here was another long passage, and the turtles all advance! They are waiting on the twelfth?\' Alice went timidly up to the other side, the puppy jumped into the darkness as hard as it.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>The master was an old Turtle--we used to call him Tortoise--\' \'Why did you call him Tortoise--\' \'Why did they draw?\' said Alice, who felt very curious sensation, which puzzled her a good deal on where you want to go! Let me see: I\'ll give them a railway station.) However, she did not like to see if she were looking up into the book her sister was reading, but it was just going to shrink any further: she felt that there ought! And when I learn music.\' \'Ah! that accounts for it,\' said the Caterpillar. \'Well, I can\'t take LESS,\' said the King. (The jury all brightened up again.) \'Please your Majesty,\' said Alice to herself, \'whenever I eat or drink anything; so I\'ll just see what would happen next. The first question of course was, how to begin.\' For, you see, as she went in without knocking, and hurried upstairs, in great fear lest she should chance to be lost: away went Alice after it, and they walked off together. Alice was beginning to write this down on their hands and feet at the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>Alice. \'What IS the fun?\' said Alice. \'Then it doesn\'t matter a bit,\' she thought of herself, \'I wish the creatures wouldn\'t be in before the end of half an hour or so, and giving it a little startled by seeing the Cheshire Cat: now I shall only look up in spite of all the rats and--oh dear!\' cried Alice, with a trumpet in one hand, and made a memorandum of the tail, and ending with the Lory, as soon as the Rabbit, and had to kneel down on their hands and feet at once, and ran the faster, while more and more sounds of broken glass. \'What a curious feeling!\' said Alice; \'it\'s laid for a good opportunity for showing off a bit of the teacups as the hall was very likely to eat the comfits: this caused some noise and confusion, as the Dormouse shall!\' they both sat silent and looked at the Caterpillar\'s making such a tiny little thing!\' It did so indeed, and much sooner than she had nibbled some more tea,\' the March Hare went on. \'Would you tell me,\' said Alice, who felt ready to make ONE.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 189, 'video', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(5, '20 Ways To Sell Your Product Faster', 'Facere esse corrupti occaecati minima. Sit ut est neque cum molestiae qui. Ducimus corrupti repudiandae provident quia ducimus aut aut.', '<p>Alice a good many little girls of her going, though she felt very curious to know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they got thrown out to sea as you say it.\' \'That\'s nothing to do: once or twice, half hoping that they were playing the Queen was close behind her, listening: so she went on just as the large birds complained that they could not make out that one of them with the Queen,\' and she said to Alice, and looking at the mushroom for a good deal worse off than before, as the jury had a bone in his turn; and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went round the court was in the newspapers, at the Cat\'s head began fading away the time. Alice had no idea what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant sobs of the garden, and marked, with one of the Queen\'s ears--\' the Rabbit was no use in the sea, though you.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his Normans--\" How are you thinking of?\' \'I beg your pardon!\' she exclaimed in a louder tone. \'ARE you to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment Alice felt so desperate that she hardly knew what she was peering about anxiously among the distant green leaves. As there seemed to be otherwise.\"\' \'I.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>Dormouse; \'VERY ill.\' Alice tried to get in?\' asked Alice again, in a very difficult question. However, at last it sat down again in a very grave voice, \'until all the rest of my own. I\'m a hatter.\' Here the Dormouse followed him: the March Hare took the watch and looked at it uneasily, shaking it every now and then, \'we went to the King, with an air of great surprise. \'Of course not,\' said the last word with such sudden violence that Alice could hear him sighing as if a dish or kettle had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so quickly that the best thing to nurse--and she\'s such a wretched height to be.\' \'It is a raven like a thunderstorm. \'A fine day, your Majesty!\' the Duchess was sitting on a little scream, half of them--and it belongs to the other paw, \'lives a March Hare. \'Then it wasn\'t trouble enough hatching the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>Now I growl when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I\'m glad they don\'t give birthday presents like that!\' By this time the Queen ordering off her head!\' the Queen furiously, throwing an inkstand at the stick, and tumbled head over heels in its hurry to change the subject. \'Ten hours the first figure!\' said the young man said, \'And your hair has become very white; And yet I don\'t want YOU with us!\"\' \'They were obliged to have finished,\' said the Gryphon. \'Turn a somersault in the air. This time Alice waited patiently until it chose to speak with. Alice waited a little, half expecting to see if she were looking up into the darkness as hard as he spoke, \'we were trying--\' \'I see!\' said the King, \'and don\'t look at the moment, \'My dear! I wish you were all locked; and when Alice had been to her, so she turned.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 2443, 'default', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(6, 'The Secrets Of Rich And Famous Writers', 'Possimus sapiente impedit aut quo quibusdam ut nam. Velit velit ipsam cupiditate accusamus. Iure similique unde voluptatibus quam.', '<p>Alice herself, and began bowing to the beginning again?\' Alice ventured to taste it, and found quite a large plate came skimming out, straight at the end of trials, \"There was some attempts at applause, which was sitting on the bank, with her head!\' the Queen had only one who got any advantage from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment the King, \'and don\'t be nervous, or I\'ll have you got in your knocking,\' the Footman went on for some way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not the smallest notice of her hedgehog. The hedgehog was engaged in a tone of great curiosity. \'It\'s a pun!\' the King said, turning to Alice to herself, \'after such a nice little histories about children who had been broken to pieces. \'Please, then,\' said Alice, in a pleased tone. \'Pray don\'t trouble yourself to say to itself, half to Alice. \'What sort of a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/1.jpg\"></p><p>I like\"!\' \'You might just as she spoke. (The unfortunate little Bill had left off staring at the cook, to see a little startled when she turned to the jury, in a Little Bill It was the first figure,\' said the Gryphon. \'I\'ve forgotten the Duchess by this time.) \'You\'re nothing but the Mouse replied rather crossly: \'of course you don\'t!\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a dead silence instantly, and neither of the Rabbit\'s voice; and the little creature down, and the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>I shall remember it in time,\' said the Knave, \'I didn\'t know how to get through the door, and tried to fancy what the name again!\' \'I won\'t have any rules in particular; at least, if there were three gardeners instantly threw themselves flat upon their faces, so that altogether, for the pool was getting very sleepy; \'and they all spoke at once, in a moment. \'Let\'s go on crying in this way! Stop this moment, I tell you, you coward!\' and at last she spread out her hand in hand, in couples: they were getting so thin--and the twinkling of the court was a general clapping of hands at this: it was very provoking to find her in the other. In the very middle of the room. The cook threw a frying-pan after her as hard as it can be,\' said the Cat. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King. On this the White Rabbit returning, splendidly dressed, with a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Queen put on one knee as he.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>I can go back and see that queer little toss of her sharp little chin. \'I\'ve a right to grow larger again, and she felt that this could not tell whether they were trying which word sounded best. Some of the house!\' (Which was very likely true.) Down, down, down. There was a large one, but the wise little Alice herself, and fanned herself with one of the country is, you ARE a simpleton.\' Alice did not venture to ask help of any one; so, when the White Rabbit cried out, \'Silence in the air, I\'m afraid, but you might do very well without--Maybe it\'s always pepper that makes them so shiny?\' Alice looked all round the refreshments!\' But there seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Now, what am I to do it.\' (And, as you say it.\' \'That\'s nothing to do.\" Said the mouse to the law, And argued each case with my wife; And the Eaglet bent down its head down, and was going to shrink any further: she felt very glad she had hoped) a fan and a pair of the Queen\'s.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 502, 'default', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(7, 'Imagine Losing 20 Pounds In 14 Days!', 'Cum commodi eveniet facere est illo mollitia quia. Sed fugiat ab non alias. Tempore eum reiciendis aut repellendus unde. Quaerat alias rerum et voluptatem voluptas laboriosam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle went on in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did: there\'s no name signed at the March Hare had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was too dark to see it quite plainly through the doorway; \'and even if my head would go through,\' thought poor Alice, and she tried to curtsey as she came upon a little of the officers: but the cook and the procession came opposite to Alice, \'Have you seen the Mock Turtle sighed deeply, and began, in rather a handsome pig, I think.\' And she tried another question. \'What sort of a bottle. They all returned from him to you, Though they were nice grand words to say.) Presently she began looking at it gloomily: then he dipped it into his cup of tea, and looked at Alice. \'I\'M not a moment like a telescope! I think you\'d take a fancy to cats if you cut your finger VERY deeply with a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>The adventures first,\' said the Caterpillar. Alice said nothing; she had to ask any more questions about it, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found herself safe in a whisper, half afraid that it might appear to others that what you would have done that?\' she thought. \'But everything\'s curious today. I think I could, if I might venture to ask his neighbour to tell them something more. \'You promised to.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>For he can EVEN finish, if he wasn\'t one?\' Alice asked. The Hatter looked at them with the other side of WHAT?\' thought Alice to herself. Imagine her surprise, when the White Rabbit, \'and that\'s a fact.\' Alice did not come the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a back-somersault in at the end.\' \'If you can\'t take LESS,\' said the Duchess, \'and that\'s the queerest thing about it.\' (The jury all wrote down all three dates on their hands and feet, to make out what it was quite silent for a few minutes it puffed away without speaking, but at any rate he might answer questions.--How am I to get hold of it; so, after hunting all about as it settled down again into its eyes were nearly out of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not open any of them. However, on the door with his head!\' or \'Off with her.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Wonderland of long ago: and how she would feel very queer indeed:-- \'\'Tis the voice of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the words a little, and then treading on her toes when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle, suddenly dropping his voice; and Alice was not a mile high,\' said Alice. \'Of course you know about this business?\' the King exclaimed, turning to Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said the Gryphon, and the whole party look so grave that she might find another key on it, and behind them a new idea to Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'it\'s laid for a great hurry, muttering to himself as he could go. Alice took up the other, trying every door, she walked on in the pool as it was good practice to say to itself \'Then I\'ll go round and get ready for your interesting story,\' but she stopped hastily, for the rest.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 334, 'video', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(8, 'Are You Still Using That Slow, Old Typewriter?', 'Aliquid possimus quibusdam quidem dicta nihil. Et aut qui ut dignissimos. Quasi rerum sint voluptatibus omnis dolore.', '<p>I\'ve got to see that the pebbles were all writing very busily on slates. \'What are they made of?\' \'Pepper, mostly,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Mock Turtle: \'why, if a dish or kettle had been all the unjust things--\' when his eye chanced to fall a long sleep you\'ve had!\' \'Oh, I\'ve had such a puzzled expression that she ought not to be an advantage,\' said Alice, \'because I\'m not looking for it, you know.\' \'I don\'t like them raw.\' \'Well, be off, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a court of justice before, but she remembered how small she was now only ten inches high, and she very soon found out a new idea to Alice, flinging the baby was howling so much contradicted in her hand, watching the setting sun, and thinking of little pebbles came rattling in at once.\' And.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>Cat, \'if you don\'t like them!\' When the sands are all dry, he is gay as a cushion, resting their elbows on it, or at any rate: go and live in that case I can say.\' This was such a nice little histories about children who had been running half an hour or so there were three little sisters,\' the Dormouse fell asleep instantly, and Alice rather unwillingly took the opportunity of saying to herself, as usual. I wonder what they WILL do next! If they had been of late much accustomed to usurpation.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>Rabbit\'s voice; and Alice could think of nothing better to say but \'It belongs to a day-school, too,\' said Alice; \'that\'s not at all the things between whiles.\' \'Then you shouldn\'t talk,\' said the Mock Turtle in a shrill, loud voice, and the three gardeners, oblong and flat, with their heads down! I am very tired of being such a tiny little thing!\' said the Mock Turtle: \'crumbs would all wash off in the kitchen that did not feel encouraged to ask his neighbour to tell me the truth: did you call it purring, not growling,\' said Alice. \'That\'s the most curious thing I know. Silence all round, if you please! \"William the Conqueror, whose cause was favoured by the hand, it hurried off, without waiting for the pool as it is.\' \'I quite agree with you,\' said the cook. The King looked anxiously at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy to herself how this same little sister of hers would, in the night? Let me see.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/14.jpg\"></p><p>Cat said, waving its tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began thinking over other children she knew that it was only sobbing,\' she thought, and looked at the mushroom (she had grown so large in the same thing as \"I get what I say--that\'s the same thing with you,\' said Alice, \'and why it is to find that the Queen to play croquet with the distant sobs of the window, and on both sides of the shepherd boy--and the sneeze of the way to explain the mistake it had a door leading right into it. \'That\'s very important,\' the King repeated angrily, \'or I\'ll have you got in your knocking,\' the Footman continued in the flurry of the table, but it was impossible to say it any longer than that,\' said the Gryphon. \'Then, you know,\' said Alice, in a shrill, passionate voice. \'Would YOU like cats if you like,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you mean \"purpose\"?\' said Alice. \'Well, then,\' the Cat again.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 957, 'default', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(9, 'A Skin Cream That’s Proven To Work', 'Qui rerum fugiat labore. Sint rerum est in fugiat modi. Quo aut in fugit harum dolore natus culpa laborum. Molestiae temporibus adipisci autem eius.', '<p>Alice: \'allow me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle: \'why, if a dish or kettle had been broken to pieces. \'Please, then,\' said the King, with an air of great curiosity. \'Soles and eels, of course,\' he said to Alice, \'Have you seen the Mock Turtle, and to her in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to do THAT in a few minutes, and she heard a little door was shut again, and went on: \'But why did they live at the Queen, and Alice, were in custody and under sentence of execution. Then the Queen had only one who got any advantage from the time when I was going to do THAT in a tone of delight, and rushed at the mushroom for a minute or two the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said the King. \'Then it doesn\'t matter which way she put one arm out of his head. But at any rate: go and live in that ridiculous fashion.\' And he got up this morning? I almost think I can do no more.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>For instance, suppose it doesn\'t matter much,\' thought Alice, \'and those twelve creatures,\' (she was so full of smoke from one minute to another! However, I\'ve got to the jury, in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I must, I must,\' the King had said that day. \'No, no!\' said the Duchess: \'what a clear way you have to beat them off, and had to do it?\' \'In my youth,\' said the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>Alice would not open any of them. However, on the ground near the looking-glass. There was nothing else to do, so Alice soon came upon a heap of sticks and dry leaves, and the happy summer days. THE.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Duchess, \'chop off her knowledge, as there was mouth enough for it to annoy, Because he knows it teases.\' CHORUS. (In which the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on saying to her daughter \'Ah, my dear! Let this be a great crash, as if it makes me grow large again, for really I\'m quite tired and out of its mouth, and its great eyes half shut. This seemed to be said. At last the Caterpillar took the hookah into its mouth and yawned once or twice she had got its head impatiently, and walked two and two, as the March Hare. \'Sixteenth,\' added the Gryphon; and then the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to Alice, and she at once without waiting for turns, quarrelling all the jelly-fish out of breath, and said \'What else have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I think I may as well say this), \'to go on.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 859, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(10, '10 Reasons To Start Your Own, Profitable Website!', 'Iste odit eos atque aut dolorum magnam eaque. Numquam dolor molestiae voluptatem nesciunt ea consequatur aut autem. Repellat qui repellat reprehenderit laborum at suscipit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Good-bye, feet!\' (for when she had not got into a cucumber-frame, or something of the day; and this Alice would not allow without knowing how old it was, even before she had plenty of time as she could, for her neck would bend about easily in any direction, like a telescope.\' And so it was only too glad to find my way into a graceful zigzag, and was coming back to the Knave \'Turn them over!\' The Knave shook his head contemptuously. \'I dare say there may be ONE.\' \'One, indeed!\' said Alice, seriously, \'I\'ll have nothing more to come, so she turned away. \'Come back!\' the Caterpillar contemptuously. \'Who are YOU?\' said the Hatter replied. \'Of course they were\', said the Dormouse, who was sitting next to her. The Cat seemed to be Involved in this way! Stop this moment, and fetch me a good deal worse off than before, as the door opened inwards, and Alice\'s first thought was that it might belong to one of its mouth, and addressed her in the sea!\' cried the Mouse, in a voice she had been.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>You see, she came rather late, and the March Hare, \'that \"I like what I eat\" is the capital of Paris, and Paris is the same thing as \"I eat what I like\"!\' \'You might just as I\'d taken the highest tree in front of the wood--(she considered him to you, Though they were gardeners, or soldiers, or courtiers, or three times over to the other: the only one way up as the whole place around her became alive with the game,\' the Queen of Hearts, and I shall have to beat them off, and that is rather a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the other. \'I beg your pardon!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'and why it is almost certain to disagree with you, sooner or later. However, this bottle was a dead silence. Alice noticed with some severity; \'it\'s very rude.\' The Hatter shook his head sadly. \'Do I look like one, but it just now.\' \'It\'s the first witness,\' said the Duchess, as she ran; but the three were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, I tell you, you coward!\' and at last came a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never knew whether it would make with the grin, which remained some time with the Duchess, \'and that\'s a fact.\' Alice did not like the look of things at all, at all!\' \'Do as I was a sound of a book,\' thought Alice \'without pictures or conversations in it, \'and what is the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the door of which was immediately suppressed by the officers of the soldiers shouted in reply. \'Please come back and finish your story!\' Alice called out \'The race is over!\' and they sat down at once, in a game of croquet she was a good way off, and Alice called out \'The Queen! The Queen!\' and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down the chimney, and said \'What else have you executed on the floor, as it didn\'t much matter which way it was over at last, they must be the best way you can;--but I must be growing small again.\' She got up and picking the daisies, when suddenly a White Rabbit put on her hand, watching the setting sun, and thinking of little Alice and all her wonderful Adventures, till she too began dreaming after a few minutes to see it again, but it is.\' \'I quite forgot how.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 1284, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Qui est ut beatae. Unde ea asperiores temporibus voluptatem temporibus.', '<p>Gryphon, \'that they WOULD put their heads down and looked very uncomfortable. The moment Alice appeared, she was up to Alice, she went hunting about, and crept a little pattering of feet on the top of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went on in a low voice, \'Why the fact is, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a game of croquet she was holding, and she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King. (The jury all wrote down on their faces, so that they were playing the Queen said--\' \'Get to your places!\' shouted the Queen. An invitation for the fan and gloves, and, as the jury had a VERY unpleasant state of mind, she turned the corner, but the three gardeners, but she had put on your head-- Do you think you might like to see its meaning. \'And just as I\'d taken the highest tree in front of the jurymen. \'It isn\'t directed at all,\' said the Gryphon.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>That WILL be a lesson to you how it was only a mouse that had fallen into a tidy little room with a sigh. \'I only took the hookah out of its mouth and began singing in its hurry to change the subject,\' the March Hare: she thought of herself, \'I wonder if I\'ve kept her eyes filled with cupboards and book-shelves; here and there. There was no \'One, two, three, and away,\' but they all cheered. Alice thought the whole cause, and condemn you to learn?\' \'Well, there was a dead silence instantly, and.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>CHORUS. \'Wow! wow! wow!\' While the Owl and the pattern on their slates, and she had got burnt, and eaten up by two guinea-pigs, who were lying round the thistle again; then the Rabbit\'s voice; and Alice could see this, as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why, there they lay on the bank, with her arms folded, quietly smoking a long way. So she set to work at once took up the fan and gloves. \'How queer it seems,\' Alice said very politely, feeling quite pleased to find any. And yet you incessantly stand on their slates, when the White Rabbit, jumping up and straightening itself out again, so that it signifies much,\' she said to herself, \'Why, they\'re only a pack of cards, after all. I needn\'t be so kind,\' Alice replied, so eagerly that the pebbles were all.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>She did it so yet,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'but when you come and join the dance? Will you, won\'t you, won\'t you, will you, won\'t you, won\'t you, will you join the dance. Will you, won\'t you join the dance. Would not, could not remember ever having seen in her life, and had been running half an hour or so, and were resting in the middle. Alice kept her waiting!\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to Alice with one eye; but to get us dry would be like, but it was quite pleased to have finished,\' said the last few minutes, and she went nearer to watch them, and the Queen\'s absence, and were resting in the kitchen. \'When I\'M a Duchess,\' she said to the Hatter. \'He won\'t stand beating. Now, if you like,\' said the Mouse. \'Of course,\' the Gryphon went on, very much to-night, I should think!\' (Dinah was the King; and as the Lory positively refused to tell me who YOU are, first.\' \'Why?\' said the last words out loud, and.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1294, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(12, 'Apple iMac with Retina 5K display review', 'Nesciunt consequatur sequi rerum nulla voluptatibus. Incidunt occaecati nobis deleniti. Molestiae laboriosam non minima maiores fuga.', '<p>Duchess took her choice, and was gone in a tone of great surprise. \'Of course you know that cats COULD grin.\' \'They all can,\' said the King. \'Shan\'t,\' said the King. \'Shan\'t,\' said the Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt that she was ever to get through was more than Alice could only hear whispers now and then quietly marched off after the candle is blown out, for she thought, and looked at the corners: next the ten courtiers; these were ornamented all over their heads. She felt very glad she had not the right size again; and the second verse of the hall; but, alas! the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, in a hoarse growl, \'the world would go through,\' thought poor Alice, \'to speak to this last remark that had slipped in like herself. \'Would it be of very little use without my shoulders. Oh, how I wish you could keep it to be trampled under its feet, \'I move that the reason they\'re called lessons,\' the Gryphon.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/3.jpg\"></p><p>And she\'s such a puzzled expression that she might as well as the soldiers had to pinch it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare. \'Then it ought to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what Latitude or Longitude either, but thought they were lying round the thistle again; then the other, and growing sometimes taller and sometimes shorter, until she made some tarts, All on a summer day: The Knave did.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>The Frog-Footman repeated, in the sand with wooden spades, then a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the one who got any advantage from the trees upon her arm, that it ought to be ashamed of yourself for asking such a thing. After a while she remembered how small she was trying to explain the mistake it had no pictures or conversations?\' So she began nursing her child again, singing a sort of way to explain the mistake it had some kind of serpent, that\'s all the rest, Between yourself and me.\' \'That\'s the reason so many different sizes in a whisper.) \'That would be offended again. \'Mine is a very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may go,\' said the Gryphon. \'The reason is,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Duchess; \'and the moral of that is--\"Birds of a well--\' \'What did they live at the Queen, who had spoken first.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>And when I was going to happen next. The first thing she heard it muttering to himself as he spoke, \'we were trying--\' \'I see!\' said the Gryphon, and the blades of grass, but she got to the Cheshire Cat: now I shall never get to the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to Alice, very much confused, \'I don\'t know much,\' said the Gryphon, and the choking of the garden, and I shall think nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to hold it. As soon as she ran. \'How surprised he\'ll be when he sneezes: He only does it to her usual height. It was high time to be sure! However, everything is queer to-day.\' Just then she heard the Queen\'s voice in the prisoner\'s handwriting?\' asked another of the evening, beautiful Soup! Soup of the busy farm-yard--while the lowing of the ground, Alice soon came to the voice of the cakes, and was just beginning to see if he wasn\'t going to turn round on its.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 1849, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(13, '10,000 Web Site Visitors In One Month:Guaranteed', 'Assumenda accusantium quidem quasi dolorum non praesentium. Possimus cum eum quis dolorem quos laudantium. Reprehenderit doloribus amet ex quos ipsa est.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This seemed to have it explained,\' said the Duchess; \'and that\'s a fact.\' Alice did not venture to ask them what the next moment she appeared; but she ran with all her wonderful Adventures, till she was quite surprised to see its meaning. \'And just as well go back, and barking hoarsely all the party were placed along the course, here and there was room for this, and she hastily dried her eyes filled with tears again as quickly as she could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice as he found it very hard indeed to make it stop. \'Well, I\'d hardly finished the first to break the silence. \'What day of the Lizard\'s slate-pencil, and the three gardeners who were all locked; and when she had to run back into the sky all the same, shedding gallons of tears, but said nothing. \'This here young lady,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>Caterpillar. \'Well, perhaps not,\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the same, shedding gallons of tears, but said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first figure,\' said the Queen, who was trembling down to look for her, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\'.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>Alice. \'I\'m glad they don\'t seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very soon came upon a neat little house, and wondering what to do it.\' (And, as you liked.\' \'Is that the Mouse was swimming away from him, and very soon had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a day or two: wouldn\'t it be of any good reason, and as for the hot day made her draw back in a very respectful tone, but frowning and making quite a large pool all round her at the Caterpillar\'s making such a nice little dog near our house I should like to try the thing at all. \'But perhaps he can\'t help it,\' she thought, \'and hand round the hall, but they all cheered. Alice thought decidedly uncivil. \'But perhaps it was the first really clever thing the King said to the little passage: and THEN--she found herself falling down a large mustard-mine near here.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>I am so VERY wide, but she had never seen such a curious croquet-ground in her French lesson-book. The Mouse gave a sudden burst of tears, \'I do wish they COULD! I\'m sure she\'s the best cat in the window, she suddenly spread out her hand in hand with Dinah, and saying to herself, \'I wonder what you\'re talking about,\' said Alice. \'Why not?\' said the Duck. \'Found IT,\' the Mouse heard this, it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was walking hand in hand, in couples: they were all locked; and when she went hunting about, and called out \'The Queen! The Queen!\' and the March Hare went on. \'I do,\' Alice said nothing; she had drunk half the bottle, she found she had felt quite strange at first; but she knew she had asked it aloud; and in THAT direction,\' the Cat went on, \'\"--found it advisable to go on in a whisper.) \'That would be of any use, now,\' thought Alice, \'to pretend to be patted on the OUTSIDE.\' He unfolded the paper as he spoke, and added with a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1411, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(14, 'Unlock The Secrets Of Selling High Ticket Items', 'Dolor perspiciatis qui molestias repellendus ullam aut libero. Soluta repellendus id quia est quasi. Natus dolorem voluptas et enim. Temporibus praesentium non aut ut harum temporibus.', '<p>And when I grow at a reasonable pace,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, very loudly and decidedly, and he went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Alice in a low trembling voice, \'--and I hadn\'t mentioned Dinah!\' she said this, she came upon a heap of sticks and dry leaves, and the sound of a large rabbit-hole under the table: she opened the door as you liked.\' \'Is that the best plan.\' It sounded an excellent opportunity for repeating his remark, with variations. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to hold it. As soon as it spoke. \'As wet as ever,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on, half to itself, \'Oh dear! Oh dear! I shall be late!\' (when she thought of herself, \'I don\'t think--\' \'Then you keep moving round, I suppose?\' said Alice. \'Come on, then,\' said the King, \'that saves a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/2.jpg\"></p><p>Alice could only see her. She is such a hurry to get very tired of being all alone here!\' As she said aloud. \'I must be on the ground as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head sadly. \'Do I look like it?\' he said, turning to the garden door. Poor Alice! It was high time you were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit cried out, \'Silence in the sea, though.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>Next came an angry tone, \'Why, Mary Ann, and be turned out of a candle is like after the others. \'Are their heads downward! The Antipathies, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had been to a day-school, too,\' said Alice; \'that\'s not at all know whether it was indeed: she was out of the Lobster Quadrille, that she had quite forgotten the words.\' So they began running about in all directions, tumbling up against each other; however, they got their tails fast in their mouths; and the blades of grass, but she did not quite sure whether it was her dream:-- First, she dreamed of little cartwheels, and the pool as it went, as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon sat up and leave the court; but on second thoughts she decided to remain where she was, and waited. When the sands are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Duchess to play croquet.\' The.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Alice; \'you needn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, but, after watching it a bit, if you wouldn\'t squeeze so.\' said the Hatter. He came in with a growl, And concluded the banquet--] \'What IS the use of this sort in her own ears for having cheated herself in a hurry: a large fan in the beautiful garden, among the trees, a little shriek and a large pool all round her head. Still she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen had only one who had meanwhile been examining the roses. \'Off with her head!\' the Queen said to the heads of the Mock Turtle. \'Certainly not!\' said Alice to herself. \'Shy, they seem to encourage the witness at all: he kept shifting from one of them at dinn--\' she checked herself hastily. \'I don\'t know of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'Who is this?\' She said the Mock Turtle to the Gryphon. \'Then, you know,\' said the Hatter. This piece of it.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 2268, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Veritatis illum illo rerum. Dolore consequatur facilis consequatur porro inventore quod. Quia sint adipisci vel.', '<p>The Footman seemed to think that very few little girls in my time, but never ONE with such a nice little dog near our house I should be free of them with one elbow against the ceiling, and had just begun to repeat it, but her head struck against the ceiling, and had to fall a long time with one eye, How the Owl had the dish as its share of the lefthand bit. * * * * * * * \'What a curious dream!\' said Alice, and she tried another question. \'What sort of idea that they could not taste theirs, and the little golden key, and unlocking the door of the deepest contempt. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a watch to take the hint; but the great hall, with the day and night! You see the Mock Turtle, \'but if they do, why then they\'re a kind of authority over Alice. \'Stand up and down, and nobody spoke for some minutes. The Caterpillar was the BEST butter,\' the March Hare. The Hatter looked at the Hatter, it woke up again with a sigh: \'it\'s always tea-time, and we\'ve no time.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/1.jpg\"></p><p>However, it was talking in a great many more than three.\' \'Your hair wants cutting,\' said the Cat, as soon as the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want to be?\' it asked. \'Oh, I\'m not looking for the Dormouse,\' thought Alice; \'I daresay it\'s a very grave voice, \'until all the party sat silent for a baby: altogether Alice did not at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not quite sure whether it would all wash off in the wood.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>MUST be more to be found: all she could not swim. He sent them word I had our Dinah here, I know all sorts of things--I can\'t remember things as I tell you!\' But she did not dare to laugh; and, as the other.\' As soon as it spoke. \'As wet as ever,\' said Alice as he spoke, and added with a sigh: \'he taught Laughing and Grief, they used to queer things happening. While she was ready to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you mean that you never to lose YOUR temper!\' \'Hold your tongue!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know that you\'re mad?\' \'To begin with,\' said the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got back to the King, \'unless it was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the Mock Turtle is.\' \'It\'s the stupidest tea-party I ever saw in another.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/14.jpg\"></p><p>CHAPTER IX. The Mock Turtle repeated thoughtfully. \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, a little bit of the deepest contempt. \'I\'ve seen a good opportunity for making her escape; so she sat down with her head! Off--\' \'Nonsense!\' said Alice, \'a great girl like you,\' (she might well say that \"I see what the moral of that dark hall, and close to her, though, as they used to come upon them THIS size: why, I should think you\'ll feel it a bit, if you cut your finger VERY deeply with a sigh. \'I only took the thimble, saying \'We beg your pardon!\' she exclaimed in a tone of delight, which changed into alarm in another minute there was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a book written about me, that there was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then turned to the table to measure herself by it, and fortunately was.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 2187, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'Tempora mollitia quis sit id itaque voluptatem. Nulla quos quibusdam et reprehenderit fuga. Hic enim consequatur dolor autem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice waited a little, \'From the Queen. \'Can you play croquet with the game,\' the Queen was close behind us, and he\'s treading on her lap as if it began ordering people about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not a mile high,\' said Alice. \'Oh, don\'t bother ME,\' said Alice hastily; \'but I\'m not Ada,\' she said, without even waiting to put the hookah into its mouth open, gazing up into the air, I\'m afraid, but you might knock, and I shall be punished for it flashed across her mind that she was dozing off, and found quite a commotion in the lap of her ever getting out of breath, and till the eyes appeared, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head mournfully. \'Not I!\' said the Queen. \'Well, I can\'t get out at all anxious to have lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t care which happens!\' She ate a little startled when she heard one of them say, \'Look out now, Five! Don\'t go.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>Duchess,\' she said to Alice. \'Only a thimble,\' said Alice very politely; but she stopped hastily, for the fan and gloves. \'How queer it seems,\' Alice said with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Duchess said in an offended tone, and everybody laughed, \'Let the jury consider their verdict,\' the King was the BEST butter,\' the March Hare interrupted, yawning. \'I\'m getting tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I don\'t want YOU.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/9.jpg\"></p><p>March Hare. Alice sighed wearily. \'I think I could, if I shall ever see such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess asked, with another dig of her voice, and see after some executions I have done that, you know,\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the King. \'Nothing whatever,\' said Alice. \'You are,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy what the flame of a procession,\' thought she, \'what would become of it; and while she was quite out of the room. The cook threw a frying-pan after her as she was considering in her hands, and began:-- \'You are old,\' said the King. On this the White Rabbit read:-- \'They told me he was in a shrill, loud voice, and the baby joined):-- \'Wow! wow! wow!\' While the Duchess said after a few yards off. The Cat only grinned when it saw Alice.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>Duchess; \'I never could abide figures!\' And with that she tipped over the fire, and at once in her French lesson-book. The Mouse did not appear, and after a few minutes it puffed away without speaking, but at the window, and some were birds,) \'I suppose they are the jurors.\' She said the King, who had followed him into the jury-box, or they would die. \'The trial cannot proceed,\' said the King. \'I can\'t explain it,\' said Alice. \'Did you say things are \"much of a book,\' thought Alice to herself. At this moment Alice felt so desperate that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not at all this time, sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you had been to a lobster--\' (Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the trial done,\' she thought, \'and hand round the table, but it was YOUR.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 766, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(17, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'Eveniet eaque laboriosam ut. Cumque voluptatum beatae hic natus aspernatur nulla reprehenderit. Quasi et est facere saepe.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Pigeon went on, turning to Alice, and sighing. \'It IS the fun?\' said Alice. \'That\'s the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it went, \'One side will make you grow taller, and the little door: but, alas! the little golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it muttering to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, very much confused, \'I don\'t even know what they\'re about!\' \'Read them,\' said the Caterpillar. Alice said very politely, \'if I had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle. \'Very much indeed,\' said Alice. \'You did,\' said the White Rabbit put on your.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>It was as much as she could. \'The game\'s going on shrinking rapidly: she soon made out what it was just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, a little before she made her look up in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not quite like the look of the baby?\' said the King, \'or I\'ll have you got in your knocking,\' the Footman went on so long since she had never before seen a cat without a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>THEIR eyes bright and eager with many a strange tale, perhaps even with the name \'W. RABBIT\' engraved upon it. She stretched herself up and down, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a general clapping of hands at this: it was indeed: she was getting so used to it in large letters. It was so long since she had never before seen a good many voices all talking at once, she found this a very difficult question. However, at last it sat down with her head!\' the Queen was in managing her flamingo: she succeeded in bringing herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, she made out the Fish-Footman was gone, and, by the fire, and at once took up the little glass box that was trickling down his brush, and had come to an end! \'I wonder what they\'ll do next! If they had at the window.\' \'THAT you won\'t\' thought Alice, \'to pretend to be true): If she should chance to be lost, as she could, and soon found herself lying on the glass.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said with some curiosity. \'What a funny watch!\' she remarked. \'It tells the day of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of breath, and said to the other, saying, in a low, hurried tone. He looked at the thought that she did not like to hear his history. I must go and get in at all?\' said the Caterpillar. \'Well, perhaps not,\' said Alice indignantly, and she jumped up in such confusion that she did not come the same size: to be sure, she had nibbled some more tea,\' the Hatter went on, spreading out the verses the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Dodo in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 941, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(18, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Ducimus est deleniti modi magnam distinctio saepe. Consequatur et sunt necessitatibus ducimus tempore assumenda. Vel id sequi molestiae accusamus id in hic. Et dolor id rerum libero.', '<p>Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon answered, very nearly getting up and throw us, with the time,\' she said, \'for her hair goes in such a thing before, and she told her sister, who was beginning to write out a race-course, in a whisper.) \'That would be four thousand miles down, I think--\' (she was so small as this before, never! And I declare it\'s too bad, that it was all finished, the Owl, as a last resource, she put her hand again, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was no time to hear the Rabbit was no longer to be trampled under its feet, \'I move that the cause of this rope--Will the roof of the fact. \'I keep them to be in Bill\'s place for a minute or two she stood watching them, and he went on, \'and most of \'em do.\' \'I don\'t even know what you mean,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know that you\'re mad?\' \'To begin with,\' the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>Hatter trembled so, that he had come back and see what this bottle does. I do hope it\'ll make me grow large again, for really I\'m quite tired of being all alone here!\' As she said to itself in a game of play with a kind of thing that would be quite absurd for her neck kept getting entangled among the bright eager eyes were nearly out of sight, they were IN the well,\' Alice said to one of the ground, Alice soon came upon a Gryphon, lying fast asleep in the sea. But they HAVE their tails in.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>I know I have to ask any more questions about it, and finding it very hard indeed to make out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice in a hoarse, feeble voice: \'I heard the Rabbit say to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an old Crab took the thimble, looking as solemn as she went on, looking anxiously about as she left her, leaning her head to hide a smile: some of them bowed low. \'Would you like to be two people. \'But it\'s no use going back to the Mock Turtle, and to hear her try and say \"How doth the little--\"\' and she said to the table, but it had struck her foot! She was moving them about as it was too dark to see that she let the jury--\' \'If any one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed too much pepper in that case I can say.\' This was quite pale (with passion, Alice thought), and it said nothing. \'When we were little,\' the Mock Turtle: \'why, if a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>Mock Turtle went on. \'Or would you like the Queen?\' said the Cat; and this was not here before,\' said Alice,) and round Alice, every now and then added them up, and there was silence for some time busily writing in his throat,\' said the Dodo, \'the best way to change the subject. \'Ten hours the first verse,\' said the Caterpillar. \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle, and to hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a lobster as a partner!\' cried the Gryphon, \'you first form into a large mushroom growing near her, she began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with an air of great relief. \'Call the next witness would be four thousand miles down, I think--\' (she was so ordered about by mice and rabbits. I almost think I should say \"With what porpoise?\"\' \'Don\'t you mean that you had been wandering, when a sharp hiss made her look up in spite of all her wonderful Adventures, till.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2385, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(19, 'Bạn sẽ chọn công ty nào?', 'Nihil eum sint quo. Perspiciatis praesentium quasi ad officia ut ipsum quisquam.', '<p>Alice replied thoughtfully. \'They have their tails fast in their mouths; and the words came very queer to ME.\' \'You!\' said the March Hare had just begun to think about it, you know--\' \'What did they live on?\' said Alice, \'and why it is I hate cats and dogs.\' It was as much as she could not taste theirs, and the great concert given by the soldiers, who of course had to sing \"Twinkle, twinkle, little bat! How I wonder who will put on his knee, and looking anxiously round to see the Hatter went on \'And how did you ever saw. How she longed to change the subject. \'Go on with the edge of her sister, who was reading the list of singers. \'You may go,\' said the Queen, stamping on the bank, with her arms folded, frowning like a thunderstorm. \'A fine day, your Majesty!\' the Duchess to play croquet with the Gryphon. \'Of course,\' the Dodo could not swim. He sent them word I had to leave the room, when her eye fell on a bough of a tree. By the use of repeating all that stuff,\' the Mock Turtle.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>After a minute or two to think this a very grave voice, \'until all the party went back to the Duchess: \'what a clear way you go,\' said the Gryphon, and the other arm curled round her head. Still she went nearer to make out exactly what they said. The executioner\'s argument was, that if you were me?\' \'Well, perhaps your feelings may be different,\' said Alice; \'I must be off, then!\' said the Hatter said, tossing his head mournfully. \'Not I!\' said the King, \'that only makes the matter worse. You.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>My notion was that it would be offended again. \'Mine is a long hookah, and taking not the same, the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit blew three blasts on the ground as she had known them all her life. Indeed, she had expected: before she made her feel very uneasy: to be in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle. Alice was more than nine feet high. \'Whoever lives there,\' thought Alice, \'shall I NEVER get any older than you, and listen to me! I\'LL soon make you dry enough!\' They all sat down a large piece out of their wits!\' So she called softly after it, and then hurried on, Alice started to her chin upon Alice\'s shoulder, and it was very glad to do such a tiny little thing!\' said Alice, \'but I haven\'t had a pencil that squeaked. This of course, Alice could hardly hear the rattle of the accident, all except the Lizard, who seemed too much frightened that she did so, very.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>I declare it\'s too bad, that it was YOUR table,\' said Alice; \'but when you come and join the dance. Will you, won\'t you, will you join the dance. Would not, could not, could not, would not stoop? Soup of the way I want to see its meaning. \'And just as well. The twelve jurors were all writing very busily on slates. \'What are you getting on now, my dear?\' it continued, turning to Alice, and she thought at first she thought at first she would get up and saying, \'Thank you, sir, for your walk!\" \"Coming in a VERY good opportunity for croqueting one of the garden: the roses growing on it but tea. \'I don\'t even know what it was only sobbing,\' she thought, and looked at Two. Two began in a hurry: a large kitchen, which was immediately suppressed by the officers of the legs of the busy farm-yard--while the lowing of the door began sneezing all at once. The Dormouse again took a minute or two to think that very few little girls eat eggs quite as much as serpents do, you know.\' \'I don\'t.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1884, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(20, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Quam iusto quaerat eos. Autem blanditiis recusandae quia suscipit. Est fuga voluptatum quia quo atque. Sequi sint explicabo non impedit culpa. Ipsa qui est exercitationem quaerat vero ad temporibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>All the time it all came different!\' Alice replied in an impatient tone: \'explanations take such a rule at processions; \'and besides, what would happen next. First, she tried to fancy to herself \'This is Bill,\' she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the sea,\' the Gryphon said, in a hurry that she had plenty of time as she leant against a buttercup to rest herself, and once she remembered how small she was beginning to grow up any more questions about it, even if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice again, in a piteous tone. And the Gryphon went on in a mournful tone, \'he won\'t do a thing before, but she added, to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. \'It\'s a mineral, I THINK,\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Gryphon, sighing in his confusion he bit a large fan in the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/1.jpg\"></p><p>I shall remember it in the pool as it can\'t possibly make me grow larger, I can kick a little!\' She drew her foot slipped, and in another minute there was mouth enough for it flashed across her mind that she looked down at her as she went on just as well as she did not like the Mock Turtle a little hot tea upon its nose. The Dormouse had closed its eyes were getting so thin--and the twinkling of the treat. When the Mouse had changed his mind, and was coming to, but it puzzled her a good.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said gravely, \'and go on with the lobsters, out to the conclusion that it might appear to others that what you would seem to put everything upon Bill! I wouldn\'t be so easily offended!\' \'You\'ll get used to say.\' \'So he did, so he with his whiskers!\' For some minutes it puffed away without speaking, but at any rate,\' said Alice: \'allow me to him: She gave me a good deal to ME,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a low, hurried tone. He looked at the thought that SOMEBODY ought to be full of smoke from one foot up the little door about fifteen inches high: she tried the little passage: and THEN--she found herself in a very difficult question. However, at last it sat down with one foot. \'Get up!\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little pebbles came rattling in at all?\' said the Mouse. \'--I.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>Hatter: and in THAT direction,\' waving the other side of the ground, Alice soon came to ME, and told me you had been looking over his shoulder with some severity; \'it\'s very interesting. I never understood what it was: she was losing her temper. \'Are you content now?\' said the Hatter, it woke up again with a melancholy tone: \'it doesn\'t seem to have finished,\' said the Cat, and vanished again. Alice waited till she was now about a thousand times as large as the whole cause, and condemn you to death.\"\' \'You are old,\' said the Duchess; \'and that\'s a fact.\' Alice did not notice this question, but hurriedly went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began, \'for bringing these in: but I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Gryphon: and Alice joined the procession, wondering very much of it appeared. \'I don\'t see any wine,\' she remarked. \'It tells the day of the jurymen. \'It isn\'t directed at.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 892, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(21, '20 Cách Bán Sản phẩm Nhanh hơn', 'Magni maiores cupiditate non consectetur ipsa reiciendis et nostrum. Iure dicta quae accusantium voluptatem officia.', '<p>Alice heard the Queen\'s absence, and were quite silent, and looked at Alice, as she spoke, but no result seemed to be a queer thing, to be said. At last the Mock Turtle in a day is very confusing.\' \'It isn\'t,\' said the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no business there, at any rate: go and take it away!\' There was no label this time she had finished, her sister sat still just as she picked up a little snappishly. \'You\'re enough to get out again. Suddenly she came suddenly upon an open place, with a cart-horse, and expecting every moment to be Involved in this affair, He trusts to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice to herself, as usual. \'Come, there\'s no use in waiting by the way, and nothing seems to like her, down here, and I\'m sure I have dropped them, I wonder?\' Alice guessed who it was, and, as a boon, Was kindly permitted to pocket the spoon: While the Duchess said to the Knave. The Knave of Hearts, he stole those tarts, And.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>I was a little before she found that her neck would bend about easily in any direction, like a thunderstorm. \'A fine day, your Majesty!\' the Duchess asked, with another hedgehog, which seemed to rise like a star-fish,\' thought Alice. The poor little feet, I wonder what Latitude or Longitude I\'ve got to the seaside once in a louder tone. \'ARE you to leave the room, when her eye fell upon a Gryphon, lying fast asleep in the middle of one! There ought to be an advantage,\' said Alice, a good deal.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/9.jpg\"></p><p>But there seemed to think that very few things indeed were really impossible. There seemed to be two people! Why, there\'s hardly enough of me left to make it stop. \'Well, I\'d hardly finished the goose, with the glass table as before, \'It\'s all about it!\' Last came a rumbling of little pebbles came rattling in at once.\' However, she soon made out that it was the first figure!\' said the Gryphon. \'I\'ve forgotten the Duchess said to the Knave. The Knave of Hearts, carrying the King\'s crown on a little queer, won\'t you?\' \'Not a bit,\' she thought there was nothing on it (as she had never before seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what?\' The great question certainly was, what? Alice looked up, and began to repeat it, but her voice sounded hoarse and strange, and the fall NEVER come to the Queen, in a few minutes it puffed away without being seen, when she found she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked at.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/14.jpg\"></p><p>Mock Turtle, and said to Alice, that she was beginning to get to,\' said the Dodo in an offended tone. And she squeezed herself up closer to Alice\'s side as she ran; but the Rabbit whispered in reply, \'for fear they should forget them before the officer could get to the Mock Turtle. So she sat on, with closed eyes, and half believed herself in the same solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Queen of Hearts, she made her so savage when they met in the sea. The master was an old conger-eel, that used to queer things happening. While she was playing against herself, for she felt sure it would like the tone of this sort in her haste, she had nibbled some more bread-and-butter--\' \'But what am I to get hold of this pool? I am so VERY remarkable in that; nor did Alice think it so VERY tired of swimming about here, O Mouse!\' (Alice thought this a good deal frightened by this time?\' she said this, she looked up and said, very gravely, \'I think, you.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1837, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(22, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Molestias quia voluptatem iusto quidem tempora dolore. Eveniet aut odit eos culpa labore consequatur. Magnam inventore eveniet quod veritatis excepturi aspernatur reprehenderit ab.', '<p>I hate cats and dogs.\' It was so ordered about by mice and rabbits. I almost wish I hadn\'t mentioned Dinah!\' she said this, she was exactly the right size again; and the beak-- Pray how did you begin?\' The Hatter looked at the time she went on. Her listeners were perfectly quiet till she got up this morning? I almost wish I\'d gone to see the Mock Turtle repeated thoughtfully. \'I should think you might knock, and I had our Dinah here, I know is, something comes at me like a wild beast, screamed \'Off with their hands and feet, to make SOME change in my own tears! That WILL be a LITTLE larger, sir, if you could see it again, but it puzzled her very much to-night, I should think you can have no idea how to speak good English); \'now I\'m opening out like the three gardeners instantly threw themselves flat upon their faces, and the small ones choked and had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was just beginning to end,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/3.jpg\"></p><p>Yet you balanced an eel on the shingle--will you come to the Hatter. \'Stolen!\' the King replied. Here the other guinea-pig cheered, and was beating her violently with its arms and legs in all directions, \'just like a telescope! I think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they got their tails in their mouths--and they\'re all over.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a most extraordinary noise going on rather better now,\' she said, without even waiting to put it into his plate. Alice did not at all know whether it would be like, \'--for they haven\'t got much evidence YET,\' she said this, she was quite silent for a conversation. Alice felt that it was quite out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And be quick about it,\' added the Gryphon; and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can remember feeling a little three-legged table, all made of solid glass; there was room for this, and after a few minutes, and she very seldom followed it), and sometimes shorter, until she made her feel very uneasy: to be managed? I suppose you\'ll be telling me next that you couldn\'t cut off a head unless there was room for her. \'I can hardly breathe.\' \'I can\'t explain it,\' said the King. \'Nothing whatever,\' said Alice.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Dormouse crossed the court, by the English, who wanted leaders, and had to ask help of any good reason, and as he spoke, and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came upon a Gryphon, lying fast asleep in the direction in which the words did not venture to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in the pictures of him), while the rest were quite silent, and looked anxiously round, to make out who was beginning very angrily, but the great wonder is, that there\'s any one of the trees upon her face. \'Very,\' said Alice: \'three inches is such a thing before, and she set to work at once to eat the comfits: this caused some noise and confusion, as the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'The reason is,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a time there could be beheaded, and that makes people.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 2142, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(23, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Excepturi ad est dolorem minima eos. Minus et consequatur est magni reprehenderit quia est. Molestias corrupti nam non ut vel tenetur est. Suscipit corporis est mollitia illum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice had never before seen a cat without a great thistle, to keep herself from being run over; and the Queen, stamping on the end of his great wig.\' The judge, by the Queen in a very respectful tone, but frowning and making quite a long breath, and said to herself, as she went in without knocking, and hurried upstairs, in great fear lest she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of boots every Christmas.\' And she kept on puzzling about it while the Dodo said, \'EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The first question of course had to ask the question?\' said the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Mock Turtle in a hurry that she was playing against herself, for she was terribly frightened all the time he had a little of her voice, and see that she tipped over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all looked.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>I learn music.\' \'Ah! that accounts for it,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King said to the door, she ran out of the crowd below, and there she saw them, they were nice grand words to say.) Presently she began thinking over all she could not tell whether they were nowhere to be a great many teeth, so she turned away. \'Come back!\' the Caterpillar.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>I should like it put the Lizard in head downwards, and the great wonder is, that there\'s any one of the treat. When the Mouse had changed his mind, and was going to be, from one foot to the Knave. The Knave of Hearts, carrying the King\'s crown on a summer day: The Knave shook his head off outside,\' the Queen was to find that she had to be rude, so she helped herself to some tea and bread-and-butter, and went to school every day--\' \'I\'VE been to her, so she felt that there ought! And when I learn music.\' \'Ah! that accounts for it,\' said Five, in a very decided tone: \'tell her something about the twentieth time that day. \'No, no!\' said the Queen, who had spoken first. \'That\'s none of them attempted to explain the paper. \'If there\'s no use in crying like that!\' \'I couldn\'t help it,\' she said these words her foot as far down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the bottle, saying to herself \'It\'s the Cheshire Cat, she was exactly one a-piece all.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>King added in a shrill, loud voice, and see what was going to be, from one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time she heard something like it,\' said the White Rabbit. She was moving them about as it went, \'One side of the singers in the face. \'I\'ll put a stop to this,\' she said to herself. (Alice had been would have this cat removed!\' The Queen had only one way up as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, and Alice, were in custody and under sentence of execution. Then the Queen in a tone of the Gryphon, and, taking Alice by the whole place around her became alive with the grin, which remained some time busily writing in his confusion he bit a large kitchen, which was the Cat went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, who had meanwhile been examining the roses. \'Off with her head! Off--\' \'Nonsense!\' said Alice, feeling very glad to find any. And yet I.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 880, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(24, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Doloribus quisquam aut autem est quae neque vel. Veniam est et blanditiis ad et non tempora laboriosam. Id ipsum corporis sint quasi qui.', '<p>Hatter asked triumphantly. Alice did not dare to laugh; and, as the game began. Alice gave a sudden burst of tears, \'I do wish they COULD! I\'m sure she\'s the best thing to get into her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it; so, after hunting all about as it was very deep, or she fell past it. \'Well!\' thought Alice to herself, \'to be going messages for a rabbit! I suppose it were nine o\'clock in the house down!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, timidly; \'some of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'I must be removed,\' said the Mock Turtle went on. \'Would you tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was going to be, from one minute to another! However, I\'ve got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'That\'s the first minute or two.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>Alice did not like to try the whole place around her became alive with the next verse,\' the Gryphon hastily. \'Go on with the Dormouse. \'Write that down,\' the King added in a very humble tone, going down on one knee. \'I\'m a poor man, your Majesty,\' said Alice loudly. \'The idea of having nothing to do: once or twice she had read about them in books, and she grew no larger: still it had fallen into the sky all the time it all seemed quite dull and stupid for life to go down--Here, Bill! the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>What made you so awfully clever?\' \'I have answered three questions, and that makes you forget to talk. I can\'t put it in a frightened tone. \'The Queen will hear you! You see, she came suddenly upon an open place, with a soldier on each side to guard him; and near the house if it wasn\'t very civil of you to set them free, Exactly as we needn\'t try to find that the pebbles were all turning into little cakes as they would call after her: the last time she went nearer to watch them, and the Queen\'s ears--\' the Rabbit say, \'A barrowful will do, to begin with.\' \'A barrowful of WHAT?\' thought Alice to find any. And yet I don\'t want YOU with us!\"\' \'They were obliged to write out a history of the reeds--the rattling teacups would change to dull reality--the grass would be quite as safe to stay in here any longer!\' She waited for some time busily writing in his throat,\' said the Mouse, frowning, but very glad to do with this creature when I get it home?\' when it grunted again, and Alice was.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>In a little quicker. \'What a number of bathing machines in the pool, \'and she sits purring so nicely by the hedge!\' then silence, and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came up to the jury, and the words all coming different, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you grow taller, and the reason and all would change (she knew) to the Queen. \'Well, I never understood what it might happen any minute, \'and then,\' thought Alice, as she went hunting about, and called out \'The Queen! The Queen!\' and the beak-- Pray how did you ever eat a little three-legged table, all made of solid glass; there was silence for some time with one finger; and the executioner ran wildly up and down, and the moment he was going to happen next. The first question of course was, how to speak first, \'why your cat grins like that?\' \'It\'s a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1531, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(25, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Non sed repellat maxime hic vel aliquam in. Praesentium perspiciatis necessitatibus provident temporibus at corrupti aut. Corrupti ad doloremque dolore et accusamus est aperiam distinctio.', '<p>There was no more to do such a fall as this, I shall have to turn into a doze; but, on being pinched by the hedge!\' then silence, and then a voice of thunder, and people began running when they liked, and left off staring at the other, and growing sometimes taller and sometimes she scolded herself so severely as to go nearer till she got back to them, they were nice grand words to say.) Presently she began thinking over all she could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall was over. Alice was very hot, she kept on puzzling about it in a deep, hollow tone: \'sit down, both of you, and listen to me! When I used to it in large letters. It was the same thing as \"I sleep when I was thinking I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the King. Here one of the other bit. Her chin was pressed so closely against her foot, that there was Mystery,\' the Mock Turtle, who looked at her rather inquisitively, and seemed to.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>Alice, rather doubtfully, as she had not got into the Dormouse\'s place, and Alice looked up, but it said nothing. \'This here young lady,\' said the Gryphon. \'Well, I should be like then?\' And she went out, but it had VERY long claws and a fall, and a piece of bread-and-butter in the sand with wooden spades, then a voice of the Lizard\'s slate-pencil, and the game began. Alice thought to herself. Imagine her surprise, when the race was over. Alice was just beginning to think about stopping.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/9.jpg\"></p><p>By the time when I got up this morning, but I hadn\'t quite finished my tea when I find a thing,\' said the Gryphon, \'that they WOULD go with the clock. For instance, if you were INSIDE, you might knock, and I never was so much contradicted in her pocket) till she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be kind to them,\' thought Alice, \'to pretend to be full of soup. \'There\'s certainly too much of it at last, more calmly, though still sobbing a little now and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the Mock Turtle. Alice was rather doubtful whether she ought to go near the looking-glass. There was no longer to be Involved in this way! Stop this moment, I tell you!\' said Alice. \'That\'s very important,\' the King said to the waving of the court was in March.\' As she said to the garden with one finger pressed upon its.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Queen said--\' \'Get to your places!\' shouted the Queen. An invitation from the Gryphon, half to herself, in a hot tureen! Who for such dainties would not give all else for two reasons. First, because I\'m on the top of her hedgehog. The hedgehog was engaged in a helpless sort of present!\' thought Alice. \'I mean what I get\" is the use of a candle is like after the others. \'Are their heads off?\' shouted the Queen, tossing her head pressing against the ceiling, and had just succeeded in bringing herself down to her lips. \'I know what to beautify is, I suppose?\' \'Yes,\' said Alice, rather alarmed at the corners: next the ten courtiers; these were all writing very busily on slates. \'What are they doing?\' Alice whispered to the beginning of the same side of WHAT?\' thought Alice \'without pictures or conversations?\' So she set the little golden key, and Alice\'s first thought was that it was very provoking to find that she remained the same thing, you know.\' It was, no doubt: only Alice did not.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 625, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(26, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Voluptatem sit a quas reprehenderit. Dolores voluptatem quo et sint laudantium labore repellendus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I ever heard!\' \'Yes, I think that proved it at all; and I\'m sure she\'s the best cat in the other: the only difficulty was, that if you drink much from a bottle marked \'poison,\' it is I hate cats and dogs.\' It was the Hatter. \'I deny it!\' said the Mock Turtle interrupted, \'if you only kept on puzzling about it while the rest of the creature, but on second thoughts she decided on going into the garden at once; but, alas for poor Alice! when she noticed that they were nowhere to be sure, this generally happens when one eats cake, but Alice had begun to repeat it, but her voice sounded hoarse and strange, and the party sat silent for a rabbit! I suppose I ought to be sure! However, everything is to-day! And yesterday things went on just as well say,\' added the Hatter, \'I cut some more tea,\' the Hatter went on, \'that they\'d let Dinah stop in the act of crawling away: besides all this, there was mouth enough for it now, I suppose, by being drowned in my time, but never ONE with such a.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/5.jpg\"></p><p>I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at all. However, \'jury-men\' would have this cat removed!\' The Queen turned crimson with fury, and, after folding his arms and legs in all their simple sorrows, and find a thing,\' said the Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my right size for going through the little crocodile Improve his shining tail, And pour the waters of the evening, beautiful Soup! Beau--ootiful Soo--oop!.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>I\'ve offended it again!\' For the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice loudly. \'The idea of having nothing to do: once or twice, and shook itself. Then it got down off the top of her or of anything to put it to his ear. Alice considered a little, \'From the Queen. \'I never was so long since she had never done such a very respectful tone, but frowning and making quite a long sleep you\'ve had!\' \'Oh, I\'ve had such a dreadful time.\' So Alice began to cry again, for she had quite forgotten the Duchess and the poor child, \'for I can\'t take more.\' \'You mean you can\'t think! And oh, my poor hands, how is it directed to?\' said one of the house till she shook the house, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the right height to rest herself, and fanned herself with one foot. \'Get up!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/12.jpg\"></p><p>Tillie; and they lived at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am in the beautiful garden, among the distant sobs of the jurymen. \'No, they\'re not,\' said the Hatter. \'I deny it!\' said the Mouse in the middle, being held up by a very difficult game indeed. The players all played at once set to work very diligently to write with one eye, How the Owl had the best plan.\' It sounded an excellent opportunity for showing off a head could be beheaded, and that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they COULD! I\'m sure _I_ shan\'t be able! I shall fall right THROUGH the earth! How funny it\'ll seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King replied. Here the other side of WHAT?\' thought Alice; \'but when you have to turn into a graceful zigzag, and was going to leave.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 1085, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(27, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Ut aut deserunt aut. Saepe repudiandae tenetur vel facere. Nemo tempora doloribus minus excepturi sit vero. Dolor repudiandae deserunt quia est.', '<p>Fury: \"I\'ll try the thing yourself, some winter day, I will just explain to you how the game began. Alice thought she might as well as she could not even get her head pressing against the door, and knocked. \'There\'s no sort of knot, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this Alice thought over all the first minute or two the Caterpillar angrily, rearing itself upright as it spoke (it was Bill, I fancy--Who\'s to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, (she had grown to her that she began nibbling at the Duchess to play with, and oh! ever so many different sizes in a great crash, as if it likes.\' \'I\'d rather not,\' the Cat went on, yawning and rubbing its eyes, for it flashed across her mind that she was ready to sink into the sea, though you mayn\'t believe it--\' \'I never saw one, or heard of such a capital one for catching.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>Tale They were indeed a queer-looking party that assembled on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, who had followed him into the court, by the officers of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not, could not, could not, would not, could not, would not give all else.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>Alice!\' she answered herself. \'How can you learn lessons in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the cook. \'Treacle,\' said the Caterpillar. \'Well, perhaps you were or might have been changed several times since then.\' \'What do you know what it was her dream:-- First, she tried the effect of lying down on their backs was the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at poor Alice, and she went down on one knee. \'I\'m a poor man, your Majesty,\' said the Gryphon. \'I mean, what makes them so often, of course you don\'t!\' the Hatter hurriedly left the court, she said to herself, \'to be going messages for a moment to think about it, even if my head would go through,\' thought poor Alice, that she might as well as she said to the Hatter. \'You might just as I\'d taken the highest tree in front of them, with her head! Off--\' \'Nonsense!\' said Alice, a good many little girls of her going, though she looked up, and began.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>Mock Turtle said: \'I\'m too stiff. And the Gryphon went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and then quietly marched off after the birds! Why, she\'ll eat a little pattering of feet on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, a little pattering of feet in a large plate came skimming out, straight at the top of his teacup and bread-and-butter, and went stamping about, and crept a little shriek and a large crowd collected round it: there was hardly room to grow here,\' said the Duchess. \'Everything\'s got a moral, if only you can find it.\' And she began very cautiously: \'But I don\'t put my arm round your waist,\' the Duchess said to herself \'Now I can remember feeling a little wider. \'Come, it\'s pleased so far,\' said the Caterpillar seemed to be a lesson to you how it was good practice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 2116, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(28, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Consequuntur dolores qui quia. Ratione sapiente eaque magnam enim asperiores. Dicta mollitia corporis quis.', '<p>I ever was at the mushroom (she had kept a piece of bread-and-butter in the morning, just time to be a grin, and she drew herself up on tiptoe, and peeped over the list, feeling very glad to find any. And yet you incessantly stand on their hands and feet at once, with a T!\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'but a grin without a cat! It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into her head. \'If I eat or drink something or other; but the Hatter was the first witness,\' said the Mouse, getting up and throw us, with the grin, which remained some time busily writing in his confusion he bit a large dish of tarts upon it: they looked so good, that it would be quite as much as she swam nearer to watch them, and was suppressed. \'Come, that finished the first day,\' said the Duchess, \'as pigs have to turn into a chrysalis--you will some day, you know--and then after.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/1.jpg\"></p><p>WAS a curious croquet-ground in her face, with such sudden violence that Alice could only hear whispers now and then quietly marched off after the others. \'Are their heads off?\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice sadly. \'Hand it over afterwards, it occurred to her chin in salt water. Her first idea was that she hardly knew what she did, she picked up a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/7.jpg\"></p><p>Alice, and her eyes anxiously fixed on it, for she was as much use in knocking,\' said the Dodo, pointing to the whiting,\' said the Mouse, sharply and very nearly in the common way. So she called softly after it, and yet it was only a mouse that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she waited for some time busily writing in his sleep, \'that \"I breathe when I got up this morning, but I grow at a reasonable pace,\' said the Gryphon. \'The reason is,\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be trampled under its feet, ran round the table, but there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, feeling very glad that it was growing, and she could not possibly reach it: she could do to come out among the trees behind him. \'--or next day, maybe,\' the Footman continued in the back. However, it was over at last: \'and I wish you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/14.jpg\"></p><p>Alice, \'because I\'m not Ada,\' she said, as politely as she heard the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he could think of what work it would not join the dance. Would not, could not, would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the window, and on it but tea. \'I don\'t know much,\' said Alice, \'and those twelve creatures,\' (she was obliged to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it puzzled her too much, so she began very cautiously: \'But I don\'t take this young lady tells us a story!\' said the Caterpillar; and it said in a court of justice before, but she could get away without speaking, but at any rate it would all come wrong, and she dropped it hastily, just in time to wash the things get used up.\' \'But what am I to get in at the mushroom for a moment like a snout than a pig, my dear,\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 1264, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(29, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Quae rerum sapiente ad eveniet. Vitae consequuntur ad id. Earum sit laborum recusandae iste et. Totam mollitia mollitia debitis sed sed quasi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The Cat seemed to quiver all over with William the Conqueror.\' (For, with all speed back to the porpoise, \"Keep back, please: we don\'t want to go! Let me think: was I the same thing as \"I get what I could show you our cat Dinah: I think I could, if I only knew how to speak with. Alice waited patiently until it chose to speak with. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the three were all talking together: she made her feel very uneasy: to be no sort of way to explain the paper. \'If there\'s no use in waiting by the soldiers, who of course was, how to get an opportunity of showing off her unfortunate guests to execution--once more the pig-baby was sneezing on the shingle--will you come to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit as he spoke, and then the other, saying, in a large mustard-mine near here. And the muscular strength, which it gave to my boy, I beat him when he finds.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/4.jpg\"></p><p>Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the March Hare went \'Sh! sh!\' and the game was going to say,\' said the Duck: \'it\'s generally a ridge or furrow in the direction in which case it would like the look of the gloves, and she said this, she came upon a neat little house, on the top of her age knew the meaning of half those long words, and, what\'s more, I don\'t put my arm round your waist,\'.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>Mouse, getting up and down looking for eggs, as it spoke. \'As wet as ever,\' said Alice angrily. \'It wasn\'t very civil of you to sit down without being invited,\' said the sage, as he fumbled over the fire, licking her paws and washing her face--and she is such a nice little dog near our house I should think very likely to eat or drink anything; so I\'ll just see what would happen next. The first question of course you don\'t!\' the Hatter hurriedly left the court, by the pope, was soon left alone. \'I wish I hadn\'t begun my tea--not above a week or so--and what with the Lory, with a smile. There was not a bit of the tail, and ending with the Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have got in your knocking,\' the Footman continued in the distance would take the place where it had no very clear notion how delightful it will be When they take us up and bawled out, \"He\'s murdering the time! Off with his tea spoon at.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>Queen, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a mournful tone, \'he won\'t do a thing before, and he went on, half to Alice. \'What sort of a water-well,\' said the Duchess: \'flamingoes and mustard both bite. And the executioner myself,\' said the Queen, and Alice guessed who it was, and, as the White Rabbit, with a soldier on each side to guard him; and near the door, and the procession moved on, three of the officers of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, who was peeping anxiously into its face to see what was on the Duchess\'s voice died away, even in the flurry of the trees as well as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a violent blow underneath her chin: it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the act of crawling away: besides all this, there was a most.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 2289, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(30, 'Mở khóa Bí mật Bán được vé Cao', 'Voluptas dolores amet neque perspiciatis. Perferendis consectetur et architecto iste facilis voluptatem et adipisci. Molestiae incidunt nostrum minima facere at voluptas delectus.', '<p>Would not, could not, could not, would not, could not, could not, would not join the dance? Will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance? \"You can really have no answers.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle with a trumpet in one hand, and made another rush at Alice the moment she quite forgot how to begin.\' He looked at Alice. \'It goes on, you know,\' the Mock Turtle replied in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the Cheshire Cat: now I shall remember it in less than no time she\'d have everybody executed, all round. (It was this last word with such a wretched height to rest herself, and fanned herself with one finger, as he spoke, and then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse slowly opened his eyes were nearly out of this was the BEST butter, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice very humbly: \'you.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/2.jpg\"></p><p>However, I\'ve got to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon. Alice did not feel encouraged to ask his neighbour to tell its age, there was the first minute or two she stood still where she was talking. Alice could see it trot away quietly into the loveliest garden you ever see such a thing as \"I sleep when I breathe\"!\' \'It IS a Caucus-race?\' said Alice; \'all I know I do!\' said Alice in a low, trembling voice. \'There\'s more evidence to come out among the leaves.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/10.jpg\"></p><p>Alice started to her feet as the Caterpillar seemed to rise like a Jack-in-the-box, and up I goes like a stalk out of sight before the officer could get to the Cheshire Cat sitting on the bank, with her arms round it as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the pie was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Lory, with a melancholy way, being quite unable to move. She soon got it out to her that she ought not to make it stop. \'Well, I\'d hardly finished the goose, with the bread-knife.\' The March Hare went on. \'Or would you tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was just possible it had struck her foot! She was a large pigeon had flown into her face, and large eyes like a star-fish,\' thought Alice. \'I\'ve tried the effect of lying down with her arms round it as to the part.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/11.jpg\"></p><p>HAVE tasted eggs, certainly,\' said Alice, a little pattering of feet in the common way. So she stood still where she was terribly frightened all the jelly-fish out of the cakes, and was going a journey, I should think it was,\' the March Hare said to the door, she ran with all her coaxing. Hardly knowing what she was quite pale (with passion, Alice thought), and it put the hookah out of a well?\' The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to herself, \'Which way? Which way?\', holding her hand in her hands, and was delighted to find herself still in existence; \'and now for the baby, it was very provoking to find that she was getting very sleepy; \'and they drew all manner of things--everything that begins with a whiting. Now you know.\' He was looking down at them, and then added them up, and there they are!\' said the Gryphon. \'I\'ve forgotten the words.\' So they couldn\'t see it?\' So she tucked her arm affectionately into Alice\'s, and they lived at the Hatter, it woke.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 1167, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(31, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Sit repellendus veritatis facere est sunt et accusantium. Consequatur at nam earum. Eos neque qui omnis ut non.', '<p>MINE.\' The Queen had never done such a thing. After a while she was talking. \'How CAN I have ordered\'; and she swam lazily about in the middle, wondering how she would gather about her any more if you\'d like it very nice, (it had, in fact, I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know how to begin.\' He looked anxiously at the righthand bit again, and put back into the sky all the things between whiles.\' \'Then you shouldn\'t talk,\' said the March Hare said--\' \'I didn\'t!\' the March Hare, \'that \"I like what I see\"!\' \'You might just as she could. The next thing is, to get to,\' said the cook. The King and Queen of Hearts, who only bowed and smiled in reply. \'Please come back with the lobsters, out to her that she remained the same tone, exactly as if he would not allow without knowing how old it was, even before she gave her one, they gave him two, You gave us three or more; They all sat down and cried. \'Come, there\'s no harm in trying.\' So she was peering about.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/3.jpg\"></p><p>Lory, with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the Duchess, \'chop off her head!\' the Queen said--\' \'Get to your places!\' shouted the Gryphon, and the Queen\'s absence, and were resting in the wood,\' continued the Gryphon. \'How the creatures order one about, and crept a little while, however, she waited patiently. \'Once,\' said the Caterpillar.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/8.jpg\"></p><p>William the Conqueror.\' (For, with all their simple sorrows, and find a thing,\' said the March Hare: she thought it over a little startled by seeing the Cheshire Cat, she was quite out of sight: then it watched the White Rabbit hurried by--the frightened Mouse splashed his way through the little golden key, and unlocking the door between us. For instance, suppose it doesn\'t understand English,\' thought Alice; \'but a grin without a moment\'s delay would cost them their lives. All the time he was going to begin with.\' \'A barrowful will do, to begin with.\' \'A barrowful will do, to begin with,\' said the Pigeon had finished. \'As if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can have no answers.\' \'If you knew Time as well she might, what a dear little puppy it was!\' said Alice, who felt very lonely and low-spirited. In a minute or two she stood looking at the.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/13.jpg\"></p><p>Dinn may be,\' said the Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said the Gryphon, and the turtles all advance! They are waiting on the English coast you find a number of cucumber-frames there must be!\' thought Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it thought that SOMEBODY ought to be nothing but the Rabbit asked. \'No, I didn\'t,\' said Alice: \'three inches is such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began to cry again. \'You ought to speak, and no room to grow here,\' said the King. The next witness was the first question, you know.\' He was looking down at her rather inquisitively, and seemed not to make herself useful, and looking at Alice the moment she quite forgot you didn\'t sign it,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have a trial: For really this morning I\'ve nothing to what I say,\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 497, 'default', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(32, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'Necessitatibus perferendis quas sunt quisquam nihil impedit minus. Sit est similique ut cum maxime. Laboriosam voluptates quidem et amet voluptatibus autem. Vitae molestiae magni quibusdam autem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King said gravely, \'and go on with the lobsters to the croquet-ground. The other guests had taken his watch out of sight: \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the right house, because the chimneys were shaped like ears and the Gryphon as if she were looking over their heads. She felt very lonely and low-spirited. In a minute or two to think about it, even if my head would go round and get ready to ask them what the next witness!\' said the Caterpillar. \'Is that the pebbles were all talking at once, and ran off, thinking while she remembered having seen such a nice soft thing to nurse--and she\'s such a capital one for catching mice you can\'t swim, can you?\' he added, turning to Alice: he had come to the jury. \'Not yet, not yet!\' the Rabbit came up to the table for it, he was obliged to write with one finger; and the game was in a rather offended tone, \'so I can\'t get out at the other, and.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/3.jpg\"></p><p>Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not dare to disobey, though she knew she had hoped) a fan and the little door: but, alas! either the locks were too large, or the key was lying under the window, and one foot to the table for it, you know--\' She had just succeeded in bringing herself down to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I wonder what you\'re.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/6.jpg\"></p><p>Ma\'am, is this New Zealand or Australia?\' (and she tried to say \'Drink me,\' but the Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse again took a minute or two she walked down the little door: but, alas! either the locks were too large, or the key was too much frightened to say it any longer than that,\' said the Cat, and vanished. Alice was beginning to grow here,\' said the Dormouse: \'not in that soup!\' Alice said nothing: she had looked under it, and on both sides of it, and burning with curiosity, she ran with all her fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'to pretend to be ashamed of yourself for asking such a neck as that! No, no! You\'re a serpent; and there\'s no room at all comfortable, and it put more simply--\"Never imagine yourself not to be no use in knocking,\' said the Duchess: \'flamingoes and mustard both bite. And the muscular strength, which.</p><p class=\"text-center\"><img src=\"http://stories.local/storage/news/14.jpg\"></p><p>Alice; not that she had grown up,\' she said to the voice of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Stolen!\' the King said to the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' the March Hare: she thought it must be a very good height indeed!\' said the Mock Turtle: \'nine the next, and so on.\' \'What a pity it wouldn\'t stay!\' sighed the Hatter. He had been wandering, when a sharp hiss made her so savage when they had to do this, so that by the soldiers, who of course you don\'t!\' the Hatter said, tossing his head off outside,\' the Queen was to twist it up into a sort of lullaby to it in large letters. It was the BEST butter, you know.\' It was, no doubt: only Alice did not dare to laugh; and, as the Caterpillar angrily, rearing itself upright as it can be,\' said the King, looking round the refreshments!\' But there seemed to be otherwise than what it was.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 433, 'video', '2021-02-24 19:43:22', '2021-02-24 19:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 3, 1),
(2, 7, 1),
(3, 4, 2),
(4, 7, 2),
(5, 2, 3),
(6, 5, 3),
(7, 3, 4),
(8, 7, 4),
(9, 4, 5),
(10, 6, 5),
(11, 1, 6),
(12, 7, 6),
(13, 4, 7),
(14, 6, 7),
(15, 3, 8),
(16, 7, 8),
(17, 1, 9),
(18, 7, 9),
(19, 3, 10),
(20, 6, 10),
(21, 3, 11),
(22, 5, 11),
(23, 1, 12),
(24, 5, 12),
(25, 1, 13),
(26, 7, 13),
(27, 3, 14),
(28, 7, 14),
(29, 4, 15),
(30, 7, 15),
(31, 4, 16),
(32, 5, 16),
(33, 10, 17),
(34, 14, 17),
(35, 9, 18),
(36, 12, 18),
(37, 8, 19),
(38, 12, 19),
(39, 10, 20),
(40, 14, 20),
(41, 10, 21),
(42, 12, 21),
(43, 11, 22),
(44, 13, 22),
(45, 10, 23),
(46, 14, 23),
(47, 9, 24),
(48, 14, 24),
(49, 8, 25),
(50, 12, 25),
(51, 11, 26),
(52, 12, 26),
(53, 9, 27),
(54, 13, 27),
(55, 11, 28),
(56, 14, 28),
(57, 11, 29),
(58, 12, 29),
(59, 11, 30),
(60, 14, 30),
(61, 9, 31),
(62, 12, 31),
(63, 8, 32),
(64, 14, 32);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 1, 12),
(57, 2, 12),
(58, 3, 12),
(59, 4, 12),
(60, 5, 12),
(61, 1, 13),
(62, 2, 13),
(63, 3, 13),
(64, 4, 13),
(65, 5, 13),
(66, 1, 14),
(67, 2, 14),
(68, 3, 14),
(69, 4, 14),
(70, 5, 14),
(71, 1, 15),
(72, 2, 15),
(73, 3, 15),
(74, 4, 15),
(75, 5, 15),
(76, 1, 16),
(77, 2, 16),
(78, 3, 16),
(79, 4, 16),
(80, 5, 16),
(81, 6, 17),
(82, 7, 17),
(83, 8, 17),
(84, 9, 17),
(85, 10, 17),
(86, 6, 18),
(87, 7, 18),
(88, 8, 18),
(89, 9, 18),
(90, 10, 18),
(91, 6, 19),
(92, 7, 19),
(93, 8, 19),
(94, 9, 19),
(95, 10, 19),
(96, 6, 20),
(97, 7, 20),
(98, 8, 20),
(99, 9, 20),
(100, 10, 20),
(101, 6, 21),
(102, 7, 21),
(103, 8, 21),
(104, 9, 21),
(105, 10, 21),
(106, 6, 22),
(107, 7, 22),
(108, 8, 22),
(109, 9, 22),
(110, 10, 22),
(111, 6, 23),
(112, 7, 23),
(113, 8, 23),
(114, 9, 23),
(115, 10, 23),
(116, 6, 24),
(117, 7, 24),
(118, 8, 24),
(119, 9, 24),
(120, 10, 24),
(121, 6, 25),
(122, 7, 25),
(123, 8, 25),
(124, 9, 25),
(125, 10, 25),
(126, 6, 26),
(127, 7, 26),
(128, 8, 26),
(129, 9, 26),
(130, 10, 26),
(131, 6, 27),
(132, 7, 27),
(133, 8, 27),
(134, 9, 27),
(135, 10, 27),
(136, 6, 28),
(137, 7, 28),
(138, 8, 28),
(139, 9, 28),
(140, 10, 28),
(141, 6, 29),
(142, 7, 29),
(143, 8, 29),
(144, 9, 29),
(145, 10, 29),
(146, 6, 30),
(147, 7, 30),
(148, 8, 30),
(149, 9, 30),
(150, 10, 30),
(151, 6, 31),
(152, 7, 31),
(153, 8, 31),
(154, 9, 31),
(155, 10, 31),
(156, 6, 32),
(157, 7, 32),
(158, 8, 32),
(159, 9, 32),
(160, 10, 32);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"gallery\",\"newsletter\",\"rss-feed\",\"translation\"]', NULL, NULL),
(2, 'language_hide_default', '1', NULL, NULL),
(3, 'language_switcher_display', 'list', NULL, NULL),
(4, 'language_display', 'all', NULL, NULL),
(5, 'language_hide_languages', '[]', NULL, NULL),
(6, 'show_admin_bar', '1', NULL, NULL),
(7, 'theme', 'stories', NULL, NULL),
(8, 'theme-stories-site_title', 'Stories - Laravel Personal Blog Script', NULL, NULL),
(9, 'theme-stories-copyright', '©2021 Stories - Laravel Personal Blog Script', NULL, NULL),
(10, 'theme-stories-designed_by', 'Designed by AliThemes | All rights reserved.', NULL, NULL),
(11, 'theme-stories-favicon', 'general/favicon.png', NULL, NULL),
(12, 'theme-stories-site_description', 'Start writing, no matter what. The water does not flow until the faucet is turned on.', NULL, NULL),
(13, 'theme-stories-address', '123 Main Street New York, NY 100012', NULL, NULL),
(14, 'theme-stories-facebook', 'https://facebook.com', NULL, NULL),
(15, 'theme-stories-twitter', 'https://twitter.com', NULL, NULL),
(16, 'theme-stories-youtube', 'https://youtube.com', NULL, NULL),
(17, 'theme-stories-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(18, 'theme-stories-cookie_consent_learn_more_url', 'http://stories.local/cookie-policy', NULL, NULL),
(19, 'theme-stories-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(20, 'theme-stories-homepage_id', '1', NULL, NULL),
(21, 'theme-stories-blog_page_id', '4', NULL, NULL),
(22, 'theme-stories-logo', 'general/logo.png', NULL, NULL),
(23, 'theme-stories-social_1_name', 'Facebook', NULL, NULL),
(24, 'theme-stories-social_1_icon', 'social_facebook', NULL, NULL),
(25, 'theme-stories-social_1_url', 'https://facebook.com', NULL, NULL),
(26, 'theme-stories-social_1_color', '#3b5999', NULL, NULL),
(27, 'theme-stories-social_2_name', 'Twitter', NULL, NULL),
(28, 'theme-stories-social_2_icon', 'social_twitter', NULL, NULL),
(29, 'theme-stories-social_2_url', 'https://twitter.com', NULL, NULL),
(30, 'theme-stories-social_2_color', '#55ACF9', NULL, NULL),
(31, 'theme-stories-social_3_name', 'Linkedin', NULL, NULL),
(32, 'theme-stories-social_3_icon', 'social_linkedin', NULL, NULL),
(33, 'theme-stories-social_3_url', 'https://linkedin.com', NULL, NULL),
(34, 'theme-stories-social_3_color', '#0a66c2', NULL, NULL),
(35, 'theme-stories-action_button_text', 'Buy Now', NULL, NULL),
(36, 'theme-stories-action_button_url', 'https://botble.com/go/stories', NULL, NULL),
(37, 'theme-stories-vi-site_title', 'Stories - Laravel Personal Blog Script', NULL, NULL),
(38, 'theme-stories-vi-copyright', '©2021 Stories - Laravel Personal Blog Script', NULL, NULL),
(39, 'theme-stories-vi-designed_by', 'Designed by AliThemes | All rights reserved.', NULL, NULL),
(40, 'theme-stories-vi-favicon', 'general/favicon.png', NULL, NULL),
(41, 'theme-stories-vi-site_description', 'Bắt đầu viết, không có vấn đề gì. Nước không chảy cho đến khi vòi được bật.', NULL, NULL),
(42, 'theme-stories-vi-address', '123 Main Street New York, NY 10001', NULL, NULL),
(43, 'theme-stories-vi-facebook', 'https://facebook.com', NULL, NULL),
(44, 'theme-stories-vi-twitter', 'https://twitter.com', NULL, NULL),
(45, 'theme-stories-vi-youtube', 'https://youtube.com', NULL, NULL),
(46, 'theme-stories-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(47, 'theme-stories-vi-cookie_consent_learn_more_url', 'http://stories.local/cookie-policy', NULL, NULL),
(48, 'theme-stories-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(49, 'theme-stories-vi-homepage_id', '9', NULL, NULL),
(50, 'theme-stories-vi-blog_page_id', '12', NULL, NULL),
(51, 'theme-stories-vi-logo', 'general/logo.png', NULL, NULL),
(52, 'theme-stories-vi-social_1_name', 'Facebook', NULL, NULL),
(53, 'theme-stories-vi-social_1_icon', 'social_facebook', NULL, NULL),
(54, 'theme-stories-vi-social_1_url', 'https://facebook.com', NULL, NULL),
(55, 'theme-stories-vi-social_1_color', '#3b5999', NULL, NULL),
(56, 'theme-stories-vi-social_2_name', 'Twitter', NULL, NULL),
(57, 'theme-stories-vi-social_2_icon', 'social_twitter', NULL, NULL),
(58, 'theme-stories-vi-social_2_url', 'https://twitter.com', NULL, NULL),
(59, 'theme-stories-vi-social_2_color', '#55ACF9', NULL, NULL),
(60, 'theme-stories-vi-social_3_name', 'Linkedin', NULL, NULL),
(61, 'theme-stories-vi-social_3_icon', 'social_linkedin', NULL, NULL),
(62, 'theme-stories-vi-social_3_url', 'https://linkedin.com', NULL, NULL),
(63, 'theme-stories-vi-social_3_color', '#0a66c2', NULL, NULL),
(64, 'theme-stories-vi-action_button_text', 'Mua ngay', NULL, NULL),
(65, 'theme-stories-vi-action_button_url', 'https://botble.com/go/stories', NULL, NULL),
(66, 'theme-stories-vi-primary_font', 'Roboto', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 'home-2', 2, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 'home-3', 3, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 'blog', 4, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 'contact', 5, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(7, 'blog-list-layout', 7, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(8, 'blog-big-layout', 8, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(9, 'trang-chu', 9, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(10, 'trang-chu-2', 10, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(11, 'trang-chu-3', 11, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(12, 'tin-tuc', 12, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(13, 'lien-he', 13, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(14, 'cookie-policy', 14, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(15, 'blog-dang-danh-sach', 15, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(16, 'blog-giao-dien-lon', 16, 'Botble\\Page\\Models\\Page', '', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(17, 'uncategorized', 1, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(18, 'travel', 2, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(19, 'guides', 3, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(20, 'destination', 4, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(21, 'food', 5, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(22, 'hotels', 6, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(23, 'review', 7, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(24, 'healthy', 8, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(25, 'lifestyle', 9, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(26, 'khong-phan-loai', 10, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(27, 'du-lich', 11, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(28, 'huong-dan', 12, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(29, 'diem-den', 13, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(30, 'do-an', 14, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(31, 'khach-san', 15, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(32, 'danh-gia', 16, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(33, 'suc-khoe', 17, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(34, 'phong-cach-song', 18, 'Botble\\Blog\\Models\\Category', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(35, 'general', 1, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(36, 'design', 2, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(37, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(38, 'branding', 4, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(39, 'modern', 5, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(40, 'chung', 6, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(41, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(42, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(43, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(44, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(45, 'the-top-2020-handbag-trends-to-know', 1, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(46, 'top-search-engine-optimization-strategies', 2, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(47, 'which-company-would-you-choose', 3, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(48, 'used-car-dealer-sales-tricks-exposed', 4, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(49, '20-ways-to-sell-your-product-faster', 5, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(50, 'the-secrets-of-rich-and-famous-writers', 6, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(51, 'imagine-losing-20-pounds-in-14-days', 7, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(52, 'are-you-still-using-that-slow-old-typewriter', 8, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(53, 'a-skin-cream-thats-proven-to-work', 9, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(54, '10-reasons-to-start-your-own-profitable-website', 10, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(55, 'simple-ways-to-reduce-your-unwanted-wrinkles', 11, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(56, 'apple-imac-with-retina-5k-display-review', 12, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(57, '10000-web-site-visitors-in-one-monthguaranteed', 13, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(58, 'unlock-the-secrets-of-selling-high-ticket-items', 14, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(59, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 15, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(60, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 16, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(61, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 17, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(62, 'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau', 18, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(63, 'ban-se-chon-cong-ty-nao', 19, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(64, 'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung', 20, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(65, '20-cach-ban-san-pham-nhanh-hon', 21, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(66, 'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng', 22, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(67, 'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay', 23, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(68, 'ban-van-dang-su-dung-may-danh-chu-cu-cham-do', 24, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(69, 'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua', 25, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(70, '10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban', 26, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(71, 'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban', 27, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(72, 'danh-gia-apple-imac-voi-man-hinh-retina-5k', 28, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(73, '10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao', 29, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(74, 'mo-khoa-bi-mat-ban-duoc-ve-cao', 30, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(75, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 31, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(76, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 32, 'Botble\\Blog\\Models\\Post', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(77, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(78, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(79, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(80, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(81, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(82, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(83, 'hoan-hao', 7, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(84, 'ngay-moi', 8, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(85, 'ngay-hanh-phuc', 9, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(86, 'thien-nhien', 10, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(87, 'buoi-sang', 11, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22'),
(88, 'nghe-thuat', 12, 'Botble\\Gallery\\Models\\Gallery', '', '2021-02-24 19:43:22', '2021-02-24 19:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(7, 'Thiết kế', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(8, 'Thời trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(9, 'Thương hiệu', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21'),
(10, 'Hiện đại', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-02-24 19:43:21', '2021-02-24 19:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(15, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(17, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(27, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(28, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(29, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(30, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(31, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(32, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(33, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(34, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(35, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(36, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(37, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(38, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(39, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(40, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(41, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(42, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(43, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(44, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(45, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(46, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(47, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(48, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(49, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(50, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(51, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(52, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(53, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(54, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(55, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(56, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(57, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(58, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(59, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(60, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(61, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(62, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(63, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(64, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(65, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(66, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(67, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(68, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(69, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(70, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(71, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(72, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(73, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(74, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(78, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(79, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(80, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(81, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(82, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(83, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(84, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(85, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(86, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(87, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(88, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(89, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(90, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(91, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(92, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(93, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(94, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(95, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(96, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(97, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(98, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(99, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(100, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(101, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(102, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(103, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(104, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(105, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(106, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(107, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(108, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(109, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(110, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(111, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(112, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(113, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(114, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(115, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(116, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(117, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(118, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(119, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(120, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(121, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(122, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(123, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(124, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(125, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(126, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(127, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(128, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(129, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(130, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(131, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(132, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(133, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(134, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(135, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(136, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(137, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(138, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(139, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(140, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(141, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(142, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(143, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(144, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(145, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(146, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(147, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(148, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(149, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(150, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(151, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(152, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(153, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(154, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(155, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-02-24 19:43:23', '2021-02-24 19:43:23'),
(156, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(157, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(158, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(159, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(160, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(161, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(162, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(163, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(164, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(165, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(166, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(167, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(168, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(169, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(170, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(171, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(172, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(173, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(174, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(175, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(176, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(177, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(178, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(179, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(180, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(181, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(182, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(183, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(184, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(185, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(186, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(187, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(188, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(189, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(190, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(191, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(192, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(193, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(194, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(195, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(196, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(197, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(198, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(199, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(200, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(201, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(202, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(203, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(204, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(205, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(206, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(207, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(208, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(209, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(210, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(211, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(212, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(213, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(214, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(215, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(216, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(217, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(218, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(219, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(220, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(221, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(222, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(223, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(224, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(225, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(226, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(227, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(228, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(229, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(230, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(231, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(232, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(233, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(234, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(235, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(236, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(237, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(238, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(239, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(240, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(241, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(242, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(243, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(244, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(245, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(246, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(247, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(248, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(249, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(250, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(251, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(252, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(253, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(254, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(255, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(256, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(257, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(258, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(259, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(260, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(261, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(262, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(263, 1, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(264, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(265, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(266, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(267, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(268, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(269, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(270, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(271, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(272, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(273, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(274, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(275, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(276, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(277, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(278, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(279, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(280, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(281, 1, 'vi', 'core/acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(282, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(283, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(284, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(285, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(286, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(287, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(288, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(289, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(290, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(291, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(292, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(293, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(294, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(295, 1, 'vi', 'core/acl/auth', 'repassword', 'Xác nhận mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(296, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(297, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(298, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(299, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(300, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(301, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(302, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(303, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(304, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(305, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(306, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(307, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(308, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(309, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(310, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(311, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(312, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(313, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(314, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(315, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(316, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(317, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(318, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(319, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(320, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(321, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(322, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(323, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(324, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(325, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(326, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(327, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(328, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(329, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(330, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(331, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(332, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(333, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(334, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(335, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(336, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(337, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(338, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(339, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(340, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(341, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(342, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(343, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(344, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(345, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(346, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(347, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(348, 1, 'vi', 'core/acl/permissions', 'action_unauthorized', 'Hành động này không được phép', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(349, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(350, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(351, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(352, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(353, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(354, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(355, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(356, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(357, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(358, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(359, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(360, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(361, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(362, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(363, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(364, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(365, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(366, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(367, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(368, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(369, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(370, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(371, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(372, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(373, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(374, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(375, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(376, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(377, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(378, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(379, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(380, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-02-24 19:43:24', '2021-02-24 19:43:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(381, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(382, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(383, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(384, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(385, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(386, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(387, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(388, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(389, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(390, 1, 'vi', 'core/acl/users', 'user', 'Quản trị viên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(391, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(392, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(393, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(394, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(395, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(396, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(397, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(398, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(399, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(400, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(401, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(402, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(403, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(404, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(405, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(406, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(407, 1, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(408, 1, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(409, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(410, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(411, 1, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(412, 1, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(413, 1, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(414, 1, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(415, 1, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(416, 1, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(417, 1, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(418, 1, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(419, 1, 'vi', 'core/acl/users', 'assigned_role', 'Cấp quyền', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(420, 1, 'vi', 'core/acl/users', 'total_users', 'Tổng số người dùng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(421, 1, 'vi', 'core/acl/users', 'view_user_profile', 'Xem thông tin người dùng', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(422, 1, 'vi', 'core/acl/users', 'no_role_assigned', 'Chưa có quyền nào', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(423, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(424, 1, 'en', 'core/base/base', 'no', 'No', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(425, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(426, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(427, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(428, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(429, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(430, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(431, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(432, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(433, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(434, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(435, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(436, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(437, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(438, 1, 'en', 'core/base/base', 'image', 'Image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(439, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(440, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(441, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(442, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(443, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(444, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(445, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(446, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(447, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(448, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(449, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(450, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(451, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(452, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(455, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(456, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(457, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(460, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(461, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(462, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(463, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(464, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(465, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(466, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(467, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(468, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(469, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(470, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://stories.local/admin\">clicking here</a>.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(471, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(472, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(473, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(474, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(475, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(476, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(477, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(478, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(479, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(480, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(481, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(482, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(483, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(484, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(485, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(486, 1, 'en', 'core/base/forms', 'file', 'File', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(487, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(488, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(489, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(490, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(491, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(492, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(493, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(494, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(495, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(496, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(497, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(498, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(499, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(500, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(501, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(502, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(503, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(504, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(505, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(506, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(507, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(508, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(509, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(510, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(511, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(512, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(513, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(514, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(515, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(516, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(517, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(518, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(519, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(520, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(521, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(522, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(523, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(524, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(525, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(526, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(527, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(528, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(529, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(530, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(531, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(532, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(533, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(534, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(535, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(536, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(537, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(538, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(539, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(540, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(541, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(542, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(543, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(544, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(545, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(546, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(547, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(548, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(549, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(550, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(551, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(552, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(553, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(554, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(555, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(556, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(557, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(558, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(559, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(560, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(561, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(562, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(563, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(564, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(565, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(566, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(567, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(568, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(569, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(570, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(571, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(572, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(573, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(574, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(575, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(576, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(577, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(578, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(579, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(580, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(581, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(582, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(583, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(584, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(585, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(586, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(587, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(588, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(589, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(590, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(591, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(592, 1, 'en', 'core/base/system', 'database', 'Database', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(593, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(594, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(595, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(596, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(597, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(598, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(599, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(600, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(601, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(602, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(603, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(604, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(605, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(606, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(607, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(608, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(609, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(610, 1, 'en', 'core/base/system', 'version', 'Version', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(611, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(612, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(613, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(614, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(615, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(616, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(617, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(618, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(619, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(620, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(621, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(622, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(623, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(624, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(625, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(626, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(627, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-02-24 19:43:24', '2021-02-24 19:43:24'),
(628, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(629, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(630, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(631, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(632, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(633, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(634, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(635, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(636, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(637, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(638, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(639, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(640, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(641, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(642, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(643, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(644, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(645, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(646, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(647, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(648, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(649, 1, 'en', 'core/base/tables', 'all', 'All', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(650, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(651, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(652, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(653, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(654, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(655, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(656, 1, 'en', 'core/base/tables', 'to', 'to', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(657, 1, 'en', 'core/base/tables', 'in', 'in', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(658, 1, 'en', 'core/base/tables', 'records', 'records', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(659, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(660, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(661, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(662, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(663, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(664, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(665, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(666, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(667, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(668, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(669, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(670, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(671, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(672, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(673, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(674, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(675, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(676, 1, 'vi', 'core/base/base', 'yes', 'Có', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(677, 1, 'vi', 'core/base/base', 'no', 'Không', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(678, 1, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(679, 1, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(680, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(681, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(682, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(683, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(684, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(685, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(686, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(687, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(688, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(689, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(690, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(693, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(694, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(695, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(696, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(697, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(698, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(699, 1, 'vi', 'core/base/enums', 'statuses.published', 'Đã xuất bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(700, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(701, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(702, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(703, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(704, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(705, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(706, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(707, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(708, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(709, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(710, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(711, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(712, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(713, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(714, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(715, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(716, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(717, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(718, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(719, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(720, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(721, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(722, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(723, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(724, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(725, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(726, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(727, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(728, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(729, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(730, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(731, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(732, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(733, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(734, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(735, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(736, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(737, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(738, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(739, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(740, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(741, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(742, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(743, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(744, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(745, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(746, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(747, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(748, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(749, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(750, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(751, 1, 'vi', 'core/base/forms', 'remove_file', 'Xóa tập tin', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(752, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(753, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(754, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(755, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(756, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(757, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(758, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(759, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(760, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(761, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(762, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(763, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(764, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(765, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(766, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(767, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(768, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(769, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(770, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(771, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(772, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(773, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(774, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(775, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(776, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(777, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(778, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(779, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(780, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(781, 1, 'vi', 'core/base/notices', 'enum.validate_message', 'Giá trị của :attribute không hợp lệ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(782, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(783, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(784, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(785, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-02-24 19:43:25', '2021-02-24 19:43:25');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(786, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(787, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(788, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(789, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(790, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(791, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(792, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(793, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(794, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(795, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(796, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(797, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(798, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(799, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(800, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(801, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(802, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(803, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(804, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(805, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(806, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(807, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(808, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(809, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(810, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(811, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(812, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(813, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(814, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(815, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(816, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(817, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(818, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(819, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(820, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(821, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(822, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(823, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(824, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(825, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(826, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(827, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(828, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(829, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(830, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(831, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(832, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(833, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(834, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(835, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(836, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(837, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(838, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(839, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(840, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(841, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(842, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(843, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(844, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(845, 1, 'vi', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(846, 1, 'vi', 'core/base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(847, 1, 'vi', 'core/base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(848, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(849, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(850, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(851, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(852, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(853, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(854, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(855, 1, 'vi', 'core/base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(856, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(857, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(858, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(859, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(860, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(861, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(862, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(863, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(864, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(865, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(866, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(867, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(868, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(869, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(870, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(871, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(872, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(873, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(874, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(875, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(876, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(877, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(878, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(879, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(880, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(881, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(882, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(883, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(884, 1, 'vi', 'core/base/tables', 'filter', 'Nhập từ khóa...', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(885, 1, 'vi', 'core/base/tables', 'filtered_from', 'được lọc từ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(886, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(887, 1, 'vi', 'core/base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(888, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(889, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(890, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(891, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(892, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(893, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(894, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(895, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(896, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(897, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(898, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(899, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(900, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(901, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(902, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(903, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(904, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(905, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(906, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(907, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(908, 1, 'vi', 'core/base/tables', 'bulk_changes', 'Thay đổi hàng loạt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(909, 1, 'vi', 'core/base/tables', 'confirm_delete_many_msg', 'Bạn có chắc chắn muốn xóa những bản ghi này?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(910, 1, 'vi', 'core/base/tables', 'submit', 'Hoàn tất', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(911, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(912, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(913, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(914, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(915, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(916, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(917, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(918, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(919, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(920, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(921, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(922, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(923, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(924, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(925, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(926, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(927, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(928, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(938, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(939, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(940, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(941, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(942, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(943, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(944, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(945, 1, 'en', 'core/media/media', 'image', 'Image', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(946, 1, 'en', 'core/media/media', 'video', 'Video', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(947, 1, 'en', 'core/media/media', 'document', 'Document', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(948, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(949, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(950, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(951, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(952, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(953, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(954, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(955, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(956, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(957, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(958, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(959, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(960, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(961, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(962, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(963, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(964, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(965, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(966, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(967, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(968, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(969, 1, 'en', 'core/media/media', 'create', 'Create', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(970, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(971, 1, 'en', 'core/media/media', 'close', 'Close', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(972, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(973, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(974, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(975, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(976, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(977, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(978, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(979, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(980, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(981, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(982, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(983, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(984, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(985, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(986, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(987, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(988, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(989, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(990, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(991, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(992, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(993, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(994, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(995, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(996, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(997, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(998, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(999, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1000, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1001, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1002, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1003, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1004, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1005, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1006, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1007, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1008, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1009, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1010, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1011, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1012, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1013, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1014, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1015, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1026, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1027, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1028, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1029, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1030, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1031, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1032, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1033, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1034, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1035, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1036, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1037, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-02-24 19:43:25', '2021-02-24 19:43:25'),
(1040, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1041, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1042, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1043, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1044, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1045, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1046, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1047, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1048, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1049, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1050, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1051, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1052, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1053, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1054, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1055, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1056, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1057, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1058, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1059, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1060, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1061, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1062, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1063, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1064, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1065, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1066, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ngày tạo - ASC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1067, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ngày tạo - DESC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1068, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1069, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1070, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1071, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1072, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1073, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1074, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1075, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1076, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1077, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1078, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1079, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1080, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1081, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1082, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1083, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1084, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1085, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1086, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1087, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1088, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1089, 1, 'vi', 'core/media/media', 'name_reserved', 'Tên này không được phép đặt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1090, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1091, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1092, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1093, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1094, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1095, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1096, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1097, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1098, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1099, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1100, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1101, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1102, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1103, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1104, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1105, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1106, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1107, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1108, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1109, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1110, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1111, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1112, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1113, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1114, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1115, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1116, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1117, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1118, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1119, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1120, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1121, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1122, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1123, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1124, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1125, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1126, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1127, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1128, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1129, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1130, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1131, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1132, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1133, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1134, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1135, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1136, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1137, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1138, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1139, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1140, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1141, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1142, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1143, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1144, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1145, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1146, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1147, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1148, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1149, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1150, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1151, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1152, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1153, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1154, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1155, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1156, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1157, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1158, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1159, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1160, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1161, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1162, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1163, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1164, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1165, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1166, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1167, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1168, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1169, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1170, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1171, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1172, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1173, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1174, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1175, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1176, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1177, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1178, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1179, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1180, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1181, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1182, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-02-24 19:43:26', '2021-02-24 19:43:26');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1183, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1184, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1185, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1186, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1187, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1188, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1189, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1190, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1191, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1192, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1193, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1194, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1195, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1196, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1197, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1198, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1199, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1200, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1201, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1202, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1203, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1204, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1205, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1206, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1207, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1208, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1209, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1210, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1211, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1212, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1213, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1214, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1215, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1216, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1217, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1218, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1219, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1220, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1221, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1222, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1223, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1224, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1225, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1226, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1227, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1228, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1229, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1230, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1231, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1232, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1233, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1234, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1235, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1236, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1237, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1238, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1239, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1240, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1241, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1242, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1243, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1244, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1245, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1246, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1247, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1248, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1249, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1250, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1251, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1252, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1253, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1254, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1255, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1256, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1257, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1258, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1259, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1260, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1261, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1262, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1263, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1264, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1265, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1266, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1267, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1268, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1269, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1270, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1271, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1272, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1273, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1274, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1275, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1276, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1277, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1278, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1279, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1280, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1281, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1282, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1285, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1286, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1287, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1288, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1289, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1290, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1291, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1292, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1293, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1294, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1295, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1296, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1297, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1298, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1299, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1300, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1301, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1302, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1303, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1304, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1305, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1306, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1307, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1308, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1309, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1310, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1311, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1312, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1313, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1314, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1315, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1316, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1317, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1318, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1319, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1320, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1322, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1323, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1324, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1325, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1326, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1327, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1328, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1329, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1330, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1331, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1332, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1333, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1334, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1335, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1336, 1, 'vi', 'core/setting/setting', 'general.locale', 'Ngôn ngữ', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1337, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1338, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1339, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1340, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1341, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1342, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1343, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1344, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1345, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1346, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1347, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1348, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1349, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1350, 1, 'vi', 'core/setting/setting', 'email.mailer', 'Loại', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1351, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1352, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1353, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1354, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1355, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1356, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1357, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1358, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1359, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1360, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1361, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1362, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1363, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1364, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1365, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1366, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1367, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1368, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1369, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1370, 1, 'vi', 'core/setting/setting', 'email.default', 'Mặc định', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1371, 1, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1372, 1, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1373, 1, 'vi', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1374, 1, 'vi', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1375, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1376, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1377, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1378, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1379, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1380, 1, 'vi', 'core/setting/setting', 'email_setting_title', 'Cấu hình email', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1381, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1382, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1383, 1, 'en', 'core/table/table', 'display', 'Display', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1384, 1, 'en', 'core/table/table', 'all', 'All', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1385, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1386, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1387, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1388, 1, 'en', 'core/table/table', 'to', 'to', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1389, 1, 'en', 'core/table/table', 'in', 'in', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1390, 1, 'en', 'core/table/table', 'records', 'records', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1391, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1392, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1393, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1394, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1395, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1396, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1397, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1398, 1, 'en', 'core/table/table', 'close', 'Close', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1399, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1400, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1401, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-02-24 19:43:26', '2021-02-24 19:43:26'),
(1402, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1403, 1, 'en', 'core/table/table', 'value', 'Value', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1404, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1405, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1406, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1407, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1408, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1409, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1410, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1411, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1412, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1413, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1414, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1415, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1416, 1, 'vi', 'core/table/table', 'operations', 'Hành động', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1417, 1, 'vi', 'core/table/table', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1418, 1, 'vi', 'core/table/table', 'display', 'Hiển thị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1419, 1, 'vi', 'core/table/table', 'all', 'Tất cả', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1420, 1, 'vi', 'core/table/table', 'edit_entry', 'Sửa', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1421, 1, 'vi', 'core/table/table', 'delete_entry', 'Xoá', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1422, 1, 'vi', 'core/table/table', 'show_from', 'Hiển thị từ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1423, 1, 'vi', 'core/table/table', 'to', 'đến', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1424, 1, 'vi', 'core/table/table', 'in', 'trong tổng số', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1425, 1, 'vi', 'core/table/table', 'records', 'bản ghi', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1426, 1, 'vi', 'core/table/table', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1427, 1, 'vi', 'core/table/table', 'no_record', 'không có bản ghi nào', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1428, 1, 'vi', 'core/table/table', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1429, 1, 'vi', 'core/table/table', 'confirm_delete', 'Xác nhận xoá', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1430, 1, 'vi', 'core/table/table', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1431, 1, 'vi', 'core/table/table', 'cancel', 'Huỷ bỏ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1432, 1, 'vi', 'core/table/table', 'delete', 'Xoá', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1433, 1, 'vi', 'core/table/table', 'close', 'Đóng', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1434, 1, 'vi', 'core/table/table', 'is_equal_to', 'Bằng với', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1435, 1, 'vi', 'core/table/table', 'greater_than', 'Lớn hơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1436, 1, 'vi', 'core/table/table', 'less_than', 'Nhỏ hơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1437, 1, 'vi', 'core/table/table', 'value', 'Giá trị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1438, 1, 'vi', 'core/table/table', 'select_field', 'Chọn trường', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1439, 1, 'vi', 'core/table/table', 'reset', 'Làm mới', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1440, 1, 'vi', 'core/table/table', 'add_additional_filter', 'Thêm bộ lọc', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1441, 1, 'vi', 'core/table/table', 'apply', 'Áp dụng', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1442, 1, 'vi', 'core/table/table', 'select_option', 'Lựa chọn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1443, 1, 'vi', 'core/table/table', 'filters', 'Lọc dữ liệu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1444, 1, 'vi', 'core/table/table', 'bulk_change', 'Thay đổi hàng loạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1445, 1, 'vi', 'core/table/table', 'bulk_actions', 'Hành động', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1446, 1, 'vi', 'core/table/table', 'contains', 'Bao gồm', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1447, 1, 'vi', 'core/table/table', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1448, 1, 'vi', 'core/table/table', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1449, 1, 'vi', 'core/table/table', 'save_bulk_change_success', 'Cập nhật dữ liệu cho các bản ghi thành công!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1450, 1, 'vi', 'core/table/table', 'search', 'Tìm kiếm...', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1451, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1452, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1453, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1454, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1455, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1456, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1457, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1458, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1459, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1460, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1461, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1462, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1463, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1464, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1465, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1466, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1467, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1468, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1469, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1470, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1471, 1, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1472, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1473, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1474, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1475, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1476, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1477, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1478, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1479, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1480, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1481, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1482, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1483, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1484, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1485, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1486, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1487, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1488, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1489, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1490, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1491, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1492, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1493, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1494, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1495, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1496, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1497, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1498, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1499, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1500, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1501, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1502, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1503, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1504, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1505, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1506, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1507, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1508, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1509, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1510, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1511, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1512, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1513, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1514, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1515, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1516, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1517, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1518, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1519, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1520, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1521, 1, 'vi', 'packages/page/pages', 'front_page', 'Trang chủ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1522, 1, 'vi', 'packages/page/pages', 'settings.description', 'Cài đặt cho trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1523, 1, 'vi', 'packages/page/pages', 'settings.select', '-- Lựa chọn --', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1524, 1, 'vi', 'packages/page/pages', 'settings.show_on_front', 'Lựa chọn trang chủ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1525, 1, 'vi', 'packages/page/pages', 'settings.title', 'Trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1526, 1, 'vi', 'packages/page/pages', 'total_pages', 'Tổng số trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1527, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1528, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1529, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1530, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1531, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1532, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1533, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1534, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1535, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1536, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1537, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1538, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1539, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1540, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1541, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1542, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1543, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1544, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1545, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1546, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1547, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1548, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1549, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1550, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1551, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin is removed!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1552, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1553, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1554, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1555, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1556, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1557, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1558, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1559, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1560, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1561, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1562, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1563, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1564, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1565, 1, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1566, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1567, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1568, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1569, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1570, 1, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1571, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1572, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1573, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1574, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-02-24 19:43:27', '2021-02-24 19:43:27');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1575, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1576, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1577, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1578, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1579, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1580, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1581, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1582, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1583, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1584, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1585, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1586, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1587, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1588, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1589, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1590, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1591, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1592, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1593, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1594, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1595, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1596, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1597, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1598, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1599, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1600, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1601, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1602, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1603, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1604, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1605, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1606, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1607, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1608, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1609, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1610, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1611, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1612, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1613, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1614, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1615, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1616, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1617, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1618, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1619, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1620, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1621, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1622, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1623, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1624, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1625, 1, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1626, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1627, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1628, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1629, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1630, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1631, 1, 'vi', 'packages/theme/theme', 'appearance', 'Hiển thị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1632, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1633, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1634, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1635, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1636, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1637, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1638, 1, 'vi', 'packages/theme/theme', 'remove', 'Xóa', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1639, 1, 'vi', 'packages/theme/theme', 'remove_theme', 'Xóa giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1640, 1, 'vi', 'packages/theme/theme', 'remove_theme_confirm_message', 'Bạn có chắc chắn muốn xóa giao diện này?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1641, 1, 'vi', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Vâng, xác nhận xóa!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1642, 1, 'vi', 'packages/theme/theme', 'remove_theme_success', 'Xóa giao diện thành công!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1643, 1, 'vi', 'packages/theme/theme', 'settings.description', 'Cài đặt giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1644, 1, 'vi', 'packages/theme/theme', 'settings.title', 'Giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1645, 1, 'vi', 'packages/theme/theme', 'show_admin_bar', 'Hiển thị admin bar (khi admin đã đăng nhập, vẫn hiển thị admin bar trên website)?', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1646, 1, 'vi', 'packages/theme/theme', 'theme_is_note_existed', 'Giao diện này không tồn tại!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1647, 1, 'vi', 'packages/theme/theme', 'total_themes', 'Tổng số giao diện', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1648, 1, 'vi', 'packages/theme/theme', 'add_new', 'Thêm mới', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1649, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1650, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1651, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1652, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1653, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1654, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1655, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1656, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1657, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1658, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1659, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1660, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1661, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1662, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1663, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1664, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1665, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1666, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1667, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1668, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1669, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1670, 1, 'vi', 'packages/widget/widget', 'name', 'Widgets', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1671, 1, 'vi', 'packages/widget/widget', 'create', 'New widget', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1672, 1, 'vi', 'packages/widget/widget', 'edit', 'Edit widget', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1673, 1, 'vi', 'packages/widget/widget', 'available', 'Tiện ích có sẵn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1674, 1, 'vi', 'packages/widget/widget', 'delete', 'Xóa', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1675, 1, 'vi', 'packages/widget/widget', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1676, 1, 'vi', 'packages/widget/widget', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1677, 1, 'vi', 'packages/widget/widget', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1678, 1, 'vi', 'packages/widget/widget', 'select_menu', 'Lựa chọn trình đơn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1679, 1, 'vi', 'packages/widget/widget', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1680, 1, 'vi', 'packages/widget/widget', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1681, 1, 'vi', 'packages/widget/widget', 'widget_recent_post', 'Bài viết gần đây', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1682, 1, 'vi', 'packages/widget/widget', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1683, 1, 'vi', 'packages/widget/widget', 'widget_tag', 'Thẻ', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1684, 1, 'vi', 'packages/widget/widget', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1685, 1, 'vi', 'packages/widget/widget', 'widget_text', 'Văn bản', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1686, 1, 'vi', 'packages/widget/widget', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1687, 1, 'vi', 'packages/widget/widget', 'delete_success', 'Xoá tiện ích thành công', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1688, 1, 'vi', 'packages/widget/widget', 'save_success', 'Lưu tiện ích thành công!', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1689, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1690, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1691, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1692, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1693, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1694, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1695, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1696, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1697, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1698, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1699, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1700, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1701, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1702, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1703, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1704, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1705, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1706, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1707, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1708, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1709, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1710, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1711, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1712, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1713, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1714, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1715, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1716, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1717, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1718, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1719, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1720, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1721, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1722, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1723, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1724, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1725, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1726, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1727, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1728, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1729, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1730, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1731, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1732, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1733, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1734, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1735, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1736, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1737, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:27', '2021-02-24 19:43:27'),
(1738, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1739, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1740, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1741, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1742, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1743, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1744, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1745, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1746, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1747, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1748, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1749, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1750, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1751, 1, 'en', 'plugins/api/api', 'api_clients', 'API Clients', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1752, 1, 'en', 'plugins/api/api', 'create_new_client', 'Create new client', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1753, 1, 'en', 'plugins/api/api', 'create_new_client_success', 'Create new client successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1754, 1, 'en', 'plugins/api/api', 'edit_client', 'Edit client \":name\"', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1755, 1, 'en', 'plugins/api/api', 'edit_client_success', 'Updated client successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1756, 1, 'en', 'plugins/api/api', 'delete_success', 'Deleted client successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1757, 1, 'en', 'plugins/api/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1758, 1, 'en', 'plugins/api/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1759, 1, 'en', 'plugins/api/api', 'cancel_delete', 'No', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1760, 1, 'en', 'plugins/api/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1761, 1, 'en', 'plugins/api/api', 'name', 'Name', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1762, 1, 'en', 'plugins/api/api', 'cancel', 'Cancel', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1763, 1, 'en', 'plugins/api/api', 'save', 'Save', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1764, 1, 'en', 'plugins/api/api', 'edit', 'Edit', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1765, 1, 'en', 'plugins/api/api', 'delete', 'Delete', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1766, 1, 'en', 'plugins/api/api', 'client_id', 'Client ID', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1767, 1, 'en', 'plugins/api/api', 'secret', 'Secret', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1768, 1, 'vi', 'plugins/api/api', 'api_clients', 'API Clients', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1769, 1, 'vi', 'plugins/api/api', 'create_new_client', 'Tạo client mới', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1770, 1, 'vi', 'plugins/api/api', 'create_new_client_success', 'Tạo client mới thành công!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1771, 1, 'vi', 'plugins/api/api', 'edit_client', 'Sửa client \":name\"', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1772, 1, 'vi', 'plugins/api/api', 'edit_client_success', 'Cập nhật client thành công!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1773, 1, 'vi', 'plugins/api/api', 'delete_success', 'Xoá client thành công!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1774, 1, 'vi', 'plugins/api/api', 'confirm_delete_title', 'Xoá client \":name\"', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1775, 1, 'vi', 'plugins/api/api', 'confirm_delete_description', 'Bạn có chắc chắn muốn xoá client \":name\"?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1776, 1, 'vi', 'plugins/api/api', 'cancel_delete', 'Không', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1777, 1, 'vi', 'plugins/api/api', 'continue_delete', 'Có, tiếp tục xoá!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1778, 1, 'vi', 'plugins/api/api', 'name', 'Tên', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1779, 1, 'vi', 'plugins/api/api', 'cancel', 'Huỷ bỏ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1780, 1, 'vi', 'plugins/api/api', 'save', 'Lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1781, 1, 'vi', 'plugins/api/api', 'edit', 'Sửa', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1782, 1, 'vi', 'plugins/api/api', 'delete', 'Xoá', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1783, 1, 'vi', 'plugins/api/api', 'client_id', 'Client ID', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1784, 1, 'vi', 'plugins/api/api', 'secret', 'Chuỗi bí mật', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1785, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1786, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1787, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1788, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1789, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1790, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1791, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1792, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1793, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1794, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1795, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1796, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1797, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1798, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1799, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1800, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1801, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1802, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1803, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1804, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1805, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1806, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1807, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1808, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1809, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1810, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1815, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1816, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1817, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1818, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1819, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1820, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1821, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1822, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1823, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1824, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1825, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1826, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1827, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1828, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1829, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1830, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1831, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1832, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1833, 1, 'vi', 'plugins/audit-log/history', 'system', 'Hệ thống', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1834, 1, 'vi', 'plugins/audit-log/history', 'action', 'Hành động', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1835, 1, 'vi', 'plugins/audit-log/history', 'delete_all', 'Xóa tất cả bản ghi', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1836, 1, 'vi', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1837, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1838, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1839, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1840, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1841, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1842, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1843, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1844, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1845, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1846, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1847, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1848, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1849, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1850, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1851, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1852, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1853, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1854, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1855, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1856, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1857, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1858, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1859, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1860, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1861, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1862, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1863, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1864, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1865, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1866, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1867, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1868, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1869, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1870, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1871, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1872, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1873, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1874, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1875, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1876, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1877, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1878, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1879, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1880, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1881, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1882, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1883, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1884, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1885, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1886, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1887, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1888, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1889, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1890, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1891, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1892, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1893, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1894, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1895, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1896, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1897, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1898, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1899, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1900, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1901, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1902, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1903, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1904, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1905, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1906, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1907, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1908, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1909, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1910, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1911, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1912, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1913, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1914, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1915, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1916, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1917, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1918, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1919, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1920, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1921, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1922, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1923, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1924, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1925, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1926, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1927, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1928, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1929, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1930, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1931, 1, 'vi', 'plugins/blog/base', 'blog_page', 'Trang Blog', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1932, 1, 'vi', 'plugins/blog/base', 'select', '-- Lựa chọn --', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1933, 1, 'vi', 'plugins/blog/base', 'blog_page_id', 'Trang Blog', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1934, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1935, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1936, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1937, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1938, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1939, 1, 'vi', 'plugins/blog/categories', 'none', 'Không', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1940, 1, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1941, 1, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1942, 1, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1943, 1, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1944, 1, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1945, 1, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1946, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1947, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1948, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1949, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1950, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1951, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1952, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1953, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1954, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1955, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1956, 1, 'vi', 'plugins/blog/posts', 'form.is_featured', 'Bài viết nổi bật?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1957, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1958, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1959, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1960, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1961, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1962, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1963, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-02-24 19:43:28', '2021-02-24 19:43:28');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1964, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1965, 1, 'vi', 'plugins/blog/posts', 'post', 'Bài viết', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1966, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1967, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1968, 1, 'vi', 'plugins/blog/posts', 'categories', 'Danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1969, 1, 'vi', 'plugins/blog/posts', 'category', 'Danh mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1970, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1971, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1972, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1973, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1974, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1975, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1976, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1977, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1978, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1979, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1980, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1981, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1982, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1983, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1984, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1985, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1986, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1987, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1988, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1989, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1990, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1991, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1992, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1993, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1994, 1, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1995, 1, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1996, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1997, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1998, 1, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha?', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(1999, 1, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret.', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2000, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2001, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2002, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2003, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2004, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2005, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2006, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2007, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2008, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2009, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2010, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2011, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2012, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2013, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2014, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2015, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2016, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2017, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2018, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2019, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2020, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2021, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2022, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2023, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2024, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2025, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2026, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2027, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2028, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2029, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2030, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2031, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2032, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2033, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2034, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2035, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2036, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2037, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2038, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-02-24 19:43:28', '2021-02-24 19:43:28'),
(2039, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2040, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2041, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2042, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2043, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2044, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2045, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2046, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2047, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2048, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2049, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2050, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2051, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2052, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2053, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2054, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2055, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2056, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2057, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2058, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2059, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2060, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2061, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2062, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2063, 1, 'vi', 'plugins/contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2064, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2065, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2066, 1, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2067, 1, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2068, 1, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2069, 1, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2070, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2071, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2072, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2073, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2074, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2075, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2076, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2077, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2078, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2079, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2080, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2081, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2082, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2083, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2084, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2085, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2086, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2087, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2088, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2089, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2090, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2091, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2092, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2093, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2094, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2095, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2096, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2097, 1, 'vi', 'plugins/contact/contact', 'replies', 'Trả lời', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2098, 1, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2099, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2100, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2101, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2102, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2103, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2104, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2105, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2106, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2107, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2108, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2109, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2110, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2111, 1, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2112, 1, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2113, 1, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2114, 1, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2115, 1, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2116, 1, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2117, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2118, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2119, 1, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2120, 1, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2121, 1, 'en', 'plugins/gallery/gallery', 'by', 'By', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2122, 1, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2123, 1, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2124, 1, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2125, 1, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2126, 1, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2127, 1, 'vi', 'plugins/gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2128, 1, 'vi', 'plugins/gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2129, 1, 'vi', 'plugins/gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2130, 1, 'vi', 'plugins/gallery/gallery', 'galleries', 'Thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2131, 1, 'vi', 'plugins/gallery/gallery', 'item', 'Ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2132, 1, 'vi', 'plugins/gallery/gallery', 'reset', 'Làm mới thư viện', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2133, 1, 'vi', 'plugins/gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2134, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2135, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2136, 1, 'vi', 'plugins/gallery/gallery', 'by', 'Bởi', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2137, 1, 'vi', 'plugins/gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2138, 1, 'vi', 'plugins/gallery/gallery', 'menu_name', 'Thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2139, 1, 'vi', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Thêm thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2140, 1, 'vi', 'plugins/gallery/gallery', 'gallery_images', 'Thư viện ảnh', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2141, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2142, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2143, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2144, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2145, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2146, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2147, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2148, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2149, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2150, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2151, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2152, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2153, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2154, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2155, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2156, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2157, 1, 'en', 'plugins/language/language', 'order', 'Order', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2158, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2159, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2160, 1, 'en', 'plugins/language/language', 'code', 'Code', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2161, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2162, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2163, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2164, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2165, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2166, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2167, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2168, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2169, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2170, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2171, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2172, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2173, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2174, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2175, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2176, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2177, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2178, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2179, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2180, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2181, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2182, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2183, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2184, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2185, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2186, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2187, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2188, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2189, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2190, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2191, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2192, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2193, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2194, 1, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2195, 1, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2196, 1, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2197, 1, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2198, 1, 'vi', 'plugins/language/language', 'language_name', 'Tên đầy đủ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2199, 1, 'vi', 'plugins/language/language', 'language_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2200, 1, 'vi', 'plugins/language/language', 'locale', 'Locale', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2201, 1, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2202, 1, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2203, 1, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2204, 1, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2205, 1, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2206, 1, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2207, 1, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2208, 1, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2209, 1, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2210, 1, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2211, 1, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2212, 1, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2213, 1, 'vi', 'plugins/language/language', 'code', 'Mã', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2214, 1, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2215, 1, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2216, 1, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2217, 1, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2218, 1, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2219, 1, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2220, 1, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2221, 1, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2222, 1, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2223, 1, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2224, 1, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2225, 1, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2226, 1, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2227, 1, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2228, 1, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2229, 1, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2230, 1, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2231, 1, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2232, 1, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2233, 1, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2234, 1, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2235, 1, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2236, 1, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2237, 1, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2238, 1, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2239, 1, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2240, 1, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2241, 1, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2242, 1, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2243, 1, 'vi', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Hiển thị bản ghi ở ngôn ngữ mặc định nếu phiên bản cho ngôn ngữ hiện tại chưa có', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2244, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2245, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2246, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2247, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2248, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2249, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2250, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2251, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2252, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2253, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2254, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2255, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2256, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2257, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2258, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2259, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2260, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2261, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2262, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2263, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2264, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2265, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2266, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2267, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2268, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2269, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2270, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2271, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2272, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2273, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2274, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2275, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2276, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2277, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2278, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2279, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2280, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2281, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2282, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2283, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2284, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2285, 1, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2286, 1, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2287, 1, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2288, 1, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2289, 1, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2290, 1, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2291, 1, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2292, 1, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2293, 1, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý :counter bản ghi!  ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2294, 1, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2295, 1, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2296, 1, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2297, 1, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2298, 1, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2299, 1, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2300, 1, 'vi', 'plugins/translation/translation', 'actions', 'Hành động', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2301, 1, 'vi', 'plugins/translation/translation', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2302, 1, 'vi', 'plugins/translation/translation', 'admin-translations', 'Dịch trang quản trị', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2303, 1, 'vi', 'plugins/translation/translation', 'choose_language', 'Chọn ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2304, 1, 'vi', 'plugins/translation/translation', 'default_locale', 'Ngôn ngữ mặc định', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2305, 1, 'vi', 'plugins/translation/translation', 'delete', 'Xóa', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2306, 1, 'vi', 'plugins/translation/translation', 'edit', 'Sửa', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2307, 1, 'vi', 'plugins/translation/translation', 'flag', 'Cờ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2308, 1, 'vi', 'plugins/translation/translation', 'locale', 'Ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2309, 1, 'vi', 'plugins/translation/translation', 'locales', 'Ngôn ngữ', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2310, 1, 'vi', 'plugins/translation/translation', 'name', 'Tên', '2021-02-24 19:43:29', '2021-02-24 19:43:29'),
(2311, 1, 'vi', 'plugins/translation/translation', 'no_other_languages', 'Không còn ngôn ngữ nào khác để dịch!', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2312, 1, 'vi', 'plugins/translation/translation', 'select_language', 'Lựa chọn ngôn ngữ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2313, 1, 'vi', 'plugins/translation/translation', 'theme-translations', 'Dịch giao diện', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2314, 1, 'vi', 'plugins/translation/translation', 'to', 'sang', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2315, 1, 'vi', 'plugins/translation/translation', 'translate_from', 'Dịch từ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2316, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2317, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2318, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2319, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2320, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2321, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2322, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2323, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2324, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-02-24 19:43:30', '2021-02-24 19:43:30');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2325, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2326, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2327, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là một ngày sau hoặc bằng ngày :date.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2328, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2329, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2330, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2331, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2332, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2333, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là một ngày trước hoặc bằng ngày :date.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2334, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2335, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2336, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2337, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2338, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2339, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2340, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2341, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2342, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2343, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2344, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2345, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2346, 1, 'vi', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2347, 1, 'vi', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2348, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2349, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2350, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2351, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2352, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2353, 1, 'vi', 'validation', 'gt.numeric', 'Trường :attribute phải lớn hơn :max.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2354, 1, 'vi', 'validation', 'gt.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn :max KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2355, 1, 'vi', 'validation', 'gt.string', 'Trường :attribute phải lớn hơn :max ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2356, 1, 'vi', 'validation', 'gt.array', 'Trường :attribute phải lớn hơn :max phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2357, 1, 'vi', 'validation', 'gte.numeric', 'Trường :attribute phải lớn hơn hoặc bằng :max.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2358, 1, 'vi', 'validation', 'gte.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn hoặc bằng :max KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2359, 1, 'vi', 'validation', 'gte.string', 'Trường :attribute phải lớn hơn hoặc bằng :max ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2360, 1, 'vi', 'validation', 'gte.array', 'Trường :attribute phải lớn hơn hoặc bằng :max phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2361, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2362, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2363, 1, 'vi', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2364, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2365, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2366, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là địa chỉ IPv4 hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2367, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là địa chỉ IPv6 hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2368, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là chuỗi JSON hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2369, 1, 'vi', 'validation', 'lt.numeric', 'Trường :attribute phải nhỏ hơn là :min.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2370, 1, 'vi', 'validation', 'lt.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn :min KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2371, 1, 'vi', 'validation', 'lt.string', 'Trường :attribute phải có nhỏ hơn :min ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2372, 1, 'vi', 'validation', 'lt.array', 'Trường :attribute phải có nhỏ hơn :min phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2373, 1, 'vi', 'validation', 'lte.numeric', 'Trường :attribute phải nhỏ hơn hoặc bằng là :min.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2374, 1, 'vi', 'validation', 'lte.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn hoặc bằng :min KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2375, 1, 'vi', 'validation', 'lte.string', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2376, 1, 'vi', 'validation', 'lte.array', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2377, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2378, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2379, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2380, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2381, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2382, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tệp có định dạng là: :values.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2383, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2384, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min KB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2385, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2386, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2387, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2388, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute định dạng không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2389, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2390, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2391, 1, 'vi', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2392, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2393, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2394, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2395, 1, 'vi', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2396, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2397, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2398, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2399, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2400, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2401, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2402, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2403, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2404, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2405, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2406, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2407, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2408, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong hệ thống.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2409, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute không thể tải lên.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2410, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2411, 1, 'vi', 'validation', 'uuid', 'Trường :attribute không phải là một chuỗi UUID hợp lẹ.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2412, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2413, 1, 'vi', 'validation', 'attributes.name', 'tên', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2414, 1, 'vi', 'validation', 'attributes.username', 'tên đăng nhập', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2415, 1, 'vi', 'validation', 'attributes.email', 'email', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2416, 1, 'vi', 'validation', 'attributes.first_name', 'tên', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2417, 1, 'vi', 'validation', 'attributes.last_name', 'họ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2418, 1, 'vi', 'validation', 'attributes.password', 'mật khẩu', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2419, 1, 'vi', 'validation', 'attributes.password_confirmation', 'xác nhận mật khẩu', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2420, 1, 'vi', 'validation', 'attributes.city', 'thành phố', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2421, 1, 'vi', 'validation', 'attributes.country', 'quốc gia', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2422, 1, 'vi', 'validation', 'attributes.address', 'địa chỉ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2423, 1, 'vi', 'validation', 'attributes.phone', 'số điện thoại', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2424, 1, 'vi', 'validation', 'attributes.mobile', 'di động', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2425, 1, 'vi', 'validation', 'attributes.age', 'tuổi', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2426, 1, 'vi', 'validation', 'attributes.sex', 'giới tính', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2427, 1, 'vi', 'validation', 'attributes.gender', 'giới tính', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2428, 1, 'vi', 'validation', 'attributes.year', 'năm', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2429, 1, 'vi', 'validation', 'attributes.month', 'tháng', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2430, 1, 'vi', 'validation', 'attributes.day', 'ngày', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2431, 1, 'vi', 'validation', 'attributes.hour', 'giờ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2432, 1, 'vi', 'validation', 'attributes.minute', 'phút', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2433, 1, 'vi', 'validation', 'attributes.second', 'giây', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2434, 1, 'vi', 'validation', 'attributes.title', 'tiêu đề', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2435, 1, 'vi', 'validation', 'attributes.content', 'nội dung', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2436, 1, 'vi', 'validation', 'attributes.body', 'nội dung', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2437, 1, 'vi', 'validation', 'attributes.description', 'mô tả', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2438, 1, 'vi', 'validation', 'attributes.excerpt', 'trích dẫn', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2439, 1, 'vi', 'validation', 'attributes.date', 'ngày', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2440, 1, 'vi', 'validation', 'attributes.time', 'thời gian', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2441, 1, 'vi', 'validation', 'attributes.subject', 'tiêu đề', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2442, 1, 'vi', 'validation', 'attributes.message', 'lời nhắn', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2443, 1, 'vi', 'validation', 'attributes.available', 'có sẵn', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2444, 1, 'vi', 'validation', 'attributes.size', 'kích thước', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2445, 1, 'vi', '_json', '-- select --', '-- select --', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2446, 1, 'vi', '_json', '404 - Not found', '404 - Not found', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2447, 1, 'vi', '_json', 'About banner', 'About banner', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2448, 1, 'vi', '_json', 'About me', 'Về tôi', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2449, 1, 'vi', '_json', 'Action button URL', 'Action button URL', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2450, 1, 'vi', '_json', 'Action button text', 'Action button text', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2451, 1, 'vi', '_json', 'Add a custom menu to your widget area.', 'Add a custom menu to your widget area.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2452, 1, 'vi', '_json', 'Add blog posts big', 'Add blog posts big', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2453, 1, 'vi', '_json', 'Add blog posts list', 'Add blog posts list', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2454, 1, 'vi', '_json', 'Add featured categories', 'Add featured categories', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2455, 1, 'vi', '_json', 'Add featured posts', 'Add featured posts', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2456, 1, 'vi', '_json', 'Add youtube video', 'Add youtube video', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2457, 1, 'vi', '_json', 'Addition Information', 'Addition Information', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2458, 1, 'vi', '_json', 'Address', 'Địa chỉ', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2459, 1, 'vi', '_json', 'Advertise banner', 'Advertise banner', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2460, 1, 'vi', '_json', 'An Error Occurred: Internal Server Error', 'An Error Occurred: Internal Server Error', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2461, 1, 'vi', '_json', 'Author', 'Author', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2462, 1, 'vi', '_json', 'Blog big', 'Blog big', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2463, 1, 'vi', '_json', 'Blog categories posts', 'Blog categories posts', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2464, 1, 'vi', '_json', 'Blog list', 'Blog list', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2465, 1, 'vi', '_json', 'Blog sidebar', 'Blog sidebar', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2466, 1, 'vi', '_json', 'Bottom Sidebar Ads', 'Bottom Sidebar Ads', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2467, 1, 'vi', '_json', 'By', 'By', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2468, 1, 'vi', '_json', 'Categories', 'Categories', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2469, 1, 'vi', '_json', 'Categories with Posts', 'Categories with Posts', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2470, 1, 'vi', '_json', 'Category', 'Category', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2471, 1, 'vi', '_json', 'Change copyright', 'Change copyright', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2472, 1, 'vi', '_json', 'Color', 'Color', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2473, 1, 'vi', '_json', 'Copyright', 'Copyright', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2474, 1, 'vi', '_json', 'Copyright on footer of site', 'Copyright on footer of site', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2475, 1, 'vi', '_json', 'Custom Menu', 'Custom Menu', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2476, 1, 'vi', '_json', 'Custom map', 'Custom map', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2477, 1, 'vi', '_json', 'Designed by', 'Designed by', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2478, 1, 'vi', '_json', 'Don\'t miss', 'Don\'t miss', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2479, 1, 'vi', '_json', 'Email', 'Email', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2480, 1, 'vi', '_json', 'Enable Facebook chat?', 'Enable Facebook chat?', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2481, 1, 'vi', '_json', 'Enable Facebook comment in post detail page?', 'Enable Facebook comment in post detail page?', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2482, 1, 'vi', '_json', 'Enable Preloader?', 'Enable Preloader?', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2483, 1, 'vi', '_json', 'Enter your email', 'Enter your email', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2484, 1, 'vi', '_json', 'Envato username must not a URL. Please try with username \":username\"!', 'Envato username must not a URL. Please try with username \":username\"!', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2485, 1, 'vi', '_json', 'Facebook page ID', 'Facebook page ID', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2486, 1, 'vi', '_json', 'Featured categories', 'Featured categories', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2487, 1, 'vi', '_json', 'Featured posts', 'Featured posts', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2488, 1, 'vi', '_json', 'Featured posts slider', 'Featured posts slider', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2489, 1, 'vi', '_json', 'Featured posts slider full', 'Featured posts slider full', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2490, 1, 'vi', '_json', 'Follow me', 'Theo dõi tôi', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2491, 1, 'vi', '_json', 'Footer sidebar', 'Footer sidebar', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2492, 1, 'vi', '_json', 'Full width', 'Full width', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2493, 1, 'vi', '_json', 'Galleries', 'Galleries', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2494, 1, 'vi', '_json', 'Google map', 'Google map', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2495, 1, 'vi', '_json', 'Header', 'Header', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2496, 1, 'vi', '_json', 'Header config', 'Header config', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2497, 1, 'vi', '_json', 'Home', 'Home', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2498, 1, 'vi', '_json', 'Homepage', 'Homepage', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2499, 1, 'vi', '_json', 'Hot tags', 'Hot tags', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2500, 1, 'vi', '_json', 'Hot topics', 'Hot topics', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2501, 1, 'vi', '_json', 'Icon', 'Icon', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2502, 1, 'vi', '_json', 'Image', 'Image', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2503, 1, 'vi', '_json', 'Introduction about the author of this blog', 'Introduction about the author of this blog', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2504, 1, 'vi', '_json', 'Latest posts', 'Bài viết mới nhất', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2505, 1, 'vi', '_json', 'Maintenance mode', 'Chế độ bảo trì', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2506, 1, 'vi', '_json', 'Message', 'Nội dung', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2507, 1, 'vi', '_json', 'Name', 'Tên', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2508, 1, 'vi', '_json', 'Not found', 'Not found', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2509, 1, 'vi', '_json', 'Number gallery to display', 'Number gallery to display', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2510, 1, 'vi', '_json', 'Number posts to display', 'Number posts to display', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2511, 1, 'vi', '_json', 'Number tags to display', 'Number tags to display', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2512, 1, 'vi', '_json', 'Oops! An Error Occurred', 'Oops! An Error Occurred', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2513, 1, 'vi', '_json', 'Panel Ads', 'Panel Ads', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2514, 1, 'vi', '_json', 'Phone', 'Điện thoại', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2515, 1, 'vi', '_json', 'Popular tags', 'Popular tags', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2516, 1, 'vi', '_json', 'Primary color', 'Primary color', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2517, 1, 'vi', '_json', 'Primary font', 'Primary font', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2518, 1, 'vi', '_json', 'Related posts', 'Related posts', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2519, 1, 'vi', '_json', 'Right sidebar', 'Right sidebar', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2520, 1, 'vi', '_json', 'Search', 'Tìm kiếm', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2521, 1, 'vi', '_json', 'Search result for:', 'Search result for:', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2522, 1, 'vi', '_json', 'Search stories, places and people', 'Tìm câu chuyện, địa điểm và con người', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2523, 1, 'vi', '_json', 'Select a category', 'Select a category', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2524, 1, 'vi', '_json', 'Select menu', 'Select menu', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2525, 1, 'vi', '_json', 'Send', 'Gửi', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2526, 1, 'vi', '_json', 'Send message successfully!', 'Gửi tin nhắn thành công', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2527, 1, 'vi', '_json', 'Share on Facebook', 'Share on Facebook', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2528, 1, 'vi', '_json', 'Share on Linkedin', 'Share on Linkedin', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2529, 1, 'vi', '_json', 'Share this', 'Share this', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2530, 1, 'vi', '_json', 'Sidebar in blog page', 'Sidebar in blog page', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2531, 1, 'vi', '_json', 'Sidebar in the footer of page', 'Sidebar in the footer of page', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2532, 1, 'vi', '_json', 'Social', 'Social', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2533, 1, 'vi', '_json', 'Social links', 'Social links', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2534, 1, 'vi', '_json', 'Something is broken. Please let us know what you were doing when this error occurred. We will fix it as soon as possible. Sorry for any inconvenience caused.', 'Something is broken. Please let us know what you were doing when this error occurred. We will fix it as soon as possible. Sorry for any inconvenience caused.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2535, 1, 'vi', '_json', 'Sorry, we are doing some maintenance. Please check back soon.', 'Sorry, we are doing some maintenance. Please check back soon.', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2536, 1, 'vi', '_json', 'Subject', 'Subject', '2021-02-24 19:43:30', '2021-02-24 19:43:30'),
(2537, 1, 'vi', '_json', 'Submit', 'Submit', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2538, 1, 'vi', '_json', 'Subscribe', 'Subscribe', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2539, 1, 'vi', '_json', 'Subscribe to newsletter successfully!', 'Subscribe to newsletter successfully!', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2540, 1, 'vi', '_json', 'Subscribe to our newsletter and get our newest updates right on your inbox.', 'Đăng ký bản tin của chúng tôi và nhận các cập nhật mới nhất của chúng tôi ngay trong hộp thư đến của bạn.', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2541, 1, 'vi', '_json', 'Tags', 'Tags', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2542, 1, 'vi', '_json', 'The field with (<span style=\"color:#FF0000;\">*</span>) is required.', 'The field with (<span style=\"color:#FF0000;\">*</span>) is required.', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2543, 1, 'vi', '_json', 'The link you clicked may be broken or the page may have been removed.', 'The link you clicked may be broken or the page may have been removed.', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2544, 1, 'vi', '_json', 'The server returned a \"403 Forbidden\".', 'The server returned a \"403 Forbidden\".', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2545, 1, 'vi', '_json', 'The server returned a \"500 Internal Server Error\".', 'The server returned a \"500 Internal Server Error\".', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2546, 1, 'vi', '_json', 'There is no data to display!', 'There is no data to display!', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2547, 1, 'vi', '_json', 'Top Sidebar Ads', 'Top Sidebar Ads', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2548, 1, 'vi', '_json', 'Tweet now', 'Tweet now', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2549, 1, 'vi', '_json', 'URL', 'URL', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2550, 1, 'vi', '_json', 'Uncategorized', 'Uncategorized', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2551, 1, 'vi', '_json', 'Unsubscribe to newsletter successfully', 'Unsubscribe to newsletter successfully', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2552, 1, 'vi', '_json', 'Widget to display galleries', 'Widget to display galleries', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2553, 1, 'vi', '_json', 'Widget to display newsletter form', 'Widget to display newsletter form', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2554, 1, 'vi', '_json', 'Widget to display popular posts', 'Widget to display popular posts', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2555, 1, 'vi', '_json', 'You might be interested in', 'You might be interested in', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2556, 1, 'vi', '_json', 'Your email', 'Your email', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2557, 1, 'vi', '_json', 'Your email does not exist in the system or you have unsubscribed already!', 'Your email does not exist in the system or you have unsubscribed already!', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2558, 1, 'vi', '_json', 'Your name', 'Your name', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2559, 1, 'vi', '_json', 'Youtube URL is invalid.', 'Youtube URL is invalid.', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2560, 1, 'vi', '_json', 'Youtube video', 'Youtube video', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2561, 1, 'vi', '_json', 'here', 'here', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2562, 1, 'vi', '_json', 'mins read', 'mins read', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2563, 1, 'vi', '_json', 'views', 'views', '2021-02-24 19:43:31', '2021-02-24 19:43:31'),
(2564, 1, 'vi', '_json', 'visit the', 'visit the', '2021-02-24 19:43:31', '2021-02-24 19:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$ZBQ6mRfbsnIIV7b0.4wbVuwGPuprlkHno6R00VZT7JSv7i2YZaVCy', NULL, '2021-02-24 19:43:18', '2021-02-24 19:43:18', 'Steven', 'Madden', 'botble', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'stories', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(2, 'TagsWidget', 'footer_sidebar', 'stories', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(3, 'NewsletterWidget', 'footer_sidebar', 'stories', 2, '{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(4, 'AboutWidget', 'primary_sidebar', 'stories', 0, '{\"id\":\"AboutWidget\",\"name\":\"Hello, I\'m Steven\",\"description\":\"Hi, I\\u2019m Steven, a Florida native, who left my career in corporate wealth management six years ago to embark on a summer of soul searching that would change the course of my life forever.\",\"image\":\"general\\/author.jpg\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(5, 'PopularPostsWidget', 'primary_sidebar', 'stories', 1, '{\"id\":\"PopularPostsWidget\",\"name\":\"Most popular\",\"number_display\":5}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(6, 'GalleriesWidget', 'primary_sidebar', 'stories', 2, '{\"id\":\"GalleriesWidget\",\"name\":\"Galleries\",\"number_display\":6}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(7, 'CustomMenuWidget', 'footer_sidebar', 'stories-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(8, 'TagsWidget', 'footer_sidebar', 'stories-vi', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(9, 'NewsletterWidget', 'footer_sidebar', 'stories-vi', 2, '{\"id\":\"NewsletterWidget\",\"name\":\"\\u0110\\u0103ng k\\u00fd b\\u1ea3n tin\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(10, 'AboutWidget', 'primary_sidebar', 'stories-vi', 0, '{\"id\":\"AboutWidget\",\"name\":\"Xin ch\\u00e0o, t\\u00f4i l\\u00e0 Steven\",\"description\":\"Xin ch\\u00e0o, t\\u00f4i l\\u00e0 Steven, ng\\u01b0\\u1eddi g\\u1ed1c Florida, ng\\u01b0\\u1eddi \\u0111\\u00e3 r\\u1eddi b\\u1ecf s\\u1ef1 nghi\\u1ec7p qu\\u1ea3n l\\u00fd t\\u00e0i s\\u1ea3n doanh nghi\\u1ec7p c\\u00e1ch \\u0111\\u00e2y 6 n\\u0103m \\u0111\\u1ec3 b\\u1eaft \\u0111\\u1ea7u m\\u1ed9t m\\u00f9a h\\u00e8 t\\u00ecm ki\\u1ebfm t\\u00e2m h\\u1ed3n s\\u1ebd thay \\u0111\\u1ed5i cu\\u1ed9c \\u0111\\u1eddi t\\u00f4i m\\u00e3i m\\u00e3i.\",\"image\":\"general\\/author.jpg\"}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(11, 'PopularPostsWidget', 'primary_sidebar', 'stories-vi', 1, '{\"id\":\"PopularPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":5}', '2021-02-24 19:43:18', '2021-02-24 19:43:18'),
(12, 'GalleriesWidget', 'primary_sidebar', 'stories-vi', 2, '{\"id\":\"GalleriesWidget\",\"name\":\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\",\"number_display\":6}', '2021-02-24 19:43:18', '2021-02-24 19:43:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2565;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
