-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3340
-- Thời gian đã tạo: Th5 24, 2024 lúc 09:52 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `volcano`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_login` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$MqNO1XoyoPu0aCIhIOR4audQBKriAbrNJG3P/awxQMQ5N4dDogmZ2', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', '1', '1', '2023-10-19__logoc.png', NULL, '2023-10-13 00:24:19'),
(2, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$9e6/30GrauqWj4L7B1.Pyun6ixmHYTpyWYhwrArbzRYxoAgpW637y', '092311534', NULL, NULL, NULL, '2', '1', NULL, '2020-06-05 22:48:35', '2023-10-13 00:24:00'),
(3, 'Nhân Viên 2', 'nhanvien2@gmail.com', '$2y$10$rdKUQp1yZMRweEaiqQa0s.Ca4PAANRVdWqLd9VmoHV25uYoL.lF6.', '0989275330', NULL, NULL, NULL, '2', '1', NULL, '2023-07-31 19:52:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_menu_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_description` text COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `a_position_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_position_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `a_position_2`, `a_position_1`, `created_at`, `updated_at`) VALUES
(1, 'Top 7 Laptop Được Review Tốt Hiện Nay', 'top-7-laptop-duoc-review-tot-hien-nay', '1', '1', '1', '0', NULL, '2024-05-15__3.jpg', 'aaaa', '1', '0', '2023-08-03 20:37:28', '2024-05-14 21:36:05'),
(2, 'Những Công Dụng Của Laptop Có Thể Bạn Chưa Biết', 'nhung-cong-dung-cua-laptop-co-the-ban-chua-biet', '1', '1', '1', '0', NULL, '2024-05-15__2.jpg', 'aaa', '1', '0', '2023-08-03 20:38:34', '2024-05-14 21:36:20'),
(3, 'Top 9 Laptop Được Tin Dùng', 'top-9-laptop-duoc-tin-dung', '1', '1', '1', '0', NULL, '2024-05-15__6.jpg', 'aa', '1', '1', '2023-08-03 20:39:23', '2024-05-14 21:36:34'),
(4, 'Top 4 Dòng Laptop Tốt Nhất', 'top-4-dong-laptop-tot-nhat', '1', '1', '1', '0', NULL, '2024-05-15__2.jpg', 'aaa', '1', '1', '2023-08-03 20:40:18', '2024-05-14 21:36:49'),
(5, 'Top Laptop Chất Lượng Hàng Đầu Hiện Nay', 'top-laptop-chat-luong-hang-dau-hien-nay', '1', '1', '1', '0', NULL, '2024-05-15__2.jpg', '<p><strong>Nước s&uacute;c miệng của Mỹ</strong>&nbsp;trong nhiều năm qua lu&ocirc;n nằm trong top đầu sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-rang-mieng-c323.html\" target=\"_blank\">chăm s&oacute;c răng miệng</a>&nbsp;chất lượng v&agrave; b&aacute;n chạy tr&ecirc;n to&agrave;n thế giới, được c&aacute;c b&aacute;c sĩ nha khoa khuy&ecirc;n d&ugrave;ng. Tại Việt Nam, c&oacute; những nước s&uacute;c miệng xứ cờ hoa n&agrave;o thực sự hiệu quả, c&ugrave;ng xem b&agrave;i viết dưới đ&acirc;y nh&eacute;.&nbsp;</p>', '1', '0', '2023-08-03 20:41:42', '2024-05-14 21:37:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atb_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atb_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'LOREAL', 'loreal', '1', '1', '2023-08-03 19:34:52', NULL),
(2, 'Pháp', 'phap', '2', '1', '2023-08-03 19:37:13', NULL),
(3, 'Trung Quốc', 'trung-quoc', '3', '1', '2023-08-03 19:37:24', NULL),
(4, 'Nam & Nữ', 'nam-nu', '4', '1', '2023-08-03 19:37:35', NULL),
(5, 'BIODERMA', 'bioderma', '1', '1', '2023-08-03 19:46:06', NULL),
(6, 'Việt Nam', 'viet-nam', '3', '1', '2023-08-03 19:46:13', NULL),
(7, 'Nhật Bản', 'nhat-ban', '3', '1', '2023-08-03 19:46:19', NULL),
(8, 'LA ROCHE-POSAY', 'la-roche-posay', '1', '1', '2023-08-03 19:47:40', NULL),
(9, 'France', 'france', '3', '1', '2023-08-03 19:47:49', NULL),
(10, 'Cannada', 'cannada', '2', '1', '2023-08-03 19:52:17', NULL),
(11, 'Hoa Kỳ', 'hoa-ky', '2', '1', '2023-08-03 19:52:24', NULL),
(12, 'Cosrx', 'cosrx', '1', '1', '2023-08-03 19:55:35', NULL),
(13, 'Hàn Quốc', 'han-quoc', '2', '1', '2023-08-03 19:55:45', NULL),
(14, 'Korea', 'korea', '3', '1', '2023-08-03 19:55:55', NULL),
(15, 'CeraVe', 'cerave', '1', '1', '2023-08-03 19:58:08', NULL),
(16, 'Mỹ', 'my', '2', '1', '2023-08-03 19:58:16', NULL),
(17, 'SVR', 'svr', '1', '1', '2023-08-03 20:00:09', NULL),
(18, 'SIMPLE', 'simple', '1', '1', '2023-08-03 20:02:25', NULL),
(19, 'Anh', 'anh', '2', '1', '2023-08-03 20:02:33', NULL),
(20, 'Poland', 'poland', '3', '2', '2023-08-03 20:02:43', '2023-10-11 11:11:30'),
(21, 'Klairs', 'klairs', '1', '1', '2023-08-03 20:07:02', NULL),
(22, 'Neutrogena', 'neutrogena', '1', '1', '2023-08-03 20:09:27', NULL),
(23, 'DHC', 'dhc', '1', '1', '2023-08-03 20:19:32', NULL),
(24, 'Japan', 'japan', '2', '1', '2023-08-03 20:19:38', NULL),
(25, 'Black Rouge', 'black-rouge', '1', '1', '2023-08-04 00:02:15', NULL),
(26, 'Nam', 'nam', '4', '1', '2023-08-04 00:02:23', NULL),
(27, 'Nữ', 'nu', '4', '1', '2023-08-04 00:02:28', '2023-10-11 11:06:00'),
(29, '3CE', '3ce', '1', '1', '2023-10-19 01:09:06', NULL),
(30, 'Maybelline', 'maybelline', '1', '1', '2023-10-30 11:49:58', NULL),
(31, 'Cetaphil', 'cetaphil', '1', '1', '2023-10-30 12:14:55', NULL),
(32, 'Canada', 'canada', '3', '1', '2023-10-30 12:15:13', NULL),
(33, 'USA', 'usa', '3', '11', '2023-10-30 23:09:56', '2023-10-30 23:10:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục máy tính 1', 'danh-muc-may-tinh-1', '2024-05-15__1.jpg', NULL, NULL, '0', '1', '1', '2023-08-03 19:30:43', '2024-05-14 21:32:58'),
(2, 'Danh mục máy tính 2', 'danh-muc-may-tinh-2', '2024-05-15__2.jpg', NULL, NULL, '0', '1', '1', '2023-08-03 19:31:08', '2024-05-14 21:33:04'),
(3, 'Danh mục máy tính 3', 'danh-muc-may-tinh-3', '2024-05-15__4.jpg', NULL, NULL, '0', '1', '1', '2023-08-03 19:31:26', '2024-05-14 21:33:12'),
(4, 'Danh mục máy tính 4', 'danh-muc-may-tinh-4', '2024-05-15__7.jpg', NULL, NULL, '0', '0', '1', '2023-08-03 19:31:55', '2024-05-14 21:33:31'),
(5, 'Danh mục máy tính 5', 'danh-muc-may-tinh-5', '2024-05-15__4.jpg', NULL, NULL, '0', '0', '1', '2023-08-03 19:32:19', '2024-05-14 21:33:39'),
(6, 'Danh mục máy tính 6', 'danh-muc-may-tinh-6', '2024-05-15__5.jpg', NULL, NULL, '0', '0', '1', '2023-08-03 19:32:40', '2024-05-14 21:33:48'),
(9, 'Danh mục máy tính 7', 'danh-muc-may-tinh-7', '2024-05-15__5.png', NULL, NULL, '0', '1', '1', '2023-08-03 19:33:45', '2024-05-14 21:33:58'),
(11, 'Danh mục máy tính 8', 'danh-muc-may-tinh-8', '2024-05-15__1.jpg', NULL, NULL, '0', '0', '1', '2023-10-10 12:14:42', '2024-05-14 21:34:06'),
(12, 'Danh mục máy tính 9', 'danh-muc-may-tinh-9', '2024-05-15__6.jpg', NULL, NULL, '0', '0', '1', '2023-10-10 12:16:00', '2024-05-14 21:34:13'),
(13, 'Danh mục máy tính 10', 'danh-muc-may-tinh-10', '2024-05-15__2.jpg', NULL, NULL, '0', '0', '1', '2023-10-11 11:25:44', '2024-05-14 21:34:21'),
(14, 'Danh mục máy tính 12', 'danh-muc-may-tinh-12', '2024-05-15__3.jpg', NULL, NULL, '0', '0', '1', '2023-10-11 11:26:49', '2024-05-14 21:34:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_like` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_disk_like` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'good', '0', '6', '0', '3', '0', '0', '2023-09-15 08:10:05', NULL),
(4, NULL, NULL, 'có ship CT ko', '0', '24', '0', '4', '0', '0', '2023-10-05 10:43:44', NULL),
(6, NULL, NULL, 'freeship CT hem', '0', '2', '0', '3', '0', '0', '2023-10-11 11:31:04', NULL),
(7, NULL, NULL, '@Lê Thị Chúc Nhi: có ạ', '6', '2', '0', '3', '0', '0', '2023-10-11 11:31:16', NULL),
(8, NULL, NULL, 'còn hàng ko ạ', '0', '3', '0', '6', '0', '0', '2023-10-24 11:11:19', NULL),
(9, NULL, NULL, 'a', '0', '24', '0', '9', '0', '0', '2023-11-02 00:00:55', NULL),
(10, NULL, NULL, 'asdas', '0', '24', '0', '9', '0', '0', '2023-11-02 00:00:58', NULL),
(11, NULL, NULL, 'asdasd', '0', '24', '0', '9', '0', '0', '2023-11-02 00:00:59', NULL),
(12, NULL, NULL, '12312', '0', '24', '0', '9', '0', '0', '2023-11-02 00:01:01', NULL),
(13, NULL, NULL, '123', '0', '24', '0', '9', '0', '0', '2023-11-02 00:01:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `c_name`, `created_at`, `updated_at`) VALUES
(2, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Nước hoa mùi quá', 'Lê Thị Chúc Nhi', '2023-10-11 11:46:29', NULL),
(3, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Trả lời tui', 'Lê Thị Chúc Nhi', '2023-10-11 11:48:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint UNSIGNED NOT NULL,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_number_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_date_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_date_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi tháng 8', '10', '2023-08-05 08:12:00', '2023-08-10 08:12:00', '10', '2023-08-04 18:12:26', '2023-08-04 18:12:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-05-15__b1.png', 'https://images.', '1', '0', '0', '0', '2024-05-14 21:39:26', '2024-05-14 21:39:26'),
(2, 'Event 2', '2024-05-15__b2.png', 'http://127.0.0.1:8000/san-pham?k=', '0', '1', '0', '0', '2024-05-14 21:39:30', '2024-05-14 21:39:30'),
(3, 'Event 3', '2024-05-15__b3.png', 'https://images.', '0', '0', '1', '0', '2024-05-14 21:39:34', '2024-05-14 21:39:34'),
(4, 'Event4', '2024-05-15__b4.png', 'http://127.0.0.1:8000/san-pham', '0', '0', '0', '0', '2024-05-14 21:39:39', '2024-05-14 21:39:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `w_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_time_exports` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang công nghệ', 'cam-nang-cong-nghe', NULL, NULL, NULL, '0', '1', '2023-08-03 20:36:14', '2024-05-14 21:35:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_23_142712_create_pay_histories_table', 1),
(6, '2024_05_23_142718_create_pay_ins_table', 1),
(7, '2024_05_23_142721_create_pay_outs_table', 1),
(8, '2024_05_23_142837_create_admins_table', 1),
(9, '2024_05_23_142847_create_articles_table', 1),
(10, '2024_05_23_142856_create_attributes_table', 1),
(11, '2024_05_23_142903_create_categories_table', 1),
(12, '2024_05_23_142916_create_comments_table', 1),
(13, '2024_05_23_142922_create_contacts_table', 1),
(14, '2024_05_23_142928_create_discount_codes_table', 1),
(15, '2024_05_23_142934_create_events_table', 1),
(16, '2024_05_23_142939_create_exports_table', 1),
(17, '2024_05_23_142946_create_keywords_table', 1),
(18, '2024_05_23_142951_create_menus_table', 1),
(19, '2024_05_23_142955_create_orders_table', 1),
(20, '2024_05_23_143003_create_page_statics_table', 1),
(21, '2024_05_23_143011_create_products_table', 1),
(22, '2024_05_23_143022_create_product_attributes_table', 1),
(23, '2024_05_23_143030_create_product_keywords_table', 1),
(24, '2024_05_23_143035_create_ratings_table', 1),
(25, '2024_05_23_143040_create_slides_table', 1),
(26, '2024_05_23_143051_create_social_accounts_table', 1),
(27, '2024_05_23_143103_create_suppliers_table', 1),
(28, '2024_05_23_143109_create_transactions_table', 1),
(29, '2024_05_23_143129_create_user_favourites_table', 1),
(30, '2024_05_23_143141_create_warehouses_table', 1),
(31, '2024_05_24_145111_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `od_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_sale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(2, '1', '24', '20', '1', '272000', '2023-08-04 01:51:48', NULL),
(4, '1', '22', '19', '1', '238140', '2023-08-04 01:51:48', NULL),
(5, '1', '2', '0', '1', '159000', '2023-08-04 01:51:48', NULL),
(8, '4', '24', '20', '1', '272000', '2023-09-15 04:48:09', NULL),
(10, '6', '24', '20', '1', '272000', '2023-10-05 10:54:05', NULL),
(13, '9', '24', '20', '1', '272000', '2023-10-06 02:43:41', NULL),
(14, '10', '5', '4', '1', '377280', '2023-10-06 04:18:48', NULL),
(16, '12', '24', '20', '1', '272000', '2023-10-06 04:51:55', NULL),
(17, '13', '5', '4', '1', '377280', '2023-10-09 01:18:51', NULL),
(18, '14', '22', '19', '1', '238140', '2023-10-10 07:11:34', NULL),
(19, '15', '22', '19', '1', '238140', '2023-10-10 07:11:50', NULL),
(20, '16', '2', '0', '2', '159000', '2023-10-13 01:24:06', NULL),
(21, '16', '24', '20', '1', '272000', '2023-10-13 01:24:06', NULL),
(23, '18', '4', '15', '1', '416500', '2023-10-20 01:52:59', NULL),
(27, '20', '11', '10', '1', '315000', '2023-10-30 22:02:22', NULL),
(31, '21', '55', '5', '1', '380000', '2023-11-02 00:11:56', NULL),
(32, '21', '54', '10', '1', '288000', '2023-11-02 00:11:56', NULL),
(33, '22', '15', '10', '1', '38700', '2023-12-03 02:26:14', NULL),
(34, '22', '9', '10', '1', '432000', '2023-12-03 02:26:14', NULL),
(35, '23', '24', '10', '1', '306000', '2024-02-22 20:34:50', NULL),
(36, '24', '9', '10', '2', '432000', '2024-05-14 21:42:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_credit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_debit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', '1', '0', '885540', '0', NULL, '1', '8', '2023', '2023-08-04 01:51:48', NULL),
(2, 'PAYOUT2', '2', '0', '1654628', '0', NULL, '1', '8', '2023', '2023-08-04 18:13:23', NULL),
(3, 'PAYOUT3', '3', '0', '272000', '0', NULL, '1', '9', '2023', '2023-09-15 04:48:09', NULL),
(4, 'PAYOUT4', '3', '0', '134400', '0', NULL, '1', '9', '2023', '2023-09-15 05:03:43', NULL),
(5, 'PAYOUT5', '4', '0', '272000', '0', NULL, '1', '10', '2023', '2023-10-05 10:54:05', NULL),
(6, 'PAYOUT6', '5', '0', '134400', '0', NULL, '1', '10', '2023', '2023-10-05 11:00:53', NULL),
(7, 'PAYOUT7', '3', '0', '377280', '0', NULL, '1', '10', '2023', '2023-10-06 04:18:48', NULL),
(8, 'PAYOUT8', '3', '0', '238140', '0', NULL, '1', '10', '2023', '2023-10-06 04:33:10', NULL),
(9, 'PAYOUT9', '3', '0', '272000', '0', NULL, '1', '10', '2023', '2023-10-06 04:51:55', NULL),
(10, 'PAYOUT10', '3', '0', '238140', '0', NULL, '1', '10', '2023', '2023-10-10 07:11:50', NULL),
(11, 'PAYOUT11', '3', '0', '590000', '0', NULL, '1', '10', '2023', '2023-10-13 01:24:06', NULL),
(12, 'PAYOUT12', '3', '0', '281600', '0', NULL, '1', '10', '2023', '2023-10-20 01:48:20', NULL),
(13, 'PAYOUT13', '3', '0', '416500', '0', NULL, '1', '10', '2023', '2023-10-20 01:52:59', NULL),
(14, 'PAYOUT14', '7', '0', '162000', '0', NULL, '1', '10', '2023', '2023-10-23 00:22:28', NULL),
(15, 'PAYOUT15', '8', '0', '908000', '0', NULL, '1', '10', '2023', '2023-10-30 22:02:22', NULL),
(16, 'PAYOUT16', '9', '0', '1047800', '0', NULL, '1', '11', '2023', '2023-11-02 00:11:56', NULL),
(17, 'PAYOUT17', '9', '0', '470700', '0', NULL, '1', '12', '2023', '2023-12-03 02:26:14', NULL),
(18, 'PAYOUT18', '9', '0', '864000', '0', NULL, '1', '5', '2024', '2024-05-14 21:42:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` bigint UNSIGNED NOT NULL,
  `pi_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_money` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_meta_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` bigint UNSIGNED NOT NULL,
  `po_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_money` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_meta_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '885540', '', '1', '8', '2023', '2023-08-04 01:51:48', NULL),
(2, '2', '3', '1654628', '', '1', '8', '2023', '2023-08-04 18:13:23', NULL),
(3, '3', '4', '272000', '', '1', '9', '2023', '2023-09-15 04:48:09', NULL),
(4, '3', '5', '134400', '', '1', '9', '2023', '2023-09-15 05:03:43', NULL),
(5, '4', '6', '272000', '', '1', '10', '2023', '2023-10-05 10:54:05', NULL),
(6, '5', '7', '134400', '', '1', '10', '2023', '2023-10-05 11:00:53', NULL),
(7, '3', '10', '377280', '', '1', '10', '2023', '2023-10-06 04:18:48', NULL),
(8, '3', '11', '238140', '', '1', '10', '2023', '2023-10-06 04:33:10', NULL),
(9, '3', '12', '272000', '', '1', '10', '2023', '2023-10-06 04:51:55', NULL),
(10, '3', '15', '238140', '', '1', '10', '2023', '2023-10-10 07:11:50', NULL),
(11, '3', '16', '590000', '', '1', '10', '2023', '2023-10-13 01:24:06', NULL),
(12, '3', '17', '281600', '', '1', '10', '2023', '2023-10-20 01:48:20', NULL),
(13, '3', '18', '416500', '', '1', '10', '2023', '2023-10-20 01:52:59', NULL),
(14, '7', '19', '162000', '', '1', '10', '2023', '2023-10-23 00:22:28', NULL),
(15, '8', '20', '908000', '', '1', '10', '2023', '2023-10-30 22:02:22', NULL),
(16, '9', '21', '1047800', '', '1', '11', '2023', '2023-11-02 00:11:56', NULL),
(17, '9', '22', '470700', '', '1', '12', '2023', '2023-12-03 02:26:14', NULL),
(18, '9', '24', '864000', '', '1', '5', '2024', '2024-05-14 21:42:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `pro_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_supplier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_attribute_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_value_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_attribute_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_value_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_attribute_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_value_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_warehouse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_allow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_fulfillment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_price_compare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_require_shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_image_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_short_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_code_option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_sale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_price_entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_pay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_age_review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_alias`, `pro_name`, `pro_content`, `pro_supplier`, `pro_category`, `pro_tag`, `pro_active`, `pro_attribute_1`, `pro_value_1`, `pro_attribute_2`, `pro_value_2`, `pro_attribute_3`, `pro_value_3`, `pro_sku`, `pro_warehouse`, `pro_number`, `pro_allow`, `pro_fulfillment`, `pro_price`, `pro_price_compare`, `pro_require_shipping`, `pro_vat`, `pro_barcode`, `pro_image`, `pro_image_title`, `pro_seo_title`, `pro_seo_description`, `pro_weight`, `pro_weight_unit`, `pro_image_version`, `pro_short_description`, `pro_code`, `pro_code_option`, `pro_sale`, `pro_slug`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_pay`, `pro_description`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `pro_resistant`, `pro_energy`, `pro_country`, `pro_link`, `created_at`, `updated_at`) VALUES
(12, 'dung-cu-got-mat-dua-chu-v', 'Dụng cụ gọt mắt dứa chữ V', '<p><strong><em>Dụng cụ gọt mắt dứa chữ V</em></strong></p>\n<p>Công cụ độc đáo và tiện lợi giúp bạn dễ dàng loại bỏ phần mắt của quả dứa một cách nhanh chóng và chính xác.</p>\n<p>Với thiết kế chữ V đặc biệt, dụng cụ này giúp bạn có được các lát dứa mỏng và đều đặn một cách dễ dàng, tạo ra những lát mắt dứa đẹp mắt và hấp dẫn.</p>\n<p>Với lưỡi dao sắc bén và chất liệu chắc chắn, dụng cụ gọt mắt dứa chữ V không chỉ giúp bạn tiết kiệm thời gian trong việc chuẩn bị thực phẩm mà còn đảm bảo an toàn và hiệu quả trong quá trình sử dụng.</p>\n<p>Đặc biệt, thiết kế chữ V cũng giúp bạn dễ dàng tiết kiệm hết phần thịt dứa mà không gây lãng phí.</p>\n<p>&nbsp;#GọtMắtDứaChữV &nbsp;#DụngCụChuẩnBịMónĂn #TiệnLợi #SảnPhẩmChấtLượng<br />\n&nbsp;</p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v9-e8406128-423f-49b1-a224-2d1f23b9332e.jpg?v=1715309372071\" /></em></strong></p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v4.jpg?v=1715308044016\" /></em></strong></p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v5.jpg?v=1715308050714\" /></em></strong></p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v1.jpg?v=1715308059002\" /></em></strong></p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"790\" original-width=\"790\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v8.jpg?v=1715308066625\" /></em></strong></p>\n<p><strong><em><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/dung-cu-got-dua-v6.jpg?v=1715308074793\" /></em></strong></p>', NULL, 'Dụng cụ gọt mắt dứa chữ V', 'Dụng cụ gọt mắt dứa chữ V, Volcano, volcano.vn', '1', 'Title', 'Default Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deny', NULL, '', '', '1', NULL, NULL, NULL, '', NULL, NULL, '0.25', 'kg', 'images/35709729/dung-cu-got-mat-dua-chu-v.jpg', '<p>Công cụ độc đáo và tiện lợi giúp bạn dễ dàng loại bỏ phần mắt của quả dứa một cách nhanh chóng và chính xác.</p>\n<p>Với thiết kế chữ V đặc biệt, dụng cụ này giúp bạn có được các lát dứa mỏ', '35709729', '116712075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-24 09:43:39', '2024-05-24 09:43:39'),
(13, 'thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo', 'Combo 10 Thanh nan cắm làm khung vòm trồng rau, giao mạ, làm giàn cây leo (200x0.4CM)', '<p><strong><em>Combo 10 Thanh nan cắm làm khung vòm trồng rau, giao mạ, làm giàn cây leo (200x0.4CM)</em></strong></p>\n<p>Bạn muốn một cách đơn giản và hiệu quả để bảo vệ vườn rau của mình khỏi côn trùng và sâu bệnh hại? Vậy thì&nbsp;<em><strong>Thanh nan&nbsp;sợi thuỷ tinh</strong> </em>chính là giải pháp cho bạn.</p>\n<p>Với thiết kế đơn giản và chắc chắn, là một khung tròn&nbsp; dùng để cắm và giữ chắc chắn bạt phủ lên vườn rau.</p>\n<p>Dễ dàng lắp ráp và tháo dỡ, giúp tiết kiệm thời gian và công sức cho việc chăm sóc vườn.</p>\n<p>Đồng thời, khung có thể tái sử dụng qua nhiều mùa vụ, làm cho sản phẩm trở thành một lựa chọn bền vững và tiết kiệm chi phí cho người dùng.</p>\n<p>Chất liệu sợi thủy tinh.</p>\n<p>Kích thước:&nbsp;Đường kính 4mm, dài.</p>\n<p>#VườnSạch #BảoVệRau #KhungTròn #SảnPhẩmNôngNghiệp</p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v4.jpg?v=1714795122691\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v6.jpg?v=1714795131847\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v7.jpg?v=1714795141184\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v8.jpg?v=1714795149005\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v10.jpg?v=1714795157152\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v11.jpg?v=1714795164519\" /></p>\n<p><img data-thumb=\"original\" original-height=\"720\" original-width=\"720\" src=\"//bizweb.dktcdn.net/100/200/904/files/khung-lam-vom-mai-che-chong-rau-v12.jpg?v=1714795172573\" /></p>\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"645\" referrerpolicy=\"strict-origin-when-cross-origin\" src=\"https://www.youtube.com/embed/aE8dDU-Ej-I\" title=\"\" width=\"100%\"></iframe></p>', NULL, 'Thanh nan làm mái vòm', 'Combo 10 Thanh nan cắm làm khung vòm trồng rau, giao mạ, kinh vòm che rau sạch, làm giàn cây leo (200x0.4CM), Volcano, volcano.vn', '1', 'Title', 'Default Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deny', NULL, '', '', '1', NULL, NULL, NULL, '', NULL, NULL, '0.5', 'kg', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo.jpg', '<p>Dễ dàng lắp ráp và tháo dỡ, giúp tiết kiệm thời gian và công sức cho việc chăm sóc vườn.</p>\n<p>Đồng thời, khung có thể tái sử dụng qua nhiều mùa vụ, làm cho sản phẩm trở thành một lựa chọ', '35616253', '116125755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-24 09:43:40', '2024-05-24 09:43:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `pa_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pa_attribute_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`, `created_at`, `updated_at`) VALUES
(33, '8', '15', NULL, NULL),
(34, '8', '13', NULL, NULL),
(35, '8', '0', NULL, NULL),
(36, '8', '4', NULL, NULL),
(101, '25', '0', NULL, NULL),
(102, '25', '24', NULL, NULL),
(103, '25', '6', NULL, NULL),
(104, '25', '4', NULL, NULL),
(105, '26', '15', NULL, NULL),
(106, '26', '13', NULL, NULL),
(107, '26', '7', NULL, NULL),
(108, '26', '4', NULL, NULL),
(129, '27', '25', NULL, NULL),
(130, '27', '13', NULL, NULL),
(131, '27', '14', NULL, NULL),
(132, '27', '27', NULL, NULL),
(445, '35', '12', NULL, NULL),
(446, '35', '13', NULL, NULL),
(447, '35', '14', NULL, NULL),
(448, '35', '4', NULL, NULL),
(453, '36', '17', NULL, NULL),
(454, '36', '2', NULL, NULL),
(455, '36', '9', NULL, NULL),
(456, '36', '4', NULL, NULL),
(457, '37', '21', NULL, NULL),
(458, '37', '13', NULL, NULL),
(459, '37', '14', NULL, NULL),
(460, '37', '4', NULL, NULL),
(481, '41', '1', NULL, NULL),
(482, '41', '2', NULL, NULL),
(483, '41', '9', NULL, NULL),
(484, '41', '4', NULL, NULL),
(489, '42', '8', NULL, NULL),
(490, '42', '2', NULL, NULL),
(491, '42', '9', NULL, NULL),
(492, '42', '4', NULL, NULL),
(497, '43', '30', NULL, NULL),
(498, '43', '11', NULL, NULL),
(499, '43', '33', NULL, NULL),
(500, '43', '27', NULL, NULL),
(501, '44', '30', NULL, NULL),
(502, '44', '11', NULL, NULL),
(503, '44', '33', NULL, NULL),
(504, '44', '27', NULL, NULL),
(505, '45', '30', NULL, NULL),
(506, '45', '11', NULL, NULL),
(507, '45', '33', NULL, NULL),
(508, '45', '27', NULL, NULL),
(509, '46', '29', NULL, NULL),
(510, '46', '13', NULL, NULL),
(511, '46', '14', NULL, NULL),
(512, '46', '27', NULL, NULL),
(565, '57', '29', NULL, NULL),
(566, '57', '13', NULL, NULL),
(567, '57', '14', NULL, NULL),
(568, '57', '27', NULL, NULL),
(569, '56', '30', NULL, NULL),
(570, '56', '16', NULL, NULL),
(571, '56', '33', NULL, NULL),
(572, '56', '27', NULL, NULL),
(573, '21', '25', NULL, NULL),
(574, '21', '13', NULL, NULL),
(575, '21', '14', NULL, NULL),
(576, '21', '27', NULL, NULL),
(577, '55', '21', NULL, NULL),
(578, '55', '13', NULL, NULL),
(579, '55', '14', NULL, NULL),
(580, '55', '4', NULL, NULL),
(581, '54', '1', NULL, NULL),
(582, '54', '11', NULL, NULL),
(583, '54', '33', NULL, NULL),
(584, '54', '4', NULL, NULL),
(585, '53', '8', NULL, NULL),
(586, '53', '2', NULL, NULL),
(587, '53', '9', NULL, NULL),
(588, '53', '4', NULL, NULL),
(589, '52', '30', NULL, NULL),
(590, '52', '11', NULL, NULL),
(591, '52', '33', NULL, NULL),
(592, '52', '27', NULL, NULL),
(593, '51', '29', NULL, NULL),
(594, '51', '13', NULL, NULL),
(595, '51', '14', NULL, NULL),
(596, '51', '27', NULL, NULL),
(597, '50', '30', NULL, NULL),
(598, '50', '11', NULL, NULL),
(599, '50', '33', NULL, NULL),
(600, '50', '27', NULL, NULL),
(601, '49', '30', NULL, NULL),
(602, '49', '11', NULL, NULL),
(603, '49', '33', NULL, NULL),
(604, '49', '27', NULL, NULL),
(605, '48', '29', NULL, NULL),
(606, '48', '13', NULL, NULL),
(607, '48', '14', NULL, NULL),
(608, '48', '4', NULL, NULL),
(609, '47', '29', NULL, NULL),
(610, '47', '13', NULL, NULL),
(611, '47', '14', NULL, NULL),
(612, '47', '27', NULL, NULL),
(613, '40', '0', NULL, NULL),
(614, '40', '24', NULL, NULL),
(615, '40', '7', NULL, NULL),
(616, '40', '4', NULL, NULL),
(617, '39', '0', NULL, NULL),
(618, '39', '24', NULL, NULL),
(619, '39', '7', NULL, NULL),
(620, '39', '4', NULL, NULL),
(621, '38', '0', NULL, NULL),
(622, '38', '24', NULL, NULL),
(623, '38', '7', NULL, NULL),
(624, '38', '4', NULL, NULL),
(625, '34', '17', NULL, NULL),
(626, '34', '2', NULL, NULL),
(627, '34', '14', NULL, NULL),
(628, '34', '4', NULL, NULL),
(629, '33', '29', NULL, NULL),
(630, '33', '13', NULL, NULL),
(631, '33', '14', NULL, NULL),
(632, '33', '27', NULL, NULL),
(633, '32', '29', NULL, NULL),
(634, '32', '13', NULL, NULL),
(635, '32', '14', NULL, NULL),
(636, '32', '27', NULL, NULL),
(637, '31', '25', NULL, NULL),
(638, '31', '13', NULL, NULL),
(639, '31', '14', NULL, NULL),
(640, '31', '27', NULL, NULL),
(641, '30', '25', NULL, NULL),
(642, '30', '13', NULL, NULL),
(643, '30', '14', NULL, NULL),
(644, '30', '27', NULL, NULL),
(645, '29', '25', NULL, NULL),
(646, '29', '13', NULL, NULL),
(647, '29', '14', NULL, NULL),
(648, '29', '27', NULL, NULL),
(657, '28', '25', NULL, NULL),
(658, '28', '13', NULL, NULL),
(659, '28', '14', NULL, NULL),
(660, '28', '27', NULL, NULL),
(661, '24', '29', NULL, NULL),
(662, '24', '13', NULL, NULL),
(663, '24', '14', NULL, NULL),
(664, '24', '27', NULL, NULL),
(665, '23', '29', NULL, NULL),
(666, '23', '13', NULL, NULL),
(667, '23', '14', NULL, NULL),
(668, '23', '27', NULL, NULL),
(669, '22', '29', NULL, NULL),
(670, '22', '13', NULL, NULL),
(671, '22', '14', NULL, NULL),
(672, '22', '27', NULL, NULL),
(685, '10', '18', NULL, NULL),
(686, '10', '19', NULL, NULL),
(687, '10', '6', NULL, NULL),
(688, '10', '4', NULL, NULL),
(689, '11', '17', NULL, NULL),
(690, '11', '16', NULL, NULL),
(691, '11', '9', NULL, NULL),
(692, '11', '4', NULL, NULL),
(693, '12', '21', NULL, NULL),
(694, '12', '13', NULL, NULL),
(695, '12', '14', NULL, NULL),
(696, '12', '4', NULL, NULL),
(697, '13', '22', NULL, NULL),
(698, '13', '16', NULL, NULL),
(699, '13', '14', NULL, NULL),
(700, '13', '4', NULL, NULL),
(701, '14', '8', NULL, NULL),
(702, '14', '2', NULL, NULL),
(703, '14', '9', NULL, NULL),
(704, '14', '4', NULL, NULL),
(705, '20', '23', NULL, NULL),
(706, '20', '10', NULL, NULL),
(707, '20', '9', NULL, NULL),
(708, '20', '4', NULL, NULL),
(709, '19', '22', NULL, NULL),
(710, '19', '24', NULL, NULL),
(711, '19', '7', NULL, NULL),
(712, '19', '4', NULL, NULL),
(713, '18', '23', NULL, NULL),
(714, '18', '24', NULL, NULL),
(715, '18', '6', NULL, NULL),
(716, '18', '4', NULL, NULL),
(717, '17', '23', NULL, NULL),
(718, '17', '24', NULL, NULL),
(719, '17', '7', NULL, NULL),
(720, '17', '4', NULL, NULL),
(721, '16', '23', NULL, NULL),
(722, '16', '24', NULL, NULL),
(723, '16', '7', NULL, NULL),
(724, '16', '4', NULL, NULL),
(725, '15', '5', NULL, NULL),
(726, '15', '2', NULL, NULL),
(727, '15', '9', NULL, NULL),
(728, '15', '4', NULL, NULL),
(729, '9', '17', NULL, NULL),
(730, '9', '2', NULL, NULL),
(731, '9', '9', NULL, NULL),
(732, '9', '4', NULL, NULL),
(733, '7', '12', NULL, NULL),
(734, '7', '13', NULL, NULL),
(735, '7', '14', NULL, NULL),
(736, '7', '4', NULL, NULL),
(737, '6', '31', NULL, NULL),
(738, '6', '10', NULL, NULL),
(739, '6', '32', NULL, NULL),
(740, '6', '4', NULL, NULL),
(741, '4', '8', NULL, NULL),
(742, '4', '2', NULL, NULL),
(743, '4', '9', NULL, NULL),
(744, '4', '4', NULL, NULL),
(749, '3', '5', NULL, NULL),
(750, '3', '2', NULL, NULL),
(751, '3', '14', NULL, NULL),
(752, '3', '4', NULL, NULL),
(753, '2', '1', NULL, NULL),
(754, '2', '2', NULL, NULL),
(755, '2', '3', NULL, NULL),
(756, '2', '4', NULL, NULL),
(757, '1', '30', NULL, NULL),
(758, '1', '16', NULL, NULL),
(759, '1', '3', NULL, NULL),
(760, '1', '4', NULL, NULL),
(761, '5', '5', NULL, NULL),
(762, '5', '2', NULL, NULL),
(763, '5', '9', NULL, NULL),
(764, '5', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `pk_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pk_keyword_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `pi_product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `pi_product_code`, `pi_name`, `pi_slug`, `created_at`, `updated_at`) VALUES
(1, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-0.jpg', NULL, NULL),
(2, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-1.jpg', NULL, NULL),
(3, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-2.jpg', NULL, NULL),
(4, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-3.jpg', NULL, NULL),
(5, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-4.jpg', NULL, NULL),
(6, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-5.jpg', NULL, NULL),
(7, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-6.jpg', NULL, NULL),
(8, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-7.jpg', NULL, NULL),
(9, '35709729', '', 'images/35709729/dung-cu-got-mat-dua-chu-v-8.jpg', NULL, NULL),
(10, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-0.jpg', NULL, NULL),
(11, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-1.jpg', NULL, NULL),
(12, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-2.jpg', NULL, NULL),
(13, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-3.jpg', NULL, NULL),
(14, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-4.jpg', NULL, NULL),
(15, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-5.jpg', NULL, NULL),
(16, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-6.jpg', NULL, NULL),
(17, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-7.jpg', NULL, NULL),
(18, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-8.jpg', NULL, NULL),
(19, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-9.jpg', NULL, NULL),
(20, '35616253', '', 'images/35616253/thanh-nan-cam-lam-khung-vom-trong-rau-giao-ma-lam-gian-cay-leo-10.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `r_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `r_name`, `created_at`, `updated_at`) VALUES
(3, '3', '4', '5', '0', 'tốt', '', '2023-10-21 22:34:27', '2023-10-21 22:34:27'),
(5, '7', '30', '4', '0', 'Tạm', '', '2023-10-23 00:23:38', '2023-10-23 00:23:38'),
(6, '3', '22', '4', '0', NULL, '', '2023-10-23 11:17:21', '2023-10-23 11:17:21'),
(7, '9', '57', '4', '0', 'a', NULL, '2023-11-02 00:16:19', '2023-11-02 00:16:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_sort` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'http://127.0.0.1:8000/', '2024-05-15__b1.png', '1', '1', '0', '2024-05-14 21:40:02', '2024-05-14 21:40:02'),
(2, 'Slide 2', 'http://127.0.0.1:8000/san-pham', '2024-05-15__b3.png', '1', '1', '0', '2024-05-14 21:40:06', '2024-05-14 21:40:06'),
(3, 'Slide 3', 'http://127.0.0.1:8000/san-pham', '2024-05-15__b4.png', '1', '1', '0', '2024-05-14 21:40:10', '2024-05-14 21:40:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, '1', NULL, '<p style=\"text-align:center\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">DECEMBER cosmetic Việt Nam h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Với chương tr&igrave;nh ưu đ&atilde;i mua đơn h&agrave;ng từ <span style=\"color:#c0392b\">&gt;90K&nbsp;</span>ch&uacute;ng t&ocirc;i sẵn s&agrave;ng miễn ph&iacute; dịch vụ ship cho tất cả c&aacute;c đơn h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"Thông tin về vận chuyển và giao nhận\" src=\"https://d3rzzb9pdm93i0.cloudfront.net/2022/06/16563112388eb48f7c9dc29985c055284505002509.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đối với qu&yacute; kh&aacute;ch h&agrave;ng ở tại khu vực Ninh Kiều, Cần Thơ. Cửa h&agrave;ng đang c&oacute; ch&iacute;nh s&aacute;ch freeship v&agrave; ship hỏa tốc trong 1h d&agrave;nh cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng trong khu vực Ninh Kiều.&nbsp;</span></p>\r\n\r\n<p><img alt=\"TẢI Bản đồ Quận Ninh Kiều, TP Cần Thơ khổ lớn phóng to 2023\" src=\"https://bandovietnam.com.vn/media/article/ban-do-quan-ninh-kieu.jpeg\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Kh&aacute;ch h&agrave;ng c&oacute; thể tiến h&agrave;nh mua h&agrave;ng th&ocirc;ng qua 2 c&aacute;ch. C&aacute;ch 1 mua h&agrave;ng trực tiếp tr&ecirc;n web, c&oacute; thể thanh to&aacute;n khi nhận h&agrave;ng hoặc thanh to&aacute;n trực tiếp qua thẻ t&iacute;n dụng. C&aacute;ch 2: LI&ecirc;n hệ qua số hotline 1900.2312 để li&ecirc;n hệ mua h&agrave;ng trực tiếp.</span></p>\r\n\r\n<p><img alt=\"LIÊN HỆ\" src=\"https://isfm.ufm.edu.vn/Resources/Images/SubDomain/isfm/Artboard-8@5x.png\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Sau khi đ&atilde; x&aacute;c nhận đơn h&agrave;ng, cửa h&agrave;ng sẽ tiến h&agrave;nh g&oacute;i h&agrave;ng v&agrave; gởi đi nhanh nhất, kh&aacute;ch h&agrave;ng c&oacute; thể theo d&otilde;i t&igrave;nh trạng đơn h&agrave;ng qua phần &quot;Quản l&yacute; đơn h&agrave;ng&quot;&nbsp;<em><u>http://127.0.0.1:8000/account/transaction</u></em>.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; ủng hộ DECEMBER cosmetic.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nếu c&oacute; sai s&oacute;t xin qu&yacute; kh&aacute;ch li&ecirc;n hệ qua hotline 1900.2312.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">December cosmetic Việt Nam xin tr&acirc;n trọng cảm ơn!!</span></p>\r\n\r\n<p>&nbsp;</p>', '2023-10-12 11:15:53', '2023-10-12 11:15:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Sài Gòn', '0999999999', 'nhacungcapmypham@gmail.com', 'Quận 2,Tp. Hồ Chí Minh (TPHCM)', '2023-08-03 19:39:00', '2024-05-14 21:40:52'),
(2, 'Laptop Việt', '034955555', 'myphamviet@gmail.com', 'Đông Xuân, Hà Nội', '2023-10-21 11:15:05', '2024-05-14 21:40:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `tst_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_total_money` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(4, '3', '0', '272000', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '-1', '2', '2023-09-15 04:48:09', '2023-09-15 04:48:46'),
(5, '3', '1', '134400', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-09-15 05:03:43', '2023-09-16 23:02:06'),
(6, '4', '1', '272000', 'Vy', 'vy123@gmail.com', '0933188900', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-05 10:54:05', '2023-10-06 04:32:21'),
(7, '5', '1', '134400', 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0766827652', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-05 11:00:52', '2023-10-05 11:02:57'),
(8, '3', '0', '82000', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-06 02:34:53', '2023-10-06 02:43:11'),
(9, '3', '0', '272000', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-06 02:43:41', '2023-10-06 02:46:17'),
(10, '3', '1', '377280', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-06 04:18:48', '2023-10-06 04:19:36'),
(12, '3', '1', '272000', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '2', '2023-10-06 04:51:55', '2023-10-06 05:05:24'),
(15, '3', '1', '238140', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '1', '2023-10-10 07:11:50', '2023-10-10 07:12:29'),
(16, '3', '1', '590000', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '1', '2023-10-13 01:24:06', '2023-10-24 11:23:51'),
(17, '3', '1', '281600', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '1', '2023-10-20 01:48:20', '2023-10-30 11:13:43'),
(18, '3', '1', '416500', 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, '3', '1', '2023-10-20 01:52:59', '2023-10-21 22:31:47'),
(19, '7', '1', '162000', 'Khánh', 'khanh123@gmail.com', '0907077417', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, '3', '1', '2023-10-23 00:22:28', '2023-10-23 00:22:48'),
(20, '8', '1', '908000', 'Nhi2312', 'lethichucnhi2312@gmail.com', '0774836320', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, '2', '1', '2023-10-30 22:02:22', '2023-10-30 23:00:16'),
(21, '9', '1', '1047800', 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', '3', '1', '2023-11-02 00:11:56', '2023-11-02 00:15:53'),
(22, '9', '0', '470700', 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'h', '1', '1', '2023-12-03 02:26:14', NULL),
(23, '9', '0', '306000', 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', '1', '2', '2024-02-22 20:34:50', NULL),
(24, '9', '0', '864000', 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'a', '1', '1', '2024-05-14 21:42:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', NULL, '$2y$10$rXrKZ0eMQKp0m8j7d.bWwutMrCUyzV8hxNmKgUtrFZFKET4pBRNOa', '907077125', '-2820060', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-15T15:08:28.799463Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-19T14:51:13.368800Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-22T05:33:39.896501Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-30T15:16:14.303399Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-03T06:56:44.495003Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-04T08:47:10.561347Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-05T18:31:12.488211Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T09:22:23.396460Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T11:18:28.754070Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-09T08:18:27.604363Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-10T14:03:48.511352Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-11T18:30:35.844622Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-12T18:01:04.397101Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:02:31.184305Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:15:47.156260Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-20T08:48:12.060825Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-22T05:33:28.392789Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-23T18:08:53.651141Z\"}]', '4', NULL, '2023-09-19__nen.jpg', NULL, '2023-09-15 04:47:12', '2023-09-19 07:51:44'),
(2, 'Vy', 'vy123@gmail.com', NULL, '$2y$10$jcrZx3gRv7ms5WsagqXGSOW/03exND7VR8LmB8bRSYXDae.ajutDe', '0933188900', '-272000', NULL, '1', NULL, NULL, NULL, '2023-10-05 10:38:00', NULL),
(3, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', NULL, '$2y$10$injnEcIuMrAb3hPpqiu9NOfEGdcEvhKe6Rkz2lhldwktfZTjrM8sa', '0766827652', '-134400', NULL, '0', NULL, NULL, NULL, '2023-10-05 11:00:30', NULL),
(4, 'Khả Hân', 'khanhan122001@gmail.com', NULL, '$2y$10$GxPprylryxjOwOkp2bx4mueUmd4XYFpE3pzdczWEMLmLCw5IyCGB.', '0909339199', '0', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-24T18:10:46.727052Z\"}]', '1', NULL, NULL, NULL, '2023-10-09 01:16:54', NULL),
(5, 'Khánh', 'khanh123@gmail.com', NULL, '$2y$10$pwYNklFcibljGdg7oxxUeek8jLHVqeNMwZSkfIGUp9qYNWnm3I9OO', '0907077417', '-162000', NULL, '0', NULL, NULL, NULL, '2023-10-23 00:21:36', NULL),
(6, 'Nhi2312', 'lethichucnhi2312@gmail.com', NULL, '$2y$10$gWj0W.v8qImbgegv3DwmgOokouUZyxYvxtH7ZfW/QoXxefpCm52x6', '0774836320', '-908000', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-31T05:01:21.447191Z\"}]', '0', NULL, NULL, NULL, '2023-10-30 11:22:47', NULL),
(7, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', NULL, '$2y$10$H4unk/E3S/VWq96Tyb36DeFHR5anT1cfxavOrpijmDtNV9mrvpm3m', '0368822642', '-2382500', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:00:47.593180Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:12:46.426071Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-03T02:42:31.407630Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T09:25:37.995283Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"121.0.0.0\",\"time\":\"2024-02-23T03:34:44.380144Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-05-15T04:42:05.926451Z\"}]', '5', NULL, NULL, NULL, '2023-11-01 23:56:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourites`
--

CREATE TABLE `user_favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `uf_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uf_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourites`
--

INSERT INTO `user_favourites` (`id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(1, '9', '9', NULL, NULL),
(2, '15', '9', NULL, NULL),
(3, '25', '3', NULL, NULL),
(4, '26', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint UNSIGNED NOT NULL,
  `w_product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_time_warehouse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(1, '22', '130000', '12', NULL, '2023-10-11 11:56:05', '2023-10-11 11:56:05'),
(2, '17', '100000', '13', NULL, '2023-10-11 12:35:52', '2023-10-11 12:35:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_favourites`
--
ALTER TABLE `user_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_favourites`
--
ALTER TABLE `user_favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
