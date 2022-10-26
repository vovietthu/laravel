-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2021 lúc 02:29 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `technology`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2021-12-04 08:32:01', '$2y$10$bxEfWBsxKBRmN7q6KGSNQu7Wg/3ndCUaBTGPZUT2KqL4WG.eCoUzm', 'Vm6MHCxMPjHizVcQFBsn010L9SYqnONf3lC306lfPswdXtvd1qpCcqcP3eTe', '2021-12-04 08:32:01', '2021-12-04 08:32:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `sort_order`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Tin tuyển dụng', '<p>Tuyển dụng 10 ctv bán hàng</p>', 1, '2021-12-04 08:43:32', '2021-12-16 18:22:40', '/storage/images/articles/Lo-tin-Intel-se-xay-dung-nha-may-7-ty-do-o-Malaysia-cuu-nguy-ca-khu-vuc-2-218x150.jpg'),
(2, 'Khai trương cửa hàng mới', '<p>khai trương cửa hàng mới, tặng ngay voucher trị giá 200.000 VND</p>', 2, '2021-12-04 08:44:43', '2021-12-16 18:23:32', '/storage/images/articles/PlayStation-free-online-multiplayer-weekend-218x150.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Acer', '/storage/images/brands/acer.png', '2021-12-04 08:32:06', '2021-12-14 22:15:23'),
(2, 'Asus', '/storage/images/brands/asus.png', '2021-12-04 08:32:06', '2021-12-11 06:19:49'),
(3, 'Dell', '/storage/images/brands/dell-logo.png', '2021-12-04 08:32:06', '2021-12-14 20:25:31'),
(4, 'Logitech', '/storage/images/brands/logitech.png', '2021-12-04 08:32:06', '2021-12-11 06:21:12'),
(11, 'GIGABYTE', '/storage/images/brands/gigabyte.png', '2021-12-14 08:43:17', '2021-12-14 08:43:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `image_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '/storage/images/categories/laptop.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:20:53'),
(2, 'Chuột', '/storage/images/categories/chuot.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:21:01'),
(3, 'Bàn phím', '/storage/images/categories/banphim.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:21:17'),
(11, 'Màn hình', '/storage/images/categories/manhinh1.jpg', 1, '2021-12-14 08:31:06', '2021-12-14 23:19:40'),
(12, 'Ghế Gaming', '/storage/images/categories/ghe1.jpeg', 1, '2021-12-14 08:35:59', '2021-12-14 23:20:07'),
(13, 'Loa', '/storage/images/categories/loa.jpg', 1, '2021-12-14 08:37:57', '2021-12-14 08:37:57'),
(14, 'Tai nghe', '/storage/images/categories/tainghe.jpg', 1, '2021-12-14 08:38:10', '2021-12-14 08:38:10'),
(15, 'Lót chuột', '/storage/images/categories/lot1.jpg', 1, '2021-12-14 08:38:23', '2021-12-14 23:21:49'),
(16, 'RAM', '/storage/images/categories/Ram1.png', 1, '2021-12-14 08:39:13', '2021-12-14 23:22:00'),
(17, 'Card đồ họa', '/storage/images/categories/card1.png', 1, '2021-12-14 08:41:10', '2021-12-14 23:22:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 'sản phẩm rất tốt <3', '2021-12-14 20:49:38', '2021-12-14 20:49:38'),
(2, 2, 25, 'good', '2021-12-15 00:36:23', '2021-12-15 00:36:23'),
(3, 1, 19, 'đường sugar', '2021-12-16 10:23:32', '2021-12-16 10:23:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2021_11_18_171524_create_admins_table', 1),
(33, '2021_11_18_172426_create_categories_table', 1),
(34, '2021_11_18_172646_create_products_table', 1),
(35, '2021_11_26_181714_create_ships_table', 1),
(36, '2021_11_26_181916_create_comments_table', 1),
(37, '2021_11_26_181941_create_replies_table', 1),
(38, '2021_11_26_181950_create_orders_table', 1),
(39, '2021_11_26_181958_create_orders_detail_table', 1),
(40, '2021_11_29_124411_create_brands_table', 1),
(41, '2021_11_29_124412_add_brand_id_column_to_products_table', 1),
(42, '2021_11_30_183550_create_articles_table', 1),
(43, '2021_12_03_184931_create_vouchers_table', 1),
(44, '2021_12_03_185032_add_voucher_code_column_to_orders_table', 1),
(45, '2021_12_04_155612_create_wishlist_table', 2),
(46, '2021_12_17_010212_add_image_column_to_articles_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ship_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `ship_id`, `total`, `address`, `status`, `created_at`, `updated_at`, `voucher_code`) VALUES
('ch_3K30hkHEueodV3DA0vpfHmbU', 1, 1, 117857, 'An Khánh, Ninh Kiều, Cần Thơ', 2, '2021-12-04 09:03:22', '2021-12-16 18:13:12', NULL),
('ch_3K30pGHEueodV3DA1Jxbxzxq', 1, 2, 160414, 'An Khánh, Ninh Kiều, Cần Thơ', 2, '2021-12-04 09:11:08', '2021-12-04 09:12:07', NULL),
('ch_3K6s4VHEueodV3DA0N9COfhs', 2, 2, 22420000, 'sóc trăng', 2, '2021-12-15 00:38:44', '2021-12-16 18:13:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'ch_3K30hkHEueodV3DA0vpfHmbU', 1, 1, '2021-12-04 09:03:22', '2021-12-04 09:03:22'),
(5, 'ch_3K6s4VHEueodV3DA0N9COfhs', 13, 2, '2021-12-15 00:38:44', '2021-12-15 00:38:44'),
(6, 'ch_3K6s4VHEueodV3DA0N9COfhs', 3, 1, '2021-12-15 00:38:44', '2021-12-15 00:38:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nmthuanst@gmail.com', 'Xoc29ymXMVu9lisMUAxxsfXqli4wB8', NULL),
('nmthuanst@gmail.com', 'fcndgnN57z955qiTmChr5AN8DMywy5', NULL),
('nmthuanst@gmail.com', 'vxSCGqdkrMxuYBKc3ST4LrYYQK2rVz', NULL),
('nmthuanst@gmail.com', 'GnrI7wwwHmpUVafnKfy7ICNWvCrXI6', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_buy` int(11) NOT NULL DEFAULT 0,
  `type` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `image_path`, `description`, `qty`, `qty_buy`, `type`, `discount`, `status`, `created_at`, `updated_at`, `brand_id`) VALUES
(1, 'Chuột Logitech G102 Lightsync RGB Black', 400000, 2, '/storage/images/products/chuot-1.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: \">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Thương hiệu</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tên sản phẩm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech G102 Lightsync RGB</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Thiết kế</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Đối xứng - Ambidextrous</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Mắt đọc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Mercury Sensor</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Điểm ảnh trên 1 inch (DPI)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">8000</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>IPS</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">200</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Gia tốc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">30g</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tần số phản hồi</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">1000Hz</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Chất liệu vỏ</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Nhựa ABS</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Màu sắc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Đen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Số lượng nút bấm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Switch</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Omron</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tuổi thọ</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">50 triệu lần nhấn</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>LED</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">RGB Lightsync</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Kết nối</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">USB</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Độ dài dây (cm)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">210</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Kích thước (mm)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Dài 116.6 x Rộng 62.15 x Cao 38.2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Trọng lượng (gr)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">85g (không cable)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Phần mềm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech G-Hub</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 653, 867, NULL, NULL, 1, '2021-12-04 08:32:17', '2021-12-04 09:49:24', 4),
(3, 'Chuột Logitech G102 Lightsync RGB White', 400000, 2, '/storage/images/products/chuot-2.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: \">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Thương hiệu</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tên sản phẩm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech G102 Lightsync RGB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Thiết kế</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Đối xứng - Ambidextrous</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Mắt đọc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Mercury Sensor</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Điểm ảnh trên 1 inch (DPI)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">8000</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">IPS</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">200</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Gia tốc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">30g</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tần số phản hồi</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">1000Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Chất liệu vỏ</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Nhựa ABS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Màu sắc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Số lượng nút bấm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">6</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Switch</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Omron</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tuổi thọ</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">50 triệu lần nhấn</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">LED</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">RGB Lightsync</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Kết nối</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Độ dài dây (cm)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">210</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Kích thước (mm)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Dài 116.6 x Rộng 62.15 x Cao 38.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Trọng lượng (gr)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">85g (không cable)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Phần mềm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech G-Hub</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 817, 264, NULL, NULL, 1, '2021-12-04 08:32:17', '2021-12-15 00:38:44', 4),
(13, 'Laptop Acer Aspire 3 A315 56 37DV', 11000000, 1, '/storage/images/products/maytinh-1.jpg', '<p><span style=\"font-size:22px\"><strong>Thông số kỹ thuật:&nbsp;</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; height:0px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Thương hiệu</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">ACER</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Bảo hành</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">12 tháng</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Model</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">Acer Aspire 3 A315 56 37DV</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">CPU</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Intel Core i3-1005G1 1.2GHz up to 3.4GHz 4MB</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">RAM</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">4GB DDR4 2400MHz&nbsp;Onboard&nbsp;</span>( 1x onboard 4GB +&nbsp;<span style=\"color:rgb(0, 0, 0)\">1x SO-DIMM socket, up to 12GB SDRAM)</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Ổ cứng</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">256GB SSD M.2 PCIE, 1x slot SATA3 2.5\"</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Card đồ họa</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Intel UHD Graphics</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Màn hình</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">15.6\" FHD (1920 x 1080) Acer ComfyView LCD, Anti-Glare</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Cổng giao tiếp</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">1x USB 3.1, 2x USB 2.0, HDMI, RJ-45</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Ổ quang</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">None</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Audio</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Realtek High Definition</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Đọc thẻ nhớ</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">None</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Chuẩn LAN</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">10/100/1000 Mbps</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Chuẩn WIFI</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">802.11 ac</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Bluetooth</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">v4.2</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Webcam</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">HD Webcam</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Hệ điều hành</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Windows 10 Home</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Pin</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">3 Cell 36.7 Whr</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Trọng lượng</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">1.7 kg</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Màu sắc</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Shale Black</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Kích thước</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">363 x 247.5 x 19.9 (mm)</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 98, 0, NULL, NULL, 1, '2021-12-04 09:50:56', '2021-12-15 00:38:44', 1),
(14, 'Bàn phím Leopold FC660MPD Light Pink', 2800000, 3, '/storage/images/products/banphim-1.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Thương hiệu:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Leopold</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Model:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Leopold FC660MPD Light Pink</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Màu sắc:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Trắng - Hồng</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><span style=\"font-size:15px\"><strong><span style=\"color:rgb(0, 0, 0)\">Kết nối:</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\">Có dây</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Kiểu dáng:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">66 phím</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Size:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">TKL</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Đèn led:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Không LED</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Switch:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Cherry Switch&nbsp;MX Red</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Keycaps:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">PBT Double shot</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Dây:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Dài 2m</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Trọng lượng:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">800g</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Chất liệu</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Nhựa cao cấp</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 1000, 0, NULL, NULL, 1, '2021-12-04 09:52:16', '2021-12-04 09:52:16', 3),
(18, 'Màn hình Asus TUF GAMING VG249Q1A 24\" IPS 165Hz Gsync compatible chuyên game', 5790000, 11, '/storage/images/products/manhinh2.jpg', '<h2><strong><strong><span style=\"font-size:22px\">Thông số sản phẩm :</span></strong></strong></h2>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellspacing=\"0\" class=\"mce-item-table table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Kích thước màn hình</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">23,8</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\"><strong>Tỉ lệ khung hình</strong></span></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">16:9</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Màn hình hiển thị&nbsp;</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">527.04 x 296.46 mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\"><strong>Tấm nền</strong></span></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">IPS</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Góc hiển thị</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">178°/ 178°</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Độ phân giải&nbsp;</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">1920x1080</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\"><strong>Độ sáng</strong></span></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">250cd/㎡</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\"><strong>Loại màn hình</strong></span></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">LED</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong><span style=\"color:rgb(0, 0, 0)\">Màu sắc hiển thị</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">16.7 triệu&nbsp;màu sắc</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Thời gian phản hồi</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">1ms MPRT</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Tốc độ làm mới</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">165Hz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Tốc độ làm mới</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">165Hz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Không nhấp nháy</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">Có</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Pixel Pitch</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">0.2745mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Tương phản tĩnh&nbsp;</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">3840x2160</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Tương phản động</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">10000000:1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><span style=\"font-size:18px\"><strong>Đầu cắm</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">DisplayPort 1.2 x 1<br />\r\n			HDMI(v1.4) x 2<br />\r\n			Jack 3.5mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Tiêu thu điện</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">&lt;21W</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Chế độ tiết kiệm điện</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">&lt;0.5W</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Chế độ tắt nguồn</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">&nbsp;&lt;0.3W</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Hiệu điện thế</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">100-240V, 50/60Hz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Treo tường&nbsp;</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">100x100mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Loa</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">2Wx2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Khối lượng có chân đế</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">3.47 Kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Khối lượng không có chân đế</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">2.9 Kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240.094px\"><strong><span style=\"font-size:18px\">Khối lượng tịnh&nbsp;</span></strong></td>\r\n			<td style=\"vertical-align:top; width:1016.91px\"><span style=\"font-size:18px\">5.6 Kg</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 20, 0, NULL, NULL, 1, '2021-12-14 23:25:32', '2021-12-14 23:25:32', 2),
(19, 'Màn hình ACER ED272 A 27\" IPS 75Hz', 470000, 11, '/storage/images/products/acer_ed272_a_gearvn_022f47eb4a52442296f751b7749e39f1.jpg', '<p><strong><span style=\"font-size:15pt\">Thông số kỹ thuật:</span></strong></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Thương hiệu:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Acer</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"color:rgb(0, 0, 0)\"><strong><span style=\"font-size:16px\">Bảo hành:</span></strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">36 tháng</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Kích thước:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">27\"</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Độ phân giải:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">FullHD 1920x1080</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Tấm nền:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">IPS</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Tần số quét:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">75 Hz</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Thời gian phản hồi:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">4 ms</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Kiểu màn hình (phẳng/cong):</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Phẳng</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Độ sáng:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">250 nits</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Góc nhìn:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">178° (H) / 178° (V)</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\">Khả năng hiển thị màu sắc:</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">16.7 triệu màu</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Độ tương phản tĩnh:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">1000:1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Độ tương phản động:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">100,000,000:1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Cổng xuất hình:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">1 x VGA&nbsp;</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">1 x HDMI</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Tính năng đặc biệt:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Không</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Khối lượng:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Không kèm chân: 3.7 kg</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">Kèm chân đế: 3.96 kg</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Tiêu thụ điện:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">25W</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Kích thước chuẩn:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Không kèm chân: 612 x 452 x 49.3&nbsp;(mm)</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">Kèm chân đế: 612 x 463&nbsp;x 194&nbsp;(mm)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Phụ kiện đi kèm:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Hướng dẫn sử dụng</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">Cáp HDMI</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 200, 0, NULL, NULL, 1, '2021-12-14 23:26:52', '2021-12-14 23:26:52', 1),
(20, 'Loa di động chống nước JBL Boombox 2', 9000000, 13, '/storage/images/products/loa.jpg', '<h3><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật loa di động JBL Boombox 2:</strong></span></h3>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Hãng sản xuất:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">JBL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Model:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Boombox 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Loại:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><a href=\"https://gearvn.com/collections/loa-bluetooth\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration-line: none; background: transparent; max-width: 100%;\" title=\"Loa bluetooth\">Loa bluetooth</a>&nbsp;di động công suất lớn.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Cấu trúc âm thanh:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p>2 woofer có đường kính 10.16 cm</p>\r\n\r\n			<p>2 Tweeter có đường kính 2cm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Công suất:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p>2 x 40W khi dùng nguồn điện</p>\r\n\r\n			<p>2 x 30W khi dùng pin</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tần số đáp ứng:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">50 Hz -20kHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Signal-to-noise ratio:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">80dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Hỗ trợ:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p>A2DP 1.3</p>\r\n\r\n			<p>AVRCP 1.6</p>\r\n\r\n			<p>HFP 1.6</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Nguồn cấp điện:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">20V / 4A</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Chống nước:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">IPX7</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Bluetooth version</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Bluetooth&nbsp;5.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Pin:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Lithium-ion Ploymer (74Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Kích thước (H x W x D):</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">25,45 cm x 49,5 cm x 19,55cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Trọng lượng:</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">5,5 kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:27:51', '2021-12-14 23:27:51', 4);
INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `image_path`, `description`, `qty`, `qty_buy`, `type`, `discount`, `status`, `created_at`, `updated_at`, `brand_id`) VALUES
(21, 'Tai nghe DareU A710 RGB Wireless', 1500000, 14, '/storage/images/products/tainghe.jpg', '<h2><span style=\"font-size:24px\"><strong>Tai nghe DareU A710 RGB Wireless</strong></span></h2>\r\n\r\n<h3><span style=\"font-size:20px\"><strong>Thông số kỹ thuật:</strong></span></h3>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Thương hiệu:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">DareU</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Bảo hành:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">12 tháng</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Series/Model:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">A710 Wireless</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Màu sắc:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Đen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Kiểu tai nghe:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Over-ear</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Kiểu kết nối:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Không dây</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">LED:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">RGB&nbsp;</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Chuẩn kết nối:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">5.8GHz + Type-C + 3.5mm</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Microphone:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Có thể tháo rời</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Trở kháng:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">24 +- 15% (Ohm)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Chất liệu khung:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Nhựa</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Chất liệu đệm tai nghe:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Da mềm cao cấp</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Tương thích:</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Windows / MacOS / PS / Xbox / Switch / Android</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:210px\">\r\n			<p><strong><span style=\"font-size:16px\">Chức năng đặc biệt:&nbsp;</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:613px\">\r\n			<p><span style=\"font-size:16px\">Dung lượng pin 1400mAh; Thời lượng pin từ 10h-&gt;12h</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:28:54', '2021-12-14 23:28:54', 4),
(22, 'Ghế Gaming 1stPlayer FK1 Black Red', 5500000, 12, '/storage/images/products/ghe1.jpeg', '<p><span style=\"font-size:18px\"><strong>Thông số kỹ thuật :</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellspacing=\"0\" class=\"mce-item-table table table-bordered\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Hãng sản xuất</td>\r\n			<td style=\"vertical-align:top; width:739px\">1stPlayer</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Tên sản phẩm</td>\r\n			<td style=\"vertical-align:top; width:739px\">Ghế gaming 1stPlayer FK1 Black Red</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Màu sắc</td>\r\n			<td style=\"vertical-align:top; width:739px\">Đỏ đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Tải trọng tối đa</td>\r\n			<td style=\"vertical-align:top; width:739px\">160 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Chất liệu da</td>\r\n			<td style=\"vertical-align:top; width:739px\">Da PU cao cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Chất liệu khung chân</td>\r\n			<td style=\"vertical-align:top; width:739px\">Khung kim loại đúc nguyên khối, đệm bọt molded form và cut form , chân kim loại nguyên khối cao cấp, bánh xe yên tĩnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\"><br />\r\n			<br />\r\n			<br />\r\n			Tính năng đặc biệt</td>\r\n			<td style=\"vertical-align:top; width:739px\">Tay vịn 2D với khả năng điều chỉnh tối đa<br />\r\n			Có thể điều chỉnh góc tựa lưng (90 ° đến 170 °)<br />\r\n			Bọt định hình cao cấp<br />\r\n			Pít tông khí thủy lực cấp 4<br />\r\n			Khung chân thép nguyên khối chắc chắn<br />\r\n			Bánh xe bọc pu cho sàn cứng và mềm<br />\r\n			Lõi thép bền bỉ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Phù hợp với</td>\r\n			<td style=\"vertical-align:top; width:739px\">Người cao dưới 1,75m và nặng dưới 80 kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:29:56', '2021-12-14 23:29:56', 11),
(23, '(32GB DDR5 2x16GB 6000) RAM G.Skill Trident Z5 RGB DDR5', 10490000, 16, '/storage/images/products/Ram1.png', '<p><span style=\"font-size:18px\"><strong>Thông số kỹ thuật :</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellspacing=\"0\" class=\"mce-item-table table table-bordered\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Hãng sản xuất</td>\r\n			<td style=\"vertical-align:top; width:739px\">1stPlayer</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Tên sản phẩm</td>\r\n			<td style=\"vertical-align:top; width:739px\">Ghế gaming 1stPlayer FK1 Black Red</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Màu sắc</td>\r\n			<td style=\"vertical-align:top; width:739px\">Đỏ đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Tải trọng tối đa</td>\r\n			<td style=\"vertical-align:top; width:739px\">160 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Chất liệu da</td>\r\n			<td style=\"vertical-align:top; width:739px\">Da PU cao cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Chất liệu khung chân</td>\r\n			<td style=\"vertical-align:top; width:739px\">Khung kim loại đúc nguyên khối, đệm bọt molded form và cut form , chân kim loại nguyên khối cao cấp, bánh xe yên tĩnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\"><br />\r\n			<br />\r\n			<br />\r\n			Tính năng đặc biệt</td>\r\n			<td style=\"vertical-align:top; width:739px\">Tay vịn 2D với khả năng điều chỉnh tối đa<br />\r\n			Có thể điều chỉnh góc tựa lưng (90 ° đến 170 °)<br />\r\n			Bọt định hình cao cấp<br />\r\n			Pít tông khí thủy lực cấp 4<br />\r\n			Khung chân thép nguyên khối chắc chắn<br />\r\n			Bánh xe bọc pu cho sàn cứng và mềm<br />\r\n			Lõi thép bền bỉ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:89px\">Phù hợp với</td>\r\n			<td style=\"vertical-align:top; width:739px\">Người cao dưới 1,75m và nặng dưới 80 kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 100, 0, NULL, NULL, 1, '2021-12-14 23:31:28', '2021-12-14 23:31:28', 2),
(24, 'GIGABYTE GeForce GTX 1650 MINI ITX 4G', 6490000, 17, '/storage/images/products/card1.png', '<h1><strong><span style=\"font-size:28px\">Card đồ họa GIGABYTE GeForce GTX 1650 MINI ITX&nbsp;4G</span></strong></h1>\r\n\r\n<h2><span style=\"font-size:22px\"><strong>Thông số kỹ thuật :&nbsp;</strong></span></h2>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>GPU</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">GeForce® GTX 1650</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>GPU Clock</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">1665 MHz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Số lượng đơn vị xử lý</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">896</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Memory Clock</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">8002 MHz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Bộ nhớ</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">4 GB&nbsp;GDDR5</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Giao diện bộ nhớ</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">128 bit</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Memory Bandwidth (GB/sec)</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">128 GB/s</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Chuẩn Bus</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">PCI-E 3.0 x 16</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Độ phân giải tối đa</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">7680x4320@60Hz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Số lượng màn hình hỗ trợ</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">3</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Kích thước chuẩn</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">L=152 W=114 H=36 mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>DirectX</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">12</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>OpenGL</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">4.6</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Nguồn tối thiểu</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">300W</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Power Connectors</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">6 Pin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Cổng giao tiếp</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">DisplayPort 1.4 *1<br />\r\n			HDMI 2.0b *2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>SLI support</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">No</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:247px\"><span style=\"font-size:18px\"><strong>Phụ kiện</strong></span></td>\r\n			<td style=\"vertical-align:top; width:313px\"><span style=\"font-size:15px\">1. Sách hướng dẫn<br />\r\n			2. Đĩa CD Driver</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:32:25', '2021-12-14 23:32:25', 11),
(25, 'Laptop Asus ZenBook UX325EA KG538W', 15990000, 1, '/storage/images/products/laptop3.jpg', '<h2><strong><span style=\"font-size:22px\">Laptop Asus ZenBook UX325EA KG538W</span></strong></h2>\r\n\r\n<h2><span style=\"color:rgb(0, 0, 0); font-size:15pt\"><strong>Thông số kỹ thuật:&nbsp;</strong></span></h2>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration-line: none; background: transparent; max-width: 100%;\" target=\"_blank\"><span style=\"font-size:18px\"><strong>CPU</strong></span></a>:</td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Intel® Core™ i5-1135G7 (4.20GHz, 8 MB cache, 4 cores 8 threads)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><a href=\"https://gearvn.com/collections/ram-pc\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration-line: none; background: transparent; max-width: 100%;\" target=\"_blank\"><span style=\"font-size:18px\"><strong>RAM</strong></span></a>:</td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">8GB 4266MHz LPDDR4X</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Ổ cứng:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">512GB PCIe® NVMe™ 3.0 x2 M.2&nbsp;<a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration-line: none; background: transparent; max-width: 100%;\" target=\"_blank\">SSD</a></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Màn hình:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">13.3\", 1920 x 1080 Pixel, OLED, 60 Hz, 400 nits, OLED</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><a href=\"https://gearvn.com/collections/vga-card-man-hinh\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration-line: none; background: transparent; max-width: 100%;\" target=\"_blank\"><span style=\"font-size:18px\"><strong>Card màn hình</strong></span></a>:</td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Intel® Iris® Xe Graphics</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Wireless:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Intel WiFi 6 with Gig+ performance (802.11ax)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>LAN:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Bluetooth:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Bluetooth 5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><strong><span style=\"font-size:18px\">Webcam:</span></strong></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Camera IRHD webcam</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Cổng kết nối:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">2 x Thunderbolt™ 4 USB-C® (up to 40Gbps)<br />\r\n			1 x USB 3.2 Gen 1 Type-A (up to 5Gbps)<br />\r\n			1 x Standard HDMI<br />\r\n			1 x MicroSD card reader</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Pin:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">4-cell, 65WHrs</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Hệ điều hành:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Windows 11 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Kích thước:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">30.4 x 20.3 x 13.9 cm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Trọng lượng:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">1.1 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:216px\"><span style=\"font-size:18px\"><strong>Màu sắc:</strong></span></td>\r\n			<td style=\"vertical-align:top; width:618px\"><span style=\"font-size:18px\">Xám đen</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:34:26', '2021-12-14 23:34:26', 2),
(26, 'Ghế Gaming 1stPlayer FK1 Black Blue', 3590000, 12, '/storage/images/products/ghe2.jpeg', '<h3><span style=\"font-size:15pt\"><strong>THÔNG SỐ KĨ THUẬT</strong></span></h3>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellspacing=\"0\" class=\"mce-item-table table table-bordered\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); bottom:20px; font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Hãng sản xuất:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">1stPlayer</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Sản phẩm:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">FK1 Black Blue</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\">Màu sắc</span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Xanh-Đen</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Chất liệu:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\">\r\n			<p><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Khung kim loại&nbsp;</span></span></p>\r\n\r\n			<p><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Đệm cao su mật độ cao</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Phần kê tay:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">2D&nbsp;(Up/Down, Swivel)</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Góc ngả:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">90°-180°</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Kích thước ghế:&nbsp;</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">84x65.5x29 cm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\">Độ rộng lưng ghế:</span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">65.5mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\">Kích thước bánh xe:</span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">60mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Tải trọng</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">160Kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\">Trọng lượng&nbsp;</span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\">23kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:484.609px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Chất liệu khung ghế:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:772.391px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">kim loại</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 50, 0, NULL, NULL, 1, '2021-12-14 23:35:38', '2021-12-14 23:35:38', 4),
(27, 'ASUS ROG Strix GeForce RTX​ 3070 Ti O8G GDDR6X', 30990000, 17, '/storage/images/products/card2.png', '<h2><span style=\"font-size:22px\"><strong>Card màn hình&nbsp;ASUS ROG Strix GeForce RTX​ 3070Ti O8G GDDR6X</strong></span></h2>\r\n\r\n<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Nhân đồ họa</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><br />\r\n			<span style=\"font-size:16px\">NVIDIA® GeForce RTX™ 3070 Ti</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Băng thông</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><br />\r\n			<span style=\"font-size:16px\">PCI Express 4.0</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">OpenGL</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">OpenGL®4.6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Bộ nhớ</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">8GB GDDR6X</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Tốc độ</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Chế độ OC - 1875 MHz (Xung tăng cường)<br />\r\n			Chế độ Chơi Game - 1845 MHz (Xung tăng cường)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">CUDA</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><br />\r\n			<span style=\"font-size:16px\">6144</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Tốc độ bộ nhớ</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">19 Gbps</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Giao diện bộ nhớ</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">256-bit</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Độ phân giải</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Độ phân giải Kỹ thuật Số Tối đa 7680 x 4320</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Cổng kết nối</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Có x 2 (HDMI 2.1) Có x 2 (HDMI 2.1)</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">Có x 3 (Native DisplayPort 1.4a)</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">Hỗ trợ HDCP Có (2.3)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Hỗ trợ hiển thị tối đa</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">4</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Hỗ trợ NVlink / Crossfire</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">No</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Phụ kiện</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">1 x ROG Velcro Hook &amp; Loop<br />\r\n			1 x Thẻ bộ sưu tập<br />\r\n			1 x Hướng dẫn thiết lập nhanh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Kích thước</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><br />\r\n			<span style=\"font-size:16px\">318.5 x 140.1 x 57.78 mm<br />\r\n			12.53 x 5.51 x 2.27 inch</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">PSU được đề xuất</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">750W</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Đầu nối nguồn</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">3 x 8-pin</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><strong><span style=\"font-size:16px\">Khe cắm</span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><br />\r\n			<span style=\"font-size:16px\">Khe 2.9</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 10, 0, NULL, NULL, 1, '2021-12-14 23:37:25', '2021-12-14 23:37:25', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ships`
--

CREATE TABLE `ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ships`
--

INSERT INTO `ships` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Grap', 10000, '2021-12-04 09:02:28', '2021-12-04 09:02:28'),
(2, 'Gojeck', 20000, '2021-12-04 09:02:37', '2021-12-04 09:02:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `provider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `sex`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thuận Nguyễn', 'nmthuanst@gmail.com', NULL, '$2y$10$FiMtVi6c5zfTeP5vxB29R.Q6NFlIPV3xmUrXLW4pOJvDKqlwywOGK', '0123456789', 0, NULL, NULL, NULL, 'qmnBX2Q8gqpZtVJU2bEEBgAte6ldGh3lhH8ywwzDTrxR05jiVvw4jOggzS8P', '2021-12-04 08:39:22', '2021-12-16 18:22:05'),
(2, 'Nguyễn Văn Tèo', 'teo@gmail.com', NULL, '$2y$10$QdG8Z/u0qKPF/nBWcYVk6OaHlc4Vh7nwT4Z8oRgK.Wj8zj2YpCMXi', '0909080706', 0, NULL, NULL, NULL, 'jzLi6Yr8x19NkcUaQSf62nahHSvwHmU2EcHuRKtjKfUiiQZLdMc3HG22J5dZ', '2021-12-15 00:34:05', '2021-12-15 00:34:05'),
(3, 'Nguyễn Thành Đạt', 'datnt@gmail.com', NULL, '$2y$10$fxaT5d0MwbtqcZ2WFU9Qqez0DeQVHNgBjgNI00DID.dL88kboVEne', '0786899889', 0, NULL, NULL, NULL, '5eAQxIR3Nl6Pk12sGuASMcvYBje1e33mbXmG4hB10gKAaafs399nXPyLWxrp', '2021-12-16 10:24:42', '2021-12-16 10:24:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`code`, `price`, `qty`, `created_at`, `updated_at`) VALUES
('1212', 100000, 10, '2021-12-14 21:05:09', '2021-12-14 21:05:09'),
('birthday', 10000, 198, '2021-12-04 08:42:52', '2021-12-04 09:11:08'),
('welcome', 200000, 100, '2021-12-04 08:42:10', '2021-12-04 08:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2021-12-11 06:00:28', '2021-12-11 06:00:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_ship_id_index` (`ship_id`),
  ADD KEY `orders_voucher_code_index` (`voucher_code`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_detail_order_id_index` (`order_id`),
  ADD KEY `orders_detail_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_index` (`comment_id`);

--
-- Chỉ mục cho bảng `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`code`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_product_id_index` (`product_id`),
  ADD KEY `wishlist_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ships`
--
ALTER TABLE `ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ship_id_foreign` FOREIGN KEY (`ship_id`) REFERENCES `ships` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_voucher_code_foreign` FOREIGN KEY (`voucher_code`) REFERENCES `vouchers` (`code`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
