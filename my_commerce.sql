-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 07:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'Sony', 'upload/brand-images/2.png', 1, '2023-05-22 10:15:34', '2023-05-22 10:15:34'),
(2, 'Yellow', 'Yellow', 'upload/brand-images/3.png', 1, '2023-05-22 10:16:01', '2023-05-22 10:16:01'),
(3, 'Gentel Park', 'Gentel PArk', 'upload/brand-images/2.png', 1, '2023-05-22 10:16:23', '2023-05-22 10:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Electronics', 'upload/category-images/34234.jpg', 1, NULL, '2023-05-20 10:29:34'),
(2, 'Man Fashion', 'Man Fashion', '2.png', 1, '2023-05-06 10:44:43', '2023-05-06 10:44:43'),
(3, 'Sports', 'Sports', '1.png', 1, '2023-05-06 10:51:45', '2023-05-06 10:51:45'),
(4, 'Woman Fashion', 'Woman Fashion', 'e00c4425-9782-4d7f-aa63-55aa5573219e.jpg', 2, '2023-05-06 10:53:50', '2023-05-06 10:53:50'),
(5, 'House Hold Item', 'House Hold Item', 'upload/category-images/1.png', 1, '2023-05-06 11:10:29', '2023-05-06 11:10:29'),
(6, 'Kisds Fashion', 'Kisds Fashion', 'upload/category-images/6.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_15_170948_create_sessions_table', 1),
(7, '2023_05_01_172123_create_categories_table', 2),
(8, '2023_05_20_163315_create_sub_categories_table', 3),
(9, '2023_05_20_170345_create_units_table', 4),
(10, '2023_05_20_170354_create_brands_table', 4),
(13, '2023_05_22_161835_create_products_table', 5),
(14, '2023_05_22_171635_create_other_images_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(7, 3, 'upload/product-other-images/380256.jfif', '2023-05-27 10:22:09', '2023-05-27 10:22:09'),
(8, 3, 'upload/product-other-images/479508.webp', '2023-05-27 10:22:09', '2023-05-27 10:22:09'),
(9, 3, 'upload/product-other-images/50310.jfif', '2023-05-27 10:22:09', '2023-05-27 10:22:09'),
(10, 4, 'upload/product-other-images/486483.jfif', '2023-05-27 10:24:05', '2023-05-27 10:24:05'),
(11, 4, 'upload/product-other-images/128069.webp', '2023-05-27 10:24:05', '2023-05-27 10:24:05'),
(12, 4, 'upload/product-other-images/53879.jfif', '2023-05-27 10:24:05', '2023-05-27 10:24:05'),
(13, 5, 'upload/product-other-images/237417.jfif', '2023-05-27 10:27:48', '2023-05-27 10:27:48'),
(14, 5, 'upload/product-other-images/169175.jfif', '2023-05-27 10:27:48', '2023-05-27 10:27:48'),
(15, 5, 'upload/product-other-images/484610.jfif', '2023-05-27 10:27:48', '2023-05-27 10:27:48'),
(16, 1, 'upload/product-other-images/396525.jfif', '2023-05-27 10:35:06', '2023-05-27 10:35:06'),
(17, 1, 'upload/product-other-images/390628.jpg', '2023-05-27 10:35:06', '2023-05-27 10:35:06'),
(18, 1, 'upload/product-other-images/405.jpg', '2023-05-27 10:35:06', '2023-05-27 10:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `stock_amount` int(11) NOT NULL DEFAULT 0,
  `regular_price` int(11) NOT NULL DEFAULT 0,
  `selling_price` int(11) NOT NULL DEFAULT 0,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `image` text DEFAULT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `model`, `stock_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `hit_count`, `sales_count`, `featured_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 3, 1, 'Sony X Peria XZ', 'HS1190', 'sdfsdf', 70, 45000, 42000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,</span></div><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></div><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,</span></div><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></div><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></div>', 'upload/product-images/download (2).jfif', 0, 0, 0, 1, '2023-05-24 10:48:33', '2023-05-27 10:32:44'),
(3, 2, 1, 2, 1, 'সলিড কালার জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন', 'HS119034', 'HS119034', 50, 200, 180, 'আজকেরডিল একটি মার্কেটপ্লেস। এখানে সব প্রোডাক্ট মার্চেন্ট / বিক্রেতা সরবরাহ করে এবং প্রোডাক্টের গুনগত মানের দায়দায়িত্ব তাদের। সেজন্য গ্রাহকদের মার্চেন্ট ও প্রোডাক্টের রেটিং এবং রিভিউ দেখে পণ্য কেনার পরামর্শ দেয়া হচ্ছে। মার্চেন্ট ও প্রোডাক্টের কোন প্রকার অভিযোগ থাকলে আজকেরডিলের সাথে তাৎক্ষনিকভাবে যোগাযোগ করুন।', '<div class=\"product-details-container\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left;\"><div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সলিড কালার জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৪০১৪১৫</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">﻿88% Polyester, 12% Spandex</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Gender: Men</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Digital Print</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Gsm: 160-170</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size: M-Length 27,Chest 38</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size: L-Length 28,Chest 40</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size : XL-Length 29,Chest 42</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সলিড কালার জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সলিড কালার জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৪০১৪১৫</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">সলিড কালার জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span></div></span></div></div></div><div class=\"cash-back-Condition-wrapper\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left;\"><div class=\"cash-back-header\" style=\"padding: 10px; margin: 0px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"cash-back-header-text-new\" style=\"padding: 0px; margin: 0px;\"></div></div></div>', 'upload/product-images/1_solid-color-jersey-half-sleeve-tshirt-for-men-t-shirt-for-man.webp', 0, 0, 0, 1, '2023-05-27 10:22:09', '2023-05-27 10:22:09'),
(4, 2, 1, 3, 1, 'জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন', 'UT1234545', 'UT1234545', 20, 220, 200, 'আজকেরডিল একটি মার্কেটপ্লেস। এখানে সব প্রোডাক্ট মার্চেন্ট / বিক্রেতা সরবরাহ করে এবং প্রোডাক্টের গুনগত মানের দায়দায়িত্ব তাদের। সেজন্য গ্রাহকদের মার্চেন্ট ও প্রোডাক্টের রেটিং এবং রিভিউ দেখে পণ্য কেনার পরামর্শ দেয়া হচ্ছে। মার্চেন্ট ও প্রোডাক্টের কোন প্রকার অভিযোগ থাকলে আজকেরডিলের সাথে তাৎক্ষনিকভাবে যোগাযোগ করুন।', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৪০১৪১৩</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">﻿88% Polyester, 12% Spandex</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Gender: Men</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Digital Print</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Gsm: 160-170</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size: M-Length 27,Chest 38</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size: L-Length 28,Chest 40</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Size : XL-Length 29,Chest 42</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৪০১৪১৩</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">জার্সি হাফ-স্লীভ টি-শার্ট ফর মেন</span></div></span></div></div>', 'upload/product-images/1_jersey-half-hata-comfortable-tshirt.webp', 0, 0, 0, 1, '2023-05-27 10:24:05', '2023-05-27 10:24:05'),
(5, 4, 5, 3, 1, 'আনস্টিচড', 'SM234234', 'SM234234', 50, 2800, 2450, 'আজকেরডিল একটি মার্কেটপ্লেস। এখানে সব প্রোডাক্ট মার্চেন্ট / বিক্রেতা সরবরাহ করে এবং প্রোডাক্টের গুনগত মানের দায়দায়িত্ব তাদের। সেজন্য গ্রাহকদের মার্চেন্ট ও প্রোডাক্টের রেটিং এবং রিভিউ দেখে পণ্য কেনার পরামর্শ দেয়া হচ্ছে। মার্চেন্ট ও প্রোডাক্টের কোন প্রকার অভিযোগ থাকলে আজকেরডিলের সাথে তাৎক্ষনিকভাবে যোগাযোগ করুন।', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড ইন্ডিয়ান জর্জেট ঈদ কালেকশন থ্রি-পিস</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৪০২৬৩৭</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">💕 Exclusive Indian Eid Collection 💕</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Body : Double diamond Georgette with embroidery work</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Premium quality</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Dopatta: Double diamond Georgette with embroidery work</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;pant : Craft butter</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড ইন্ডিয়ান জর্জেট ঈদ কালেকশন থ্রি-পিস&nbsp;</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড ইন্ডিয়ান জর্জেট ঈদ কালেকশন থ্রি-পিস&nbsp;</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৪০২৬৩৭</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">আনস্টিচড ইন্ডিয়ান জর্জেট ঈদ কালেকশন থ্রি-পিস</span></div></span></div></div>', 'upload/product-images/1_exclusive-indian-eid-collection.webp', 0, 0, 0, 1, '2023-05-27 10:27:48', '2023-05-27 10:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('h50P6gHfTVd76TUswxk2RRIjVufKn1YMqy1Z0MHH', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicTVvaTJ5T0lDTFhyT2hLdFlhRWlxYm9YMFBSd2d1S3hkaDU5elRjbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvbXktY29tbWVyY2UvcHVibGljL3Byb2R1Y3QtZGV0YWlsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRtckdBSTZuMVc4WlRZRFpycDNtQ0VlWGtzSk56Wk1VSXBEeVFrWEcxWUdzQ2pKWHFKd28uRyI7fQ==', 1685207317);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'T Shirt', 'T Shirt', 'upload/sub-category-images/1.png', 1, '2023-05-20 10:45:21', '2023-05-20 10:45:21'),
(3, 1, 'Freaze', 'Freaze', 'upload/sub-category-images/2.png', 1, '2023-05-20 10:52:10', '2023-05-20 10:52:10'),
(4, 1, 'Mobile', 'Mobile', 'upload/sub-category-images/3.png', 1, '2023-05-24 10:46:03', '2023-05-24 10:46:03'),
(5, 4, 'Three Pis', 'Three Pis', 'upload/sub-category-images/Untitled.png', 1, '2023-05-27 10:24:57', '2023-05-27 10:24:57'),
(6, 3, 'Cricket Bat', 'Cricket Bat', 'upload/sub-category-images/Untitled.png', 1, '2023-05-27 10:46:29', '2023-05-27 10:46:29'),
(7, 3, 'Football', 'Football', 'upload/sub-category-images/Untitle123d.png', 1, '2023-05-27 10:46:52', '2023-05-27 10:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 'Piece', 'Piece', 1, '2023-05-22 10:16:42', '2023-05-22 10:16:42'),
(2, 'Box', 'Box', 'Box', 1, '2023-05-22 10:16:49', '2023-05-22 10:16:49'),
(3, 'Kilogram', 'Kg', 'Kg', 1, '2023-05-22 10:17:02', '2023-05-22 10:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$mrGAI6n1W8ZTYDZrp3mCEeXksJNzZMUIpDyQkXG1YGsCjJXqJwo.G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15 11:16:40', '2023-04-15 11:16:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
