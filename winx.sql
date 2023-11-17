-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2023 lúc 10:33 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `winx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `idkh` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `iddh` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `giasale` int(10) NOT NULL,
  `ngaydat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddh`, `idsp`, `soluong`, `giasale`, `ngaydat`) VALUES
(1, 7, 87, 1, 31000000, '2023-11-17 07:26:34'),
(2, 7, 68, 3, 100000, '2023-11-17 07:26:34'),
(3, 8, 89, 4, 31000000, '2023-11-17 07:27:10'),
(4, 8, 66, 4, 100000, '2023-11-17 07:27:10'),
(5, 9, 71, 2, 100000, '2023-11-17 07:44:40'),
(6, 10, 72, 1, 100000, '2023-11-17 07:48:04'),
(7, 10, 67, 5, 100000, '2023-11-17 07:48:04'),
(8, 10, 70, 1, 100000, '2023-11-17 07:48:04'),
(9, 11, 69, 1, 100000, '2023-11-17 07:49:37'),
(10, 12, 68, 1, 100000, '2023-11-17 07:50:03'),
(11, 13, 69, 1, 100000, '2023-11-17 07:51:24'),
(12, 14, 68, 7, 100000, '2023-11-17 08:03:11'),
(13, 14, 70, 5, 100000, '2023-11-17 08:03:11'),
(14, 15, 70, 1, 100000, '2023-11-17 08:04:50'),
(15, 16, 68, 1, 100000, '2023-11-17 08:05:15'),
(16, 17, 66, 1, 100000, '2023-11-17 13:30:17'),
(17, 17, 92, 2, 31000000, '2023-11-17 13:30:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendm` varchar(20) NOT NULL,
  `hinhanh` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendm`, `hinhanh`) VALUES
(1, 'Áo cầu Yonex', NULL),
(2, 'Quần cầu lông', NULL),
(3, 'Giày cầu lông', NULL),
(4, 'Vợt cầu long', NULL),
(5, 'Balo cầu long', NULL),
(6, 'Áo bóng đá', NULL),
(7, 'Quần bóng đá', NULL),
(8, 'Giày bóng đá', NULL),
(9, 'Quả bóng đá', NULL),
(10, 'Phụ kiện thủ môn', NULL),
(11, 'Áo bóng rổ', NULL),
(12, 'Quần bóng rổ', NULL),
(13, 'Giày bóng rổ', NULL),
(14, 'Quả bóng rổ', NULL),
(15, 'Balo bóng rổ', NULL),
(16, 'Áo quần bóng bàn', NULL),
(17, 'Bàn bóng bàn', NULL),
(18, 'Giày bóng bàn', NULL),
(19, 'Vợt bóng bàn', NULL),
(20, 'Mặt vợt bóng bàn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `idkh` int(10) NOT NULL,
  `tenkh` varchar(20) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tongtien` int(10) DEFAULT NULL,
  `ngaydat` datetime DEFAULT current_timestamp(),
  `trangthai` varchar(20) DEFAULT 'Đang chờ xử lý',
  `ghichu` text DEFAULT NULL,
  `diachi` text DEFAULT NULL,
  `phuongthuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `idkh`, `tenkh`, `sdt`, `email`, `tongtien`, `ngaydat`, `trangthai`, `ghichu`, `diachi`, `phuongthuc`) VALUES
(7, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 31392000, '2023-11-17 07:26:34', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(8, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 124428000, '2023-11-17 07:27:10', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(9, 1, 'thanhphat', '0357072913', 'phat@gmail.com', 291000, '2023-11-17 07:44:39', 'Đang chờ xử lý', 'Giao nhanh', '100A Tân Thới Nhất', 'Thanh toán qua ngân hàng'),
(10, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 724000, '2023-11-17 07:48:04', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(11, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 162000, '2023-11-17 07:49:37', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(12, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 182000, '2023-11-17 07:50:03', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(13, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 178000, '2023-11-17 07:51:24', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán qua ngân hàng'),
(14, 1, 'anhthu', '0123456789', 'datminh@gmail.com', 1235000, '2023-11-17 08:03:11', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán qua ngân hàng'),
(15, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 160000, '2023-11-17 08:04:50', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(16, 1, 'minhdat', '0123456789', 'datminh@gmail.com', 167000, '2023-11-17 08:05:15', 'Đang chờ xử lý', 'Trống', 'Trống', 'Thanh toán khi nhận hàng (COD)'),
(17, 1, 'nam', '0123456789', 'datminh@gmail.com', 62110000, '2023-11-17 13:30:17', 'Đang chờ xử lý', 'Trống', '123 cvpm', 'Thanh toán khi nhận hàng (COD)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `soluong` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `idsp`, `soluong`) VALUES
(50, 121, 1),
(51, 200, 1),
(52, 141, 1),
(53, 167, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `hinhanh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `idsp`, `hinhanh`) VALUES
(1, 66, 'AoCauLong1_1.png  '),
(2, 66, 'AoCauLong1_2.png  '),
(3, 67, 'AoCauLong2_1.png  '),
(4, 67, 'AoCauLong2_2.png  '),
(15, 68, 'AoCauLong3_1.png  '),
(16, 68, 'AoCauLong3_2.png  '),
(17, 69, 'AoCauLong4_1.png  '),
(18, 69, 'AoCauLong4_2.png  '),
(19, 70, 'AoCauLong5_1.png  '),
(20, 70, 'AoCauLong5_2.png  '),
(21, 71, 'AoCauLong6_1.png  '),
(22, 71, 'AoCauLong6_2.png  '),
(23, 72, 'AoCauLong7_1.png  '),
(24, 72, 'AoCauLong7_2.png  '),
(25, 73, 'AoCauLong8_1.png  '),
(26, 73, 'AoCauLong8_2.png  '),
(27, 74, 'AoCauLong9_1.png  '),
(28, 74, 'AoCauLong9_2.png  '),
(29, 75, 'AoCauLong10_1.png  '),
(30, 75, 'AoCauLong10_2.png  '),
(31, 76, 'QuanCauLong1_1.png'),
(32, 76, 'QuanCauLong1_2.png'),
(33, 77, 'QuanCauLong2_1.png'),
(34, 77, 'QuanCauLong2_2.png'),
(35, 78, 'QuanCauLong3_1.png'),
(37, 79, 'QuanCauLong4_1.png'),
(38, 79, 'QuanCauLong4_2.png'),
(39, 80, 'QuanCauLong5_1.png'),
(41, 81, 'QuanCauLong6_1.png'),
(42, 81, 'QuanCauLong6_2.png'),
(43, 82, 'QuanCauLong7_1.png'),
(45, 83, 'QuanCauLong8_1.png'),
(47, 84, 'QuanCauLong9_1.png'),
(48, 84, 'QuanCauLong9_2.png'),
(49, 85, 'QuanCauLong10_1.png'),
(50, 85, 'QuanCauLong10_2.png'),
(51, 86, 'GiayCauLong1_1.png'),
(52, 86, 'GiayCauLong1_2.png'),
(53, 86, 'GiayCauLong1_3.png'),
(54, 86, 'GiayCauLong1_4.png'),
(60, 87, 'GiayCauLong2_1.png'),
(61, 87, 'GiayCauLong2_2.png'),
(62, 87, 'GiayCauLong2_3.png'),
(63, 87, 'GiayCauLong2_4.png'),
(64, 88, 'GiayCauLong3_1.png'),
(65, 88, 'GiayCauLong3_2.png'),
(66, 88, 'GiayCauLong3_3.png'),
(67, 88, 'GiayCauLong3_4.png'),
(68, 89, 'GiayCauLong4_1.png'),
(69, 89, 'GiayCauLong4_2.png'),
(70, 89, 'GiayCauLong4_3.png'),
(71, 89, 'GiayCauLong4_4.png'),
(72, 90, 'GiayCauLong5_1.png'),
(73, 90, 'GiayCauLong5_2.png'),
(74, 90, 'GiayCauLong5_3.png'),
(75, 90, 'GiayCauLong5_4.png'),
(76, 91, 'GiayCauLong6_1.png'),
(77, 91, 'GiayCauLong6_2.png'),
(78, 91, 'GiayCauLong6_3.png'),
(79, 92, 'GiayCauLong6_4.png'),
(80, 92, 'GiayCauLong7_1.png'),
(81, 92, 'GiayCauLong7_2.png'),
(82, 92, 'GiayCauLong7_3.png'),
(83, 92, 'GiayCauLong7_4.png'),
(84, 93, 'GiayCauLong8_1.png'),
(85, 93, 'GiayCauLong8_2.png'),
(86, 93, 'GiayCauLong5_3.png'),
(87, 93, 'GiayCauLong8_4.png'),
(88, 94, 'GiayCauLong9_1.png'),
(89, 94, 'GiayCauLong9_2.png'),
(92, 95, 'GiayCauLong10_1.png'),
(93, 95, 'GiayCauLong10_2.png'),
(96, 96, 'VotCauLong1_1.png '),
(97, 96, 'VotCauLong1_2.png '),
(98, 96, 'VotCauLong1_3.png '),
(99, 96, 'VotCauLong1_4.png '),
(100, 97, 'VotCauLong2_1.png '),
(101, 97, 'VotCauLong2_2.png '),
(102, 97, 'VotCauLong2_3.png '),
(103, 97, 'VotCauLong2_4.png '),
(104, 105, 'VotCauLong3_1.png '),
(105, 105, 'VotCauLong3_2.png '),
(106, 105, 'VotCauLong3_3.png '),
(107, 105, 'VotCauLong3_4.png '),
(108, 98, 'VotCauLong4_1.png '),
(109, 98, 'VotCauLong4_2.png '),
(110, 98, 'VotCauLong4_3.png '),
(111, 98, 'VotCauLong4_4.png '),
(112, 99, 'VotCauLong5_1.png '),
(113, 99, 'VotCauLong5_2.png '),
(114, 99, 'VotCauLong5_3.png '),
(115, 99, 'VotCauLong5_4.png '),
(116, 100, 'VotCauLong6_1.png '),
(117, 100, 'VotCauLong6_2.png '),
(118, 100, 'VotCauLong6_3.png '),
(119, 100, 'VotCauLong6_4.png '),
(120, 101, 'VotCauLong7_1.png '),
(121, 101, 'VotCauLong7_2.png '),
(122, 101, 'VotCauLong7_3.png '),
(123, 101, 'VotCauLong7_4.png '),
(124, 102, 'VotCauLong8_1.png '),
(125, 102, 'VotCauLong8_2.png '),
(126, 102, 'VotCauLong8_3.png '),
(127, 102, 'VotCauLong8_4.png '),
(128, 103, 'VotCauLong9_1.png '),
(129, 103, 'VotCauLong9_2.png '),
(130, 103, 'VotCauLong9_3.png '),
(131, 104, 'VotCauLong10_1.png '),
(132, 104, 'VotCauLong10_2.png '),
(133, 104, 'VotCauLong10_3.png '),
(134, 106, 'BaloCauLong1_1.png '),
(135, 106, 'BaloCauLong1_2.png '),
(136, 106, 'BaloCauLong1_3.png '),
(137, 106, 'BaloCauLong1_4.png '),
(138, 107, 'BaloCauLong2_1.png '),
(139, 107, 'BaloCauLong2_2.png '),
(140, 107, 'BaloCauLong2_3.png '),
(141, 107, 'BaloCauLong2_4.png '),
(142, 108, 'BaloCauLong3_1.png '),
(143, 108, 'BaloCauLong3_2.png '),
(144, 108, 'BaloCauLong3_3.png '),
(146, 109, 'BaloCauLong4_1.png '),
(147, 109, 'BaloCauLong4_2.png '),
(148, 109, 'BaloCauLong4_3.png '),
(149, 109, 'BaloCauLong4_4.png '),
(150, 110, 'BaloCauLong5_1.png '),
(151, 110, 'BaloCauLong5_2.png '),
(152, 110, 'BaloCauLong5_3.png '),
(153, 110, 'BaloCauLong5_4.png '),
(154, 111, 'BaloCauLong6_1.png '),
(155, 111, 'BaloCauLong6_2.png '),
(158, 112, 'BaloCauLong7_1.png '),
(159, 112, 'BaloCauLong7_2.png '),
(162, 113, 'BaloCauLong8_1.png '),
(163, 113, 'BaloCauLong8_2.png '),
(164, 113, 'BaloCauLong8_3.png '),
(166, 114, 'BaloCauLong9_1.png '),
(167, 114, 'BaloCauLong9_2.png '),
(168, 114, 'BaloCauLong9_3.png '),
(170, 115, 'BaloCauLong10_1.png'),
(171, 115, 'BaloCauLong10_2.png'),
(174, 116, 'aobongban_ao1.png'),
(175, 117, 'aobongban_ao2_1.png'),
(176, 117, 'aobongban_ao2_2.png'),
(177, 118, 'qbongban_q1_1.png'),
(178, 118, 'qbongban_q1_2.png'),
(179, 118, 'qbongban_q1_3.png'),
(180, 118, 'qbongban_q1_4.png'),
(181, 118, 'qbongban_q1_5.png'),
(182, 118, 'qbongban_q1_6.png'),
(183, 118, 'qbongban_q1_7.png'),
(184, 119, 'aobongban_ao3_1.png'),
(185, 119, 'aobongban_ao3_2.png'),
(186, 119, 'aobongban_ao3_3.png'),
(187, 120, 'aobongban_ao4_1.png'),
(188, 120, 'aobongban_ao4_2.png'),
(189, 121, 'aobongban_ao5_1.png'),
(190, 121, 'aobongban_ao5_2.png'),
(191, 121, 'aobongban_ao5_3.png'),
(192, 122, 'aobongban_ao6_1.png'),
(193, 122, 'aobongban_ao6_2.png'),
(194, 122, 'aobongban_ao6_3.png'),
(195, 123, 'aobongban_ao7_1.png'),
(196, 123, 'qbongban_q2_1.png'),
(197, 123, 'qbongban_q2_2.png'),
(198, 124, 'aobongban_ao8_1.png'),
(199, 124, 'aobongban_ao8_2.png'),
(200, 124, 'aobongban_ao8_3.png'),
(201, 125, 'aobongban_ao9_1.png'),
(202, 125, 'aobongban_ao9_2.png'),
(203, 125, 'aobongban_ao9_3.png'),
(204, 126, 'aobongban_ao10_1.png'),
(205, 126, 'aobongban_ao10_2.png'),
(206, 126, 'aobongban_ao10_3.png'),
(207, 127, 'aobongban_ao11_1.png'),
(208, 127, 'aobongban_ao11_2.png'),
(209, 127, 'aobongban_ao11_3.png'),
(210, 128, 'quanbongban_quan3_1.png'),
(211, 128, 'quanbongban_quan3_2.png'),
(212, 128, 'quanbongban_quan3_3.png'),
(213, 129, 'bongban_ban1_1.png'),
(214, 129, 'bongban_ban1_2.png'),
(215, 129, 'bongban_ban1_3.png'),
(216, 131, 'bongban_ban2_1.png'),
(217, 131, 'bongban_ban2_2.png'),
(218, 131, 'bongban_ban2_3.png'),
(219, 132, 'bongban_ban3_1.png'),
(220, 132, 'bongban_ban3_2.png'),
(221, 132, 'bongban_ban3_3.png'),
(222, 132, 'bongban_ban3_4.png'),
(223, 133, 'bongban_ban4_1.png'),
(224, 133, 'bongban_ban4_2.png'),
(225, 133, 'bongban_ban4_3.png'),
(226, 134, 'bongban_ban5_1.png'),
(227, 134, 'bongban_ban5_2.png'),
(228, 134, 'bongban_ban5_3.png'),
(229, 135, 'bongban_ban6_1.png'),
(230, 135, 'bongban_ban6_2.png'),
(231, 135, 'bongban_ban6_3.png'),
(232, 136, 'bongban_ban7_1.png'),
(233, 136, 'bongban_ban7_2.png'),
(234, 136, 'bongban_ban7_3.png'),
(235, 137, 'bongban_ban8_1.png'),
(236, 137, 'bongban_ban8_2.png'),
(237, 137, 'bongban_ban8_3.png'),
(238, 138, 'bongban_ban9_1.png'),
(239, 138, 'bongban_ban9_2.png'),
(240, 138, 'bongban_ban9_3.png'),
(241, 139, 'bongban_ban10_1.png'),
(242, 139, 'bongban_ban10_2.png'),
(243, 139, 'bongban_ban10_3.png'),
(244, 140, 'bongban_ban11_1.png'),
(245, 140, 'bongban_ban12_2.png'),
(246, 140, 'bongban_ban12_3.png'),
(247, 141, 'bongban_ban13_1.png'),
(248, 141, 'bongban_ban13_2.png'),
(249, 141, 'bongban_ban13_3.png'),
(253, 142, 'giaybongban_giay2_1.png'),
(254, 142, 'giaybongban_giay2_2.png'),
(255, 142, 'giaybongban_giay2_3.png'),
(256, 143, 'giaybongban_giay3_1.png'),
(257, 143, 'giaybongban_giay3_2.png'),
(258, 143, 'giaybongban_giay3_3.png'),
(259, 144, 'giaybongban_giay4_1.png'),
(260, 144, 'giaybongban_giay4_2.png'),
(261, 145, 'giaybongban_giay4_3.png'),
(262, 145, 'giaybongban_giay5_1.png'),
(263, 145, 'giaybongban_giay5_2.png'),
(264, 145, 'giaybongban_giay5_3.png'),
(265, 146, 'giaybongban_giay6_1.png'),
(266, 146, 'giaybongban_giay6_2.png'),
(267, 147, 'giaybongban_giay6_3.png'),
(268, 147, 'giaybongban_giay7_1.png'),
(269, 147, 'giaybongban_giay7_2.png'),
(270, 147, 'giaybongban_giay7_3.png'),
(271, 148, 'giaybongban_giay8_1.png'),
(272, 148, 'giaybongban_giay8_2.png'),
(273, 148, 'giaybongban_giay8_3.png'),
(274, 149, 'giaybongban_giay9_1.png'),
(275, 149, 'giaybongban_giay9_2.png'),
(276, 149, 'giaybongban_giay9_3.png'),
(277, 150, 'giaybongban_giay10_1.png'),
(278, 150, 'giaybongban_giay10_2.png'),
(279, 150, 'giaybongban_giay10_3.png'),
(280, 150, 'giaybongban_giay10_4.png'),
(281, 151, 'giaybongban_giay12_1.png'),
(282, 151, 'giaybongban_giay12_2.png'),
(283, 152, 'giaybongban_giay13_1.png'),
(284, 152, 'giaybongban_giay13_2.png'),
(285, 153, 'giaybongban_giay14_1.png'),
(286, 153, 'giaybongban_giay14_2.png'),
(287, 153, 'giaybongban_giay14_3.png'),
(288, 154, 'matvotbongban_matvot1_1.png'),
(289, 154, 'matvotbongban_matvot1_2.png'),
(290, 155, 'matvotbongban_matvot2_1.png'),
(291, 155, 'matvotbongban_matvot2_2.png'),
(292, 155, 'matvotbongban_matvot2_3.png'),
(293, 155, 'matvotbongban_matvot2_4.png'),
(294, 156, 'matvotbongban_matvot3_1.png'),
(295, 156, 'matvotbongban_matvot3_2.png'),
(296, 156, 'matvotbongban_matvot3_3.png'),
(297, 156, 'matvotbongban_matvot3_4.png'),
(298, 157, 'matvotbongban_matvot4_1.png'),
(299, 157, 'matvotbongban_matvot4_2.png'),
(301, 157, 'matvotbongban_matvot4_4.png'),
(302, 158, 'matvotbongban_matvot5_1.png'),
(303, 158, 'matvotbongban_matvot5_2.png'),
(304, 158, 'matvotbongban_matvot5_3.png'),
(305, 158, 'matvotbongban_matvot5_4.png'),
(306, 159, 'matvotbongban_matvot6_1.png'),
(307, 159, 'matvotbongban_matvot6_2.png'),
(308, 161, 'matvotbongban_matvot7_1.png'),
(309, 161, 'matvotbongban_matvot7_2.png'),
(310, 161, 'matvotbongban_matvot7_3.png'),
(311, 162, 'matvotbongban_matvot8_1.png'),
(312, 162, 'matvotbongban_matvot8_2.png'),
(313, 162, 'matvotbongban_matvot8_3.png'),
(316, 165, 'matvotbongban_matvot9_3.png'),
(317, 166, 'matvotbongban_matvot11_1.png'),
(318, 166, 'matvotbongban_matvot11_2.png'),
(319, 166, 'matvotbongban_matvot11_3.png'),
(320, 167, 'matvotbongban_matvot12_1.png'),
(321, 167, 'matvotbongban_matvot12_2.png'),
(322, 167, 'matvotbongban_matvot12_3.png'),
(323, 168, 'votbongban_vot1_1.png'),
(324, 168, 'votbongban_vot1_2.png'),
(325, 168, 'votbongban_vot1_3.png'),
(326, 170, 'votbongban_vot2_1.png'),
(327, 170, 'votbongban_vot2_2.png'),
(328, 170, 'votbongban_vot2_3.png'),
(329, 171, 'votbongban_vot3_1.png'),
(330, 171, 'votbongban_vot3_1.png'),
(331, 171, 'votbongban_vot3_1.png'),
(332, 172, 'votbongban_vot4_1.png'),
(333, 172, 'votbongban_vot4_2.png'),
(334, 172, 'votbongban_vot4_3.png'),
(335, 173, 'votbongban_vot5_1.png'),
(336, 173, 'votbongban_vot5_2.png'),
(337, 173, 'votbongban_vot5_3.png'),
(338, 174, 'votbongban_vot6_1.png'),
(339, 174, 'votbongban_vot6_2.png'),
(340, 174, 'votbongban_vot6_3.png'),
(341, 175, 'votbongban_vot7_1.png'),
(342, 175, 'votbongban_vot7_2.png'),
(343, 175, 'votbongban_vot7_3.png'),
(344, 175, 'votbongban_vot7_4.png'),
(345, 176, 'votbongban_vot8_1.png'),
(346, 176, 'votbongban_vot8_2.png'),
(347, 176, 'votbongban_vot8_3.png'),
(351, 177, 'votbongban_vot9_3.png'),
(352, 178, 'votbongban_vot10_1.png'),
(353, 178, 'votbongban_vot10_2.png'),
(354, 178, 'votbongban_vot10_3.png'),
(355, 180, 'aobongro11.png'),
(356, 180, 'aobongro1_2.png'),
(357, 181, 'aobongro2.png'),
(358, 181, 'aobongro2_2.png'),
(359, 181, 'aobongro2_3.png'),
(360, 182, 'aobongro3.png'),
(361, 182, 'aobongro3_1.png'),
(362, 182, 'aobongro3_2.png'),
(364, 183, 'aobongro4.png'),
(365, 183, 'aobongro4_1.png'),
(366, 183, 'aobongro4_2.png'),
(367, 184, 'aobongro5.png'),
(368, 184, 'aobongro5_1.png'),
(369, 184, 'aobongro5_2.png'),
(370, 185, 'aobongro6.png'),
(371, 185, 'aobongro6_1.png'),
(372, 186, 'aobongro7.png'),
(373, 186, 'aobongro7_1.png'),
(374, 187, 'aobongro8.png'),
(375, 187, 'aobongro8_1.png'),
(376, 188, 'aobongro9.png'),
(377, 188, 'aobongro9_1.png'),
(378, 189, 'aobongro10.png'),
(379, 189, 'aobongro10_1.png'),
(380, 190, 'aobongro11.png'),
(381, 190, 'aobongro11_1.png'),
(382, 191, 'aobongro12.png'),
(383, 191, 'aobongro12_1.png'),
(384, 192, 'quanbongro1.png'),
(385, 192, 'quanbongro1_1.png'),
(386, 193, 'quanbongro2.png'),
(387, 193, 'quanbongro2_1.png'),
(388, 194, 'quanbongro3.png'),
(389, 194, 'quanbongro3_1.png'),
(390, 195, 'quanbongro4.png'),
(391, 195, 'quanbongro4_1.png'),
(392, 196, 'quanbongro5.png'),
(393, 196, 'quanbongro5_1.png'),
(394, 197, 'quanbongro6.png'),
(395, 197, 'quanbongro6_1.png'),
(396, 198, 'quanbongro7.png'),
(397, 198, 'quanbongro7_1.png'),
(398, 199, 'quanbongro8.png'),
(399, 199, 'quanbongro8_1.png'),
(400, 200, 'quanbongro9.png'),
(401, 200, 'quanbongro9_1.png'),
(402, 201, 'quanbongro10.png'),
(403, 201, 'quanbongro10_1.png'),
(404, 202, 'quanbongro11.png'),
(405, 202, 'quanbongro11_1.png'),
(406, 203, 'quanbongro12.png'),
(407, 203, 'quanbongro12_1.png'),
(408, 204, 'giaybongro1.png'),
(409, 204, 'giaybongro1_1.png'),
(410, 204, 'giaybongro1_2.png'),
(411, 204, 'giaybongro1_3.png'),
(412, 205, 'giaybongro2.png'),
(413, 205, 'giaybongro2_1.png'),
(414, 205, 'giaybongro2_2.png'),
(415, 205, 'giaybongro2_3.png'),
(416, 206, 'giaybongro3.png'),
(417, 206, 'giaybongro3_1.png'),
(418, 206, 'giaybongro3_2.png'),
(419, 206, 'giaybongro3_3.png'),
(420, 207, 'giaybongro4.png'),
(421, 207, 'giaybongro4_1.png'),
(422, 207, 'giaybongro4_2.png'),
(423, 207, 'giaybongro4_3.png'),
(424, 208, 'giaybongro5.png'),
(425, 208, 'giaybongro5_1.png'),
(426, 208, 'giaybongro5_2.png'),
(427, 208, 'giaybongro5_3.png'),
(428, 209, 'giaybongro6.png'),
(429, 209, 'giaybongro6_1.png'),
(430, 209, 'giaybongro6_2.png'),
(431, 209, 'giaybongro6_3.png'),
(432, 210, 'giaybongro7.png'),
(433, 210, 'giaybongro7_1.png'),
(434, 210, 'giaybongro7_2.png'),
(435, 210, 'giaybongro7_3.png'),
(436, 211, 'giaybongro8.png'),
(437, 211, 'giaybongro8_1.png'),
(438, 211, 'giaybongro8_2.png'),
(439, 211, 'giaybongro8_3.png'),
(440, 212, 'giaybongro9.png'),
(441, 212, 'giaybongro9_1.png'),
(442, 212, 'giaybongro9_2.png'),
(443, 212, 'giaybongro9_3.png'),
(444, 213, 'giaybongro10.png'),
(445, 213, 'giaybongro10_1.png'),
(446, 213, 'giaybongro10_2.png'),
(447, 213, 'giaybongro10_3.png'),
(448, 214, 'giaybongro11.png'),
(449, 214, 'giaybongro11_1.png'),
(450, 214, 'giaybongro11_2.png'),
(451, 214, 'giaybongro11_3.png'),
(452, 215, 'giaybongro12.png'),
(453, 215, 'giaybongro12_1.png'),
(454, 215, 'giaybongro12_2.png'),
(455, 215, 'giaybongro12_3.png'),
(456, 216, 'bongro1.png'),
(457, 217, 'bongro2.png'),
(458, 218, 'bongro3.png'),
(459, 219, 'bongro4.png'),
(460, 220, 'bongro5.png'),
(461, 221, 'bongro6.png'),
(462, 222, 'bongro7.png'),
(463, 223, 'bongro8.png'),
(464, 224, 'bongro9.png'),
(465, 225, 'bongro10.png'),
(466, 226, 'bongro11.png'),
(467, 227, 'bongro12.png'),
(468, 228, 'balo1.png'),
(469, 228, 'balo1_1.png'),
(470, 228, 'balo1_2.png'),
(471, 228, 'balo1_3.png'),
(472, 229, 'balo2.png'),
(473, 229, 'balo2_1.png'),
(474, 229, 'balo2_2.png'),
(475, 229, 'balo2_3.png'),
(476, 230, 'balo3.png'),
(477, 230, 'balo3_1.png'),
(478, 230, 'balo3_2.png'),
(479, 230, 'balo3_3.png'),
(480, 231, 'balo4.png'),
(481, 231, 'balo4_1.png'),
(482, 231, 'balo4_2.png'),
(483, 231, 'balo4_3.png'),
(484, 232, 'balo5.png'),
(485, 232, 'balo5_1.png'),
(486, 232, 'balo5_2.png'),
(487, 232, 'balo5_3.png'),
(488, 233, 'balo6.png'),
(489, 233, 'balo6_1.png'),
(490, 233, 'balo6_2.png'),
(491, 233, 'balo6_3.png'),
(492, 234, 'balo7.png'),
(493, 234, 'balo7_1.png'),
(494, 234, 'balo7_2.png'),
(495, 234, 'balo7_3.png'),
(496, 235, 'balo8.png'),
(497, 235, 'balo8_1.png'),
(498, 235, 'balo8_2.png'),
(499, 235, 'balo8_3.png'),
(500, 236, 'balo9.png'),
(501, 236, 'balo9_1.png'),
(502, 236, 'balo9_2.png'),
(503, 236, 'balo9_3.png'),
(504, 237, 'balo10.png'),
(505, 237, 'balo10_1.png'),
(506, 237, 'balo10_2.png'),
(507, 237, 'balo10_3.png'),
(508, 238, 'balo11.png'),
(509, 238, 'balo11_1.png'),
(510, 238, 'balo11_2.png'),
(511, 238, 'balo11_3.png'),
(512, 239, 'balo12.png'),
(513, 239, 'balo12_1.png'),
(514, 239, 'balo12_2.png'),
(515, 239, 'balo12_3.png'),
(516, 6, 'qdabong_quan13_3.png'),
(517, 6, 'qdabong_quan13_2.png'),
(518, 6, 'qdabong_quan13_1.png'),
(519, 7, 'qdabong_quan12_3.png'),
(520, 7, 'qdabong_quan12_2.png'),
(521, 7, 'qdabong_quan12_1.png'),
(522, 8, 'qdabong_quan11_3.png'),
(523, 8, 'qdabong_quan11_2.png'),
(524, 8, 'qdabong_quan11_1.png'),
(525, 9, 'qdabong_quan10_3.png'),
(526, 9, 'qdabong_quan10_2.png'),
(527, 9, 'qdabong_quan10_1.png'),
(528, 10, 'qdabong_quan9_3.png'),
(529, 10, 'qdabong_quan9_2.png'),
(530, 10, 'qdabong_quan9_1.png'),
(531, 11, 'qdabong_quan8_3.png'),
(532, 11, 'qdabong_quan8_2.png'),
(533, 11, 'qdabong_quan8_1.png'),
(534, 12, 'qdabong_quan7_3.png'),
(535, 12, 'qdabong_quan7_2.png'),
(536, 12, 'qdabong_quan7_1.png'),
(537, 13, 'qdabong_quan6_3.png'),
(538, 13, 'qdabong_quan6_2.png'),
(539, 13, 'qdabong_quan6_1.png'),
(540, 14, 'qdabong_quan5_3.png'),
(541, 14, 'qdabong_quan5_2.png'),
(542, 14, 'qdabong_quan5_1.png'),
(543, 15, 'qdabong_quan4_3.png'),
(544, 15, 'qdabong_quan4_2.png'),
(545, 15, 'qdabong_quan4_1.png'),
(546, 16, 'qdabong_quan3_3.png'),
(547, 16, 'qdabong_quan3_2.png'),
(548, 16, 'qdabong_quan3_1.png'),
(549, 17, 'qdabong_quan2_3.png'),
(550, 17, 'qdabong_quan2_2.png'),
(551, 17, 'qdabong_quan2_1.png'),
(552, 18, 'aobongda_ao1_1.png'),
(553, 18, 'aobongda_ao1_2.png'),
(554, 19, 'aobongda_ao2_1.png'),
(555, 19, 'aobongda_ao2_2.png'),
(556, 20, 'aobongda_ao3_1.png'),
(557, 20, 'aobongda_ao3_2.png'),
(558, 21, 'aobongda_ao4_1.png'),
(559, 21, 'aobongda_ao4_2.png'),
(560, 22, 'aobongda_ao5_1.png'),
(561, 22, 'aobongda_ao5_2.png'),
(562, 23, 'aobongda_ao6_1.png'),
(563, 23, 'aobongda_ao6_2.png'),
(564, 24, 'aobongda_ao7_1.png'),
(565, 24, 'aobongda_ao7_2.png'),
(566, 25, 'aobongda_ao8_1.png'),
(567, 25, 'aobongda_ao8_2.png'),
(568, 26, 'aobongda_ao9_1.png'),
(569, 26, 'aobongda_ao9_2.png'),
(570, 27, 'aobongda_ao10_1.png'),
(571, 27, 'aobongda_ao10_2.png'),
(572, 28, 'aobongda_ao11_1.png'),
(573, 28, 'aobongda_ao11_2.png'),
(574, 29, 'aobongda_ao12_1.png'),
(575, 29, 'aobongda_ao12_2.png'),
(576, 30, 'giaybd_giay1_1.png'),
(577, 30, 'giaybd_giay1_2.png'),
(578, 30, 'giaybd_giay1_3.png'),
(579, 30, 'giaybd_giay1_4.png'),
(580, 31, 'giaybd_giay2_1.png'),
(581, 31, 'giaybd_giay2_2.png'),
(582, 31, 'giaybd_giay2_2.png'),
(583, 31, 'giaybd_giay2_3.png'),
(584, 31, 'giaybd_giay2_4.png'),
(585, 32, 'giaybd_giay3_1.png'),
(586, 32, 'giaybd_giay3_2.png'),
(587, 32, 'giaybd_giay3_3.png'),
(588, 32, 'giaybd_giay3_4.png'),
(589, 33, 'giaybd_giay4_1.png'),
(590, 33, 'giaybd_giay4_2.png'),
(591, 33, 'giaybd_giay4_3.png'),
(592, 33, 'giaybd_giay4_4.png'),
(593, 34, 'giaybd_giay5_1.png'),
(594, 34, 'giaybd_giay5_2.png'),
(595, 34, 'giaybd_giay5_3.png'),
(596, 34, 'giaybd_giay5_4.png'),
(597, 35, 'giaybd_giay6_1.png'),
(598, 35, 'giaybd_giay6_2.png'),
(599, 35, 'giaybd_giay6_3.png'),
(600, 35, 'giaybd_giay6_4.png'),
(601, 36, 'giaybd_giay7_1.png'),
(602, 36, 'giaybd_giay7_2.png'),
(603, 36, 'giaybd_giay7_3.png'),
(604, 36, 'giaybd_giay7_4.png'),
(605, 37, 'giaybd_giay8_1.png'),
(606, 37, 'giaybd_giay8_2.png'),
(607, 37, 'giaybd_giay8_3.png'),
(608, 37, 'giaybd_giay8_4.png'),
(609, 38, 'giaybd_giay9_1.png'),
(610, 38, 'giaybd_giay9_2.png'),
(611, 38, 'giaybd_giay9_3.png'),
(612, 38, 'giaybd_giay9_4.png'),
(613, 39, 'giaybd_giay10_1.png'),
(614, 39, 'giaybd_giay10_2.png'),
(615, 39, 'giaybd_giay10_3.png'),
(616, 39, 'giaybd_giay10_4.png'),
(617, 40, 'giaybd_giay11_1.png'),
(618, 40, 'giaybd_giay11_2.png'),
(619, 40, 'giaybd_giay11_3.png'),
(620, 40, 'giaybd_giay11_4.png'),
(621, 41, 'giaybd_giay12_1.png'),
(622, 41, 'giaybd_giay12_2.png'),
(623, 41, 'giaybd_giay12_3.png'),
(624, 41, 'giaybd_giay12_4.png'),
(625, 42, 'gangtay_gang1_1.png'),
(626, 42, 'gangtay_gang1_2.png'),
(627, 42, 'gangtay_gang1_3.png'),
(628, 42, 'gangtay_gang1_4.png'),
(629, 43, 'gangtay_gang2_1.png'),
(630, 43, 'gangtay_gang2_2.png'),
(631, 43, 'gangtay_gang2_3.png'),
(632, 43, 'gangtay_gang2_4.png'),
(633, 44, 'gangtay_gang3_1.png'),
(634, 44, 'gangtay_gang3_2.png'),
(635, 44, 'gangtay_gang3_3.png'),
(636, 44, 'gangtay_gang3_4.png'),
(637, 45, 'gangtay_gang4_1.png'),
(638, 45, 'gangtay_gang4_2.png'),
(639, 45, 'gangtay_gang4_3.png'),
(640, 45, 'gangtay_gang4_4.png'),
(641, 46, 'gangtay_gang5_1.png'),
(642, 46, 'gangtay_gang5_2.png'),
(643, 46, 'gangtay_gang5_3.png'),
(644, 46, 'gangtay_gang5_4.png'),
(645, 47, 'gangtay_gang6_1.png'),
(646, 47, 'gangtay_gang6_2.png'),
(647, 47, 'gangtay_gang6_3.png'),
(648, 47, 'gangtay_gang6_4.png'),
(649, 48, 'gangtay_gang7_1.png'),
(650, 48, 'gangtay_gang7_2.png'),
(651, 48, 'gangtay_gang7_3.png'),
(652, 48, 'gangtay_gang7_4.png'),
(653, 49, 'gangtay_gang8_1.png'),
(654, 49, 'gangtay_gang8_2.png'),
(655, 49, 'gangtay_gang8_3.png'),
(656, 49, 'gangtay_gang8_4.png'),
(657, 50, 'gangtay_gang9_1.png'),
(658, 50, 'gangtay_gang9_2.png'),
(659, 50, 'gangtay_gang9_3.png'),
(660, 50, 'gangtay_gang9_4.png'),
(661, 51, 'gangtay_gang10_1.png'),
(662, 51, 'gangtay_gang10_2.png'),
(663, 51, 'gangtay_gang10_3.png'),
(664, 51, 'gangtay_gang10_4.png'),
(665, 52, 'gangtay_gang11_1.png'),
(666, 52, 'gangtay_gang11_2.png'),
(667, 52, 'gangtay_gang11_3.png'),
(668, 52, 'gangtay_gang11_4.png'),
(669, 53, 'gangtay_gang12_1.png'),
(670, 53, 'gangtay_gang12_2.png'),
(671, 53, 'gangtay_gang12_3.png'),
(672, 53, 'gangtay_gang12_4.png'),
(673, 54, 'bong_bong1_1.png'),
(674, 54, 'bong_bong1_2.png'),
(675, 54, 'bong_bong1_3.png'),
(676, 54, 'bong_bong1_4.png'),
(677, 55, 'bong_bong2_1.png'),
(678, 55, 'bong_bong2_2.png'),
(679, 55, 'bong_bong2_3.png'),
(680, 55, 'bong_bong2_4.png'),
(681, 56, 'bong_bong3_1.png'),
(682, 56, 'bong_bong3_2.png'),
(683, 56, 'bong_bong3_3.png'),
(684, 56, 'bong_bong3_4.png'),
(685, 57, 'bong_bong4_1.png'),
(686, 57, 'bong_bong4_2.png'),
(687, 57, 'bong_bong4_3.png'),
(688, 57, 'bong_bong4_4.png'),
(689, 58, 'bong_bong5_1.png'),
(690, 58, 'bong_bong5_2.png'),
(691, 58, 'bong_bong5_3.png'),
(692, 58, 'bong_bong5_4.png'),
(693, 59, 'bong_bong6_1.png'),
(694, 59, 'bong_bong6_2.png'),
(695, 59, 'bong_bong6_3.png'),
(696, 59, 'bong_bong6_4.png'),
(697, 60, 'bong_bong7_1.png'),
(698, 60, 'bong_bong7_2.png'),
(699, 60, 'bong_bong7_3.png'),
(700, 60, 'bong_bong7_4.png'),
(701, 61, 'bong_bong8_1.png'),
(702, 61, 'bong_bong8_2.png'),
(703, 61, 'bong_bong8_3.png'),
(704, 61, 'bong_bong8_4.png'),
(705, 62, 'bong_bong9_1.png'),
(706, 62, 'bong_bong9_2.png'),
(707, 62, 'bong_bong9_3.png'),
(708, 62, 'bong_bong9_4.png'),
(709, 63, 'bong_bong10_1.png'),
(710, 63, 'bong_bong10_2.png'),
(711, 63, 'bong_bong10_3.png'),
(712, 63, 'bong_bong10_4.png'),
(713, 64, 'bong_bong11_1.png'),
(714, 64, 'bong_bong11_2.png'),
(715, 64, 'bong_bong11_3.png'),
(716, 64, 'bong_bong11_4.png'),
(717, 65, 'bong_bong12_1.png'),
(718, 65, 'bong_bong12_2.png'),
(719, 65, 'bong_bong12_3.png'),
(720, 65, 'bong_bong12_4.png'),
(721, 240, 'VotCauLong11_1.png'),
(722, 240, 'VotCauLong11_2.png'),
(723, 240, 'VotCauLong11_3.png'),
(724, 241, 'VotCauLong12_1.png'),
(725, 241, 'VotCauLong12_2.png'),
(726, 241, 'VotCauLong12_3.png'),
(727, 242, 'AoCauLong11_1.png '),
(728, 242, 'AoCauLong11_2.png '),
(729, 243, 'AoCauLong12_1.png '),
(730, 243, 'AoCauLong12_2.png '),
(731, 244, 'QuanCauLong11_1.png'),
(732, 244, 'QuanCauLong11_2.png'),
(733, 245, 'QuanCauLong12_1.png'),
(734, 245, 'QuanCauLong12_2.png'),
(735, 246, 'GiayCauLong12_1.png'),
(736, 246, 'GiayCauLong12_2.png'),
(737, 246, 'GiayCauLong12_3.png'),
(738, 246, 'GiayCauLong12_4.png'),
(739, 247, 'GiayCauLong11_1.png'),
(740, 247, 'GiayCauLong11_2.png'),
(741, 247, 'GiayCauLong11_3.png'),
(742, 247, 'GiayCauLong11_4.png'),
(743, 248, 'BaloCauLong11_1.png '),
(744, 248, 'BaloCauLong11_2.png '),
(745, 248, 'BaloCauLong11_3.png '),
(746, 249, 'BaloCauLong12_1.png '),
(747, 249, 'BaloCauLong12_2.png '),
(748, 249, 'BaloCauLong12_3.png '),
(751, 177, 'votbongban_vot9_1.png'),
(752, 177, 'votbongban_vot9_2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `iddm` int(10) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giagoc` int(10) DEFAULT NULL,
  `giasale` int(10) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(10) DEFAULT 1,
  `ngaythem` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giagoc`, `giasale`, `mota`, `luotxem`, `ngaythem`) VALUES
(6, 7, 'QUẦN SHORT SÂN NHÀ MANCHESTER UNITED 23/24', 1250000, 1100000, 'CHIẾC QUẦN SHORT MANG MÀU SẮC SÂN NHÀ CỦA MAN UTD DÀNH CHO CỔ ĐỘNG VIÊN, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nHãy diện chiếc quần short bóng đá adidas này cùng áo đấu sân nhà và đôi tất bắt mắt của Manchester United cho phong cách ra quân đúng chất Old Trafford từ đầu đến chân. Khoác lên mình sắc trắng kinh điển, chiếc quần này có huy hiệu CLB trứ danh phiên bản dệt nổi. Công nghệ AEROREADY thoát ẩm đảm bảo cảm giác thoải mái bất kể bạn đang đá bóng hay cổ vũ hết mình.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:46:53'),
(7, 7, 'QUẦN SHORT SÂN NHÀ REAL MADRID 23/24', 1250000, 1100000, 'CHIẾC QUẦN SHORT THOÁT ẨM DÀNH CHO CÁC FAN REAL MADRID, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nTôn vinh bề dày lịch sử của đội bóng thanh lịch. Nằm trong bộ trang phục sân nhà classic, chiếc quần short adidas Real Madrid này có dệt huy hiệu CLB trên nền những gam màu trắng trứ danh. Dành cho các cổ động viên của CLB, chiếc quần này sẽ giúp bạn luôn thoải mái nhờ chất vải mềm mại, mượt mà.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:47:54'),
(8, 7, 'QUẦN SHORT FORTORE 231', 1250000, 1100000, 'CHIẾC QUẦN SHORT PHONG CÁCH THẬP NIÊN 90 DÀNH CHO CÁC ĐỘI BÓNG NGHIỆP DƯ, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nHãy tìm cho mình phong cách bóng đá với chiếc quần short adidas Fortore 23 này. Với thiết kế dành cho các đội bóng nghiệp dư, chiếc quần này sử dụng chất vải siêu nhẹ và công nghệ AEROREADY giúp bạn luôn khô ráo và tập trung trên sân cỏ. 3 Sọc oversize lấy cảm hứng từ phong cách Equipment thập niên 90, để bạn và đồng đội luôn nổi bật suốt trận đấu.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(9, 7, 'QUẦN SHORT FORTORE 232', 1250000, 1100000, 'CHIẾC QUẦN SHORT PHONG CÁCH THẬP NIÊN 90 DÀNH CHO CÁC ĐỘI BÓNG NGHIỆP DƯ, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nHãy tìm cho mình phong cách bóng đá với chiếc quần short adidas Fortore 23 này. Với thiết kế dành cho các đội bóng nghiệp dư, chiếc quần này sử dụng chất vải siêu nhẹ và công nghệ AEROREADY giúp bạn luôn khô ráo và tập trung trên sân cỏ. 3 Sọc oversize lấy cảm hứng từ phong cách Equipment thập niên 90, để bạn và đồng đội luôn nổi bật suốt trận đấu.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(10, 7, 'QUẦN SHORT TẬP LUYỆN TIRO 23 LEAGUE', 600000, 420000, 'CHIẾC QUẦN SHORT THẤM HÚT ẨM DÀNH CHO TẬP LUYỆN, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nDành cho bộ môn thể thao vua. Nằm trong dòng sản phẩm Tiro 23 League, chiếc quần short bóng đá adidas này sẽ giúp bạn lướt bay trên sân tập. Làm từ chất vải siêu nhẹ và mượt mà, quần sử dụng công nghệ AEROREADY thấm hút ẩm giúp bạn luôn khô ráo ngay cả khi đang chạy hết tốc lực. Các túi khóa kéo cất giữ đồ đạc an toàn khi bạn không muốn để đồ có giá trị ở đường biên.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(11, 7, 'QUẦN SHORT FORTORE 233', 500000, 350000, 'CHIẾC QUẦN SHORT PHONG CÁCH THẬP NIÊN 90 DÀNH CHO CÁC ĐỘI BÓNG NGHIỆP DƯ, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nHãy tìm cho mình phong cách bóng đá với chiếc quần short adidas Fortore 23 này. Với thiết kế dành cho các đội bóng nghiệp dư, chiếc quần này sử dụng chất vải siêu nhẹ và công nghệ AEROREADY giúp bạn luôn khô ráo và tập trung trên sân cỏ. 3 Sọc oversize lấy cảm hứng từ phong cách Equipment thập niên 90, để bạn và đồng đội luôn nổi bật suốt trận đấu.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(12, 7, 'QUẦN SHORT SÂN NHÀ ARSENAL 23/24', 1250000, 1100000, 'CHIẾC QUẦN SHORT ARSENAL ĐÁNH DẤU HÀNH TRÌNH ĐẦY ẤN TƯỢNG, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nNằm trong bộ trang phục kỷ niệm 20 năm mùa giải \"bất bại\" của Arsenal. Với những chi tiết màu vàng gold tương tự như áo đấu, chiếc quần short bóng đá adidas này giúp người hâm mộ luôn thoải mái nhờ chất vải mềm mượt và công nghệ AEROREADY thoát ẩm. Huy hiệu dệt nổi đảm bảo bạn ăn mừng theo đúng phong cách Pháo thủ.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(13, 7, 'QUẦN SHORT SÂN NHÀ FC BAYERN 23/24', 1250000, 1100000, 'CHIẾC QUẦN SHORT SÂN NHÀ THOÁT ẨM DÀNH CHO CÁC FAN FC BAYERN, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nDiện chiếc quần short adidas FC Bayern này cùng áo đấu sân nhà và đi tất để khoe phong cách cầu thủ trên sân Allianz Arena. Công nghệ AEROREADY thấm hút ẩm giúp bạn luôn thoải mái trong những trận đấu cam go nhất. Huy hiệu CLB dệt nổi tôn vinh niềm đam mê bóng đá hàng đầu.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(14, 7, 'QUẦN SHORT SÂN NHÀ JUVENTUS 23/24', 1250000, 1100000, 'CHIẾC QUẦN SHORT JUVENTUS THOÁT ẨM, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nNằm trong bộ trang phục sân nhà lấy cảm hứng từ biệt danh \"Le Zebre\" của câu lạc bộ, chiếc quần short bóng đá Juventus đến từ adidas này có thiết kế giúp người hâm mộ luôn thoải mái và tự hào. Công nghệ AEROREADY thoát ẩm đảm bảo bạn luôn khô ráo bất kể trận đấu gay cấn đến mức nào. Huy hiệu dệt nổi cao cấp tạo điểm nhấn không thể thiếu.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(15, 7, 'QUẦN SHORT MANCHESTER UNITED ICON\r\n', 1350000, 1200000, 'CHIẾC QUẦN SHORT MANCHESTER UNITED PHONG CÁCH RETRO LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nĐổi mới hình tượng Manchester United trong trang phục adidas Equipment biểu tượng. Các chi tiết hiện đại pha trộn cùng hơi hướng cổ điển, mẫu quần soóc này nổi bật lên với 3 Sọc Kẻ chéo ngoại cỡ vốn đã rất nổi tiếng trong nền bóng đá đầu thập niên 90. Đối với những người đầu tiên nhớ về xu thế đó, đây chính là phong cách làm sống lại cả thời kỳ hoàng kim. Với những người khác, đây sẽ là một trải nghiệm hoàn toàn mới.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(16, 7, 'QUẦN SHORT TIRO 23 LEAGUE\r\n', 900000, 750000, 'CHIẾC QUẦN SHORT THẤM HÚT ẨM TRÊN SÂN BÓNG ĐÁ, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nDành cho bộ môn thể thao vua. Chiếc quần short adidas Tiro 23 League này kết hợp chất vải mềm mại, co giãn và công nghệ AEROREADY thấm hút ẩm giúp bạn kiểm soát sân bóng vào mỗi cuối tuần. Logo 3 Bar thêu và vòng 3 Sọc đục lỗ đảm bảo bạn sẽ luôn tuyệt vời từ diện mạo cho tới cảm giác mỗi khi bước qua vạch trắng.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(17, 7, 'QUẦN SHORT TIRO 23 LEAGUE1', 900000, 750000, 'CHIẾC QUẦN SHORT THẤM HÚT ẨM TRÊN SÂN BÓNG ĐÁ, LÀM TỪ CHẤT LIỆU TÁI CHẾ.\r\nDành cho bộ môn thể thao vua. Chiếc quần short adidas Tiro 23 League này kết hợp chất vải mềm mại, co giãn và công nghệ AEROREADY thấm hút ẩm giúp bạn kiểm soát sân bóng vào mỗi cuối tuần. Logo 3 Bar thêu và vòng 3 Sọc đục lỗ đảm bảo bạn sẽ luôn tuyệt vời từ diện mạo cho tới cảm giác mỗi khi bước qua vạch trắng.\r\n\r\nLàm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, '2023-11-11 02:54:40'),
(18, 6, 'Áo đội tuyển Bỉ sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 02:57:32'),
(19, 6, 'Áo đội tuyển Bồ Đầu Nha sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(20, 6, 'Áo đội tuyển Italia sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(21, 6, 'Áo đội tuyển Đức sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(22, 6, 'Áo đội tuyển Ý sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(23, 6, 'Áo đội tuyển Tây Ban Nha sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(24, 6, 'Áo đội tuyển Tây Ban Nha sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(25, 6, 'Áo đội tuyển Đức sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(26, 6, 'Áo đội tuyển Bỉ sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(27, 6, 'Áo đội tuyển Argentina sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(28, 6, 'Áo đội tuyển Pháp sân nhà hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(29, 6, 'Áo đội tuyển Mexico sân khách hàng Thái Lan', 330000, 280000, '– Đây là mẫu quần áo câu lạc bộ đang được bán nhiều nhất trên thị trường, thường được may bằng vải thun lạnh. Đây là hàng phổ thông nhất hiện nay.\r\n– Ưu điểm: Giá rẻ, mặc cũng khá bền.\r\n– Nhược điểm: Mặc nóng và thấm hút mồ hôi không tốt lắm. Chỉ giống khoảng 90% so với hàng chính hãng.', 1, '2023-11-11 03:02:26'),
(30, 8, 'MIZUNO MONARCIDA NEO SALA PRO AS TF', 2290000, 2190000, 'Về công nghệ của phiên bản Mizuno Monarcida Neo Sala Pro AS TF - Bright Yellow/White:\r\n\r\n Được làm từ da tổng hợp thế hệ mới, giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn. Bề mặt thân giày được phủ bóng một lớp đặc biệt, giúp dễ dàng vệ sinh giày và mang tới sự ấn tượng trong tổng thể thiết kế.\r\n\r\n Mũi giày thiết kế với miếng da lộn bền bỉ, giúp nâng cao độ bền chung của giày.\r\n\r\n Là mẫu giày thuộc phân khúc cao cấp, Monarcida Neo Sala Pro TF được trang bị lớp đệm giảm chấn U4ic, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu.\r\n\r\n Lót giày êm, chống trượt hiệu quả.', 1, '2023-11-11 03:17:30'),
(31, 8, 'NIKE LUNARGATO II IC SMALL SIDED - GREEN GLOW', 3219000, 2250000, 'Về công nghệ của phiên bản LUNAR GATO II:\r\n\r\n Chất liệu da được cấu tạo bằng da thật mềm cao cấp mang lại cảm giác cực êm và bám trong những pha chạm bóng.\r\n\r\n Công nghệ mặt lưới kép DYNAMIT MESH tạo cảm giác thông thoáng cho lòng bàn chân. \r\n\r\n Đế đệm Lunar giúp êm ái khi di chuyển và dễ chịu ngay từ lần đầu tiên xỏ vào.\r\n\r\n Phần mũi giày được đắp 1 lớp da lộn tăng cảm giác bóng cho người chơi.', 1, '2023-11-11 03:29:23'),
(32, 8, 'NIKE TIEMPO LEGEND 10 ACADEMY TF READY - WHITE', 2349000, 1990000, 'Về công nghệ của phiên bản Nike Tiempo Legend 10 Academy TF Ready - White/Black/Bright Crimson:\r\n\r\nĐể chuyển từ chất liệu da K truyền thống sang một chất liệu khác, Nike sẽ phải cân nhắc và sử dụng những công nghệ thay thế hợp lý hơn nhưng vẫn đảm bảo mang lại hiệu quả tốt nhất cho người chơi.\r\n\r\n- Đặc biệt, các đường gấp khúc ở đầu mũi giày và một phần đục lỗ ở trên logo Swoosh của Tiempo 9 sẽ bị loại bỏ, Tiempo 10 chỉ giữ lại thiết kế logo Swoosh và cấu trúc của lưỡi giày. Chứng tỏ rằng, giao diện của Tiempo 10 sẽ không có sự thay đổi quá nhiều so với những mẫu giày hiện tại.\r\n\r\n- Phần upper được làm bằng da tổng hợp tạo nên sự mềm mại, co giãn tuyệt đối, giúp form giày ôm sát vào chân giúp cầu thủ có cảm giác chạm bóng tự nhiên và chân thật nhất nhưng vẫn cảm thấy thoải mái sau nhiều giờ chơi bóng.\r\n\r\n- Lưỡi gà rời của Tiempo mang lại sự thoải mái vượt bật, cũng như cho người chơi có form chân bè lẫn chân thon dễ dàng khi xỏ giày.', 1, '2023-11-11 03:29:23'),
(33, 8, 'ADIDAS PREDATOR ACCURACY .1 TF MARINERUSH ', 3500000, 2850000, 'Về công nghệ của phiên bản Adidas Predator Accuracy .1 TF :\r\n\r\nCổ thun Facetfit 2 mảnh không dây với chất liệu PRIMEKNIT chắc chắn.\r\n\r\nChất liệu từ da tổng hợp  mềm mại được làm bằng 50% chất liệu tái chế giúp giảm đáng kể trọng lượng, kết hợp công nghệ vân HybridTouch phủ xuyên suốt 2 phần má trong và má ngoài giúp tăng khả năng kiểm soát và rê bóng. \r\n\r\nBộ đệm Bounce là chất liệu mang đến sự hỗ trợ cao hơn chất liệu đệm EVA truyền thống về cả độ thoải mái, độ êm và độ đàn hồi. \r\n\r\nKhuôn đế có cấu trúc Facetframe với những mãng đinh cải tiến mới tăng độ bám sân giúp người chơi dễ dàng xoay chuyển cũng như bức tốc.', 1, '2023-11-11 03:29:23'),
(34, 8, 'NIKE AIR ZOOM MERCURIAL SUPERFLY 9 ACADEMY MG READY', 2929000, 2350000, 'Về công nghệ của phiên bản Nike Mercurial Vapor 15 Academy MG:\r\n\r\nĐôi giày vẫn sở hữu thiết kế tối giản với số vật liệu tối thiểu, chỉ bao gồm những chi tiết cần thiết để đảm bảo giảm tối đa trọng lượng của giày. Ngoài ra, Nike Mercurial được những cầu thủ nổi tiếng đại diện như CR7, Rashford, Mbappe...\r\n\r\nChất liệu da tổng hợp Nikeskin tối ưu hóa khả năng kiểm soát bóng, sự ổn định và vừa vặn, chắc chắn khi mang.\r\n\r\nCổ rời thoải mái hỗ trợ những người có form chân bè dễ dàng mang vào.\r\n\r\nBộ đệm Zoom Air tân tiến với các rãnh uốn cong mang lại sự linh hoạt cho các chuyển động tự nhiên của bàn chân để phù hợp hơn với nhu cầu vận động nhanh, mạnh với cường độ cao trong bóng đá. \r\n\r\nKhuôn đế mới được cải tiến và bổ sung đinh Tri-Star ở bề mặt đế giúp các cầu thủ dễ dàng di chuyển linh hoạt để điều khiển bóng nhanh hơn theo mọi hướng.', 1, '2023-11-11 03:29:23'),
(35, 8, 'NIKE AIR ZOOM MERCURIAL VAPOR 15 ACADEMY TF SHADOW', 2629000, 2090000, 'Công nghệ có trên đôi giày Mercurial Vapor 15 Academy TF: \r\n\r\nChất liệu da tổng hợp NikeSkin mới được xử lý trở nên mềm và tăng tối đa khả năng cảm giác bóng cho người chơi.\r\n\r\nCổ giày rời dễ chịu thoải mái, hỗ trợ người chơi có form chân bè dễ dàng mang vào.\r\n\r\nPhần đế đệm Airzoom êm ái và hạn chế phản lực bề mặt sân nhân tạo cứng tác động lên cổ chân và đầu gối.\r\n\r\nKhuôn đế Nike Grind được tái chế từ rác nhựa nằm trong dự án loại bỏ sự lãng phí, khép lại vòng đời của sản phẩm nike bảo vệ môi trường. ', 1, '2023-11-11 03:29:23'),
(36, 8, 'NIKE TIEMPO LEGEND 10 ELITE AG-PRO PEAK READY', 6739000, 5350000, 'Công nghệ FlyTouch Plus được coi là Chất liệu da tổng hợp nhẹ nhàng và mềm mại hơn da K, hứa hẹn mang đến khả năng kiểm soát bóng tốt hơn cho các cầu thủ khi thi đấu trên sân. FlyTouch Plus nhờ khả năng chống nước vượt trội, hỗ trợ tối đa khả năng giữ form giày, đồng thời vẫn giữ nguyên được đặc trưng vốn có của dòng Tiempo: siêu nhẹ và hỗ trợ tăng tốc tối đa.\r\n\r\nĐặc biệt, các đường gấp khúc ở đầu mũi giày và một phần đục lỗ ở trên logo Swoosh của Tiempo 9 sẽ bị loại bỏ, Tiempo 10 chỉ giữ lại thiết kế logo Swoosh và cấu trúc của lưỡi giày. Chứng tỏ rằng, giao diện của Tiempo 10 sẽ không có sự thay đổi quá nhiều so với những mẫu giày hiện tại.', 1, '2023-11-11 03:29:23'),
(37, 8, 'MIZUNO MORELIA SALA MADE IN JAPAN TF RELEASE', 4300000, 3870000, 'Chất liệu da Kangaroo siêu mềm đã được Mizuno sử dụng hiệu quả ở phần Upper giày, hỗ trợ tối đa cho các cầu thủ khi nhận bóng, đi bóng, những pha sút mu uy lực và tạo cảm giác như đi chân trần.\r\n\r\n Phần mũi giày được gia cố bằng lớp da lộn đặc biệt, nâng cao độ bền chung của sản phẩm.\r\n\r\n Form giày đặc biệt phù hợp với bàn chân người Việt, những cầu thủ chân bè hoàn toàn có thể sử dụng mà không gặp chút khó khăn nào.\r\n\r\n Morelia Sala Japan TF được trang bị lớp đệm giảm chấn, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu.', 1, '2023-11-11 03:29:23'),
(38, 8, 'ADIDAS PREDATOR ACCURACY .1 LOW FG MARINERUSH', 5800000, 5250000, 'Về công nghệ của phiên bản adidas Predator Accuracy .1 Low FG:\r\n\r\nCổ thun Facetfit 2 mảnh không dây với chất liệu PRIMEKNIT chắc chắn.\r\n\r\nChất liệu từ da tổng hợp  mềm mại được làm bằng 50% chất liệu tái chế giúp giảm đáng kể trọng lượng, kết hợp công nghệ vân HybridTouch phủ xuyên suốt 2 phần má trong và má ngoài giúp tăng khả năng kiểm soát và rê bóng. \r\n\r\nKhuôn đế có cấu trúc Facetframe với những mãng đinh cải tiến mới tăng độ bám sân giúp người chơi dễ dàng xoay chuyển cũng như bức tốc. Phần đinh Power Facet ở bàn chân trước giúp phân bổ lại trọng lượng giày nhằm tối ưu hóa khả năng truyền lực khi chuyền bóng. ', 1, '2023-11-11 03:29:23'),
(39, 8, 'NIKE PHANTOM GX ELITE FG PEAK READY', 7895000, 5790000, 'Về mặt công nghệ, cũng giống như Phantom GT, mẫu giày đá bóng Nike Phantom GX được tạo ra là để dành cho những cầu thủ mong muốn có một độ chính xác và khả năng kiểm soát bóng tốt như những vị trí tiền vệ hoặc tiền đạo. Các cầu thủ sử dụng Phantom GT II trước đó đều đồng loạt chuyển sang Phantom GX. Bên cạnh đó Nike cũng làm form giày tương đối thoải mái và tích hợp khá nhiều công nghệ trên bản Elite này. \r\n\r\n- Công nghệ cổ thun Dynamic Fit giúp ôm sát cổ chân người chơi nhưng vẫn tạo được sự thoải mái và dễ chịu nhất. \r\n\r\n- Hệ thống dây buộc Nike Ghost kết hợp cùng công nghệ Flyknit giúp ôm vừa vặn mọi kích thước chân, mang lại sự thoải mái và khả năng di chuyển tốt nhất cho người chơi.\r\n\r\n- Công nghệ Nike Gripknit (chất liệu da vải sợi dệt) được dành riêng cho phần upper mang lại sự êm ái và mềm mại hơn so với Flyknit ở mẫu giày Nike Phantom GT đã ra mắt trước đó. ', 1, '2023-11-11 03:29:23'),
(40, 8, 'PUMA ULTRA ULTIMATE FG/AG GEAR UP - ULTRA', 5500000, 4800000, 'Về công nghệ của phiên bản PUMA Ultra Ultimate FG/AG:\r\n\r\nSản phẩm được các cầu thủ nổi tiếng đại diện gồm có Antoine Griezmann, Sergio Aguero, Antony.....\r\n\r\nUpper dệt từ công nghệ Ultraweave mới Đây là chất liệu được sử dụng trên áo thi đấu của PUMA với đặc trưng mỏng, mềm và dẻo, rất linh hoạt co giãn theo hình dạng của bàn chân.\r\n\r\nĐược trang bị công nghệ PWRTape để tăng cường độ chắc chắn ở phần gót chân không bị lỏng lẻo khi di chuyển cũng như bức tốc. ', 1, '2023-11-11 03:29:23'),
(41, 8, 'PUMA FUTURE ULTIMATE FG/AG GEAR UP - PERSIAN', 5500000, 4800000, 'Công nghệ của PUMA Future Ultimate FG/AG Gear Up - Persian Blue/PUMA White/Pro Green:\r\n\r\nPhần upper có kết cấu 3D, đặc biệt tại các vùng tiếp xúc bóng thường xuyên đảm bảo tăng cường độ bám và kiểm soát bóng khi rê, chuyền và dứt bóng.\r\n\r\nCấu trúc lưới kép FUZIONFIT360 kết hợp với công nghệ PWRTAPE độc quyền của thương hiệu hỗ trợ tối đa di chuyển của các cầu thủ, tăng tốc dễ dàng nhưng vẫn đảm bảo sự thoải mái và êm ái', 1, '2023-11-11 03:29:23'),
(42, 10, 'Găng Tay Thủ Môn GKVN Phá - Special Contact TDD - Xanh Biển', 950000, 850000, ' ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Đôi găng sử dụng mặt mút Contact cao cấp tới từ Đức với độ dày mút 4mm cho độ dính cao và độ bền rất cao phù hợp cả sân nhân tạo và sân tự nhiên\r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón\r\n\r\n- Kiểu ngon Ergocut ôm tay, tạo cảm giác bóng tốt.\r\n\r\n- Form găng ôm tay là một sự lựa chọn không thể phù hợp hơn với những đôi bàn tay thuôn và nhỏ', 1, '2023-11-11 03:36:25'),
(43, 10, 'Găng Tay Thủ Môn GKVN Phá - Special Contact - Trắng', 950000, 850000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Đôi găng sử dụng mặt mút Contact cao cấp tới từ Đức với độ dày mút 4mm cho độ dính cao và độ bền rất cao phù hợp cả sân nhân tạo và sân tự nhiên\r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(44, 10, 'Găng Tay Thủ Môn GKVN Phá - Special Contact - Đen', 950000, 850000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Đôi găng sử dụng mặt mút Contact cao cấp tới từ Đức với độ dày mút 4mm cho độ dính cao và độ bền rất cao phù hợp cả sân nhân tạo và sân tự nhiên\r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón\r\n\r\n- Kiểu ngon Ergocut ôm tay, tạo cảm giác bóng tốt.\r\n\r\n- Form găng ôm tay là một sự lựa chọn không thể phù hợp hơn với những đôi bàn tay thuôn và nhỏ', 1, '2023-11-11 03:43:30'),
(45, 10, 'Găng Tay Thủ Môn 4 Mùa - Thu Cuối', 750000, 650000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Magic Latex\" 4mm mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo', 1, '2023-11-11 03:43:30'),
(46, 10, 'Găng Tay Thủ Môn GKVN 4 Mùa - Đông Kiếm Em', 750000, 650000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Magic Latex\" 4mm mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo \r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(47, 10, 'Găng Tay Thủ Môn GKVN 4 Mùa - Hạ Còn Vương Nắng', 750000, 650000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Magic Latex\" 4mm mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo \r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(48, 10, 'Găng Tay Thủ Môn GKVN 4 Mùa - Xuân Yêu Thương', 750000, 650000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Magic Latex\" 4mm là loại mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo \r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(49, 10, 'Găng Tay Thủ Môn GKVN - Sau Này\r\n', 680000, 580000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút \"Latex New Basic\" 4mm mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo\r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(50, 10, 'Găng Tay Thủ Môn GKVN - Ngày Ấy', 680000, 580000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút \"Latex New Basic\" 4mm mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo\r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(51, 10, 'Găng tay thủ môn GKVN Đời 2 - Ergo cut', 680000, 580000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Latex New Basic\" 4mm  mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo \r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(52, 10, 'Găng Tay Thủ Môn GKVN Bền - Xanh Biển', 479000, 379000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Dumbo\" 3mm  mang tới độ bền siêu cao và độ dính thấp\r\n\r\n- Kiểu ngón Negative truyền thống', 1, '2023-11-11 03:43:30'),
(53, 10, 'Găng Tay Thủ Môn QAGK SAPPIRE - hồng', 680000, 580000, 'ĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Mặt mút  \"Latex New Basic\" 4mm  mang tới độ bền cao và độ dính khá phù hợp với sân cỏ nhân tạo \r\n\r\n- Thiết kế xòe đã được tinh chỉnh nhằm giảm tối đa khả năng xảy ra chấn thương ngón', 1, '2023-11-11 03:43:30'),
(54, 9, 'QUẢ BÓNG ĐÁ ADIDAS FOOTBALL LEAGUE CHAMPIONS LEAGUE 2023/24 - WHITE/SILVER METALLIC/BLUE', 1000000, 950000, 'TRÁI BÓNG TẬP LUYỆN GIÚP MÀN TRÌNH DIỄN BÓNG ĐÁ CỦA BẠN THÊM HẤP DẪN.\r\nNhững cầu thủ giỏi nhất của CLB bóng đá châu Âu đang vai kề vai, hai từ chứa đầy cảm hứng khi bài nhạc nổi tiếng đó vang lên. Với họa tiết graphic lấy cảm hứng từ trái bóng thi đấu chính thức của giải UEFA Champions League, trái bóng tập luyện adidas UCL này là lựa chọn lý tưởng cho tần suất sử dụng cao nhờ kết cấu khâu máy và ruột bóng bằng cao su butyl. Bề mặt sần nổi bật lên dòng chữ \"The Champions\" cùng những nốt nhạc tinh tế và 12 ngôi sao tỏa sáng.', 1, '2023-11-11 03:45:14'),
(55, 9, 'QUẢ BÓNG ĐÁ ADIDAS FOOTBALL TRAINING CHAMPIONS LEAGUE 2023/24 - WHITE/SILVER METALLIC/BRIGHT CYAN', 750000, 650000, 'TRÁI BÓNG TẬP LUYỆN CÓ BỀ MẶT SẦN GIÚP MÀN TRÌNH DIỄN BÓNG ĐÁ CỦA BẠN THÊM HẤP DẪN.\r\n\r\nNhững cầu thủ giỏi nhất của CLB bóng đá châu Âu đang vai kề vai, hai từ chứa đầy cảm hứng khi bài nhạc nổi tiếng đó vang lên. Với họa tiết graphic lấy cảm hứng từ trái bóng thi đấu chính thức của giải UEFA Champions League, trái bóng tập luyện adidas UCL này là lựa chọn lý tưởng cho tần suất sử dụng cao nhờ kết cấu khâu máy và ruột bóng bằng cao su butyl. Bề mặt sần nổi bật lên dòng chữ \"The Champions\" cùng những nốt nhạc tinh tế và 12 ngôi sao tỏa sáng.', 1, '2023-11-11 03:51:28'),
(56, 9, 'BÓNG ĐÁ FUTSAL AKPRO TIÊU CHUẨN AF3300', 339000, 239000, 'AKpro là nhãn hiệu đến từ Mỹ chuyên sản xuất quả Bóng Đá, Bóng rổ, Bóng chuyền và các phụ kiện. Các sản phẩm của AKpro phát triển dựa trên những nghiên cứu ứng dụng về vật liệu mới nhất, an toàn, bảo vệ môi trường và đáp ứng nhu cầu khắt khe nhất của người sử dụng. Đặc biệt, hãng luôn áp dụng chặt chẽ các tiêu chuẩn của FIFA, FIBA, FIVA… vào từng sản phẩm.', 1, '2023-11-11 03:51:28'),
(57, 9, 'QUẢ BÓNG ĐÁ NIKE FOOTBALL ACADEMY - WHITE/BLACK/BRIGHT CRIMSON', 959000, 859000, 'Về mặt công nghệ, Quả bóng đá Nike Football Academy - White/Black/Bright Crimson vẫn dựa trên mô hình \'Flight\' với công nghệ AerowSculpt đã được giới thiệu vào mùa giải trước.\r\n\r\nCông nghệ Nike Aerow Sculpt sử dụng các rãnh khí động học để giảm lực cản của không khí, giúp đường bay chính xác và ổn định hơn so với banh có bề mặt phẳng. Công nghệ này giúp banh của Nike đặc biệt nổi bật so với các hãng khác.\r\n\r\nCác vân nổi 3D làm tăng khả năng tiếp bóng của các cầu thủ, giúp họ có cảm giác banh và điều khiển bóng dễ dàng hơn. ', 1, '2023-11-11 03:51:28'),
(58, 9, 'NIKE FOOTBALL ACADEMY PREMIER LEAGUE - WHITE/TOTAL ORANGE/BLACK', 959000, 859000, 'Để đón chào mùa giải vô địch Quốc gia Anh -  Premier League 23/24, Nike đã chính thức ra mắt quả bóng thi đấu Nike Flight vô cùng chất lượng và đẹp mắt. Quả bóng đá Nike Football Academy Premier League - White/Total Orange/Black sở hữu diện mạo khác biệt với đồ họa táo bạo. Ý tưởng thiết kế được lấy cảm hứng từ chính giải đấu Premier League - giải đấu thú vị và có sức ảnh hưởng nhất trên thế giới.', 1, '2023-11-11 03:51:28'),
(59, 9, 'QUẢ BÓNG ĐÁ NIKE FOOTBALL FLIGHT PREMIER LEAGUE - WHITE/TOTAL ORANGE/BLACK', 4469000, 3500000, 'Để đón chào mùa giải vô địch Quốc gia Anh -  Premier League 23/24, Nike đã chính thức ra mắt quả bóng thi đấu Nike Flight vô cùng chất lượng và đẹp mắt. Quả bóng đá Nike Football Flight Premier League - White/Total Orange/Black sở hữu diện mạo khác biệt với đồ họa táo bạo. Ý tưởng thiết kế được lấy cảm hứng từ chính giải đấu Premier League - giải đấu thú vị và có sức ảnh hưởng nhất trên thế giới.', 1, '2023-11-11 03:51:28'),
(60, 9, 'QUẢ BÓNG ĐÁ SIZE 5 ZOCKER INSPIRE ZK5-IN2201\r\n', 690000, 590000, 'Bóng sử dụng chất liệu da PU cao cấp, với bề mặt mềm mại cùng khả năng đàn hồi cực tốt. Khi sút cho cảm giác êm chân, hỗ trợ tăng tốc, đường bóng đi chuẩn xác.\r\n\r\nBên trong bóng sử dụng 4 lớp vải chuyên dụng, xen kẽ giữa các lớp là cao su non giúp tăng độ bền cũng như tuổi thọ cho bóng.\r\n\r\nBóng Zocker Inspire được thiết kế đẹp với nền trắng chủ đạo, các họa tiết đa màu sắc được bố trí xen kẽ tạo nên các mảng màu nổi bật, mang đến ấn tượng về sự trẻ trung, sôi động.', 1, '2023-11-11 03:51:28'),
(61, 9, 'BÓNG ĐÁ FUTSAL MOLTEN TIÊU CHUẨN F9A1510', 699000, 599000, 'MOLTEN là một thương hiệu sản xuất Bóng rất nổi tiếng, được thành lập vào năm 1958 tại Nhật Bản. Trải qua hơn 60 hình thành và phát triển, MOLTEN đã không ngừng lớn mạnh, vượt ra khỏi tầm châu lục và vươn ra thế giới. Hiện nay, tập đoàn Molten đã có 11 văn phòng, 9 nhà máy đóng tại Nhật với 8 văn phòng đại diện, 6 nhà máy đóng ở Đức, Mỹ, Nhật, Trung Quốc, Malaisia. Quả bóng Molten đã lăn ở khắp nơi trên thế giới,  được sử dụng ở những giải đấu mang tầm Châu lục và Quốc tế như ASIAN CUP 2019, EUROPA LEAGUE 2019...', 1, '2023-11-11 03:51:28'),
(62, 9, 'BÓNG ĐÁ NIKE FOOTBALL ACADEMY PREMIER LEAGUE - WHITE/GOLD/BLACK', 959000, 859000, 'Quả Bóng đá Nike Football Academy Premier League - White/Gold/Black có các đường rãnh sáng tạo được thiết kế để tạo độ xoáy ổn định khi bóng ở trên không. Đồ họa có độ tương phản cao giúp bạn dễ dàng theo dõi quả bóng và tập trung vào động tác chân của mình.\r\n\r\nCông nghệ Nike Aerowsculpt sử dụng các rãnh đúc để đường bay ổn định hơn', 1, '2023-11-11 03:51:28'),
(63, 9, 'BÓNG ĐÁ ADIDAS FOOTBALL CHAMPIONS LEAGUE 2024 PRO MATCH BALL - WHITE/BLUE/SILVER', 3700000, 3300000, 'adidas Football Champions League 2024 Pro Match Ball - White/Blue/Silver là quả bóng cao cấp dành cho sân cỏ tự nhiên 11 người. Đây chính là quả bóng được sử dụng trong các trận đấu tại Champion League. Sản phẩm hướng tới địa điểm tổ chức trận chung kết vào tháng 5/2024, đó chính là sân Wembley ở London. Bóng mang màu trắng sáng chủ đạo, điểm các chi tiết màu xanh.', 1, '2023-11-11 03:51:28'),
(64, 9, 'BÓNG ĐÁ FUTSAL MOLTEN TIÊU CHUẨN F9A2000-L', 739000, 639000, 'MOLTEN là một thương hiệu sản xuất Bóng rất nổi tiếng, được thành lập vào năm 1958 tại Nhật Bản. Trải qua hơn 60 hình thành và phát triển, MOLTEN đã không ngừng lớn mạnh, vượt ra khỏi tầm châu lục và vươn ra thế giới. Hiện nay, tập đoàn Molten đã có 11 văn phòng, 9 nhà máy đóng tại Nhật với 8 văn phòng đại diện, 6 nhà máy đóng ở Đức, Mỹ, Nhật, Trung Quốc, Malaisia. Quả bóng Molten đã lăn ở khắp nơi trên thế giới,  được sử dụng ở những giải đấu mang tầm Châu lục và Quốc tế như ASIAN CUP 2019, EUROPA LEAGUE 2019...', 1, '2023-11-11 03:51:28'),
(65, 9, 'BÓNG ĐÁ NIKE FOOTBALL FLIGHT PREMIER LEAGUE - WHITE/BRIGHT CRIMSON/BLACK', 4469000, 3500000, 'Sẵn sàng cho giai đoạn cuối cùng của mùa giải Ngoại hạng Anh năm nay, Nike đã nhanh chóng phát hành quả bóng thi đấu thứ ba - Flight Third với những họa tiết sáng tạo và bắt mắt, đây sẽ là quả bóng thi đấu chính thức cho các trận đấu còn lại của mùa giải.', 1, '2023-11-11 03:51:28'),
(66, 1, ' Áo Cầu Lông Yonex - Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:30:28'),
(67, 1, ' Áo Cầu Lông Yonex - Xanh - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(68, 1, ' Áo Cầu Lông Yonex - Đen - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(69, 1, ' Áo Cầu Lông Yonex -Đỏ Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(70, 1, ' Áo Cầu Lông Yonex -Đỏ Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(71, 1, ' Áo Cầu Lông Yonex -Đỏ Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(72, 1, ' Áo Cầu Lông Yonex -Đỏ Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(73, 1, ' Áo Cầu Lông Yonex -Đỏ Trắng - Chuyển nhiệt', 150000, 100000, ' Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo Cầu Lông Yonex AC103 Nam - Xanh là một sự lựa chọn vô cùng hoàn hảo.', 100, '2023-11-12 21:31:15'),
(74, 1, 'Áo Cầu Lông Lining  Chính Hãng', 190000, 160000, 'Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo cầu lông Yonex 8005 nam - Đen là một sự lựa chọn vô cùng hoàn hảo.', 500, '2023-11-12 21:32:25'),
(75, 1, 'Áo Cầu Lông Lining Đỏ Trănsg Chính Hãng', 190000, 160000, 'Áo cầu lông in chuyển nhiệt thường được sản xuất tại Trung Quốc và có 2 form áo một cho Nam, một cho Nữ. Ngoài ra, các mẫu áo thể thao cầu lông này còn được phát hành với 4 size: M, L, XL, 2XL phù hợp cho những bạn từ 50kg đến 90kg.\r\n- Chính vì vậy, nếu bạn đang tìm kiếm cho mình một mẫu áo cầu lông giá rẻ nổi bật với thiết kế cùng mẫu mã như các vận động viên thì đảm bảo mẫu Áo cầu lông Yonex 8005 nam - Đen là một sự lựa chọn vô cùng hoàn hảo.', 400, '2023-11-12 21:32:54'),
(76, 2, 'Quần Cầu Lông Yonex  - Đen Chính Hãng', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 21:36:25'),
(77, 2, 'Quần Cầu Lông Kamito TM Legend  - Trắng Chính Hãng', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(78, 2, 'Quần Cầu Lông Kamito TM Legend  - Navy Chính Hãng', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(79, 2, 'Quần Cầu Lông Kamito Nam - Xám Đậm Chính Hãng', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(80, 2, 'Quần Cầu Lông Felet Sport Short 2.0 (Org) Chính Hãng', 300000, 280000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(81, 2, 'Quần Cầu Lông Yonex SM2335 INDIA INK', 300000, 200000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(82, 2, 'Quần Cầu Lông Kamito TM Legend  - Trắng Chính Hãng', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(83, 2, 'Quần Cầu Lông Kamito TM Legend  - Trắng Chính Hãng', 250000, 200000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(84, 2, 'Quần Cầu Lông Felet CM202B (Blk) Chính Hãng', 300000, 200000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(85, 2, 'Quần Cầu Lông Victor 951 - Xanh Ngọc', 350000, 300000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 120, '2023-11-12 22:13:50'),
(86, 3, 'Giày Cầu Lông Lining Hồng (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:18:15'),
(87, 3, 'Giày Cầu Lông Lining Đen (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(88, 3, 'Giày Cầu Lông Lining Trắng Tím (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(89, 3, 'Giày Cầu Lông Lining  Chính Hãng', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(90, 3, 'Giày Cầu Lông Lining Đen Chính Hãng', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(91, 3, 'Giày Cầu Lông Lining AYAT005-7 Chính Hãng', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(92, 3, 'Giày Cầu Lông Lining Trắng Hồng (Nội Đia Trung))', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(93, 3, 'Giày Cầu Lông Lining  Chính Hãng', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(94, 3, 'Giày Cầu Lông Lining Trắng Đen (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
(95, 3, 'Giày Cầu Lông Lining Hồng (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11');
INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giagoc`, `giasale`, `mota`, `luotxem`, `ngaythem`) VALUES
(96, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (PDBL) Chính Hãng', 1100000, 900000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 150, '2023-11-12 22:26:31'),
(97, 4, 'Vợt cầu lông Yonex Arcsaber 73 Light (RBYR) chính hãng ', 1100000, 900000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 150, '2023-11-12 22:30:36'),
(98, 4, 'Vợt cầu lông Yonex Arcsaber 73 Light (RBYR) chính hãng ', 1200000, 800000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 150, '2023-11-12 22:30:36'),
(99, 4, 'Vợt Cầu Lông Yonex Arcsaber 73 Light (LFC) Chính Hãng', 1000000, 800000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 160, '2023-11-12 22:30:36'),
(100, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (PDBL) Chính Hãng', 1000000, 700000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 180, '2023-11-12 22:30:36'),
(101, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (GO) Chính Hãng', 1200000, 800000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 155, '2023-11-12 22:30:36'),
(102, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (BO) Chính Hãng', 900000, 700000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 140, '2023-11-12 22:30:36'),
(103, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (PDBL) Chính Hãng', 1100000, 900000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 150, '2023-11-12 22:30:36'),
(104, 4, 'Vợt Cầu Lông Yonex Nanoflare X8 (Mã KR)', 1200000, 1100000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 190, '2023-11-12 22:30:36'),
(105, 4, 'Vợt Cầu Lông Mizuno Zephyr DS79 - Đen Cam Vàng Chính Hãng', 900000, 500000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 200, '2023-11-12 22:30:36'),
(106, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:31:38'),
(107, 5, 'Balo Cầu Lông Yonex BP006 Trắng Xanh - Gia Côngg', 800000, 700000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 190, '2023-11-12 22:36:28'),
(108, 5, 'Balo Cầu Lông Yonex BP006 Trắng Xanh - Gia Công\r\n', 1100000, 900000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 120, '2023-11-12 22:36:28'),
(109, 5, 'Balo Cầu Lông Yonex BP006 Đen Xanh Lục - Gia Công', 900000, 750000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 200, '2023-11-12 22:36:28'),
(110, 5, 'Balo Cầu Lông Yonex B1408 Trắng Xanh - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 190, '2023-11-12 22:36:28'),
(111, 5, 'Balo Cầu Lông Yonex BA269CR - Xanh Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 140, '2023-11-12 22:36:28'),
(112, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:36:28'),
(113, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:36:28'),
(114, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:36:28'),
(115, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:36:28'),
(116, 16, 'ÁO THỂ THAO MIZUNO 72MAA002', 150000, 120000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 1, '2023-11-13 12:58:56'),
(117, 16, 'ÁO THỂ THAO MIZUNO 72MAA005', 150000, 120000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 103, '2023-11-13 13:17:02'),
(118, 16, 'Force Shorts', 100000, 90000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 93, '2023-11-13 13:17:02'),
(119, 16, 'Higo Shirt', 150000, 140000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 41, '2023-11-13 13:17:02'),
(120, 16, 'Lashly T-Shirt', 150000, 110000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 31, '2023-11-13 13:17:02'),
(121, 16, 'Meranji T-Shirt', 160000, 130000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 21, '2023-11-13 13:17:02'),
(122, 16, 'Puren Lady Shirt', 150000, 100000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 21, '2023-11-13 13:17:02'),
(123, 16, 'QUẦN Áo THỂ THAO MIZUNO 72MBA', 110000, 95000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 111, '2023-11-13 13:17:02'),
(124, 16, 'Sutairu Lady Shirt Black', 110000, 100000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 19, '2023-11-13 13:17:02'),
(125, 16, 'Sutairu Lady Shirt Red', 140000, 120000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 11, '2023-11-13 13:17:02'),
(126, 16, 'Sutairu Men Shirt Black', 150000, 120000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 17, '2023-11-13 13:17:02'),
(127, 16, 'Sutairu Men Shirt Blue', 130000, 100000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 16, '2023-11-13 13:17:02'),
(128, 16, 'USA Team 21-23 Shorts', 160000, 120000, 'Áo có kiểu dáng cơ bản với cổ tròn và tay ngắn, tạo cảm giác thoải mái và dễ dàng di chuyển. Đường cắt may chắc chắn và tỉ mỉ, giúp áo có độ bền cao.Với thiết kế đơn giản nhưng không kém phần ấn tượng, chiếc áo này sẽ là một bổ sung hoàn hảo cho tủ đồ của bạn, mang đến sự thoải mái và phong cách cho mọi dịp.', 19, '2023-11-13 13:17:02'),
(129, 17, 'Centrefold 25 Table', 13500000, 13500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 350, '2023-11-13 13:43:21'),
(131, 17, 'Club 25 Table', 13500000, 23499000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 50, '2023-11-13 14:13:12'),
(132, 17, 'Europa 25 Table', 13500000, 28000000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 150, '2023-11-13 14:13:12'),
(133, 17, 'Garden 7000 Outdoor Table', 13500000, 19500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 50, '2023-11-13 14:13:12'),
(134, 17, 'Match 22 Table', 13500000, 13500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 30, '2023-11-13 14:13:12'),
(135, 17, 'Nippon 22 Table', 13500000, 13500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 20, '2023-11-13 14:13:12'),
(136, 17, 'Octet 25 Table', 13500000, 10500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 60, '2023-11-13 14:13:12'),
(137, 17, 'Park Outdoor Table', 13500000, 29900000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 70, '2023-11-13 14:13:12'),
(138, 17, 'Premium 19 Table', 13500000, 23500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 90, '2023-11-13 14:13:12'),
(139, 17, 'Space Saver 22 Table', 13500000, 13500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 350, '2023-11-13 14:13:12'),
(140, 17, 'Timo Boll Crossline Outdoor', 3500000, 3500000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 450, '2023-11-13 14:13:12'),
(141, 17, 'Timo Boll Space Saver 22 Table', 8000000, 8000000, 'BẢO HÀNH: Bảo hành 5 năm đối với lỗi do nhà máy. Sản xuất tại Đức', 273, '2023-11-13 14:13:12'),
(142, 18, 'FT IGRE Blue', 1250000, 1000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 111, '2023-11-14 00:11:20'),
(143, 18, 'FT IGRE Magenta', 1250000, 1000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 91, '2023-11-14 00:16:43'),
(144, 18, 'FT IGRE White', 1250000, 1000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 151, '2023-11-14 00:16:43'),
(145, 18, 'Lezoline Mach Shoes Blue White', 1600000, 1300000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 91, '2023-11-14 00:16:43'),
(146, 18, 'Lezoline Mach Shoes Navy Blue', 1750000, 1500000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 31, '2023-11-14 00:16:43'),
(147, 18, 'Lezoline Nine Shoes', 2500000, 2000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 91, '2023-11-14 00:16:43'),
(148, 18, 'Lezoline Rifones Shoes Black', 1350000, 1100000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 191, '2023-11-14 00:16:43'),
(149, 18, 'Lezoline Rifones Shoes Navy', 1000000, 700000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 91, '2023-11-14 00:16:43'),
(150, 18, 'Lezoline Rifones Shoes White', 1250000, 1100000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 111, '2023-11-14 00:16:43'),
(151, 18, 'WAVE DRIVE 0', 3250000, 3000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 61, '2023-11-14 00:16:43'),
(152, 18, 'WAVE DRIVE NEO 3', 1850000, 15000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 41, '2023-11-14 00:16:43'),
(153, 18, 'WAVE KAISERBURG 7', 1250000, 1000000, 'Đôi giày thể thao này có kiểu dáng hiện đại và phong cách, được thiết kế để mang lại sự thoải mái và tăng cường hiệu suất trong hoạt động thể thao và hàng ngày.\n\nPhần trên của giày được làm từ vật liệu lưới thoáng khí, giúp đôi giày thông thoáng và thoải mái khi sử dụng. Vật liệu này cũng giúp hút ẩm và tạo sự thông hơi, giữ cho chân khô ráo và thoáng mát trong suốt ngày dài hoạt động.\n\nĐôi giày có một lớp đệm mềm và linh hoạt ở đế giữa, giúp hấp thụ và giảm lực tác động khi di chuyển. Điều này mang lại cảm giác êm ái và giảm căng thẳng cho các khớp và cơ bắp.', 91, '2023-11-14 00:16:43'),
(154, 20, 'Bryce Speed', 2500000, 1500000, 'Lớp: Tấn công\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\nTrọng lượng: ~85g\nPhản ứng: 11,8\nĐộ rung: 10,3\nKích thước lưỡi dao: 157×150 mm\nĐộ dày lưỡi dao: 5,8 mm\nKích thước tay cầm: 100 × 24 × 34 mm', 170, '2023-11-14 00:28:00'),
(155, 20, 'Dignics 05', 2500000, 1900000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 70, '2023-11-14 00:37:53'),
(156, 20, 'Dignics 09C', 4500000, 3900000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 78, '2023-11-14 00:37:53'),
(157, 20, 'Dignics 64', 1500000, 1000000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 7, '2023-11-14 00:37:53'),
(158, 20, 'Dignics 80', 3700000, 2900000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 70, '2023-11-14 00:37:53'),
(159, 20, 'Spin Art', 3300000, 2500000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 70, '2023-11-14 00:37:53'),
(161, 20, 'Tenergy 19', 350000, 2500000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 36, '2023-11-14 00:45:00'),
(162, 20, 'Tenergy 64', 150000, 100000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 31, '2023-11-14 00:49:36'),
(165, 20, 'Tenergy 64 FX', 130000, 115000, '\r\nBề mặt: Mụn có độ ma sát cao\r\nTốc độ: 79\r\nQuay: 96\r\nVòng cung: 96\r\nĐộ cứng: 44', 41, '2023-11-14 01:26:54'),
(166, 20, 'Tenergy 80', 130000, 115000, '\r\nBề mặt: Mụn có độ ma sát cao\r\nTốc độ: 79\r\nQuay: 96\r\nVòng cung: 96\r\nĐộ cứng: 44', 41, '2023-11-14 01:27:27'),
(167, 20, 'Tenergy 80 FX', 130000, 115000, '\r\nBề mặt: Mụn có độ ma sát cao\r\nTốc độ: 79\r\nQuay: 96\r\nVòng cung: 96\r\nĐộ cứng: 44', 71, '2023-11-14 01:27:27'),
(168, 19, 'Fan Zhendong CNF', 2500000, 2350000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 36, '2023-11-14 01:32:50'),
(170, 19, 'Fan Zhendong Super ALC', 2500000, 2000000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 76, '2023-11-14 01:38:46'),
(171, 19, 'Fan Zhendong Super ZLC', 3500000, 2750000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 36, '2023-11-14 01:38:46'),
(172, 19, 'Franziska Innerforce ZLC Blade', 1500000, 1350000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 36, '2023-11-14 01:38:46'),
(173, 19, 'Lin Yun-Ju Super ZLC Blade', 4500000, 3950000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 66, '2023-11-14 01:38:46'),
(174, 19, 'Revoldia CNF Blade', 2500000, 2350000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 86, '2023-11-14 01:38:46'),
(175, 19, 'Timo Boll 30th Anniversary Edition FL', 1500000, 1350000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 76, '2023-11-14 01:38:46'),
(176, 19, 'Timo Boll ZLC Blade', 2500000, 2350000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 156, '2023-11-14 01:38:46'),
(177, 19, 'Zhang Jike Super ZLC Blade', 3500000, 2750000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 97, '2023-11-14 01:38:46'),
(178, 19, 'Zhang Jike T5000 Blade', 700000, 500000, 'Lớp: Tấn công\r\nLớp lưỡi: 5-Gỗ + 2 Arylate/Carbon\r\nTrọng lượng: ~85g\r\nPhản ứng: 11,8\r\nĐộ rung: 10,3\r\nKích thước lưỡi dao: 157×150 mm\r\nĐộ dày lưỡi dao: 5,8 mm\r\nKích thước tay cầm: 100 × 24 × 34 mm', 38, '2023-11-14 01:38:46'),
(180, 11, 'Áo bóng rổ Boston Celtics', 100000, 70000, 'Với chất liệu vải mè chuyên dùng để trong may mặc quần áo thể thao giúp thầm mồ hôi tốt hơn, thoáng mát và mềm mại phù hợp cho việc tập luyện và thi đấu.\r\nChúng tôi nhận đặt làm đồng phục bóng rổ  cho các đội bóng rổ từ 5 người trở lên, thời gian hoàn thành chỉ từ 3 ngày và miễn phì in tên, số cho các thành viên đội bóng.', 1, '2023-11-16 22:12:13'),
(181, 11, 'Áo Memphis Grizzlies Ja Moran', 80000, 30000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:14:58'),
(182, 11, 'Áo Brooklyn Nets', 80000, 25000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(183, 11, 'Áo Lakers', 80000, 40000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(184, 11, 'Áo Broo', 80000, 39000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(185, 11, 'Áo Brs', 80000, 70000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(186, 11, 'Áo Broken', 80000, 20000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(187, 11, 'Áo Nets', 80000, 79000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(188, 11, 'Áo Stenphen', 80000, 50000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(189, 11, 'Áo Jika', 80000, 24000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(190, 11, 'Áo BZ', 80000, 67000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(191, 11, 'Áo SG Buffolo', 80000, 75000, 'Dòng sản phẩm Made in Vietnam - Designed by Giaybongro.vn, được chúng tôi thiết kế và sản xuất tại Việt Nam, với chất liệu vải thể thao cao cấp, mềm mại, thoáng mát, sử dụng công nghệ in chìm 3D lên từng sợi vải mang đến độ hoàn thiện sắc nét, bền bỉ.', 1, '2023-11-16 22:17:40'),
(192, 12, 'Quần bóng rổ Boston Celtics', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:09:27'),
(193, 12, 'Quần bóng rổ Brooklyn Nets', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(194, 12, 'Quần bóng rổ Chicago Bulls', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(195, 12, 'Quần bóng rổ Golden State Warriors', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(196, 12, 'Quần bóng rổ Los Angeles Lakers', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(197, 12, 'Quần bóng rổ Miami Heats', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(198, 12, 'Quần bóng rổ Broo', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(199, 12, 'Quần bóng rổ KA', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(200, 12, 'Quần bóng rổ BZ', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(201, 12, 'Quần bóng rổ Young', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(202, 12, 'Quần bóng rổ K', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(203, 12, 'Quần bóng rổ LJ', 80000, 70000, 'Quần tập bóng rổ là loại quần thường có ống to, mặc ngang bằng hoặc qua đầu gối để tập luyện và thi đấu bóng rổ, giúp vận động dễ dàng hơn khi chạy, bật nhảy cao..\r\n\r\nQuần có túi 2 bên, có khóa để thêm ví, điện thoại.. ngoài tập luyện bóng rỏ còn có thể mặc thay thế quần soóc, quần lửng mà vẫn rất thời trang và tiện dụng cho sinh hoạt thường ngày.\r\n', 1, '2023-11-17 00:10:43'),
(204, 13, 'Giày bóng rổ Anta KT Splash 3 Salted Lemon 7 Up', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:36:39'),
(205, 13, 'Giày bóng rổ Anta A-Flash Bubble', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(206, 13, 'Giày bóng rổ Anta Skyline 1', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(207, 13, 'Giày bóng rổ Anta Skyline 1 Lantern Festival', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(208, 13, 'Giày bóng rổ Anta Skyline 1 Fireworks', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(209, 13, 'Giày bóng rổ Anta KT8 Christmas', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(210, 13, 'Giày bóng rổ Peak Sonic Boom', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(211, 13, 'Giày bóng rổ Anta Kids Cement Buster', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(212, 13, 'Giày bóng rổ Anta A-Flash Bubble', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(213, 13, 'Anta GH3 Small Cotton Padded Jacket', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(214, 13, 'Giày bóng rổ Peak Taichi Flash 4.0 Sakura', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(215, 13, 'Giày bóng rổ Peak Taichi Flash 4.0 TD', 1000000, 900000, 'Giày bóng rổ chính hãng ANTA với thiết kế, công nghệ mới, hiện đại mang đến những trải nghiệm tốt hơn, giá trị sử dụng cao hơn, bền hơn. Là 1 trong những dòng giày tốt nhất hiện nay chuyên OUTDOOR cho người chơi bóng rổ.', 1, '2023-11-17 00:39:00'),
(216, 14, 'Bóng Da Size 7 Anta Naruto', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:44:55'),
(217, 14, 'Bóng Da Size 7 Anta Shock The Game', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(218, 14, 'Bóng Da Size 7 Anta', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(219, 14, 'Bóng Da Size 7 Anta Heart', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(220, 14, 'Bóng Da Size 7 Anta Summer', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(221, 14, 'Bóng Da Size 7 Anta Li-Ning', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(222, 14, 'Bóng Da Size 7 Anta TKDL', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(223, 14, 'Bóng Da Size 7 Anta Lakers', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(224, 14, 'Bóng Da Size 7 Anta Hell', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17');
INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giagoc`, `giasale`, `mota`, `luotxem`, `ngaythem`) VALUES
(225, 14, 'Bóng Da Size 7 Anta J', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(226, 14, 'Bóng Da Size 7 Anta K', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(227, 14, 'Bóng Da Size 7 Anta Nahh', 500000, 400000, 'Bóng hình cầu thường có 8 miếng ghép theo truyền thống và có đường nối.Bóng được bơm căng sao cho bóng rơi xuống mặt sân từ độ cao 1,80m tính từ phía dưới của bóng và bóng được nẩy lên cao từ 1,20m đến 1,40m tính từ phía trên của bóng.Cách thử độ căng phù hợp : để bóng bằng với đầu sau đó thả rơi, nếu bóng nảy tầm ngang ngực là độ căng đạt yêu cầu. ', 1, '2023-11-17 00:45:17'),
(228, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:49:52'),
(229, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(230, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(231, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(232, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(233, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(234, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(235, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(236, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(237, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(238, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(239, 15, 'Balo bóng rổ Jordan', 300000, 250000, 'Balo bóng rổ thường có ngăn để bóng riêng biệt (ngăn dưới đáy,hoặc bên ngoài), có kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch... Do kích thước tương đối lớn để có thể để thêm giày , quần áo, phụ kiện bóng rổ đi kèm... với màu sắc trẻ trung nên được người chơi bóng rổ sử dụng trong sinh hoạt hàng ngày như đi học, đi du lịch...', 1, '2023-11-17 00:50:05'),
(240, 4, 'Vợt Cầu Lông Yonex Nanoray 72 Light (DR) Chính Hãng', 900000, 750000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 120, '2023-11-17 10:30:23'),
(241, 4, 'Vợt Cầu Lông Yonex Nanoray 73 Light (DR) Chính Hãng', 900000, 750000, 'Vợt cầu lông Yonex Nanoray 72 Light (PDBL) chính hãng thuộc phân khúc giá rẻ được Yonex cho ra mắt trong thời gian gần đây với nhiều mẫu mã màu sắc khác nhau, đem đến cho người chơi nhiều sự lựa chọn theo sở thích cá nhân.\r\n\r\nCông nghệ Isometric trên khung vợt giúp tăng khả năng đánh cầu chính xác và mở rộng vùng điểm ngọt - nơi tiếp xúc giữa cầu và mặt vợt mang lại cho bạn cảm giác cầu tốt nhất sau mỗi cú đánh. Bên cạnh đó, công nghệ Nanomesh giúp đũa vợt nhanh chóng trở về trạng thái ban đầu để chuẩn bị cho các cú đánh', 140, '2023-11-17 10:30:59'),
(242, 1, 'Áo Cầu Lông Yonex 22057 Nam - Trắng Đen', 192000, 16000, 'Đa số các mẫu áo cầu lông đẹp thường được người chơi biết đến thông qua việc các vận động viên thế giới sử dụng và đó chính là áo cầu lông chính hãng có giá thành rất cao thậm chí lên đến hơn triệu. Chính vì vậy, các mẫu áo chuyển nhiệt được tạo ra với cùng một thiết kế nhưng sử dụng chất liệu vải kém hơn đôi chút. Thường các mẫu áo cầu lông chuyển nhiệt được rất nhiều các người chơi phong trào lựa chọn vì xét về tổng thể mẫu áo này không những đảm nhận tốt vai trò thâm hút mồ hôi tốt mà còn có giá bán siêu rẻ trên thị trường.', 150, '2023-11-17 10:37:06'),
(243, 1, 'Áo Cầu Lông Yonex 20750EX Nữ - Xanh Chính Hãng', 192000, 16000, 'Đa số các mẫu áo cầu lông đẹp thường được người chơi biết đến thông qua việc các vận động viên thế giới sử dụng và đó chính là áo cầu lông chính hãng có giá thành rất cao thậm chí lên đến hơn triệu. Chính vì vậy, các mẫu áo chuyển nhiệt được tạo ra với cùng một thiết kế nhưng sử dụng chất liệu vải kém hơn đôi chút. Thường các mẫu áo cầu lông chuyển nhiệt được rất nhiều các người chơi phong trào lựa chọn vì xét về tổng thể mẫu áo này không những đảm nhận tốt vai trò thâm hút mồ hôi tốt mà còn có giá bán siêu rẻ trên thị trường.', 150, '2023-11-17 10:38:23'),
(244, 2, 'Quần Cầu Lông Victor 9658 Đen Phối Xanh', 156000, 130000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 180, '2023-11-17 10:43:57'),
(245, 2, 'Quần Cầu Lông Victor  Đen', 157000, 130000, 'Mẫu Quần cầu lông Yonex 15157EX - Đen chính hãng xịn là một sản phẩm thích hợp cho các bạn yêu mến bộ môn cầu lông có thể sử dụng để chơi cầu lông, đi chơi và đi du lịch.\r\n\r\n- Chất liệu vải sử dụng để may nên chiếc Quần cầu lông Yonex 15157EX - Đen chính hãng là vải thun cao cấp 4 chiều có đặc tính thấm hút cực nhanh, thoáng mát, hạn chế mồ hôi dính vào người khi tham gia chơi cầu lông. Ngoài các đặc tính trên thì loại vải này cũng không ra màu, không chảy sệ, co giãn rất tốt.', 180, '2023-11-17 10:44:16'),
(246, 3, 'Giày Cầu Lông Yonex Blaze 3 - Crystal Chính Hãng', 1140000, 950000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.\r\n', 160, '2023-11-17 10:48:36'),
(247, 3, 'Giày Cầu Lông Yonex Blaze 3 - Orange Chính Hãng', 1140000, 950000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.\r\n', 180, '2023-11-17 10:51:14'),
(248, 5, 'Balo Cầu Lông Yonex BA269CR - Vàng Gia Công', 718000, 599000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 180, '2023-11-17 10:55:45'),
(249, 5, 'Balo Cầu Lông Yonex BA265CR Hồng - Gia Công', 718000, 599000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 180, '2023-11-17 10:56:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `tenkh` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(20) DEFAULT NULL,
  `vaitro` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `tenkh`, `email`, `matkhau`, `sdt`, `ngaysinh`, `gioitinh`, `vaitro`) VALUES
(1, 'minhdat', 'datminh@gmail.com', '0123', '0123456789', '2023-11-01', 'Nam', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binhluan_user` (`idkh`),
  ADD KEY `fk_binhluan_sanpham` (`idsp`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietdonhang_donhang` (`iddh`),
  ADD KEY `fk_chitietdonhang_sanpham` (`idsp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_donhang_user` (`idkh`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_giohang_sanpham` (`idsp`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hinhanh_sanpham` (`idsp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=753;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_binhluan_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_binhluan_user` FOREIGN KEY (`idkh`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`iddh`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_chitietdonhang_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_user` FOREIGN KEY (`idkh`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_giohang_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `fk_hinhanh_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
