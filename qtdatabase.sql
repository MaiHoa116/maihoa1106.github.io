-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2021 lúc 09:39 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qtdatabase`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Phạm Thị Trang Thu', 'trangthu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 2147483647),
(2, 'Lê Hồng Quân', 'lehongquan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Hoa tươi', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'HOA SINH NHẬT', 'Sinh nhật là ngày đặc biệt và có ý nghĩa quan trong với mỗi người. Đây là dịp để bạn gửi lời cảm ơn, thể hiện tình cảm, sự quan tâm tới ba mẹ, bạn bè, đồng nghiệp và đặc biệt là người vợ, bạn gái. Trong ngày sinh nhật, bên cạnh một món quà thật ý nghĩa th', 1, 1, '2017-04-22 05:37:23'),
(8, 'HOA VALENTINE', 'Ngày lễ tình nhân Valentine 14/2 là dịp đặc biệt dành riêng cho các cặp tình nhân trên khắp thế giới. Đây là dịp để các chàng trai bày tỏ và thể hiện tình yêu với một nửa của mình. Trong dịp này, ngoài Chocolate thì không thể thiếu một bó hoa thật đẹp, th', 1, 2, '2017-04-22 05:37:36'),
(9, 'HOA KHAI TRƯƠNG', 'Bạn đang cần đặt hoa gửi tặng đối tác trong dịp khai trương, kỷ niệm ngày thành lập công ty? Bạn đã tham khảo hàng chục shop hoa với hàng trăm mẫu hoa khai trương khác nhau, nhưng vẫn chưa tìm được cửa hàng uy tín, giao hoa đúng giờ và giống hình?\r\n\r\nShop', 1, 3, '2017-04-22 05:37:50'),
(10, 'Hoa sinh nhật sang trọng', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Hoa sinh nhật giá rẻ', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Hoa sinh nhật tặng người yêu', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Hoa sinh nhật tặng mẹ', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'Hoa sinh nhật tặng bạn', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'Lẵng hoa tặng sinh nhật', '', 7, 6, '2017-04-22 09:09:46'),
(16, 'Hoa khai trương để bàn', '', 9, 1, '2017-04-22 09:10:10'),
(17, 'Kệ hoa khai trương', '', 9, 2, '2017-04-22 09:23:39'),
(18, 'Hoa khai trương giá rẻ', '', 9, 3, '2017-04-22 09:23:57'),
(19, 'Lẵng hoa 2 tầng mừng khai trương', '', 9, 4, '2017-04-22 09:25:55'),
(20, 'Hoa Valentine ngọt ngào', '', 8, 1, '2017-04-22 09:26:21'),
(21, 'Hoa Valentine sang trọng', '', 8, 2, '2017-04-22 09:26:34'),
(25, 'HOA NGÀY CỦA MẸ', 'Ngày của Mẹ (Mother\'s Day) là ngày chủ nhật thứ 2 của tháng 5 hàng năm. Đây là ngày lễ dành riêng để tôn vinh những người Mẹ trên toàn thế giới. Ngày lễ của mẹ bắt nguồn từ các nước châu Âu và sau đó được hưởng ứng bởi gần như toàn bộ các quốc gia trên th', 1, 4, '0000-00-00 00:00:00'),
(26, 'HOA CƯỚI CẦM TAY', 'Hoa cầm tay là một trong những món phụ kiện không thể thiếu của cô dâu trong lễ cưới. Không chỉ là một món phụ kiện cưới đơn thuần, những bó hoa cưới cầm tay sẽ giúp tạo điểm nhấn làm cho cô dâu trở nên nổi bật hơn trong lễ cưới của mình.', 1, 5, '0000-00-00 00:00:00'),
(27, 'HOA TỐT NGHIỆP', '', 1, 6, '0000-00-00 00:00:00'),
(28, 'HOA TẾT ÂM LỊCH', '', 1, 7, '0000-00-00 00:00:00'),
(29, 'HOA CHÚC MỪNG NGÀY NHÀ GIÁO VIỆT NAM', '', 1, 8, '0000-00-00 00:00:00'),
(30, 'Hoa Valentine giá rẻ', '', 8, 3, '0000-00-00 00:00:00'),
(31, 'Hoa Valentine nồng ấm - lãng mạn', '', 8, 4, '0000-00-00 00:00:00'),
(32, 'Hoa cưới cầm tay đẹp - đơn giản', '', 26, 1, '0000-00-00 00:00:00'),
(33, 'Hoa cưới cầm tay sang trọng', '', 26, 2, '0000-00-00 00:00:00'),
(34, 'Hoa cưới tình yêu vĩnh hằng', '', 26, 3, '0000-00-00 00:00:00'),
(35, 'Hoa Tết phát tài - phát lộc', '', 28, 1, '0000-00-00 00:00:00'),
(36, 'Hoa Tết nhập ngoại', '', 28, 2, '0000-00-00 00:00:00'),
(37, 'Hoa tốt nghiệp tinh tế - giá rẻ', '', 27, 1, '0000-00-00 00:00:00'),
(38, 'Hoa chúc mừng tốt nghiệp ý nghĩa', '', 27, 2, '0000-00-00 00:00:00'),
(39, 'Hoa đại diện cho sự yêu thương và lòng biết ơn', '', 25, 1, '0000-00-00 00:00:00'),
(40, 'Hoa tặng mẹ thiêng liêng - cao quý', '', 25, 2, '0000-00-00 00:00:00'),
(41, 'Hoa chứa đựng tình cảm chân thành gửi đến thầy cô', '', 29, 1, '0000-00-00 00:00:00'),
(42, 'Những bó hoa tươi thắm tri ân thầy cô', '', 29, 2, '0000-00-00 00:00:00'),
(43, 'Hoa Tết hưng thịnh - may mắn', '', 28, 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0),
(16, 13, 67, 2, '3560000.00', 0),
(17, 14, 54, 2, '4060000.00', 0),
(18, 15, 128, 1, '820000.00', 0),
(19, 16, 125, 1, '660000.00', 0),
(20, 17, 54, 2, '4060000.00', 0),
(21, 17, 57, 2, '960000.00', 0),
(23, 18, 54, 2, '4060000.00', 0),
(24, 18, 111, 1, '1060000.00', 0),
(25, 18, 85, 1, '490000.00', 0),
(26, 18, 67, 1, '1780000.00', 0),
(27, 18, 130, 1, '690000.00', 0),
(28, 18, 73, 1, '330000.00', 0),
(29, 18, 91, 1, '615000.00', 0),
(30, 19, 121, 1, '1960000.00', 0),
(31, 20, 71, 1, '460000.00', 0),
(32, 20, 95, 1, '730000.00', 0),
(33, 20, 55, 1, '1440000.00', 0),
(34, 20, 80, 1, '650000.00', 0),
(35, 20, 117, 1, '1290000.00', 0),
(36, 21, 131, 2, '2320000.00', 0),
(37, 21, 112, 1, '1600000.00', 0),
(38, 21, 60, 1, '850000.00', 0),
(39, 21, 73, 1, '330000.00', 0),
(40, 21, 69, 1, '770000.00', 0),
(41, 21, 75, 1, '600000.00', 0),
(42, 21, 77, 1, '650000.00', 0),
(43, 21, 86, 1, '420000.00', 0),
(44, 21, 72, 1, '1790000.00', 0),
(45, 21, 128, 1, '820000.00', 0),
(46, 21, 103, 1, '1100000.00', 0),
(47, 21, 95, 1, '730000.00', 0),
(48, 21, 94, 1, '390000.00', 0),
(49, 22, 131, 1, '1160000.00', 0),
(50, 22, 73, 1, '330000.00', 0),
(51, 22, 113, 1, '1390000.00', 0),
(52, 22, 75, 1, '600000.00', 0),
(53, 22, 79, 1, '630000.00', 0),
(54, 22, 76, 1, '1110000.00', 0),
(55, 22, 91, 1, '615000.00', 0),
(56, 22, 99, 1, '2240000.00', 0),
(57, 23, 129, 1, '1170000.00', 0),
(58, 23, 108, 1, '790000.00', 0),
(59, 24, 71, 1, '460000.00', 0),
(60, 24, 128, 1, '820000.00', 0),
(61, 24, 73, 1, '330000.00', 0),
(62, 24, 91, 1, '615000.00', 0),
(63, 24, 76, 1, '1110000.00', 0),
(64, 25, 130, 1, '690000.00', 0),
(65, 25, 72, 2, '3580000.00', 0),
(66, 25, 115, 1, '870000.00', 0),
(67, 25, 95, 1, '730000.00', 0),
(68, 25, 75, 1, '600000.00', 0),
(69, 25, 73, 1, '330000.00', 0),
(70, 25, 85, 1, '490000.00', 0),
(71, 26, 76, 1, '1110000.00', 0),
(72, 26, 69, 1, '770000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(71, 20, 'CẢM NẮNG', '<p>Trong cuộc sống đầy tấp nập, một ch&uacute;t ngọt ng&agrave;o dịu d&agrave;ng từ những c&aacute;nh hoa hồng sẽ dễ d&agrave;ng xua tan đi mệt mỏi. Đ&oacute;a hoa với t&ocirc;ng m&agrave;u pastel được g&oacute;i theo phong c&aacute;ch hiện đại l&agrave; một m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng th&iacute;ch hợp cho những c&ocirc; n&agrave;ng trẻ trung đầy c&aacute; t&iacute;nh. Từng đ&oacute;a hoa được lựa chọn kĩ lưỡng để mang đến cho bạn b&oacute; hoa lộng lẫy nhất.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>15 b&ocirc;ng hồng kem pastel</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '460000.00', 0, 'CẢM_NẮNG1.jpg', '[]', 2, 0, 9, 2, 1622905014),
(72, 21, 'TIM TÌNH YÊU', '<p>Lẵng hoa được c&aacute;c thợ hoa chuy&ecirc;n nghiệp tạo th&agrave;nh h&igrave;nh tr&aacute;i tim hết sức ấn tượng. Lẵng hoa chứa đầy t&igrave;nh y&ecirc;u n&agrave;y được tạo n&ecirc;n từ những đo&aacute; hồng tươi r&oacute;i nhiều m&agrave;u sắc v&agrave; cực kỳ l&atilde;ng mạn. Đ&acirc;y l&agrave; m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp nếu như bạn muốn tạo một ấn tượng kh&ocirc;ng thể n&agrave;o phai trong mắt người y&ecirc;u. Sẽ kh&ocirc;ng c&oacute; m&oacute;n qu&agrave; n&agrave;o tốt hơn lẵng hoa t&igrave;nh y&ecirc;u n&agrave;y khi bạn muốn đ&aacute;nh dấu cột mốc mối quan hệ tuyệt đẹp của hai bạn.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hoa hồng d&acirc;u</li>\r\n	<li>Hoa baby trắng viền ngo&agrave;i</li>\r\n</ul>\r\n', '1790000.00', 0, 'TIM_TÌNH_YÊU1.jpg', '[]', 3, 0, 9, 2, 1622905062),
(73, 30, 'ENDLESS LOVE', '<p>B&oacute; hoa Endless Love được thiết kế từ hoa hồng sen v&agrave; baby hồng nhạt l&agrave; lựa chọn ho&agrave;n hảo để tặng bạn g&aacute;i trong dịp sinh nhật, Valentine...</p>\r\n\r\n<p>B&oacute; hoa&nbsp;Tr&aacute;i tim m&ugrave;a xu&acirc;n&nbsp;bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng sen</li>\r\n	<li>Hoa baby trắng</li>\r\n</ul>\r\n', '350000.00', 20000, 'ENDLESS_LOVE1.jpg', '[]', 2, 1, 9, 2, 1622905095),
(74, 0, 'XÚC CẢM', '<p>B&oacute; hoa thể hiện sắc th&aacute;i của một mối qua hệ đ&ocirc;i lứa: c&oacute; những l&uacute;c đắm say hạnh ph&uacute;c, c&oacute; những l&uacute;c lạnh l&ugrave;ng nhưng đầy sự quan t&acirc;m. Sắc đỏ rực rỡ m&atilde;nh liệt từ c&aacute;nh hồng được kết hợp tinh tế c&ugrave;ng sắc xanh nhẹ n&agrave;ng của baby, tạo n&ecirc;n một b&oacute; hoa vừa chứa đầy sự y&ecirc;u thương vừa đong đầy nhiều nỗi nhớ. H&atilde;y c&ugrave;ng nhau kỉ niệm mối quan hệ đặc biệt của hai bạn bằng b&oacute; hoa tươi mang đầy cảm x&uacute;c n&agrave;y nh&eacute;.</p>\r\n\r\n<ul>\r\n	<li>15 hoa hồng đỏ</li>\r\n	<li>Hoa baby phun xanh</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '600000.00', 0, 'XÚC_CẢM1.jpg', '[]', 1, 0, 4, 1, 1622905130),
(130, 39, 'GIẢN DỊ', '<p>Giỏ hoa với thật rực rỡ c&ugrave;ng hồng đỏ đầy sức sống v&agrave; c&aacute;c loại hoa phụ nhẹ nh&agrave;ng, g&oacute;p phần tạo n&ecirc;n sự lung linh như một khu vườn cổ t&iacute;ch sẽ thổi v&agrave;o cuộc sống bạn một ch&uacute;t m&agrave;u sắc cổ t&iacute;ch đầy nhẹ nh&agrave;ng v&agrave; dễ thương. H&atilde;y gửi một ch&uacute;t ngạc nhi&ecirc;n đầy th&uacute; vị đến những người đ&atilde; lu&ocirc;n b&ecirc;n cạnh quan t&acirc;m v&agrave; lo lắng cho&nbsp;bạn v&ocirc; điều kiện nh&eacute;, đặc biệt l&agrave; người mẹ y&ecirc;u qu&yacute; của m&igrave;nh.</p>\r\n', '690000.00', 0, 'GIẢN_DỊ.jpg', '[]', 2, 1, 4, 1, 1623002048),
(67, 17, 'KỆ HOA KHAI TRƯƠNG PHÁT TÀI', '<p>Kết cấu độc đ&aacute;o c&ugrave;ng t&ocirc;ng đỏ rực rỡ, ấm n&oacute;ng, v&ocirc; c&ugrave;ng ấn tượng tạo n&ecirc;n từ c&aacute;c loại hoa hồng đủ sắc, c&ugrave;ng hoa đồng tiền... kệ&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa khai trương</a>&nbsp;mang đến một m&oacute;n qu&agrave; kh&ocirc;ng những sang trọng, nổi bật m&agrave; c&ograve;n mang một &yacute; nghĩa v&ocirc; c&ugrave;ng s&acirc;u sắc: ch&uacute;c bạn một ng&agrave;y thật hạnh ph&uacute;c v&agrave; ngập tr&agrave;n niềm vui.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Lan hồ điệp trắng</li>\r\n	<li>Hồng m&ocirc;n đỏ</li>\r\n	<li>Baby trắng</li>\r\n	<li>C&uacute;c trắng</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '1780000.00', 0, 'KỆ_HOA_KHAI_TRƯƠNG_PHÁT_TÀI1.jpg', '[]', 1, 2, 9, 2, 1622904853),
(68, 20, 'RIÊNG MÌNH EM', '<p>B&oacute; hoa với thiết kế đặt biệt từ những c&aacute;nh hồng đỏ tươi đầy rực rỡ c&ugrave;ng 1 c&aacute;nh hồng kem dễ thương nổi bật ngay giữa. B&oacute; hoa tượng trưng cho th&ocirc;ng điệp &quot; Em l&agrave; t&igrave;nh y&ecirc;u duy nhất của cuộc đời anh, d&ugrave; c&oacute; chuyện g&igrave; xảy ra, d&ugrave; buồn hay vui anh vẩn ở cạnh em đến cuối con đường&quot;. Đừng đợi chờ bạn nh&eacute;, h&atilde;y để b&oacute; hoa thay bạn n&oacute;i những lời y&ecirc;u thương ngọt ng&agrave;o nhất.</p>\r\n\r\n<p>B&oacute; hoa bao gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>20 hoa&nbsp; hồng đỏ</li>\r\n	<li>1 hoa hồng kem pastel</li>\r\n</ul>\r\n', '550000.00', 0, 'RIÊNG_MÌNH_EM1.jpg', '[]', 0, 0, 4, 1, 1622904916),
(69, 31, 'CHUNG ĐÔI', '<p>B&oacute; hoa gồm 50 hồng đỏ gồm những c&aacute;nh hồng tươi rực rỡ nhất được g&oacute;i theo t&ocirc;ng giấy hồng dễ thương như một lời nhắn trao gửi y&ecirc;u thương đầy ch&acirc;n th&agrave;nh nhất. Giữa cuộc sống đầy thử th&aacute;ch, một ch&uacute;t chia sẻ, trao gửi y&ecirc;u thương nhất định sẽ l&agrave;m ấm l&ograve;ng v&agrave; tiếp th&ecirc;m sức mạnh cho bạn ấy đấy.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>50 hoa hồng đỏ</li>\r\n	<li>Hoa baby trắng viền xung quanh</li>\r\n</ul>\r\n', '870000.00', 100000, 'CHUNG_ĐÔI1.jpg', '[]', 0, 0, 4, 1, 1622904946),
(70, 30, 'HẠ VỀ (CÚC TANA XINH)', '<p>B&oacute; hoa Hạ về được thiết kế từ những b&ocirc;ng&nbsp;hoa c&uacute;c Tana&nbsp;nhỏ xinh, lo&agrave;i hoa tượng trưng cho t&igrave;nh y&ecirc;u ch&acirc;n th&agrave;nh, sẽ l&agrave; sự lựa chọn ho&agrave;n hảo để d&agrave;nh tặng vợ hoặc bạn g&aacute;i trong ng&agrave;y lễ t&igrave;nh nh&acirc;n v&agrave; trong những dịp đặc biệt.</p>\r\n\r\n<p>Những b&ocirc;ng hoa c&uacute;c tana nhỏ xinh chẳng những mang trong m&igrave;nh một vẻ đẹp dễ thương với m&agrave;u trắng thuần khiết, m&agrave; c&ograve;n ẩn chứa những &yacute; nghĩa v&ocirc; c&ugrave;ng s&acirc;u sắc. Tuy c&oacute; vẻ ngo&agrave;i mỏng manh, nhưng những b&ocirc;ng hoa c&uacute;c tana lại l&agrave; một trong những lo&agrave;i hoa tượng trưng cho sự tự tin v&agrave; mạnh mẽ. Th&ocirc;ng điệp của những b&ocirc;ng hoa c&uacute;c tana l&agrave; &ldquo;D&ugrave; cho c&oacute; kh&oacute; khăn, h&atilde;y lu&ocirc;n tự tin, giữ &yacute; ch&iacute; v&agrave; may mắn sẽ đến dẫn đường bạn đến một tương lai tươi s&aacute;ng v&agrave; tốt đẹp&rdquo;.</p>\r\n\r\n<p>Hoa c&uacute;c tana&nbsp;cũng l&agrave; lo&agrave;i hoa tượng trưng cho vẻ đẹp b&igrave;nh dị, thuần khiết v&agrave; đ&aacute;ng y&ecirc;u của những c&ocirc; g&aacute;i. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://www.flowercorner.vn/san-pham/bo-hoa-4169\" target=\"_blank\">hoa c&uacute;c tana</a>&nbsp;cũng tượng trưng cho t&igrave;nh y&ecirc;u b&igrave;nh dị v&agrave; cao thượng.</p>\r\n\r\n<p>Một b&oacute;&nbsp;hoa c&uacute;c tana&nbsp;sẽ l&agrave; sự lựa chọn ho&agrave;n hảo để d&agrave;nh tặng cho người y&ecirc;u, bạn b&egrave; hay đồng nghiệp trong những dịp như sinh nhật, ng&agrave;y 8-3 hay trong những dịp đặc biệt trong năm.</p>\r\n\r\n<p>B&oacute; hoa bao gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>C&uacute;c tana&nbsp;</li>\r\n</ul>\r\n', '470000.00', 20000, 'HẠ_VỀ_(CÚC_TANA_XINH)1.jpg', '[]', 0, 0, 4, 1, 1622904985),
(65, 19, 'ĐƠM HOA KẾT TRÁI', '<p>Mẫu kệ&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa khai trương</a>&nbsp;đơm hoa kết tr&aacute;i được thiết kế với th&ocirc;ng điệp đặc biệt thể hiện niềm vui v&agrave; mong ước ch&acirc;n th&agrave;nh d&agrave;nh cho những th&agrave;nh c&ocirc;ng sắp tới v&agrave; sự khởi đầu mới đầy tốt đẹp của người nhận m&agrave; người gửi muốn nhắn nhủ v&agrave; trao gửi.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Lan hồ điệp trắng</li>\r\n	<li>Đồng tiền đỏ</li>\r\n	<li>Hồng d&acirc;u, trắng, t&iacute;m, đỏ</li>\r\n	<li>C&uacute;c dại</li>\r\n	<li>T&uacute; cầu xanh</li>\r\n	<li>Thạch thảo t&iacute;m</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '1140000.00', 50000, 'ĐƠM_HOA_KẾT_TRÁI1.jpg', '[]', 0, 0, 4, 1, 1622904747),
(129, 40, 'BÌNH MINH', '<p>Sắc đỏ rực tượng trưng cho sự rực rỡ của mặt trời trong khi hồng kem đẹp như m&agrave;u của m&acirc;y v&agrave;o l&uacute;c b&igrave;nh minh. Giỏ hoa c&ugrave;ng những loại hoa kh&aacute;c nhau, thiết kế dựa theo vẻ đẹp của b&igrave;nh minh v&agrave; gửi gắm đi th&ocirc;ng điệp về một sự bắt đầu của những g&igrave; tươi mới v&agrave; tốt đẹp nhất.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng hột g&agrave;</li>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hồng kem pastel</li>\r\n	<li>Hoa c&aacute;t tường trắng</li>\r\n	<li>Hoa c&uacute;c cali v&agrave;ng</li>\r\n	<li>Hoa t&uacute; cầu xanh</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '1260000.00', 90000, 'BÌNH_MINH.jpg', '[]', 1, 0, 4, 1, 1623001939),
(131, 32, 'HOA CƯỚI TAY TRONG TAY', '<p>Một b&oacute; hoa d&agrave;nh cho những c&ocirc; n&agrave;ng c&aacute; t&iacute;nh v&agrave; y&ecirc;u th&iacute;ch trẻ trung. B&oacute; hoa mang một vẻ đẹp đặc biệt kh&oacute; cưỡng, kết hợp một c&aacute;ch kh&eacute;o l&eacute;o giữa c&aacute;c loại hồng v&agrave; sắc xanh tươi m&aacute;t từ l&aacute; phụ sẽ l&agrave; một điều tuyệt vời cho c&ocirc; d&acirc;u v&agrave;o ng&agrave;y l&ecirc;n xe hoa. B&oacute; hoa thể hiện một c&aacute;ch ch&acirc;n th&agrave;nh lời cầu mong được c&ugrave;ng người m&igrave;nh thương lu&ocirc;n được tay trong tay, s&aacute;nh vai d&agrave;i l&acirc;u hạnh ph&uacute;c. C&ograve;n chần chờ g&igrave; nữa m&agrave; kh&ocirc;ng chọn thiết kế m&agrave; c&aacute;c n&agrave;ng th&iacute;ch nhất cho đ&aacute;m cưới m&igrave;nh đi n&agrave;o.</p>\r\n', '1190000.00', 30000, 'HOA_CƯỚI_TAY_TRONG_TAY.jpg', '[]', 1, 0, 4, 1, 1623002287),
(51, 12, 'TRUE LOVE (100 BÔNG HỒNG)', '<p>T&igrave;nh y&ecirc;u ch&iacute;nh l&agrave; từ những quan t&acirc;m d&agrave;nh cho nhau, sự thấu hiểu nhau, cảm th&ocirc;ng v&agrave; san sẻ - một c&aacute;ch t&igrave;nh nguyện, một c&aacute;ch ch&acirc;n th&agrave;nh, một c&aacute;ch giản đơn nhưng v&ocirc; c&ugrave;ng tinh tế. Đ&ocirc;i khi để đối phương thấy được sự quan t&acirc;m đấy ch&iacute;nh l&agrave; nhờ một lẵng hoa ngập tr&agrave;n t&igrave;nh y&ecirc;u tạo n&ecirc;n bởi hoa hồng v&agrave;o dịp sinh nhật hay kỉ niệm của hai người.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>100 hoa hồng đỏ</li>\r\n</ul>\r\n', '1490000.00', 40000, 'TRUE_LOVE_(100_BÔNG_HỒNG)1.jpg', '[]', 0, 0, 4, 1, 1622903739),
(52, 13, 'MẪU ĐƠN HỒNG', '<p>Đối với những c&ocirc; n&agrave;ng y&ecirc;u hoa v&agrave; lu&ocirc;n cập nhật xu hướng th&igrave; một b&oacute; hoa mẫu đơn l&agrave; m&oacute;n qu&agrave; tuyệt vời nhất. Hoa mẫu đơn l&agrave; loại hoa cao cấp được nhập khẩu v&agrave; l&agrave; biểu tượng của sự thịnh vượng, gi&agrave;u sang v&agrave; vẻ đẹp sang trọng nhất. H&atilde;y gửi người bạn y&ecirc;u b&oacute; hoa n&agrave;y v&agrave; mang đến một ng&agrave;y sinh nhật thật hạnh ph&uacute;c cho họ nh&eacute;.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>7 c&agrave;nh mẫu đơn hồng</li>\r\n	<li>3 c&agrave;nh hồng kem pastel</li>\r\n	<li>Hoa baby trắng xen kẽ</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM</p>\r\n', '980000.00', 0, 'HOA_MẪU_ĐƠN_HỒNG1.jpg', '[]', 0, 0, 4, 1, 1622903787),
(53, 10, 'PHÚT ĐẦU TIÊN', '<p>&quot;Một ph&uacute;t b&ecirc;n nhau thật l&acirc;u, một ph&uacute;t n&oacute;i ra lời chưa n&oacute;i&quot;, hẳn ai đ&oacute; sẽ cảm thấy v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi nhận được một b&oacute; hoa hồng champagne m&agrave;u kem thật ngọt ng&agrave;o tinh tế, được t&ocirc; điểm bởi thật nhiều hướng dương rực rỡ, tượng trưng cho lời ngỏ lời dễ thương m&agrave; đầy ch&acirc;n th&agrave;nh đ&oacute;. C&ugrave;ng Flower Corner gửi đến người bạn y&ecirc;u những m&oacute;n qu&agrave; thật đẹp v&agrave; &yacute; nghĩa nh&eacute;.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>30 c&agrave;nh hoa hồng s&acirc;m panh</li>\r\n	<li>10 c&agrave;nh hướng dương</li>\r\n	<li>L&aacute; bạc</li>\r\n</ul>\r\n', '1060000.00', 100000, 'PHÚT_ĐẦU_TIÊN2.jpg', '[]', 1, 0, 4, 1, 1622903881),
(54, 12, 'SWEET HEART', '<p>Hoa hồng đỏ vốn h&igrave;nh ảnh tượng trưng cho một t&igrave;nh y&ecirc;u nồng nhiệt, kết hợp với hoa hồng trắng thể hiện cho sự tinh khiết. B&oacute; hoa như n&oacute;i l&ecirc;n niềm khao kh&aacute;t được b&agrave;y tỏ một t&igrave;nh y&ecirc;u vừa mạnh mẽ, lại vừa rất trong s&aacute;ng v&agrave; thuần khiết. Trong cuộc đời mỗi người, cảm gi&aacute;c hạnh ph&uacute;c nhất ch&iacute;nh l&agrave; y&ecirc;u v&agrave; được y&ecirc;u. Một sớm mai thức dậy nhận được một tr&aacute;i tim đầy đặc biệt n&agrave;y chắc chắn người con g&aacute;i ấy sẽ cảm thấy như m&igrave;nh l&agrave; người hạnh ph&uacute;c nhất! Đừng chần chừ bạn nh&eacute;, h&atilde;y gửi t&igrave;nh y&ecirc;u bạn đến người con g&aacute;i đặc biệt ấy n&agrave;o.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;100 hoa hồng đỏ v&agrave; hoa hồng trắng xếp tr&aacute;i tim</li>\r\n	<li>Hoa sao t&iacute;m viền xung quanh</li>\r\n</ul>\r\n', '2030000.00', 0, 'SWEET_HEART1.jpg', '[]', 3, 3, 9, 2, 1622903941),
(55, 14, 'THANH XUÂN TƯƠI ĐẸP', '<h3>Phụ nữ ai cũng y&ecirc;u hoa, c&oacute; lẽ bạn đ&atilde; biết điều đ&oacute;, vậy th&igrave; ngại ng&ugrave;ng g&igrave; m&agrave; kh&ocirc;ng d&agrave;nh tặng những người phụ nữ quan trọng nhất trong cuộc đời m&igrave;nh những b&oacute; hoa hồng tươi xinh v&agrave; rạng rỡ nhất. B&oacute; hoa gồm 100 c&agrave;nh hồng tr&agrave; được g&oacute;i theo phong c&aacute;ch hiện đại m&agrave; đ&aacute;ng y&ecirc;u sẽ đem đến một bất ngờ đầy hạnh ph&uacute;c cho người ấy đ&oacute;.</h3>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>100 hoa hồng phấn</li>\r\n</ul>\r\n', '1540000.00', 100000, 'THANH_XUÂN_TƯƠI_ĐẸP1.jpg', '[]', 0, 0, 4, 1, 1622903989),
(56, 13, 'KHÚC CA MÊ LY', '<p>Lẵng hoa l&agrave; sự phối hợp giữa c&aacute;c m&agrave;u sắc kh&aacute;c nhau, đem đến một kh&ocirc;ng kh&iacute; đầy tươi vui v&agrave; ngập tr&agrave;n y&ecirc;u thương. Lẵng hoa th&iacute;ch hợp tặng trong dịp sinh nhật của những người quan trọng trong nhất, cũng c&oacute; thể l&agrave; một lời cảm ơn ch&acirc;n th&agrave;nh gửi đến đối t&aacute;c trong những dịp khai trương, kh&aacute;nh th&agrave;nh hay kỉ niệm th&agrave;nh lập c&ocirc;ng ty.&nbsp;</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng d&acirc;u</li>\r\n	<li>Hoa hồng hột g&agrave;</li>\r\n	<li>Hoa hồng kem pastel</li>\r\n	<li>Hoa cẩm chướng hồng nhạt</li>\r\n	<li>Hoa c&uacute;c rosie t&iacute;m</li>\r\n	<li>Hoa m&otilde;m s&oacute;i hồng nhạt</li>\r\n	<li>Hoa t&uacute; cầu xanh</li>\r\n	<li>Hoa ly trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '1700000.00', 0, 'KHÚC_CA_MÊ_LY1.jpg', '[]', 0, 0, 4, 1, 1622904090),
(57, 11, 'HÂN HOAN', '<p>Một b&oacute; 20 hoa tulip hồng thể hiện cho t&igrave;nh bạn ch&acirc;n th&agrave;nh, nồng nhiệt nhất. B&ecirc;n cạnh đ&oacute;, bằng sắc hồng nhẹ nh&agrave;ng nhưng đầy ấm &aacute;p, h&atilde;y gửi cho ai đ&oacute; như một lời động vi&ecirc;n, một niềm h&acirc;n hoan lan tỏa, chắc chắn sẽ l&agrave;m cho t&acirc;m hồn đang cảm thấy ch&aacute;n chường trở n&ecirc;n tr&agrave;n đầy sinh kh&iacute; v&agrave; năng lượng sống.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>20 hoa tulip hồng k&eacute;p</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM</p>\r\n', '580000.00', 100000, 'HÂN_HOAN1.jpg', '[]', 1, 1, 4, 1, 1622904136),
(58, 13, 'CHÍN TẦNG MÂY', '<p>B&oacute; hoa d&ugrave;ng những đ&oacute;a hồng nhập Ecuador/Ohara t&ocirc;ng hồng nhẹ nh&agrave;ng, l&atilde;ng mạn v&agrave; được b&oacute; theo phong c&aacute;ch hiện đại ph&ugrave; hợp với những c&ocirc; n&agrave;ng hiện đại, trẻ trung v&agrave; đầy c&aacute; t&iacute;nh.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>8 c&agrave;nh hồng Ecuador</li>\r\n	<li>Hoa c&uacute;c ping poong hồng</li>\r\n	<li>Hoa m&otilde;m s&oacute;i trắng</li>\r\n	<li>Hoa baby trắng viền xung quanh</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c&nbsp;</li>\r\n</ul>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM.</p>\r\n', '1150000.00', 0, 'CHÍN_TẦNG_MÂY1.jpg', '[]', 0, 0, 4, 1, 1622904174),
(59, 12, 'TÌNH YÊU MÀU XANH', '<p>Những b&ocirc;ng hồng phun xanh đầy l&atilde;ng mạn kết hợp với hoa bi tinh kh&ocirc;i xanh tươi tạo n&ecirc;n sức hấp dẫn đầy quyến rũ. B&oacute; hoa n&agrave;y l&agrave; một lời nhắn đầy l&atilde;ng mạn m&agrave; cũng đầy tinh tế cho người bạn y&ecirc;u thương nhất. H&atilde;y sống chậm lại v&agrave; gửi ch&uacute;t y&ecirc;u thương đến người ấy nh&eacute;. H&atilde;y để hoa gi&uacute;p cho từng khoảnh khắc trở n&ecirc;n đặc biệt hơn nữa.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>100 hoa hồng phun xanh</li>\r\n	<li>Hoa baby xanh viền ngo&agrave;i&nbsp;</li>\r\n</ul>\r\n', '1020000.00', 30000, 'TÌNH_YÊU_MÀU_XANH1.jpg', '[]', 1, 0, 4, 1, 1622904238),
(60, 15, 'LẴNG HOA HỒN NHIÊN', '<p>N&eacute;t ng&acirc;y thơ, hồn nhi&ecirc;n c&ugrave;ng nụ cười rạng ngời đầy tươi s&aacute;ng hẳn l&agrave; yếu tố bạn lu&ocirc;n y&ecirc;u, lu&ocirc;n nhớ v&agrave; lu&ocirc;n giữ h&igrave;nh ảnh người ấy ở trong l&ograve;ng. Giữa cuộc sống đầy bộn bề v&agrave; tấp nập, đừng chờ đợi đến một dịp đặc biệt n&agrave;o m&agrave; h&atilde;y d&agrave;nh tặng người đặc biệt ấy một bất ngờ đầy dễ thương v&agrave;o một ng&agrave;y bất ngờ bạn nh&eacute;. Lẵng hoa gồm hồng pastel ngọt ng&agrave;o, hồng tim nồng n&agrave;n,&nbsp;cẩm chướng rực rỡ, thạch thảo n&ecirc;n thơ, tất cả c&ugrave;ng h&ograve;a quyện tr&ecirc;n nền l&aacute; xanh đầy tươi m&aacute;t.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng kem pastel/hoa hồng trắng</li>\r\n	<li>Hoa hồng t&iacute;m</li>\r\n	<li>Cẩm chướng hồng</li>\r\n	<li>Thạch thảo t&iacute;m</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '850000.00', 0, 'LẴNG_HOA_HỒN_NHIÊN.jpg', '[\"L\\u1eb4NG_HOA_H\\u1ed2N_NHI\\u00caN_2.jpg\",\"L\\u1eb4NG_HOA_H\\u1ed2N_NHI\\u00caN_3.jpg\"]', 0, 0, 4, 1, 1622904441),
(61, 15, 'LẴNG HOA LỘC VÀNG', '<p>T&igrave;nh bạn l&agrave; một t&igrave;nh cảm đầy diệu k&igrave; đ&uacute;ng kh&ocirc;ng c&aacute;c bạn. H&atilde;y d&agrave;nh ch&uacute;t thời gian gửi lời c&aacute;m ơn đến người đ&atilde; đồng h&agrave;nh c&ugrave;ng bạn trong những ph&uacute;t vui, ph&uacute;t buồn cuộc đời n&agrave;y nh&eacute;.&nbsp;<a href=\"https://www.flowercorner.vn/lang-hoa\" target=\"_blank\">Lẵng hoa</a>&nbsp;đầy l&atilde;ng mạn v&agrave; tinh tế tạo n&ecirc;n từ hoa hướng dương rực rỡ v&agrave; c&aacute;c loại hoa phụ nhỏ xinh kh&aacute;c sẽ gi&uacute;p bạn.</p>\r\n\r\n<p>Lẵng hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng kem</li>\r\n	<li>Hoa hướng dương</li>\r\n	<li>Hoa c&aacute;t tường xanh</li>\r\n	<li>Hoa c&uacute;c calimero trắng</li>\r\n	<li>Hoa c&uacute;c ping pong v&agrave;ng</li>\r\n	<li>Hoa lan mokara v&agrave;ng</li>\r\n	<li>Hoa lan hồ điệp trắng</li>\r\n</ul>\r\n', '1360000.00', 100000, 'LỘC_VÀNG.jpg', '[]', 0, 0, 4, 1, 1622904529),
(62, 17, 'KỆ HOA KHAI TRƯƠNG SANG TRỌNG', '<p>Kệ&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa mừng khai trương</a>&nbsp;với thiết đầy s&aacute;ng tạo v&agrave; tinh tế, được phối hợp từ c&aacute;c loại hoa kh&aacute;c nhau như hoa hồng, hướng dương... mỗi lo&agrave;i hoa tượng trưng cho những &yacute; nghĩa s&acirc;u sắc v&agrave; phong ph&uacute; kh&aacute;c nhau. C&ugrave;ng với t&ocirc;ng m&agrave;u v&agrave;ng tươi s&aacute;ng, kệ hoa l&agrave; m&oacute;n qu&agrave; mang th&ocirc;ng điệp ch&uacute;c chủ cửa h&agrave;ng, c&ocirc;ng ty, chi nh&aacute;nh mau gặt h&aacute;i nhiều th&agrave;nh c&ocirc;ng v&agrave; ph&aacute;t triển bền vững.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hướng dương</li>\r\n	<li>Cẩm t&uacute; cầu xanh</li>\r\n	<li>Hoa hồng pastel</li>\r\n	<li>Hồng hột g&agrave;</li>\r\n	<li>C&aacute;t tường xanh</li>\r\n	<li>C&uacute;c calimero v&agrave;ng</li>\r\n	<li>C&uacute;c calimero trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '1600000.00', 50000, 'KỆ_HOA_KHAI_TRƯƠNG_SANG_TRỌNG1.jpg', '[]', 1, 0, 9, 2, 1622904600),
(63, 18, 'KỆ HOA CHÚC MỪNG TÂN TIẾN', '<p>Kệ hoa đầy tinh tế được tạo n&ecirc;n từ c&aacute;c loại đồng tiền đủ m&agrave;u sắc tr&ecirc;n nền t&uacute; cầu xanh tươi mang đến kh&ocirc;ng kh&iacute; tươi vui, ấm &aacute;p v&agrave; đầy nụ cười. Kệ hoa th&iacute;ch hợp l&agrave; một m&oacute;n qu&agrave; đến bạn b&egrave;, người th&acirc;n, đối t&aacute;c c&ugrave;ng lời ch&uacute;c cho sự hy vọng, hạnh ph&uacute;c v&agrave; nhiều điều tốt đẹp nhất.</p>\r\n\r\n<p>Mẫu kệ&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa mừng khai trương</a>&nbsp;tấn tiến gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Đồng tiền đỏ</li>\r\n	<li>Đồng tiền v&agrave;ng</li>\r\n	<li>Hoa hồng t&iacute;m</li>\r\n	<li>Cẩm t&uacute; cầu xanh</li>\r\n	<li>Hoa ly</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n\r\n<p>***Xin lưu &yacute; với những sản phẩm kệ, v&igrave; t&iacute;nh chất cồng kềnh v&agrave; kh&oacute; vận chuyển, sẽ c&oacute; thể c&oacute; ph&iacute; vận chuyển ph&aacute;t sinh với một số địa chỉ giao nhất định.</p>\r\n', '1080000.00', 90000, 'KỆ_HOA_CHÚC_MỪNG_TÂN_TIẾN1.jpg', '[]', 0, 0, 4, 1, 1622904655),
(64, 16, 'HOA CHÚC MỪNG HỒNG PHÁT', '<p>Lẵng&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa khai trương</a>&nbsp;hồng ph&aacute;t gồm hồng v&agrave;ng, c&aacute;t tường trắng, l&aacute; pito, sao t&iacute;m... C&aacute;c loại hoa tươi đẹp v&agrave; rực rỡ nhất được thiết kế x&ograve;e rộng ra c&aacute;c hướng sẽ gi&uacute;p bạn gửi đến bạn b&egrave;, người th&acirc;n ,đồng nghiệp lời nhắn nhủ, hy vọng v&agrave;o những điều may mắn v&agrave; tốt đẹp sẽ đến tr&ecirc;n con đường chinh phục ước mơ v&agrave; kh&aacute;t vọng của mỗi người.</p>\r\n\r\n<p>Lẵng hoa Hồng Ph&aacute;t ph&ugrave; hợp để l&agrave;m qu&agrave; tặng bạn b&egrave;, đối t&aacute;c trong dịp khai trương hay kỷ niệm ng&agrave;y th&agrave;nh lập c&ocirc;ng ty.&nbsp;</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng v&agrave;ng</li>\r\n	<li>Hoa c&aacute;t tường trắng</li>\r\n	<li>Hoa m&otilde;m s&oacute;i trắng</li>\r\n</ul>\r\n', '1350000.00', 0, 'HOA_CHÚC_MỪNG_HỒNG_PHÁT1.jpg', '[]', 0, 0, 4, 1, 1622904698),
(75, 31, 'XÚC CẢM', '<p>B&oacute; hoa thể hiện sắc th&aacute;i của một mối qua hệ đ&ocirc;i lứa: c&oacute; những l&uacute;c đắm say hạnh ph&uacute;c, c&oacute; những l&uacute;c lạnh l&ugrave;ng nhưng đầy sự quan t&acirc;m. Sắc đỏ rực rỡ m&atilde;nh liệt từ c&aacute;nh hồng được kết hợp tinh tế c&ugrave;ng sắc xanh nhẹ n&agrave;ng của baby, tạo n&ecirc;n một b&oacute; hoa vừa chứa đầy sự y&ecirc;u thương vừa đong đầy nhiều nỗi nhớ. H&atilde;y c&ugrave;ng nhau kỉ niệm mối quan hệ đặc biệt của hai bạn bằng b&oacute; hoa tươi mang đầy cảm x&uacute;c n&agrave;y nh&eacute;.</p>\r\n\r\n<ul>\r\n	<li>15 hoa hồng đỏ</li>\r\n	<li>Hoa baby phun xanh</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '600000.00', 0, 'XÚC_CẢM2.jpg', '[]', 1, 0, 4, 1, 1622905154),
(76, 39, 'LẴNG HOA HẠNH PHÚC', '<p>C&oacute; ai m&agrave; kh&ocirc;ng ngập tr&agrave;n hạnh ph&uacute;c khi nhận được một m&oacute;n qu&agrave; trong ng&agrave;y sinh nhật hoặc một m&oacute;n qu&agrave; ngạc nhi&ecirc;n v&agrave;o một ng&agrave;y thường nhật. Gửi đến bạn b&egrave;, người y&ecirc;u, thầy c&ocirc;, gia đ&igrave;nh hay những người quan trọng đ&atilde; n&acirc;ng đỡ bạn qua những kh&oacute; khăn trong cuộc sống 1 lẵng hoa thật đẹp nha. Lẵng hoa được kết hợp giữa hồng đỏ đẹp ki&ecirc;u sa c&ugrave;ng c&aacute;t tường trắng tươi xinh c&ugrave;ng những hoa l&aacute; phụ kh&aacute;c.</p>\r\n\r\n<p>Lẵng Hoa Hạnh Ph&uacute;c được thiết kế từ</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hoa calimero trắng</li>\r\n	<li>Hoa mimi trắng</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '1160000.00', 50000, 'LẴNG_HOA_HẠNH_PHÚC1.jpg', '[]', 2, 0, 9, 2, 1622905219),
(77, 40, 'NGÀY NẮNG LÊN', '<p>Giỏ hoa &quot;Ng&agrave;y Nắng L&ecirc;n&quot; được tạo n&ecirc;n từ những c&aacute;nh hoa hướng dương v&agrave;ng tươi rực rỡ, hồng d&acirc;u nhẹ nh&agrave;ng m&agrave; rạng ngời c&ugrave;ng t&uacute; cầu xanh ng&aacute;t m&agrave;u hy vọng.&nbsp;<a href=\"https://www.flowercorner.vn/gio-hoa-dep\" target=\"_blank\">Giỏ hoa</a>&nbsp;chắc chắn sẽ mang đến kh&ocirc;ng gian nh&agrave; cửa, văn ph&ograve;ng hay c&ocirc;ng ty một kh&ocirc;ng kh&iacute; đầy sắc m&agrave;u của nắng vui tươi v&agrave; năng động.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hồng pastel</li>\r\n	<li>Hồng d&acirc;u</li>\r\n	<li>Hoa hướng dương</li>\r\n	<li>M&otilde;m s&oacute;i</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '680000.00', 30000, 'NGÀY_NẮNG_LÊN1.jpg', '[]', 1, 0, 4, 1, 1622905254),
(78, 39, 'MÓN QUÀ CẢM ƠN', '<p>Mỗi người đều lu&ocirc;n ấp ủ, hy vọng v&agrave; phấn đấu v&igrave; ước mơ, kh&aacute;t vọng của ri&ecirc;ng m&igrave;nh. Lẵng&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa mừng khai trương</a>&nbsp;với những c&aacute;t tường m&agrave;u d&acirc;u rực rỡ như m&agrave;u sắc m&agrave;u đam m&ecirc;, sẽ mang đến những điều may mắn, những niềm vui, trong khi hoa hồng kem tượng trưng cho tinh thần mạnh mẽ, sự nhiệt huyết v&agrave; kh&ocirc;ng ngừng chiến đấu. Kết hợp c&ugrave;ng l&aacute; cỏ đồng tiền, hộp hoa thay bạn gửi đi nhửng lời ch&uacute;c ch&acirc;n th&agrave;nh v&agrave; đầy h&acirc;n hoan.</p>\r\n', '720000.00', 0, 'MÓN_QUÀ_CẢM_ƠN1.png', '[]', 0, 0, 4, 1, 1622905293),
(79, 40, 'KHOE SẮC THẮM', '<p>Được l&agrave;m từ những b&ocirc;ng hướng dương tươi nhất v&agrave; điểm t&ocirc; bởi những nh&aacute;nh c&uacute;c calimero trắng v&agrave; salem hồng xinh xắn,&nbsp;khoe sắc rực rỡ&nbsp; v&agrave; mang đầy sức sống. Đ&acirc;y sẽ&nbsp;l&agrave; m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp nếu như bạn muốn tạo một ấn tượng đến đối t&aacute;c, đồng nghiệp, bạn b&egrave;, hay những người m&agrave; bạn thương y&ecirc;u quan t&acirc;m nhất, nhất l&agrave; người mẹ y&ecirc;u qu&yacute; v&agrave; đ&aacute;ng tr&acirc;n trọng của m&igrave;nh.</p>\r\n', '690000.00', 60000, 'KHOE_SẮC_THẮM1.jpg', '[]', 1, 0, 4, 1, 1622905326),
(80, 39, 'YÊU THƯƠNG ĐONG ĐẦY', '<p>Hoa hồng tượng trưng cho t&igrave;nh y&ecirc;u hẳn ai cũng biết, thế nhưng giỏ hoa n&agrave;y kh&ocirc;ng chỉ c&oacute; thể l&agrave; một m&oacute;n qu&agrave; cho người y&ecirc;u m&agrave; c&ograve;n l&agrave; một gợi &yacute; cho dịp sinh nhật, kỉ ni&ecirc;m bạn b&egrave;, cấp tr&ecirc;n hay tập thể c&ocirc;ng ty. Thiết kế độc đ&aacute;o với những c&aacute;nh hồng vươn cao như một lời th&ocirc;ng điệp: d&ugrave; c&oacute; kh&oacute; khăn, buồn vui vẫn h&atilde;y lu&ocirc;n vững tin v&agrave; tiến đến một tương lai tốt đẹp hơn bạn nh&eacute;.</p>\r\n\r\n<p>Giỏ hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng d&acirc;u</li>\r\n	<li>Hoa c&uacute;c thạch thảo t&iacute;m</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '700000.00', 50000, 'YÊU_THƯƠNG_ĐONG_ĐẦY1.png', '[]', 1, 0, 4, 1, 1622905366),
(81, 39, 'BIẾT ƠN', '<p>L&agrave; lo&agrave;i hoa tượng trưng cho niềm vui v&agrave; sức khỏe trong cuộc sống, hoa hướng dương với sắc v&agrave;ng rực rỡ ấm &aacute;p, tr&agrave;n đầy năng lượng l&agrave; lựa chọn ho&agrave;n hảo để gửi tặng người th&acirc;n, bạn b&egrave; hay đồng nghiệp trong những dịp sinh nhật, tốt nghiệp hay ng&agrave;y quốc phụ nữ 8-3. B&oacute; hoa Niềm Vui được thiết kế với hoa hồng v&agrave;ng v&agrave; c&uacute;c calimero trắng nhỏ xinh sẽ gi&uacute;p bạn gửi tới những người th&acirc;n lời ch&uacute;c tốt l&agrave;nh nhất.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>10 b&ocirc;ng hướng dương</li>\r\n	<li>Hoa chuỗi ngọc đỏ</li>\r\n	<li>Hoa thạch thảo trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '490000.00', 0, 'BIẾT_ƠN1.png', '[]', 0, 0, 4, 1, 1622905635),
(82, 38, 'HẸN ƯỚC (THẠCH THẢO TÍM)', '<p><strong>Hoa Thạch thảo t&iacute;m</strong>&nbsp;mang tr&ecirc;n m&igrave;nh một n&eacute;t đẹp nhẹ nh&agrave;ng lại dễ thương, xinh xắn. Hoa thạch thảo t&iacute;m gắn liền với những &yacute; nghĩa s&acirc;u sắc về t&igrave;nh y&ecirc;u đ&ocirc;i lứa. Lo&agrave;i hoa n&agrave;y mang &yacute; nghĩa tượng trưng cho một t&igrave;nh y&ecirc;u b&igrave;nh dị v&agrave; nhẹ nh&agrave;ng. Trong t&igrave;nh y&ecirc;u ấy, đ&ocirc;i lứa lu&ocirc;n đong đầy t&igrave;nh cảm v&agrave; lu&ocirc;n d&otilde;i theo nhau. Những c&aacute;nh hoa mỏng manh c&ograve;n l&agrave; tượng trưng cho những lời thề hẹn kh&ocirc;ng bao giờ qu&ecirc;n, sẽ m&atilde;i c&ugrave;ng nhau nắm tay đi qua những s&oacute;ng gi&oacute;, gập ghềnh của cuộc đời.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt,&nbsp;<a href=\"https://www.flowercorner.vn/\" target=\"_blank\">shop hoa tươi</a>&nbsp;- QT Flower Store&nbsp;cũng nhận thiết kế&nbsp;b&oacute; hoa thạch thảo t&iacute;m&nbsp;theo y&ecirc;u cầu, kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;u cầu thay đổi giấy g&oacute;i hoặc nơ theo tone m&agrave;u y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Giảm ngay 25k khi đặt&nbsp;<em>b&oacute; hoa thạch thảo t&iacute;m</em>&nbsp;Hẹn Ước tại QT Flower Store.&nbsp;Tặng k&egrave;m thiệp ch&uacute;c mừng xinh xắn. Giao hoa nhanh trong v&ograve;ng 90 ph&uacute;t. Miễn ph&iacute; giao hoa tại c&aacute;c quận nội th&agrave;nh TP HCM.&nbsp;</p>\r\n', '360000.00', 0, 'HẸN_ƯỚC_(THẠCH_THẢO_TÍM)1.jpg', '[]', 0, 0, 4, 1, 1622905744),
(83, 37, 'BÓ HOA NIỀM VUI', '<p>L&agrave; lo&agrave;i hoa tượng trưng cho niềm vui v&agrave; may mắn trong cuộc sống, hoa hồng v&agrave;ng l&agrave; lựa chọn ho&agrave;n hảo để gửi tặng người th&acirc;n, bạn b&egrave; hay đồng nghiệp trong những dịp sinh nhật, tốt nghiệp hay ng&agrave;y quốc phụ nữ 8-3. B&oacute; hoa Niềm Vui được thiết kế với hoa hồng v&agrave;ng v&agrave; c&uacute;c calimero trắng nhỏ xinh sẽ gi&uacute;p bạn gửi tới những người th&acirc;n lời ch&uacute;c tốt l&agrave;nh nhất.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>30 b&ocirc;ng hồng v&agrave;ng</li>\r\n	<li>C&uacute;c calimero trắng</li>\r\n</ul>\r\n', '600000.00', 110000, 'BÓ_HOA_NIỀM_VUI1.jpg', '[]', 0, 0, 4, 1, 1622905781),
(84, 38, 'NGÀY TƯƠI ĐẸP', '<p>Hoa hồng kem tượng trưng cho t&igrave;nh y&ecirc;u lẵng mạn v&agrave; ch&acirc;n th&agrave;nh. Một b&oacute; hoa dễ thương với sự kết hợp giữa hoa hồng kem pastel vừa đẹp vừa sang trọng c&ugrave;ng với những c&agrave;nh c&aacute;t tường trắng đầy tinh tế thể hiện một t&igrave;nh y&ecirc;u nồng n&agrave;n, hết m&igrave;nh m&agrave; lại rất thuần khiết, kh&ocirc;ng t&iacute;nh to&aacute;n. Đ&acirc;y chắc chắn sẽ l&agrave; m&oacute;n qu&agrave; tuyệt vời để đ&aacute;nh dấu một bước tiến mới trong t&igrave;nh y&ecirc;u của hai bạn đấy.&nbsp;</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>15 b&ocirc;ng hồng kem pastel</li>\r\n	<li>Hoa c&aacute;t tường trắng</li>\r\n	<li>C&aacute;c loại hoa phụ kh&aacute;c</li>\r\n</ul>\r\n', '450000.00', 33000, 'NGÀY_TƯƠI_ĐẸP1.jpg', '[]', 0, 0, 4, 1, 1622905836),
(85, 37, 'TINH KHÔI', '<p>B&oacute; hoa tỏa s&aacute;ng với sự kết hợp tinh tế của sắc v&agrave;ng rực rỡ của hoa hồng &aacute;nh trăng. B&oacute; hoa vừa giản dị nhưng cũng tr&agrave;n đầy m&agrave;u sắc.&nbsp; H&atilde;y để m&oacute;n qu&agrave; n&agrave;y thay bạn đem đến niềm vui hạnh ph&uacute;c v&agrave; bất ngờ đến những người bạn y&ecirc;u qu&yacute;.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>30 hoa hồng v&agrave;ng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;&nbsp;</li>\r\n</ul>\r\n', '600000.00', 110000, 'TINH_KHÔI1.jpg', '[]', 1, 1, 9, 2, 1622905880),
(86, 38, 'BEST WISHES FOR YOU', '<p>B&oacute; hoa Best Wishes được thiết kế từ&nbsp;<a href=\"https://www.flowercorner.vn/hoa-cuc-tana\" target=\"_blank\">hoa c&uacute;c tana</a>, một trong những loại hoa c&uacute;c được y&ecirc;u th&iacute;ch nhất hiện nay.&nbsp;Best Wishes ph&ugrave; hợp để l&agrave;m qu&agrave; tặng vợ, bạn g&aacute;i, ba mẹ hoặc đồng nghiệp trong dịp sinh nhật. Đặc biệt l&agrave; d&agrave;nh cho những người bạn, người th&acirc;n khi họ tốt nghiệp, 1 ng&agrave;y trọng đại của cuộc đời.</p>\r\n', '420000.00', 0, 'BEST_WISHES_FOR_YOU1.jpg', '[]', 0, 0, 4, 1, 1622905908),
(87, 38, 'BE HAPPY', '<p>Giỏ hoa Be Happy được thiết kế từ hoa hướng dương kết hợp với hoa hồng pastel v&agrave; c&aacute;c loại hoa l&aacute; phụ. Giỏ hoa l&agrave; lựa chọn ho&agrave;n hảo để d&agrave;nh tặng vợ, bạn g&aacute;i, bạn b&egrave; v&agrave; người th&acirc;n trong dịp sinh nhật v&agrave; trong những dịp đặc biệt trong năm.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng hột g&agrave;</li>\r\n	<li>Hoa hướng dương</li>\r\n	<li>Thạch thảo trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '550000.00', 80000, 'BE_HAPPY1.png', '[]', 0, 0, 4, 1, 1622905944),
(88, 37, 'VUI LÊN NHÉ', '<p>Cuộc sống của mỗi con người lu&ocirc;n cần những lời chia vui, động vi&ecirc;n hay chia sẽ. Đ&ocirc;i khi ch&uacute;ng ta kh&ocirc;ng cần đợi đến một ng&agrave;y đặt biệt n&agrave;o, h&atilde;y tặng những người th&acirc;n, bạn b&egrave; b&oacute; hoa hồng v&agrave;ng c&ugrave;ng c&aacute;t tường v&agrave; mang đến họ một bất ngờ đầy th&uacute; vị nh&eacute;. Sắc v&agrave;ng rực rỡ của b&oacute; hoa chắc chắn sẽ l&agrave;m tươi s&aacute;ng một ng&agrave;y của ai đ&oacute; đấy.<br />\r\nB&oacute; hoa bao gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>10 hoa hồng v&agrave;ng</li>\r\n	<li>C&aacute;t tường</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '600000.00', 120000, 'VUI_LÊN_NHÉ1.jpg', '[]', 0, 0, 4, 1, 1622905981),
(89, 32, 'HOA CẦM TAY CÔ DÂU CHÂN TÌNH', '<p>C&oacute; khoảng khắc n&agrave;o hạnh ph&uacute;c hơn giấy ph&uacute;t ch&agrave;ng n&oacute;i tiếng tỏ t&igrave;nh? Nếu c&oacute; chỉ c&oacute; thể l&agrave; l&uacute;c ch&agrave;ng n&oacute;i lời cầu h&ocirc;n, l&agrave; hạnh ph&uacute;c vỡ &ograve;a. Cảm x&uacute;c của c&ocirc; g&aacute;i đ&oacute;n nhận t&igrave;nh y&ecirc;u trong khoảng khắc cầu h&ocirc;n l&agrave; cảm ứng cho thiết kế hoa &quot;Ch&acirc;n T&igrave;nh&quot;, nồng n&agrave;n dịu d&agrave;ng nghẹn ng&agrave;o rất ri&ecirc;ng , rất đỗi con g&aacute;i.</p>\r\n', '660000.00', 100000, 'HOA_CẦM_TAY_CÔ_DÂU_CHÂN_TÌNH1.jpg', '[]', 0, 0, 4, 1, 1622906025),
(90, 33, 'HOA CƯỚI BABY HỒNG', '<p>Mẫu hoa cầm tay được QT Flower Store&nbsp;thiết kế từ hoa baby phun hồng ph&ugrave; hợp với c&aacute;c c&ocirc; d&acirc;u mặc &aacute;o cưới m&agrave;u trắng. B&oacute; hoa cưới tiếng y&ecirc;u l&agrave; lựa chọn ho&agrave;n hảo cho c&aacute;c c&ocirc; d&acirc;u y&ecirc;u th&iacute;ch sự mới lạ v&agrave; hiện đại.</p>\r\n', '890000.00', 0, 'HOA_CƯỚI_BABY_HỒNG1.jpg', '[]', 0, 0, 4, 1, 1622906064),
(91, 34, 'HOA CƯỚI NGÀY RẠNG NGỜI', '<p>Hoa Cưới Ng&agrave;y Rạng Ngời&nbsp;l&agrave; sự kết hợp của những c&agrave;nh t&uacute; cầu xanh l&atilde;ng mạn được kết hợp thật long lanh c&ugrave;ng baby trắng, mang đến sắc m&agrave;u rực rỡ m&agrave; kh&ocirc;ng k&eacute;m phần dịu d&agrave;ng v&agrave; tinh tế. B&oacute; hoa c&oacute; thể l&agrave; b&oacute; hoa cầm tay d&agrave;nh cho c&ocirc; d&acirc;u cho ng&agrave;y đẹp nhất cuộc đời m&igrave;nh , cũng c&oacute; thể l&agrave; một m&oacute;n qu&agrave; xinh tươi cho những dịp đặc biệt nhất!</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa cẩm t&uacute; cầu phun xanh</li>\r\n	<li>Hoa baby trắng</li>\r\n</ul>\r\n', '715000.00', 100000, 'HOA_CƯỚI_NGÀY_RẠNG_NGỜI1.jpg', '[]', 1, 1, 9, 2, 1622906122),
(92, 33, 'HOA CƯỚI NGÔI NHÀ HẠNH PHÚC', '<p>Một b&oacute; hoa cổ điển cho những c&ocirc; d&acirc;u th&iacute;ch ho&agrave;i cổ v&agrave; y&ecirc;u sự nhẹ nh&agrave;ng. Cẩm t&uacute; cầu xanh kết hợp một c&aacute;ch tinh tế c&ugrave;ng hồng trắng tăng th&ecirc;m vẻ đằm thắm dịu d&agrave;ng vốn c&oacute; của n&agrave;ng. C&ograve;n chần chờ g&igrave; nữa m&agrave; kh&ocirc;ng chọn thiết kế m&agrave; c&aacute;c n&agrave;ng th&iacute;ch nhất cho đ&aacute;m cưới m&igrave;nh đi n&agrave;o.</p>\r\n', '815000.00', 0, 'HOA_CƯỚI_NGÔI_NHÀ_HẠNH_PHÚC1.jpg', '[\"HOA_C\\u01af\\u1edaI_NG\\u00d4I_NH\\u00c0_H\\u1ea0NH_PH\\u00daC_21.jpg\"]', 0, 0, 4, 1, 1622906159),
(93, 34, 'HOA CẦM TAY CÔ DÂU VƯỜN TÌNH YÊU', '<p>Sen đ&aacute; b&iacute; ẩn như vị vua vương quyền s&aacute;nh vang b&ecirc;n cạnh nữ ho&agrave;ng hồng trong d&aacute;ng vẻ cao sang thanh tho&aacute;t,b&oacute; hoa th&iacute;ch hợp với c&aacute;c n&agrave;ng y&ecirc;u th&iacute;ch tinh tế m&agrave; v&ocirc; c&ugrave;ng gần gũi với t&ocirc;ng m&agrave;u xanh chủ đạo cho b&oacute; hoa ng&agrave;y cưới.</p>\r\n', '1320000.00', 50000, 'HOA_CẦM_TAY_VƯỜN_TÌNH_YÊU1.jpg', '[]', 0, 0, 4, 1, 1622906299),
(94, 41, 'LỜI CẢM ƠN', '<p>Hoa hồng v&agrave;ng mang đến hy vọng, may mắn v&agrave; cả niềm tin. Với m&agrave;u sắc tươi s&aacute;ng đầy rực rỡ, những c&aacute;nh hồng kết hợp với v&agrave;ng anh mang đến bầu kh&ocirc;ng kh&iacute; tr&agrave;n đầy năng lượng v&agrave; sức sống. B&oacute; hoa th&iacute;ch hợp tặng người th&acirc;n, bạn b&egrave; hoặc cũng c&oacute; thể l&agrave; m&oacute;n qu&agrave; cho dịp lễ tốt nghiệp với lời ch&uacute;c đầy may mắn tr&ecirc;n con đường ph&iacute;a trước.<br />\r\nB&oacute; hoa boa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>15 hoa hồng v&agrave;ng</li>\r\n	<li>Hoa v&agrave;ng anh</li>\r\n</ul>\r\n', '390000.00', 0, 'LỜI_CẢM_ƠN1.jpg', '[\"L\\u1edcI_C\\u1ea2M_\\u01a0N_21.jpg\",\"L\\u1edcI_C\\u1ea2M_\\u01a0N_31.jpg\"]', 0, 0, 4, 1, 1622906347),
(95, 42, 'KẾT NỐI YÊU THƯƠNG', '<p>Chọn mộ lẵng hoa xinh xắn k&egrave;m theo những lời ch&uacute;c đong đầy y&ecirc;u thương để gửi tới người m&igrave;nh y&ecirc;u thương trong ng&agrave;y sinh nhật sẽ l&agrave;m cho ng&agrave;y sinh nhật của người ấy th&ecirc;m phần &yacute; nghĩa v&agrave; hạnh ph&uacute;c.&nbsp;<a href=\"https://www.flowercorner.vn/lang-hoa\" target=\"_blank\">Lẵng hoa</a>&nbsp;l&agrave; sự phối hợp dễ thương&nbsp; giữa sắc hồng pastel v&agrave; sắc đỏ rực rỡ, điểm xuyết bởi mimi trắng b&eacute; xinh, đem đến một kh&ocirc;ng kh&iacute; đầy tươi vui v&agrave; ngập tr&agrave;n y&ecirc;u thương.</p>\r\n\r\n<p>Lẵng hoa th&iacute;ch hợp tặng trong dịp sinh nhật của những người quan trọng trong nhất, cũng c&oacute; thể l&agrave; một lời cảm ơn ch&acirc;n th&agrave;nh gửi đến đối t&aacute;c trong những dịp khai trương, kh&aacute;nh th&agrave;nh hay kỉ niệm th&agrave;nh lập c&ocirc;ng ty.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hồng đỏ</li>\r\n	<li>Hồng pastel</li>\r\n	<li>Chuỗi ngọc đỏ</li>\r\n	<li>Hoa mimi trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '730000.00', 0, 'KẾT_NỐI_YÊU_THƯƠNG1.jpg', '[]', 2, 0, 9, 2, 1622906445),
(96, 41, 'KÍNH TRỌNG', '<p>Một trong những hạnh ph&uacute;c nhất trong cuộc đời n&agrave;y ch&iacute;nh l&agrave; c&oacute; một người bạn để chia sẻ buồn vui, để c&oacute; một người lu&ocirc;n lắng nghe v&agrave; b&ecirc;n cạnh bạn d&ugrave; cho c&oacute; g&igrave; xảy ra. V&igrave; vậy trong những dịp quan trọng trong cuộc đời họ, hoặc một ng&agrave;y b&igrave;nh thường n&agrave;o đ&oacute;, h&atilde;y d&agrave;nh lời cảm ơn đầy ch&acirc;n th&agrave;nh đến người bạn đ&aacute;ng qu&iacute; ấy bằng một b&oacute; hướng dương đầy rực rỡ v&agrave; tươi s&aacute;ng.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>5 b&ocirc;ng hướng dương</li>\r\n	<li>Chuỗi ngọc đỏ</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '450000.00', 60000, 'KÍNH_TRỌNG1.jpg', '[\"K\\u00cdNH_TR\\u1eccNG_21.jpg\",\"K\\u00cdNH_TR\\u1eccNG_31.jpg\"]', 0, 0, 4, 1, 1622906509),
(97, 42, 'GIỎ HOA VŨ ĐIỆU SẮC MÀU', '<p>họn một giỏ hoa xinh xắn k&egrave;m theo những lời ch&uacute;c đong đầy y&ecirc;u thương để gửi tới người m&igrave;nh y&ecirc;u thương trong ng&agrave;y sinh nhật sẽ l&agrave;m cho ng&agrave;y sinh nhật của người ấy th&ecirc;m phần &yacute; nghĩa v&agrave; hạnh ph&uacute;c.&nbsp;<a href=\"https://www.flowercorner.vn/lang-hoa\" target=\"_blank\">Giỏ hoa</a>&nbsp;l&agrave; sự phối hợp đặc sắc giữa nhiều loại hoa v&agrave; sắc m&agrave;u như một kh&uacute;c ca tr&agrave;n đầy năng lượng v&agrave; c&aacute; t&iacute;nh. Nổi bật l&agrave; t&uacute; cầu t&iacute;m thể hiện sự mộng mơ lẵng mạn v&agrave; sắc đỏ rực rỡ mang đầy kh&iacute; thế mạnh mẽ, phối c&ugrave;ng hoa nhỏ thạch thảo dại v&agrave; baby trắng tinh khiết, tất cả được cắm trong một chiếc giỏ c&aacute; bống b&eacute; xinh đặc biệt, đem đến một kh&ocirc;ng kh&iacute; đầy tươi vui v&agrave; ngập tr&agrave;n y&ecirc;u thương.</p>\r\n\r\n<p>Giỏ hoa kh&ocirc;ng chỉ th&iacute;ch hợp tặng trong dịp sinh nhật của những người quan trọng trong nhất, m&agrave; c&ograve;n ph&ugrave; hợp để thể hiện một lời cảm ơn ch&acirc;n th&agrave;nh gửi đến đối t&aacute;c trong những dịp khai trương, kh&aacute;nh th&agrave;nh hay kỉ niệm th&agrave;nh lập c&ocirc;ng ty.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng kem pastel</li>\r\n	<li>Hoa t&uacute; cầu phun t&iacute;m</li>\r\n	<li>Hoa baby trắng</li>\r\n	<li>Hoa chuỗi ngọc đỏ</li>\r\n	<li>Hoa c&aacute;t tường hồng</li>\r\n</ul>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM.</p>\r\n', '780000.00', 0, 'GIỎ_HOA_VŨ_ĐIỆU_SẮC_MÀU1.jpg', '[]', 1, 0, 4, 1, 1622906538),
(98, 42, 'GIỎ HOA TUYỆT VỜI', '<p>Nếu người y&ecirc;u của bạn l&agrave; một c&ocirc; n&agrave;ng dịu d&agrave;ng, mỏng manh nhưng đầy tinh tế th&igrave; giỏ hoa baby hồng sẽ l&agrave; một m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng th&iacute;ch hợp đấy!&nbsp;<a href=\"https://www.flowercorner.vn/lang-hoa\" target=\"_blank\">Giỏ hoa</a>&nbsp;l&agrave; sự phối hợp dễ thương&nbsp; của baby hồng ngọt ng&agrave;o được cắm d&aacute;ng tr&ograve;n trong chiết giỏ c&aacute; bống dễ thương v&agrave; được t&ocirc; điểm bởi chiếc nơ thật xinh, đem đến một kh&ocirc;ng kh&iacute; đầy tươi vui v&agrave; ngập tr&agrave;n y&ecirc;u thương.</p>\r\n\r\n<p>Giỏ hoa th&iacute;ch hợp tặng trong dịp sinh nhật của những người quan trọng trong nhất, cũng c&oacute; thể l&agrave; một lời cảm ơn ch&acirc;n th&agrave;nh gửi đến đối t&aacute;c thay lời cảm ơn hoặc lời ch&uacute;c mừng sinh nhật.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<p>Hoa baby phun hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM.</p>\r\n', '880000.00', 150000, 'GIỎ_HOA_TUYỆT_VỜI1.jpg', '[]', 1, 0, 4, 1, 1622906580),
(99, 35, 'CHẬU LAN HỒ ĐIỆP', '<p>Giờ đ&acirc;y, ngo&agrave;i hoa mai, hoa đ&agrave;o, hoa m&agrave;o g&agrave;, ... lu&ocirc;n được nhắc đến mỗi khi xu&acirc;n về, th&igrave; Lan v&agrave;ng cũng n&ecirc;n được th&ecirc;m v&agrave;o sự lựa chọn của bạn v&agrave;o mỗi dịp Tết. M&agrave;u v&agrave;ng của Lan mang th&ocirc;ng điệp của sự ph&aacute;t t&agrave;i ph&aacute;t lộc, an khang thịnh vượng, sung t&uacute;c ấm no đến cho mọi nh&agrave; mọi gia đ&igrave;nh tr&ecirc;n đất nước. Tặng ngay một&nbsp;<a href=\"https://www.flowercorner.vn/hoa-lan\" target=\"_blank\">chậu lan hồ điệp</a>&nbsp;10 c&agrave;nh m&agrave;u v&agrave;ng v&agrave;o m&ugrave;a Tết Nguy&ecirc;n Đ&aacute;n n&agrave;y sẽ l&agrave; một sự lựa chọn thật tuyệt vời v&agrave; nhiều &yacute; nghĩa.</p>\r\n\r\n<p><a href=\"https://www.flowercorner.vn/hoa-lan\" target=\"_blank\">Chậu lan hồ điệp</a>&nbsp;ho&agrave;nh tr&aacute;ng với 8 c&agrave;nh lan trắng hồng trồng xen kẽ nhau, tạo n&ecirc;n một t&aacute;c phẩm nghệ thuật khiến ai cũng phải trầm trồ. Đ&acirc;y sẽ l&agrave; một m&oacute;n qu&agrave; ấn tượng cho dịp khai trương, hay trang tr&iacute; nh&agrave; cửa dịp Tết đến.</p>\r\n\r\n<p>Lan hồ điệp kh&ocirc;ng chỉ đơn thuần l&agrave; hoa gửi tặng m&agrave; c&ograve;n mang rất nhiều &yacute; nghĩa kh&aacute;c nhau. Nếu bạn muốn ch&uacute;c ai đ&oacute; một năm vạn sự như &yacute;, may mắn ph&aacute;t t&agrave;i; gia đ&igrave;nh lu&ocirc;n vui khỏe, hạnh ph&uacute;c th&igrave;&nbsp;<a href=\"https://www.flowercorner.vn/hoa-lan\" target=\"_blank\">chậu lan hồ điệp</a>&nbsp;5 c&agrave;nh m&agrave;u t&iacute;m n&agrave;y ho&agrave;n to&agrave;n ph&ugrave; hợp để bạn lựa chọn.</p>\r\n\r\n<p>Sản phẩm chỉ cung cấp tại TP.HCM</p>\r\n\r\n<p>Cần giao tại c&aacute;c tỉnh th&agrave;nh kh&aacute;c, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ 0814.789.455 hoặc 037.202.4840</p>\r\n', '2240000.00', 0, 'CHẬU_LAN_HỒ_ĐIỆP1.jpg', '[\"CH\\u1eacU_LAN_H\\u1ed2_\\u0110I\\u1ec6P_21.jpg\",\"CH\\u1eacU_LAN_H\\u1ed2_\\u0110I\\u1ec6P_31.jpg\",\"CH\\u1eacU_LAN_H\\u1ed2_\\u0110I\\u1ec6P_41.jpg\"]', 1, 0, 4, 1, 1622906634),
(100, 0, 'TẾT ĐONG ĐẦY', '<p>Nụ tầm xu&acirc;n (hay c&ograve;n được gọi l&agrave; c&acirc;y Ng&acirc;n Liễu) l&agrave; loại c&acirc;y mọc nhiều theo n&aacute;ch l&aacute;, sau đ&oacute; những chồi non nhanh ch&oacute;ng được mọc ra với lớp l&ocirc;ng tơ v&ocirc; c&ugrave;ng mềm mại. H&igrave;nh ảnh n&agrave;y được nhiều người xem l&agrave; &yacute; nghĩa của sự thịnh vượng, n&ecirc;n n&oacute; rất được ưa chuộng v&agrave;o dịp Tết.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng nở hoa, khoe sắc như nhiều lo&agrave;i hoa kh&aacute;c, thế nhưng nụ tầm xu&acirc;n vẫn được nhiều người y&ecirc;u th&iacute;ch bởi n&oacute; mang &yacute; nghĩa tượng trưng cho sự sinh s&ocirc;i, nảy lộc, thịnh vượng v&agrave; may mắn.</p>\r\n\r\n<p>B&igrave;nh hoa&nbsp;Tết đong đầy&nbsp;bao gồm</p>\r\n\r\n<ul>\r\n	<li>120 c&agrave;nh nụ tầm xu&acirc;n đỏ</li>\r\n	<li>Chậu cao cấp</li>\r\n	<li>Trang tr&iacute;</li>\r\n	<li>Cao 150cm - 180cm</li>\r\n</ul>\r\n', '2550000.00', 60000, 'TẾT_ĐONG_ĐẦY1.jpg', '[\"T\\u1ebeT_\\u0110ONG_\\u0110\\u1ea6Y_21.jpg\"]', 0, 0, 4, 1, 1622906671),
(101, 43, 'TẾT ĐONG ĐẦY', '<p>Nụ tầm xu&acirc;n (hay c&ograve;n được gọi l&agrave; c&acirc;y Ng&acirc;n Liễu) l&agrave; loại c&acirc;y mọc nhiều theo n&aacute;ch l&aacute;, sau đ&oacute; những chồi non nhanh ch&oacute;ng được mọc ra với lớp l&ocirc;ng tơ v&ocirc; c&ugrave;ng mềm mại. H&igrave;nh ảnh n&agrave;y được nhiều người xem l&agrave; &yacute; nghĩa của sự thịnh vượng, n&ecirc;n n&oacute; rất được ưa chuộng v&agrave;o dịp Tết.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng nở hoa, khoe sắc như nhiều lo&agrave;i hoa kh&aacute;c, thế nhưng nụ tầm xu&acirc;n vẫn được nhiều người y&ecirc;u th&iacute;ch bởi n&oacute; mang &yacute; nghĩa tượng trưng cho sự sinh s&ocirc;i, nảy lộc, thịnh vượng v&agrave; may mắn.</p>\r\n\r\n<p>B&igrave;nh hoa&nbsp;Tết đong đầy&nbsp;bao gồm</p>\r\n\r\n<ul>\r\n	<li>120 c&agrave;nh nụ tầm xu&acirc;n đỏ</li>\r\n	<li>Chậu cao cấp</li>\r\n	<li>Trang tr&iacute;</li>\r\n	<li>Cao 150cm - 180cm</li>\r\n</ul>\r\n', '2550000.00', 60000, 'TẾT_ĐONG_ĐẦY2.jpg', '[\"T\\u1ebeT_\\u0110ONG_\\u0110\\u1ea6Y_22.jpg\"]', 0, 0, 4, 1, 1622906697),
(102, 43, 'TẾT SUM VẦY, ĐOÀN VIÊN', '<p>Mặc d&ugrave; kh&ocirc;ng nở hoa, nụ tầm xu&acirc;n vẫn mang trong m&igrave;nh thật nhiều chồi non với lớp l&ocirc;ng tơ v&ocirc; c&ugrave;ng mềm mại. Ch&uacute;ng lu&ocirc;n ẩn chứa h&igrave;nh ảnh của sự đ&acirc;m chồi nảy lộc, v&agrave; thịnh vượng cũng như may mắn. Trưng cho m&igrave;nh một chậu hoa nụ tầm xu&acirc;n chắc chắn sẽ mang đến một kh&ocirc;ng kh&iacute; Tết Xu&acirc;n cực kỳ vui tươi v&agrave; tr&agrave;n ngập may mắn cho đầu năm su&ocirc;n sẻ đ&oacute;!</p>\r\n\r\n<p>B&igrave;nh hoa&nbsp;Xu&acirc;n Tươi Vui&nbsp;bao gồm</p>\r\n\r\n<ul>\r\n	<li>45 c&agrave;nh nụ tầm xu&acirc;n đỏ</li>\r\n	<li>Chậu cao cấp</li>\r\n	<li>Trang tr&iacute;</li>\r\n	<li>Cao 120cm</li>\r\n</ul>\r\n', '1970000.00', 50000, 'TẾT_SUM_VẦY,_ĐOÀN_VIÊN1.jpg', '[\"T\\u1ebeT_SUM_V\\u1ea6Y,_\\u0110O\\u00c0N_VI\\u00caN_21.jpg\",\"T\\u1ebeT_SUM_V\\u1ea6Y,_\\u0110O\\u00c0N_VI\\u00caN_31.jpg\"]', 1, 0, 4, 1, 1622906735),
(103, 36, 'HƯƠNG XUÂN NGẬP TRÀN', '<p>Kh&iacute; trời khi xu&acirc;n về bỗng tươi đầy sức sống với những c&aacute;nh hoa tươi thắm khắp nơi nơi. Hoa mang xu&acirc;n về với vạn vật. Đối với mọi nh&agrave;, kh&ocirc;ng kh&iacute; tr&agrave;n ngập niềm vui sum họp sẽ đầy đủ &yacute; nghĩa hơn khi trong nh&agrave; c&oacute; những giỏ hoa, lẵng hoa xinh xắn, ấm</p>\r\n\r\n<p>Giỏ hoa Xu&acirc;n về b&ecirc;n phố&nbsp;bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng v&agrave;ng</li>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Lan b&ograve; cạp đỏ</li>\r\n	<li>Hoa m&otilde;m s&oacute;i v&agrave;ng</li>\r\n	<li>Hoa ly hồng</li>\r\n	<li>Hoa baby trắng</li>\r\n	<li>L&aacute; phụ trang tr&iacute;</li>\r\n</ul>\r\n', '1100000.00', 0, 'HƯƠNG_XUÂN_NGẬP_TRÀN1.jpg', '[\"H\\u01af\\u01a0NG_XU\\u00c2N_NG\\u1eacP_TR\\u00c0N_21.jpg\"]', 1, 0, 4, 1, 1622906776);
INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(107, 10, 'PINK O\'HARA', '<p>Hoa hồng nhập Pink O&#39;Hara mang đến sắc m&agrave;u hồng kem mịn m&agrave;ng, chuyển đậm dần khi v&agrave;o những lớp trong mang đến cảm gi&aacute;c bung nở thật rực rỡ nhưng đầy tinh tế. M&agrave;u hồng phớt thường mang đến cảm gi&aacute;c y&ecirc;u thương v&agrave; hạnh ph&uacute;c ngập tr&agrave;n. Hơn nữa, hoa hồng Pink O&#39;Hara c&ograve;n đại diện cho sắc đẹp tự nhi&ecirc;n, cho sự nữ t&iacute;nh, ấm &aacute;p, cho t&igrave;nh y&ecirc;u v&agrave; sự quyến rũ.</p>\r\n\r\n<p>Gửi tặng một b&oacute; hoa ngập tr&agrave;n Pink O&#39;Hara ng&aacute;t hương v&agrave; khoe sắc, như lời khen tặng hương sắc đầy ngọt ng&agrave;o v&agrave; tinh tế đến người nhận.&nbsp;Thật l&agrave; một liều thuốc tinh thần thật tốt đẹp phải kh&ocirc;ng n&agrave;o?</p>\r\n\r\n<p>B&oacute; Hoa Pink O&#39;hara được thiết kế từ</p>\r\n\r\n<ul>\r\n	<li>18 c&agrave;nh hồng nhập Pink O&#39;Hara</li>\r\n	<li>Hoa thanh liễu trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ trang tr&iacute; kh&aacute;c</li>\r\n</ul>\r\n', '2310000.00', 90000, 'PINK_OHARA.jpg', '[]', 0, 0, 4, 1, 1622908379),
(106, 10, 'IT\'S YOU', '<p>Lẵng hoa<strong> It&#39;s You</strong> được tạo n&ecirc;n từ những b&ocirc;ng hoa hồng kem pastel v&agrave; hoa hồng đỏ. Hơn nữa lại được t&ocirc; điểm thật lung linh với baby trắng. Đ&acirc;y l&agrave; một m&oacute;n qu&agrave; sinh nhật mang thật nhiều năng lượng t&iacute;ch cực v&agrave; v&ocirc; c&ugrave;ng &yacute; nghĩa. M&oacute;n qu&agrave; như lời ch&uacute;c cho tuổi trẻ, sắc đẹp, v&agrave; niềm vui ngập tr&agrave;n.&nbsp;</p>\r\n\r\n<p>Lẵng hoa&nbsp;<strong>It&#39;s You</strong>&nbsp;được thiết kế từ:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng kem pastel</li>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hoa baby trắng</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ trang tr&iacute; kh&aacute;c</li>\r\n</ul>\r\n', '1450000.00', 0, 'ITS_YOU.jpg', '[]', 1, 0, 4, 1, 1622908300),
(108, 11, 'LẴNG HOA KHỞI SẮC', '<p>Lẵng hoa được thiết kế đặc biệt từ những sắc m&agrave;u mạnh mẽ nhất như m&agrave;u đỏ - tượng trưng cho l&ograve;ng nhiệt huyết đặc biệt, m&agrave;u cam hột g&agrave; tinh tế&nbsp;- thể hiện một niềm phấn khởi, vui sướng, v&agrave; m&agrave;u hồng kem pastel nhẹ nh&agrave;ng - m&agrave;u của sự ch&acirc;n th&agrave;nh, tinh khiết. Lẵng hoa như một kh&uacute;c nhạc du dương nhưng đầy quyền lực, kh&iacute;ch lệ l&ograve;ng quyết t&acirc;m vương l&ecirc;n, vượt qua kh&oacute; khăn v&agrave; tiến tới th&agrave;nh c&ocirc;ng. Hộp hoa l&agrave; m&oacute;n qu&agrave; tuyệt vời v&agrave; cực kỳ &yacute; nghĩa cho những người phụ nữ quan trọng nhất trong cuộc đời m&igrave;nh. Đ&acirc;y cũng l&agrave; một m&oacute;n qu&agrave; ch&uacute;c mừng đầy tinh tế m&agrave; bạn c&oacute; thể gửi tặng cho đồng nghiệp, bạn b&egrave; hay cấp tr&ecirc;n v&agrave;o những dịp như kỉ niệm, khai trương, sinh nhật...</p>\r\n\r\n<p>Lẵng hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hoa hồng hột g&agrave;</li>\r\n	<li>Hoa hồng kem pastel</li>\r\n	<li>Hoa c&aacute;t tường trắng</li>\r\n	<li>Hoa cẩm t&uacute; cầu xanh bơ</li>\r\n	<li>Hoa sao t&iacute;m</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n', '860000.00', 70000, 'LẴNG_HOA_KHỞI_SẮC.jpg', '[]', 0, 0, 4, 1, 1622908513),
(109, 14, 'MAYRA\'S PINK', '<p>Hoa hồng Mayra&#39;s Pink mang một m&agrave;u sắc hồng cực kỳ đặc biệt: một m&agrave;u hồng c&oacute; anh ch&uacute;t cam v&agrave;ng. C&ugrave;ng với đặc điểm thật nhiều lớp c&aacute;nh được xoắn lại b&ecirc;n trong, tạo ra hiệu ứng thật huyền ảo v&agrave; rực rỡ. Hoa hồng Mayra&#39;s Pink vốn thể hiện cho n&eacute;t đẹp rực rỡ của tự nhi&ecirc;n, một tinh thần ấm &aacute;p, đầy nữ t&iacute;nh, l&agrave; lo&agrave;i hoa của t&igrave;nh y&ecirc;u v&agrave; sự quyến rũ.&nbsp;Một b&oacute; hoa &quot;giải cảm&quot; gi&uacute;p cho tinh thần của người nhận trở n&ecirc;n phấn chấn v&agrave; tr&agrave;n đầy năng lượng hơn. Thật l&agrave; một liều thuốc tinh thần thật tốt đẹp phải kh&ocirc;ng n&agrave;o, c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng tặng n&oacute; ngay cho người m&agrave; bạn y&ecirc;u qu&yacute; nhất!</p>\r\n\r\n<p>B&oacute; Hoa Mayra&#39;s Pink được thiết kế từ</p>\r\n\r\n<ul>\r\n	<li>10 c&agrave;nh hoa nhập Mayra&#39;s Pink</li>\r\n	<li>C&aacute;c loại l&aacute; phụ trang tr&iacute; kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>*Sản phẩm cần đặt trước.</p>\r\n\r\n<p>**Sản phẩm chỉ c&oacute; tại HCM</p>\r\n', '990000.00', 0, 'MAYRAS_PINK.jpg', '[]', 0, 0, 4, 1, 1622908614),
(110, 14, 'KHOẢNH KHẮC', '<p>B&oacute; hồng 99 b&ocirc;ng hồng d&acirc;u v&agrave; hồng t&iacute;m kết hợp đẹp như một giấc mơ t&igrave;nh y&ecirc;u m&agrave; bạn lu&ocirc;n mong được x&acirc;y dựng c&ugrave;ng người ấy. T&ocirc;ng m&agrave;u c&ugrave;ng phong c&aacute;ch g&oacute;i trang nh&atilde; v&agrave; hiện đại sẽ gi&uacute;p bạn ghi điểm trong mắt người ta đ&oacute;. Ngay cả khi kh&ocirc;ng c&oacute; dịp đặc biệt n&agrave;o bạn cũng c&oacute; thể tặng người quan trọng đ&oacute; b&oacute; hoa 99 b&ocirc;ng n&agrave;y như một ngạc nhi&ecirc;n đầy ngọt ng&agrave;o v&agrave; th&uacute; vị.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>99 hồng sen mới, hồng kem pastel v&agrave; hoa h&ocirc;ng t&iacute;m xem kẽ</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '1780000.00', 50000, 'KHOẢNH_KHẮC.png', '[]', 0, 0, 4, 1, 1622908689),
(111, 15, 'LẴNG HOA SINH NHẬT', '<p>Hộp hoa được thiết kế từ sắc hồng tinh tế của hồng pastel c&ugrave;ng sắc đỏ rực rỡ từ hoa hồng sa mang lại một lẵng hoa tinh tế sang trọng v&agrave; đầy nổi bật. Hộp hoa th&iacute;ch hợp l&agrave; một lời cảm ơn đầy ch&acirc;n th&agrave;nh đến người mẹ y&ecirc;u thương, người c&ocirc; đầy đ&aacute;ng qu&iacute; hay người cấp tr&ecirc;n đ&atilde; lu&ocirc;n b&ecirc;n cạnh che chở, n&acirc;ng đỡ bạn tr&ecirc;n những bước đường trong cuộc sống.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hồng đỏ</li>\r\n	<li>Hồng kem pastel</li>\r\n	<li>C&aacute;t tường hồng đậm</li>\r\n	<li>Thủy ti&ecirc;n hồng</li>\r\n	<li>C&uacute;c dại trắng</li>\r\n	<li>T&uacute; cầu xanh</li>\r\n	<li>Hoa baby trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '1160000.00', 100000, 'LẴNG_HOA_SINH_NHẬT.png', '[]', 1, 1, 9, 2, 1622908764),
(112, 12, 'NGÀY BÊN EM', '<p>C&oacute; khi nhớ lắm một nụ cười ai đ&oacute; nhưng ngại ng&ugrave;ng kh&ocirc;ng muốn n&oacute;i, c&oacute; khi cần lắm một b&agrave;n tay ấm &aacute;p dịu d&agrave;ng nhưng lại ở qu&aacute; xa, c&oacute; khi y&ecirc;u lắm một &aacute;nh nh&igrave;n đầy đ&aacute;ng y&ecirc;u, l&atilde;ng mạn. Những gi&acirc;y ph&uacute;t ấy hẳn sẽ kh&ocirc;ng bao giờ c&oacute; thể qu&ecirc;n, v&igrave; vậy h&atilde;y tạo th&ecirc;m những gi&acirc;y ph&uacute;t đầy hạnh ph&uacute;c v&agrave; bất ngờ cho người bạn y&ecirc;u nh&eacute;. Một b&oacute; hoa tuy nhẹ nh&agrave;ng nhưng thật đặc biệt, tạo n&ecirc;n từ những c&aacute;nh hồng nhập Paloma, thể hiện tấm l&ograve;ng của bạn đến với người ấy ngay th&ocirc;i n&agrave;o!</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>20 hoa Paloma</li>\r\n	<li>C&aacute;c loại hoa l&aacute; phụ kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>**Hoa c&oacute; thể chỉ c&oacute; tại TP. HCM v&agrave; theo m&ugrave;a.</p>\r\n', '1600000.00', 0, 'NGÀY_BÊN_EM.jpg', '[]', 1, 0, 4, 1, 1622908869),
(113, 21, 'NỒNG CHÁY', '<p>Hoa hồng đỏ rực rỡ l&aacute;c đ&aacute;c điểm hoa trắng to&aacute;t l&ecirc;n vẻ sang trọng nhưng vẫn kh&ocirc;ng k&eacute;m nồng n&agrave;n. B&igrave;nh hoa n&agrave;y thật ph&ugrave; hợp để gửi đi một th&ocirc;ng điệp ch&acirc;n th&agrave;nh đầy y&ecirc;u thương cho ph&aacute;i đẹp, những ai ta hết l&ograve;ng tr&acirc;n trọng v&agrave; n&acirc;ng niu. V&igrave; h&atilde;y nhớ rằng y&ecirc;u thương l&agrave; kh&ocirc;ng cần chờ đến dịp để b&agrave;y tỏ.</p>\r\n', '1450000.00', 60000, 'NỒNG_CHÁY.png', '[]', 1, 0, 4, 1, 1622908959),
(114, 20, 'RAINING SEASON', '<p>Trong cuộc sống đầy tấp nập, một ch&uacute;t ngọt ng&agrave;o dịu d&agrave;ng từ những c&aacute;nh hoa hồng sẽ dễ d&agrave;ng xua tan đi mệt mỏi. Đ&oacute;a hoa với t&ocirc;ng m&agrave;u đỏ rực rỡ được g&oacute;i theo phong c&aacute;ch hiện đại l&agrave; một m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng th&iacute;ch hợp cho những c&ocirc; n&agrave;ng trẻ trung đầy c&aacute; t&iacute;nh. Từng đ&oacute;a hoa được lựa chọn kĩ lưỡng để mang đến cho bạn b&oacute; hoa lộng lẫy nhất.</p>\r\n\r\n<p>B&oacute; hoa bao gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>20 bồng hồng đỏ</li>\r\n	<li>Chuỗi ngọc đỏ</li>\r\n</ul>\r\n', '770000.00', 0, 'RAINY_SEASON.jpg', '[]', 0, 0, 4, 1, 1622909058),
(115, 21, 'CUTENESS', '<p>Hoa đồng đại diện cho hạnh ph&uacute;c, niềm vui v&agrave; may mắn, một b&oacute; hoa hồng ngọt ng&agrave;o dễ thương&nbsp; sẽ l&agrave; một lời ch&uacute;c mừng, ch&uacute;c may mắn đầy &yacute; nghĩa gửi đến những người đ&atilde; lu&ocirc;n s&aacute;t c&aacute;nh b&ecirc;n bạn trong cuộc đời đấy. Y&ecirc;u thương được thể hiện bằng hoa sẽ trở n&ecirc;n đầy &yacute; nghĩa.</p>\r\n\r\n<p>B&oacute; hoa bao gồm c&oacute;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>50 c&agrave;nh hồng kem</li>\r\n	<li>Baby trắng viền xung quanh</li>\r\n</ul>\r\n', '900000.00', 30000, 'CUTENESS.jpg', '[]', 0, 0, 4, 1, 1622909110),
(116, 16, 'LẴNG HOA THÀNH CÔNG', '<p>Lẵng&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa khai trương</a>&nbsp;Th&agrave;nh C&ocirc;ng l&agrave; sự kết hợp giữa t&ocirc;ng m&agrave;u hồng tinh tế v&agrave; t&ocirc;ng v&agrave;ng đầy tươi s&aacute;ng từ những c&aacute;nh hoa hồng d&acirc;u, hướng dương v&agrave; lan. Trong những dịp khai trương, kỉ niệm, ch&uacute;c mừng h&atilde;y gửi đến bạn b&egrave;, đối t&aacute;c, đồng nghiệp lời ch&uacute;c may mắn đầy h&acirc;n hoan v&agrave; ch&acirc;n th&agrave;nh nhất th&ocirc;ng qua hộp hoa đầy sắc m&agrave;u n&agrave;y nh&eacute;.</p>\r\n\r\n<p>Mẫu hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng sen mới</li>\r\n	<li>Hoa m&otilde;m s&oacute;i hồng</li>\r\n	<li>Hoa hướng dương</li>\r\n	<li>Hoa lan vũ nữ</li>\r\n</ul>\r\n', '1090000.00', 50000, 'LẴNG_HOA_THÀNH_CÔNG.png', '[]', 1, 0, 4, 1, 1622909207),
(117, 16, 'HOA CHÚC MỪNG RỰC RỠ', '<p><a href=\"https://www.flowercorner.vn/lang-hoa-khai-truong-de-ban\" target=\"_blank\">Lẵng hoa khai trương để b&agrave;n</a>&nbsp;Rực Rỡ với nhiều loại hoa kh&aacute;c nhau như hoa lan trắng, hồng đỏ, c&uacute;c ping pong c&ugrave;ng phối hợp tạo n&ecirc;n một lẵng hoa đẹp như một bản t&igrave;nh ca với những nốt thăng, nốt trầm, hộp hoa l&agrave; lời gửi gắm cho th&ocirc;ng điệp, t&igrave;nh y&ecirc;u hay cuộc sống c&oacute; l&uacute;c vui, l&uacute;c buồn nhưng chỉ cần c&oacute; bạn kề b&ecirc;n, ch&uacute;ng ta sẽ lu&ocirc;n vượt qua v&agrave; hướng đến t&igrave;nh y&ecirc;u v&agrave; tương lai tươi s&aacute;ng nhất.</p>\r\n\r\n<p>Lẵng&nbsp;<a href=\"https://www.flowercorner.vn/hoa-khai-truong\" target=\"_blank\">hoa khai trương</a>&nbsp;Rực Rỡ cũng là m&ocirc;̣t món quà v&ocirc; cùng thích hợp cho những dịp khai trương kỉ ni&ecirc;̣m hay chúc mừng.</p>\r\n\r\n<p>B&oacute; hoa gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Lan hồ điệp trắng</li>\r\n	<li>Hoa c&uacute;c ping poong trắng</li>\r\n</ul>\r\n', '1290000.00', 0, 'HOA_CHÚC_MỪNG_RỰC_RỠ.png', '[]', 1, 0, 4, 1, 1622909280),
(118, 18, 'KỆ HOA CHÚC MỪNG LUCKY FLOWER', '<p>Những b&ocirc;ng hoa tươi thắm nhiều m&agrave;u sắc được phối hợp h&agrave;i ho&agrave; đem đến cảm gi&aacute;c mới mẻ, rạng rỡ v&agrave; đong đầy nhiều mong chờ v&agrave; phấn khởi cho những khởi đầu mới, cho những th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi. Chiếc kệ được thiết kế với th&ocirc;ng điệp đặc biệt thể hiện niềm vui v&agrave; mong ước ch&acirc;n th&agrave;nh d&agrave;nh cho những th&agrave;nh c&ocirc;ng sắp tới v&agrave; sự khởi đầu mới đầy tốt đẹp của người nhận m&agrave; người gửi muốn nhắn nhủ v&agrave; trao gửi. Đ&acirc;y l&agrave; m&oacute;n qu&agrave; chắc chắn sẽ mang đến niềm vui bất tận cho bất cứ ai nhận được.</p>\r\n\r\n<p>Kệ Hoa Ch&uacute;c Mừng Lucky Flowers&nbsp;được thiết kế từ&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng kem</li>\r\n	<li>Hoa lan dendro trắng</li>\r\n	<li>L&aacute; m&ocirc;n đỏ</li>\r\n	<li>Hoa salem trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ trang tr&iacute; kh&aacute;c</li>\r\n</ul>\r\n', '888000.00', 0, 'KỆ_HOA_CHÚC_MỪNG_LUCKY_FLOWER.jpg', '[]', 0, 0, 4, 1, 1622909425),
(119, 32, 'CHUNG MỘT NHÀ', '<p>Gi&acirc;y ph&uacute;t về &quot; một nh&agrave;&quot; hẳn l&agrave; gi&acirc;y ph&uacute;t m&agrave; biết bao người hồi hộp mong đợi. Khoảnh khắc được mặc chiếc v&aacute;y cưới lộng lẫy v&agrave; tr&ecirc;n tay l&agrave; một b&oacute; hoa đầy xinh tươi hẳn l&agrave; gi&acirc;y ph&uacute;t hạnh ph&uacute;c nhất trong cuộc đời người con g&aacute;i. B&oacute;&nbsp;<a href=\"https://www.flowercorner.vn/hoa-cuoi-cam-tay\" target=\"_blank\">hoa cưới cầm tay</a>&nbsp;chung một nh&agrave; được thiết kế từ hoa hồng đỏ v&agrave; baby trắng tượng trưng cho t&igrave;nh y&ecirc;u s&acirc;u đậm, vĩnh cửu sẽ l&agrave; lựa chọn ho&agrave;n hảo cho c&aacute;c c&ocirc; d&acirc;u trong lễ cưới.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '900000.00', 60000, 'CHUNG_MỘT_NHÀ.jpg', '[]', 1, 0, 4, 1, 1622909585),
(120, 32, 'HOA CẦM TAY CÔ DÂU CẦU VÒNG TÌNH YÊU', '<p>C&ocirc; d&acirc;u n&agrave;o lại kh&ocirc;ng muốn ng&agrave;y trọng đại của m&igrave;nh thật đặc biệt, từ đường may tr&ecirc;n chiếc v&aacute;y cưới đến b&oacute; hoa cầm tay xinh xắn. Mọi thứ n&ecirc;n ho&agrave;n hảo v&agrave; lộng lẫy trong ng&agrave;y đặc biệt n&agrave;y.&nbsp;C&aacute;c n&agrave;ng đ&atilde; bao giờ được chi&ecirc;m ngưỡng cầu vồng g&oacute;i gọn chỉ trong một b&oacute; hoa cầm tay bao giờ chưa? Đừng nghĩ đ&oacute; l&agrave; điều trong mơ. B&oacute; hoa được kết hợp đầy đặc sắc giữa những loại hoa chất lượng nhất, tạo n&ecirc;n một thiết kế thật c&aacute; t&iacute;nh cho c&aacute;c n&agrave;ng d&acirc;u v&agrave;o ng&agrave;y cưới!</p>\r\n', '2050000.00', 0, 'HOA_CẦM_TAY_CÔ_DÂU_CẦU_VÒNG_TÌNH_YÊU.jpg', '[]', 1, 0, 4, 1, 1622909674),
(121, 10, 'KHỞI SẮC', '<p>Lẵng hoa c&ocirc;ng danh được thiết kế với tone m&agrave;u thật nh&atilde; nhặn từ hoa sen trắng tinh tế v&agrave; thanh nh&atilde;, từ hoa thủy ti&ecirc;n v&agrave;ng hiện đại, hoa m&ocirc;n t&uacute; cầu xanh m&aacute;t. M&agrave;u v&agrave;ng tượng trưng cho sự thịnh vượng, ph&aacute;t triển. Lẵng hoa c&ocirc;ng danh l&agrave; lựa chọn ho&agrave;n hảo để d&agrave;nh tặng cho đối t&aacute;c trong dịp khai trương, v&agrave; cũng l&agrave; lựa chọn ph&ugrave; hợp để l&agrave;m qu&agrave; tặng cho cấp tr&ecirc;n trong dịp sinh nhật.</p>\r\n\r\n<p>Sản phẩm gồm c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Hoa sen trắng</li>\r\n	<li>Hoa hướng dương</li>\r\n	<li>Hoa hồng d&acirc;u</li>\r\n	<li>Hoa t&uacute; cầu</li>\r\n	<li>Hoa thủy ti&ecirc;n v&agrave;ng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ trang tr&iacute; kh&aacute;c</li>\r\n</ul>\r\n', '2010000.00', 50000, 'KHỞI_SẮC.png', '[]', 1, 0, 4, 1, 1622909889),
(125, 35, 'CHẬU LAN HỒ ĐIỆP 2 CÀNH ', '<p>Chậu lan hồ điệp 2 c&agrave;nh&nbsp;m&agrave;u t&iacute;m sang trọng n&agrave;y sẽ như một lời nhắn gửi, một lời cảm ơn gửi đến người đ&atilde; b&ecirc;n bạn, đồng h&agrave;nh v&agrave; gi&uacute;p đỡ bạn qua qu&atilde;ng thời gian kh&oacute; khăn. Hay c&oacute; thể chỉ l&agrave; một lời ch&uacute;c sức khỏe, hạnh ph&uacute;c v&agrave; lời hứa sẽ tiếp tục đồng h&agrave;nh, c&ugrave;ng tiến tới tương lai.&nbsp;Chậu hoa lan hồ điệp 2 c&agrave;nh&nbsp;&quot;Đồng h&agrave;nh&quot; sẽ l&agrave; lựa chọn ho&agrave;n hảo để l&agrave;m qu&agrave; tặng sinh nhật, khai trương hay ch&uacute;c mừng những dịp đặc biệt trong năm.</p>\r\n', '660000.00', 0, 'CHẬU_LAN_HỒ_ĐIỆP_2_CÀNH.jpg', '[]', 1, 0, 4, 1, 1622963520),
(126, 35, 'CHẬU LAN HỒ ĐIỆP 3 CÀNH', '<p>Chậu lan hồ điệp 004 gồm 3 c&agrave;nh&nbsp;<a href=\"https://www.flowercorner.vn/hoa-lan\" target=\"_blank\">lan hồ điệp</a>&nbsp;t&iacute;m sang trọng n&agrave;y sẽ như một lời nhắn gửi, một lời cảm ơn gửi đến người đ&atilde; b&ecirc;n bạn, đồng h&agrave;nh v&agrave; gi&uacute;p đỡ bạn qua qu&atilde;ng thời gian kh&oacute; khăn. Hay c&oacute; thể chỉ l&agrave; một lời ch&uacute;c sức khỏe, hạnh ph&uacute;c v&agrave; lời hứa sẽ tiếp tục đồng h&agrave;nh, c&ugrave;ng tiến tới tương lai.</p>\r\n', '840000.00', 50000, 'CHẬU_LAN_HỒ_ĐIỆP_3_CÀNH.jpg', '[]', 0, 0, 4, 1, 1622963623),
(127, 36, 'MÙA ĐOÀN VIÊN', '<p>Chậu&nbsp;hoa ch&uacute;c mừng M&ugrave;a Đo&agrave;n Vi&ecirc;n gồm 10 c&agrave;nh lan hồ điệp v&agrave;ng rực rỡ, được xem l&agrave; m&agrave;u may mắn nhất v&agrave; mang lại rất nhiều năng lượng t&iacute;ch cực. Sắc v&agrave;ng từ lan hồ điệp c&ograve;n tượng trưng cho sự sang trọng nhưng ấm &aacute;p&nbsp; ch&acirc;n th&agrave;nh. Chậu lan M&ugrave;a Đo&agrave;n Vi&ecirc;n được Flower Corner đầu tư một c&aacute;ch nghi&ecirc;m t&uacute;c v&igrave; ch&uacute;ng t&ocirc;i lu&ocirc;n hiểu rằng đ&oacute; l&agrave; uy t&iacute;n của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><em><strong>QT Flower Store</strong></em>&nbsp;lu&ocirc;n được qu&yacute; kh&aacute;ch h&agrave;ng, đặc biệt l&agrave; c&aacute;c doanh nghiệp tin y&ecirc;u v&agrave; đặt thiết kế hoa ch&uacute;c mừng phục vụ c&aacute;c dịp khai trương, kh&aacute;nh th&agrave;nh, tổ chức sự kiện v&agrave; trong c&aacute;c dịp lễ quan trọng kh&aacute;c. C&agrave;ng đặc biệt hơn th&igrave; M&ugrave;a Đo&agrave;n Vi&ecirc;n được đặt để tặng dịp Tết, như một lời ch&uacute;c đầy ch&acirc;n th&agrave;nh v&agrave; nồng n&agrave;n cho một năm mới nhiều may mắn v&agrave; niềm h&acirc;n hoan hạnh ph&uacute;c.</p>\r\n', '2500000.00', 133000, 'MÙA_ĐOÀN_VIÊN.jpg', '[]', 0, 0, 4, 1, 1622963749),
(128, 36, 'PASSION', '<p>Đẹp rực rỡ nhưng kh&ocirc;ng k&eacute;m phần cổ điển v&agrave; lịch l&atilde;m, giỏ hoa l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa những c&aacute;nh hoa hồng đỏ nồng ch&aacute;y v&agrave; ng&aacute;t hương nhất. Kết hợp c&ugrave;ng với hoa c&uacute;c mắt ngọc trắng c&ugrave;ng c&aacute;c l&aacute; phụ xanh ng&aacute;t, tạo n&ecirc;n n&eacute;t đẹp vừa sang trọng vừa c&oacute; g&igrave; đ&oacute; rất đồng nội v&agrave; gần gũi ấm &aacute;p, giỏ hoa l&agrave; một m&oacute;n qu&agrave; th&iacute;ch hợp cho những dịp như sinh nhật, kỉ niệm, ch&uacute;c mừng hay l&agrave; một c&aacute;ch b&agrave;y tỏ lời cảm ơn ch&acirc;n th&agrave;nh nhất. Đặc biệt l&agrave; chưng trong những dịp Tết Nguy&ecirc;n Đ&aacute;n.</p>\r\n\r\n<p>Giỏ Hoa Passion được thiết kế từ</p>\r\n\r\n<ul>\r\n	<li>Hoa hồng đỏ</li>\r\n	<li>Hoa c&uacute;c calimero trắng</li>\r\n	<li>Hoa c&uacute;c mắt ngọc trắng</li>\r\n	<li>C&aacute;c loại l&aacute; phụ kh&aacute;c.</li>\r\n</ul>\r\n', '870000.00', 50000, 'PASSION.jpg', '[]', 2, 1, 4, 1, 1622964453),
(132, 12, 'TIAMO', '<p>B&oacute; hoa Ti Amo được thiết kế với từ 12 b&ocirc;ng hoa hồng đỏ kết hợp với c&aacute;c loại l&aacute; phụ. Trong t&igrave;nh y&ecirc;u, 12 b&ocirc;ng hoa hồng đỏ mang th&ocirc;ng điệp:&quot;T&igrave;nh y&ecirc;u của Anh k&eacute;o d&agrave;i theo năm th&aacute;ng&quot;. B&oacute; hoa Ti Amo l&agrave; lựa chọn ho&agrave;n hảo để gửi tặng vợ, bạn g&aacute;i trong ng&agrave;y sinh nhật hay ng&agrave;y lễ t&igrave;nh nh&acirc;n valentine.&nbsp;</p>\r\n', '599000.00', 100000, 'TIAMO.jpg', '[]', 0, 0, 4, 1, 1624113685),
(135, 38, 'TINH KHIẾT (THẠCH THẢO TRẮNG)', '<p>B&oacute; hoa tinh khiết được thiết kế từ&nbsp;<strong>hoa thạch thảo trắng</strong>, lo&agrave;i hoa tượng trưng cho sự ki&ecirc;n nhẫn, dịu d&agrave;ng v&agrave; n&eacute;t đẹp dễ thương của những c&ocirc; g&aacute;i. Ch&iacute;nh v&igrave; thế, hoa thạch thảo trắng lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu để l&agrave;m&nbsp;<a href=\"https://www.flowercorner.vn/hoa-chuc-mung-sinh-nhat\" target=\"_blank\">hoa sinh nhật</a>, hoa tốt nghiệp, hoa ch&uacute;c mừng 8-3&hellip; v&agrave; hầu hết tất cả những ng&agrave;y lễ đặc biệt trong năm.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ ph&ugrave; hợp với nhiều sự kiện,&nbsp;b&oacute; hoa thạch thảo&nbsp;cũng th&iacute;ch hợp để l&agrave;m qu&agrave; tặng cho nhiều đối tượng kh&aacute;c nhau. Khi d&agrave;nh tặng người y&ecirc;u, hoa thạch thảo trắng gửi đi th&ocirc;ng điệp về t&igrave;nh y&ecirc;u thuần khiết, trong s&aacute;ng. Nếu lựa chọn hoa thạch thảo trắng d&agrave;nh tặng cho mẹ, lo&agrave;i hoa n&agrave;y sẽ gi&uacute;p bạn thể hiện sự biết ơn v&agrave; lời cảm ơn tới mẹ. C&ograve;n với bạn b&egrave;, đồng nghiệp hoa thạch thảo trắng gi&uacute;p bạn mang đến th&ocirc;ng điệp h&atilde;y lu&ocirc;n ki&ecirc;n nhẫn th&agrave;nh c&ocirc;ng sẽ đến với bạn.</p>\r\n', '715000.00', 49000, 'TINH_KHIẾT_(THẠCH_THẢO_TRẮNG).jpg', '[\"TINH_KHI\\u1ebeT_(TH\\u1ea0CH_TH\\u1ea2O_TR\\u1eaeNG)_1.jpg\",\"TINH_KHI\\u1ebeT_(TH\\u1ea0CH_TH\\u1ea2O_TR\\u1eaeNG)_2.jpg\"]', 0, 0, 4, 1, 1624114436);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(7, 'Giao hàng tận cửa, chẳng ngại nắng mưa', 'slide 2.jpg', 'http://localhost/QTflowerstore/', 2, '2021-06-05 17:28:55'),
(6, 'Happy Friday giảm giá 10%', 'slide 1.jpg', 'http://localhost/QTflowerstore/hoa-sinh-nhat-c7', 1, '2021-06-05 17:28:20'),
(8, 'Giao hàng nhanh trong 90 phút', 'slide 3.jpg', 'http://localhost/QTflowerstore/', 3, '2021-06-05 17:29:11'),
(9, 'Giảm 500k hóa đơn trên 3 triệu', 'slide 4.jpg', 'http://localhost/QTflowerstore/hoa-khai-truong-c9', 4, '2021-06-05 17:29:39'),
(10, 'Gói quà miễn phí duy nhất ngày 20/10', 'slide 5.jpg', 'http://localhost/QTflowerstore/hoa-ngay-cua-me-c25', 5, '2021-06-05 17:30:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(21, 0, 8, 'Lê Hồng Quân', 'quan@gmail.com', '0814789455', '351A Lạc Long Quân', 'Shop giao lẹ dùm em ạ!', '12370000.00', '', 1623004380),
(22, 0, 10, 'Nguyễn Phạm Trung Kiên', 'trungkien@gmail.com', '0399087024', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Giao hàng nhanh giúp em ạ!', '8075000.00', '', 1623006052),
(19, 0, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'aa', '1960000.00', '', 1623003985),
(20, 0, 9, 'Nguyễn Thị Mai Hoa', 'maihoa@gmail.com', '0365815001', '116 Tô Hiến Thành, quận 19, TP.HCM', 'Giao hàng nhanh giúp e ạ!\r\n', '4570000.00', '', 1623004251),
(17, 1, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Giao hàng cẩn thân giúp em nha shop', '5020000.00', '', 1622992392),
(18, 1, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Shop chuẩn bị kĩ hoa và giao đủ số lượng giúp em với ạ!\r\nEm cảm ơn shop nhiều!', '9025000.00', '', 1623003882),
(23, 0, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Shop chọn hoa thật đẹp cho em nhé! Cảm ơn shop nhiều ạ!', '1960000.00', '', 1623082584),
(24, 0, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Shop giao trước ngày của Mẹ giúp em nhé!\r\nTks shop!\r\n', '3335000.00', '', 1624112684),
(25, 0, 9, 'Nguyễn Thị Mai Hoa', 'maihoa@gmail.com', '0365815001', '116 Tô Hiến Thành, quận 19, TP.HCM', 'Shop đóng gói hàng cẩn thận giúp em nhé. Cảm ơn Shop nhiều!', '7290000.00', '', 1624112901),
(26, 0, 11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 'Mong shop giao hàng đúng hạn giúp em ạ!', '1880000.00', '', 1624115591);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(8, 'Lê Hồng Quân', 'quan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0814789455', '351A Lạc Long Quân', 2021),
(9, 'Nguyễn Thị Mai Hoa', 'maihoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0365815001', '116 Tô Hiến Thành, quận 19, TP.HCM', 2021),
(10, 'Nguyễn Phạm Trung Kiên', 'trungkien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0399087024', '86/40 Âu Cơ, phường 9, quận Tân Bình', 2021),
(11, 'Phạm Thị Trang Thu', 'pttrangthu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0372024840', '86/40 Âu Cơ, phường 9, quận Tân Bình', 2021),
(12, 'Nguyễn Trung Triết', 'triet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', 'Thanh Bình, Đồng Tháp', 2021),
(13, 'Nguyễn Thị Mai Huyền', 'huyen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0789456123', 'Tỉnh Tây Ninh', 2021),
(14, 'Lê Nguyễn Bảo Thy', 'july@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0456123789', 'Thị trấn Hoàn Lão, Tỉnh Quảng Bình', 2021),
(15, 'Lê Nguyễn Bảo Châu', 'jumi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123987456', 'Thị trấn Hoàn Lão, Tỉnh Quảng Bình', 2021),
(16, 'Lê Hồng Phong', 'phong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0372024848', 'Krông Nô, Đăk Nông', 2021),
(17, 'Nguyễn Văn A', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0787878787', '280 An Dương Vương, phường 4, quận 5', 2021),
(19, 'Lê Văn Anh Vũ', 'anhvu2k1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0159284763', 'Tỉnh Long An', 2021),
(20, 'Nguyễn Khánh Vân', 'khanhvan2005@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0372854976', 'Cầu Giấy - Hà Nội', 2021),
(21, 'Lê Thanh Bình', 'binhtphcm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0814654123', '100 Nguyễn Tri Phương, quận 5, Tp.HCM', 2021),
(22, 'Phạm Kiên Đức', 'icecream@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0825406203', '78 Nguyễn Văn Linh, huyện Bình Chánh, Tp.HCM', 2021),
(23, 'Phạm Trang Thu', 't-thu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '037987654', '78 Hà Huy Tập, tỉnh Quảng Bình', 2021);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
