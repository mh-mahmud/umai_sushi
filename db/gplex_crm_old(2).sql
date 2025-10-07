-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 19, 2024 at 08:35 AM
-- Server version: 8.3.0
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gplex_crm_old`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `agent_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `status` tinyint NOT NULL,
  `role_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `did` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_id` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `performance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `agents_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agent_id`, `user_id`, `first_name`, `last_name`, `phone_number`, `birth_day`, `status`, `role_id`, `did`, `seat_id`, `skill_id`, `gender`, `address`, `description`, `performance`, `created_at`, `updated_at`) VALUES
('2059', 21, 'shoshe', 'islam', '01764698523', '2023-01-01', 1, NULL, NULL, NULL, NULL, NULL, 'In those cases, you are more likely to capitalize the beginning word of the block quotation.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi mi, pharetra sit amet mi vitae,\r\ncommodo accumsan dui. Donec non scelerisque quam. Pellentesque ut est sed neque.', 'In those cases, you are more likely to capitalize the beginning word of the block quotation.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi mi, pharetra sit amet mi vitae,\r\ncommodo accumsan dui. Donec non scelerisque quam. Pellentesque ut est sed neque.', NULL, '2024-07-01 02:58:39', '2024-11-05 06:21:57'),
('3791', 61, 'kasfi', 'islam', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-24 22:11:33', '2024-09-24 22:11:33'),
('6065', 75, 'shimla', 'sarkar', '01764655236', '2024-11-20', 1, NULL, NULL, NULL, NULL, 'Female', 'banani', 'create agent profile', NULL, '2024-11-05 05:46:34', '2024-11-05 05:55:54'),
('6140', 69, 'moni', 'akter', '01764679087', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 03:19:09', '2024-10-21 03:19:09'),
('9080', 57, 'rafi', 'alam', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 22:17:14', '2024-09-23 22:28:01'),
('9271', 4, 'jaman', 'hasan', '01731214425', '2024-05-01', 1, NULL, NULL, NULL, NULL, 'male', 'dfdfd', 'ddfdd', NULL, '2024-05-26 23:59:32', '2024-05-29 22:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
CREATE TABLE IF NOT EXISTS `bank_info` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_upload` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `lead_id`, `form_id`, `created_by`, `name`, `location`, `status`, `logo_upload`, `start_date`, `created_at`, `updated_at`, `total_amount`) VALUES
(1, 403, '1051895449', 'shimla1236', 'Rafi Khan', 'banani', 'active', 'ASH1825037M_SDA_REPORT (1)-1_1730789615.pdf', '2024-11-06', '2024-11-05 06:53:35', '2024-11-05 06:54:31', NULL),
(2, 403, '1051895449', 'shimla1236', 'sadman', 'kalshi,dhaka', 'inactive', 'scan_659_report_1730789732.html', '2024-12-03', '2024-11-05 06:55:32', '2024-11-05 06:55:32', NULL),
(3, 403, '1051895449', 'shimla1236', 'Kasfiye', NULL, 'inactive', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730790026.jpg', NULL, '2024-11-05 06:58:51', '2024-11-05 07:00:26', NULL),
(4, 404, '1051895449', 'root', 'IFIC', 'dhaka', 'active', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730790657.jpg', '2024-11-19', '2024-11-05 07:09:59', '2024-11-05 07:24:23', NULL),
(5, 404, '1051895449', 'shimla1236', 'UCB', 'Bahundhara', 'active', NULL, NULL, '2024-11-05 07:21:42', '2024-11-05 07:21:42', NULL),
(6, 411, '1051895449', 'root', 'EBL', 'Mirpur 12', 'active', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730798599.jpg', '2024-11-06', '2024-11-05 09:23:19', '2024-11-05 10:02:42', NULL),
(7, 418, '1051895449', 'moni123', 'City Bank', 'banani', 'active', '', NULL, '2024-11-05 10:19:12', '2024-11-05 10:19:12', NULL),
(8, 430, '1051895449', 'kzprince', 'The city bank', 'Gulshan 2', 'active', 'Profile-Picture_1730870065.jpg', '2024-11-01', '2024-11-06 05:14:25', '2024-11-06 05:14:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
CREATE TABLE IF NOT EXISTS `billing_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `first_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_address_2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloggers_category`
--

DROP TABLE IF EXISTS `bloggers_category`;
CREATE TABLE IF NOT EXISTS `bloggers_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloggers_category`
--

INSERT INTO `bloggers_category` (`id`, `parent_id`, `category_name`, `category_description`, `category_image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Music', 'This is a category description', 'tree-top-commercial-logo_1733720454.png', 1, '2024-12-08 22:56:47', '2024-12-08 23:00:54'),
(3, NULL, 'Health', NULL, '', 1, '2024-12-09 23:35:24', '2024-12-09 23:35:24'),
(4, NULL, 'Forest', NULL, '', 1, '2024-12-09 23:35:47', '2024-12-09 23:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_id` int DEFAULT NULL,
  `blog_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_name`, `blog_description`, `blog_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Lama blog', '<figure class=\"text-center\">\r\n            <blockquote class=\"blockquote\">\r\n                <p class=\"text-primary\">পাঠকের মতামত</p>\r\n            </blockquote>\r\n            <figcaption class=\"blockquote-footer\">\r\n                মন্তব্য সমূহ পাঠকের একান্ত ব্যক্তিগত। এর জন্য সম্পাদক দায়ী নন।\r\n            </figcaption>\r\n        </figure>\r\n            <div class=\"card mb-3\">\r\n            <div class=\"card-body\">\r\n                <h5><i class=\"bi bi-chat-dots\"></i></h5>\r\n                <blockquote class=\"blockquote mb-0 fs-6\">\r\n                    <p>ইসলামের শত্রু ইসরাইল ধ্বংস হবে ইংশাআল্লাহ</p>\r\n                    <footer class=\"blockquote-footer\">\r\n                        মোঃ শাহাদত হোসেন<br>\r\n                        ১০ ডিসেম্বর ২০২৪, মঙ্গলবার, ১১:২৩ পূর্বাহ্ন                    </footer>\r\n                </blockquote>\r\n            </div>\r\n        </div>\r\n            <div class=\"card mb-3\">\r\n            <div class=\"card-body\">\r\n                <h5><i class=\"bi bi-chat-dots\"></i></h5>\r\n                <blockquote class=\"blockquote mb-0 fs-6\">\r\n                    <p>এভাবেই পরাশক্তি গুলো অচিরেই মুসলমানদের দেশ গুলোকে\r\n ধ্বংশ করে দিবে। আর বেয়াকুফ মুসলিম দেশ গুলো ভাববে ওরা আমাদের বিরাট \r\nউপকার করছে। </p>\r\n                    <footer class=\"blockquote-footer\">\r\n                        Siddq<br>\r\n                        ১০ ডিসেম্বর ২০২৪, মঙ্গলবার, ১০:৫৮ পূর্বাহ্ন                    </footer>\r\n                </blockquote>\r\n            </div>\r\n        </div>', '27164663_987829178034171_2149106983021255887_o_1734259463.jpg', 1, '2024-12-09 06:46:02', '2024-12-15 10:44:23'),
(2, 1, 'fv df vdf vdf v', '<h4 class=\"sectitle\">বিশ্বজমিন</h4>\r\n                                        <h1 class=\"lh-base fs-1\">সিরিয়ায় শতাধিক লক্ষ্যবস্তুতে হামলা ইসরাইলের</h1>\r\n                    <h5>মানবজমিন ডেস্ক</h5>\r\n                    <p>(২ ঘন্টা আগে) ১০ ডিসেম্বর ২০২৪, মঙ্গলবার, ৯:৪০ পূর্বাহ্ন</p><p class=\"text-black-50\">সর্বশেষ আপডেট: ১০:২৩ পূর্বাহ্ন</p><img class=\"img-fluid img mt-2 ls-is-cached lazyloaded\" data-src=\"uploads/news/main/139330_sir.webp\" src=\"https://mzamin.com/uploads/news/main/139330_sir.webp\" alt=\"mzamin\" data-zoom=\"zoom-class0\" style=\"cursor: zoom-in;\">                    <div class=\"row text-center my-3\">\r\n                        <div class=\"sharethis-inline-share-buttons st-center  st-inline-share-buttons st-animated\" id=\"st-1\"><div class=\"st-btn st-first\" data-network=\"facebook\" style=\"display: inline-block;\">\r\n  <img alt=\"facebook sharing button\" src=\"https://platform-cdn.sharethis.com/img/facebook.svg\">\r\n  \r\n</div><div class=\"st-btn\" data-network=\"twitter\" style=\"display: inline-block;\">\r\n  <img alt=\"twitter sharing button\" src=\"https://platform-cdn.sharethis.com/img/twitter.svg\">\r\n  \r\n</div><div class=\"st-btn\" data-network=\"skype\" style=\"display: inline-block;\">\r\n  <img alt=\"skype sharing button\" src=\"https://platform-cdn.sharethis.com/img/skype.svg\">\r\n  \r\n</div><div class=\"st-btn\" data-network=\"telegram\" style=\"display: inline-block;\">\r\n  <img alt=\"telegram sharing button\" src=\"https://platform-cdn.sharethis.com/img/telegram.svg\">\r\n  \r\n</div><div class=\"st-btn\" data-network=\"messenger\" style=\"display: inline-block;\">\r\n  <img alt=\"messenger sharing button\" src=\"https://platform-cdn.sharethis.com/img/messenger.svg\">\r\n  \r\n</div><div class=\"st-btn\" data-network=\"viber\" style=\"display: inline-block;\">\r\n  <img alt=\"viber sharing button\" src=\"https://platform-cdn.sharethis.com/img/viber.svg\">\r\n  \r\n</div><div class=\"st-btn st-last\" data-network=\"whatsapp\" style=\"display: inline-block;\">\r\n  <img alt=\"whatsapp sharing button\" src=\"https://platform-cdn.sharethis.com/img/whatsapp.svg\">\r\n  \r\n</div></div>\r\n                    </div>\r\n					 \r\n                    \r\n                        <p>সিরিয়ার রাজধানী দামেস্কসহ সারা দেশে অন্তত \r\nশতাধিক স্থানে হামলা চালিয়েছে ইসরাইল। স্থানীয় গণমাধ্যমের বরাতে এ খবর \r\nদিয়েছে অনলাইন বিবিসি। এতে বলা হয়, যুক্তরাজ্যভিত্তিক সিরিয়ার পর্যবেক্ষক \r\nমানবাধিকার সংস্থা এসওএইচআর বলছে যে, সিরিয়ার শতাধিক স্থানে বিমান হামলা \r\nচালিয়েছে তেল আবিব। এতে রাসায়নিক অস্ত্র উৎপাদনের সঙ্গে জড়িত একটি গবেষণা \r\nকেন্দ্র মারাত্মকভাবে ক্ষতিগ্রস্ত হয়েছে।&nbsp;</p><div id=\"div-ub-mzamin.com_1695644658343\">\r\n&nbsp;&nbsp;&nbsp; \r\n</div><p>অন্যদিকে আল জাজিরা বলছে, সিরিয়ার ভূখণ্ডে ইসরাইলের হামলার \r\nলক্ষ্যবস্তু ছিল সামরিক স্থাপনা। ২৫০টির বেশি সামরিক স্থপনায় হামলার কথা \r\nজানিয়েছে কাতারভিত্তিক ওই গণমাধ্যম। বলা হয়েছে, ইসরাইলের বিমানবাহিনীর \r\nইতিহাসে এটা সিরিয়ায় অন্যতম বড় হামলার ঘটনা। সিরিয়ায় ২৪ বছর ধরে ক্ষমতায় \r\nথাকা প্রেসিডেন্ট বাশার আল-আসাদের পতন ও দেশ ছেড়ে রাশিয়ায় পালিয়ে যাওয়ার পর\r\n এই হামলা চালানো হয়েছে।&nbsp;</p><p>ইসরাইল বলছে, আসাদ সরকারের পতনের পর সেখানে\r\n ‘চরমপন্থীদের’ হাত থেকে অস্ত্র সরাতে এই হামলা চালানো হয়েছে। কিন্তু \r\nবাস্তবতা হচ্ছে ইরানের সহায়তায় গড়ে &nbsp;ওঠা বিভিন্ন রাসায়নিক অস্ত্রাগার \r\nলক্ষ্যবস্তু করেছে তেল আবিব।<br>সোমবার, সিরিয়ার উদ্ভূত পরিস্থিতি নিয়ে \r\nজরুরি বৈঠক করেছে জাতিসংঘের নিরাপত্তা পরিষদ। সেখান থেকে আগামী দিনে ঐক্যের\r\n ভিত্তিতে কাজ করার সিদ্ধান্ত জানানো হয়েছে। রাশিয়ার আহ্বানে জরুরি বৈঠকের \r\nআয়োজন করে নিরাপত্তা পরিষদ। জাতিসংঘে নিযুক্ত রুশ রাষ্ট্রদূত ভ্যাসিলি \r\nনেবেনজিয়া সাংবাদিকদের বলেছেন, আমি মনে করি নিরাপত্তা পরিষদ সিরিয়ার \r\nআঞ্চলিক অখণ্ডতা ও ঐক্য রক্ষার প্রয়োজনে কমবেশি ঐক্যবদ্ধ ছিল। বেসামরিক \r\nনাগরিকদের সুরক্ষা নিশ্চিত করা এবং সেখানে দরিদ্র জনগোষ্ঠীর জন্য মানবিক \r\nসহায়তা পৌঁছাতে নিরাপত্তা পরিষদ সবসময়ই ঐক্য বজায় রাখবে বলে আশাবাদ ব্যক্ত \r\nকরেছেন তিনি।</p>', '468520213_1719276855587504_5284071764135888830_n_1734259444.jpg', 1, '2024-12-09 23:14:20', '2024-12-15 10:44:04'),
(3, 3, 'New Blog', '<section>\r\n                        <div class=\"row px-3 py-3 bg-warning rounded text-center sticky-sm-top\">\r\n                            <h3 class=\"fw-bold\">বিশ্বজমিন সর্বাধিক পঠিত</h3>\r\n                        </div>\r\n                        <div class=\"row px-3 gy-4 pb-5 bg-dark rounded mb-5 pt-3\">\r\n\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">১</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=136442\">আওয়ামী লীগ প্রসঙ্গে যা বলল মার্কিন স্টেট ডিপার্টমেন্ট</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">২</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=134751\">ভূমিধস জয়, ১২০ বছরের রেকর্ড ভাঙলেন ট্রাম্প</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৩</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=134903\">শেখ হাসিনা বাংলাদেশের সাবেক প্রধানমন্ত্রী: দিল্লি</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৪</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=133177\">জবাব দিতে প্রস্তুত ইরান</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৫</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=139078\">বাশার আল আসাদকে কী হত্যা করা হয়েছে? </a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৬</span>\r\n                                    <h4><span class=\"subtitleLight\">দ্য হিন্দুকে ড. ইউনূস/ </span><a href=\"https://mzamin.com/news.php?news=136443\">আওয়ামী লীগের অংশগ্রহণে আপত্তি নেই, সবাইকে নির্বাচনে চায় বিএনপি</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৭</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=138913\">বাংলাদেশ-ভারত উত্তেজনায় আলোচনার আহ্বান মমতার, শান্তিরক্ষী মোতায়েনের বিষয়ে দিলেন ব্যাখ্যা</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৮</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=133788\">বাংলাদেশে হাসিনার ‘ফ্যাসিস্ট’ দলের কোনো স্থান নেই: ড. ইউনূস</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">৯</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=133171\">ইরানে হামলা চালিয়েছে ইসরাইল</a></h4>\r\n                                </div>\r\n                                                            <div class=\"co-12 d-flex align-items-center\">\r\n                                    <span class=\"text-warning display-5 me-3 fw-bolder\">১০</span>\r\n                                    <h4><a href=\"https://mzamin.com/news.php?news=137393\">চিন্ময়কে দ্রুত মুক্তি না দিলে বাংলাদেশ সীমান্ত অবরোধের হুমকি পশ্চিমবঙ্গ বিজেপির</a></h4>\r\n                                </div>\r\n                                                    </div>\r\n                    </section><p></p>', 'banner-03-03_1734259433.jpg', 1, '2024-12-10 02:31:13', '2024-12-15 10:43:53'),
(4, 4, 'qwdwqc 4efrt34tf423 3g3 t34t', '<h3 class=\"border-top border-dark pt-3 mb-5 text-danger display-5\">বিশ্বজমিন <small class=\"text-dark\">থেকে আরও পড়ুন</small></h3>\r\n                    <div class=\"row gx-5 mt-5 my-5\">\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139333\">দক্ষিণ কোরিয়ার প্রেসিডেন্টের বিরুদ্ধে দেশ ত্যাগে নিষেধাজ্ঞা জারি</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139253\">জন্মসূত্রে নাগরিকত্ব বাতিল করবেন ট্রাম্প ক্ষমা করবেন ক্যাপিটলে দাঙ্গাকারীদের</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139252\">সিরিয়ায় নতুন যুগের সূচনা, হামাসের অভিনন্দন </a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139208\">গোলান মালভূমির বাফার জোনে অস্থায়ী নিয়ন্ত্রণ নিয়েছে ইসরাইল</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139198\">আসাদের পতনে কী ভাবছে বিশ্ব</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139194\">দিল্লির প্রায় অর্ধশত স্কুলে বোমা হামলার হুমকি</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139192\">রাশিয়া-ইউক্রেন উত্তেজনা নিরসনে অবিলম্বে যুদ্ধবিরতির আহ্বান ট্রাম্পের</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139186\">সিরিয়া পুনর্গঠনে একসঙ্গে কাজ করার প্রতিশ্রুতি বাইডেনের</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139078\">বাশার আল আসাদকে কী হত্যা করা হয়েছে? </a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139075\">আসাদের পতনের লড়াইয়ে নেপথ্যে থাকা কে এই জোলানি</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139070\">গোলান মালভূমিতে প্রতিরক্ষা লাইন শক্তিশালী করার আহ্বান ইসরাইলি মন্ত্রীর</a></h4>\r\n                            </div>\r\n                                                    <div class=\"col-sm-6\">\r\n                                <span class=\"line\"></span><br>\r\n                                <h4><a href=\"https://mzamin.com/news.php?news=139069\">রুশ সমর্থন হারিয়ে দেশ ছাড়তে বাধ্য হলেন আসাদ: ট্রাম্প</a></h4>\r\n                            </div>\r\n                                                <p class=\"text-center fs-3 sectitle mt-3\"><a href=\"https://mzamin.com/category.php?cat=5\">আরও খবর <i class=\"bi bi-chevron-double-right\"></i></a></p>\r\n                    </div><p></p>', 'jhjkj_1734259417.jpg', 1, '2024-12-10 02:32:01', '2024-12-15 10:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `brand_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'toyota_250x_1733945883.webp', NULL, 1, '2024-12-11 19:38:03', '2024-12-11 19:38:03'),
(2, 'Yokohama', 'download_250x_1733945905.png', NULL, 1, '2024-12-11 19:38:25', '2024-12-11 19:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template_id` int DEFAULT NULL,
  `sms_template_id` int DEFAULT NULL,
  `campaign_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `campaign_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_type` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_limit` int DEFAULT NULL,
  `campaign_service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `promotion_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaigns_promotion_id_index` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `form_id`, `email_template_id`, `sms_template_id`, `campaign_title`, `start_date`, `end_date`, `description`, `campaign_type`, `template_type`, `campaign_limit`, `campaign_service`, `status`, `promotion_id`, `created_by`, `created_at`, `updated_at`) VALUES
(24, '6820060189', 42, NULL, 'Demo Campaign', '2024-11-06 16:56:00', '2024-11-06 16:56:00', NULL, 'Content Marketing', 'Email', 2, NULL, 1, NULL, 1, '2024-11-06 10:57:02', '2024-11-06 10:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_data`
--

DROP TABLE IF EXISTS `campaign_data`;
CREATE TABLE IF NOT EXISTS `campaign_data` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template_id` int DEFAULT NULL,
  `sms_template_id` int DEFAULT NULL,
  `csv_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_data_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_data`
--

INSERT INTO `campaign_data` (`id`, `campaign_id`, `phone`, `email`, `email_template_id`, `sms_template_id`, `csv_id`, `status`, `created_at`, `updated_at`) VALUES
(16, 13, NULL, 'safi@gmail.com', 1, NULL, '0391618904', 'Pending', '2024-10-02 00:30:50', '2024-10-02 00:30:50'),
(17, 13, NULL, 'kamrul@gmail.com', 1, NULL, '6137926616', 'Pending', '2024-10-02 00:30:50', '2024-10-02 00:30:50'),
(18, 13, NULL, 'khadija@genusys.us', 1, NULL, '8522502261', 'Pending', '2024-10-02 00:30:50', '2024-10-02 00:30:50'),
(19, 16, '01731215567', NULL, NULL, NULL, '3602394785', 'Pending', '2024-10-02 02:22:26', '2024-10-02 02:22:26'),
(23, 14, '01765412369', NULL, NULL, 1, '0226705256', 'Pending', '2024-10-02 03:20:04', '2024-10-02 03:20:04'),
(24, 14, '01765412365', NULL, NULL, 1, '4574191520', 'Pending', '2024-10-02 03:20:04', '2024-10-02 03:20:04'),
(25, 14, '01765412360', NULL, NULL, 1, '2268473557', 'Pending', '2024-10-02 03:20:04', '2024-10-02 03:20:04'),
(59, 18, '01765412369', NULL, NULL, 2, '0926597181', 'Pending', '2024-10-03 00:18:50', '2024-10-03 00:18:50'),
(60, 18, '01765412365', NULL, NULL, 2, '1423516737', 'Pending', '2024-10-03 00:18:50', '2024-10-03 00:18:50'),
(61, 18, '01765412360', NULL, NULL, 2, '2264336708', 'Pending', '2024-10-03 00:18:50', '2024-10-03 00:18:50'),
(62, 18, '01765412369', NULL, NULL, 2, '4260266686', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(63, 18, '01765412365', NULL, NULL, 2, '4006678352', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(64, 18, '01765412360', NULL, NULL, 2, '6238263640', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(65, 18, '01765412369', NULL, NULL, 2, '9847964818', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(66, 18, '01765412365', NULL, NULL, 2, '4020357839', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(67, 18, '01765412360', NULL, NULL, 2, '3874580085', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(68, 18, '01765412369', NULL, NULL, 2, '7420904637', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(69, 18, '01765412365', NULL, NULL, 2, '6292026160', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(70, 18, '01765412360', NULL, NULL, 2, '1772372055', 'Pending', '2024-10-03 00:18:58', '2024-10-03 00:18:58'),
(71, 18, '01765412369', NULL, NULL, 2, '2493826301', 'Pending', '2024-10-03 00:19:39', '2024-10-03 00:19:39'),
(72, 18, '01765412365', NULL, NULL, 2, '9011370282', 'Pending', '2024-10-03 00:19:39', '2024-10-03 00:19:39'),
(73, 18, '01765412360', NULL, NULL, 2, '5883503528', 'Pending', '2024-10-03 00:19:39', '2024-10-03 00:19:39'),
(80, 19, '01765412369', NULL, NULL, 12, '9453093324', 'Pending', '2024-10-03 05:19:10', '2024-10-03 05:19:10'),
(81, 19, '01765412365', NULL, NULL, 12, '6490411451', 'Pending', '2024-10-03 05:19:10', '2024-10-03 05:19:10'),
(82, 19, '01765412360', NULL, NULL, 12, '8512799767', 'Pending', '2024-10-03 05:19:10', '2024-10-03 05:19:10'),
(83, 19, '01765412369', NULL, NULL, 12, '8066422323', 'Pending', '2024-10-03 05:19:24', '2024-10-03 05:19:24'),
(84, 19, '01765412365', NULL, NULL, 12, '4922218336', 'Pending', '2024-10-03 05:19:24', '2024-10-03 05:19:24'),
(85, 19, '01765412360', NULL, NULL, 12, '2546755750', 'Pending', '2024-10-03 05:19:24', '2024-10-03 05:19:24'),
(86, 20, NULL, 'khadija+1@genusys.us', 1, NULL, '5263013235', 'Pending', '2024-10-03 05:20:22', '2024-10-03 05:20:22'),
(104, 22, '01764652365', NULL, NULL, 29, '5073214922', 'Pending', '2024-11-06 04:46:27', '2024-11-06 04:46:27'),
(105, 22, '01764655985', NULL, NULL, 29, '0638735726', 'Pending', '2024-11-06 04:46:27', '2024-11-06 04:46:27'),
(106, 22, '01764655652', NULL, NULL, 29, '2135146177', 'Pending', '2024-11-06 04:46:27', '2024-11-06 04:46:27'),
(107, 22, '01764652365', NULL, NULL, 29, '6046245962', 'Pending', '2024-11-06 04:47:11', '2024-11-06 04:47:11'),
(108, 22, '01764655985', NULL, NULL, 29, '8481756734', 'Pending', '2024-11-06 04:47:11', '2024-11-06 04:47:11'),
(109, 22, '01764655652', NULL, NULL, 29, '1483789732', 'Pending', '2024-11-06 04:47:11', '2024-11-06 04:47:11'),
(110, 21, NULL, 'rony@gmail.com', 43, NULL, '9339409585', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(111, 21, NULL, 'Sadman123@Gmail.com', 43, NULL, '3690180561', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(112, 21, NULL, 'rony232@gmail.com', 43, NULL, '6046505505', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(113, 21, NULL, 'Sadman@Gmail.com', 43, NULL, '3128907418', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(114, 21, NULL, 'karim@gmail.com', 43, NULL, '0917887363', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(115, 21, NULL, 'karim232@gmail.com', 43, NULL, '5464588968', 'Pending', '2024-11-06 04:47:54', '2024-11-06 04:47:54'),
(116, 23, '01764652365', NULL, NULL, NULL, '7058319943', 'Pending', '2024-11-06 04:51:21', '2024-11-06 04:51:21'),
(117, 23, '01764655985', NULL, NULL, NULL, '1936479049', 'Pending', '2024-11-06 04:51:21', '2024-11-06 04:51:21'),
(118, 23, '01764655652', NULL, NULL, NULL, '4506205940', 'Pending', '2024-11-06 04:51:21', '2024-11-06 04:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `final_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `session_id`, `product_id`, `product_image`, `product_name`, `unit_price`, `quantity`, `total_price`, `discount`, `final_price`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ABCDEF1234', 21, NULL, NULL, 150.00, 1, 150.00, 0.00, 150.00, '2024-12-12 10:45:37', '2024-12-12 10:45:37'),
(2, NULL, 'ABCDEF1234', 22, NULL, NULL, 300.00, 3, 300.00, 0.00, 300.00, '2024-12-12 10:53:20', '2024-12-12 10:53:44'),
(5, NULL, 'ABCDEF1234', 29, NULL, NULL, 5000.00, 1, 5000.00, 0.00, 5000.00, '2024-12-12 11:44:57', '2024-12-12 11:44:57'),
(6, NULL, '5368555167766', 22, 'bluearth-es-es32_f7a53050-f195-494a-9917-05ad044d7355_1732978368.webp', 'Tyre two', 300.00, 2, 600.00, 0.00, 300.00, '2024-12-18 09:37:18', '2024-12-18 10:53:40'),
(7, NULL, '5368555167766', 27, 'Mobil1-0w-20.png_1732976713.webp', 'Lubricant Three', 234324.00, 1, 234324.00, 0.00, 234324.00, '2024-12-18 09:37:27', '2024-12-18 09:37:27'),
(8, NULL, '5368555167766', 23, 'bluearth-es-es32_656e4e68-955e-4553-a103-e263aa6772da_1732977261.webp', 'Tyre one', 250.00, 1, 250.00, 0.00, 250.00, '2024-12-18 10:53:26', '2024-12-18 10:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_child` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `category_description`, `category_image`, `has_child`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'AC Filter', NULL, '512oJbDo4-L._AC_UF1000,1000_QL80__1732561585.jpg', 0, 1, '2024-11-25 19:06:25', '2024-12-09 18:25:19'),
(2, '4', 'Air Filter', NULL, 'air-filter-1-qabdldtake30an59dz3irefmbgvw3t7keww5ckmrps.png_1732561635.webp', 0, 1, '2024-11-25 19:07:15', '2024-12-09 18:25:26'),
(3, '6', 'Car Perfume', NULL, 'autonemo-perfume-qjz7tf143vcf5wy0t9piy2z3ziwdbf3gnx2ph8xfps.png_1732561685.webp', 0, 1, '2024-11-25 19:08:05', '2024-12-09 18:28:03'),
(4, NULL, 'Filter', NULL, '', 1, 1, '2024-12-09 18:21:52', '2024-12-09 18:21:52'),
(5, NULL, 'Lubricant', NULL, '', 1, 1, '2024-12-09 18:22:19', '2024-12-09 18:22:19'),
(6, NULL, 'Car Care Items', NULL, '', 1, 1, '2024-12-09 18:22:36', '2024-12-09 18:22:36'),
(7, NULL, 'Brake', NULL, '', 1, 1, '2024-12-09 18:22:55', '2024-12-09 18:22:55'),
(8, NULL, 'Bulb', NULL, '', 1, 1, '2024-12-09 18:23:06', '2024-12-09 18:23:06'),
(9, NULL, 'GPS Tracking', NULL, '', 0, 1, '2024-12-09 18:23:18', '2024-12-09 18:23:18'),
(10, NULL, 'Tyres', NULL, '', 0, 1, '2024-12-09 18:24:10', '2024-12-09 18:24:10'),
(11, NULL, 'General Car Services', NULL, '', 0, 1, '2024-12-09 18:24:50', '2024-12-09 18:24:50'),
(12, '4', 'Oil Filter', NULL, '', 0, 1, '2024-12-09 18:27:00', '2024-12-09 18:27:00'),
(13, '5', 'Engine Oil', NULL, '', 0, 1, '2024-12-09 18:27:18', '2024-12-09 18:27:18'),
(14, '5', 'Coolant', NULL, '', 0, 1, '2024-12-09 18:27:33', '2024-12-09 18:27:33'),
(15, '6', 'Car Wash', NULL, '', 0, 1, '2024-12-09 18:28:26', '2024-12-09 18:28:26'),
(16, '6', 'Car Polish', NULL, '', 0, 1, '2024-12-09 18:28:43', '2024-12-09 18:28:43'),
(17, '6', 'Car Cleaner', NULL, '', 0, 1, '2024-12-09 18:29:02', '2024-12-09 18:29:02'),
(18, '6', 'Air Freshner', NULL, '', 0, 1, '2024-12-09 18:30:10', '2024-12-09 18:30:10'),
(19, '7', 'Break Pad', NULL, '', 0, 1, '2024-12-09 18:30:32', '2024-12-09 18:30:32'),
(20, '7', 'Break Shoe', NULL, '', 0, 1, '2024-12-09 18:30:46', '2024-12-09 18:30:46'),
(21, '8', 'HID', NULL, '', 0, 1, '2024-12-09 18:31:01', '2024-12-09 18:31:01'),
(22, '8', 'LED', NULL, '', 0, 1, '2024-12-09 18:31:10', '2024-12-09 18:31:10'),
(23, '8', 'Halogen', NULL, '', 0, 1, '2024-12-09 18:31:27', '2024-12-09 18:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `state_id` int NOT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'United States', 1, '2024-10-06 03:35:55', NULL),
(5, 'England', 1, '2024-10-06 03:35:55', NULL),
(6, 'Bangladesh', 1, '2024-10-06 03:36:16', NULL),
(7, 'Australia', 1, '2024-10-06 03:36:16', NULL),
(8, 'Saudi Arabia', 1, '2024-10-06 03:41:22', NULL),
(9, 'Iran', 1, '2024-10-06 03:41:22', NULL),
(11, 'pakistan', 1, '2024-10-30 00:11:49', '2024-10-30 00:11:49'),
(13, 'Iceland', 0, '2024-10-30 00:17:25', '2024-10-30 00:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(4, 'USD', '$', 1, '2024-08-25 01:03:24', '2024-08-25 01:03:24'),
(5, 'BDT', NULL, 0, NULL, NULL),
(6, 'EURO', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `lead_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_old`
--

DROP TABLE IF EXISTS `customers_old`;
CREATE TABLE IF NOT EXISTS `customers_old` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_old`
--

INSERT INTO `customers_old` (`id`, `lead_id`, `customer_id`, `customer_group`, `customer_notes`, `created_at`, `updated_at`) VALUES
(7, '411', '93HFL', 'NEW CLIENT', 'This is our new customer', '2024-11-05 12:00:27', '2024-11-05 12:00:27'),
(8, '418', '5CE2K', 'SERVICE BASED', 'service based product', '2024-11-06 04:37:07', '2024-11-06 04:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE IF NOT EXISTS `customer_info` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_number` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_balance` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_upload_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `lead_id`, `form_id`, `created_by`, `customer_name`, `address`, `mobile_number`, `total_balance`, `image_upload_file`, `created_at`, `updated_at`) VALUES
(1, 403, '1051895449', 'shimla1236', 'Safi Islam', 'jatrabari', '01764655236', '1000000000000000', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730789843.jpg', '2024-11-05 06:57:23', '2024-11-05 06:57:23'),
(2, 404, '1051895449', 'shimla1236', 'Rony Islam', NULL, '01764655896', '120000000000000', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730790814.jpg', '2024-11-05 07:13:34', '2024-11-05 07:13:34'),
(3, 404, '1051895449', 'shimla1236', NULL, NULL, NULL, '1234567890123456', NULL, '2024-11-05 07:15:40', '2024-11-05 07:16:43'),
(4, 411, '1051895449', 'moni123', 'kamrul islam', 'bashundhara', '01764655236', '1200', 'ASH1825037M_SDA_REPORT (1)-1_1730789615_1730798599.pdf', '2024-11-05 09:23:19', '2024-11-05 09:23:19'),
(5, 418, '1051895449', 'moni123', 'anny', '', '01762390934', '150000', '', '2024-11-05 10:19:12', '2024-11-05 10:19:12'),
(6, 430, '1051895449', 'kzprince', 'The city bank', 'Gulshan 2', '01717761611', '', 'Profile-Picture_1730870065.jpg', '2024-11-06 05:14:25', '2024-11-06 05:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `developer department`
--

DROP TABLE IF EXISTS `developer department`;
CREATE TABLE IF NOT EXISTS `developer department` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web design` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine learning` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `developer department_web design_unique` (`web design`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
CREATE TABLE IF NOT EXISTS `email_log` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint UNSIGNED DEFAULT NULL,
  `lead_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meeting_id` bigint DEFAULT NULL,
  `csv_id` bigint DEFAULT NULL,
  `email_from` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_to` char(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_time` datetime DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `send_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_log`
--

INSERT INTO `email_log` (`id`, `campaign_id`, `lead_id`, `customer_id`, `user_id`, `meeting_id`, `csv_id`, `email_from`, `email_to`, `email_subject`, `email_content`, `log_time`, `delivery_time`, `send_status`, `created_at`, `updated_at`) VALUES
(153, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Moni template', '<p>Moni email template</p>', '2024-10-31 05:49:36', '2024-10-31 05:49:36', 'Success', '2024-10-30 23:49:36', '2024-10-30 23:49:36'),
(154, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Email template1', '<p>Send email template1</p><p><br></p>', '2024-10-31 05:50:51', '2024-10-31 05:50:51', 'Success', NULL, NULL),
(155, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'ishtiak.myplace@gmail.com', 'Email template1', '<p>Send email template1</p><p><br></p>', '2024-10-31 05:50:51', '2024-10-31 05:50:51', 'Success', NULL, NULL),
(156, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'ishtiak.ia@gmail.com', 'Email template1', '<p>Send email template1</p><p><br></p>', '2024-10-31 05:50:51', '2024-10-31 05:50:51', 'Success', NULL, NULL),
(157, NULL, 402, NULL, 1, NULL, NULL, 'Genuity', 'rayhan@ymail.com', 'This is a test subject', '<p>Send email template1</p><p><br></p>', '2024-11-05 11:41:20', '2024-11-05 11:41:20', 'Success', '2024-11-05 05:41:20', '2024-11-05 05:41:20'),
(158, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Test on new server', '<p>Moni email template</p>', '2024-11-05 12:05:06', '2024-11-05 12:05:06', 'Success', '2024-11-05 06:05:06', '2024-11-05 06:05:06'),
(159, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'singara(breakfast)', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(160, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'buscuit,badam', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(161, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'singara(breakfast)', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(162, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ice cream', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(163, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'labang,borhani,mojo', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(164, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'peyara,kasundi', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(165, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'singara(breakfast)', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(166, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'Mojo- 4(litre)', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(167, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'Ice cream,Mojo', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(168, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'singara(breakfast)', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(169, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'Labang,RC,mojo', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(170, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'Peyara,biscuit,badam,kasundi', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(171, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'labang,matha', 'Moni template', '<p>Moni email template</p>', '2024-11-05 13:09:08', '2024-11-05 13:09:08', 'Success', NULL, NULL),
(172, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Moni template', '<p>Moni email template</p>', '2024-11-05 14:07:48', '2024-11-05 14:07:48', 'Success', NULL, NULL),
(173, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.myplace@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 14:07:48', '2024-11-05 14:07:48', 'Success', NULL, NULL),
(174, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.ia@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 14:07:48', '2024-11-05 14:07:48', 'Success', NULL, NULL),
(175, NULL, 403, NULL, 75, NULL, NULL, 'Genuity', 'rakib@gmail.com', 'agent created templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:34:26', '2024-11-05 14:34:26', 'Success', '2024-11-05 08:34:26', '2024-11-05 08:34:26'),
(176, NULL, 406, NULL, 75, NULL, NULL, 'Genuity', 'Faisal@gmail.com', 'create email templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:35:54', '2024-11-05 14:35:54', 'Success', '2024-11-05 08:35:54', '2024-11-05 08:35:54'),
(177, NULL, 404, NULL, 75, NULL, NULL, 'Genuity', 'shoshe@gmail.com', 'email templete', '<p>Send email template1</p><p><br></p>', '2024-11-05 14:38:03', '2024-11-05 14:38:03', 'Success', '2024-11-05 08:38:03', '2024-11-05 08:38:03'),
(178, NULL, NULL, NULL, 75, NULL, NULL, 'Genuity', 'khadija@genusys.us', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(179, NULL, NULL, NULL, 75, NULL, NULL, 'Genuity', 'akterkhadija309@genusys.us', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(180, NULL, NULL, NULL, 75, NULL, NULL, 'Genuity', 'khadija+1@genusys.us', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(181, NULL, 406, NULL, 75, NULL, NULL, 'Genuity', 'Faisal@gmail.com', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(182, NULL, 404, NULL, 75, NULL, NULL, 'Genuity', 'shoshe@gmail.com', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(183, NULL, 403, NULL, 75, NULL, NULL, 'Genuity', 'rakib@gmail.com', 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-05 14:52:19', '2024-11-05 14:52:19', 'Success', NULL, NULL),
(184, NULL, 411, NULL, 69, NULL, NULL, 'Genuity', 'rony@gmail.com', 'second agent created email', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', '2024-11-05 15:31:43', '2024-11-05 15:31:43', 'Success', '2024-11-05 09:31:43', '2024-11-05 09:31:43'),
(185, NULL, 411, NULL, 69, NULL, NULL, 'Genuity', 'rony@gmail.com', 'email template', '<p>Moni email template</p>', '2024-11-05 15:32:27', '2024-11-05 15:32:27', 'Success', '2024-11-05 09:32:27', '2024-11-05 09:32:27'),
(186, NULL, 425, NULL, 69, NULL, NULL, 'Genuity', 'wer@gmail.com', 'dfgd', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', '2024-11-05 16:35:46', '2024-11-05 16:35:46', 'Success', '2024-11-05 10:35:46', '2024-11-05 10:35:46'),
(187, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'khadija@genusys.us', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(188, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'akterkhadija309@genusys.us', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(189, NULL, NULL, NULL, 69, NULL, NULL, 'Genuity', 'khadija+1@genusys.us', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(190, NULL, 406, NULL, 69, NULL, NULL, 'Genuity', 'Faisal@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(191, NULL, 404, NULL, 69, NULL, NULL, 'Genuity', 'shoshe@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(192, NULL, 403, NULL, 69, NULL, NULL, 'Genuity', 'rakib@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(193, NULL, 425, NULL, 69, NULL, NULL, 'Genuity', 'wer@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(194, NULL, 411, NULL, 69, NULL, NULL, 'Genuity', 'rony@gmail.com', 'Moni template', '<p>Moni email template</p>', '2024-11-05 16:43:03', '2024-11-05 16:43:03', 'Success', NULL, NULL),
(195, NULL, 429, NULL, 69, NULL, NULL, 'Genuity', 'Sadman@Gmail.com', 'agent created email', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', '2024-11-06 11:01:57', '2024-11-06 11:01:57', 'Success', '2024-11-06 05:01:57', '2024-11-06 05:01:57'),
(196, NULL, 430, NULL, 78, NULL, NULL, 'Genuity', 'sh@genusys.us', 'This is test email for our city bank client', '<p><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available</span></p>', '2024-11-06 11:17:22', '2024-11-06 11:17:22', 'Success', '2024-11-06 05:17:22', '2024-11-06 05:17:22'),
(197, NULL, NULL, NULL, 1, 8, NULL, 'Genuity', 'masud.haque@genusys.us', 'discuss crm product module and implement it', 'setting department,roster type,form,to and select staff ->click same time for all day button Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:09:58', '2024-11-07 11:09:58', 'Success', '2024-11-07 05:09:58', '2024-11-07 05:09:58'),
(198, NULL, NULL, NULL, 1, 11, NULL, 'Genuity', 'rokib@gmail.com', 'remove any information and admin approve it. In this situation do not remove employee information', 'remove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information\r\nremove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information Meeting Link: http://192.168.10.66/ems', '2024-11-07 11:10:00', '2024-11-07 11:10:00', 'Success', '2024-11-07 05:10:00', '2024-11-07 05:10:00'),
(199, NULL, NULL, NULL, 1, 11, NULL, 'Genuity', 'k@gmail.com', 'remove any information and admin approve it. In this situation do not remove employee information', 'remove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information\r\nremove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information Meeting Link: http://192.168.10.66/ems', '2024-11-07 11:10:01', '2024-11-07 11:10:01', 'Success', '2024-11-07 05:10:01', '2024-11-07 05:10:01'),
(200, NULL, NULL, NULL, 1, 11, NULL, 'Genuity', 'khadija@gmail.com', 'remove any information and admin approve it. In this situation do not remove employee information', 'remove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information\r\nremove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information Meeting Link: http://192.168.10.66/ems', '2024-11-07 11:10:02', '2024-11-07 11:10:02', 'Success', '2024-11-07 05:10:02', '2024-11-07 05:10:02'),
(201, NULL, NULL, NULL, 1, 11, NULL, 'Genuity', 'kasfi@gmail.com', 'remove any information and admin approve it. In this situation do not remove employee information', 'remove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information\r\nremove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information Meeting Link: http://192.168.10.66/ems', '2024-11-07 11:10:04', '2024-11-07 11:10:04', 'Success', '2024-11-07 05:10:04', '2024-11-07 05:10:04'),
(202, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'khadija@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:05', '2024-11-07 11:10:05', 'Success', '2024-11-07 05:10:05', '2024-11-07 05:10:05'),
(203, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'rifa@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:06', '2024-11-07 11:10:06', 'Success', '2024-11-07 05:10:06', '2024-11-07 05:10:06'),
(204, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'asif@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:07', '2024-11-07 11:10:07', 'Success', '2024-11-07 05:10:07', '2024-11-07 05:10:07'),
(205, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'puja@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:09', '2024-11-07 11:10:09', 'Success', '2024-11-07 05:10:09', '2024-11-07 05:10:09'),
(206, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'prokrity@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:10', '2024-11-07 11:10:10', 'Success', '2024-11-07 05:10:10', '2024-11-07 05:10:10'),
(207, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'rafi@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:12', '2024-11-07 11:10:12', 'Success', '2024-11-07 05:10:12', '2024-11-07 05:10:12'),
(208, NULL, NULL, NULL, 1, 12, NULL, 'Genuity', 'kasfi@gmail.com', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today! Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:13', '2024-11-07 11:10:13', 'Success', '2024-11-07 05:10:13', '2024-11-07 05:10:13'),
(209, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'khan@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:14', '2024-11-07 11:10:14', 'Success', '2024-11-07 05:10:14', '2024-11-07 05:10:14'),
(210, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'rokib@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:15', '2024-11-07 11:10:15', 'Success', '2024-11-07 05:10:15', '2024-11-07 05:10:15'),
(211, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'jaman@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:10:17', '2024-11-07 11:10:17', 'Success', '2024-11-07 05:10:17', '2024-11-07 05:10:17'),
(212, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'xxx@gmail', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:25', '2024-11-07 11:30:25', 'Success', '2024-11-07 05:30:25', '2024-11-07 05:30:25'),
(213, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'dffdfsdf@dtttttt', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:27', '2024-11-07 11:30:27', 'Success', '2024-11-07 05:30:27', '2024-11-07 05:30:27'),
(214, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'sayma@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:28', '2024-11-07 11:30:28', 'Success', '2024-11-07 05:30:28', '2024-11-07 05:30:28'),
(215, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'shoshe@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:30', '2024-11-07 11:30:30', 'Success', '2024-11-07 05:30:30', '2024-11-07 05:30:30');
INSERT INTO `email_log` (`id`, `campaign_id`, `lead_id`, `customer_id`, `user_id`, `meeting_id`, `csv_id`, `email_from`, `email_to`, `email_subject`, `email_content`, `log_time`, `delivery_time`, `send_status`, `created_at`, `updated_at`) VALUES
(216, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'xyz@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:31', '2024-11-07 11:30:31', 'Success', '2024-11-07 05:30:31', '2024-11-07 05:30:31'),
(217, NULL, NULL, NULL, 1, 14, NULL, 'Genuity', 'karim@gmail.com', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM/meeting/create', '2024-11-07 11:30:32', '2024-11-07 11:30:32', 'Success', '2024-11-07 05:30:32', '2024-11-07 05:30:32'),
(218, 11, NULL, NULL, 1, NULL, 7910583380, 'Genuity', 'khadija@genusys.us', 'application for email templete creation', '<h4><a href=\"https://mail.google.com/mail/u/0/#inbox\"><i>hellow.</i></a></h4><blockquote><ul><li>how are you</li><li>hhhh</li><li>xyx &nbsp;v</li></ul></blockquote><ol><li>hlw.are you here?</li><li>abc</li><li>def</li></ol><p>ggg</p><p>&nbsp;</p><blockquote><p>&nbsp;</p></blockquote><figure class=\"table\"><table><tbody><tr><td>first name</td><td>last name</td><td>age</td><td>address</td></tr><tr><td>x</td><td>y</td><td>z</td><td>gulshan</td></tr></tbody></table></figure>', '2024-11-07 11:30:34', '2024-11-07 11:30:34', 'Success', '2024-11-07 05:30:34', '2024-11-07 05:30:34'),
(219, NULL, NULL, NULL, 1, 16, NULL, 'Genuity', 'sami@yahoo.com', 'testing meeting data and form validation', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \" Meeting Link: http://192.168.10.66/gplexCRM', '2024-11-07 11:30:35', '2024-11-07 11:30:35', 'Success', '2024-11-07 05:30:35', '2024-11-07 05:30:35'),
(220, 17, NULL, NULL, 1, NULL, 9001177360, 'Genuity', 'khadija+1@genusys.us', 'application for email templete creation', '<h4><a href=\"https://mail.google.com/mail/u/0/#inbox\"><i>hellow.</i></a></h4><blockquote><ul><li>how are you</li><li>hhhh</li><li>xyx &nbsp;v</li></ul></blockquote><ol><li>hlw.are you here?</li><li>abc</li><li>def</li></ol><p>ggg</p><p>&nbsp;</p><blockquote><p>&nbsp;</p></blockquote><figure class=\"table\"><table><tbody><tr><td>first name</td><td>last name</td><td>age</td><td>address</td></tr><tr><td>x</td><td>y</td><td>z</td><td>gulshan</td></tr></tbody></table></figure>', '2024-11-07 11:30:36', '2024-11-07 11:30:36', 'Success', '2024-11-07 05:30:36', '2024-11-07 05:30:36'),
(221, 17, NULL, NULL, 1, NULL, 5506892052, 'Genuity', 'khadija+1@genusys.us', 'application for email templete creation', '<h4><a href=\"https://mail.google.com/mail/u/0/#inbox\"><i>hellow.</i></a></h4><blockquote><ul><li>how are you</li><li>hhhh</li><li>xyx &nbsp;v</li></ul></blockquote><ol><li>hlw.are you here?</li><li>abc</li><li>def</li></ol><p>ggg</p><p>&nbsp;</p><blockquote><p>&nbsp;</p></blockquote><figure class=\"table\"><table><tbody><tr><td>first name</td><td>last name</td><td>age</td><td>address</td></tr><tr><td>x</td><td>y</td><td>z</td><td>gulshan</td></tr></tbody></table></figure>', '2024-11-07 11:30:38', '2024-11-07 11:30:38', 'Success', '2024-11-07 05:30:38', '2024-11-07 05:30:38'),
(222, NULL, NULL, NULL, 1, 18, NULL, 'Genuity', 'kamrul@gmail.com', 'setting department,roster type,form,to and select staff', 'setting department,roster type,form,to and select staff ->click same time for all day button->setting office time , end time and weekend ->go to sheduler report->upload attandance->showing previous day office time in weekend day http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ Meeting Link: http://192.168.10.66/gplexCRM/', '2024-11-07 11:30:39', '2024-11-07 11:30:39', 'Success', '2024-11-07 05:30:39', '2024-11-07 05:30:39'),
(223, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'test', 'test for 28/07/24', '2024-11-07 11:30:40', '2024-11-07 11:30:40', 'Success', '2024-11-07 05:30:40', '2024-11-07 05:30:40'),
(224, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Application for testing', '<p>dear x,</p><p>I hope this email finds you well. My name is X, and I am reaching out to introduce myself. I’m a [your position/role] and learned about your [project/work] through [mutual contact/website]. I am excited to connect and explore [potential collaboration or partnership] between our organizations.</p><p>[Brief background and reason for the introduction.]</p><p>test type:</p><ol><li>manual test</li><li>automation test</li><li>regression test</li></ol><p>framework:</p><ul><li>selenium</li><li>testng</li><li>data driven</li></ul><p>I look forward to potentially working together. Please feel free to reach out if you have any questions or want to discuss further.</p><p>Best regards,</p><p>x</p>', '2024-11-07 11:30:42', '2024-11-07 11:30:42', 'Success', '2024-11-07 05:30:42', '2024-11-07 05:30:42'),
(225, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Application for testing', '<p>dear x,</p><p>I hope this email finds you well. My name is X, and I am reaching out to introduce myself. I’m a [your position/role] and learned about your [project/work] through [mutual contact/website]. I am excited to connect and explore [potential collaboration or partnership] between our organizations.</p><p>[Brief background and reason for the introduction.]</p><p>test type:</p><ol><li>manual test</li><li>automation test</li><li>regression test</li></ol><p>framework:</p><ul><li>selenium</li><li>testng</li><li>data driven</li></ul><p>I look forward to potentially working together. Please feel free to reach out if you have any questions or want to discuss further.</p><p>Best regards,</p><p>x</p>', '2024-11-07 11:30:43', '2024-11-07 11:30:43', 'Success', '2024-11-07 05:30:43', '2024-11-07 05:30:43'),
(226, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'ঢাকা বিশ্ববিদ্যালয় ইতিহাস', '<h4><strong>ঢাকা বিশ্ববিদ্যালয়&nbsp;</strong></h4><p>ঢাকা বিশ্ববিদ্যালয় ইতিহাস বিভাগ অ্যালামনাই এসোসিয়েশনের ১৮তম পুনর্মিলনী ২৭ জানুয়ারী ২০২৩ শুক্রবার ছাত্র-শিক্ষক কেন্দ্রে অনুষ্ঠিত হয়েছে। সকাল ১০টায় ইতিহাস বিভাগের অবসরপ্রাপ্ত অধ্যাপক ড. আব্দুল মমিন চৌধুরী দিনব্যাপী এই পুনর্মিলনী কর্মসূচির উদ্বোধন করেন। এসোসিয়েশনের সভাপতি আবদুল মুয়ীদ চৌধুরীর সভাপতিত্বে অনুষ্ঠানে অন্যান্যের মধ্যে বক্তব্য রাখেন এসোসিয়েশনের সাধারণ সম্পাদক অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন।&nbsp;এরপর দিনভর চলে আলোচনা, স্মৃতিচারণ, কার্য অধিবেশন, র্যাফেল ড্রসহ মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠান। পুনর্মিলনীতে পুরোনো বন্ধুদেরকে কাছে পেয়ে উচ্ছ্বাসে ফেটে পড়েন বিভাগের সাবেক শিক্ষার্থীরা।</p><p>ঢাকা বিশ্ববিদ্যালয় ইতিহাস বিভাগ অ্যালামনাই এসোসিয়েশনের ১৮তম পুনর্মিলনী ২৭ জানুয়ারী ২০২৩ শুক্রবার ছাত্র-শিক্ষক কেন্দ্রে অনুষ্ঠিত হয়েছে। সকাল ১০টায় ইতিহাস বিভাগের অবসরপ্রাপ্ত অধ্যাপক ড. আব্দুল মমিন চৌধুরী দিনব্যাপী এই পুনর্মিলনী কর্মসূচির উদ্বোধন করেন। এসোসিয়েশনের সভাপতি আবদুল মুয়ীদ চৌধুরীর সভাপতিত্বে অনুষ্ঠানে অন্যান্যের মধ্যে বক্তব্য রাখেন এসোসিয়েশনের সাধারণ সম্পাদক অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন।&nbsp;এরপর দিনভর চলে আলোচনা, স্মৃতিচারণ, কার্য অধিবেশন, র্যাফেল ড্রসহ মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠান। পুনর্মিলনীতে পুরোনো বন্ধুদেরকে কাছে পেয়ে উচ্ছ্বাসে ফেটে পড়েন বিভাগের সাবেক শিক্ষার্থীরা।</p><ul><li>ঢাকা বিশ্ববিদ্যালয় ইতিহাস বিভাগ অ্যালামনাই এসোসিয়েশনের ১৮তম পুনর্মিলনী ২৭ জানুয়ারী ২০২৩ শুক্রবার ছাত্র-শিক্ষক কেন্দ্রে অনুষ্ঠিত হয়েছে।&nbsp;</li><li>সকাল ১০টায় ইতিহাস বিভাগের অবসরপ্রাপ্ত অধ্যাপক ড. আব্দুল মমিন চৌধুরী দিনব্যাপী এই পুনর্মিলনী কর্মসূচির উদ্বোধন করেন।&nbsp;</li><li>এসোসিয়েশনের সভাপতি আবদুল মুয়ীদ চৌধুরীর সভাপতিত্বে অনুষ্ঠানে অন্যান্যের মধ্যে বক্তব্য রাখেন এসোসিয়েশনের সাধারণ সম্পাদক অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন।&nbsp;</li><li>এরপর দিনভর চলে আলোচনা, স্মৃতিচারণ, কার্য অধিবেশন, র্যাফেল ড্রসহ মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠান। পুনর্মিলনীতে পুরোনো বন্ধুদেরকে কাছে পেয়ে উচ্ছ্বাসে ফেটে পড়েন বিভাগের সাবেক শিক্ষার্থীরা।</li></ul><p>ঢাকা বিশ্ববিদ্যালয় ইতিহাস বিভাগ অ্যালামনাই এসোসিয়েশনের ১৮তম পুনর্মিলনী ২৭ জানুয়ারী ২০২৩ শুক্রবার ছাত্র-শিক্ষক কেন্দ্রে অনুষ্ঠিত হয়েছে।</p><ol><li>&nbsp;সকাল ১০টায় ইতিহাস বিভাগের অবসরপ্রাপ্ত অধ্যাপক ড. আব্দুল মমিন চৌধুরী দিনব্যাপী এই পুনর্মিলনী কর্মসূচির উদ্বোধন করেন।&nbsp;</li><li>এসোসিয়েশনের সভাপতি আবদুল মুয়ীদ চৌধুরীর সভাপতিত্বে অনুষ্ঠানে অন্যান্যের মধ্যে বক্তব্য রাখেন এসোসিয়েশনের সাধারণ সম্পাদক অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন।&nbsp;</li><li>এরপর দিনভর চলে আলোচনা, স্মৃতিচারণ, কার্য অধিবেশন, র্যাফেল ড্রসহ মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠান। পুনর্মিলনীতে পুরোনো বন্ধুদেরকে কাছে পেয়ে উচ্ছ্বাসে ফেটে পড়েন বিভাগের সাবেক শিক্ষার্থীরা।</li></ol><p>&nbsp;</p>', '2024-11-07 11:30:44', '2024-11-07 11:30:44', 'Success', '2024-11-07 05:30:44', '2024-11-07 05:30:44'),
(227, NULL, NULL, NULL, 1, 22, NULL, 'Genuity', 'rony@gmail.com', 'crm project meeting', 'Most Trusted CRM Platform — Build everlasting customer relationships with the world’s favorite CRM software. Automate processes to eliminate task repetition and to streamline lead process. Try now. Meeting Link: http://192.168.11.123/gplexCRM', '2024-11-07 11:31:59', '2024-11-07 11:31:59', 'Success', '2024-11-07 05:31:59', '2024-11-07 05:31:59'),
(228, NULL, NULL, NULL, 1, 27, NULL, 'Genuity', 'rony@gmail.com', 'ticketing system  meeting', 'Functional testing is the verification of a system\'s compliance with functional requirements. \r\n\r\nTesting can be divided into two major groups: functional and non-functional testing. Functional testing includes checks of the functionality of an application, software, or system. Non-functional testing includes checks of security, performance, compatibility, and so on. Meeting Link: http://192.168.11.123/gplexCRM', '2024-11-07 11:32:00', '2024-11-07 11:32:00', 'Success', '2024-11-07 05:32:00', '2024-11-07 05:32:00'),
(229, 24, NULL, NULL, 1, NULL, 3876769503, 'Genuity', 'jaman@gmail.com', 'Email template1', '<p>Send email template1</p><p><br></p>', '2024-11-07 11:32:02', '2024-11-07 11:32:02', 'Success', '2024-11-07 05:32:02', '2024-11-07 05:32:02'),
(230, 24, NULL, NULL, 1, NULL, 6161535939, 'Genuity', 'asif@gmail.com', 'Email template1', '<p>Send email template1</p><p><br></p>', '2024-11-07 11:32:03', '2024-11-07 11:32:03', 'Success', '2024-11-07 05:32:03', '2024-11-07 05:32:03'),
(231, NULL, NULL, NULL, 1, 31, NULL, 'Genuity', 'rokibuzzaman@genusys.us', 'Meeting With ishtiak vai', 'Meeting With ishtiak vai Meeting Link: https://mail.google.com/mail/u/0/#inbox', '2024-11-07 11:32:05', '2024-11-07 11:32:05', 'Success', '2024-11-07 05:32:05', '2024-11-07 05:32:05'),
(232, NULL, 403, NULL, 1, NULL, NULL, 'Genuity', 'rokibuzzaman@genusys.us', 'test', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', '2024-11-07 11:32:06', '2024-11-07 11:32:06', 'Success', '2024-11-07 05:32:06', '2024-11-07 05:32:06'),
(233, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Test pending email', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 11:32:08', '2024-11-07 11:32:08', 'Success', '2024-11-07 05:32:08', '2024-11-07 05:32:08'),
(234, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.myplace@gmail.com', 'Test pending email', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 11:32:09', '2024-11-07 11:32:09', 'Success', '2024-11-07 05:32:09', '2024-11-07 05:32:09'),
(235, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.ia@gmail.com', 'Test pending email', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 11:32:10', '2024-11-07 11:32:10', 'Success', '2024-11-07 05:32:10', '2024-11-07 05:32:10'),
(274, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Test cron job', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', '2024-11-07 17:10:04', '2024-11-07 17:10:04', 'Success', '2024-11-07 11:10:04', '2024-11-07 11:10:04'),
(275, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak@genusys.us', 'Agent template test', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 17:14:04', '2024-11-07 17:14:04', 'Success', '2024-11-07 11:14:04', '2024-11-07 11:14:04'),
(276, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.myplace@gmail.com', 'Agent template test', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 17:14:05', '2024-11-07 17:14:05', 'Success', '2024-11-07 11:14:05', '2024-11-07 11:14:05'),
(277, NULL, NULL, NULL, 1, NULL, NULL, 'Genuity', 'ishtiak.ia@gmail.com', 'Agent template test', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 17:14:07', '2024-11-07 17:14:07', 'Success', '2024-11-07 11:14:07', '2024-11-07 11:14:07'),
(278, NULL, 404, NULL, 1, NULL, NULL, 'Genuity', 'khadija@genusys.us', 'test', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', '2024-11-07 17:18:04', '2024-11-07 17:18:04', 'Success', '2024-11-07 11:18:04', '2024-11-07 11:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `email_queue`
--

DROP TABLE IF EXISTS `email_queue`;
CREATE TABLE IF NOT EXISTS `email_queue` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint DEFAULT NULL,
  `lead_id` bigint DEFAULT NULL,
  `meeting_id` bigint DEFAULT NULL,
  `email_from` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` char(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csv_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_level` tinyint DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `schedule_time` datetime DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_subject`, `email_content`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(42, 'Email template1', '<p>Send email template1</p><p><br></p>', 1, 1, NULL, '2024-10-30 23:36:52', '2024-10-30 23:36:52'),
(43, 'Moni template', '<p>Moni email template</p>', 1, 69, NULL, '2024-10-30 23:44:21', '2024-10-30 23:44:21'),
(44, 'Kashfi template', '<p>Kashfi email template</p>', 1, 67, 1, '2024-10-30 23:46:49', '2024-10-31 06:38:37'),
(45, 'create agents templete', '<p><strong>The Need for Speed:</strong></p>\r\n\r\n\r\n\r\n<ul><li> The first reason to use a sanity check is for speed. Nobody would refuse some buffer time to fix the <a href=\"https://testgrid.io/blog/bug-finding-ways-in-software/\" target=\"_blank\" data-type=\"post\" data-id=\"5932\" rel=\"noreferrer noopener\">discovered bugs</a>.\r\n However, this testing is limited in scope and has clearly defined \r\nexamination areas. This testing can be done intuitively without a \r\nspecific test case.</li></ul>\r\n\r\n\r\n\r\n<p><strong>No Extra Effort Is Necessary:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Second, the sanity check keeps you from doing anything you don’t \r\nneed to. It indicates whether additional tests should be performed. This\r\n eliminates extra work but gives the test team more time and simplifies \r\nthe process by eliminating formal bug reporting.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Identifying Outward Issues:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>A sanity check reveals deployment issues. For example, the tester \r\nmight encounter an inaccurate user interface if the developers did not \r\ninclude all the resource files in the compilation. </li><li>Furthermore, developers may fail to specify some critical features \r\nto make them visible to testers. A sanity check detects such issues and \r\nprovides a quick solution for a stable release.</li></ul>\r\n\r\n\r\n\r\n<p><strong>Quick Responses:</strong> </p>\r\n\r\n\r\n\r\n<ul><li>Finally, a test quickly defines the product’s status and predicts \r\nthe next steps. In the event of a failure, you can direct your test team\r\n to resolve the issues discovered before the product release before \r\nmoving on to the next task. </li><li>Simultaneously, if you pass this test, you can ask your team to move\r\n on to the next task, involving only one developer or tester in the \r\nmodifications and fixes, or you can set aside some time to correct the \r\nerrors.</li></ul>', 1, 75, 75, '2024-11-05 08:32:15', '2024-11-05 08:33:11'),
(46, 'second agent created email', '<p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p>It aids in the rapid identification of issues in the core \r\nfunctionality. As a result, the application’s stability can be validated\r\n quickly, and any problems can be reported and fixed quickly.</p>\r\n\r\n\r\n\r\n<p>Because no documentation is required, these tests can be completed less than other formal tests.</p>\r\n\r\n\r\n\r\n<p>If problems are discovered during Sanity testing, then the build is \r\nrejected. This saves a significant amount of time and resources that \r\nwould otherwise be used to run regression tests.</p><p></p><p></p>', 1, 69, 69, '2024-11-05 09:30:22', '2024-11-05 09:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '778181e1-8bd2-4449-a6b7-2f59ffd9d571', 'database', 'default', '{\"uuid\":\"778181e1-8bd2-4449-a6b7-2f59ffd9d571\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"singara(breakfast)\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"singara(breakfast)\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(2, '1c1146b9-867f-493c-b7af-c0a4306bc57e', 'database', 'default', '{\"uuid\":\"1c1146b9-867f-493c-b7af-c0a4306bc57e\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:13:\\\"buscuit,badam\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"buscuit,badam\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(3, '4495fef4-1d28-427e-8126-815a9a984ffb', 'database', 'default', '{\"uuid\":\"4495fef4-1d28-427e-8126-815a9a984ffb\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"singara(breakfast)\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"singara(breakfast)\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(4, '7ecc1aff-3bb5-4150-8048-54ce88e6e2f0', 'database', 'default', '{\"uuid\":\"7ecc1aff-3bb5-4150-8048-54ce88e6e2f0\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:9:\\\"ice cream\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"ice cream\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(5, 'f814b60b-5c06-43de-a48e-513e174092e4', 'database', 'default', '{\"uuid\":\"f814b60b-5c06-43de-a48e-513e174092e4\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"labang,borhani,mojo\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"labang,borhani,mojo\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(6, '225088b6-a74f-4bb2-945e-fbf831aa33b8', 'database', 'default', '{\"uuid\":\"225088b6-a74f-4bb2-945e-fbf831aa33b8\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"peyara,kasundi\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"peyara,kasundi\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'c927f8e3-c1d5-4e1e-a456-6a718c75fffe', 'database', 'default', '{\"uuid\":\"c927f8e3-c1d5-4e1e-a456-6a718c75fffe\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"singara(breakfast)\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"singara(breakfast)\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(8, '0cc9cc28-a422-4630-b125-8302615539e1', 'database', 'default', '{\"uuid\":\"0cc9cc28-a422-4630-b125-8302615539e1\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"Mojo- 4(litre)\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"Mojo- 4(litre)\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(9, 'e2d4728e-0646-42e1-bfe8-187b989fbc10', 'database', 'default', '{\"uuid\":\"e2d4728e-0646-42e1-bfe8-187b989fbc10\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"Ice cream,Mojo\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"Ice cream,Mojo\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(10, '5fa15165-fd1d-488e-ab13-5b3e7396fb71', 'database', 'default', '{\"uuid\":\"5fa15165-fd1d-488e-ab13-5b3e7396fb71\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"singara(breakfast)\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"singara(breakfast)\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(11, '8b8eeaf6-c862-454d-90d9-347aaa383421', 'database', 'default', '{\"uuid\":\"8b8eeaf6-c862-454d-90d9-347aaa383421\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"Labang,RC,mojo\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"Labang,RC,mojo\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51'),
(12, '0c9a06ad-bd1f-4c2c-b1f5-8eef47dc8777', 'database', 'default', '{\"uuid\":\"0c9a06ad-bd1f-4c2c-b1f5-8eef47dc8777\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"Peyara,biscuit,badam,kasundi\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"Peyara,biscuit,badam,kasundi\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(13, '2ca095c3-655a-450b-a53a-68be23a37627', 'database', 'default', '{\"uuid\":\"2ca095c3-655a-450b-a53a-68be23a37627\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"labang,matha\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Symfony\\Component\\Mime\\Exception\\RfcComplianceException: Email \"labang,matha\" does not comply with addr-spec of RFC 2822. in /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/mime/Address.php:54\nStack trace:\n#0 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(246): Symfony\\Component\\Mime\\Address->__construct()\n#1 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Message.php(110): Illuminate\\Mail\\Message->addAddresses()\n#2 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->to()\n#3 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailable->buildRecipients()\n#4 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(317): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#6 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#8 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#9 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#10 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#14 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#22 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#28 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#34 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#35 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#36 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#37 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#38 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#40 /usr/local/apache2/htdocs/gplexCRM_resource/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#41 /usr/local/apache2/htdocs/gplexCRM_resource/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 {main}', '2024-11-05 08:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `file_section`
--

DROP TABLE IF EXISTS `file_section`;
CREATE TABLE IF NOT EXISTS `file_section` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_title` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_section`
--

INSERT INTO `file_section` (`id`, `lead_id`, `form_id`, `created_by`, `file_title`, `upload_file`, `created_at`, `updated_at`) VALUES
(22, 406, '6820060189', 'shimla1236', '', 'invoice_INV-000032_1730199755_1730791521.pdf', '2024-11-05 07:25:21', '2024-11-05 07:25:21'),
(23, 407, '6820060189', NULL, 'xyz', '', NULL, NULL),
(24, 420, '6820060189', NULL, 'lead file', '', NULL, NULL),
(25, 425, '6820060189', NULL, 'fgh', '', NULL, NULL),
(26, 429, '6820060189', 'moni123', 'insurance file', 'ASH1825037M_SDA_REPORT (1)-1_1730789615_1730864202.pdf', '2024-11-06 03:36:42', '2024-11-06 03:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NOT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `currency` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'BDT',
  `sub_total` decimal(15,2) DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00',
  `discount_type` enum('No discount','Before tax','After tax') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'No discount',
  `adjustment` decimal(15,2) DEFAULT '0.00',
  `total_amount` decimal(15,2) DEFAULT '0.00',
  `total_tax` decimal(15,2) DEFAULT '0.00',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_conditions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prevent_reminders` tinyint DEFAULT NULL,
  `is_recurring` tinyint DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_agent_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `fk_customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `invoice_number`, `invoice_date`, `due_date`, `currency`, `sub_total`, `discount`, `discount_type`, `adjustment`, `total_amount`, `total_tax`, `address`, `admin_note`, `client_note`, `terms_conditions`, `item_description`, `payment_details`, `prevent_reminders`, `is_recurring`, `payment_mode`, `sale_agent_id`, `invoice_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, 7, 'INV-000038', '2024-11-05', '2024-11-12', '5', 12.00, 2.00, NULL, NULL, 10.60, 0.60, NULL, NULL, 'crm', 'crm', '[{\"Item\":\"crm\",\"Description\":\"Test case reviews are just as important during test automation as they are during manual testing. In fact, they can be even more critical in the automation context because once test cases are automated, any defects in the test cases can be repeated quickly and consistently.\",\"Qty\":\"1\",\"Rate\":\"12\",\"Tax\":\"5.00\",\"Amount\":12}]', '[{\"invoice_id\":38,\"payment\":\"5\",\"payment_date\":\"2024-11-05\",\"due\":5.6},{\"invoice_id\":38,\"payment\":\"5\",\"payment_date\":\"2024-11-05\",\"due\":0.5999999999999996},{\"invoice_id\":38,\"payment\":\"0.6\",\"payment_date\":\"2024-11-05\",\"due\":0},{\"invoice_id\":38,\"payment\":\"100\",\"payment_date\":\"2024-11-07\",\"due\":0}]', NULL, NULL, 'Bank', NULL, 'Draft', '2024-11-05 12:19:50', '2024-11-07 03:54:29', NULL),
(39, 7, 'INV-000039', '2024-11-06', '2024-11-06', '5', 800.00, 2.00, 'No discount', 2.00, 800.00, 0.00, NULL, NULL, NULL, NULL, '[{\"Item\":\"call center solution\",\"Description\":\"Imagine that every QA member maintains their own document for test cases. This will only lead to confusion when you work as a team, and there is a high chance of losing track of the test plan and execution. If you don\\u2019t maintain a proper test case repository, then it might lead to missed execution of test cases, patchy test coverage, and, eventually, poor product quality. That is why maintaining a test case repository is highly important for medium to large projects.\",\"Qty\":\"2\",\"Rate\":\"150\",\"Tax\":\"0.00\",\"Amount\":300},{\"Item\":\"kbs\",\"Description\":\"Imagine that every QA member maintains their own document for test cases. This will only lead to confusion when you work as a team, and there is a high chance of losing track of the test plan and execution. If you don\\u2019t maintain a proper test case repository, then it might lead to missed execution of test cases, patchy test coverage, and, eventually, poor product quality. That is why maintaining a test case repository is highly important for medium to large projects.\\r\\n\\r\\nBesides, testing is a repeatable procedure. Reusing test cases is one of the major advantages, as it helps save time. In large projects, frequent testing will be required. And, when you have a test case repository, it will let you reuse your previous test resources wherever required and accelerate the testing process. Also, maintaining a test repository is quite easy!\\r\\n\\r\\nHere are some of the top benefits of a test case repository:\\r\\n\\r\\nAll the authorized test cases will be stored in a test case repository.\\r\\nQA team will always have a complete backup of the test case repository in case of a crash that might affect the application.\\r\\nIt can be easily updated whenever required.\\r\\nIt helps save time.\\r\\nTesters\\u2019 test case creation skills can be assessed on a performance basis.\\r\\nIt helps achieve comprehensive test coverage.\\r\\nIt helps with test reports.\\r\\nThe status of test cases can be easily displayed via a chart with values like pass, fail, or not tested.\\r\\nBoosts application quality and knowledge.\",\"Qty\":\"2\",\"Rate\":\"250\",\"Tax\":\"0.00\",\"Amount\":500}]', NULL, NULL, NULL, 'Bank', '3791', 'Open', '2024-11-06 03:39:33', '2024-11-06 03:39:33', NULL),
(40, 8, 'INV-000040', '2024-11-06', '2024-11-14', '5', 0.00, 0.00, 'Before tax', NULL, 0.00, 0.00, NULL, NULL, 'product service', 'product service', '[{\"Item\":\"kbs\",\"Description\":\"Imagine that every QA member maintains their own document for test cases. This will only lead to confusion when you work as a team, and there is a high chance of losing track of the test plan and execution. If you don\\u2019t maintain a proper test case repository, then it might lead to missed execution of test cases, patchy test coverage, and, eventually, poor product quality. That is why maintaining a test case repository is highly important for medium to large projects.\\r\\n\\r\\nBesides, testing is a repeatable procedure. Reusing test cases is one of the major advantages, as it helps save time. In large projects, frequent testing will be required. And, when you have a test case repository, it will let you reuse your previous test resources wherever required and accelerate the testing process. Also, maintaining a test repository is quite easy!\\r\\n\\r\\nHere are some of the top benefits of a test case repository:\\r\\n\\r\\nAll the authorized test cases will be stored in a test case repository.\\r\\nQA team will always have a complete backup of the test case repository in case of a crash that might affect the application.\\r\\nIt can be easily updated whenever required.\\r\\nIt helps save time.\\r\\nTesters\\u2019 test case creation skills can be assessed on a performance basis.\\r\\nIt helps achieve comprehensive test coverage.\\r\\nIt helps with test reports.\\r\\nThe status of test cases can be easily displayed via a chart with values like pass, fail, or not tested.\\r\\nBoosts application quality and knowledge.\",\"Qty\":\"1\",\"Rate\":\"250\",\"Tax\":\"5.00\",\"Amount\":250}]', NULL, NULL, NULL, 'Stripe Checkout', NULL, 'Draft', '2024-11-06 04:40:22', '2024-11-12 04:29:09', NULL),
(41, 8, 'INV-000041', '2024-11-13', '2024-11-20', NULL, 262.00, 0.00, NULL, NULL, 275.10, 13.10, NULL, NULL, NULL, NULL, '[{\"Item\":\"crm\",\"Description\":\"Test case reviews are just as important during test automation as they are during manual testing. In fact, they can be even more critical in the automation context because once test cases are automated, any defects in the test cases can be repeated quickly and consistently.\",\"Qty\":\"1\",\"Rate\":\"12\",\"Tax\":\"5.00\",\"Amount\":12},{\"Item\":\"kbs\",\"Description\":\"Imagine that every QA member maintains their own document for test cases. This will only lead to confusion when you work as a team, and there is a high chance of losing track of the test plan and execution. If you don\\u2019t maintain a proper test case repository, then it might lead to missed execution of test cases, patchy test coverage, and, eventually, poor product quality. That is why maintaining a test case repository is highly important for medium to large projects.\\r\\n\\r\\nBesides, testing is a repeatable procedure. Reusing test cases is one of the major advantages, as it helps save time. In large projects, frequent testing will be required. And, when you have a test case repository, it will let you reuse your previous test resources wherever required and accelerate the testing process. Also, maintaining a test repository is quite easy!\\r\\n\\r\\nHere are some of the top benefits of a test case repository:\\r\\n\\r\\nAll the authorized test cases will be stored in a test case repository.\\r\\nQA team will always have a complete backup of the test case repository in case of a crash that might affect the application.\\r\\nIt can be easily updated whenever required.\\r\\nIt helps save time.\\r\\nTesters\\u2019 test case creation skills can be assessed on a performance basis.\\r\\nIt helps achieve comprehensive test coverage.\\r\\nIt helps with test reports.\\r\\nThe status of test cases can be easily displayed via a chart with values like pass, fail, or not tested.\\r\\nBoosts application quality and knowledge.\",\"Qty\":\"1\",\"Rate\":\"250\",\"Tax\":\"5.00\",\"Amount\":250},{\"Item\":\"call center solution\",\"Description\":\"Imagine that every QA member maintains their own document for test cases. This will only lead to confusion when you work as a team, and there is a high chance of losing track of the test plan and execution. If you don\\u2019t maintain a proper test case repository, then it might lead to missed execution of test cases, patchy test coverage, and, eventually, poor product quality. That is why maintaining a test case repository is highly important for medium to large projects.\",\"Qty\":\"0\",\"Rate\":\"150\",\"Tax\":0,\"Amount\":0}]', NULL, NULL, NULL, 'Bank', NULL, 'Draft', '2024-11-12 06:20:13', '2024-11-12 06:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_custom_form`
--

DROP TABLE IF EXISTS `invoice_custom_form`;
CREATE TABLE IF NOT EXISTS `invoice_custom_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_in_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `issued_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(115, 'default', '{\"uuid\":\"1e8f25af-9d62-48f3-963f-625fd3dbda1a\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"khadija@genusys.us\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(116, 'default', '{\"uuid\":\"87fffdcb-30c1-4e52-bb4d-075ce7e9e6b9\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:26:\\\"akterkhadija309@genusys.us\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(117, 'default', '{\"uuid\":\"ff0e2ca3-05fc-4957-a9c2-c31bdeb12bfe\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"khadija+1@genusys.us\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(118, 'default', '{\"uuid\":\"ad199b5f-3712-4c99-b716-476e0fdd278b\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"Faisal@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(119, 'default', '{\"uuid\":\"afad3600-e0b0-4286-96f9-8e40eff6be9c\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"shoshe@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(120, 'default', '{\"uuid\":\"665b237a-1665-41c8-b40b-83cbeed51683\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"rakib@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(121, 'default', '{\"uuid\":\"813f12a4-d919-4807-892d-7f18950f5566\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:13:\\\"wer@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383),
(122, 'default', '{\"uuid\":\"91130cc7-617b-4a3c-959f-4ec89acb87d5\",\"displayName\":\"App\\\\Mail\\\\BulkEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\BulkEmail\\\":4:{s:7:\\\"subject\\\";s:13:\\\"Moni template\\\";s:4:\\\"body\\\";s:26:\\\"<p>Moni email template<\\/p>\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"rony@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1730803383, 1730803383);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_status` tinyint NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_rating` int DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employee` int DEFAULT NULL,
  `lead_source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leads_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `form_id`, `first_name`, `last_name`, `email`, `phone`, `profile_image`, `alternative_number`, `gender`, `dob`, `marital_status`, `address`, `age`, `company`, `lead_status`, `title`, `lead_rating`, `website`, `lead_owner`, `industry`, `no_of_employee`, `lead_source`, `street`, `city`, `zip`, `state`, `country`, `lead_notes`, `created_by`, `created_at`, `updated_at`) VALUES
(403, '1051895449', 'rakib', 'zaman', 'rokibuzzaman@genusys.us', '01645239865', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730789493.jpg', '01764659632', NULL, NULL, NULL, 'uttara', NULL, 'Gplex', 1, NULL, 2, 'http://192.168.11.123/gplexCRM', 'Alamin', 'Gtalk', NULL, 'Social media', '1/2A', 'dhaka', '1232', '1/2A', 'Bangladesh', 'A bank is a financial institution that accepts deposits from the public', 75, '2024-11-05 06:17:19', '2024-11-07 04:28:20'),
(404, '1051895449', 'Shoshe', 'Islam', 'khadija@genusys.us', '01762680927', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730790444.jpg', '01640396854', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'SEO', NULL, NULL, NULL, NULL, 'Bangladesh', NULL, 75, '2024-11-05 07:07:24', '2024-11-07 11:17:09'),
(406, '6820060189', 'Faisal', 'Ahmed', 'Faisal@gmail.com', '01769632541', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730791771.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Robi', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Events', NULL, NULL, '1231', NULL, NULL, NULL, 75, '2024-11-05 07:25:21', '2024-11-05 07:29:31'),
(407, '6820060189', 'samiul', 'alam', 'samiul@gmail.com', '01764652369', NULL, NULL, 'Male', '2024-03-02', 'Single', NULL, 25, 'robi', 1, 'xyz', 2, 'http://192.168.11.123/gplexCRM', 'sayma', 'Gplex', NULL, 'SEO', '1/2A', 'dhaka', '1234', NULL, 'BD', NULL, NULL, NULL, NULL),
(411, '1051895449', 'Rony', 'islam', 'rony@gmail.com', '01764655652', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730798599.jpg', NULL, NULL, NULL, NULL, 'bashundhara', NULL, 'Gplex', 1, NULL, 2, 'http://192.168.11.123/gplexCRM', NULL, NULL, NULL, 'Social media', '1/2A', 'dhaka', '1231', NULL, NULL, NULL, 69, '2024-11-05 09:23:19', '2024-11-05 09:23:19'),
(418, '1051895449', 'Karim', 'Rahman', 'karim@gmail.com', '01764655985', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730801952.jpg', '01641236985', NULL, NULL, NULL, NULL, NULL, 'robi', 1, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69, '2024-11-05 10:19:12', '2024-11-05 10:19:12'),
(420, '6820060189', 'sara', 'islam', 'sara122@gmail.com', '01764655206', NULL, '1764589632', NULL, NULL, NULL, 'banani', NULL, 'Robi', 1, NULL, 3, 'http://192.168.11.123/gplexCRM', 'kamrul', 'Gplex', NULL, 'Social media', '123', 'dhaka', '1231', '1/2A', 'BD', 'need lead phone number', 1, NULL, '2024-11-05 12:10:27'),
(428, '6820060189', 'amin', 'khan', 'khan@gmail.com', '23232323223', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Social media', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-11-05 12:24:58', '2024-11-05 12:25:10'),
(429, '6820060189', 'Sadman', 'Albi', 'Sadman@Gmail.com', '01764652365', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730864202.jpg', '01698523657', NULL, NULL, NULL, 'mirpur', NULL, 'gplex', 1, NULL, 2, 'http://192.168.11.123/gplexCRM', 'robi', NULL, NULL, 'Blog', NULL, 'dhaka', '1234', '123', 'bangladesh', NULL, 69, '2024-11-06 03:36:42', '2024-11-06 03:36:42'),
(430, '1051895449', 'Kazi Azizur', 'Rahman', 'citybank@gmail.com', '01717761611', 'Profile-Picture_1730870065.jpg', NULL, NULL, NULL, NULL, 'Gulshan 2', NULL, 'The City Bank', 1, NULL, NULL, 'https://thecitybank.com', NULL, 'Bank', NULL, 'LinkedIn', NULL, 'Dhaka', NULL, NULL, 'Bangladesh', NULL, 78, '2024-11-06 05:14:25', '2024-11-06 05:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `leads_custom_data`
--

DROP TABLE IF EXISTS `leads_custom_data`;
CREATE TABLE IF NOT EXISTS `leads_custom_data` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` bigint UNSIGNED NOT NULL,
  `custom_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lead_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_custom_data_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_form`
--

DROP TABLE IF EXISTS `leads_form`;
CREATE TABLE IF NOT EXISTS `leads_form` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `form_status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads_form`
--

INSERT INTO `leads_form` (`id`, `form_id`, `parent_id`, `form_name`, `form_description`, `form_status`, `created_at`, `updated_at`) VALUES
(67, '6820060189', NULL, 'Insurance Form', 'This is a lead form', 1, '2024-08-21 03:09:56', '2024-09-24 00:42:00'),
(101, '1051895449', NULL, 'Bank', NULL, 1, '2024-11-05 05:57:26', '2024-11-05 05:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `leads_form_json`
--

DROP TABLE IF EXISTS `leads_form_json`;
CREATE TABLE IF NOT EXISTS `leads_form_json` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `form_status` tinyint NOT NULL,
  `custom_form_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads_form_json`
--

INSERT INTO `leads_form_json` (`id`, `form_id`, `form_name`, `form_description`, `form_status`, `custom_form_fields`, `created_at`, `updated_at`) VALUES
(1, '2', 'Customer Data', '', 0, '{\"key1\": \"value1\", \"key2\": \"value2\"}', '2024-04-28 13:31:45', '2024-04-28 13:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `lead_form_details`
--

DROP TABLE IF EXISTS `lead_form_details`;
CREATE TABLE IF NOT EXISTS `lead_form_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `character_length` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_index` tinyint DEFAULT NULL,
  `is_null` tinyint DEFAULT NULL,
  `is_unique` tinyint DEFAULT NULL,
  `view_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_form_details`
--

INSERT INTO `lead_form_details` (`id`, `form_id`, `field_name`, `field_value`, `table_name`, `character_length`, `is_index`, `is_null`, `is_unique`, `view_type`, `form_size`, `created_at`, `updated_at`) VALUES
(1844, '6820060189', 'invoice_amount', 'int', 'pay_section', '10', 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:34', '2024-11-04 06:09:34'),
(1845, '6820060189', 'invoice_date', 'date', 'pay_section', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:34', '2024-11-04 06:09:34'),
(1846, '6820060189', 'pdf_invoice_upload', 'file', 'pay_section', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:34', '2024-11-04 06:09:34'),
(1847, '6820060189', 'notes', 'text', 'note_section', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:41', '2024-11-04 06:09:41'),
(1848, '6820060189', 'rating', 'dropdown', 'note_section', 'GOOD,BAD,GREAT', 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:41', '2024-11-04 06:09:41'),
(1849, '6820060189', 'file_title', 'char', 'file_section', '100', 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:46', '2024-11-04 06:09:46'),
(1850, '6820060189', 'upload_file', 'file', 'file_section', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-04 06:09:46', '2024-11-04 06:09:46'),
(1885, '1051895449', 'customer_name', 'varchar', 'customer_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 06:48:59', '2024-11-05 06:48:59'),
(1886, '1051895449', 'address', 'text', 'customer_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 06:48:59', '2024-11-05 06:48:59'),
(1887, '1051895449', 'mobile_number', 'char', 'customer_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 06:48:59', '2024-11-05 06:48:59'),
(1888, '1051895449', 'total_balance', 'char', 'customer_info', '16', 0, 1, 0, 'table_view', NULL, '2024-11-05 06:48:59', '2024-11-05 06:48:59'),
(1889, '1051895449', 'image_upload_file', 'file', 'customer_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 06:48:59', '2024-11-05 06:48:59'),
(1895, '1051895449', 'name', 'varchar', 'bank_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45'),
(1896, '1051895449', 'location', 'text', 'bank_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45'),
(1897, '1051895449', 'status', 'dropdown', 'bank_info', 'active,inactive', 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45'),
(1898, '1051895449', 'logo_upload', 'file', 'bank_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45'),
(1899, '1051895449', 'start_date', 'date', 'bank_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45'),
(1900, '1051895449', 'total_amount', 'int', 'bank_info', NULL, 0, 1, 0, 'table_view', NULL, '2024-11-05 10:34:45', '2024-11-05 10:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `lead_survey_child`
--

DROP TABLE IF EXISTS `lead_survey_child`;
CREATE TABLE IF NOT EXISTS `lead_survey_child` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` bigint UNSIGNED NOT NULL,
  `parent_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_age` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_habit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_food_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `national_birth_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_survey_child`
--

INSERT INTO `lead_survey_child` (`id`, `form_id`, `lead_id`, `parent_id`, `child_name`, `child_age`, `child_education`, `child_habit`, `child_food_details`, `blood_group`, `date_of_birth`, `national_birth_id`, `created_at`, `updated_at`) VALUES
(1, '885013', 1, '885012', 'Raseduzzaman', '5', 'class 1', '3 meals and 2 to 3 snacks each day', 'dairy, eggs, meat, fish and poultry', 'AB+', '2019-03-01', '2132223232424242', NULL, NULL),
(2, '885013', 1, '885012', 'Khairul Hasan', '7', 'class 2', '3 meals and 2 to 3 snacks each day', 'dairy, eggs, meat, fish and poultry', 'B+', '2018-03-01', '2132223232424241', NULL, NULL),
(3, '885013', 2, '885012', 'Amanuzzaman', '8', 'class 3', '3 meals and 2 to 3 snacks each day', 'dairy, eggs, meat, fish and poultry', 'B-', '2017-03-01', '2132223232424245', NULL, NULL),
(4, '885013', 1, '885012', 'Azaduzzaman', '10', 'class 4', '3 meals and 2 to 3 snacks each day', 'oily, fish, nuts', 'B-', '2016-03-01', '2132223232424246', NULL, NULL),
(5, '885013', 1, '885012', 'Sayed Khan', '11', 'class 5', '3 meals and 2 to 3 snacks each day', 'Vegetables,Grains,Dairy', 'AB-', '2015-03-01', '2132223232424247', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_survey_people`
--

DROP TABLE IF EXISTS `lead_survey_people`;
CREATE TABLE IF NOT EXISTS `lead_survey_people` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` bigint UNSIGNED NOT NULL,
  `profession` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_child` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `spouse_profession` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobby` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_income` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parents_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_member_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_survey_people`
--

INSERT INTO `lead_survey_people` (`id`, `form_id`, `lead_id`, `profession`, `number_of_child`, `permanent_address`, `spouse_name`, `spouse_profession`, `hobby`, `monthly_income`, `child_details`, `parents_details`, `other_member_details`, `updated_at`, `created_at`) VALUES
(1, '885012', 1, 'Engineer', '3', '444/5,senpara,Mirpur-10', 'Rahima Begum', 'Teacher', 'Gardening', '45000', '3 Children', NULL, NULL, NULL, NULL),
(2, '885012', 1, 'Teacher', '2', '444/5,senpara,Mirpur-10', 'Romesha Khatun', 'Teacher', 'Teaching', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `lead_id` int DEFAULT NULL,
  `module` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_module` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `log_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `lead_id`, `module`, `sub_module`, `log_message`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'test Email Template Created', 1, '2024-07-28 02:16:07', '2024-07-28 02:16:07'),
(2, 1, NULL, NULL, NULL, 'jjj Email Template Updated', 1, '2024-07-29 23:40:29', '2024-07-29 23:40:29'),
(3, 1, NULL, 'Email Template', 'Email Template Create', 'Test template Email Template Created', 1, '2024-10-24 00:00:07', '2024-10-24 00:00:07'),
(4, 1, NULL, 'Email Template', 'Email Template Delete', 'application for email templete creation Email Template Deleted', 1, '2024-10-24 00:00:20', '2024-10-24 00:00:20'),
(5, 1, NULL, 'Email Template', 'Email Template Delete', 'Test template Email Template Deleted', 1, '2024-10-24 00:00:35', '2024-10-24 00:00:35'),
(6, 1, NULL, 'Email Template', 'Email Template Update', 'test Email Template Updated', 1, '2024-10-24 00:00:54', '2024-10-24 00:00:54'),
(7, 1, NULL, 'Email Template', 'Email Template Update', 'test123 Email Template Updated', 1, '2024-10-24 00:04:24', '2024-10-24 00:04:24'),
(8, 1, NULL, 'Email Template', 'Email Template Update', 'test123 Email Template Updated', 1, '2024-10-24 04:32:36', '2024-10-24 04:32:36'),
(9, 1, NULL, 'Email Template', 'Email Template Delete', 'xxxxx Email Template Deleted', 1, '2024-10-27 00:35:26', '2024-10-27 00:35:26'),
(10, 1, NULL, 'Email Template', 'Email Template Delete', 'hhh => Email Template => Deleted', 1, '2024-10-29 03:42:57', '2024-10-29 03:42:57'),
(11, 1, NULL, 'Email Template', 'Email Template Create', 'ghjg => Email Template => Created', 1, '2024-10-29 03:43:04', '2024-10-29 03:43:04'),
(12, 1, NULL, 'Email Template', 'Email Template Delete', 'ghjg => Email Template => Deleted', 1, '2024-10-29 03:43:09', '2024-10-29 03:43:09'),
(13, 1, NULL, 'Email Template', 'Email Template Update', 'test123 => Email Template => Updated', 1, '2024-10-29 03:43:15', '2024-10-29 03:43:15'),
(14, 1, NULL, 'Email Template', 'Email Template Create', 'testing => Email Template => Created', 1, '2024-10-29 03:44:23', '2024-10-29 03:44:23'),
(15, 1, NULL, 'Email Template', 'Email Template Update', 'testing-> => Email Template => Updated', 1, '2024-10-29 03:44:35', '2024-10-29 03:44:35'),
(16, 1, NULL, 'Email Template', 'Email Template Delete', 'uuu => Email Template => Deleted', 1, '2024-10-29 03:44:40', '2024-10-29 03:44:40'),
(17, 1, NULL, 'Email Template', 'Email Template Delete', 'efff => Email Template => Deleted', 1, '2024-10-29 03:48:54', '2024-10-29 03:48:54'),
(18, 1, 391, 'Email Module', 'Send an Email', 'Email send successfully to khadija@genusys.us => Email Module => Send Email', 1, '2024-10-29 04:10:21', '2024-10-29 04:10:21'),
(19, 1, 391, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764655648 => SMS Module => Send SMS', 1, '2024-10-29 04:20:39', '2024-10-29 04:20:39'),
(20, 1, 391, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764655648 => SMS Module => Send SMS', 1, '2024-10-29 04:26:27', '2024-10-29 04:26:27'),
(21, 1, NULL, 'Email Template', 'Email Template Create', 'Email template1 => Email Template => Created', 1, '2024-10-30 23:36:52', '2024-10-30 23:36:52'),
(22, 69, NULL, 'Email Template', 'Email Template Create', 'Moni template => Email Template => Created', 1, '2024-10-30 23:44:21', '2024-10-30 23:44:21'),
(23, 67, NULL, 'Email Template', 'Email Template Create', 'Kashfi template => Email Template => Created', 1, '2024-10-30 23:46:49', '2024-10-30 23:46:49'),
(24, 1, NULL, 'SMS Template', 'SMS Template Create', 'SMS template1 => SMS Template => Created', 1, '2024-10-30 23:48:22', '2024-10-30 23:48:22'),
(25, 69, NULL, 'SMS Template', 'SMS Template Create', 'Moni template => SMS Template => Created', 1, '2024-10-30 23:48:59', '2024-10-30 23:48:59'),
(26, 69, NULL, 'Email Module', 'Send an Email', 'Email send successfully to ishtiak@genusys.us => Email Module => Send Email', 1, '2024-10-30 23:49:36', '2024-10-30 23:49:36'),
(27, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak@genusys.us => Email Module  => Send Bulk Email', 1, NULL, NULL),
(28, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak.myplace@gmail.com => Email Module  => Send Bulk Email', 1, NULL, NULL),
(29, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak.ia@gmail.com => Email Module  => Send Bulk Email', 1, NULL, NULL),
(30, 67, NULL, 'SMS Template', 'SMS Template Create', 'Kashfi template => SMS Template => Created', 1, '2024-10-30 23:55:13', '2024-10-30 23:55:13'),
(31, 1, 306, 'SMS Module', 'Send SMS', 'SMS send successfully to 01788888888 => SMS Module => Send SMS', 1, '2024-10-30 23:55:35', '2024-10-30 23:55:35'),
(32, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01555555555 => SMS Module  => Send Bulk SMS', 1, NULL, NULL),
(33, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01455555555 => SMS Module  => Send Bulk SMS', 1, NULL, NULL),
(34, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01717898891 => SMS Module  => Send Bulk SMS', 1, NULL, NULL),
(35, 1, NULL, 'Products', 'Update Product', 'ems => Products => Updated', 1, '2024-10-30 23:56:46', '2024-10-30 23:56:46'),
(36, 1, NULL, 'Products', 'Update Product', 'ems => Products => Updated', 1, '2024-10-30 23:56:53', '2024-10-30 23:56:53'),
(37, 1, 266, 'SMS Module', 'Send SMS', 'SMS send successfully to 01875644444 => SMS Module => Send SMS', 1, '2024-10-30 23:59:55', '2024-10-30 23:59:55'),
(38, 1, NULL, 'Email Template', 'Email Template Update', 'Kashfi template => Email Template => Updated', 1, '2024-10-31 06:38:37', '2024-10-31 06:38:37'),
(39, 1, 401, 'SMS Module', 'Send SMS', 'SMS send successfully to 01796321456', 1, '2024-11-05 04:49:00', '2024-11-05 04:49:00'),
(40, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name one => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(41, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name two => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(42, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name Three => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(43, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name Four => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(44, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name Five => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(45, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name six => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(46, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name seven => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(47, 1, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 0Route Name nine => SMS Module  => Send Bulk SMS', 1, '2024-11-05 04:50:02', NULL),
(48, 1, 401, 'SMS Module', 'Send SMS', 'SMS send successfully to 01796321456', 1, '2024-11-05 05:38:56', '2024-11-05 05:38:56'),
(49, 1, 402, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764655648', 1, '2024-11-05 05:39:41', '2024-11-05 05:39:41'),
(50, 1, 402, 'Email Module', 'Send an Email', 'Email send successfully to rayhan@ymail.com', 1, '2024-11-05 05:41:20', '2024-11-05 05:41:20'),
(51, 1, NULL, 'Email Module', 'Send an Email', 'Email send successfully to ishtiak@genusys.us', 1, '2024-11-05 06:05:06', '2024-11-05 06:05:06'),
(52, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to singara(breakfast) => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(53, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to buscuit,badam => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(54, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to singara(breakfast) => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(55, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ice cream => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(56, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to labang,borhani,mojo => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(57, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to peyara,kasundi => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(58, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to singara(breakfast) => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(59, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to Mojo- 4(litre) => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(60, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to Ice cream,Mojo => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(61, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to singara(breakfast) => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(62, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to Labang,RC,mojo => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(63, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to Peyara,biscuit,badam,kasundi => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(64, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to labang,matha => Email Module  => Send Bulk Email', 1, '2024-11-05 07:09:08', NULL),
(65, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 08:07:48', NULL),
(66, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak.myplace@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 08:07:48', NULL),
(67, 1, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to ishtiak.ia@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 08:07:48', NULL),
(68, 75, NULL, 'Email Template', 'Email Template Create', 'create agent templete', 1, '2024-11-05 08:32:15', '2024-11-05 08:32:15'),
(69, 75, NULL, 'Email Template', 'Email Template Update', 'create agents templete', 1, '2024-11-05 08:33:11', '2024-11-05 08:33:11'),
(70, 75, 403, 'Email Module', 'Send an Email', 'Email send successfully to rakib@gmail.com', 1, '2024-11-05 08:34:26', '2024-11-05 08:34:26'),
(71, 75, 406, 'Email Module', 'Send an Email', 'Email send successfully to Faisal@gmail.com', 1, '2024-11-05 08:35:54', '2024-11-05 08:35:54'),
(72, 75, 404, 'Email Module', 'Send an Email', 'Email send successfully to shoshe@gmail.com', 1, '2024-11-05 08:38:03', '2024-11-05 08:38:03'),
(73, 75, 406, 'SMS Module', 'Send SMS', 'SMS send successfully to 01769632541', 1, '2024-11-05 08:40:27', '2024-11-05 08:40:27'),
(74, 75, 406, 'SMS Module', 'Send SMS', 'SMS send successfully to 01769632541', 1, '2024-11-05 08:46:51', '2024-11-05 08:46:51'),
(75, 75, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to khadija@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(76, 75, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to akterkhadija309@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(77, 75, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to khadija+1@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(78, 75, 406, 'Email Module', 'Send Bulk Email', 'Email send successfully to Faisal@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(79, 75, 404, 'Email Module', 'Send Bulk Email', 'Email send successfully to shoshe@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(80, 75, 403, 'Email Module', 'Send Bulk Email', 'Email send successfully to rakib@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 08:52:19', NULL),
(81, 75, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(82, 75, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877113 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(83, 75, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(84, 75, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01667655555 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(85, 75, 406, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01769632541 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(86, 75, 404, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01762680927 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(87, 75, 403, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01645239865 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:02:27', NULL),
(88, 69, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:28:06', '2024-11-05 09:28:06'),
(89, 69, NULL, 'Email Template', 'Email Template Create', 'second agent created email', 1, '2024-11-05 09:30:22', '2024-11-05 09:30:22'),
(90, 69, NULL, 'Email Template', 'Email Template Update', 'second agent created email', 1, '2024-11-05 09:30:38', '2024-11-05 09:30:38'),
(91, 69, NULL, 'Email Template', 'Email Template Create', 'dfgd', 1, '2024-11-05 09:30:48', '2024-11-05 09:30:48'),
(92, 69, NULL, 'Email Template', 'Email Template Delete', 'dfgd', 1, '2024-11-05 09:30:55', '2024-11-05 09:30:55'),
(93, 69, 411, 'Email Module', 'Send an Email', 'Email send successfully to rony@gmail.com', 1, '2024-11-05 09:31:43', '2024-11-05 09:31:43'),
(94, 69, 411, 'Email Module', 'Send an Email', 'Email send successfully to rony@gmail.com', 1, '2024-11-05 09:32:27', '2024-11-05 09:32:27'),
(95, 69, 411, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-05 09:34:38', '2024-11-05 09:34:38'),
(96, 69, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:34:54', '2024-11-05 09:34:54'),
(97, 69, 411, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-05 09:35:38', '2024-11-05 09:35:38'),
(98, 69, NULL, 'Meeting', 'updateFeedback', 'Meeting feedback updated successfully', 1, '2024-11-05 09:36:00', '2024-11-05 09:36:00'),
(99, 69, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:37:26', '2024-11-05 09:37:26'),
(100, 69, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:37:50', '2024-11-05 09:37:50'),
(101, 69, NULL, 'Meeting', 'updateFeedback', 'Meeting feedback updated successfully', 1, '2024-11-05 09:38:08', '2024-11-05 09:38:08'),
(102, 69, NULL, 'Meeting', 'updateFeedback', 'Meeting feedback updated successfully', 1, '2024-11-05 09:38:16', '2024-11-05 09:38:16'),
(103, 69, 411, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-05 09:38:42', '2024-11-05 09:38:42'),
(104, 75, 404, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:40:02', '2024-11-05 09:40:02'),
(105, 1, NULL, 'Meeting', 'delete Meeting', 'Meeting deleted successfully', 1, '2024-11-05 09:47:04', '2024-11-05 09:47:04'),
(106, 1, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 09:47:24', '2024-11-05 09:47:24'),
(107, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(108, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877113 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(109, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(110, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01667655555 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(111, 69, 406, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01769632541 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(112, 69, 404, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01762680927 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(113, 69, 403, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01645239865 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(114, 69, 411, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01764655652 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 09:51:18', NULL),
(115, 69, 411, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764655652', 1, '2024-11-05 09:52:10', '2024-11-05 09:52:10'),
(116, 69, 411, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-05 09:52:54', '2024-11-05 09:52:54'),
(117, 69, 411, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 10:09:19', '2024-11-05 10:09:19'),
(118, 69, NULL, 'Meeting', 'delete Meeting', 'Meeting deleted successfully', 1, '2024-11-05 10:09:22', '2024-11-05 10:09:22'),
(119, 1, NULL, 'Meeting', 'delete Meeting', 'Meeting deleted successfully', 1, '2024-11-05 10:09:39', '2024-11-05 10:09:39'),
(120, 1, NULL, 'Meeting', 'delete Meeting', 'Meeting deleted successfully', 1, '2024-11-05 10:09:57', '2024-11-05 10:09:57'),
(121, 69, NULL, 'SMS Template', 'SMS Template Create', 'agent sms templete', 1, '2024-11-05 10:11:31', '2024-11-05 10:11:31'),
(122, 69, 418, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764655985', 1, '2024-11-05 10:24:09', '2024-11-05 10:24:09'),
(123, 69, 425, 'Email Module', 'Send an Email', 'Email send successfully to wer@gmail.com', 1, '2024-11-05 10:35:46', '2024-11-05 10:35:46'),
(124, 69, 425, 'SMS Module', 'Send SMS', 'SMS send successfully to 01698745632', 1, '2024-11-05 10:36:47', '2024-11-05 10:36:47'),
(125, 69, 425, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-05 10:37:12', '2024-11-05 10:37:12'),
(126, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(127, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877113 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(128, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01787877123 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(129, 69, NULL, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01667655555 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(130, 69, 406, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01769632541 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(131, 69, 404, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01762680927 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(132, 69, 403, 'SMS Module', 'Send Bulk SMS', 'SMS send successfully to 01645239865 => SMS Module  => Send Bulk SMS', 1, '2024-11-05 10:39:15', NULL),
(133, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to khadija@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(134, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to akterkhadija309@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(135, 69, NULL, 'Email Module', 'Send Bulk Email', 'Email send successfully to khadija+1@genusys.us => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(136, 69, 406, 'Email Module', 'Send Bulk Email', 'Email send successfully to Faisal@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(137, 69, 404, 'Email Module', 'Send Bulk Email', 'Email send successfully to shoshe@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(138, 69, 403, 'Email Module', 'Send Bulk Email', 'Email send successfully to rakib@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(139, 69, 425, 'Email Module', 'Send Bulk Email', 'Email send successfully to wer@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(140, 69, 411, 'Email Module', 'Send Bulk Email', 'Email send successfully to rony@gmail.com => Email Module  => Send Bulk Email', 1, '2024-11-05 10:43:03', NULL),
(141, 1, 420, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-05 10:55:11', '2024-11-05 10:55:11'),
(142, 1, 420, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-05 10:55:22', '2024-11-05 10:55:22'),
(143, 69, NULL, 'Products', 'Add Product', 'Social', 1, '2024-11-05 10:57:48', '2024-11-05 10:57:48'),
(144, 69, 411, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-05 12:09:48', '2024-11-05 12:09:48'),
(145, 69, 406, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-06 03:25:41', '2024-11-06 03:25:41'),
(146, 69, 406, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-06 03:26:15', '2024-11-06 03:26:15'),
(147, 1, 403, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-06 03:27:28', '2024-11-06 03:27:28'),
(148, 69, NULL, 'Products', 'Delete Product', 'Social', 1, '2024-11-06 03:59:20', '2024-11-06 03:59:20'),
(149, 69, NULL, 'Products', 'Add Product', 'Social', 1, '2024-11-06 03:59:50', '2024-11-06 03:59:50'),
(150, 69, NULL, 'Products', 'Update Product', 'Social', 1, '2024-11-06 04:00:13', '2024-11-06 04:00:13'),
(151, 1, 411, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-06 04:09:43', '2024-11-06 04:09:43'),
(152, 69, 297, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:15:43', '2024-11-06 04:15:43'),
(153, 1, 266, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:16:01', '2024-11-06 04:16:01'),
(154, 69, 420, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:16:15', '2024-11-06 04:16:15'),
(155, 69, 411, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:16:20', '2024-11-06 04:16:20'),
(156, 69, 404, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-06 04:18:09', '2024-11-06 04:18:09'),
(157, 69, 404, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:18:21', '2024-11-06 04:18:21'),
(158, 1, 407, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-06 04:20:00', '2024-11-06 04:20:00'),
(159, 1, 407, 'proposal', 'edit proposal', 'proposal edited', 1, '2024-11-06 04:20:13', '2024-11-06 04:20:13'),
(160, 1, 407, 'proposal', 'delete proposal', 'proposal deleted successfully', 1, '2024-11-06 04:20:19', '2024-11-06 04:20:19'),
(161, 1, 406, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-06 04:24:33', '2024-11-06 04:24:33'),
(162, 1, 403, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-06 04:26:53', '2024-11-06 04:26:53'),
(163, 69, 411, 'proposal', 'save proposal', 'proposal sent successfully', 1, '2024-11-06 04:38:59', '2024-11-06 04:38:59'),
(164, 69, 429, 'Email Module', 'Send an Email', 'Email send successfully to Sadman@Gmail.com', 1, '2024-11-06 05:01:57', '2024-11-06 05:01:57'),
(165, 69, 429, 'SMS Module', 'Send SMS', 'SMS send successfully to 01764652365', 1, '2024-11-06 05:02:14', '2024-11-06 05:02:14'),
(166, 69, 429, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-06 05:03:11', '2024-11-06 05:03:11'),
(167, 78, 430, 'Email Module', 'Send an Email', 'Email send successfully to sh@genusys.us', 1, '2024-11-06 05:17:22', '2024-11-06 05:17:22'),
(168, 78, 430, 'SMS Module', 'Send SMS', 'SMS send successfully to 01717761611', 1, '2024-11-06 05:19:09', '2024-11-06 05:19:09'),
(169, 78, 430, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-06 05:21:46', '2024-11-06 05:21:46'),
(170, 78, NULL, 'Meeting', 'updateFeedback', 'Meeting feedback updated successfully', 1, '2024-11-06 05:23:31', '2024-11-06 05:23:31'),
(171, 1, NULL, 'Tasks', 'Add Task', 'New task added, New task', 1, '2024-11-06 05:56:43', '2024-11-06 05:56:43'),
(172, 1, NULL, 'Tasks', 'Task Status Change', 'Status Change of task, New task', 1, '2024-11-06 06:01:38', '2024-11-06 06:01:38'),
(173, 1, NULL, 'Tasks', 'Task Delete', 'Delete task, New task', 1, '2024-11-06 06:01:50', '2024-11-06 06:01:50'),
(174, 1, NULL, 'SMS Module', 'Send SMS', 'SMS send successfully to 01233333333', 1, '2024-11-06 11:42:06', '2024-11-06 11:42:06'),
(175, 1, NULL, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-06 11:50:39', '2024-11-06 11:50:39'),
(176, 1, NULL, 'Meeting', 'Edit Meeting', 'Meeting edited successfully', 1, '2024-11-06 11:50:52', '2024-11-06 11:50:52'),
(177, 1, 403, 'Meeting', 'Create Meeting', 'Meeting created successfully', 1, '2024-11-07 04:29:19', '2024-11-07 04:29:19'),
(178, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to masud.haque@genusys.us', 1, '2024-11-07 05:09:58', '2024-11-07 05:09:58'),
(179, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rokib@gmail.com', 1, '2024-11-07 05:10:00', '2024-11-07 05:10:00'),
(180, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to k@gmail.com', 1, '2024-11-07 05:10:01', '2024-11-07 05:10:01'),
(181, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khadija@gmail.com', 1, '2024-11-07 05:10:02', '2024-11-07 05:10:02'),
(182, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to kasfi@gmail.com', 1, '2024-11-07 05:10:04', '2024-11-07 05:10:04'),
(183, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khadija@gmail.com', 1, '2024-11-07 05:10:05', '2024-11-07 05:10:05'),
(184, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rifa@gmail.com', 1, '2024-11-07 05:10:06', '2024-11-07 05:10:06'),
(185, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to asif@gmail.com', 1, '2024-11-07 05:10:07', '2024-11-07 05:10:07'),
(186, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to puja@gmail.com', 1, '2024-11-07 05:10:09', '2024-11-07 05:10:09'),
(187, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to prokrity@gmail.com', 1, '2024-11-07 05:10:10', '2024-11-07 05:10:10'),
(188, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rafi@gmail.com', 1, '2024-11-07 05:10:12', '2024-11-07 05:10:12'),
(189, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to kasfi@gmail.com', 1, '2024-11-07 05:10:13', '2024-11-07 05:10:13'),
(190, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khan@gmail.com', 1, '2024-11-07 05:10:14', '2024-11-07 05:10:14'),
(191, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rokib@gmail.com', 1, '2024-11-07 05:10:15', '2024-11-07 05:10:15'),
(192, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to jaman@gmail.com', 1, '2024-11-07 05:10:17', '2024-11-07 05:10:17'),
(193, 1, 403, 'SMS Module', 'Send SMS', 'SMS send successfully to 01645239865', 1, '2024-11-07 05:11:18', '2024-11-07 05:11:18'),
(194, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to xxx@gmail', 1, '2024-11-07 05:30:25', '2024-11-07 05:30:25'),
(195, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to dffdfsdf@dtttttt', 1, '2024-11-07 05:30:27', '2024-11-07 05:30:27'),
(196, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to sayma@gmail.com', 1, '2024-11-07 05:30:28', '2024-11-07 05:30:28'),
(197, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to shoshe@gmail.com', 1, '2024-11-07 05:30:30', '2024-11-07 05:30:30'),
(198, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to xyz@gmail.com', 1, '2024-11-07 05:30:31', '2024-11-07 05:30:31'),
(199, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to karim@gmail.com', 1, '2024-11-07 05:30:32', '2024-11-07 05:30:32'),
(200, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khadija@genusys.us', 1, '2024-11-07 05:30:34', '2024-11-07 05:30:34'),
(201, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to sami@yahoo.com', 1, '2024-11-07 05:30:35', '2024-11-07 05:30:35'),
(202, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khadija+1@genusys.us', 1, '2024-11-07 05:30:36', '2024-11-07 05:30:36'),
(203, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to khadija+1@genusys.us', 1, '2024-11-07 05:30:38', '2024-11-07 05:30:38'),
(204, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to kamrul@gmail.com', 1, '2024-11-07 05:30:39', '2024-11-07 05:30:39'),
(205, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 05:30:40', '2024-11-07 05:30:40'),
(206, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 05:30:42', '2024-11-07 05:30:42'),
(207, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 05:30:43', '2024-11-07 05:30:43'),
(208, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 05:30:44', '2024-11-07 05:30:44'),
(209, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rony@gmail.com', 1, '2024-11-07 05:31:59', '2024-11-07 05:31:59'),
(210, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rony@gmail.com', 1, '2024-11-07 05:32:00', '2024-11-07 05:32:00'),
(211, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to jaman@gmail.com', 1, '2024-11-07 05:32:02', '2024-11-07 05:32:02'),
(212, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to asif@gmail.com', 1, '2024-11-07 05:32:03', '2024-11-07 05:32:03'),
(213, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to rokibuzzaman@genusys.us', 1, '2024-11-07 05:32:05', '2024-11-07 05:32:05'),
(214, 1, 403, 'Email Module', 'Send an Email', 'Email sent successfully to rokibuzzaman@genusys.us', 1, '2024-11-07 05:32:06', '2024-11-07 05:32:06'),
(215, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 05:32:08', '2024-11-07 05:32:08'),
(216, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak.myplace@gmail.com', 1, '2024-11-07 05:32:09', '2024-11-07 05:32:09'),
(217, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak.ia@gmail.com', 1, '2024-11-07 05:32:10', '2024-11-07 05:32:10'),
(218, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 11:10:04', '2024-11-07 11:10:04'),
(219, 1, 404, 'SMS Module', 'Send SMS', 'SMS send successfully to 01762680927', 1, '2024-11-07 11:11:08', '2024-11-07 11:11:08'),
(220, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak@genusys.us', 1, '2024-11-07 11:14:04', '2024-11-07 11:14:04'),
(221, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak.myplace@gmail.com', 1, '2024-11-07 11:14:05', '2024-11-07 11:14:05'),
(222, 1, NULL, 'Email Module', 'Send an Email', 'Email sent successfully to ishtiak.ia@gmail.com', 1, '2024-11-07 11:14:07', '2024-11-07 11:14:07'),
(223, 1, 404, 'Email Module', 'Send an Email', 'Email sent successfully to khadija@genusys.us', 1, '2024-11-07 11:18:04', '2024-11-07 11:18:04'),
(224, 1, NULL, 'Products', 'Add Product MOBIL 1 0W-20 Fully Synthetic 4 Litre', 'MOBIL 1 0W-20 Fully Synthetic 4 Litre', 1, '2024-11-25 19:16:00', '2024-11-25 19:16:00'),
(225, 1, NULL, 'Products', 'Update Product', 'MOBIL 1 0W-20 Fully Synthetic 4 Litre', 1, '2024-11-25 19:41:20', '2024-11-25 19:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` int UNSIGNED DEFAULT NULL,
  `recipients` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `meeting_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meeting_date` datetime NOT NULL,
  `meeting_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_email` tinyint DEFAULT NULL,
  `send_sms` tinyint DEFAULT NULL,
  `status` tinyint NOT NULL,
  `meeting_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `lead_id`, `recipients`, `created_by`, `meeting_subject`, `meeting_description`, `meeting_date`, `meeting_link`, `attachments`, `duration`, `send_email`, `send_sms`, `status`, `meeting_feedback`, `rating`, `created_at`, `updated_at`) VALUES
(7, NULL, NULL, 1, 'software data testing and data verify', 'Non-flowering plants mostly fall into one of these groups: ferns, liverworts, mosses, hornworts, whisk ferns, club mosses, horsetails, conifers, cycads, and ginkgo. We can group those together based on how they grow.', '2023-09-20 13:30:00', 'http://192.168.10.66/ems/', '1727604885_sms.xlsx', '3H', 1, 1, 0, NULL, NULL, '2024-09-29 03:25:52', '2024-11-06 11:50:52'),
(8, 266, NULL, 45, 'discuss crm product module and implement it', 'setting department,roster type,form,to and select staff ->click same time for all day button', '2024-10-01 14:30:00', 'http://192.168.10.66/gplexCRM/meeting/create', '1727604058_1727601952_1725785100.Project Form (2)_1724838898.docx', '1.30H', 1, 1, 1, 'good', 4, '2024-09-29 03:47:38', '2024-09-29 04:03:16'),
(11, NULL, '2,27,42,61', 1, 'remove any information and admin approve it. In this situation do not remove employee information', 'remove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information\r\nremove any information and admin approve it. In this situation do not remove employee information.remove any information and admin approve it.when remove any information and admin approve it. In this situation do not remove employee information In this situation do not remove employee information information. In this situation do not remove employee information In this situation do not remove employee information information', '2024-10-01 01:47:00', 'http://192.168.10.66/ems', '1727678961_ASH1825037M_SDA_REPORT (1)-1.pdf', '1 h', 1, 1, 1, 'test', 5, '2024-09-30 00:49:21', '2024-09-30 05:08:10'),
(12, NULL, '42,45,47,50,55,57,61', 1, 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!', 'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!We combed our catalog and found courses that we think match your interests. Browse ouWe combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!r recommendations below, and start learning something new today!', '2024-10-01 00:43:00', 'http://192.168.10.66/gplexCRM/meeting/create', '1727757924_Screenshot (6).png', '1.30H', 1, 1, 1, 'should be include read more option in staff id and reason for pending request', 3, '2024-09-30 22:45:24', '2024-10-31 00:09:29'),
(14, NULL, '1,2,4,8,17,19,21,24,63', 45, 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column ndo not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"ot found: 1054 Unknown column \'module_name\' in \'field list\' \"do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', '2024-10-15 12:04:00', 'http://192.168.10.66/gplexCRM/meeting/create', '1727759128_mobxls.xls', '1 H', 1, 1, 1, 'gg', 2, '2024-09-30 23:05:28', '2024-10-01 00:51:42'),
(16, 311, NULL, 64, 'testing meeting data and form validation', 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', '2024-10-10 12:00:00', 'http://192.168.10.66/gplexCRM', '1727850959_ASH1825037M_SDA_REPORT (1)-1.pdf', '2H', 1, 1, 1, 'do not delete email templete and showing error \"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'module_name\' in \'field list\' \"', 1, '2024-10-02 00:35:59', '2024-10-02 00:36:56'),
(18, 383, NULL, 64, 'setting department,roster type,form,to and select staff', 'setting department,roster type,form,to and select staff ->click same time for all day button->setting office time , end time and weekend ->go to sheduler report->upload attandance->showing previous day office time in weekend day http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/ http://192.168.10.66/gplexCRM/', '2024-10-10 00:00:00', 'http://192.168.10.66/gplexCRM/', '1727955397_1726559461.ASH1825037M_SDA_REPORT (1) (1) (1) (1)_1727067106_1727170006.pdf', '1H 30 min', 1, 1, 1, NULL, NULL, '2024-10-03 05:34:09', '2024-10-03 05:36:37'),
(21, 382, NULL, 64, 'trtr', 'rtrt', '2024-10-22 09:00:00', 'http://192.168.10.66/gplexCRM/meeting/create', '1728186907_1727955437_1727605741_sms.xlsx', 'fgf', 1, 1, 1, 'jnj', 2, '2024-10-05 21:55:07', '2024-10-05 21:59:16'),
(22, 411, NULL, 69, 'crm project meeting', 'Most Trusted CRM Platform — Build everlasting customer relationships with the world’s favorite CRM software. Automate processes to eliminate task repetition and to streamline lead process. Try now.', '2024-11-05 00:30:00', 'http://192.168.11.123/gplexCRM', '1730798886_ASH1825037M_SDA_REPORT (1)-1_1730789615.pdf', '2H', 1, 0, 1, 'great', 2, '2024-11-05 09:28:06', '2024-11-05 09:38:16'),
(26, 404, NULL, 75, 'demo', 'sadsds', '2024-11-05 15:39:00', NULL, NULL, '2h', 0, 0, 1, NULL, NULL, '2024-11-05 09:40:02', '2024-11-05 09:40:02'),
(27, 411, NULL, 1, 'ticketing system  meeting', 'Functional testing is the verification of a system\'s compliance with functional requirements. \r\n\r\nTesting can be divided into two major groups: functional and non-functional testing. Functional testing includes checks of the functionality of an application, software, or system. Non-functional testing includes checks of security, performance, compatibility, and so on.', '2024-11-08 15:46:00', 'http://192.168.11.123/gplexCRM', '1730800374_ASH1825037M_SDA_REPORT (1)-1_1730789615.pdf', '1h', 1, 0, 1, NULL, NULL, '2024-11-05 09:47:24', '2024-11-05 09:52:54'),
(29, 429, NULL, 69, 'crm meeting', 'crm meeting', '2024-11-22 16:36:00', 'http://192.168.11.123/gplexCRM', NULL, '1H', 0, 0, 1, NULL, NULL, '2024-11-05 10:37:12', '2024-11-06 05:03:11'),
(30, 430, NULL, 78, 'Smart IVR', 'We need to meeting about our smart ivr project.', '2024-11-07 12:30:00', 'https://meet.google.com/vtc-tgbd-txz', NULL, '2 hours', 0, 0, 1, 'Meeting is successful.', 4, '2024-11-06 05:21:46', '2024-11-06 05:23:31'),
(31, 403, NULL, 1, 'Meeting With ishtiak vai', 'Meeting With ishtiak vai', '2024-11-07 14:28:00', 'https://mail.google.com/mail/u/0/#inbox', NULL, NULL, 1, 1, 1, NULL, NULL, '2024-11-07 04:29:19', '2024-11-07 04:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `sub_name`, `show_in_menu`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Agents', '', 1, 1, '2024-05-21 06:24:20', NULL),
(2, NULL, 'Leads Form', '', 1, 1, '2024-05-21 06:24:20', NULL),
(3, NULL, 'Lead Management', '', 1, 1, '2024-05-21 06:24:44', NULL),
(4, NULL, 'Campaign', 'campaign-index', 1, 1, '2024-05-21 06:24:44', '2024-07-02 01:15:12'),
(5, NULL, 'Email Module', '', 1, 1, '2024-05-21 06:25:33', NULL),
(6, NULL, 'SMS Module', '', 1, 1, '2024-05-21 06:25:33', NULL),
(7, 1, 'Agent List', 'agents-index', 1, 1, '2024-05-30 09:20:20', NULL),
(8, 1, 'Create Agent', 'agents-create', 1, 1, '2024-05-30 09:21:34', NULL),
(9, 2, 'Form List', 'leadsform-index', 1, 1, '2024-06-02 04:15:59', NULL),
(10, 2, 'Create Form', 'leadsform-create', 1, 1, '2024-06-02 04:17:55', NULL),
(11, 2, 'Create Dynamic Tables', 'dynamictable-create', 1, 1, '2024-06-02 04:18:13', NULL),
(12, 2, 'Dynamic Tables List', 'dynamictable-index', 1, 1, '2024-06-02 04:18:17', NULL),
(13, 3, 'Leads', 'lead-index', 1, 1, '2024-06-02 04:19:20', NULL),
(14, 3, 'Create a Lead', 'lead-create', 1, 1, '2024-06-02 04:19:59', NULL),
(15, 4, 'Campaign List', 'campaign-index', 1, 0, '2024-06-02 04:22:56', '2024-07-02 01:14:49'),
(16, 4, 'Create a Campaign', 'campaign-create', 1, 0, '2024-06-02 04:23:07', '2024-07-02 01:15:06'),
(17, 4, 'Promotion List', 'promotion-index', 1, 1, '2024-06-02 04:23:26', NULL),
(18, 4, 'Create Promotion', 'promotion-create', 1, 1, '2024-06-02 04:23:27', NULL),
(19, 5, 'Send an Email', 'send-email', 1, 1, '2024-06-02 04:34:05', NULL),
(20, 5, 'Emails', 'send-email-list', 1, 0, '2024-06-02 04:40:06', '2024-09-25 22:27:02'),
(21, 5, 'Email Templates', 'email-template', 1, 1, '2024-06-02 04:41:38', NULL),
(22, 5, 'Create Template', 'email-template-create', 1, 1, '2024-06-02 04:41:59', '2024-06-06 04:39:55'),
(23, 6, 'SMS List', 'send-sms-list', 1, 0, '2024-06-02 04:42:59', '2024-09-18 23:27:32'),
(24, 6, 'Send SMS', 'send-sms', 1, 0, '2024-06-02 04:43:26', '2024-09-25 21:36:35'),
(25, 6, 'SMS Templates', 'sms-template', 1, 0, '2024-06-02 04:44:29', '2024-09-18 23:23:41'),
(26, 6, 'Create Template', 'sms-template-create', 1, 0, '2024-06-02 04:44:51', '2024-09-25 04:16:33'),
(28, 6, 'Send Bulk SMS', 'send-bulk-sms', 1, 1, '2024-06-06 04:22:37', '2024-06-19 22:57:56'),
(47, 46, 'Task List', 'task-list', 1, 1, '2024-07-01 00:00:45', '2024-07-01 00:00:45'),
(46, NULL, 'Tasks', 'tasks', 1, 1, '2024-06-30 23:59:49', '2024-06-30 23:59:49'),
(35, 5, 'Bulk Upload', 'send-bulk-email', 1, 1, '2024-06-24 05:00:54', '2024-06-24 05:00:54'),
(36, 3, 'Upload Lead', 'leads-upload', 0, 1, '2024-06-26 00:21:28', '2024-11-05 09:55:30'),
(174, 6, 'Create SMS Template', 'sms-template-create', 0, 1, '2024-09-18 23:25:20', '2024-09-25 04:18:28'),
(48, 46, 'Add Task', 'add-task', 1, 1, '2024-07-01 00:01:10', '2024-07-01 00:01:10'),
(49, NULL, 'Products', 'products', 1, 1, '2024-07-08 00:11:35', '2024-07-08 00:11:35'),
(50, 49, 'Product List', 'product-list', 1, 1, '2024-07-08 00:12:04', '2024-07-08 00:12:04'),
(51, 49, 'Add Product', 'add-product', 1, 1, '2024-07-08 00:12:24', '2024-07-08 00:12:24'),
(119, NULL, 'User Management', NULL, 1, 1, '2024-09-17 23:31:53', '2024-09-17 23:31:53'),
(57, 1, 'Agents Edit', 'agents-edit', 0, 1, '2024-09-17 05:45:08', '2024-09-17 05:46:28'),
(56, 1, 'Agents Show', 'agents-show', 0, 1, '2024-09-17 05:43:33', '2024-09-17 05:43:33'),
(60, 1, 'Agents Destroy', 'agents-destroy', 0, 1, '2024-09-17 05:51:06', '2024-09-17 05:51:06'),
(62, 2, 'Leads Form Show', 'leadsform-show', 0, 1, '2024-09-17 21:50:23', '2024-09-23 23:06:48'),
(63, 2, 'Leads Form Edit', 'leadsform-edit', 0, 1, '2024-09-17 21:51:02', '2024-09-17 21:52:27'),
(65, 2, 'Leads Form Destroy', 'leadsform-destroy', 0, 1, '2024-09-17 21:53:48', '2024-09-17 21:53:48'),
(67, 2, 'Dynamic Table Edit', 'dynamictable-edit', 0, 1, '2024-09-17 21:57:24', '2024-09-17 21:57:24'),
(70, 2, 'Dynamic Table Show', 'dynamictable-show', 0, 1, '2024-09-17 22:02:02', '2024-09-17 22:02:02'),
(71, 2, 'Dynamic Table Destroy', 'dynamictable-destroy', 0, 1, '2024-09-17 22:02:45', '2024-09-17 22:02:45'),
(76, 3, 'Lead Show', 'lead-show', 0, 1, '2024-09-17 22:16:07', '2024-09-17 22:16:07'),
(77, 3, 'Lead Edit', 'lead-edit', 0, 1, '2024-09-17 22:19:10', '2024-09-17 22:19:10'),
(80, 3, 'Lead Destroy', 'lead-destroy', 0, 1, '2024-09-17 22:21:45', '2024-09-17 22:21:45'),
(82, 3, 'Leads Add', 'leads-add', 0, 1, '2024-09-17 22:24:35', '2024-09-17 22:24:35'),
(84, 3, 'Delete Table Data', 'delete-tabledata', 0, 1, '2024-09-17 22:26:40', '2024-09-17 22:26:40'),
(85, 3, 'Lead Edit Table Data', 'lead-edit-tabledata', 0, 1, '2024-09-17 22:27:31', '2024-09-17 22:27:31'),
(91, 4, 'Campaign Lead Upload File', 'campaign-lead-upload-file', 0, 1, '2024-09-17 23:00:20', '2024-09-17 23:00:20'),
(93, 4, 'Campaign Show', 'campaign-show', 0, 1, '2024-09-17 23:01:20', '2024-09-17 23:01:20'),
(94, 4, 'Campaign Edit', 'campaign-edit', 0, 1, '2024-09-17 23:01:45', '2024-09-17 23:01:45'),
(96, 4, 'Campaign Destroy', 'campaign-destroy', 0, 1, '2024-09-17 23:02:53', '2024-09-17 23:02:53'),
(100, 4, 'Campaign Lead Upload', 'campaign-lead-upload', 0, 1, '2024-09-17 23:06:20', '2024-09-17 23:06:20'),
(101, 4, 'Campaign Data', 'campaign-data', 0, 1, '2024-09-17 23:06:49', '2024-09-17 23:06:49'),
(191, 188, 'Logs Data', 'log-list', 1, 1, '2024-10-30 23:14:55', '2024-10-30 23:54:24'),
(104, 179, 'Meeting List', 'meeting-index', 1, 1, '2024-09-17 23:15:01', '2024-09-26 05:06:58'),
(105, 179, 'Create Meeting', 'meeting-create', 1, 1, '2024-09-17 23:15:38', '2024-09-26 05:07:20'),
(107, 179, 'Meeting Show', 'meeting-show', 0, 1, '2024-09-17 23:16:33', '2024-09-26 05:14:58'),
(108, 179, 'Meeting Edit', 'meeting-edit', 0, 1, '2024-09-17 23:16:58', '2024-09-26 05:15:37'),
(110, 179, 'Meeting Destroy', 'meeting-destroy', 0, 1, '2024-09-17 23:18:45', '2024-09-26 05:16:00'),
(113, 4, 'Promotion Show', 'promotion-show', 0, 1, '2024-09-17 23:20:25', '2024-09-17 23:20:25'),
(114, 4, 'Promotion Edit', 'promotion-edit', 0, 1, '2024-09-17 23:21:15', '2024-09-17 23:21:15'),
(120, 119, 'User List', 'users.index', 1, 1, '2024-09-17 23:33:14', '2024-09-17 23:33:14'),
(121, 119, 'User Show', 'user.show', 0, 1, '2024-09-17 23:34:32', '2024-09-17 23:35:38'),
(122, 119, 'Create User', 'create-user', 1, 1, '2024-09-17 23:36:09', '2024-09-17 23:36:09'),
(189, 188, 'Customer List', 'customers', 1, 1, '2024-10-30 02:38:20', '2024-10-30 02:39:52'),
(124, 119, 'User Edit', 'user.edit', 0, 1, '2024-09-17 23:37:05', '2024-09-17 23:37:05'),
(126, 119, 'User Destroy', 'user.destroy', 0, 1, '2024-09-17 23:38:21', '2024-09-17 23:38:21'),
(187, 185, 'Create Invoice', 'invoice-create', 1, 1, '2024-10-24 00:34:37', '2024-10-24 00:34:37'),
(128, 119, 'Profile Edit', 'profile-edit', 1, 1, '2024-09-17 23:39:55', '2024-09-17 23:39:55'),
(129, 119, 'User Details', 'show', 0, 1, '2024-09-17 23:40:58', '2024-09-17 23:40:58'),
(130, 119, 'Profile Update', 'profile-update', 0, 1, '2024-09-17 23:41:42', '2024-09-17 23:41:42'),
(188, NULL, 'Customers', NULL, 1, 1, '2024-10-30 02:37:59', '2024-10-30 02:37:59'),
(132, 119, 'Update Profile Image', 'update-profile-image', 0, 1, '2024-09-17 23:42:47', '2024-09-17 23:42:47'),
(133, 119, 'Permissions', 'permission.index', 1, 1, '2024-09-17 23:47:41', '2024-09-17 23:48:28'),
(134, 119, 'Permission Show', 'permission.show', 0, 1, '2024-09-17 23:49:11', '2024-09-17 23:49:11'),
(135, 119, 'Create Permission', 'create-permission', 1, 1, '2024-09-17 23:49:43', '2024-09-17 23:49:43'),
(186, 185, 'Invoice List', 'invoice-index', 1, 1, '2024-10-24 00:32:13', '2024-10-24 00:32:13'),
(137, 119, 'Permission Edit', 'permission.edit', 0, 1, '2024-09-17 23:51:38', '2024-09-17 23:51:38'),
(184, 182, 'Add Proposal', 'add-proposal', 1, 1, '2024-10-23 03:37:36', '2024-10-23 03:37:36'),
(139, 119, 'Permission Show', 'permission_show', 0, 1, '2024-09-17 23:52:43', '2024-09-17 23:52:43'),
(140, 119, 'Permission Destroy', 'permission.destroy', 0, 1, '2024-09-17 23:53:31', '2024-09-17 23:53:31'),
(185, NULL, 'Invoice', NULL, 1, 1, '2024-10-24 00:26:34', '2024-10-24 00:26:34'),
(142, 119, 'Roles', 'role-list', 1, 1, '2024-09-17 23:54:50', '2024-09-17 23:54:50'),
(143, 119, 'Role Show', 'role.show', 0, 1, '2024-09-17 23:55:15', '2024-09-17 23:55:15'),
(144, 119, 'Create Role', 'role-create', 1, 1, '2024-09-17 23:56:51', '2024-09-17 23:56:51'),
(183, 182, 'Proposal List', 'proposal-list', 1, 1, '2024-10-23 03:37:08', '2024-10-23 03:37:08'),
(146, 119, 'Role Edit', 'role-edit', 0, 1, '2024-09-17 23:58:11', '2024-09-17 23:58:11'),
(182, NULL, 'Proposal', NULL, 1, 1, '2024-10-23 03:36:27', '2024-10-23 03:36:27'),
(148, 119, 'Role Destroy', 'role-destroy', 0, 1, '2024-09-17 23:59:07', '2024-09-17 23:59:07'),
(151, 5, 'Email Template Edit', 'email-template-edit', 0, 1, '2024-09-18 00:08:55', '2024-09-18 00:08:55'),
(152, 5, 'Email Template Show', 'email-template-show', 0, 1, '2024-09-18 00:09:27', '2024-09-18 00:09:27'),
(154, 5, 'Email Template Delete', 'email-template-delete', 0, 1, '2024-09-18 00:10:30', '2024-09-18 00:10:30'),
(159, 6, 'Sms Template Edit', 'sms-template-edit', 0, 1, '2024-09-18 00:22:54', '2024-09-18 00:22:54'),
(160, 6, 'Sms Template Show', 'sms-template-show', 0, 1, '2024-09-18 00:24:50', '2024-09-18 00:24:50'),
(163, 6, 'Sms Template Delete', 'sms-template-delete', 0, 1, '2024-09-18 00:26:41', '2024-09-18 00:26:41'),
(168, 46, 'Task Delete', 'delete-task', 0, 1, '2024-09-18 00:36:21', '2024-09-18 00:36:21'),
(178, 4, 'Promotion Destroy', 'promotion-destroy', 0, 1, '2024-09-24 22:42:37', '2024-09-24 22:42:37'),
(170, 49, 'Product Delete', 'product-delete', 0, 1, '2024-09-18 00:38:50', '2024-09-18 00:38:50'),
(171, 49, 'Product Show', 'product-show', 0, 1, '2024-09-18 00:39:21', '2024-09-18 00:39:21'),
(172, 49, 'Product Edit', 'product-edit', 0, 1, '2024-09-18 00:39:55', '2024-09-23 21:57:57'),
(179, NULL, 'Meeting', NULL, 1, 1, '2024-09-26 05:02:51', '2024-09-26 05:02:51'),
(195, 5, 'Send Email Show', 'send-email-show', 0, 1, '2024-11-05 08:49:42', '2024-11-05 09:02:22'),
(196, 6, 'Send SMS show', 'send-sms-show', 0, 1, '2024-11-05 09:12:59', '2024-11-05 09:12:59'),
(197, 182, 'Delete Proposal', 'delete-proposal', 0, 1, '2024-11-05 11:39:36', '2024-11-05 11:39:36'),
(198, 182, 'Proposal Edit', 'proposal-edit', 0, 1, '2024-11-05 11:45:47', '2024-11-05 11:45:47'),
(200, 182, 'Proposal Show', 'proposal-show', 0, 1, '2024-11-05 11:49:20', '2024-11-05 11:49:20'),
(201, 188, 'Add Customer', 'add-customer', 0, 1, '2024-11-05 11:59:29', '2024-11-05 11:59:29'),
(202, 185, 'Invoice Show', 'invoice-show', 0, 1, '2024-11-05 12:15:36', '2024-11-05 12:15:36'),
(203, 185, 'invoice edit', 'invoice-edit', 0, 1, '2024-11-05 12:16:34', '2024-11-05 12:16:34'),
(204, 49, 'Add Product Specification', 'product-specification-create', 1, 1, '2024-11-12 08:05:56', '2024-11-12 08:05:56'),
(205, 49, 'Product Specification List', 'product-specification-index', 1, 1, '2024-11-12 08:07:06', '2024-11-12 08:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_19_033501_create_sessions_table', 1),
(6, '2023_11_19_051107_create_products_table', 1),
(7, '2023_12_21_061156_create_salesman_table;', 1),
(8, '2024_01_03_072535_create_country_table', 1),
(9, '2024_01_03_072636_create_state_table', 1),
(10, '2024_01_03_085517_create_branches_table', 1),
(11, '2024_01_03_085813_create_city_table', 1),
(12, '2024_01_23_105143_create_sms_templates_table', 1),
(13, '2024_01_23_122842_create_email_templates_table', 1),
(14, '2024_01_29_100457_create_table_sms_queue_table', 1),
(15, '2024_01_29_100510_create_table_sms_log_table', 1),
(16, '2024_02_01_035044_add_additional_fields_to_users_table', 1),
(17, '2024_02_07_074144_create_email_queue_table', 2),
(18, '2024_02_07_074625_create_email_log_table', 3),
(19, '2024_04_24_090556_create_leads_table', 4),
(22, '2024_04_25_110936_create_promotions_table', 5),
(23, '2024_04_25_111147_create_campaigns_table', 6),
(24, '2024_04_28_095043_create_leads_forms_table', 7),
(25, '2024_04_28_103607_create_lead_form_details_table', 8),
(26, '2024_04_28_121706_create_leads_table', 9),
(27, '2024_04_28_124539_create_leads_custom_data_table', 10),
(28, '2024_04_28_125650_create_leads_form_json_table', 11),
(29, '2024_04_29_034649_create_lead_survey_people_table', 12),
(30, '2024_04_29_035234_create_lead_survey_child_table', 13),
(31, '2024_04_30_044646_create_users_table', 14),
(32, '2024_04_30_050803_create_leads_form_table', 15),
(33, '2024_04_30_053636_create_lead_form_details_table', 16),
(34, '2024_04_30_074713_create_permission_groups_table', 17),
(35, '2024_04_30_073603_create_permissions_table', 18),
(36, '2024_04_30_092116_create_roles_table', 19),
(37, '2024_04_30_101349_create_roles_table', 20),
(38, '2024_04_30_101511_create_permissions_table', 21),
(39, '2024_04_30_102006_create_roles_permissions_table', 22),
(40, '2024_05_13_092102_create_agents_table', 23),
(41, '2024_05_13_095540_create_agents_table', 24),
(42, '2024_05_13_130323_create_agents_table', 25),
(43, '2024_05_13_131409_create_agents_table', 26),
(44, '2024_05_15_092501_create_users_table', 27),
(45, '2024_05_15_095923_create_agents_table', 28),
(46, '2024_05_16_085211_create_users_table', 29),
(47, '2024_05_16_085710_create_agents_table', 30),
(48, '2024_05_20_041755_create_users_table', 31),
(49, '2024_05_20_042013_create_agents_table', 32),
(50, '2024_05_28_034337_create_lead_form_details_table', 33),
(51, '2024_05_28_034612_create_lead_form_details_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `note_section`
--

DROP TABLE IF EXISTS `note_section`;
CREATE TABLE IF NOT EXISTS `note_section` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` enum('GOOD','BAD','GREAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note_section`
--

INSERT INTO `note_section` (`id`, `lead_id`, `form_id`, `created_by`, `notes`, `rating`, `created_at`, `updated_at`) VALUES
(32, 406, '6820060189', 'shimla1236', '', 'GREAT', '2024-11-05 07:25:21', '2024-11-05 07:25:21'),
(33, 406, '6820060189', 'shimla1236', 'A bank is a financial institution that accepts deposits from the public', 'GOOD', '2024-11-05 07:29:07', '2024-11-05 07:32:15'),
(34, 407, '6820060189', 'root', 'lead created', 'BAD', NULL, '2024-11-05 10:22:15'),
(35, 420, '6820060189', NULL, 'need lead email account', 'BAD', NULL, NULL),
(36, 425, '6820060189', NULL, 'drfgd', 'BAD', NULL, NULL),
(37, 429, '6820060189', 'moni123', '', 'GOOD', '2024-11-06 03:36:42', '2024-11-06 03:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_address_id` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `final_price` decimal(10,2) DEFAULT NULL,
  `coupon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pay_amount` decimal(10,2) DEFAULT NULL,
  `delivery_status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cancel_reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `possible_delivery_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `delivery_status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_section`
--

DROP TABLE IF EXISTS `pay_section`;
CREATE TABLE IF NOT EXISTS `pay_section` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_amount` int DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `pdf_invoice_upload` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_section`
--

INSERT INTO `pay_section` (`id`, `lead_id`, `form_id`, `created_by`, `invoice_amount`, `invoice_date`, `pdf_invoice_upload`, `created_at`, `updated_at`) VALUES
(39, 406, '6820060189', 'shimla1236', 1200000000, NULL, '', '2024-11-05 07:25:21', '2024-11-05 07:25:21'),
(40, 406, '6820060189', 'shimla1236', 3, '2024-11-28', 'campaign_sample_file(3)_1730014876_1730791550.csv', '2024-11-05 07:25:50', '2024-11-05 07:25:50'),
(41, 407, '6820060189', NULL, 12000, '2024-12-02', '', NULL, NULL),
(49, 420, '6820060189', NULL, 1230000, '2024-12-01', '', NULL, NULL),
(54, 425, '6820060189', 'root', 444444, '2024-12-12', '', NULL, '2024-11-05 11:21:14'),
(55, 426, '6820060189', 'root', 2000, '2024-11-05', NULL, '2024-11-05 11:19:06', '2024-11-05 11:19:06'),
(56, 429, '6820060189', 'moni123', 1300000, '2024-11-13', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730864202.jpg', '2024-11-06 03:36:42', '2024-11-06 03:36:42'),
(57, 429, '6820060189', 'moni123', 300000, NULL, NULL, '2024-11-11 06:21:40', '2024-11-11 06:21:40'),
(58, 429, '6820060189', 'moni123', 40000, '2024-11-12', NULL, '2024-11-11 06:22:50', '2024-11-11 06:25:53'),
(59, 429, '6820060189', 'moni123', 1200, '2024-11-07', 'TestCase_OrangeHRM_Leave_Apply_Feature_1731388437.xlsx', '2024-11-12 05:13:36', '2024-11-12 05:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `permission_group_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_permission_group_id_foreign` (`permission_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'gpleCRMToken', '0970f2e9be65303bee4b46dd2c7cf229d55ec3a94520768872b4fab7196431a9', '[\"*\"]', NULL, NULL, '2024-04-30 03:39:52', '2024-04-30 03:39:52'),
(2, 'App\\Models\\User', 1, 'gpleCRMToken', '3d2c3352dd17459faac06bf4f2a2f7352dca86f488321ddaa0a3e5627e64f44a', '[\"*\"]', NULL, NULL, '2024-05-04 23:55:07', '2024-05-04 23:55:07'),
(3, 'App\\Models\\User', 1, 'gpleCRMToken', 'a0c7fbeb9117eb8a2cd220b47e0381b035218a70fb95615f1a17c88d0891510f', '[\"*\"]', '2024-05-05 00:32:16', NULL, '2024-05-04 23:56:06', '2024-05-05 00:32:16'),
(4, 'App\\Models\\User', 1, 'gpleCRMToken', '2858a3a1658d14c48d2b22e9737ece0c79a33dbd83fbdb008950f3c88f4ae3fe', '[\"*\"]', '2024-05-05 00:31:57', NULL, '2024-05-05 00:30:34', '2024-05-05 00:31:57'),
(5, 'App\\Models\\User', 1, 'gpleCRMToken', '6834f92012607dce3757beb3b051fa7ca816ed66697533035e16374b9c9b8a2b', '[\"*\"]', '2024-05-07 06:48:27', NULL, '2024-05-05 01:25:59', '2024-05-07 06:48:27'),
(6, 'App\\Models\\User', 1, 'gpleCRMToken', 'c7e87624bf37316db967aa11e69d29ce25986a898828d8faa7eba29d5a7098ea', '[\"*\"]', '2024-05-07 06:47:52', NULL, '2024-05-05 02:58:12', '2024-05-07 06:47:52'),
(7, 'App\\Models\\User', 1, 'gpleCRMToken', '068b7d9dcfdb1998324d54275c37856078ae44277a5afa73167c97166523d052', '[\"*\"]', '2024-05-05 03:53:54', NULL, '2024-05-05 03:38:15', '2024-05-05 03:53:54'),
(8, 'App\\Models\\User', 1, 'gpleCRMToken', '474a0f9194148a5ea7b78e5bca25ba2b66371ebdb41ce38c1dc2fe813e164d90', '[\"*\"]', NULL, NULL, '2024-05-05 03:40:34', '2024-05-05 03:40:34'),
(9, 'App\\Models\\User', 1, 'gpleCRMToken', 'e8de52ea86403848356bf96d04232ede81bbbe05b0498cf95bf27b2261836c99', '[\"*\"]', '2024-05-07 06:48:24', NULL, '2024-05-05 03:40:58', '2024-05-07 06:48:24'),
(10, 'App\\Models\\User', 4, 'gpleCRMToken', '70a6abf5b1b961e39cb3bd6f78bbb5b45d4cd876ab50987da5839dd174293e7d', '[\"*\"]', NULL, NULL, '2024-05-13 06:20:17', '2024-05-13 06:20:17'),
(11, 'App\\Models\\User', 2, 'gpleCRMToken', '860eca8582c2c8f2713aca3eed8704c90572d2ca9106d105921c062dee8a89d3', '[\"*\"]', NULL, NULL, '2024-05-15 04:44:35', '2024-05-15 04:44:35'),
(12, 'App\\Models\\User', 1, 'gpleCRMToken', 'e7afa19f6d684a2fee3b5d82d52b7263ab841717e950174af3798747a4c73253', '[\"*\"]', NULL, NULL, '2024-05-16 03:17:59', '2024-05-16 03:17:59'),
(13, 'App\\Models\\User', 1, 'gpleCRMToken', 'c64612dccc667876dcf0137036d1e5ca032f82ac9369207de24b21ff022c258d', '[\"*\"]', NULL, NULL, '2024-05-19 22:24:44', '2024-05-19 22:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_specification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `how_to_order` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `return_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `key_features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `club_point` int DEFAULT '0',
  `product_type` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_cost` double(20,2) DEFAULT NULL,
  `product_value` double(20,2) DEFAULT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `product_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path_6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_purchase_limit` tinyint DEFAULT NULL,
  `stock_status` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'In Stock',
  `stock_quantity` int NOT NULL DEFAULT '1',
  `xxs_stock` int NOT NULL DEFAULT '0',
  `xs_stock` int NOT NULL DEFAULT '0',
  `s_stock` int NOT NULL DEFAULT '0',
  `m_stock` int NOT NULL DEFAULT '0',
  `l_stock` int NOT NULL DEFAULT '0',
  `xl_stock` int NOT NULL DEFAULT '0',
  `xxl_stock` int NOT NULL DEFAULT '0',
  `xxxl_stock` int NOT NULL DEFAULT '0',
  `xxxxl_stock` int NOT NULL DEFAULT '0',
  `total_sell` int NOT NULL DEFAULT '0',
  `colors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `description`, `product_specification`, `how_to_order`, `return_policy`, `key_features`, `club_point`, `product_type`, `product_cost`, `product_value`, `discount_price`, `product_code`, `img_path`, `img_path_2`, `img_path_3`, `img_path_4`, `img_path_5`, `img_path_6`, `max_purchase_limit`, `stock_status`, `stock_quantity`, `xxs_stock`, `xs_stock`, `s_stock`, `m_stock`, `l_stock`, `xl_stock`, `xxl_stock`, `xxxl_stock`, `xxxxl_stock`, `total_sell`, `colors`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(20, 1, 2, 'Tyre four', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 2147483647, 'Service', 120000.00, 1200.00, NULL, '0001234', 'MAP31-03d21e46-9f5d-4e30-a3f7-a41e02ec696a-_1_2b65e8ec-acbe-417b-afc6-34fe9563f139_1732977466.webp', NULL, NULL, NULL, NULL, NULL, 10, 'In Stock', 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-10-27 10:19:24', '2024-11-30 08:37:46'),
(21, 2, 2, 'Tyre three', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 0, 'Physical', 50.00, 150.00, 1500.00, '000123456', 'cinturato-p1-verde-3-4-1505470090255_13005552-be62-4f0a-8dcd-ef347186fb95_1732977344.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'In Stock', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-10-27 10:21:29', '2024-11-30 08:35:44'),
(22, 2, 2, 'Tyre two', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 0, 'Physical', 200.00, 300.00, 2000.00, '001234567890', 'bluearth-es-es32_f7a53050-f195-494a-9917-05ad044d7355_1732978368.webp', NULL, NULL, NULL, NULL, NULL, 50, 'In Stock', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-10-27 10:26:02', '2024-11-30 08:52:48'),
(23, 2, 2, 'Tyre one', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 1800, 'Physical', 100.00, 250.00, 3000.00, '1234509867', 'bluearth-es-es32_656e4e68-955e-4553-a103-e263aa6772da_1732977261.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'In Stock', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-10-27 13:02:23', '2024-11-30 08:34:21'),
(24, 3, 1, 'Lubricant Four', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', NULL, NULL, NULL, NULL, 0, 'Physical', 12345678910.00, 12345678.00, 3000.00, '0021111', 'prdt-2-008ae571-5546-4e61-8416-b66d49686718-_1_fa5b6442-891d-4af1-a22b-865958ba3c2d_1732976770.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'In Stock', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-10-28 16:34:50', '2024-11-30 08:26:10'),
(26, 3, 1, 'Lubricant one', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, NULL, NULL, NULL, 'Physical', 1200.00, 15000.00, NULL, '0023', '0W-20Front_1732976577.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'In Stock', 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 69, 1, '2024-11-05 15:59:50', '2024-11-30 08:22:57'),
(27, 3, 2, 'Lubricant Three', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><i><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1 5W-30 is an advanced full synthetic engine oil designed to keep your engine running like new by providing exceptional wear protection, cleaning power and overall performance. Mobil 1 5W-30 meets or exceeds the requirements of the industry’s toughest standards and outperforms our conventional oils. Mobil 1 technology comes as standard equipment in many different vehicles, including select high-performance vehicles.r r Country Of Import: SINGAPORE &amp; USAr r Country Of Origin: USA &amp; SINGAPOREr r Unit Size: 4Lr r SAE: 5W-30r r Oil Type: SYNTHETICr r API: SPr r ACEA: DEXOS Gen2r r Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;\">Mobil 1 5W-30 is an advanced full synthetic engine oil designed to keep your engine running like new by providing exceptional wear protection, cleaning power and overall performance. Mobil 1 5W-30 meets or exceeds the requirements of the industry’s toughest standards and outperforms our conventional oils. Mobil 1 technology comes as standard equipment in many different vehicles, including select high-performance vehicles.</span></i></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>Country Of Import: SINGAPORE &amp; USA</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>Country Of Origin: USA &amp; SINGAPORE</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>Unit Size: 4L</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>SAE: 5W-30</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>Oil Type: SYNTHETIC</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>API: SP</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>ACEA: DEXOS Gen2</b></u></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><u><b>Appropriate Use: For Car</b></u></p>', '<i><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1 5W-30 is an advanced full synthetic engine oil designed to keep your engine running like new by providing exceptional wear protection, cleaning power and overall performance. Mobil 1 5W-30 meets or exceeds the requirements of the industry’s toughest standards and outperforms our conventional oils. Mobil 1 technology comes as standard equipment in many different vehicles, including select high-performance vehicles.r r Country Of Import: SINGAPORE &amp; USAr r Country Of Origin: USA &amp; SINGAPOREr r Unit Size: 4Lr r SAE: 5W-30r r Oil Type: SYNTHETICr r API: SPr r ACEA: DEXOS Gen2r r Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;\">Mobil\r\n 1 5W-30 is an advanced full synthetic engine oil designed to keep your \r\nengine running like new by providing exceptional wear protection, \r\ncleaning power and overall performance. Mobil 1 5W-30 meets or exceeds \r\nthe requirements of the industry’s toughest standards and outperforms \r\nour conventional oils. Mobil 1 technology comes as standard equipment in\r\n many different vehicles, including select high-performance vehicles.</span></i>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 5000, 'Digital', 2452354.00, 234324.00, 3000.00, '4325', 'Mobil1-0w-20.png_1732976713.webp', NULL, NULL, NULL, NULL, NULL, 32, 'Out of Stock', 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-11-23 22:56:50', '2024-11-30 08:25:13'),
(28, 1, 1, 'Joyroom JR-PBF04 20000mAh 65W Fast Charging Power Bank', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div>', '<p>&nbsp;erger<br></p>', NULL, NULL, '<h2 style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-weight: normal; font-size: 18px; line-height: 26px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Key Features</h2><ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;\">Model: JR-PBF04</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;\">Battery Capacity: 20000mAh, 3.7V (74Wh)</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;\">Battery Type: Polymer Lithium Battery</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;\">Output Ports: 1x USB-A, 2x Type-C</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;\">1.2M 100W Type-C to Type-C Cable Included</li></ul><p></p>', 100, 'Digital', 324.00, 32432432.00, 32424.00, '43242', '91qWziQ9J-L._AC_UF1000_1000_QL80_DpWeblab_1732976652.webp', NULL, NULL, NULL, NULL, NULL, 12, 'In Stock', 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, 1, '2024-11-25 00:44:24', '2024-11-30 08:24:12');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `description`, `product_specification`, `how_to_order`, `return_policy`, `key_features`, `club_point`, `product_type`, `product_cost`, `product_value`, `discount_price`, `product_code`, `img_path`, `img_path_2`, `img_path_3`, `img_path_4`, `img_path_5`, `img_path_6`, `max_purchase_limit`, `stock_status`, `stock_quantity`, `xxs_stock`, `xs_stock`, `s_stock`, `m_stock`, `l_stock`, `xl_stock`, `xxl_stock`, `xxxl_stock`, `xxxxl_stock`, `total_sell`, `colors`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(29, 1, 2, 'Break Shoe', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 9000, 'Physical', 4500.00, 5000.00, NULL, '534534w5', '62252651_2761929307182190_4775183599341142016_n_1732977442.webp', NULL, NULL, NULL, NULL, NULL, 1, 'In Stock', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, NULL, '2024-11-30 08:37:22', '2024-11-30 08:37:22'),
(30, 1, 2, 'Break Shoe two', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n       <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 500, 'Physical', 6000.00, 7000.00, NULL, '23432', '58281767_2413160688708610_3553364363970609152_n_1732977518.webp', NULL, NULL, NULL, NULL, NULL, 2, 'In Stock', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, NULL, '2024-11-30 08:38:38', '2024-11-30 08:38:38'),
(31, 1, 2, 'Battery One', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 900, 'Physical', 5000.00, 6000.00, 890.00, '343233', '1_a2ab0679-e718-4ae4-8ff1-7866643dac8f_1732977586.webp', NULL, NULL, NULL, NULL, NULL, 5, 'In Stock', 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, NULL, '2024-11-30 08:39:46', '2024-11-30 08:39:46'),
(32, 1, 1, 'Battery two', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', NULL, NULL, '<div class=\"elementor-element elementor-element-7955ff3 wd-single-content elementor-widget elementor-widget-wd_single_product_content\" data-id=\"7955ff3\" data-element_type=\"widget\" data-widget_type=\"wd_single_product_content.default\">\r\n        <div class=\"elementor-widget-container\">\r\n      <p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Mobil 1™ 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power, wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions. Country Of Import: SINGAPORE &amp; USA Country Of Origin: USA &amp; SINGAPORE Unit Size: 4L SAE: 0W-40 Oil Type: SYNTHETIC API: SL, SJ, SM &amp; SN ACEA: A3/B4 &amp; A3/B3 Appropriate Use: For Car&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:4993,&quot;3&quot;:{&quot;1&quot;:0},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Open Sans&quot;}\">Mobil\r\n 1™ 0W-20 European Car Formula (North America) or Protection Formula \r\n(rest of the World) Advanced Full Synthetic Motor Oil is engineered for \r\nthe latest gasoline and diesel (without Diesel Particulate Filters or \r\nDPFs) engine technology delivering excellent all-round performance. It \r\nprovides exceptional cleaning power, wear protection and overall \r\nperformance. Mobil 1 0W-20 keeps your engine running like new in all \r\ndriving conditions.</span></p>\r\n<p>Country Of Import: SINGAPORE &amp; USA<br>\r\nCountry Of Origin: USA &amp; SINGAPORE<br>\r\nUnit Size: 4L<br>\r\nSAE: 0W-20<br>\r\nOil Type: SYNTHETIC<br>\r\nAPI: SL, SJ, SM &amp; SN<br>\r\nACEA: A3/B4 &amp; A3/B3<br>\r\nAppropriate Use: For Car</p>\r\n    </div>\r\n        </div><p></p>', 200, 'Physical', 4000.00, 8000.00, 7000.00, '345345634', '2_1c236bfd-ba8a-4272-8686-ea7607eb96ec_1732977634.webp', NULL, NULL, NULL, NULL, NULL, 5, 'In Stock', 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, 1, 1, NULL, '2024-11-30 08:40:34', '2024-11-30 08:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification`
--

DROP TABLE IF EXISTS `product_specification`;
CREATE TABLE IF NOT EXISTS `product_specification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED DEFAULT NULL,
  `work_order_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_order_value` decimal(15,2) NOT NULL,
  `work_order_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_order_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order_value` decimal(15,2) DEFAULT NULL,
  `purchase_order_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amc_start_date` date DEFAULT NULL,
  `amc_renewal_date` date DEFAULT NULL,
  `amc_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amc_effective_amount` decimal(15,2) DEFAULT NULL,
  `amc_agreement_documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hardware_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `implementation_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice_mushak_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_exemption_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification`
--

INSERT INTO `product_specification` (`id`, `product_id`, `work_order_number`, `work_order_value`, `work_order_file`, `work_order_rate`, `purchase_order_value`, `purchase_order_file`, `amc_start_date`, `amc_renewal_date`, `amc_rate`, `amc_effective_amount`, `amc_agreement_documents`, `service_type`, `software_value`, `hardware_value`, `implementation_value`, `invoice_mushak_file`, `tax_exemption_certificate`, `note`, `created_at`, `updated_at`) VALUES
(9, 21, 'wo-123452', 560000.00, NULL, NULL, NULL, '1731399789_september_food_manager.xlsx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 08:23:09', '2024-11-12 08:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotion_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file_location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `promo_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `promotion_title`, `description`, `file_location`, `start_date`, `end_date`, `promo_type`, `status`, `created_at`, `updated_at`) VALUES
(44, 'Web Development', NULL, '', NULL, NULL, NULL, 1, '2024-05-27 01:40:04', '2024-05-27 01:40:04'),
(45, 'Android', NULL, '', NULL, NULL, NULL, 1, '2024-05-27 01:40:13', '2024-05-27 01:40:13'),
(48, 'website development', 'Discover impactful marketing campaigns and strategies for brand growth. Learn from the best and craft your own successful plan.', '', '2024-06-19', '2024-07-01', 'website development', 1, '2024-07-02 03:01:42', '2024-07-02 03:01:42'),
(49, 'Sell Home', 'a planned group of especially political, business, or military activities that are intended to achieve a particular aim: The protests were part of their campaign against the proposed building development in the area. The city has just launched (= begun) its annual campaign to stop drunk driving.', 'sample-file_1719917220.csv', '2024-06-01', '2024-08-21', 'Sell Home', 1, '2024-07-02 03:10:41', '2024-07-02 04:47:00'),
(50, 'x', 'xxx', 'VIVR Rest API Document Utility Bill Payment-1.0.0_1719916149.pdf', '2024-07-03', '2024-07-31', 'xx', 1, '2024-07-02 04:29:09', '2024-07-02 04:29:09'),
(51, 'y', 'y', 'sample-file_1719917248.csv', '2024-07-01', '2024-07-31', 'y', 1, '2024-07-02 04:30:05', '2024-07-02 04:47:28'),
(52, 'oop edit', 'oop', 'sample-test_1719920954.csv', '2024-07-01', '2024-07-31', 'oop', 1, '2024-07-02 05:49:14', '2024-07-02 21:49:45'),
(53, 'buy 1 get 1 offer', 'Software developers write code using programming languages, build software components, and test their designs. As a part of software testing, developers address issues or errors. After deploying an application, software developers perform maintenance, updates, and upgrades as needed.', 'sample-test_1720077503.csv', '2024-07-01', '2024-07-24', 'buy 1 get 1 offer', 1, '2024-07-04 01:18:23', '2024-07-04 01:18:23'),
(54, '50% discount', NULL, 'CRM(1)_1720077770.xlsx', NULL, NULL, NULL, 1, '2024-07-04 01:22:50', '2024-07-04 01:22:50'),
(56, '70% discount', '70% discount for all product', 'ASH1825037M_SDA_REPORT (1)_1720078225.pdf', '2024-07-01', '2024-07-31', '70% discount for all product', 1, '2024-07-04 01:30:25', '2024-07-04 01:30:25'),
(57, 'buy 1 get 2', NULL, 'VIVR Rest API Document Utility Bill Payment-1.0.0_1720079359.pdf', NULL, NULL, NULL, 1, '2024-07-04 01:49:19', '2024-07-04 01:49:19'),
(59, 'buy up to 1000tk get 100 tk discount', 'Copyright © 2013 by the American Psychological Association. This content may be reproduced for classroom or teaching purposes\r\nprovided that credit is given to the American Psychological Association. For any other use, please contact the APA Permissions Office.\r\nBlock Quotation Examples\r\nExample 1\r\nThis example demonstrates a block quote. Because some introductory phrases will lead\r\nnaturally into the block quote,\r\nyou might choose to begin the block quote with a lowercase letter. In this and the later\r\nexamples we use “Lorem ipsum” text to ensure that each block quotation contains 40 words or\r\nmore. Lorem ipsum dolor sit amet, consectetur adipiscing elit. (Organa, 2013, p', 'string_1720082913.docx', '2024-07-23', '2024-07-31', 'buy up to 1000tk get 100 tk discount', 1, '2024-07-04 02:48:33', '2024-07-04 02:48:33'),
(60, 'ff', NULL, '', NULL, NULL, NULL, 1, '2024-07-04 03:00:44', '2024-07-04 03:00:44'),
(61, 'gg', NULL, '', NULL, NULL, NULL, 1, '2024-07-04 03:00:49', '2024-07-04 03:00:49'),
(62, 'gg', NULL, 'sample-test_1720083661.csv', NULL, NULL, NULL, 1, '2024-07-04 03:01:01', '2024-07-04 03:01:01'),
(63, 'rr', NULL, 'mobile_1720083674.xlsx', NULL, NULL, NULL, 1, '2024-07-04 03:01:14', '2024-07-04 03:01:14'),
(65, 'dd', NULL, 'ASH1825037M_SDA_REPORT (1)_1720083699.pdf', NULL, NULL, NULL, 1, '2024-07-04 03:01:39', '2024-07-04 03:01:39'),
(69, 'ggg', 'ggg', '', '2024-06-01', '2024-07-26', NULL, 1, '2024-07-04 03:06:47', '2024-07-04 03:06:47'),
(70, 'c', NULL, '', NULL, NULL, NULL, 1, '2024-07-04 04:43:57', '2024-07-04 04:43:57'),
(71, 'Test promotion1', NULL, '', '2024-07-09', '2024-07-11', NULL, 1, '2024-07-08 05:02:28', '2024-07-08 05:02:28'),
(72, '50% discount offer', 'xyz', 'Knowledge Based System (KBS)_1727238023.pdf', '2024-09-01', '2024-09-06', '50% discount sell', 1, '2024-09-24 22:20:23', '2024-09-24 22:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
CREATE TABLE IF NOT EXISTS `proposals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lead_id` bigint DEFAULT NULL,
  `company_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `currency` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assigned_agent_id` int DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `send_to` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `city` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proposal_file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `zip_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `send_to_email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `tax_percent` decimal(3,1) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `offer_price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `subject`, `lead_id`, `company_name`, `customer_id`, `start_date`, `end_date`, `currency`, `assigned_agent_id`, `first_name`, `send_to`, `address`, `city`, `state`, `country_name`, `proposal_file_name`, `item_name`, `item_description`, `zip_code`, `send_to_email`, `phone`, `discount`, `tax_percent`, `tax_amount`, `price`, `offer_price`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(14, 'email module service', 406, 'Gplex', NULL, '2024-11-05 18:00:00', '2024-11-13 18:00:00', 'BDT', NULL, NULL, 'faysal@gmail.com', NULL, NULL, NULL, NULL, 'ASH1825037M_SDA_REPORT (1)-1_1730867073.pdf', 'email service', 'email service', NULL, NULL, NULL, 200.00, 10.0, 100.00, 1200.00, 1000.00, 1100.00, 'Sent', '2024-11-06 04:24:33', '2024-11-06 04:24:33'),
(15, 'Email module service for CRM', 403, 'Gplex', NULL, '2024-11-05 18:00:00', '2024-11-18 18:00:00', 'EURO', NULL, NULL, 'rakib@gmail.com', NULL, NULL, NULL, NULL, 'campaign_sample_file(3)_1730014876(1)_1730867213.csv', 'Email module service for CRM', 'Email module service for CRM', NULL, NULL, NULL, 0.00, 10.0, 100.00, 1000.00, 1000.00, 1100.00, 'Open', '2024-11-06 04:26:53', '2024-11-06 04:26:53'),
(16, 'product service based', 411, 'Gplex', NULL, '2024-11-06 18:00:00', '2024-11-27 18:00:00', 'BDT', NULL, NULL, 'rony@gmail.com', NULL, NULL, NULL, NULL, 'campaign)_1730867939.csv', 'product service based', 'product service based', NULL, NULL, NULL, 11000.00, 10.0, 100.00, 12000.00, 1000.00, 1100.00, 'Sent', '2024-11-06 04:38:59', '2024-11-06 04:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permission_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `permission_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` tinyint NOT NULL COMMENT '0 => Inactive, 1 => Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `menu_details`, `permission_details`, `permission_ids`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Super Admin', 'super_admin', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\"},\"Campaign\":{\"campaign-index\":\"Campaign List\",\"campaign-create\":\"Create a Campaign\",\"promotion-index\":\"Promotion List\",\"promotion-create\":\"Create Promotion\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create Template\",\"send-bulk-sms\":\"Send Bulk SMS\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\"},\"Products\":{\"product-list\":\"Product List\",\"add-product\":\"Add Product\",\"product-specification-create\":\"Add Product Specification\",\"product-specification-index\":\"Product Specification List\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\"}}', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\",\"agents-edit\":\"Agents Edit\",\"agents-show\":\"Agents Show\",\"agents-destroy\":\"Agents Destroy\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\",\"leadsform-show\":\"Leads Form Show\",\"leadsform-edit\":\"Leads Form Edit\",\"leadsform-destroy\":\"Leads Form Destroy\",\"dynamictable-edit\":\"Dynamic Table Edit\",\"dynamictable-show\":\"Dynamic Table Show\",\"dynamictable-destroy\":\"Dynamic Table Destroy\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\",\"leads-upload\":\"Upload Lead\",\"lead-show\":\"Lead Show\",\"lead-edit\":\"Lead Edit\",\"lead-destroy\":\"Lead Destroy\",\"leads-add\":\"Leads Add\",\"delete-tabledata\":\"Delete Table Data\",\"lead-edit-tabledata\":\"Lead Edit Table Data\"},\"Campaign\":{\"campaign-index\":\"Campaign List\",\"campaign-create\":\"Create a Campaign\",\"promotion-index\":\"Promotion List\",\"promotion-create\":\"Create Promotion\",\"campaign-lead-upload-file\":\"Campaign Lead Upload File\",\"campaign-show\":\"Campaign Show\",\"campaign-edit\":\"Campaign Edit\",\"campaign-destroy\":\"Campaign Destroy\",\"campaign-lead-upload\":\"Campaign Lead Upload\",\"campaign-data\":\"Campaign Data\",\"promotion-show\":\"Promotion Show\",\"promotion-edit\":\"Promotion Edit\",\"promotion-destroy\":\"Promotion Destroy\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\",\"email-template-edit\":\"Email Template Edit\",\"email-template-show\":\"Email Template Show\",\"email-template-delete\":\"Email Template Delete\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create SMS Template\",\"send-bulk-sms\":\"Send Bulk SMS\",\"sms-template-edit\":\"Sms Template Edit\",\"sms-template-show\":\"Sms Template Show\",\"sms-template-delete\":\"Sms Template Delete\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\",\"delete-task\":\"Task Delete\"},\"Products\":{\"product-list\":\"Product List\",\"add-product\":\"Add Product\",\"product-delete\":\"Product Delete\",\"product-show\":\"Product Show\",\"product-edit\":\"Product Edit\",\"product-specification-create\":\"Add Product Specification\",\"product-specification-index\":\"Product Specification List\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\",\"meeting-show\":\"Meeting Show\",\"meeting-edit\":\"Meeting Edit\",\"meeting-destroy\":\"Meeting Destroy\"}}', '{\"Agents\":[\"7\",\"8\",\"57\",\"56\",\"60\"],\"Leads_Form\":[\"9\",\"10\",\"11\",\"12\",\"62\",\"63\",\"65\",\"67\",\"70\",\"71\"],\"Lead_Management\":[\"13\",\"14\",\"36\",\"76\",\"77\",\"80\",\"82\",\"84\",\"85\"],\"Campaign\":[\"15\",\"16\",\"17\",\"18\",\"91\",\"93\",\"94\",\"96\",\"100\",\"101\",\"113\",\"114\",\"178\"],\"Email_Module\":[\"19\",\"20\",\"21\",\"22\",\"35\",\"151\",\"152\",\"154\"],\"SMS_Module\":[\"23\",\"24\",\"25\",\"26\",\"28\",\"174\",\"159\",\"160\",\"163\"],\"Tasks\":[\"47\",\"48\",\"168\"],\"Products\":[\"50\",\"51\",\"170\",\"171\",\"172\",\"204\",\"205\"],\"Customers\":[\"191\",\"189\"],\"Invoice\":[\"187\",\"186\"],\"Proposal\":[\"184\",\"183\"],\"Meeting\":[\"104\",\"105\",\"107\",\"108\",\"110\"]}', 1, '2024-06-01 22:47:22', '2024-11-12 08:07:38'),
(23, 'Agents', 'agents', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\"},\"Campaign\":{\"campaign-index\":\"Campaign List\",\"campaign-create\":\"Create a Campaign\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create Template\",\"send-bulk-sms\":\"Send Bulk SMS\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\"},\"Products\":{\"product-list\":\"Product List\",\"add-product\":\"Add Product\",\"product-specification-create\":\"Add Product Specification\",\"product-specification-index\":\"Product Specification List\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\"}}', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\",\"agents-edit\":\"Agents Edit\",\"agents-show\":\"Agents Show\",\"agents-destroy\":\"Agents Destroy\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\",\"leadsform-show\":\"Leads Form Show\",\"leadsform-edit\":\"Leads Form Edit\",\"leadsform-destroy\":\"Leads Form Destroy\",\"dynamictable-edit\":\"Dynamic Table Edit\",\"dynamictable-show\":\"Dynamic Table Show\",\"dynamictable-destroy\":\"Dynamic Table Destroy\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\",\"leads-upload\":\"Upload Lead\",\"lead-show\":\"Lead Show\",\"lead-edit\":\"Lead Edit\",\"lead-destroy\":\"Lead Destroy\",\"leads-add\":\"Leads Add\",\"delete-tabledata\":\"Delete Table Data\",\"lead-edit-tabledata\":\"Lead Edit Table Data\"},\"Campaign\":{\"campaign-index\":\"Campaign List\",\"campaign-create\":\"Create a Campaign\",\"campaign-lead-upload-file\":\"Campaign Lead Upload File\",\"campaign-show\":\"Campaign Show\",\"campaign-edit\":\"Campaign Edit\",\"campaign-destroy\":\"Campaign Destroy\",\"campaign-lead-upload\":\"Campaign Lead Upload\",\"campaign-data\":\"Campaign Data\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\",\"email-template-edit\":\"Email Template Edit\",\"email-template-show\":\"Email Template Show\",\"email-template-delete\":\"Email Template Delete\",\"send-email-show\":\"Send Email Show\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create SMS Template\",\"send-bulk-sms\":\"Send Bulk SMS\",\"sms-template-edit\":\"Sms Template Edit\",\"sms-template-show\":\"Sms Template Show\",\"sms-template-delete\":\"Sms Template Delete\",\"send-sms-show\":\"Send SMS show\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\"},\"Products\":{\"product-list\":\"Product List\",\"add-product\":\"Add Product\",\"product-delete\":\"Product Delete\",\"product-show\":\"Product Show\",\"product-edit\":\"Product Edit\",\"product-specification-create\":\"Add Product Specification\",\"product-specification-index\":\"Product Specification List\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\",\"add-customer\":\"Add Customer\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\",\"invoice-show\":\"Invoice Show\",\"invoice-edit\":\"invoice edit\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\",\"delete-proposal\":\"Delete Proposal\",\"proposal-edit\":\"Proposal Edit\",\"proposal-show\":\"Proposal Show\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\",\"meeting-show\":\"Meeting Show\",\"meeting-edit\":\"Meeting Edit\",\"meeting-destroy\":\"Meeting Destroy\"}}', '{\"Agents\":[\"7\",\"8\",\"57\",\"56\",\"60\"],\"Leads_Form\":[\"9\",\"10\",\"11\",\"12\",\"62\",\"63\",\"65\",\"67\",\"70\",\"71\"],\"Lead_Management\":[\"13\",\"14\",\"36\",\"76\",\"77\",\"80\",\"82\",\"84\",\"85\"],\"Campaign\":[\"15\",\"16\",\"91\",\"93\",\"94\",\"96\",\"100\",\"101\"],\"Email_Module\":[\"19\",\"20\",\"21\",\"22\",\"35\",\"151\",\"152\",\"154\",\"195\"],\"SMS_Module\":[\"23\",\"24\",\"25\",\"26\",\"28\",\"174\",\"159\",\"160\",\"163\",\"196\"],\"Tasks\":[\"47\",\"48\"],\"Products\":[\"50\",\"51\",\"170\",\"171\",\"172\",\"204\",\"205\"],\"Customers\":[\"191\",\"189\",\"201\"],\"Invoice\":[\"187\",\"186\",\"202\",\"203\"],\"Proposal\":[\"184\",\"183\",\"197\",\"198\",\"200\"],\"Meeting\":[\"104\",\"105\",\"107\",\"108\",\"110\"]}', 1, '2024-11-05 05:27:36', '2024-11-12 08:15:02'),
(24, 'Marketing Head', 'marketing_head', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create Template\",\"send-bulk-sms\":\"Send Bulk SMS\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\"}}', '{\"Agents\":{\"agents-index\":\"Agent List\",\"agents-create\":\"Create Agent\",\"agents-edit\":\"Agents Edit\",\"agents-show\":\"Agents Show\",\"agents-destroy\":\"Agents Destroy\"},\"Leads_Form\":{\"leadsform-index\":\"Form List\",\"leadsform-create\":\"Create Form\",\"dynamictable-create\":\"Create Dynamic Tables\",\"dynamictable-index\":\"Dynamic Tables List\",\"leadsform-show\":\"Leads Form Show\",\"leadsform-edit\":\"Leads Form Edit\",\"leadsform-destroy\":\"Leads Form Destroy\",\"dynamictable-edit\":\"Dynamic Table Edit\",\"dynamictable-show\":\"Dynamic Table Show\",\"dynamictable-destroy\":\"Dynamic Table Destroy\"},\"Lead_Management\":{\"lead-index\":\"Leads\",\"lead-create\":\"Create a Lead\",\"leads-upload\":\"Upload Lead\",\"lead-show\":\"Lead Show\",\"lead-edit\":\"Lead Edit\",\"lead-destroy\":\"Lead Destroy\",\"leads-add\":\"Leads Add\",\"delete-tabledata\":\"Delete Table Data\",\"lead-edit-tabledata\":\"Lead Edit Table Data\"},\"Email_Module\":{\"send-email\":\"Send an Email\",\"send-email-list\":\"Emails\",\"email-template\":\"Email Templates\",\"email-template-create\":\"Create Template\",\"send-bulk-email\":\"Bulk Upload\",\"email-template-edit\":\"Email Template Edit\",\"email-template-show\":\"Email Template Show\",\"email-template-delete\":\"Email Template Delete\",\"send-email-show\":\"Send Email Show\"},\"SMS_Module\":{\"send-sms-list\":\"SMS List\",\"send-sms\":\"Send SMS\",\"sms-template\":\"SMS Templates\",\"sms-template-create\":\"Create SMS Template\",\"send-bulk-sms\":\"Send Bulk SMS\",\"sms-template-edit\":\"Sms Template Edit\",\"sms-template-show\":\"Sms Template Show\",\"sms-template-delete\":\"Sms Template Delete\",\"send-sms-show\":\"Send SMS show\"},\"Tasks\":{\"task-list\":\"Task List\",\"add-task\":\"Add Task\",\"delete-task\":\"Task Delete\"},\"Customers\":{\"log-list\":\"Logs Data\",\"customers\":\"Customer List\",\"add-customer\":\"Add Customer\"},\"Invoice\":{\"invoice-create\":\"Create Invoice\",\"invoice-index\":\"Invoice List\",\"invoice-show\":\"Invoice Show\",\"invoice-edit\":\"invoice edit\"},\"Proposal\":{\"add-proposal\":\"Add Proposal\",\"proposal-list\":\"Proposal List\",\"delete-proposal\":\"Delete Proposal\",\"proposal-edit\":\"Proposal Edit\",\"proposal-show\":\"Proposal Show\"},\"Meeting\":{\"meeting-index\":\"Meeting List\",\"meeting-create\":\"Create Meeting\",\"meeting-show\":\"Meeting Show\",\"meeting-edit\":\"Meeting Edit\",\"meeting-destroy\":\"Meeting Destroy\"}}', '{\"Agents\":[\"7\",\"8\",\"57\",\"56\",\"60\"],\"Leads_Form\":[\"9\",\"10\",\"11\",\"12\",\"62\",\"63\",\"65\",\"67\",\"70\",\"71\"],\"Lead_Management\":[\"13\",\"14\",\"36\",\"76\",\"77\",\"80\",\"82\",\"84\",\"85\"],\"Email_Module\":[\"19\",\"20\",\"21\",\"22\",\"35\",\"151\",\"152\",\"154\",\"195\"],\"SMS_Module\":[\"23\",\"24\",\"25\",\"26\",\"28\",\"174\",\"159\",\"160\",\"163\",\"196\"],\"Tasks\":[\"47\",\"48\",\"168\"],\"Customers\":[\"191\",\"189\",\"201\"],\"Invoice\":[\"187\",\"186\",\"202\",\"203\"],\"Proposal\":[\"184\",\"183\",\"197\",\"198\",\"200\"],\"Meeting\":[\"104\",\"105\",\"107\",\"108\",\"110\"]}', 1, '2024-11-06 05:05:37', '2024-11-06 05:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE IF NOT EXISTS `roles_permissions` (
  `role_id` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `roles_permissions_permission_id_foreign` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
CREATE TABLE IF NOT EXISTS `salesman` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_image`, `slider_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider one', 'slider-another_1734438985.webp', NULL, 1, '2024-12-08 17:11:14', '2024-12-17 12:36:25'),
(2, 'slider two', 'slider-3_1733677889.jpg', NULL, 1, '2024-12-08 17:11:29', '2024-12-08 17:11:29'),
(3, 'slider 3', 'slider-new-2_1733677902.png', NULL, 1, '2024-12-08 17:11:42', '2024-12-08 17:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE IF NOT EXISTS `sms_log` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_from` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_to` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_time` datetime DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `send_status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue`
--

DROP TABLE IF EXISTS `sms_queue`;
CREATE TABLE IF NOT EXISTS `sms_queue` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `meeting_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_to` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` bigint DEFAULT NULL,
  `csv_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_level` tinyint DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `schedule_time` datetime DEFAULT NULL,
  `retry_status` tinyint DEFAULT NULL,
  `delete_request` tinyint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_queue`
--

INSERT INTO `sms_queue` (`id`, `campaign_id`, `customer_id`, `meeting_id`, `sms_from`, `sms_to`, `sms_text`, `send_status`, `lead_id`, `csv_id`, `priority_level`, `log_time`, `schedule_time`, `retry_status`, `delete_request`, `user_id`, `created_at`, `updated_at`) VALUES
(148, NULL, NULL, NULL, '0111111111', '01788888888', 'Kashfi SMS template', '1', 306, NULL, NULL, '2024-10-31 05:55:34', NULL, NULL, NULL, 1, '2024-10-30 23:55:34', '2024-10-30 23:55:34'),
(149, NULL, NULL, NULL, '0111111111', '01555555555', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-10-31 05:56:01', NULL, NULL, NULL, 1, NULL, NULL),
(150, NULL, NULL, NULL, '0111111111', '01455555555', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-10-31 05:56:01', NULL, NULL, NULL, 1, NULL, NULL),
(151, NULL, NULL, NULL, '0111111111', '01717898891', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-10-31 05:56:01', NULL, NULL, NULL, 1, NULL, NULL),
(152, NULL, NULL, NULL, '0111111111', '01875644444', 'SMS template1 test', '1', 266, NULL, NULL, '2024-10-31 05:59:55', NULL, NULL, NULL, 1, '2024-10-30 23:59:55', '2024-10-30 23:59:55'),
(153, NULL, NULL, NULL, '0111111111', '01796321456', 'SMS template1 test', '1', 401, NULL, NULL, '2024-11-05 10:49:00', NULL, NULL, NULL, 1, '2024-11-05 04:49:00', '2024-11-05 04:49:00'),
(154, NULL, NULL, NULL, '0111111111', '0Route Name one', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(155, NULL, NULL, NULL, '0111111111', '0Route Name two', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(156, NULL, NULL, NULL, '0111111111', '0Route Name Three', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(157, NULL, NULL, NULL, '0111111111', '0Route Name Four', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(158, NULL, NULL, NULL, '0111111111', '0Route Name Five', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(159, NULL, NULL, NULL, '0111111111', '0Route Name six', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(160, NULL, NULL, NULL, '0111111111', '0Route Name seven', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(161, NULL, NULL, NULL, '0111111111', '0Route Name nine', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 10:50:02', NULL, NULL, NULL, 1, NULL, NULL),
(162, NULL, NULL, NULL, '0111111111', '01796321456', 'Kashfi SMS template', '1', 401, NULL, NULL, '2024-11-05 11:38:56', NULL, NULL, NULL, 1, '2024-11-05 05:38:56', '2024-11-05 05:38:56'),
(163, NULL, NULL, NULL, '0111111111', '01764655648', 'SMS template1 test', '1', 402, NULL, NULL, '2024-11-05 11:39:41', NULL, NULL, NULL, 1, '2024-11-05 05:39:41', '2024-11-05 05:39:41'),
(164, NULL, NULL, NULL, '0111111111', '01769632541', 'SMS template1 test', '1', 406, NULL, NULL, '2024-11-05 14:40:27', NULL, NULL, NULL, 75, '2024-11-05 08:40:27', '2024-11-05 08:40:27'),
(165, NULL, NULL, NULL, '0111111111', '01769632541', 'SMS template1 test', '1', 406, NULL, NULL, '2024-11-05 14:46:51', NULL, NULL, NULL, 75, '2024-11-05 08:46:51', '2024-11-05 08:46:51'),
(166, NULL, NULL, NULL, '0111111111', '01787877123', 'SMS template1 test', '1', NULL, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(167, NULL, NULL, NULL, '0111111111', '01787877113', 'SMS template1 test', '1', NULL, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(168, NULL, NULL, NULL, '0111111111', '01787877123', 'SMS template1 test', '1', NULL, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(169, NULL, NULL, NULL, '0111111111', '01667655555', 'SMS template1 test', '1', NULL, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(170, NULL, NULL, NULL, '0111111111', '01769632541', 'SMS template1 test', '1', 406, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(171, NULL, NULL, NULL, '0111111111', '01762680927', 'SMS template1 test', '1', 404, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(172, NULL, NULL, NULL, '0111111111', '01645239865', 'SMS template1 test', '1', 403, NULL, NULL, '2024-11-05 15:02:27', NULL, NULL, NULL, 75, NULL, NULL),
(173, NULL, NULL, NULL, '0111111111', '01787877123', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(174, NULL, NULL, NULL, '0111111111', '01787877113', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(175, NULL, NULL, NULL, '0111111111', '01787877123', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(176, NULL, NULL, NULL, '0111111111', '01667655555', 'Moni sms  template', '1', NULL, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(177, NULL, NULL, NULL, '0111111111', '01769632541', 'Moni sms  template', '1', 406, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(178, NULL, NULL, NULL, '0111111111', '01762680927', 'Moni sms  template', '1', 404, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(179, NULL, NULL, NULL, '0111111111', '01645239865', 'Moni sms  template', '1', 403, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(180, NULL, NULL, NULL, '0111111111', '01764655652', 'Moni sms  template', '1', 411, NULL, NULL, '2024-11-05 15:51:18', NULL, NULL, NULL, 69, NULL, NULL),
(181, NULL, NULL, NULL, '0111111111', '01764655652', 'SMS template1 test', '1', 411, NULL, NULL, '2024-11-05 15:52:10', NULL, NULL, NULL, 69, '2024-11-05 09:52:10', '2024-11-05 09:52:10'),
(182, NULL, NULL, NULL, '0111111111', '01764655985', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 418, NULL, NULL, '2024-11-05 16:24:09', NULL, NULL, NULL, 69, '2024-11-05 10:24:09', '2024-11-05 10:24:09'),
(183, NULL, NULL, NULL, '0111111111', '01698745632', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 425, NULL, NULL, '2024-11-05 16:36:47', NULL, NULL, NULL, 69, '2024-11-05 10:36:47', '2024-11-05 10:36:47'),
(184, NULL, NULL, NULL, '0111111111', '01787877123', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', NULL, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(185, NULL, NULL, NULL, '0111111111', '01787877113', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', NULL, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(186, NULL, NULL, NULL, '0111111111', '01787877123', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', NULL, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(187, NULL, NULL, NULL, '0111111111', '01667655555', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', NULL, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(188, NULL, NULL, NULL, '0111111111', '01769632541', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 406, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(189, NULL, NULL, NULL, '0111111111', '01762680927', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 404, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(190, NULL, NULL, NULL, '0111111111', '01645239865', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 403, NULL, NULL, '2024-11-05 16:39:15', NULL, NULL, NULL, 69, NULL, NULL),
(194, NULL, NULL, NULL, '0111111111', '01764652365', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 429, NULL, NULL, '2024-11-06 11:02:14', NULL, NULL, NULL, 69, '2024-11-06 05:02:14', '2024-11-06 05:02:14'),
(195, NULL, NULL, NULL, '0111111111', '01717761611', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 430, NULL, NULL, '2024-11-06 11:19:09', NULL, NULL, NULL, 78, '2024-11-06 05:19:09', '2024-11-06 05:19:09'),
(196, NULL, NULL, NULL, '0111111111', '01233333333', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', NULL, NULL, NULL, '2024-11-06 17:42:06', NULL, NULL, NULL, 1, '2024-11-06 11:42:06', '2024-11-06 11:42:06'),
(197, NULL, NULL, '31', 'Genuity', '01645239865', 'Meeting With ishtiak vai Meeting Link: https://mail.google.com/mail/u/0/#inbox', 'Pending', NULL, NULL, NULL, '2024-11-07 10:29:19', NULL, NULL, NULL, 1, '2024-11-07 04:29:19', '2024-11-07 04:29:19'),
(198, NULL, NULL, NULL, '0111111111', '01645239865', 'Moni sms  template', '1', 403, NULL, NULL, '2024-11-07 11:11:18', NULL, NULL, NULL, 1, '2024-11-07 05:11:18', '2024-11-07 05:11:18'),
(199, NULL, NULL, NULL, '0111111111', '01762680927', 'Test Steps:    From the Leave menu, select Public Holidays or Holidays.', '1', 404, NULL, NULL, '2024-11-07 17:11:08', NULL, NULL, NULL, 1, '2024-11-07 11:11:08', '2024-11-07 11:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
CREATE TABLE IF NOT EXISTS `sms_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `title`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(28, 'SMS template1', 'SMS template1 test', 1, 1, NULL, '2024-10-30 23:48:22', '2024-10-30 23:48:22'),
(29, 'Moni template', 'Moni sms  template', 1, 69, NULL, '2024-10-30 23:48:59', '2024-10-30 23:48:59'),
(30, 'Kashfi template', 'Kashfi SMS template', 1, 67, NULL, '2024-10-30 23:55:13', '2024-10-30 23:55:13'),
(31, 'agent sms templete', 'Test Steps:\r\n\r\n    From the Leave menu, select Public Holidays or Holidays.', 1, 69, NULL, '2024-11-05 10:11:31', '2024-11-05 10:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `software details`
--

DROP TABLE IF EXISTS `software details`;
CREATE TABLE IF NOT EXISTS `software details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `software_name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotware_working_duration` int DEFAULT NULL,
  `language_name` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `software_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `you are developer` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `software details_software_name_unique` (`software_name`),
  UNIQUE KEY `software details_start_date_unique` (`start_date`),
  KEY `software details_software_name_index` (`software_name`),
  KEY `software details_sotware_working_duration_index` (`sotware_working_duration`),
  KEY `software details_start_date_index` (`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software_details`
--

DROP TABLE IF EXISTS `software_details`;
CREATE TABLE IF NOT EXISTS `software_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `form_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_project` int DEFAULT NULL,
  `project_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `software_details_total_project_index` (`total_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `state_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_name` char(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `due_date` datetime NOT NULL,
  `assigned_to` bigint NOT NULL,
  `created_by` bigint NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `description`, `due_date`, `assigned_to`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(4, 'task1', 'desc', '2024-08-02 00:00:00', 2, 1, 1, '2024-07-01 00:03:11', '2024-08-11 00:18:34'),
(5, 'test', 'This example also demonstrates a block quote. Some introductory sentences end abruptly in a\r\ncolon or a period:\r\nIn those cases, you are more likely to capitalize the beginning word of the block quotation.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi mi, pharetra sit amet mi vitae,\r\ncommodo accumsan dui. Donec non scelerisque quam. Pellentesque ut est sed neque', '2024-08-01 00:00:00', 21, 1, 5, '2024-07-01 03:00:38', '2024-07-01 03:42:54'),
(6, 'create task module', 'In those cases, you are more likely to capitalize the beginning word of the block quotation.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi mi, pharetra sit amet mi vitae,\r\ncommodo accumsan dui. Donec non scelerisque quam. Pellentesque ut est sed neque', '2024-07-01 00:00:00', 21, 1, 1, '2024-07-01 03:28:12', '2024-07-03 21:42:57'),
(8, 'frf', 'ff', '2024-07-18 00:00:00', 19, 1, NULL, '2024-07-04 04:46:37', '2024-07-04 04:46:37'),
(9, 'email module implement', 'Get the best Results for Company Formation In Cyprus. Find what you are looking for! 99% Match on Company Formation In Cyprus. Find Here - Free, Private and Secure. Privacy Friendly. The Best Resources. Always Facts. Unlimited Access. Completely Secure. Results & Answers.', '2024-07-08 00:00:00', 41, 1, 2, '2024-07-07 04:25:14', '2024-07-08 04:03:41'),
(10, 'implement of task module', 'A task module allows you to create modal popup experiences in your Teams application. Inside the popup, you can run your own custom HTML/JavaScript code, show an <iframe> -based widget such as a YouTube or Microsoft Stream video, or display an Adaptive card', '2024-07-10 00:00:00', 42, 1, 2, '2024-07-08 03:48:20', '2024-07-08 04:03:14'),
(11, 'xyz', 'rty', '2024-09-05 00:00:00', 48, 48, NULL, '2024-09-11 04:35:06', '2024-09-11 04:35:06'),
(12, 'test12', 'To connect to your database, you need to add the necessary JDBC driver JAR files to JMeter\'s lib folder. The JDBC driver depends on the type of database you\'re using (e.g., MySQL, Oracle, Microsoft SQL Server). Download the appropriate JDBC driver JAR file and copy it to the lib folder in your JMeter installation directory.', '2024-07-01 00:00:00', 48, 48, NULL, '2024-09-12 04:10:08', '2024-09-12 04:10:08'),
(13, 'test12', 'To connect to your database, you need to add the necessary JDBC driver JAR files to JMeter\'s lib folder. The JDBC driver depends on the type of database you\'re using (e.g., MySQL, Oracle, Microsoft SQL Server). Download the appropriate JDBC driver JAR file and copy it to the lib folder in your JMeter installation directory.', '2024-09-01 00:00:00', 46, 1, 2, '2024-09-12 04:20:40', '2024-09-12 04:41:31'),
(14, 'testing data', 'hlw.\r\nFollow these steps to set up your database load test in JMeter:\r\n\r\n    Add a Thread Group\r\n\r\n    A thread group represents a group of users or virtual users that will interact with your database. Right-click on the test plan and select Add > Threads (Users) > Thread Group. Configure the thread group settings, such as the number of threads (users) and the ramp-up period (the time it takes for all threads to start).\r\n\r\n    Configure Database Connection\r\n\r\n    To connect to your database, you need to add a JDBC Connection Configuration element. Right-click on the thread group and select Add > Config Element > JDBC Connection Configuration. Enter the database connection details, such as the JDBC URL, username, and password.', '2024-09-12 00:00:00', 48, 1, 1, '2024-09-12 04:31:46', '2024-09-12 04:32:47'),
(15, 'testing task', 'I noticed in CrowdStrike\'s post mortem report that they didn\'t say a thing about management. This is how you know they had nothing to crow about in that department. If CrowdStrike had any special processes of training or any sort of leadership practices that they could point to, they would have pointed at them vigorously. Instead, silence.', '2024-09-07 00:00:00', 48, 48, 2, '2024-09-15 03:09:53', '2024-09-15 03:13:47'),
(16, 'testing', 'xyz', '2024-09-30 00:00:00', 61, 61, 2, '2024-09-25 22:31:49', '2024-09-25 22:34:20'),
(20, 'uiou', 'ouio', '2024-10-01 00:00:00', 61, 1, 1, '2024-09-25 22:37:21', '2024-09-25 22:37:33'),
(21, 'f', 'tyut', '2024-09-10 00:00:00', 61, 61, 0, '2024-09-26 01:30:42', '2024-09-26 01:30:42'),
(25, 'sms module implement', 'You said:\r\nwrite test case on bkash add money feature \r\nChatGPT said:\r\nChatGPT\r\nTest Case for bKash \"Add Money\" Feature\r\nTest Case ID: TC_BKASH_001\r\nTest Case Name: Verify \"Add Money\" Feature in bKash App\r\nTest Designed By: [Your Name]\r\nTest Date: [Date]\r\nTest Priority: High\r\nTest Type: Functional\r\nTest Environment:\r\n\r\n    Mobile: Android/iOS\r\n    App Version: [Version number]\r\n    Network: Wi-Fi/4G\r\n    User Account: Registered bKash account\r\n\r\nTest Objective:\r\n\r\nTo verify that the \"Add Money\" feature works correctly and adds funds to the bKash wallet.\r\nPreconditions:\r\n\r\n    The bKash app is installed on the mobile device.\r\n    The user is logged into the bKash app with a valid account.\r\n    The mobile device has an active internet connection.\r\n    The user has a linked bank account, card, or any other valid funding source in their bKash account.\r\n\r\nTest Steps:\r\n\r\n    Step 1: Launch the bKash app.\r\n        Expected Result: The app should open and the user should land on the home screen.\r\n\r\n    Step 2: Navigate to the \"Add Money\" section.\r\n        Action: Tap on the \"Add Money\" button/icon on the home screen.\r\n        Expected Result: The \"Add Money\" page opens, displaying options to choose the funding source (bank account, debit/credit card, etc.).', '2024-12-01 00:00:00', 75, 75, 2, '2024-11-05 09:09:08', '2024-11-05 09:16:30'),
(26, 'check crm issues', 'Step 1: Launch the bKash app.\r\n\r\n    Expected Result: The app should open and the user should land on the home screen.\r\n\r\nStep 2: Navigate to the \"Add Money\" section.\r\n\r\n    Action: Tap on the \"Add Money\" button/icon on the home screen.', '2024-11-06 00:00:00', 69, 69, 2, '2024-11-05 10:15:56', '2024-11-05 10:16:28'),
(27, 'Social module implement', NULL, '2024-11-20 00:00:00', 69, 1, 0, '2024-11-05 10:20:37', '2024-11-05 10:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `role_id` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `phone_number`, `user_type`, `gender`, `profile_image`, `address`, `role_id`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'root', 'Khan1', 'Riyad', 'khan@gmail.com', '01731415537', 'admin', NULL, '313405982_1289255718315219_4110666478942719247_n_1732727105.jpg', NULL, '5', NULL, '$2y$12$W9G7uVmQHVeqsgNQrmpvtueBNg6QS4JzgaXwNixuZ8mv9KV5x57yi', NULL, '1', '2024-05-19 22:24:44', '2024-11-27 17:05:05'),
(4, '7620974445398', NULL, 'jaman', 'hasan', 'jaman@gmail.com', NULL, 'agent', NULL, '', NULL, NULL, NULL, '$2y$12$Ziq2l7sIjCx1o6wQOheqC.A.8AW/vEYK51qVZL93NuW7UzrgQKI/C', NULL, NULL, '2024-05-26 23:59:32', '2024-05-29 22:43:46'),
(8, '2633647266941', NULL, 'xxx', 'yyy', 'xxx@gmail', '0176465564qst', 'user', 'Female', NULL, NULL, '8', NULL, '$2y$12$afb9oGqqf9ekVnvjf2Wx2.DhpaQWCgISf4X8hA5MCJBExcJ8K3V/i', NULL, '1', '2024-06-19 21:10:28', '2024-06-19 22:14:20'),
(19, '7652749967907', NULL, 'sayma', 'sarker', 'sayma@gmail.com', '01658987452e', 'user', 'female', NULL, NULL, NULL, NULL, '$2y$12$31hzRU8V8I1tc7GEO3rB4uin337ULzmVB2..9G8exE5QN3uqEAebS', NULL, '1', '2024-06-29 23:33:21', '2024-06-29 23:33:21'),
(20, '9286312105337', 'safi', 'safi', 'alam', 'safi@gmail.com', '01658974563', 'user', NULL, 'evidence_1719730076.PNG', NULL, '20', NULL, '$2y$12$xMRtVlhnTNai8mxkNWTVSeY4ci2VTywBqCwfGmArbHVmJ7WbQ7.1u', NULL, '1', '2024-06-29 23:38:17', '2024-09-30 05:42:13'),
(21, '1736742147463', 'agent_one', 'shoshe', 'islam', 'shoshe@gmail.com', '01764698523', 'agent', NULL, '2_1730787717.png', 'In those cases, you are more likely to capitalize the beginning word of the block quotation.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi mi, pharetra sit amet mi vitae,\r\ncommodo accumsan dui. Donec non scelerisque quam. Pellentesque ut est sed neque.', '23', NULL, '$2y$12$Z6qHIlESC1rqkCwvL4sNLec32nf8LmG0HD.CO2cd73ynjrs5koAxa', NULL, '1', '2024-07-01 02:58:39', '2024-11-05 11:49:02'),
(25, '1182322357949', NULL, 'abc', 'xyz', 'a@gmail.com', '017623er456', 'user', 'female', NULL, NULL, NULL, NULL, '$2y$12$WHqhJ3/dsIiyVYOfuon4xex1f1E/1yEM8OsSFjWVAHhX99VacW0PK', NULL, '1', '2024-07-02 23:26:17', '2024-07-02 23:26:17'),
(42, '9257685857141', 'khadija123@', 'khadija', 'akter', 'khadija@gmail.com', '01764655640', 'user', 'Female', NULL, NULL, '17', NULL, '$2y$12$C3agpyXFjTihRhaT6x.xDeoBn/4FXJ3kcFo5uYX0BEsLcjNQJJIm6', NULL, '1', '2024-07-07 21:50:11', '2024-09-17 04:41:01'),
(45, '7495768314050', 'rifa123', 'rifa', 'tasfia', 'rifa@gmail.com', '01763217890', 'user', 'Female', 'setup_1721102757.PNG', 'road 12,house umber 123,gulshan dhaka', '18', NULL, '$2y$12$2LzmOc.ecdJZ200f.UhWp.IPnhbMsx/G/mFKV6C1ytAGKY7858Zmm', NULL, '1', '2024-07-15 21:52:34', '2024-09-30 01:18:41'),
(47, '5721651410082', 'asif123', 'asif', 'alam', 'asif@gmail.com', '01764655809', 'user', 'Female', NULL, 'road no:1/2A  house no: 123 gulshan ,dhaka', NULL, NULL, '$2y$12$CM89U.HvziAOnXQpv3c8n.h8d0gfOpiW5GmvPAfSR6msbP1enVQye', NULL, '1', '2024-09-11 03:41:17', '2024-09-11 03:50:04'),
(50, '218020341981', 'puja123', 'puja', 'das', 'puja@gmail.com', NULL, 'user', 'Female', NULL, NULL, '5', NULL, '$2y$12$BQE7FQK6ZZc5hxgfokOm6e5dwZZu12KBClV5DFRfllatsKYydy5w2', NULL, '1', '2024-09-17 03:48:15', '2024-09-17 04:25:08'),
(52, '1895563756464', 'khadija123', 'khadija', 'akter', 'khadija+1@gmail.com', '01769541236', 'user', 'Female', '1726558629_1727149616.png', 'road number:123,house no:12,Gulshan', NULL, NULL, '$2y$12$NBEHIXUBoEmMI7sJCE4B.OicEr6Zh7HAKnSJRoS9kUuHQkJWYhR7G', NULL, '1', '2024-09-23 21:41:33', '2024-09-23 21:46:56'),
(57, '295060196785', 'rafi123', 'rafi', 'alam', 'rafi@gmail.com', NULL, 'agent', 'Male', '', NULL, '18', NULL, '$2y$12$YhccEYysb8e6vdUEuzZiT.L6mDqYjwfbI.tNPauqO2GkRkaJRHezK', NULL, '1', '2024-09-23 22:17:14', '2024-09-23 23:54:32'),
(61, '5967219622849', 'kasfi123', 'kasfi', 'islam', 'kasfi@gmail.com', NULL, 'agent', NULL, '', NULL, '17', NULL, '$2y$12$NetxDQkFQGbG/14c2ze0cOTfzQoMBumIo9Ieexpy227pT.GB.9gDC', NULL, '1', '2024-09-24 22:11:33', '2024-09-24 22:14:44'),
(64, '4252410838087', 'tisha123', 'tisha', 'alam', 'tisha@gmail.com', '01767890654', 'user', 'Female', '1726117505 (1) (1)_1727776352.png', 'banani', '21', NULL, '$2y$12$Ic4g.1DrQUZskTLS8yYSf.CdeemvGGURgeN8d8aYXKqsKuIEwPYPa', NULL, '1', '2024-10-01 03:07:15', '2024-10-01 03:52:32'),
(68, '7189832681237', 'ertet', 'ertet', 'ertet', 'etr@gmail.com', NULL, 'user', NULL, NULL, NULL, '21', NULL, '$2y$12$.lr8wQQUoqvHxvjdbQczW.GAZZgMxoKomklNAFVrOj/PObmqGgM1O', NULL, '1', '2024-10-03 05:45:40', '2024-10-03 05:45:56'),
(69, '5813119490709', 'moni123', 'moni', 'akter', 'moni@gmail.com', '01764679087', 'agent', NULL, '', NULL, '23', NULL, '$2y$12$EOOBkT7RNpDGCzOVQwNgKe1Fkq6qB1Siy2ozyBcthQ8Gu2pTgZdPu', NULL, '1', '2024-10-21 03:19:09', '2024-11-05 09:17:51'),
(71, '7925371950217', 'shimla123', 'shimla', 'sharkar', 'shimla@gmail.com', '01794563214', 'user', 'Female', 'andi-rieger-vfEqA8sKe6A-unsplash_1730783884.jpg', 'house no. 123 rd no.12 banani ,dhaka', NULL, NULL, '$2y$12$XG1/2RzG/3Y42zkrwkFlM.3DZx.tWM0DbLcvd18723eIyinb4eoym', NULL, '1', '2024-11-05 05:13:10', '2024-11-05 05:20:30'),
(72, '4273309321137', 'shimla1234', 'shimla', 'sharkar', 'shimla+1@gmail.com', NULL, 'user', NULL, NULL, NULL, NULL, NULL, '$2y$12$y15Sk2YxV0beNFK7qZGyZ.ggDUAPlt.FjwOEFGKeQDOFMGULJHSWO', NULL, '1', '2024-11-05 05:22:24', '2024-11-05 05:22:24'),
(74, '3709272473613', 'shimla123456', 'shimla', 'lslam', 'shimla1234@gmail.com', NULL, 'user', NULL, NULL, NULL, NULL, NULL, '$2y$12$92dANiceejL8VdBozVPRyufCiSsf/TbSvkIB6mH17qYcIZKUYc6GW', NULL, '1', '2024-11-05 05:24:03', '2024-11-05 05:24:03'),
(75, '1824592063347', 'shimla1236', 'shimla', 'sarkar', 'shimla123@gmail.com', '01764655236', 'agent', 'Female', 'andi-rieger-vfEqA8sKe6A-unsplash_1730358844_1730785609.jpg', 'banani', '23', NULL, '$2y$12$YbkxqS4t.zpkrzDzT.b0p./qI0Ux/4qqGyEfsnY46KYh9ZhJCjJ4O', NULL, '1', '2024-11-05 05:46:34', '2024-11-05 05:55:54'),
(78, '8112529737019', 'kz-prince', 'Kamruzzaman', 'Prince', 'prince@genesys.us', '01713384891', 'user', 'Male', NULL, NULL, '24', NULL, '$2y$12$B5MW9UEPXn7HaDmaqaEbVOrfVVlwZcsfUS7IK2df1A05bx6mkJLTe', NULL, '1', '2024-11-06 05:03:15', '2024-11-07 07:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `product_image` varchar(190) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `session_id`, `product_id`, `product_name`, `product_image`, `unit_price`, `created_at`, `updated_at`) VALUES
(4, NULL, '8274272736099', 30, 'Break Shoe two', '58281767_2413160688708610_3553364363970609152_n_1732977518.webp', 7000.00, '2024-12-15 07:08:53', '2024-12-15 07:08:53');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers_old` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_permission_group_id_foreign` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
