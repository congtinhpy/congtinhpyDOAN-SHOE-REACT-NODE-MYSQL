-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 15, 2023 lúc 02:22 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fp_pwd_5`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(300) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `default_address` tinyint(4) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `user_address`, `user_location`, `default_address`) VALUES
(1, 5, 'Jl. Raya Kalibata No.1, RT.9/RW.4, Rawajati, Kec. Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12750', '-6.255409322689378,106.85226289970407', 1),
(2, 5, 'Jl. Padasuka Atas No.233, Padasuka, Kec. Cimenyan, Bandung, Jawa Barat 40192', '-6.884294224824708,107.66148351850873', 0),
(3, 6, 'Jl. Terompong No.24, Sumerta Kelod, Kec. Denpasar Tim., Kota Denpasar, Bali 80239', '-8.654857030889817,115.2431416799489', 1),
(4, 6, 'Jl. P. Antasari No.139, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70233', '-3.322764595480353,114.60475593804104', 0),
(5, 6, 'Jl. Mayjen Sungkono No.89, Gn. Sari, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60224', '-7.286518385847658,112.72099510190635', 0),
(6, 7, 'Jalan K.H. Ahmad Dahlan, Jl. Banteng Dalam Kel No.6, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264', '-6.931290474533568,107.62421110595317', 1),
(7, 8, 'Jl. Raya Serpong No.8A, Pd. Jagung, Kec. Serpong Utara, Kota Tangerang Selatan, Banten 15326', '-6.260942454566785,106.6552117607698', 1),
(8, 8, 'Jl. MT. Haryono No.47, Suryodiningratan, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55141', '-7.811808127053831,110.35791972766002', 0),
(9, 11, 'Jl. Ahmad Yani No.66, Gelangan, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56117', '-7.467776135553615,110.21803873768839', 1),
(10, 13, 'Jl. Abubakar Lambogo No.83, Bukit Indah, Kec. Soreang, Kota Parepare, Sulawesi Selatan 91131', '-4.002518856111405,119.64243848385566', 1),
(11, 25, '11', '111', 0),
(12, 30, '180', '4444', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `warehouse_id`, `user_id`) VALUES
(0, 0, 1),
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 1, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`) VALUES
(14, 8),
(15, 5),
(16, 10),
(17, 6),
(18, 7),
(20, 0),
(21, 1),
(22, 11),
(23, 13),
(24, 25),
(25, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `cart_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`cart_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_items`
--

INSERT INTO `cart_items` (`cart_items_id`, `cart_id`, `product_id`, `size`, `quantity`) VALUES
(115, 23, 2, 'l', 3),
(116, 23, 8, 'xl', 5),
(117, 24, 2, 's', 4),
(118, 24, 5, 'xl', 2),
(119, 24, 71, 'xl', 2),
(120, 25, 70, 'm', 1),
(121, 25, 74, '38', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `price_buy` int(11) NOT NULL,
  `price_sell` int(11) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `category` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `hide` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price_buy`, `price_sell`, `product_desc`, `category`, `color`, `product_image`, `hide`) VALUES
(70, 'IENEVAN AGI ', 225000, 349900, 'E-2 Foam là bộ đệm kép được phát triển bởi RieNevan, với 2 thành phần gồm miếng lót in-sock “E1” và đế giữa mid-sole “E-Lightweight”. \r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', ' Giày Training ', 'blue', '/images/1.jpg', 1),
(71, 'SNAP CLASSICK ', 255000, 339900, 'RieNevan SNAP \"Classick\" là dòng sản phẩm Trượt ván mới được cải tiến từ phiên bản SNAP tiền nhiệm, ra đời với ý tưởng mang trở lại sự cổ điển từ thập niên 80 cùng với thiết kế đậm chất đường phố. RieNevan SNAP vừa đáp ứng được về độ bền, vững chân cho bộ môn trượt ván và cả những hoạt động thời trang thường ngày, dễ phối với đa phong cách với form dáng cổ điển.', 'Giày Trượt Ván ', 'white', '/images/2.jpg', 1),
(72, 'RN541', 100000, 319900, 'Với thiết kế đế hoa văn Trống Đồng đặc trưng của Văn hóa Việt Nam. Ứng dụng công nghệ đế E2-Foam tăng cường tối đa độ êm ái và đàn hồi khi di chuyển trên mọi địa hình.\r\n\r\nRN541 là dòng sản phẩm sneaker \"best seller\" của RieNevan, phù hợp cho nhiều hoạt động đa dụng với chất lượng bền bỉ đã được khẳng định trên thị trường.', 'Giày Sneaker', 'red', '/images/3.jpg', 1),
(73, 'RIENEVAN AGI - OLD SCHOOL', 100000, 299900, 'RieNevan Training - AGI ra đời bắt nguồn từ những hình tượng quen thuộc của thành phố Đà Nẵng. Phần khung định hình (cage) được thiết kế từ hình ảnh của cầu Trần Thị Lý - cây cầu đầu tiên với hình ảnh cánh buồm căng gió ra khơi của Đà Nẵng, xen lẫn hình tượng di tích lịch sử văn hóa cấp quốc gia núi Ngũ Hành Sơn. Phần đế được thể hiện thông qua hình ảnh chiếc Ghe của ngư dân Đà thành đang lướt trên mặt nước.\r\n\r\nVới thiết kế hỗ trợ cho các chuyển động đa chiều như nhảy, tăng tốc giảm tốc và thay đổi hướng một cách đột ngột, phù hợp với nhiều hình thức tập luyện', 'Giày Training ', 'white', '/images/4.jpg', 1),
(74, 'LIENEVAN', 150000, 349900, 'E-2 Foam là bộ đệm kép được phát triển bởi RieNevan, với 2 thành phần gồm miếng lót in-sock “E1” và đế giữa mid-sole “E-Lightweight”. \r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', 'Giày Training ', 'white', '/images/5.jpg', 1),
(75, 'AGI - OLD SCHOOL', 200000, 389900, 'Phần đế được thể hiện thông qua hình ảnh chiếc Ghe của ngư dân Đà thành đang lướt trên mặt nước.\r\n\r\nVới thiết kế hỗ trợ cho các chuyển động đa chiều như nhảy, tăng tốc giảm tốc và thay đổi hướng một cách đột ngột, phù hợp với nhiều hình thức tập luyện.', 'Giày Training ', 'black', '/images/6.jpg', 1),
(76, 'AGI_675 ', 225000, 349900, 'E-2 Foam là bộ đệm kép được phát triển bởi RieNevan, với 2 thành phần gồm miếng lót in-sock “E1” và đế giữa mid-sole “E-Lightweight”. \r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', ' Giày Training ', 'blue', '/images/7.jpg', 1),
(77, 'LAMATA', 150000, 349900, 'E-2 Foam là bộ đệm kép được phát triển bởi RieNevan, với 2 thành phần gồm miếng lót in-sock “E1” và đế giữa mid-sole “E-Lightweight”. \r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', 'Giày Training ', 'white', '/images/8.jpg', 1),
(100, 'AMAHA', 150000, 349900, '\r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', 'Giày Training ', 'white', '/images/9.jpg', 1),
(101, 'IENEVAN AGI ', 225000, 349900, 'E-2 Foam là bộ đệm kép được phát triển bởi RieNevan, với 2 thành phần gồm miếng lót in-sock “E1” và đế giữa mid-sole “E-Lightweight”. \r\n\r\nPhần in-sock E1 được làm từ chất liệu PU (Polyurethane) – được pha theo công thức mới của RieNevan. Mỗi phần sẽ có công thức pha khác nhau, với miếng lót thiên về độ êm và mid-sole thiên về khả năng nén lực, trả lực.', ' Giày Training ', 'blue', '/images/10.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_size`
--

DROP TABLE IF EXISTS `products_size`;
CREATE TABLE IF NOT EXISTS `products_size` (
  `products_size_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  PRIMARY KEY (`products_size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products_size`
--

INSERT INTO `products_size` (`products_size_id`, `product_id`, `size`) VALUES
(1, 1, 's'),
(2, 1, 'm'),
(3, 1, 'l'),
(4, 1, 'xl'),
(5, 2, 's'),
(6, 2, 'm'),
(7, 2, 'l'),
(8, 2, 'xl'),
(9, 3, '37'),
(10, 3, '38'),
(11, 3, '39'),
(12, 3, '40'),
(13, 4, '37'),
(14, 4, '38'),
(15, 4, '39'),
(16, 4, '40'),
(17, 5, 's'),
(18, 5, 'm'),
(19, 5, 'l'),
(20, 5, 'xl'),
(21, 6, 's'),
(22, 6, 'm'),
(23, 6, 'l'),
(24, 6, 'xl'),
(25, 7, 's'),
(26, 7, 'm'),
(27, 7, 'l'),
(28, 7, 'xl'),
(29, 8, 's'),
(30, 8, 'm'),
(31, 8, 'l'),
(32, 8, 'xl'),
(33, 9, 's'),
(34, 9, 'm'),
(35, 9, 'l'),
(36, 9, 'xl'),
(37, 10, 's'),
(38, 10, 'm'),
(39, 10, 'l'),
(40, 10, 'xl'),
(41, 11, 's'),
(42, 11, 'm'),
(43, 11, 'l'),
(44, 11, 'xl'),
(45, 12, 's'),
(46, 12, 'm'),
(47, 12, 'l'),
(48, 12, 'xl'),
(49, 13, 's'),
(50, 13, 'm'),
(51, 13, 'l'),
(52, 13, 'xl'),
(53, 14, 's'),
(54, 14, 'm'),
(55, 14, 'l'),
(56, 14, 'xl'),
(57, 15, 's'),
(58, 15, 'm'),
(59, 15, 'l'),
(60, 15, 'xl'),
(61, 16, 's'),
(62, 16, 'm'),
(63, 16, 'l'),
(64, 16, 'xl'),
(65, 17, 's'),
(66, 17, 'm'),
(67, 17, 'l'),
(68, 17, 'xl');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `warehouse_id_form` int(11) NOT NULL,
  `warehouse_id_to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `transactions_id` varchar(45) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `request`
--

INSERT INTO `request` (`request_id`, `product_id`, `size`, `warehouse_id_form`, `warehouse_id_to`, `amount`, `status`, `transactions_id`) VALUES
(246, 2, 'm', 1, 2, 2, 'unconfirmed', '78'),
(247, 16, 'xl', 1, 2, 2, 'unconfirmed', '79'),
(249, 18, '40', 2, 3, 1, 'unconfirmed', '80'),
(251, 70, 's', 3, 1, 1, 'unconfirmed', '81'),
(253, 69, 'l', 3, 1, 1, 'unconfirmed', '81'),
(254, 15, 'l', 1, 2, 2, 'unconfirmed', '82'),
(255, 15, 'l', 1, 3, 1, 'unconfirmed', '82'),
(264, 6, 'xl', 1, 2, 1, 'unconfirmed', '93'),
(269, 9, 's', 2, 1, 1, 'unconfirmed', '99'),
(273, 1, 'l', 3, 1, 2, 'unconfirmed', '101'),
(275, 12, 'l', 3, 2, 1, 'unconfirmed', '103'),
(280, 15, 'l', 2, 3, 1, 'unconfirmed', '105'),
(281, 65, 'm', 2, 1, 2, 'unconfirmed', '105'),
(283, 85, 'l', 3, 2, 2, 'unconfirmed', '108'),
(284, 4, 's', 1, 2, 1, 'unconfirmed', '110'),
(285, 5, 'xl', 1, 2, 1, 'unconfirmed', '110'),
(287, 67, 'xl', 1, 2, 1, 'unconfirmed', '112'),
(288, 12, 'l', 3, 2, 1, 'unconfirmed', '115'),
(289, 1, 'l', 2, 1, 1, 'unconfirmed', '118'),
(290, 85, 'l', 1, 2, 1, 'unconfirmed', '119'),
(291, 7, 'xl', 3, 2, 2, 'unconfirmed', '125'),
(292, 7, 'xl', 3, 1, 1, 'unconfirmed', '125'),
(299, 2, 'l', 3, 2, 0, 'unconfirmed', '129'),
(300, 2, 'l', 3, 1, 2, 'unconfirmed', '129'),
(301, 8, 'xl', 3, 2, 1, 'unconfirmed', '129'),
(302, 8, 'xl', 3, 1, 2, 'unconfirmed', '129');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `user_address` varchar(300) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `shipping_status` varchar(45) NOT NULL DEFAULT 'waiting_confirmation',
  `shipping_price` int(11) NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE IF NOT EXISTS `stock_in` (
  `stock_in_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `initial_stock` int(11) NOT NULL,
  `stock_in` int(11) NOT NULL,
  `final_stock` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`stock_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
CREATE TABLE IF NOT EXISTS `stock_out` (
  `stockout_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `initial_stock` int(11) NOT NULL,
  `stock_out` int(11) NOT NULL,
  `final_stock` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`stockout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transactions_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `transaction_status` varchar(45) NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(45) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`transactions_id`, `time`, `user_id`, `transaction_status`, `payment_proof`, `warehouse_id`) VALUES
(78, '2021-02-23 12:16:58', 8, 'paid', NULL, 1),
(79, '2021-03-24 00:39:03', 8, 'paid', NULL, 1),
(80, '2021-06-24 00:42:22', 7, 'paid', NULL, 2),
(81, '2021-04-24 00:43:28', 6, 'paid', NULL, 3),
(82, '2021-05-24 00:46:36', 5, 'paid', NULL, 1),
(89, '2021-04-24 02:24:38', 8, 'user_cancelled', NULL, 1),
(90, '2021-10-24 02:24:41', 8, 'user_cancelled', NULL, 1),
(91, '2021-09-24 02:24:42', 8, 'paid', NULL, 1),
(92, '2021-05-24 02:25:31', 5, 'user_cancelled', NULL, 1),
(93, '2021-06-24 02:25:33', 5, 'paid', NULL, 1),
(94, '2021-05-24 02:26:37', 5, 'user_cancelled', NULL, 1),
(95, '2021-07-24 02:26:41', 5, 'paid', NULL, 1),
(96, '2021-06-24 02:27:31', 7, 'user_cancelled', NULL, 2),
(97, '2021-08-24 02:27:33', 7, 'paid', NULL, 2),
(98, '2021-07-24 02:31:56', 7, 'paid', NULL, 2),
(99, '2021-08-24 02:32:12', 7, 'paid', NULL, 2),
(100, '2021-08-24 02:32:58', 6, 'user_cancelled', NULL, 3),
(101, '2021-04-24 02:33:00', 6, 'paid', NULL, 3),
(102, '2021-08-24 02:34:24', 6, 'user_cancelled', NULL, 3),
(103, '2021-10-24 02:34:29', 6, 'paid', NULL, 3),
(104, '2021-06-24 02:47:25', 7, 'user_cancelled', NULL, 2),
(105, '2021-04-24 02:47:26', 7, 'paid', NULL, 2),
(106, '2021-10-24 08:04:27', 7, 'user_cancelled', NULL, 2),
(107, '2021-08-24 08:05:32', 6, 'user_cancelled', NULL, 3),
(108, '2021-08-24 08:05:35', 6, 'paid', NULL, 3),
(109, '2021-10-24 09:11:09', 8, 'paid', NULL, 1),
(110, '2021-03-24 09:13:50', 8, 'paid', NULL, 1),
(111, '2021-07-25 03:00:41', 5, 'user_cancelled', NULL, 1),
(112, '2021-08-25 03:00:42', 5, 'paid', NULL, 1),
(113, '2021-10-25 03:01:31', 5, 'user_cancelled', NULL, 1),
(114, '2021-09-25 03:01:41', 5, 'paid', NULL, 1),
(115, '2021-10-25 03:07:20', 6, 'paid', NULL, 3),
(116, '2021-10-25 03:07:43', 6, 'user_cancelled', NULL, 3),
(117, '2021-10-25 03:07:50', 6, 'paid', NULL, 3),
(118, '2021-10-25 03:10:48', 7, 'paid', NULL, 2),
(119, '2021-10-25 03:12:55', 8, 'paid', NULL, 1),
(120, '2021-10-25 03:16:07', 8, 'paid', NULL, 1),
(121, '2021-10-25 03:17:54', 8, 'paid', NULL, 1),
(125, '2021-10-25 07:45:02', 11, 'paid', NULL, 3),
(126, '2021-10-25 08:08:04', 11, 'paid', NULL, 3),
(128, '2021-10-25 08:24:31', 13, 'user_cancelled', NULL, 3),
(129, '2021-10-25 08:25:07', 13, 'paid', NULL, 3),
(130, '2023-03-13 05:20:41', 25, 'pending', NULL, NULL),
(131, '2023-03-13 05:21:09', 25, 'pending', NULL, NULL),
(132, '2023-03-13 06:26:40', 25, 'waiting_payment', NULL, 1),
(133, '2023-03-13 06:26:52', 25, 'pending', NULL, 1),
(134, '2023-03-14 15:48:47', 30, 'pending', NULL, NULL),
(135, '2023-03-14 15:49:07', 30, 'pending', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE IF NOT EXISTS `transaction_items` (
  `transaction_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `transaction_price` int(11) NOT NULL,
  PRIMARY KEY (`transaction_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transaction_items`
--

INSERT INTO `transaction_items` (`transaction_items_id`, `transactions_id`, `product_id`, `size`, `quantity`, `transaction_price`) VALUES
(145, 78, 2, 'm', 4, 559900),
(146, 78, 1, 'l', 1, 899900),
(147, 79, 9, 'xl', 1, 299900),
(148, 79, 16, 'xl', 3, 349900),
(149, 80, 18, '40', 1, 329900),
(150, 80, 13, 'm', 1, 429900),
(151, 80, 5, 's', 1, 389900),
(152, 81, 70, 's', 1, 349900),
(153, 81, 69, 'l', 1, 349900),
(154, 82, 15, 'l', 4, 179900),
(155, 82, 14, 'm', 2, 349900),
(167, 89, 4, 'l', 1, 319900),
(168, 89, 8, 's', 1, 399900),
(169, 89, 72, 'l', 1, 319900),
(170, 90, 4, 'l', 1, 319900),
(171, 90, 8, 's', 1, 399900),
(172, 90, 72, 'l', 1, 319900),
(173, 91, 4, 'l', 1, 319900),
(174, 91, 8, 's', 1, 399900),
(175, 91, 72, 'l', 1, 319900),
(176, 92, 6, 'xl', 2, 449900),
(177, 92, 16, 'l', 3, 349900),
(178, 93, 6, 'xl', 2, 449900),
(179, 93, 16, 'l', 3, 349900),
(180, 94, 71, 'l', 1, 339900),
(181, 94, 69, 'xl', 1, 349900),
(182, 95, 71, 'l', 1, 339900),
(183, 95, 69, 'xl', 1, 349900),
(184, 96, 5, 'l', 1, 389900),
(185, 96, 16, 'xl', 1, 349900),
(186, 97, 5, 'l', 1, 389900),
(187, 97, 16, 'xl', 1, 349900),
(188, 98, 5, 'l', 1, 389900),
(189, 98, 8, 'xl', 1, 399900),
(190, 99, 9, 's', 1, 299900),
(191, 99, 17, 'xl', 2, 179900),
(192, 100, 1, 'l', 2, 899900),
(193, 100, 18, '39', 1, 329900),
(194, 101, 1, 'l', 2, 899900),
(195, 101, 18, '39', 1, 329900),
(196, 102, 12, 'l', 1, 299900),
(197, 102, 13, 'xl', 3, 429900),
(198, 103, 12, 'l', 1, 299900),
(199, 103, 13, 'xl', 3, 429900),
(200, 104, 15, 'l', 1, 179900),
(201, 104, 65, 'm', 2, 279900),
(202, 105, 15, 'l', 1, 179900),
(203, 105, 65, 'm', 2, 279900),
(204, 106, 85, 'l', 2, 399900),
(205, 107, 85, 'l', 2, 399900),
(206, 108, 85, 'l', 2, 399900),
(207, 109, 4, 's', 1, 319900),
(208, 109, 5, 'xl', 1, 389900),
(209, 110, 4, 's', 1, 319900),
(210, 110, 5, 'xl', 1, 389900),
(211, 111, 67, 'xl', 1, 899900),
(212, 111, 11, 'xl', 1, 189900),
(213, 111, 88, 'l', 1, 669900),
(214, 112, 67, 'xl', 1, 899900),
(215, 112, 11, 'xl', 1, 189900),
(216, 112, 88, 'l', 1, 669900),
(217, 113, 70, 'xl', 1, 349900),
(218, 113, 86, 'xl', 1, 449900),
(219, 114, 70, 'xl', 1, 349900),
(220, 114, 86, 'xl', 1, 449900),
(221, 115, 5, 'l', 1, 389900),
(222, 115, 7, 'l', 1, 279900),
(223, 115, 12, 'l', 1, 299900),
(224, 116, 17, 'l', 1, 179900),
(225, 116, 16, 'l', 1, 349900),
(226, 117, 17, 'l', 1, 179900),
(227, 117, 16, 'l', 1, 349900),
(228, 118, 8, 'l', 1, 399900),
(229, 118, 1, 'l', 1, 899900),
(230, 119, 85, 'l', 1, 399900),
(231, 119, 87, 'l', 1, 499900),
(232, 119, 89, 'l', 1, 499900),
(233, 120, 2, 'm', 1, 559900),
(234, 121, 16, 'l', 1, 349900),
(241, 125, 2, 'm', 1, 559900),
(242, 125, 7, 'xl', 6, 279900),
(243, 126, 2, 'm', 1, 559900),
(244, 126, 7, 'xl', 6, 279900),
(247, 128, 2, 'l', 3, 559900),
(248, 128, 8, 'xl', 5, 399900),
(249, 129, 2, 'l', 3, 559900),
(250, 129, 8, 'xl', 5, 399900),
(251, 130, 2, 's', 4, 559900),
(252, 131, 2, 's', 4, 559900),
(253, 132, 71, 'xl', 2, 339900),
(254, 133, 71, 'xl', 2, 339900),
(255, 134, 70, 'm', 1, 349900),
(256, 134, 74, '38', 1, 349900),
(257, 135, 70, 'm', 1, 349900),
(258, 135, 74, '38', 1, 349900);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profpic` varchar(200) DEFAULT NULL,
  `auth_status` varchar(45) NOT NULL,
  `verification_status` varchar(45) NOT NULL DEFAULT 'unverified',
  `pic_title` varchar(45) DEFAULT NULL,
  `pic_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `fullname`, `gender`, `age`, `profpic`, `auth_status`, `verification_status`, `pic_title`, `pic_location`) VALUES
(1, 'simon', 'simon_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Simon Ewing', 'M', 32, NULL, 'superadmin', 'verified', NULL, NULL),
(2, 'bruno', 'bruno_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Bruno Villarreal', 'M', NULL, NULL, 'admin', 'verified', NULL, NULL),
(3, 'jasmine', 'jasmine_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Jasmine Robinson', 'F', NULL, NULL, 'admin', 'verified', NULL, NULL),
(4, 'lucas', 'lucas_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Lucas Harmon', 'M', NULL, NULL, 'admin', 'verified', NULL, NULL),
(5, 'maggy', 'maggy_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', '', NULL, NULL, NULL, 'user', 'verified', NULL, NULL),
(6, 'emerald', 'emerald_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Emerald Green', NULL, NULL, NULL, 'user', 'verified', NULL, NULL),
(7, 'gail', 'gail_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Gail Carter', 'F', 27, NULL, 'user', 'verified', NULL, NULL),
(8, 'duncan', 'duncan_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Duncan Haynes', 'F', NULL, NULL, 'user', 'verified', NULL, NULL),
(9, 'walter', 'walter_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Walter Hall', NULL, NULL, NULL, 'admin', 'verified', NULL, NULL),
(10, 'michael', 'michael_pwd_warehouse@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', NULL, NULL, NULL, NULL, 'user', 'verified', NULL, NULL),
(11, 'almasutami', 'almasutami@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Almas', 'Female', 20, NULL, 'user', 'verified', NULL, NULL),
(13, 'almas22', 'almasutami@gmail.com', '50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba', 'Almas Utami', 'Female', 25, NULL, 'user', 'verified', NULL, NULL),
(28, 'admin123', 'congtinhpy2017@gmail.com', '8773d4fd6f2f197e081c86d78ca7111b7ff369d5', 'tinh1234', 'Male', 30, NULL, 'user', 'unverified', NULL, NULL),
(29, '12345', 'congtinhpy2017@gmail.com', '720583655fa575cc090adfaf6e1c1e59992aea12', '12345', 'Male', 30, NULL, 'user', 'unverified', NULL, NULL),
(30, '1234567', 'congtinhpy2017@gmail.com', 'ea1f972a3955c3bebc0fa9e01151d1d21397aeed', 'nguyen cong tinh', 'Male', 66, NULL, 'admin', 'verified', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(45) NOT NULL,
  `warehouse_location` varchar(100) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_location`) VALUES
(0, 'superadmin', 'superadmin'),
(1, 'Jakarta', '-6.168573296254959,106.82739267779641'),
(2, 'Bandung', '-6.918481927070166,107.6060782364931'),
(3, 'Surabaya', '-7.259266968418259,112.75078977847072');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouse_stock`
--

DROP TABLE IF EXISTS `warehouse_stock`;
CREATE TABLE IF NOT EXISTS `warehouse_stock` (
  `warehouse_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(45) NOT NULL,
  `warehouse_stock` int(11) NOT NULL,
  `user_stock` int(11) NOT NULL,
  PRIMARY KEY (`warehouse_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `warehouse_stock`
--

INSERT INTO `warehouse_stock` (`warehouse_stock_id`, `warehouse_id`, `product_id`, `size`, `warehouse_stock`, `user_stock`) VALUES
(1, 1, 1, 's', 1, 1),
(2, 1, 1, 'm', 2, 2),
(3, 1, 1, 'l', 1, 1),
(4, 1, 1, 'xl', 0, 0),
(5, 1, 2, 's', 3, 3),
(6, 1, 2, 'm', 2, 2),
(7, 1, 2, 'l', 0, 0),
(9, 1, 3, '37', 2, 2),
(10, 1, 3, '38', 2, 2),
(11, 1, 3, '39', 1, 1),
(12, 1, 3, '40', 4, 4),
(13, 1, 4, 's', 2, 2),
(14, 1, 4, 'm', 3, 3),
(15, 1, 4, 'l', 1, 1),
(16, 1, 4, 'xl', 1, 1),
(17, 1, 5, 's', 3, 3),
(18, 1, 5, 'm', 1, 1),
(19, 1, 5, 'l', 3, 3),
(20, 1, 5, 'xl', 2, 2),
(21, 1, 6, 's', 3, 3),
(22, 1, 6, 'm', 2, 2),
(23, 1, 6, 'l', 1, 1),
(24, 1, 6, 'xl', 2, 2),
(25, 1, 7, 's', 2, 2),
(26, 1, 7, 'm', 2, 2),
(27, 1, 7, 'l', 1, 1),
(28, 1, 7, 'xl', 0, 0),
(29, 1, 8, 's', 1, 1),
(30, 1, 8, 'm', 2, 2),
(31, 1, 8, 'l', 1, 1),
(32, 1, 8, 'xl', 0, 0),
(33, 1, 9, 's', 2, 2),
(34, 1, 9, 'm', 2, 2),
(35, 1, 9, 'l', 3, 3),
(36, 1, 9, 'xl', 1, 1),
(37, 1, 10, 's', 3, 3),
(38, 1, 10, 'm', 2, 2),
(39, 1, 10, 'l', 1, 1),
(40, 1, 10, 'xl', 2, 2),
(41, 1, 11, 's', 3, 3),
(42, 1, 11, 'm', 2, 2),
(43, 1, 11, 'l', 1, 1),
(44, 1, 11, 'xl', 2, 2),
(45, 1, 12, 's', 3, 3),
(46, 1, 12, 'm', 2, 2),
(47, 1, 12, 'l', 1, 1),
(48, 1, 12, 'xl', 2, 2),
(49, 1, 13, 's', 3, 3),
(50, 1, 13, 'm', 2, 2),
(51, 1, 13, 'l', 3, 3),
(52, 1, 13, 'xl', 3, 3),
(53, 1, 14, 's', 3, 3),
(54, 1, 14, 'm', 1, 1),
(55, 1, 14, 'l', 3, 3),
(56, 1, 14, 'xl', 3, 3),
(57, 1, 15, 's', 3, 3),
(58, 1, 15, 'm', 2, 2),
(59, 1, 15, 'l', 1, 1),
(60, 1, 15, 'xl', 1, 1),
(61, 1, 16, 's', 3, 3),
(62, 1, 16, 'm', 2, 2),
(63, 1, 16, 'l', 1, 1),
(64, 1, 16, 'xl', 1, 1),
(65, 1, 17, 's', 3, 3),
(66, 1, 17, 'm', 2, 2),
(67, 1, 17, 'l', 1, 1),
(68, 1, 17, 'xl', 1, 1),
(77, 2, 3, '37', 1, 1),
(78, 2, 3, '38', 2, 2),
(79, 2, 3, '39', 3, 3),
(80, 2, 3, '40', 4, 4),
(81, 2, 4, 's', 1, 1),
(82, 2, 4, 'm', 2, 2),
(83, 2, 4, 'l', 2, 2),
(84, 2, 4, 'xl', 2, 2),
(85, 2, 5, 's', 2, 2),
(86, 2, 5, 'm', 2, 2),
(87, 2, 5, 'l', 2, 2),
(88, 2, 5, 'xl', 1, 1),
(89, 2, 6, 's', 2, 2),
(90, 2, 6, 'm', 2, 2),
(91, 2, 6, 'l', 2, 2),
(92, 2, 6, 'xl', 1, 1),
(93, 2, 7, 's', 1, 1),
(94, 2, 7, 'm', 2, 2),
(95, 2, 7, 'l', 2, 2),
(96, 2, 7, 'xl', 1, 1),
(97, 2, 8, 's', 3, 3),
(98, 2, 8, 'm', 2, 2),
(99, 2, 8, 'l', 1, 1),
(100, 2, 8, 'xl', 0, 0),
(101, 2, 9, 's', 2, 2),
(102, 2, 9, 'm', 2, 2),
(103, 2, 9, 'l', 3, 3),
(104, 2, 9, 'xl', 2, 2),
(105, 2, 10, 's', 3, 3),
(106, 2, 10, 'm', 2, 2),
(107, 2, 10, 'l', 2, 2),
(108, 2, 10, 'xl', 1, 1),
(109, 2, 12, 's', 3, 3),
(110, 2, 12, 'm', 1, 1),
(111, 2, 12, 'l', 1, 1),
(112, 2, 12, 'xl', 2, 2),
(113, 2, 12, 's', 3, 3),
(114, 2, 12, 'm', 2, 2),
(115, 2, 12, 'l', 0, 0),
(116, 2, 12, 'xl', 2, 2),
(117, 2, 13, 's', 3, 3),
(118, 2, 13, 'm', 1, 1),
(119, 2, 13, 'l', 3, 3),
(120, 2, 13, 'xl', 3, 3),
(121, 2, 14, 's', 3, 3),
(122, 2, 14, 'm', 2, 2),
(123, 2, 14, 'l', 3, 3),
(124, 2, 14, 'xl', 3, 3),
(125, 2, 15, 's', 3, 3),
(126, 2, 15, 'm', 2, 2),
(127, 2, 15, 'l', 1, 1),
(128, 2, 15, 'xl', 2, 2),
(129, 2, 16, 's', 3, 3),
(130, 2, 16, 'm', 2, 2),
(131, 2, 16, 'l', 2, 2),
(132, 2, 16, 'xl', 1, 1),
(133, 2, 17, 's', 3, 3),
(134, 2, 17, 'm', 1, 1),
(135, 2, 17, 'l', 2, 2),
(136, 2, 17, 'xl', 1, 1),
(141, 3, 2, 's', 1, 1),
(142, 3, 2, 'm', 1, 1),
(143, 3, 2, 'l', 0, 0),
(145, 3, 3, '37', 3, 3),
(146, 3, 3, '38', 3, 3),
(147, 3, 3, '39', 3, 3),
(148, 3, 3, '40', 4, 4),
(149, 3, 4, 's', 2, 2),
(150, 3, 4, 'm', 1, 1),
(151, 3, 4, 'l', 3, 3),
(152, 3, 4, 'xl', 1, 1),
(153, 3, 5, 's', 1, 1),
(154, 3, 5, 'm', 3, 3),
(155, 3, 5, 'l', 1, 1),
(156, 3, 5, 'xl', 3, 3),
(157, 3, 6, 's', 3, 3),
(158, 3, 6, 'm', 3, 3),
(159, 3, 6, 'l', 3, 3),
(160, 3, 6, 'xl', 1, 1),
(161, 3, 7, 's', 3, 3),
(162, 3, 7, 'm', 3, 3),
(163, 3, 7, 'l', 2, 2),
(164, 3, 7, 'xl', 0, 0),
(165, 3, 8, 's', 3, 3),
(166, 3, 8, 'm', 1, 1),
(167, 3, 8, 'l', 3, 3),
(168, 3, 8, 'xl', 0, 0),
(169, 3, 9, 's', 1, 1),
(170, 3, 9, 'm', 3, 3),
(171, 3, 9, 'l', 1, 1),
(172, 3, 9, 'xl', 3, 3),
(173, 3, 10, 's', 3, 3),
(174, 3, 10, 'm', 1, 1),
(175, 3, 10, 'l', 3, 3),
(176, 3, 10, 'xl', 3, 3),
(177, 3, 13, 's', 1, 1),
(178, 3, 13, 'm', 3, 3),
(179, 3, 13, 'l', 1, 1),
(180, 3, 13, 'xl', 1, 1),
(181, 3, 13, 's', 3, 3),
(182, 3, 13, 'm', 3, 3),
(183, 3, 13, 'l', 3, 3),
(184, 3, 13, 'xl', 1, 1),
(185, 3, 13, 's', 3, 3),
(186, 3, 13, 'm', 3, 3),
(187, 3, 13, 'l', 1, 1),
(188, 3, 13, 'xl', 1, 1),
(189, 3, 14, 's', 3, 3),
(190, 3, 14, 'm', 1, 1),
(191, 3, 14, 'l', 2, 2),
(192, 3, 14, 'xl', 1, 1),
(193, 3, 15, 's', 3, 3),
(194, 3, 15, 'm', 3, 3),
(195, 3, 15, 'l', 1, 1),
(196, 3, 15, 'xl', 3, 3),
(197, 3, 16, 's', 1, 1),
(198, 3, 16, 'm', 3, 3),
(199, 3, 16, 'l', 2, 2),
(200, 3, 16, 'xl', 1, 1),
(201, 3, 17, 's', 3, 3),
(202, 3, 17, 'm', 3, 3),
(203, 3, 17, 'l', 1, 1),
(204, 3, 17, 'xl', 1, 1),
(205, 3, 18, '37', 1, 1),
(206, 3, 18, '38', 2, 2),
(207, 3, 18, '39', 2, 2),
(208, 3, 18, '40', 2, 2),
(212, 1, 65, 's', 1, 1),
(213, 1, 65, 'm', 1, 1),
(214, 1, 65, 'l', 1, 1),
(215, 1, 65, 'xl', 1, 1),
(216, 1, 66, 's', 1, 1),
(217, 1, 66, 'm', 2, 2),
(218, 1, 66, 'l', 1, 1),
(219, 1, 66, 'xl', 1, 1),
(220, 2, 67, 's', 1, 1),
(221, 2, 67, 'm', 3, 3),
(222, 2, 67, 'l', 2, 2),
(223, 2, 67, 'xl', 1, 1),
(224, 3, 68, 's', 2, 2),
(225, 3, 68, 'm', 3, 3),
(226, 3, 68, 'l', 4, 4),
(227, 3, 68, 'xl', 2, 2),
(228, 1, 69, 's', 2, 2),
(229, 1, 69, 'm', 1, 1),
(230, 1, 69, 'l', 2, 2),
(231, 1, 69, 'xl', 2, 2),
(232, 1, 70, 's', 1, 1),
(233, 1, 70, 'm', 1, 0),
(234, 1, 70, 'l', 1, 1),
(235, 1, 70, 'xl', 1, 1),
(236, 1, 71, 's', 1, 1),
(237, 1, 71, 'm', 1, 1),
(238, 1, 71, 'l', 1, 1),
(239, 1, 71, 'xl', 0, 0),
(240, 1, 72, 's', 2, 2),
(241, 1, 72, 'm', 2, 2),
(242, 1, 72, 'l', 1, 1),
(243, 1, 72, 'xl', 1, 1),
(244, 1, 73, 's', 2, 2),
(245, 1, 73, 'm', 2, 2),
(246, 1, 73, 'l', 2, 2),
(247, 1, 73, 'xl', 1, 1),
(248, 2, 74, '37', 2, 2),
(249, 2, 74, '38', 1, 1),
(250, 2, 74, '39', 1, 1),
(251, 2, 74, '40', 1, 1),
(256, 1, 76, 's', 2, 2),
(257, 1, 76, 'm', 3, 3),
(258, 1, 76, 'l', 4, 4),
(259, 1, 76, 'xl', 2, 2),
(264, 3, 78, 's', 2, 2),
(265, 3, 78, 'm', 3, 3),
(266, 3, 78, 'l', 1, 1),
(267, 2, 85, 's', 2, 2),
(268, 2, 85, 'm', 2, 2),
(269, 2, 85, 'l', 1, 1),
(270, 1, 86, 's', 2, 2),
(271, 1, 86, 'm', 2, 2),
(272, 1, 86, 'l', 2, 2),
(273, 1, 86, 'xl', 1, 1),
(274, 1, 87, 's', 2, 2),
(275, 1, 87, 'm', 1, 1),
(276, 1, 87, 'l', 1, 1),
(277, 1, 87, 'xl', 2, 2),
(278, 1, 88, 's', 1, 1),
(279, 1, 88, 'm', 1, 1),
(280, 1, 88, 'l', 1, 1),
(281, 1, 89, 's', 1, 1),
(282, 1, 89, 'm', 1, 1),
(283, 1, 89, 'l', 1, 1),
(284, 1, 89, 'xl', 2, 2),
(285, 1, 8, 's', 1, 1),
(286, 1, 8, 'm', 1, 1),
(287, 1, 8, 'l', 2, 2),
(288, 1, 8, 'xl', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
