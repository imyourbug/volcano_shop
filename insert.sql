

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `admins` (`name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
('Admin', 'admin@gmail.com', '$2y$10$MqNO1XoyoPu0aCIhIOR4audQBKriAbrNJG3P/awxQMQ5N4dDogmZ2', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2023-10-19__logoc.png', NULL, '2023-10-13 07:24:19'),
('Nhân Viên', 'nhanvien@gmail.com', '$2y$10$9e6/30GrauqWj4L7B1.Pyun6ixmHYTpyWYhwrArbzRYxoAgpW637y', '092311534', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2023-10-13 07:24:00'),
('Nhân Viên 2', 'nhanvien2@gmail.com', '$2y$10$rdKUQp1yZMRweEaiqQa0s.Ca4PAANRVdWqLd9VmoHV25uYoL.lF6.', '0989275330', NULL, NULL, NULL, 2, 1, NULL, '2023-08-01 02:52:06', NULL);


INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) 
VALUES (1, 'Top 7 Laptop Được Review Tốt Hiện Nay', 'top-7-laptop-duoc-review-tot-hien-nay', 1, 1, 1, 0, NULL, '2024-05-15__3.jpg', 'aaaa', '2023-08-04 03:37:28', 1, 0, '2024-05-15 04:36:05'),
(2, 'Những Công Dụng Của Laptop Có Thể Bạn Chưa Biết', 'nhung-cong-dung-cua-laptop-co-the-ban-chua-biet', 1, 1, 1, 0, NULL, '2024-05-15__2.jpg', 'aaa', '2023-08-04 03:38:34', 1, 0, '2024-05-15 04:36:20');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(3, 'Top 9 Laptop Được Tin Dùng', 'top-9-laptop-duoc-tin-dung', 1, 1, 1, 0, NULL, '2024-05-15__6.jpg', 'aa', '2023-08-04 03:39:23', 1, 1, '2024-05-15 04:36:34');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(4, 'Top 4 Dòng Laptop Tốt Nhất', 'top-4-dong-laptop-tot-nhat', 1, 1, 1, 0, NULL, '2024-05-15__2.jpg', 'aaa', '2023-08-04 03:40:18', 1, 1, '2024-05-15 04:36:49'),
(5, 'Top Laptop Chất Lượng Hàng Đầu Hiện Nay', 'top-laptop-chat-luong-hang-dau-hien-nay', 1, 1, 1, 0, NULL, '2024-05-15__2.jpg', '<p><strong>Nước s&uacute;c miệng của Mỹ</strong>&nbsp;trong nhiều năm qua lu&ocirc;n nằm trong top đầu sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-rang-mieng-c323.html\" target=\"_blank\">chăm s&oacute;c răng miệng</a>&nbsp;chất lượng v&agrave; b&aacute;n chạy tr&ecirc;n to&agrave;n thế giới, được c&aacute;c b&aacute;c sĩ nha khoa khuy&ecirc;n d&ugrave;ng. Tại Việt Nam, c&oacute; những nước s&uacute;c miệng xứ cờ hoa n&agrave;o thực sự hiệu quả, c&ugrave;ng xem b&agrave;i viết dưới đ&acirc;y nh&eacute;.&nbsp;</p>', '2023-08-04 03:41:42', 1, 0, '2024-05-15 04:37:04');


INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'LOREAL', 'loreal', 1, 1, '2023-08-04 02:34:52', NULL),
(2, 'Pháp', 'phap', 2, 1, '2023-08-04 02:37:13', NULL),
(3, 'Trung Quốc', 'trung-quoc', 3, 1, '2023-08-04 02:37:24', NULL),
(4, 'Nam & Nữ', 'nam-nu', 4, 1, '2023-08-04 02:37:35', NULL),
(5, 'BIODERMA', 'bioderma', 1, 1, '2023-08-04 02:46:06', NULL),
(6, 'Việt Nam', 'viet-nam', 3, 1, '2023-08-04 02:46:13', NULL),
(7, 'Nhật Bản', 'nhat-ban', 3, 1, '2023-08-04 02:46:19', NULL),
(8, 'LA ROCHE-POSAY', 'la-roche-posay', 1, 1, '2023-08-04 02:47:40', NULL),
(9, 'France', 'france', 3, 1, '2023-08-04 02:47:49', NULL),
(10, 'Cannada', 'cannada', 2, 1, '2023-08-04 02:52:17', NULL),
(11, 'Hoa Kỳ', 'hoa-ky', 2, 1, '2023-08-04 02:52:24', NULL),
(12, 'Cosrx', 'cosrx', 1, 1, '2023-08-04 02:55:35', NULL),
(13, 'Hàn Quốc', 'han-quoc', 2, 1, '2023-08-04 02:55:45', NULL),
(14, 'Korea', 'korea', 3, 1, '2023-08-04 02:55:55', NULL),
(15, 'CeraVe', 'cerave', 1, 1, '2023-08-04 02:58:08', NULL),
(16, 'Mỹ', 'my', 2, 1, '2023-08-04 02:58:16', NULL),
(17, 'SVR', 'svr', 1, 1, '2023-08-04 03:00:09', NULL),
(18, 'SIMPLE', 'simple', 1, 1, '2023-08-04 03:02:25', NULL),
(19, 'Anh', 'anh', 2, 1, '2023-08-04 03:02:33', NULL),
(20, 'Poland', 'poland', 3, 2, '2023-08-04 03:02:43', '2023-10-11 18:11:30'),
(21, 'Klairs', 'klairs', 1, 1, '2023-08-04 03:07:02', NULL),
(22, 'Neutrogena', 'neutrogena', 1, 1, '2023-08-04 03:09:27', NULL),
(23, 'DHC', 'dhc', 1, 1, '2023-08-04 03:19:32', NULL),
(24, 'Japan', 'japan', 2, 1, '2023-08-04 03:19:38', NULL),
(25, 'Black Rouge', 'black-rouge', 1, 1, '2023-08-04 07:02:15', NULL),
(26, 'Nam', 'nam', 4, 1, '2023-08-04 07:02:23', NULL),
(27, 'Nữ', 'nu', 4, 1, '2023-08-04 07:02:28', '2023-10-11 18:06:00'),
(29, '3CE', '3ce', 1, 1, '2023-10-19 08:09:06', NULL),
(30, 'Maybelline', 'maybelline', 1, 1, '2023-10-30 18:49:58', NULL),
(31, 'Cetaphil', 'cetaphil', 1, 1, '2023-10-30 19:14:55', NULL),
(32, 'Canada', 'canada', 3, 1, '2023-10-30 19:15:13', NULL),
(33, 'USA', 'usa', 3, 11, '2023-10-31 06:09:56', '2023-10-31 06:10:34');


INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục máy tính 1', 'danh-muc-may-tinh-1', '2024-05-15__1.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:30:43', '2024-05-15 04:32:58'),
(2, 'Danh mục máy tính 2', 'danh-muc-may-tinh-2', '2024-05-15__2.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:31:08', '2024-05-15 04:33:04'),
(3, 'Danh mục máy tính 3', 'danh-muc-may-tinh-3', '2024-05-15__4.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:31:26', '2024-05-15 04:33:12'),
(4, 'Danh mục máy tính 4', 'danh-muc-may-tinh-4', '2024-05-15__7.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:31:55', '2024-05-15 04:33:31'),
(5, 'Danh mục máy tính 5', 'danh-muc-may-tinh-5', '2024-05-15__4.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:32:19', '2024-05-15 04:33:39'),
(6, 'Danh mục máy tính 6', 'danh-muc-may-tinh-6', '2024-05-15__5.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:32:40', '2024-05-15 04:33:48'),
(9, 'Danh mục máy tính 7', 'danh-muc-may-tinh-7', '2024-05-15__5.png', NULL, NULL, 0, 1, 1, '2023-08-04 02:33:45', '2024-05-15 04:33:58'),
(11, 'Danh mục máy tính 8', 'danh-muc-may-tinh-8', '2024-05-15__1.jpg', NULL, NULL, 0, 0, 1, '2023-10-10 19:14:42', '2024-05-15 04:34:06'),
(12, 'Danh mục máy tính 9', 'danh-muc-may-tinh-9', '2024-05-15__6.jpg', NULL, NULL, 0, 0, 1, '2023-10-10 19:16:00', '2024-05-15 04:34:13'),
(13, 'Danh mục máy tính 10', 'danh-muc-may-tinh-10', '2024-05-15__2.jpg', NULL, NULL, 0, 0, 1, '2023-10-11 18:25:44', '2024-05-15 04:34:21'),
(14, 'Danh mục máy tính 12', 'danh-muc-may-tinh-12', '2024-05-15__3.jpg', NULL, NULL, 0, 0, 1, '2023-10-11 18:26:49', '2024-05-15 04:34:40');



INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'good', 0, 6, 0, 3, 0, 0, '2023-09-15 15:10:05', NULL),
(4, NULL, NULL, 'có ship CT ko', 0, 24, 0, 4, 0, 0, '2023-10-05 17:43:44', NULL),
(6, NULL, NULL, 'freeship CT hem', 0, 2, 0, 3, 0, 0, '2023-10-11 18:31:04', NULL),
(7, NULL, NULL, '@Lê Thị Chúc Nhi: có ạ', 6, 2, 0, 3, 0, 0, '2023-10-11 18:31:16', NULL),
(8, NULL, NULL, 'còn hàng ko ạ', 0, 3, 0, 6, 0, 0, '2023-10-24 18:11:19', NULL),
(9, NULL, NULL, 'a', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:55', NULL),
(10, NULL, NULL, 'asdas', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:58', NULL),
(11, NULL, NULL, 'asdasd', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:59', NULL),
(12, NULL, NULL, '12312', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:01', NULL),
(13, NULL, NULL, '123', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:04', NULL);



INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`, `c_name`) VALUES
(2, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Nước hoa mùi quá', '2023-10-11 18:46:29', NULL, 'Lê Thị Chúc Nhi'),
(3, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Trả lời tui', '2023-10-11 18:48:17', NULL, 'Lê Thị Chúc Nhi');



INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi tháng 8', 10, '2023-08-05 08:12:00', '2023-08-10 08:12:00', 10, '2023-08-05 01:12:26', '2023-08-05 01:12:26');



INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-05-15__b1.png', 'https://images.', 1, 0, 0, 0, '2024-05-15 04:39:26', '2024-05-15 04:39:26'),
(2, 'Event 2', '2024-05-15__b2.png', 'http://127.0.0.1:8000/san-pham?k=', 0, 1, 0, 0, '2024-05-15 04:39:30', '2024-05-15 04:39:30'),
(3, 'Event 3', '2024-05-15__b3.png', 'https://images.', 0, 0, 1, 0, '2024-05-15 04:39:34', '2024-05-15 04:39:34'),
(4, 'Event4', '2024-05-15__b4.png', 'http://127.0.0.1:8000/san-pham', 0, 0, 0, 0, '2024-05-15 04:39:39', '2024-05-15 04:39:39');


INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang công nghệ', 'cam-nang-cong-nghe', NULL, NULL, NULL, 0, 1, '2023-08-04 03:36:14', '2024-05-15 04:35:30');


INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(2, 1, 24, 20, 1, 272000, '2023-08-04 08:51:48', NULL),
(4, 1, 22, 19, 1, 238140, '2023-08-04 08:51:48', NULL),
(5, 1, 2, 0, 1, 159000, '2023-08-04 08:51:48', NULL),
(8, 4, 24, 20, 1, 272000, '2023-09-15 11:48:09', NULL),
(10, 6, 24, 20, 1, 272000, '2023-10-05 17:54:05', NULL),
(13, 9, 24, 20, 1, 272000, '2023-10-06 09:43:41', NULL),
(14, 10, 5, 4, 1, 377280, '2023-10-06 11:18:48', NULL),
(16, 12, 24, 20, 1, 272000, '2023-10-06 11:51:55', NULL),
(17, 13, 5, 4, 1, 377280, '2023-10-09 08:18:51', NULL),
(18, 14, 22, 19, 1, 238140, '2023-10-10 14:11:34', NULL),
(19, 15, 22, 19, 1, 238140, '2023-10-10 14:11:50', NULL),
(20, 16, 2, 0, 2, 159000, '2023-10-13 08:24:06', NULL),
(21, 16, 24, 20, 1, 272000, '2023-10-13 08:24:06', NULL),
(23, 18, 4, 15, 1, 416500, '2023-10-20 08:52:59', NULL),
(27, 20, 11, 10, 1, 315000, '2023-10-31 05:02:22', NULL),
(31, 21, 55, 5, 1, 380000, '2023-11-02 07:11:56', NULL),
(32, 21, 54, 10, 1, 288000, '2023-11-02 07:11:56', NULL),
(33, 22, 15, 10, 1, 38700, '2023-12-03 09:26:14', NULL),
(34, 22, 9, 10, 1, 432000, '2023-12-03 09:26:14', NULL),
(35, 23, 24, 10, 1, 306000, '2024-02-23 03:34:50', NULL),
(36, 24, 9, 10, 2, 432000, '2024-05-15 04:42:43', NULL);

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 885540, 0, NULL, 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 'PAYOUT2', 2, 0, 1654628, 0, NULL, 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 'PAYOUT3', 3, 0, 272000, 0, NULL, 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 'PAYOUT4', 3, 0, 134400, 0, NULL, 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 'PAYOUT5', 4, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 'PAYOUT6', 5, 0, 134400, 0, NULL, 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 'PAYOUT7', 3, 0, 377280, 0, NULL, 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 'PAYOUT8', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 'PAYOUT9', 3, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 'PAYOUT10', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 'PAYOUT11', 3, 0, 590000, 0, NULL, 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 'PAYOUT12', 3, 0, 281600, 0, NULL, 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 'PAYOUT13', 3, 0, 416500, 0, NULL, 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 'PAYOUT14', 7, 0, 162000, 0, NULL, 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 'PAYOUT15', 8, 0, 908000, 0, NULL, 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 'PAYOUT16', 9, 0, 1047800, 0, NULL, 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 'PAYOUT17', 9, 0, 470700, 0, NULL, 1, 12, 2023, '2023-12-03 09:26:14', NULL),
(18, 'PAYOUT18', 9, 0, 864000, 0, NULL, 1, 5, 2024, '2024-05-15 04:42:43', NULL);

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 885540, '', 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 2, 3, 1654628, '', 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 3, 4, 272000, '', 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 3, 5, 134400, '', 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 4, 6, 272000, '', 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 5, 7, 134400, '', 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 3, 10, 377280, '', 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 3, 11, 238140, '', 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 3, 12, 272000, '', 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 3, 15, 238140, '', 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 3, 16, 590000, '', 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 3, 17, 281600, '', 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 3, 18, 416500, '', 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 7, 19, 162000, '', 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 8, 20, 908000, '', 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 9, 21, 1047800, '', 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 9, 22, 470700, '', 1, 12, 2023, '2023-12-03 09:26:14', NULL),
(18, 9, 24, 864000, '', 1, 5, 2024, '2024-05-15 04:42:43', NULL);


INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(1, 'MSI Gaming GF60', 'msi-gaming-gf60', 120000, 0, 1, 2, 0, 12, '', '2024-05-15__3.jpg', 6, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:40:42', 20, NULL, NULL, 0, '2024-05-15 04:32:01', NULL),
(2, 'ASUS Gaming GF63 Thin 12UCX', 'asus-gaming-gf63-thin-12ucx', 190000, 0, 1, 2, 0, 10, '', '2024-05-15__5.png', 9, 0, 1, 2, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:43:00', 30, NULL, NULL, 0, '2024-05-15 04:31:51', NULL),
(3, 'MSI Gaming GF63 Thin 12UCX 12450H (873VN)', 'msi-gaming-gf63-thin-12ucx-12450h-873vn', 420000, 0, 1, 2, 0, 5, '', '2024-05-15__4.jpg', 4, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:45:43', 35, NULL, NULL, 0, '2024-05-15 04:31:34', NULL),
(4, 'MSI Gaming GF63 Thin 12UCX i5 12450H (873VN)', 'msi-gaming-gf63-thin-12ucx-i5-12450h-873vn', 490000, 0, 1, 1, 0, 15, '', '2024-05-15__7.jpg', 4, 0, 1, 1, NULL, '<p>a</p>', 1, 5, 5, '2023-08-04 02:49:00', 19, NULL, NULL, 0, '2024-05-15 04:31:10', NULL),
(5, 'MSI Gaming GF68', 'msi-gaming-gf68', 480000, 0, 1, 1, 0, 9, '', '2024-05-15__2.jpg', 6, 1, 1, 2, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:52:06', 45, NULL, NULL, 0, '2024-05-15 04:32:14', NULL),
(6, 'ACER 1', 'acer-1', 450000, 0, 2, 2, 0, 15, '', '2024-05-15__3.jpg', 4, 1, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:54:14', 30, NULL, NULL, 0, '2024-05-15 04:30:33', NULL),
(7, 'ASUS 2', 'asus-2', 120000, 0, 2, 1, 0, 20, '', '2024-05-15__2.jpg', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:55:24', 50, NULL, NULL, 0, '2024-05-15 04:30:18', NULL),
(9, 'ASUS 1', 'asus-1', 480000, 0, 2, 2, 0, 10, '', '2024-05-15__1.jpg', 10, 1, 1, 2, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:01:03', 40, NULL, NULL, 0, '2024-05-15 04:29:58', NULL);


INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(33, 8, 15),
(34, 8, 13),
(35, 8, 0),
(36, 8, 4),
(101, 25, 0),
(102, 25, 24),
(103, 25, 6),
(104, 25, 4),
(105, 26, 15),
(106, 26, 13),
(107, 26, 7),
(108, 26, 4),
(129, 27, 25),
(130, 27, 13),
(131, 27, 14),
(132, 27, 27),
(445, 35, 12),
(446, 35, 13),
(447, 35, 14),
(448, 35, 4),
(453, 36, 17),
(454, 36, 2),
(455, 36, 9),
(456, 36, 4),
(457, 37, 21),
(458, 37, 13),
(459, 37, 14),
(460, 37, 4),
(481, 41, 1),
(482, 41, 2),
(483, 41, 9),
(484, 41, 4),
(489, 42, 8),
(490, 42, 2),
(491, 42, 9),
(492, 42, 4),
(497, 43, 30),
(498, 43, 11),
(499, 43, 33),
(500, 43, 27),
(501, 44, 30),
(502, 44, 11),
(503, 44, 33),
(504, 44, 27),
(505, 45, 30),
(506, 45, 11),
(507, 45, 33),
(508, 45, 27),
(509, 46, 29),
(510, 46, 13),
(511, 46, 14),
(512, 46, 27),
(565, 57, 29),
(566, 57, 13),
(567, 57, 14),
(568, 57, 27),
(569, 56, 30),
(570, 56, 16),
(571, 56, 33),
(572, 56, 27),
(573, 21, 25),
(574, 21, 13),
(575, 21, 14),
(576, 21, 27),
(577, 55, 21),
(578, 55, 13),
(579, 55, 14),
(580, 55, 4),
(581, 54, 1),
(582, 54, 11),
(583, 54, 33),
(584, 54, 4),
(585, 53, 8),
(586, 53, 2),
(587, 53, 9),
(588, 53, 4),
(589, 52, 30),
(590, 52, 11),
(591, 52, 33),
(592, 52, 27),
(593, 51, 29),
(594, 51, 13),
(595, 51, 14),
(596, 51, 27),
(597, 50, 30),
(598, 50, 11),
(599, 50, 33),
(600, 50, 27),
(601, 49, 30),
(602, 49, 11),
(603, 49, 33),
(604, 49, 27),
(605, 48, 29),
(606, 48, 13),
(607, 48, 14),
(608, 48, 4),
(609, 47, 29),
(610, 47, 13),
(611, 47, 14),
(612, 47, 27),
(613, 40, 0),
(614, 40, 24),
(615, 40, 7),
(616, 40, 4),
(617, 39, 0),
(618, 39, 24),
(619, 39, 7),
(620, 39, 4),
(621, 38, 0),
(622, 38, 24),
(623, 38, 7),
(624, 38, 4),
(625, 34, 17),
(626, 34, 2),
(627, 34, 14),
(628, 34, 4),
(629, 33, 29),
(630, 33, 13),
(631, 33, 14),
(632, 33, 27),
(633, 32, 29),
(634, 32, 13),
(635, 32, 14),
(636, 32, 27),
(637, 31, 25),
(638, 31, 13),
(639, 31, 14),
(640, 31, 27),
(641, 30, 25),
(642, 30, 13),
(643, 30, 14),
(644, 30, 27),
(645, 29, 25),
(646, 29, 13),
(647, 29, 14),
(648, 29, 27),
(657, 28, 25),
(658, 28, 13),
(659, 28, 14),
(660, 28, 27),
(661, 24, 29),
(662, 24, 13),
(663, 24, 14),
(664, 24, 27),
(665, 23, 29),
(666, 23, 13),
(667, 23, 14),
(668, 23, 27),
(669, 22, 29),
(670, 22, 13),
(671, 22, 14),
(672, 22, 27),
(685, 10, 18),
(686, 10, 19),
(687, 10, 6),
(688, 10, 4),
(689, 11, 17),
(690, 11, 16),
(691, 11, 9),
(692, 11, 4),
(693, 12, 21),
(694, 12, 13),
(695, 12, 14),
(696, 12, 4),
(697, 13, 22),
(698, 13, 16),
(699, 13, 14),
(700, 13, 4),
(701, 14, 8),
(702, 14, 2),
(703, 14, 9),
(704, 14, 4),
(705, 20, 23),
(706, 20, 10),
(707, 20, 9),
(708, 20, 4),
(709, 19, 22),
(710, 19, 24),
(711, 19, 7),
(712, 19, 4),
(713, 18, 23),
(714, 18, 24),
(715, 18, 6),
(716, 18, 4),
(717, 17, 23),
(718, 17, 24),
(719, 17, 7),
(720, 17, 4),
(721, 16, 23),
(722, 16, 24),
(723, 16, 7),
(724, 16, 4),
(725, 15, 5),
(726, 15, 2),
(727, 15, 9),
(728, 15, 4),
(729, 9, 17),
(730, 9, 2),
(731, 9, 9),
(732, 9, 4),
(733, 7, 12),
(734, 7, 13),
(735, 7, 14),
(736, 7, 4),
(737, 6, 31),
(738, 6, 10),
(739, 6, 32),
(740, 6, 4),
(741, 4, 8),
(742, 4, 2),
(743, 4, 9),
(744, 4, 4),
(749, 3, 5),
(750, 3, 2),
(751, 3, 14),
(752, 3, 4),
(753, 2, 1),
(754, 2, 2),
(755, 2, 3),
(756, 2, 4),
(757, 1, 30),
(758, 1, 16),
(759, 1, 3),
(760, 1, 4),
(761, 5, 5),
(762, 5, 2),
(763, 5, 9),
(764, 5, 4);


INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`, `r_name`) VALUES
(3, 3, 4, 5, 0, 'tốt', '2023-10-22 05:34:27', '2023-10-22 05:34:27', ''),
(5, 7, 30, 4, 0, 'Tạm', '2023-10-23 07:23:38', '2023-10-23 07:23:38', ''),
(6, 3, 22, 4, 0, NULL, '2023-10-23 18:17:21', '2023-10-23 18:17:21', ''),
(7, 9, 57, 4, 0, 'a', '2023-11-02 07:16:19', '2023-11-02 07:16:19', NULL);


INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'http://127.0.0.1:8000/', '2024-05-15__b1.png', 1, 1, 0, '2024-05-15 04:40:02', '2024-05-15 04:40:02'),
(2, 'Slide 2', 'http://127.0.0.1:8000/san-pham', '2024-05-15__b3.png', 1, 1, 0, '2024-05-15 04:40:06', '2024-05-15 04:40:06'),
(3, 'Slide 3', 'http://127.0.0.1:8000/san-pham', '2024-05-15__b4.png', 1, 1, 0, '2024-05-15 04:40:10', '2024-05-15 04:40:10');


INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, 1, NULL, '<p style=\"text-align:center\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">DECEMBER cosmetic Việt Nam h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Với chương tr&igrave;nh ưu đ&atilde;i mua đơn h&agrave;ng từ <span style=\"color:#c0392b\">&gt;90K&nbsp;</span>ch&uacute;ng t&ocirc;i sẵn s&agrave;ng miễn ph&iacute; dịch vụ ship cho tất cả c&aacute;c đơn h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"Thông tin về vận chuyển và giao nhận\" src=\"https://d3rzzb9pdm93i0.cloudfront.net/2022/06/16563112388eb48f7c9dc29985c055284505002509.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đối với qu&yacute; kh&aacute;ch h&agrave;ng ở tại khu vực Ninh Kiều, Cần Thơ. Cửa h&agrave;ng đang c&oacute; ch&iacute;nh s&aacute;ch freeship v&agrave; ship hỏa tốc trong 1h d&agrave;nh cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng trong khu vực Ninh Kiều.&nbsp;</span></p>\r\n\r\n<p><img alt=\"TẢI Bản đồ Quận Ninh Kiều, TP Cần Thơ khổ lớn phóng to 2023\" src=\"https://bandovietnam.com.vn/media/article/ban-do-quan-ninh-kieu.jpeg\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Kh&aacute;ch h&agrave;ng c&oacute; thể tiến h&agrave;nh mua h&agrave;ng th&ocirc;ng qua 2 c&aacute;ch. C&aacute;ch 1 mua h&agrave;ng trực tiếp tr&ecirc;n web, c&oacute; thể thanh to&aacute;n khi nhận h&agrave;ng hoặc thanh to&aacute;n trực tiếp qua thẻ t&iacute;n dụng. C&aacute;ch 2: LI&ecirc;n hệ qua số hotline 1900.2312 để li&ecirc;n hệ mua h&agrave;ng trực tiếp.</span></p>\r\n\r\n<p><img alt=\"LIÊN HỆ\" src=\"https://isfm.ufm.edu.vn/Resources/Images/SubDomain/isfm/Artboard-8@5x.png\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Sau khi đ&atilde; x&aacute;c nhận đơn h&agrave;ng, cửa h&agrave;ng sẽ tiến h&agrave;nh g&oacute;i h&agrave;ng v&agrave; gởi đi nhanh nhất, kh&aacute;ch h&agrave;ng c&oacute; thể theo d&otilde;i t&igrave;nh trạng đơn h&agrave;ng qua phần &quot;Quản l&yacute; đơn h&agrave;ng&quot;&nbsp;<em><u>http://127.0.0.1:8000/account/transaction</u></em>.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; ủng hộ DECEMBER cosmetic.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nếu c&oacute; sai s&oacute;t xin qu&yacute; kh&aacute;ch li&ecirc;n hệ qua hotline 1900.2312.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">December cosmetic Việt Nam xin tr&acirc;n trọng cảm ơn!!</span></p>\r\n\r\n<p>&nbsp;</p>', '2023-10-12 18:15:53', '2023-10-12 18:15:53');


INSERT INTO `suppliers` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Sài Gòn', '0999999999', 'nhacungcapmypham@gmail.com', 'Quận 2,Tp. Hồ Chí Minh (TPHCM)', '2023-08-04 02:39:00', '2024-05-15 04:40:52'),
(2, 'Laptop Việt', '034955555', 'myphamviet@gmail.com', 'Đông Xuân, Hà Nội', '2023-10-21 18:15:05', '2024-05-15 04:40:57');


INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(4, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, -1, 2, '2023-09-15 11:48:09', '2023-09-15 11:48:46'),
(5, 3, 1, 134400, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-09-15 12:03:43', '2023-09-17 06:02:06'),
(6, 4, 1, 272000, 'Vy', 'vy123@gmail.com', '0933188900', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 17:54:05', '2023-10-06 11:32:21'),
(7, 5, 1, 134400, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0766827652', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 18:00:52', '2023-10-05 18:02:57'),
(8, 3, 0, 82000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:34:53', '2023-10-06 09:43:11'),
(9, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:43:41', '2023-10-06 09:46:17'),
(10, 3, 1, 377280, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:18:48', '2023-10-06 11:19:36'),
(12, 3, 1, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:51:55', '2023-10-06 12:05:24'),
(15, 3, 1, 238140, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-10 14:11:50', '2023-10-10 14:12:29'),
(16, 3, 1, 590000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-13 08:24:06', '2023-10-24 18:23:51'),
(17, 3, 1, 281600, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:48:20', '2023-10-30 18:13:43'),
(18, 3, 1, 416500, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:52:59', '2023-10-22 05:31:47'),
(19, 7, 1, 162000, 'Khánh', 'khanh123@gmail.com', '0907077417', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-23 07:22:28', '2023-10-23 07:22:48'),
(20, 8, 1, 908000, 'Nhi2312', 'lethichucnhi2312@gmail.com', '0774836320', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 2, 1, '2023-10-31 05:02:22', '2023-10-31 06:00:16'),
(21, 9, 1, 1047800, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 3, 1, '2023-11-02 07:11:56', '2023-11-02 07:15:53'),
(22, 9, 0, 470700, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'h', 1, 1, '2023-12-03 09:26:14', NULL),
(23, 9, 0, 306000, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 1, 2, '2024-02-23 03:34:50', NULL),
(24, 9, 0, 864000, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'a', 1, 1, '2024-05-15 04:42:43', NULL);


INSERT INTO `users` (`name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
( 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', NULL, '$2y$10$rXrKZ0eMQKp0m8j7d.bWwutMrCUyzV8hxNmKgUtrFZFKET4pBRNOa', '907077125', -2820060, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-15T15:08:28.799463Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-19T14:51:13.368800Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-22T05:33:39.896501Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-30T15:16:14.303399Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-03T06:56:44.495003Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-04T08:47:10.561347Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-05T18:31:12.488211Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T09:22:23.396460Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T11:18:28.754070Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-09T08:18:27.604363Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-10T14:03:48.511352Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-11T18:30:35.844622Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-12T18:01:04.397101Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:02:31.184305Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:15:47.156260Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-20T08:48:12.060825Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-22T05:33:28.392789Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-23T18:08:53.651141Z\"}]', 4, NULL, '2023-09-19__nen.jpg', NULL, '2023-09-15 11:47:12', '2023-09-19 14:51:44'),
( 'Vy', 'vy123@gmail.com', NULL, '$2y$10$jcrZx3gRv7ms5WsagqXGSOW/03exND7VR8LmB8bRSYXDae.ajutDe', '0933188900', -272000, NULL, 1, NULL, NULL, NULL, '2023-10-05 17:38:00', NULL),
( 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', NULL, '$2y$10$injnEcIuMrAb3hPpqiu9NOfEGdcEvhKe6Rkz2lhldwktfZTjrM8sa', '0766827652', -134400, NULL, 0, NULL, NULL, NULL, '2023-10-05 18:00:30', NULL),
( 'Khả Hân', 'khanhan122001@gmail.com', NULL, '$2y$10$GxPprylryxjOwOkp2bx4mueUmd4XYFpE3pzdczWEMLmLCw5IyCGB.', '0909339199', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-24T18:10:46.727052Z\"}]', 1, NULL, NULL, NULL, '2023-10-09 08:16:54', NULL),
( 'Khánh', 'khanh123@gmail.com', NULL, '$2y$10$pwYNklFcibljGdg7oxxUeek8jLHVqeNMwZSkfIGUp9qYNWnm3I9OO', '0907077417', -162000, NULL, 0, NULL, NULL, NULL, '2023-10-23 07:21:36', NULL),
( 'Nhi2312', 'lethichucnhi2312@gmail.com', NULL, '$2y$10$gWj0W.v8qImbgegv3DwmgOokouUZyxYvxtH7ZfW/QoXxefpCm52x6', '0774836320', -908000, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-31T05:01:21.447191Z\"}]', 0, NULL, NULL, NULL, '2023-10-30 18:22:47', NULL),
( 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', NULL, '$2y$10$H4unk/E3S/VWq96Tyb36DeFHR5anT1cfxavOrpijmDtNV9mrvpm3m', '0368822642', -2382500, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:00:47.593180Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:12:46.426071Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-03T02:42:31.407630Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T09:25:37.995283Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"121.0.0.0\",\"time\":\"2024-02-23T03:34:44.380144Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-05-15T04:42:05.926451Z\"}]', 5, NULL, NULL, NULL, '2023-11-02 06:56:07', NULL);

INSERT INTO `user_favourites` ( `uf_product_id`, `uf_user_id`) VALUES
( 9, 9),
( 15, 9),
( 25, 3),
( 26, 3);


INSERT INTO `warehouses` ( `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
( 22, 130000, 12, NULL, '2023-10-11 18:56:05', '2023-10-11 18:56:05'),
( 17, 100000, 13, NULL, '2023-10-11 19:35:52', '2023-10-11 19:35:52');

