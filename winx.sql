-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 04:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winx`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `idkh` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
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
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendm` varchar(20) NOT NULL,
  `hinhanh` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
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
-- Table structure for table `donhang`
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
-- Table structure for table `giohang`
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
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `hinhanh` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
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
-- Dumping data for table `sanpham`
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
(30, 8, 'MIZUNO MONARCIDA NEO SALA PRO AS TF - BRIGHT YELLOW/WHITE', 2290000, 2190000, 'Về công nghệ của phiên bản Mizuno Monarcida Neo Sala Pro AS TF - Bright Yellow/White:\r\n\r\n Được làm từ da tổng hợp thế hệ mới, giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn. Bề mặt thân giày được phủ bóng một lớp đặc biệt, giúp dễ dàng vệ sinh giày và mang tới sự ấn tượng trong tổng thể thiết kế.\r\n\r\n Mũi giày thiết kế với miếng da lộn bền bỉ, giúp nâng cao độ bền chung của giày.\r\n\r\n Là mẫu giày thuộc phân khúc cao cấp, Monarcida Neo Sala Pro TF được trang bị lớp đệm giảm chấn U4ic, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu.\r\n\r\n Lót giày êm, chống trượt hiệu quả.', 1, '2023-11-11 03:17:30'),
(31, 8, 'NIKE LUNARGATO II IC SMALL SIDED - GREEN GLOW/BLACK/GUM LIGHT BROWN', 3219000, 2250000, 'Về công nghệ của phiên bản LUNAR GATO II:\r\n\r\n Chất liệu da được cấu tạo bằng da thật mềm cao cấp mang lại cảm giác cực êm và bám trong những pha chạm bóng.\r\n\r\n Công nghệ mặt lưới kép DYNAMIT MESH tạo cảm giác thông thoáng cho lòng bàn chân. \r\n\r\n Đế đệm Lunar giúp êm ái khi di chuyển và dễ chịu ngay từ lần đầu tiên xỏ vào.\r\n\r\n Phần mũi giày được đắp 1 lớp da lộn tăng cảm giác bóng cho người chơi.', 1, '2023-11-11 03:29:23'),
(32, 8, 'NIKE TIEMPO LEGEND 10 ACADEMY TF READY - WHITE/BLACK/BRIGHT CRIMSON', 2349000, 1990000, 'Về công nghệ của phiên bản Nike Tiempo Legend 10 Academy TF Ready - White/Black/Bright Crimson:\r\n\r\nĐể chuyển từ chất liệu da K truyền thống sang một chất liệu khác, Nike sẽ phải cân nhắc và sử dụng những công nghệ thay thế hợp lý hơn nhưng vẫn đảm bảo mang lại hiệu quả tốt nhất cho người chơi.\r\n\r\n- Đặc biệt, các đường gấp khúc ở đầu mũi giày và một phần đục lỗ ở trên logo Swoosh của Tiempo 9 sẽ bị loại bỏ, Tiempo 10 chỉ giữ lại thiết kế logo Swoosh và cấu trúc của lưỡi giày. Chứng tỏ rằng, giao diện của Tiempo 10 sẽ không có sự thay đổi quá nhiều so với những mẫu giày hiện tại.\r\n\r\n- Phần upper được làm bằng da tổng hợp tạo nên sự mềm mại, co giãn tuyệt đối, giúp form giày ôm sát vào chân giúp cầu thủ có cảm giác chạm bóng tự nhiên và chân thật nhất nhưng vẫn cảm thấy thoải mái sau nhiều giờ chơi bóng.\r\n\r\n- Lưỡi gà rời của Tiempo mang lại sự thoải mái vượt bật, cũng như cho người chơi có form chân bè lẫn chân thon dễ dàng khi xỏ giày.', 1, '2023-11-11 03:29:23'),
(33, 8, 'ADIDAS PREDATOR ACCURACY .1 TF MARINERUSH - BRIGHT ROYAL/FOOTWEAR WHITE/BLISS BLUE', 3500000, 2850000, 'Về công nghệ của phiên bản Adidas Predator Accuracy .1 TF :\r\n\r\nCổ thun Facetfit 2 mảnh không dây với chất liệu PRIMEKNIT chắc chắn.\r\n\r\nChất liệu từ da tổng hợp  mềm mại được làm bằng 50% chất liệu tái chế giúp giảm đáng kể trọng lượng, kết hợp công nghệ vân HybridTouch phủ xuyên suốt 2 phần má trong và má ngoài giúp tăng khả năng kiểm soát và rê bóng. \r\n\r\nBộ đệm Bounce là chất liệu mang đến sự hỗ trợ cao hơn chất liệu đệm EVA truyền thống về cả độ thoải mái, độ êm và độ đàn hồi. \r\n\r\nKhuôn đế có cấu trúc Facetframe với những mãng đinh cải tiến mới tăng độ bám sân giúp người chơi dễ dàng xoay chuyển cũng như bức tốc.', 1, '2023-11-11 03:29:23'),
(34, 8, 'NIKE AIR ZOOM MERCURIAL SUPERFLY 9 ACADEMY MG READY - BRIGHT CRIMSON/WHITE/BLACK', 2929000, 2350000, 'Về công nghệ của phiên bản Nike Mercurial Vapor 15 Academy MG:\r\n\r\nĐôi giày vẫn sở hữu thiết kế tối giản với số vật liệu tối thiểu, chỉ bao gồm những chi tiết cần thiết để đảm bảo giảm tối đa trọng lượng của giày. Ngoài ra, Nike Mercurial được những cầu thủ nổi tiếng đại diện như CR7, Rashford, Mbappe...\r\n\r\nChất liệu da tổng hợp Nikeskin tối ưu hóa khả năng kiểm soát bóng, sự ổn định và vừa vặn, chắc chắn khi mang.\r\n\r\nCổ rời thoải mái hỗ trợ những người có form chân bè dễ dàng mang vào.\r\n\r\nBộ đệm Zoom Air tân tiến với các rãnh uốn cong mang lại sự linh hoạt cho các chuyển động tự nhiên của bàn chân để phù hợp hơn với nhu cầu vận động nhanh, mạnh với cường độ cao trong bóng đá. \r\n\r\nKhuôn đế mới được cải tiến và bổ sung đinh Tri-Star ở bề mặt đế giúp các cầu thủ dễ dàng di chuyển linh hoạt để điều khiển bóng nhanh hơn theo mọi hướng.', 1, '2023-11-11 03:29:23'),
(35, 8, 'NIKE AIR ZOOM MERCURIAL VAPOR 15 ACADEMY TF SHADOW - BLACK/CHROME/HYPER ROYAL', 2629000, 2090000, 'Công nghệ có trên đôi giày Mercurial Vapor 15 Academy TF: \r\n\r\nChất liệu da tổng hợp NikeSkin mới được xử lý trở nên mềm và tăng tối đa khả năng cảm giác bóng cho người chơi.\r\n\r\nCổ giày rời dễ chịu thoải mái, hỗ trợ người chơi có form chân bè dễ dàng mang vào.\r\n\r\nPhần đế đệm Airzoom êm ái và hạn chế phản lực bề mặt sân nhân tạo cứng tác động lên cổ chân và đầu gối.\r\n\r\nKhuôn đế Nike Grind được tái chế từ rác nhựa nằm trong dự án loại bỏ sự lãng phí, khép lại vòng đời của sản phẩm nike bảo vệ môi trường. ', 1, '2023-11-11 03:29:23'),
(36, 8, 'NIKE TIEMPO LEGEND 10 ELITE AG-PRO PEAK READY - HYPER TURQUOISE/BLACK/FUCHSIA DREAM', 6739000, 5350000, 'Công nghệ FlyTouch Plus được coi là Chất liệu da tổng hợp nhẹ nhàng và mềm mại hơn da K, hứa hẹn mang đến khả năng kiểm soát bóng tốt hơn cho các cầu thủ khi thi đấu trên sân. FlyTouch Plus nhờ khả năng chống nước vượt trội, hỗ trợ tối đa khả năng giữ form giày, đồng thời vẫn giữ nguyên được đặc trưng vốn có của dòng Tiempo: siêu nhẹ và hỗ trợ tăng tốc tối đa.\r\n\r\nĐặc biệt, các đường gấp khúc ở đầu mũi giày và một phần đục lỗ ở trên logo Swoosh của Tiempo 9 sẽ bị loại bỏ, Tiempo 10 chỉ giữ lại thiết kế logo Swoosh và cấu trúc của lưỡi giày. Chứng tỏ rằng, giao diện của Tiempo 10 sẽ không có sự thay đổi quá nhiều so với những mẫu giày hiện tại.', 1, '2023-11-11 03:29:23'),
(37, 8, 'MIZUNO MORELIA SALA MADE IN JAPAN TF RELEASE - WHITE/RED/YELLOW LIMITED EDITION', 4300000, 3870000, 'Chất liệu da Kangaroo siêu mềm đã được Mizuno sử dụng hiệu quả ở phần Upper giày, hỗ trợ tối đa cho các cầu thủ khi nhận bóng, đi bóng, những pha sút mu uy lực và tạo cảm giác như đi chân trần.\r\n\r\n Phần mũi giày được gia cố bằng lớp da lộn đặc biệt, nâng cao độ bền chung của sản phẩm.\r\n\r\n Form giày đặc biệt phù hợp với bàn chân người Việt, những cầu thủ chân bè hoàn toàn có thể sử dụng mà không gặp chút khó khăn nào.\r\n\r\n Morelia Sala Japan TF được trang bị lớp đệm giảm chấn, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu.', 1, '2023-11-11 03:29:23'),
(38, 8, 'ADIDAS PREDATOR ACCURACY .1 LOW FG MARINERUSH - BRIGHT ROYAL/FOOTWEAR WHITE/BLISS BLUE', 5800000, 5250000, 'Về công nghệ của phiên bản adidas Predator Accuracy .1 Low FG:\r\n\r\nCổ thun Facetfit 2 mảnh không dây với chất liệu PRIMEKNIT chắc chắn.\r\n\r\nChất liệu từ da tổng hợp  mềm mại được làm bằng 50% chất liệu tái chế giúp giảm đáng kể trọng lượng, kết hợp công nghệ vân HybridTouch phủ xuyên suốt 2 phần má trong và má ngoài giúp tăng khả năng kiểm soát và rê bóng. \r\n\r\nKhuôn đế có cấu trúc Facetframe với những mãng đinh cải tiến mới tăng độ bám sân giúp người chơi dễ dàng xoay chuyển cũng như bức tốc. Phần đinh Power Facet ở bàn chân trước giúp phân bổ lại trọng lượng giày nhằm tối ưu hóa khả năng truyền lực khi chuyền bóng. ', 1, '2023-11-11 03:29:23'),
(39, 8, 'NIKE PHANTOM GX ELITE FG PEAK READY - HYPER TURQUOISE/BLACK/FUCHSIA DREAM/WHITE', 7895000, 5790000, 'Về mặt công nghệ, cũng giống như Phantom GT, mẫu giày đá bóng Nike Phantom GX được tạo ra là để dành cho những cầu thủ mong muốn có một độ chính xác và khả năng kiểm soát bóng tốt như những vị trí tiền vệ hoặc tiền đạo. Các cầu thủ sử dụng Phantom GT II trước đó đều đồng loạt chuyển sang Phantom GX. Bên cạnh đó Nike cũng làm form giày tương đối thoải mái và tích hợp khá nhiều công nghệ trên bản Elite này. \r\n\r\n- Công nghệ cổ thun Dynamic Fit giúp ôm sát cổ chân người chơi nhưng vẫn tạo được sự thoải mái và dễ chịu nhất. \r\n\r\n- Hệ thống dây buộc Nike Ghost kết hợp cùng công nghệ Flyknit giúp ôm vừa vặn mọi kích thước chân, mang lại sự thoải mái và khả năng di chuyển tốt nhất cho người chơi.\r\n\r\n- Công nghệ Nike Gripknit (chất liệu da vải sợi dệt) được dành riêng cho phần upper mang lại sự êm ái và mềm mại hơn so với Flyknit ở mẫu giày Nike Phantom GT đã ra mắt trước đó. ', 1, '2023-11-11 03:29:23'),
(40, 8, 'PUMA ULTRA ULTIMATE FG/AG GEAR UP - ULTRA BLUE/PUMA WHITE/PRO GREEN', 5500000, 4800000, 'Về công nghệ của phiên bản PUMA Ultra Ultimate FG/AG:\r\n\r\nSản phẩm được các cầu thủ nổi tiếng đại diện gồm có Antoine Griezmann, Sergio Aguero, Antony.....\r\n\r\nUpper dệt từ công nghệ Ultraweave mới Đây là chất liệu được sử dụng trên áo thi đấu của PUMA với đặc trưng mỏng, mềm và dẻo, rất linh hoạt co giãn theo hình dạng của bàn chân.\r\n\r\nĐược trang bị công nghệ PWRTape để tăng cường độ chắc chắn ở phần gót chân không bị lỏng lẻo khi di chuyển cũng như bức tốc. ', 1, '2023-11-11 03:29:23'),
(41, 8, 'PUMA FUTURE ULTIMATE FG/AG GEAR UP - PERSIAN BLUE/PUMA WHITE/PRO GREEN', 5500000, 4800000, 'Công nghệ của PUMA Future Ultimate FG/AG Gear Up - Persian Blue/PUMA White/Pro Green:\r\n\r\nPhần upper có kết cấu 3D, đặc biệt tại các vùng tiếp xúc bóng thường xuyên đảm bảo tăng cường độ bám và kiểm soát bóng khi rê, chuyền và dứt bóng.\r\n\r\nCấu trúc lưới kép FUZIONFIT360 kết hợp với công nghệ PWRTAPE độc quyền của thương hiệu hỗ trợ tối đa di chuyển của các cầu thủ, tăng tốc dễ dàng nhưng vẫn đảm bảo sự thoải mái và êm ái', 1, '2023-11-11 03:29:23'),
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
(94, 3, 'Giày Cầu Lông Lining Trắng Đen (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11');
INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giagoc`, `giasale`, `mota`, `luotxem`, `ngaythem`) VALUES
(95, 3, 'Giày Cầu Lông Lining Hồng (Nội Địa Trung)', 35000000, 31000000, 'Giày cầu lông Lining  sở hữu độ đàn hồi cao và trọng lượng nhẹ, mang lại trải nghiệm vượt trội cho người sử dụng. Thiết kế của giày đơn giản, với phối màu đen tối giản, tạo điểm nhấn bằng logo thương hiệu Li-Ning được chế tác tỉ mỉ.\r\n\r\nPhần trên của giày cầu lông Lining AYAT005-7 Đen được làm từ chất liệu thoải mái, dễ chịu, và mềm mại, giúp mang lại cảm giác ổn định cho chân. Thiết kế chống va chạm ở mũi giày giúp giảm nguy cơ trầy xước hoặc va chạm ngón chân, bảo vệ chân từng bước chân.', 125, '2023-11-12 22:21:11'),
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
(115, 5, 'Balo Cầu Lông Yonex B1408 Xanh Than - Gia Công', 900000, 800000, 'Ngoài vợt, trang phục cầu lông, có thể bạn sẽ cần đến những vật dụng cần thiết khi đến phòng tập. Để có thể đựng được nhiều đồ nhưng vẫn đảm bảo hợp thời trang, balo cầu lông sẽ đáp ứng những nhu cầu của bạn. Bài viết này sẽ giới thiệu cho bạn một mẫu balo gia công với chất lượng và thiết kế không khác gì của hãng. Balo Cầu Lông Yonex B1408 – Trắng Xanh là mẫu balo nhỏ gọn và thời trang, chất liệu sử dụng của balo là sợi polyester cao cấp, có khả năng chống bám bụi bẩn cao và không bị xù xì.', 150, '2023-11-12 22:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binhluan_user` (`idkh`),
  ADD KEY `fk_binhluan_sanpham` (`idsp`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietdonhang_donhang` (`iddn`),
  ADD KEY `fk_chitietdonhang_sanpham` (`idsp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_donhang_user` (`idkh`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_giohang_sanpham` (`idsp`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hinhanh_sanpham` (`idsp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham_danhmuc` (`iddm`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_binhluan_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_binhluan_user` FOREIGN KEY (`idkh`) REFERENCES `user` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`iddn`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_chitietdonhang_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_user` FOREIGN KEY (`idkh`) REFERENCES `user` (`id`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_giohang_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `fk_hinhanh_sanpham` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
