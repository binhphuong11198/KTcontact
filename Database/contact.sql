-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 07, 2019 lúc 05:30 AM
-- Phiên bản máy phục vụ: 8.0.15
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `contact`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh ba`
--

CREATE TABLE `danh ba` (
  `maDB` int(11) NOT NULL,
  `maNhan` int(11) NOT NULL,
  `maUser` int(11) NOT NULL,
  `tenDB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Sdt` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh ba`
--

INSERT INTO `danh ba` (`maDB`, `maNhan`, `maUser`, `tenDB`, `email`, `Sdt`) VALUES
(1, 1, 1, 'My Love', 'vnp@gmail.com', '0412312231'),
(2, 3, 2, 'Thầy Lân', '', '+84123532432'),
(3, 4, 1, 'Lê Diệu', 'DieuLe@gmail.com', '0412312231'),
(4, 2, 1, 'Đỗ Thị Kim Chi', 'chido@vietprojectgroup.com', '+84123532432'),
(5, 5, 1, 'Nguyễn Thị Ngọc Cẩm', 'camnguyen@vietprojectgroup.com', '0412312231'),
(6, 7, 1, 'Lê Thị Ngọc Diệu', 'dieule@vietprojectgroup.com', '+84123532432'),
(7, 1, 1, 'Nguyễn Vinh Dự ', 'dunguyen@vietprojectgroup.com', '+841231233'),
(8, 1, 1, 'Lâm Quốc Huy', 'huylam@vietprojectgroup.com', '+8442645452'),
(9, 3, 1, 'Lê Xuân Huy', 'huyle@vietprojectgroup.com', '+84125435342'),
(10, 3, 1, 'Lương Ngọc Huy', 'huyluong@vietprojectgroup.com', '+84124263453'),
(11, 3, 1, 'Bùi Ngân Hà', 'habui@vietprojectgroup.com', '+841241243'),
(12, 4, 1, 'Phùng Thị Hà ', 'haphung@vietprojectgroup.com', '+84125453452'),
(13, 4, 1, 'Ngô Phú Hòa', 'hoango@vietprojectgroup.com', '+082312312'),
(14, 1, 1, 'Trần Thiện Thanh', 'thanhthien@vietprojectgroup.com', '0412312231'),
(15, 1, 1, 'Nguyễn Thị Kim Thoa', 'thoanguyen@vietprojectgroup.com', '0192391239'),
(16, 2, 1, 'Dương Viết Thuận', 'thuanduong@vietprojectgroup.com', '213123'),
(21, 2, 1, 'Dương Viết Thuận', 'thuanduong@vietprojectgroup.com', '213123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan dan`
--

CREATE TABLE `nhan dan` (
  `maNhan` int(11) NOT NULL,
  `maUser` int(11) NOT NULL,
  `tenNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan dan`
--

INSERT INTO `nhan dan` (`maNhan`, `maUser`, `tenNhan`) VALUES
(1, 1, 'Gia Đình'),
(2, 1, 'Xã hội'),
(3, 1, 'Công việc'),
(4, 1, 'Vui chơi'),
(5, 2, 'Nhậu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `maUser` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`maUser`, `username`, `password`, `Ten`) VALUES
(1, 'binhphuong', '123', 'Võ Ngọc Bình Phương'),
(2, 'dieule', '123', 'Lê Ngọc Diệu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh ba`
--
ALTER TABLE `danh ba`
  ADD PRIMARY KEY (`maDB`),
  ADD KEY `maNhan` (`maNhan`),
  ADD KEY `maUser` (`maUser`);

--
-- Chỉ mục cho bảng `nhan dan`
--
ALTER TABLE `nhan dan`
  ADD PRIMARY KEY (`maNhan`),
  ADD KEY `maUser` (`maUser`),
  ADD KEY `maUser_2` (`maUser`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`maUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh ba`
--
ALTER TABLE `danh ba`
  MODIFY `maDB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `nhan dan`
--
ALTER TABLE `nhan dan`
  MODIFY `maNhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `maUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danh ba`
--
ALTER TABLE `danh ba`
  ADD CONSTRAINT `danh ba_ibfk_1` FOREIGN KEY (`maNhan`) REFERENCES `nhan dan` (`maNhan`),
  ADD CONSTRAINT `danh ba_ibfk_2` FOREIGN KEY (`maUser`) REFERENCES `user` (`maUser`);

--
-- Các ràng buộc cho bảng `nhan dan`
--
ALTER TABLE `nhan dan`
  ADD CONSTRAINT `nhan dan_ibfk_1` FOREIGN KEY (`maUser`) REFERENCES `user` (`maUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
