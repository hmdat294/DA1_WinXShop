-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2023 lúc 08:15 PM
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
  `iddn` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `giaban` int(10) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `ngaydat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `tongtien` int(10) DEFAULT NULL,
  `ngaydat` datetime DEFAULT current_timestamp(),
  `trangthai` varchar(20) NOT NULL,
  `ghichu` text DEFAULT NULL,
  `diachi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `soluong` int(5) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `giagoc` int(10) NOT NULL,
  `giasale` int(10) NOT NULL,
  `size` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `hinhanh` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `iddm` int(10) NOT NULL,
  `tensp` varchar(20) NOT NULL,
  `giagoc` int(10) DEFAULT NULL,
  `giasale` int(10) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(10) DEFAULT NULL,
  `ngaythem` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `tenkh` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `sdt` int(10) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(20) DEFAULT NULL,
  `vaitro` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD KEY `fk_chitietdonhang_donhang` (`iddn`),
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`iddn`) REFERENCES `donhang` (`id`),
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
