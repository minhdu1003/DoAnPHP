-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 07:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionshop_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `Status` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`, `Status`, `id`, `FullName`) VALUES
('admin', '81dc9bdb52d04dc20036dbd8313ed055', 1, 13, 'Nguyễn Thị Kim Yên'),
('nv1', '81dc9bdb52d04dc20036dbd8313ed055', 1, 18, 'Đặng Hoàng Khang'),
('nv2', '81dc9bdb52d04dc20036dbd8313ed055', 1, 19, 'Nguyễn Minh Dự');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` int(11) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `TotalMoney` mediumtext NOT NULL,
  `Status` int(11) NOT NULL,
  `ReceiverAdress` varchar(100) NOT NULL,
  `ReceiverName` varchar(50) NOT NULL,
  `ReceiverPhone` varchar(10) NOT NULL,
  `PayID` int(11) DEFAULT NULL,
  `discountID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `DateCreated`, `CustomerID`, `TotalMoney`, `Status`, `ReceiverAdress`, `ReceiverName`, `ReceiverPhone`, `PayID`, `discountID`) VALUES
(9, '2021-11-16 07:31:52', 2, '11.011.000', 2, 'Mỹ Chánh, Ba Tri, Bến Tre', 'Đặng Hoàng Khang', '123456789', 1, NULL),
(10, '2021-11-16 07:32:57', 1, '5.808.000', 1, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(11, '2021-11-16 07:33:20', 1, '4.356.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(12, '2021-11-16 07:37:06', 1, '7.986.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(13, '2021-11-16 07:56:31', 1, '1.210.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(14, '2021-11-16 07:58:25', 1, '1.210.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(15, '2021-11-16 07:59:11', 1, '3.146.000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(16, '2021-11-16 17:37:53', 2, '2.904.000', 3, 'Mỹ Chánh, Ba Tri, Bến Tre', 'Đặng Hoàng Khang', '123456789', 1, NULL),
(17, '2021-11-23 07:36:24', 1, '5.808.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(19, '2021-11-24 14:27:25', 1, '7949700', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(20, '2021-11-24 14:54:52', 1, '2722500', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 3),
(21, '2021-11-24 15:14:17', 1, '12000000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 2),
(22, '2021-11-24 15:53:54', 1, '16.356.000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 2),
(24, '2021-11-24 15:59:38', 1, '1.352.000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 2),
(25, '2021-11-24 17:06:53', 1, '47.916.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 3),
(26, '2021-11-28 08:53:20', 2, '4.138.200', 3, 'Mỹ Chánh, Ba Tri, Bến Tre', 'Đặng Hoàng Khang', '123456789', 1, 3),
(27, '2021-11-28 13:09:22', 2, '3.630.000', 2, 'Mỹ Chánh, Ba Tri, Bến Tre', 'Đặng Hoàng Khang', '123456789', 1, NULL),
(28, '2021-11-29 13:20:36', 16, '12.100.000', 2, 'dđ, Mỹ Hòa, Huyện Đông Hải, Bạc Liêu', 'Đặng Hoàng Khang', '0332283252', 1, NULL),
(29, '2021-12-01 17:41:55', 16, '12.100.000', 2, '095/ GD, Mỹ Chánh, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', 'Đặng Hoàng Khang', '0332283252', 1, NULL),
(30, '2021-12-01 18:59:53', 1, '12.100.000', 2, '095/ GD, Mỹ Chánh, Thị xã Phước Long, Bình Phước', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(31, '2021-12-03 13:18:04', 1, '24.410.000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 5),
(32, '2021-12-03 13:20:34', 1, '14.520.000', 2, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(33, '2021-12-03 13:32:30', 1, '28.314.000', 3, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 4),
(34, '2021-12-06 13:20:27', 1, '38.720.000', 1, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, NULL),
(35, '2021-12-15 12:59:41', 1, '12.959.100', 0, 'Mỹ Hòa, Ba Tri, Bến Tre', 'Nguyễn Thị Kim Yên', '0987654321', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustomerSex` varchar(7) NOT NULL,
  `CustomerAdress` varchar(100) NOT NULL,
  `CustomerEmail` varchar(50) NOT NULL,
  `CustomerPhone` varchar(12) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerSex`, `CustomerAdress`, `CustomerEmail`, `CustomerPhone`, `UserName`, `PassWord`) VALUES
(1, 'Nguyễn Thị Kim Yên', 'Nữ', 'Mỹ Hòa, Ba Tri, Bến Tre', 'yen@gmail.com', '0987654321', 'yen', '123'),
(2, 'Đặng Hoàng Khang', 'Nam', 'Mỹ Chánh, Ba Tri, Bến Tre', 'khang@gmail.com', '123456789', 'khang', '1234'),
(13, 'Nguyễn Thị Kim Yến', 'Nữ', 'dđ, Huyện Cư JútĐắk Nông', 'ww@gmail.com', '123-1234567', 'yen123', '123456'),
(14, 'Nguyễn Thị Kim Yến 1', 'Nữ', 'kkkk, Mỹ Chánh, Quận Ô Môn, Cần Thơ', 'ww@gmail.com', '123-1234567', 'yen1234', '12341234'),
(15, 'Nguyễn Minh Dự', 'Nam', 'dđ22, Mỹ Chánh, Huyện Đông Hải, Bạc Liêu', 'ww@gmail.com', '123-1234567', 'yen123', '123412333'),
(16, 'Đặng Hoàng Khang', '', 'Gò Da, Mỹ Chánh, Huyện Ba Tri, Bến Tre', 'dhkhang0103@gmail.com', '0332283252', '103253252768796309680', ''),
(17, 'khang hoàng', '', 'dđ, Mỹ Chánh, Thành phố Long Xuyên, An Giang', 'chumeocon1313@gmail.com', '0332283252', '109843955601935098871', '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_news`
--

CREATE TABLE `detail_news` (
  `ID` int(11) NOT NULL,
  `DetailsTittle` varchar(255) NOT NULL,
  `DetailsImage` varchar(200) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `NewsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_news`
--

INSERT INTO `detail_news` (`ID`, `DetailsTittle`, `DetailsImage`, `Description`, `NewsID`) VALUES
(1, 'Đầm suông tay dài dáng chữ A', '1637306199_9482d7b3facfa581a8012a7d7d1b2700.png', '<p>Thay v&igrave; chọn một chiếc v&aacute;y su&ocirc;ng th&ocirc;ng thường, h&atilde;y thử ngay một chiếc v&aacute;y su&ocirc;ng d&aacute;ng chữ A để l&agrave;m mới bản th&acirc;n ngay n&agrave;o! D&aacute;ng đầm su&ocirc;ng d&agrave;i qua gối sẽ mang lại cho chị em vẻ đẹp dịu d&agrave;ng, nữ t&iacute;nh. Những ng&agrave;y m&ugrave;a h&egrave;, n&agrave;ng c&oacute; thể chọn cho m&igrave;nh những chất liệu m&aacute;t như thun, cotton, voan để set đồ th&ecirc;m m&aacute;t mẻ, những ng&agrave;y m&ugrave;a đ&ocirc;ng n&agrave;ng c&oacute; thể chọn c&aacute;c chất liệu giữ ấm tốt như len, tweet.</p>', 2),
(5, 'Những mẫu váy hở lưng đẹp', 'default.jpg', NULL, 2),
(6, 'Đầm hở lưng có tay', '1638883403_a1.png', '<p>Nếu bạn c&ograve;n chưa đủ tự tin để diện những chiếc đầm c&oacute; thiết kế qu&aacute; hở th&igrave; h&atilde;y lựa chọn ngay cho m&igrave;nh những chiếc đầm hở lưng c&oacute; tay. Thiết kế n&agrave;y vừa vặn để khoe ra đ&ocirc;i vai trần gợi cảm nhưng vẫn đủ lịch sự v&agrave; k&iacute;n đ&aacute;o. B&ecirc;n cạnh đ&oacute; thiết kế n&agrave;y c&ograve;n gi&uacute;p n&agrave;ng che đi phần bắp tay to hiệu quả.</p>', 2),
(7, 'Đầm hở lưng có tay', '1638883408_a1.png', '<p>Nếu bạn c&ograve;n chưa đủ tự tin để diện những chiếc đầm c&oacute; thiết kế qu&aacute; hở th&igrave; h&atilde;y lựa chọn ngay cho m&igrave;nh những chiếc đầm hở lưng c&oacute; tay. Thiết kế n&agrave;y vừa vặn để khoe ra đ&ocirc;i vai trần gợi cảm nhưng vẫn đủ lịch sự v&agrave; k&iacute;n đ&aacute;o. B&ecirc;n cạnh đ&oacute; thiết kế n&agrave;y c&ograve;n gi&uacute;p n&agrave;ng che đi phần bắp tay to hiệu quả.</p>', 2),
(8, 'Đầm hở lưng đan dây chéo', '1638883464_a2.png', '<p>Kiểu v&aacute;y hở lưng đan ch&eacute;o được thiết kế ph&ugrave; hợp cho những chuyến du lịch biển v&agrave; những chuyến đi d&atilde; ngoại c&ugrave;ng gia đ&igrave;nh. Thay v&igrave; thiết kế hở lưng th&ocirc;ng thường bạn c&oacute; thể l&agrave;m mới vẻ ngo&agrave;i bằng thiết kế hở lưng đan ch&eacute;o. Phần d&acirc;y được đan theo nhiều kiểu kh&aacute;c nhau từ vai xuống đến thắt lưng tạo n&ecirc;n vẻ ngo&agrave;i thu h&uacute;t.</p>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_role`
--

CREATE TABLE `detail_role` (
  `id` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `idRole` int(11) NOT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_role`
--

INSERT INTO `detail_role` (`id`, `idAdmin`, `idRole`, `Status`) VALUES
(12, 13, 1, 1),
(13, 13, 2, 1),
(14, 13, 3, 1),
(15, 13, 4, 1),
(16, 13, 5, 1),
(17, 13, 6, 1),
(18, 13, 7, 1),
(19, 13, 8, 1),
(20, 13, 9, 1),
(21, 13, 10, 1),
(22, 13, 11, 1),
(23, 13, 12, 1),
(24, 13, 13, 1),
(25, 13, 14, 1),
(26, 13, 15, 1),
(27, 13, 16, 1),
(28, 13, 17, 1),
(29, 13, 18, 1),
(30, 13, 19, 1),
(31, 13, 20, 1),
(32, 13, 21, 1),
(117, 13, 22, 1),
(118, 13, 22, 1),
(119, 18, 1, 0),
(120, 18, 2, 0),
(121, 18, 3, 0),
(122, 18, 4, 0),
(123, 18, 5, 0),
(124, 18, 6, 0),
(125, 18, 7, 0),
(126, 18, 8, 0),
(127, 18, 9, 0),
(128, 18, 10, 0),
(129, 18, 11, 0),
(130, 18, 12, 0),
(131, 18, 13, 0),
(132, 18, 14, 0),
(133, 18, 15, 0),
(134, 18, 16, 0),
(135, 18, 17, 0),
(136, 18, 18, 0),
(137, 18, 19, 0),
(138, 18, 20, 0),
(139, 18, 21, 0),
(140, 18, 22, 0),
(141, 19, 1, 0),
(142, 19, 2, 0),
(143, 19, 3, 0),
(144, 19, 4, 0),
(145, 19, 5, 0),
(146, 19, 6, 0),
(147, 19, 7, 0),
(148, 19, 8, 0),
(149, 19, 9, 0),
(150, 19, 10, 0),
(151, 19, 11, 0),
(152, 19, 12, 0),
(153, 19, 13, 0),
(154, 19, 14, 0),
(155, 19, 15, 0),
(156, 19, 16, 0),
(157, 19, 17, 0),
(158, 19, 18, 0),
(159, 19, 19, 0),
(160, 19, 20, 0),
(161, 19, 21, 0),
(162, 19, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discountName` varchar(200) NOT NULL,
  `discountCondition` bigint(20) NOT NULL,
  `discountExpiry` date NOT NULL,
  `Count` int(11) NOT NULL,
  `Feature` int(11) DEFAULT NULL,
  `function` varchar(100) DEFAULT NULL,
  `discountCode` varchar(10) NOT NULL,
  `discountID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discountName`, `discountCondition`, `discountExpiry`, `Count`, `Feature`, `function`, `discountCode`, `discountID`) VALUES
('Tết vui', 2000000, '2021-11-25', 1000, 100000, 'Giảm tiền', 'a283b1e4', 2),
('20/11', 3000000, '2021-11-26', 10, 10, 'Giảm phần trăm', 'a876121d', 3),
('Tết tây', 12, '2021-12-02', 2, 22, 'Giảm phần trăm', '00b8626a', 4),
('Noel', 1000000, '2021-11-30', 12, 1000000, 'Giảm tiền', '5f4db3ab', 5),
('SInh nhật shop', 1000000, '2021-12-17', 210, 100000, 'Giảm tiền', '0d34ac6a', 6);

-- --------------------------------------------------------

--
-- Table structure for table `discount_detail`
--

CREATE TABLE `discount_detail` (
  `ID` int(11) NOT NULL,
  `discountID` int(10) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount_detail`
--

INSERT INTO `discount_detail` (`ID`, `discountID`, `CustomerID`, `Status`) VALUES
(9, 3, 15, 1),
(10, 2, 1, 0),
(11, 3, 1, 0),
(12, 3, 2, 0),
(13, 3, 13, 1),
(14, 3, 14, 1),
(15, 3, 15, 1),
(16, 2, 1, 0),
(18, 2, 13, 1),
(19, 2, 14, 1),
(21, 5, 1, 0),
(22, 4, 1, 0),
(23, 4, 2, 1),
(24, 4, 13, 1),
(25, 2, 16, 1),
(27, 5, 2, 1),
(28, 5, 13, 1),
(29, 5, 14, 1),
(30, 5, 15, 1),
(31, 5, 16, 1),
(32, 5, 17, 1),
(33, 3, 1, 0),
(34, 3, 2, 1),
(35, 3, 13, 1),
(36, 3, 14, 1),
(37, 3, 16, 1),
(38, 3, 17, 1),
(39, 2, 2, 1),
(40, 2, 13, 1),
(41, 2, 14, 1),
(42, 2, 15, 1),
(43, 2, 16, 1),
(44, 2, 17, 1),
(45, 4, 2, 1),
(46, 4, 13, 1),
(47, 4, 14, 1),
(48, 4, 15, 1),
(49, 4, 16, 1),
(50, 4, 17, 1),
(51, 5, 2, 1),
(52, 5, 13, 1),
(53, 5, 14, 1),
(54, 5, 15, 1),
(55, 5, 16, 1),
(56, 5, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `method_pay`
--

CREATE TABLE `method_pay` (
  `PayID` int(11) NOT NULL,
  `PayName` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `Image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `method_pay`
--

INSERT INTO `method_pay` (`PayID`, `PayName`, `Status`, `Image`) VALUES
(1, 'Thanh toán khi giao hàng', 1, NULL),
(3, 'Thanh toán bằng thẻ Visa', 1, 'visa.png');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL,
  `TittleNews` varchar(255) NOT NULL,
  `NewsImage` varchar(200) NOT NULL,
  `Description` longtext NOT NULL,
  `Action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsID`, `TittleNews`, `NewsImage`, `Description`, `Action`) VALUES
(2, 'NHỮNG MẪU ĐẦM SUÔNG DÀI QUA GỐI CỰC \"TRENDY\" CHO QUÝ CÔ', '1637251539_afef810e935009811e5f7d33a8f36e93.png', '<p>Đầm su&ocirc;ng l&agrave; trang phục được rất nhiều chị em y&ecirc;u th&iacute;ch v&agrave; lựa chọn trong trang phục thường ng&agrave;y. Với những thiết kế đầm su&ocirc;ng kiểu c&aacute;ch bạn c&ograve;n c&oacute; thể diện đi tiệc, đi chơi cũng đều ph&ugrave; hợp. B&ecirc;n cạnh đ&oacute;, mẫu đầm n&agrave;y c&ograve;n gi&uacute;p c&aacute;c chị em ph&aacute;i đẹp che đi khuyết điểm hiệu quả. H&atilde;y c&ugrave;ng IVY moda điểm qua những mẫu đầm su&ocirc;ng d&agrave;i qua gối đẹp cho năm 2021 n&agrave;y nh&eacute; !</p>', 11),
(3, 'ĐẦM XÒE TUỔI TRUNG NIÊN', '1637309336_9482d7b3facfa581a8012a7d7d1b2700.png', '<p>Khi bước v&agrave;o tuổi trung ni&ecirc;n, những trang phục d&agrave;nh cho c&aacute;c qu&yacute; c&ocirc; ng&agrave;y c&agrave;ng trở n&ecirc;n hạn chế. V&igrave; thế m&agrave; phong c&aacute;ch h&agrave;ng ng&agrave;y của phụ nữ trung ni&ecirc;n thường bị b&oacute; buộc trong những bộ đồ đơn giản. Hiểu được điều đ&oacute;, IVY moda sẽ giới thiệu những mẫu đầm x&ograve;e tuổi trung ni&ecirc;n đẹp nhất để c&aacute;c c&ocirc; c&oacute; th&ecirc;m nhiều sự chọn lựa cho trang phục.</p>', 4),
(5, 'GỢI Ý CÁCH DIỆN VÁY HỞ LƯNG QUYẾN RŨ NHƯNG VẪN TINH TẾ CHO PHÁI ĐẸP', '1638883029_damhuongho.png', '<p>V&aacute;y hở lưng mang đến cho người con g&aacute;i vẻ ngo&agrave;i mỏng manh, đầy thu h&uacute;t. B&ecirc;n cạnh đ&oacute; thiết kế n&agrave;y c&ograve;n gi&uacute;p nhấn nh&aacute; v&agrave;o đ&ocirc;i eo thon gọn gi&uacute;p n&agrave;ng nổi bật hơn trong những bữa tiệc. H&atilde;y c&ugrave;ng IVY moda tham khảo ngay b&agrave;i viết dưới đ&acirc;y để lựa chọn cho m&igrave;nh một chiếc v&aacute;y ph&ugrave; hợp.</p>', 1),
(6, 'NHỮNG MẪU ĐẦM BẦU CÔNG SỞ CHO NÀNG SÀNH ĐIỆU', '1638883056_dambaucongso.png', '<p>L&agrave; phụ nữ, ai cũng muốn m&igrave;nh thật xinh đẹp v&agrave; thu h&uacute;t ngay cả khi mang bầu. Đặc biệt với những mẹ bầu c&ocirc;ng sở, việc lựa chọn cho m&igrave;nh một chiếc đầm ph&ugrave; hợp c&agrave;ng được quan t&acirc;m hơn rất nhiều. Chọn đồ c&ocirc;ng sở sao cho thanh lịch, nh&atilde; nhặn để che đi những khuyết điểm khi mang bầu v&agrave; t&ocirc;n l&ecirc;n vẻ ngo&agrave;i xinh đẹp, nữ t&iacute;nh. H&atilde;y c&ugrave;ng IVY moda tham khảo ngay những mẫu đầm c&ocirc;ng sở đẹp ngay sau đ&acirc;y.</p>', 1),
(7, 'GỢI Ý CÁCH CHỌN VÁY BẦU ĐẸP CHO CHỊ EM CÔNG SỞ', '1638883088_vaybau.png', '<p>V&aacute;y bầu c&oacute; rất nhiều kiểu d&aacute;ng ph&ugrave; hợp cho qu&aacute; tr&igrave;nh mang thai, d&ugrave; chị em đang ở đầu hay cuối thai kỳ. Kh&ocirc;ng chỉ l&agrave; những mẫu đầm su&ocirc;ng đơn giản, giờ đ&acirc;y c&aacute;c mẹ bầu đ&atilde; c&oacute; rất nhiều kiểu d&aacute;ng kh&aacute;c nhau gi&uacute;p t&ocirc; điểm cho phong c&aacute;ch bầu th&ecirc;m thu h&uacute;t. H&atilde;y c&ugrave;ng IVY moda đi t&igrave;m mẫu v&aacute;y bầu đẹp ngay sau đ&acirc;y.</p>', 1),
(8, 'BẬT MÍ CÁCH DIỆN CHÂN VÁY BÚT CHÌ CỰC XINH GIÚP NÀNG THU HÚT MỌI ÁNH NHÌN', '1638883146_vaybutchi.png', '<p>Trang phục c&ocirc;ng sở với những trang phục quen thuộc như &aacute;o sơ mi, v&aacute;y b&uacute;t ch&igrave;, thường mang đến cảm gi&aacute;c đơn điệu, nh&agrave;m ch&aacute;n. Tuy nhi&ecirc;n thời trang ng&agrave;y c&agrave;ng ph&aacute;t triển với kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng mang đến cho người d&ugrave;ng nhiều sự lựa chọn đa dạng. Chất liệu cao cấp, kiểu d&aacute;ng thời thượng cực kỳ thu h&uacute;t sẽ khiến qu&yacute; c&ocirc; kh&ocirc;ng thể rời mắt. H&atilde;y c&ugrave;ng IVY moda kh&aacute;m ph&aacute; ngay những c&aacute;ch diện ch&acirc;n&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/vay-but-chi-380\">v&aacute;y b&uacute;t ch&igrave;</a>&nbsp;cực xinh ngay sau đ&acirc;y.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductPrice` decimal(10,0) NOT NULL,
  `ProductImage` varchar(200) NOT NULL,
  `ProductCount` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Brand` int(11) NOT NULL,
  `Sale` int(11) NOT NULL,
  `Note` longtext NOT NULL,
  `ProductCreatedDate` date NOT NULL,
  `Status` int(11) DEFAULT NULL,
  `DefaultPrice` decimal(10,0) DEFAULT NULL,
  `Action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `ProductPrice`, `ProductImage`, `ProductCount`, `Size`, `Type`, `Brand`, `Sale`, `Note`, `ProductCreatedDate`, `Status`, `DefaultPrice`, `Action`) VALUES
(2, 'ÁO 2 DÂY CỔ ĐỎ', '1000000', '1636100545_ao2daycodo.jpg', 9, 7, 1, 3, 8, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 2, NULL, 5),
(3, 'ÁO 2 DÂY CỔ TÍM', '1200000', '1636114174_ao2daycotim.jpg', 11, 7, 1, 3, 4, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 1, NULL, 8),
(4, 'ÁO 2 DÂY PHỐI REN', '1300000', '1636114211_ao2dayphoiren.jpg', 8, 5, 1, 3, 4, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 1, NULL, 3),
(5, 'ÁO 2 DÂY VẠT KIỂU', '1400000', '1636114251_ao2dayvatkieu.jpg', 10, 5, 1, 1, 4, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 1, NULL, 3),
(7, 'ÁO 2 DÂY XẾP DÁNG', '1200000', '1636114353_ao2dayxepdang.jpg', 10, 5, 1, 1, 4, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 1, NULL, NULL),
(8, 'ÁO CỔ V THẤT DÂY', '1300000', '1636114676_aocoVthatday.jpg', 10, 5, 1, 1, 4, '<p>Đẹp</p>', '2021-11-05', 1, NULL, NULL),
(9, 'ÁO CỔ VUÔNG KHUY', '1200000', '1636114716_aocovuongkhuy.jpg', 10, 5, 1, 1, 4, '<p>&Aacute;o peplum cổ c&aacute;ch điệu kiểu lệch 1 b&ecirc;n vai. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng chất vải Tuysi c&aacute;t gi&uacute;p giữ phom, bền m&agrave;u v&agrave; chống nhăn hiệu quả.&nbsp;Với thiết kế cổ lệch đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t, dễ chịu nhưng vẫn mang đậm chất thanh tao, lịch sự khi mix c&ugrave;ng ch&acirc;n zu&yacute;p hoặc quần ống su&ocirc;ng.&nbsp;Nếu n&agrave;ng đang t&igrave;m cho m&igrave;nh phong c&aacute;ch c&ocirc;ng sở trẻ trung, thanh lịch th&igrave; h&atilde;y tham khảo set n&agrave;y nh&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m65</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 80-62-89</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-05', 1, NULL, NULL),
(10, 'QUẦN DÀI CÁP LẾCH', '1000000', '1637326327_quandaicaplech.jpg', 10, 5, 2, 3, 4, '<p>Quần gi&oacute; 2 lớp&nbsp;cạp chun co gi&atilde;n thoải m&aacute;i, gấu bo chun &ocirc;m ch&acirc;n. D&aacute;ng trẻ trung, khỏe khoắn. Phối c&ugrave;ng &aacute;o kho&aacute;c đồng bộ MS&nbsp;70M6881</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; thể mặc v&agrave;o mỗi m&ugrave;a đ&ocirc;ng m&agrave; c&aacute;c bạn nữ ho&agrave;n to&agrave;n c&oacute; thể mặc &aacute;o kho&aacute;c gi&oacute; v&agrave;o m&ugrave;a h&egrave; để che nắng, che bụi, hay che mưa. Với nhiều c&ocirc;ng dụng, khi mặc th&igrave; gọn nhẹ, những bộ gi&oacute; ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng tin tưởng v&agrave; sử dụng. Được l&agrave;m từ chất liệu chọn lọc, mẫu m&atilde; thời trang, nhiều m&agrave;u sắc để lựa chọn.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Bạc H&agrave; - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;́ng đứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 17),
(11, 'QUẦN DÀI 6 KHUY', '1200000', '1637326403_quandai6khuy.jpg', 3, 5, 2, 4, 9, '<p>Quần gi&oacute; 2 lớp&nbsp;cạp chun co gi&atilde;n thoải m&aacute;i, gấu bo chun &ocirc;m ch&acirc;n. D&aacute;ng trẻ trung, khỏe khoắn. Phối c&ugrave;ng &aacute;o kho&aacute;c đồng bộ MS&nbsp;70M6881</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; thể mặc v&agrave;o mỗi m&ugrave;a đ&ocirc;ng m&agrave; c&aacute;c bạn nữ ho&agrave;n to&agrave;n c&oacute; thể mặc &aacute;o kho&aacute;c gi&oacute; v&agrave;o m&ugrave;a h&egrave; để che nắng, che bụi, hay che mưa. Với nhiều c&ocirc;ng dụng, khi mặc th&igrave; gọn nhẹ, những bộ gi&oacute; ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng tin tưởng v&agrave; sử dụng. Được l&agrave;m từ chất liệu chọn lọc, mẫu m&atilde; thời trang, nhiều m&agrave;u sắc để lựa chọn.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Bạc H&agrave; - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;́ng đứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 3),
(12, 'QUẦN BAGGY ÂU GẤP', '1300000', '1637326483_quanbaggygaugap.jpg', 20, 7, 2, 3, 9, '<p>Quần gi&oacute; 2 lớp&nbsp;cạp chun co gi&atilde;n thoải m&aacute;i, gấu bo chun &ocirc;m ch&acirc;n. D&aacute;ng trẻ trung, khỏe khoắn. Phối c&ugrave;ng &aacute;o kho&aacute;c đồng bộ MS&nbsp;70M6881</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; thể mặc v&agrave;o mỗi m&ugrave;a đ&ocirc;ng m&agrave; c&aacute;c bạn nữ ho&agrave;n to&agrave;n c&oacute; thể mặc &aacute;o kho&aacute;c gi&oacute; v&agrave;o m&ugrave;a h&egrave; để che nắng, che bụi, hay che mưa. Với nhiều c&ocirc;ng dụng, khi mặc th&igrave; gọn nhẹ, những bộ gi&oacute; ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng tin tưởng v&agrave; sử dụng. Được l&agrave;m từ chất liệu chọn lọc, mẫu m&atilde; thời trang, nhiều m&agrave;u sắc để lựa chọn.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Bạc H&agrave; - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;́ng đứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, NULL),
(13, 'QUẦN BÓ ỐNG ĐỨNG', '1400000', '1637326702_quanboongdung.jpg', 20, 7, 2, 4, 9, '<p>Quần gi&oacute; 2 lớp&nbsp;cạp chun co gi&atilde;n thoải m&aacute;i, gấu bo chun &ocirc;m ch&acirc;n. D&aacute;ng trẻ trung, khỏe khoắn. Phối c&ugrave;ng &aacute;o kho&aacute;c đồng bộ MS&nbsp;70M6881</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; thể mặc v&agrave;o mỗi m&ugrave;a đ&ocirc;ng m&agrave; c&aacute;c bạn nữ ho&agrave;n to&agrave;n c&oacute; thể mặc &aacute;o kho&aacute;c gi&oacute; v&agrave;o m&ugrave;a h&egrave; để che nắng, che bụi, hay che mưa. Với nhiều c&ocirc;ng dụng, khi mặc th&igrave; gọn nhẹ, những bộ gi&oacute; ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng tin tưởng v&agrave; sử dụng. Được l&agrave;m từ chất liệu chọn lọc, mẫu m&atilde; thời trang, nhiều m&agrave;u sắc để lựa chọn.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Bạc H&agrave; - Hồng</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;́ng đứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, NULL),
(14, 'ĐẦM KẺ TWEED CHỮ A', '2000000', '1637328245_damkeTweedchuA.jpg', 20, 6, 4, 2, 4, '<p>Đầm &ocirc;m 2 lớp cổ kiểu. Tay hến, c&oacute; đ&iacute;nh hoa nổi c&agrave;i.&nbsp;Eo chiết k&egrave;m đai liền đồng m&agrave;u.&nbsp;T&ugrave;ng v&aacute;y d&agrave;i qua gối, xẻ ph&iacute;a trước. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sự kết hợp chi tiết tay hến mới lạ, kh&ocirc;ng qu&aacute; ph&ocirc; trương nhưng đủ để n&agrave;ng khoe kh&eacute;o vẻ đẹp quyến rũ đầy tinh tế. Chất liệu Tuysi&nbsp;cao cấp v&agrave; sang trọng: mặt vải trơn m&aacute;t, kh&ocirc;ng b&aacute;m d&iacute;nh l&ecirc;n người rất thoải m&aacute;i v&agrave; đặc biệt &iacute;t nhăn lại dễ ủi&hellip;. Chỉ cần mix th&ecirc;m phụ kiện đơn giản n&agrave;ng nổi bật đến sở l&agrave;m.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;T&iacute;m Lavender - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay hến</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 1),
(15, 'ĐẦM NHIUNG CỔ VUÔNG', '4200000', '1637328372_damnhungcovuong.jpg', 10, 6, 4, 3, 7, '<p>Đầm &ocirc;m 2 lớp cổ kiểu. Tay hến, c&oacute; đ&iacute;nh hoa nổi c&agrave;i.&nbsp;Eo chiết k&egrave;m đai liền đồng m&agrave;u.&nbsp;T&ugrave;ng v&aacute;y d&agrave;i qua gối, xẻ ph&iacute;a trước. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sự kết hợp chi tiết tay hến mới lạ, kh&ocirc;ng qu&aacute; ph&ocirc; trương nhưng đủ để n&agrave;ng khoe kh&eacute;o vẻ đẹp quyến rũ đầy tinh tế. Chất liệu Tuysi&nbsp;cao cấp v&agrave; sang trọng: mặt vải trơn m&aacute;t, kh&ocirc;ng b&aacute;m d&iacute;nh l&ecirc;n người rất thoải m&aacute;i v&agrave; đặc biệt &iacute;t nhăn lại dễ ủi&hellip;. Chỉ cần mix th&ecirc;m phụ kiện đơn giản n&agrave;ng nổi bật đến sở l&agrave;m.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;T&iacute;m Lavender - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay hến</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 1),
(16, 'ĐẦM ÔM PHỐI REN', '22000000', '1637328589_damomphoiren.jpg', 9, 5, 4, 4, 9, '<p>Đầm &ocirc;m 2 lớp cổ kiểu. Tay hến, c&oacute; đ&iacute;nh hoa nổi c&agrave;i.&nbsp;Eo chiết k&egrave;m đai liền đồng m&agrave;u.&nbsp;T&ugrave;ng v&aacute;y d&agrave;i qua gối, xẻ ph&iacute;a trước. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sự kết hợp chi tiết tay hến mới lạ, kh&ocirc;ng qu&aacute; ph&ocirc; trương nhưng đủ để n&agrave;ng khoe kh&eacute;o vẻ đẹp quyến rũ đầy tinh tế. Chất liệu Tuysi&nbsp;cao cấp v&agrave; sang trọng: mặt vải trơn m&aacute;t, kh&ocirc;ng b&aacute;m d&iacute;nh l&ecirc;n người rất thoải m&aacute;i v&agrave; đặc biệt &iacute;t nhăn lại dễ ủi&hellip;. Chỉ cần mix th&ecirc;m phụ kiện đơn giản n&agrave;ng nổi bật đến sở l&agrave;m.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;T&iacute;m Lavender - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay hến</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 1),
(17, 'ĐẦM XÒE CỔ ĐỨC CÁCH ĐIỆU', '2900000', '1637328777_damxoecoduccachdieu.jpg', 20, 6, 4, 1, 6, '<p>Đầm &ocirc;m 2 lớp cổ kiểu. Tay hến, c&oacute; đ&iacute;nh hoa nổi c&agrave;i.&nbsp;Eo chiết k&egrave;m đai liền đồng m&agrave;u.&nbsp;T&ugrave;ng v&aacute;y d&agrave;i qua gối, xẻ ph&iacute;a trước. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sự kết hợp chi tiết tay hến mới lạ, kh&ocirc;ng qu&aacute; ph&ocirc; trương nhưng đủ để n&agrave;ng khoe kh&eacute;o vẻ đẹp quyến rũ đầy tinh tế. Chất liệu Tuysi&nbsp;cao cấp v&agrave; sang trọng: mặt vải trơn m&aacute;t, kh&ocirc;ng b&aacute;m d&iacute;nh l&ecirc;n người rất thoải m&aacute;i v&agrave; đặc biệt &iacute;t nhăn lại dễ ủi&hellip;. Chỉ cần mix th&ecirc;m phụ kiện đơn giản n&agrave;ng nổi bật đến sở l&agrave;m.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;T&iacute;m Lavender - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay hến</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, NULL),
(18, 'ĐẦM REN ÔM VIỀN MÀU', '2000000', '1637328838_damrenomvienmau.jpg', 10, 8, 4, 3, 4, '<p>Đầm &ocirc;m 2 lớp cổ kiểu. Tay hến, c&oacute; đ&iacute;nh hoa nổi c&agrave;i.&nbsp;Eo chiết k&egrave;m đai liền đồng m&agrave;u.&nbsp;T&ugrave;ng v&aacute;y d&agrave;i qua gối, xẻ ph&iacute;a trước. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sự kết hợp chi tiết tay hến mới lạ, kh&ocirc;ng qu&aacute; ph&ocirc; trương nhưng đủ để n&agrave;ng khoe kh&eacute;o vẻ đẹp quyến rũ đầy tinh tế. Chất liệu Tuysi&nbsp;cao cấp v&agrave; sang trọng: mặt vải trơn m&aacute;t, kh&ocirc;ng b&aacute;m d&iacute;nh l&ecirc;n người rất thoải m&aacute;i v&agrave; đặc biệt &iacute;t nhăn lại dễ ủi&hellip;. Chỉ cần mix th&ecirc;m phụ kiện đơn giản n&agrave;ng nổi bật đến sở l&agrave;m.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;T&iacute;m Lavender - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay hến</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, NULL),
(19, 'BOOTS CAO GÓT CỔ LỬNG', '10000000', '1637329186_bootscaocolung.jpg', 9, 5, 6, 4, 9, '<p>Đẹp</p>', '2021-11-19', 1, NULL, NULL),
(20, 'BOOTS CAO GÓT KHÓA TRÒN', '12000000', '1637329276_bootscaogotkhoatron.jpg', 9, 5, 6, 3, 9, '<p>Đẹp</p>', '2021-11-19', 1, NULL, 1),
(21, 'GIÀY CAO GÓT MŨI NHỌN', '10000000', '1637329322_giaycaogotmuinhon.jpg', 10, 5, 6, 3, 9, '<p>Đẹp</p>', '2021-11-19', 1, NULL, 1),
(22, 'GIÀY CAO GÓT PHỐI LƯỚI', '2000000', '1637329365_giaycaogotphoiluoi.jpg', 10, 7, 6, 4, 4, '<p>Đẹp qu&aacute; !</p>', '2021-11-19', 1, NULL, NULL),
(23, 'BALO DA HỌA TIẾT', '1900000', '1637329860_balodahoatiet.jpg', 7, 5, 7, 4, 4, '<p>Thiết kế đứng phom, c&oacute; nắp đ&oacute;ng mở bằng kh&oacute;a kim loại. Mặt sau in logo IVY moda. D&acirc;y&nbsp;đeo ch&eacute;o phối x&iacute;ch v&agrave; da đi k&egrave;m, kh&ocirc;ng&nbsp;th&aacute;o rời. B&ecirc;n trong l&oacute;t vải, c&oacute; 1 ngăn lớn k&eacute;o kh&oacute;a b&ecirc;n trong 1&nbsp;ngăn phụ. Kh&ocirc;ng c&oacute; nắp. B&ecirc;n ngo&agrave;i chần chỉ nổi tạo điểm nhấn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;Cao x R&ocirc;̣ng x S&acirc;u: 15 x 22 x 8&nbsp;cm</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 1),
(24, 'TÚI MINI BAG KHÓA TUA RUA', '12000000', '1637329911_tuiminibagkhoatuarua.jpg', 8, 5, 7, 4, 4, '<p>Thiết kế đứng phom, c&oacute; nắp đ&oacute;ng mở bằng kh&oacute;a kim loại. Mặt sau in logo IVY moda. D&acirc;y&nbsp;đeo ch&eacute;o phối x&iacute;ch v&agrave; da đi k&egrave;m, kh&ocirc;ng&nbsp;th&aacute;o rời. B&ecirc;n trong l&oacute;t vải, c&oacute; 1 ngăn lớn k&eacute;o kh&oacute;a b&ecirc;n trong 1&nbsp;ngăn phụ. Kh&ocirc;ng c&oacute; nắp. B&ecirc;n ngo&agrave;i chần chỉ nổi tạo điểm nhấn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;Cao x R&ocirc;̣ng x S&acirc;u: 15 x 22 x 8&nbsp;cm</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, '10000000', 11),
(25, 'TÚI XÁCH DÁN KIỂU', '2000000', '1637329975_tuixachdankieu.jpg', 10, 6, 7, 4, 9, '<p>Thiết kế đứng phom, c&oacute; nắp đ&oacute;ng mở bằng kh&oacute;a kim loại. Mặt sau in logo IVY moda. D&acirc;y&nbsp;đeo ch&eacute;o phối x&iacute;ch v&agrave; da đi k&egrave;m, kh&ocirc;ng&nbsp;th&aacute;o rời. B&ecirc;n trong l&oacute;t vải, c&oacute; 1 ngăn lớn k&eacute;o kh&oacute;a b&ecirc;n trong 1&nbsp;ngăn phụ. Kh&ocirc;ng c&oacute; nắp. B&ecirc;n ngo&agrave;i chần chỉ nổi tạo điểm nhấn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;Cao x R&ocirc;̣ng x S&acirc;u: 15 x 22 x 8&nbsp;cm</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, NULL),
(26, 'TÚI SỌC DỌC KÈM CHARM', '10000000', '1637330061_tuisocdockemcharm.jpg', 6, 5, 7, 4, 9, '<p>Thiết kế đứng phom, c&oacute; nắp đ&oacute;ng mở bằng kh&oacute;a kim loại. Mặt sau in logo IVY moda. D&acirc;y&nbsp;đeo ch&eacute;o phối x&iacute;ch v&agrave; da đi k&egrave;m, kh&ocirc;ng&nbsp;th&aacute;o rời. B&ecirc;n trong l&oacute;t vải, c&oacute; 1 ngăn lớn k&eacute;o kh&oacute;a b&ecirc;n trong 1&nbsp;ngăn phụ. Kh&ocirc;ng c&oacute; nắp. B&ecirc;n ngo&agrave;i chần chỉ nổi tạo điểm nhấn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;Cao x R&ocirc;̣ng x S&acirc;u: 15 x 22 x 8&nbsp;cm</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-19', 1, NULL, 2),
(27, 'KÍNH RÂM THỜI TRANG CAO CẤP', '1000000', '1637330272_kỉnhamthoitrangcaocap.jpg', 9, 5, 8, 2, 9, '<p><strong>&ndash; Tr&ograve;ng k&iacute;nh:</strong>&nbsp;tr&ograve;ng k&iacute;nh ph&acirc;n cực Polarized bền bỉ c&oacute; khả năng chống tia cực t&iacute;m UV400 g&acirc;y hại cho mắt, chống ch&oacute;i l&oacute;a, tạo h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; tăng độ tương phản m&agrave;u sắc, gi&uacute;p người đeo k&iacute;nh quan s&aacute;t tốt hơn.</p>\r\n\r\n<p>Sở hữu form d&aacute;ng trendy, thời thượng. Phi&ecirc;n bản được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đ&aacute;o như: gi&aacute; trị sử dụng l&acirc;u d&agrave;i, mặt k&iacute;nh b&oacute;ng đẹp, kh&oacute; bị gỉ, chống chịu tốt bởi t&aacute;c động của m&ocirc;i trường, &hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c k&iacute;ch thước của k&iacute;nh được thiết kế tối ưu với gương mặt Việt. Phần cầu k&iacute;nh c&oacute; chiều rộng đạt chuẩn, c&acirc;n đối d&aacute;ng k&iacute;nh, đồng thời gi&uacute;p người sử dụng nh&igrave;n đ&uacute;ng trọng t&acirc;m.&nbsp;Thiết kế n&agrave;y&nbsp;ph&ugrave; hợp cho mọi khu&ocirc;n mặt, kiểu d&aacute;ng ph&ugrave; hợp cho cả nam v&agrave; nữ. Bạn c&oacute; thể đeo thời trang, đeo chống nắng ,chống bụi. Th&iacute;ch hợp cho việc sử dụng khi đi đường, d&atilde; ngoại&hellip;</p>\r\n\r\n<p>M&agrave;u sắc: Đen</p>', '2021-11-19', 1, NULL, 1),
(28, 'KÍNH RÂM GỌNG HỌA TIẾT', '10000000', '1637330350_kinhramgonghoatiet.jpg', 9, 5, 8, 3, 9, '<p><strong>&ndash; Tr&ograve;ng k&iacute;nh:</strong>&nbsp;tr&ograve;ng k&iacute;nh ph&acirc;n cực Polarized bền bỉ c&oacute; khả năng chống tia cực t&iacute;m UV400 g&acirc;y hại cho mắt, chống ch&oacute;i l&oacute;a, tạo h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; tăng độ tương phản m&agrave;u sắc, gi&uacute;p người đeo k&iacute;nh quan s&aacute;t tốt hơn.</p>\r\n\r\n<p>Sở hữu form d&aacute;ng trendy, thời thượng. Phi&ecirc;n bản được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đ&aacute;o như: gi&aacute; trị sử dụng l&acirc;u d&agrave;i, mặt k&iacute;nh b&oacute;ng đẹp, kh&oacute; bị gỉ, chống chịu tốt bởi t&aacute;c động của m&ocirc;i trường, &hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c k&iacute;ch thước của k&iacute;nh được thiết kế tối ưu với gương mặt Việt. Phần cầu k&iacute;nh c&oacute; chiều rộng đạt chuẩn, c&acirc;n đối d&aacute;ng k&iacute;nh, đồng thời gi&uacute;p người sử dụng nh&igrave;n đ&uacute;ng trọng t&acirc;m.&nbsp;Thiết kế n&agrave;y&nbsp;ph&ugrave; hợp cho mọi khu&ocirc;n mặt, kiểu d&aacute;ng ph&ugrave; hợp cho cả nam v&agrave; nữ. Bạn c&oacute; thể đeo thời trang, đeo chống nắng ,chống bụi. Th&iacute;ch hợp cho việc sử dụng khi đi đường, d&atilde; ngoại&hellip;</p>\r\n\r\n<p>M&agrave;u sắc: Đen</p>', '2021-11-19', 1, NULL, 3),
(29, 'KÍNH RÂM THỜI TRANG CAO CẤP', '1000000', '1637330395_kinhramthoitrangcaocap.jpg', 7, 5, 8, 2, 9, '<p><strong>&ndash; Tr&ograve;ng k&iacute;nh:</strong>&nbsp;tr&ograve;ng k&iacute;nh ph&acirc;n cực Polarized bền bỉ c&oacute; khả năng chống tia cực t&iacute;m UV400 g&acirc;y hại cho mắt, chống ch&oacute;i l&oacute;a, tạo h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; tăng độ tương phản m&agrave;u sắc, gi&uacute;p người đeo k&iacute;nh quan s&aacute;t tốt hơn.</p>\r\n\r\n<p>Sở hữu form d&aacute;ng trendy, thời thượng. Phi&ecirc;n bản được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đ&aacute;o như: gi&aacute; trị sử dụng l&acirc;u d&agrave;i, mặt k&iacute;nh b&oacute;ng đẹp, kh&oacute; bị gỉ, chống chịu tốt bởi t&aacute;c động của m&ocirc;i trường, &hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c k&iacute;ch thước của k&iacute;nh được thiết kế tối ưu với gương mặt Việt. Phần cầu k&iacute;nh c&oacute; chiều rộng đạt chuẩn, c&acirc;n đối d&aacute;ng k&iacute;nh, đồng thời gi&uacute;p người sử dụng nh&igrave;n đ&uacute;ng trọng t&acirc;m.&nbsp;Thiết kế n&agrave;y&nbsp;ph&ugrave; hợp cho mọi khu&ocirc;n mặt, kiểu d&aacute;ng ph&ugrave; hợp cho cả nam v&agrave; nữ. Bạn c&oacute; thể đeo thời trang, đeo chống nắng ,chống bụi. Th&iacute;ch hợp cho việc sử dụng khi đi đường, d&atilde; ngoại&hellip;</p>\r\n\r\n<p>M&agrave;u sắc: Đen</p>', '2021-11-19', 1, NULL, 6),
(30, 'KÍNH RÂM ĐEN CAO CẤP', '10000000', '1637330433_kinhrandencaocap.jpg', 2, 6, 8, 3, 7, '<p><strong>&ndash; Tr&ograve;ng k&iacute;nh:</strong>&nbsp;tr&ograve;ng k&iacute;nh ph&acirc;n cực Polarized bền bỉ c&oacute; khả năng chống tia cực t&iacute;m UV400 g&acirc;y hại cho mắt, chống ch&oacute;i l&oacute;a, tạo h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; tăng độ tương phản m&agrave;u sắc, gi&uacute;p người đeo k&iacute;nh quan s&aacute;t tốt hơn.</p>\r\n\r\n<p>Sở hữu form d&aacute;ng trendy, thời thượng. Phi&ecirc;n bản được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đ&aacute;o như: gi&aacute; trị sử dụng l&acirc;u d&agrave;i, mặt k&iacute;nh b&oacute;ng đẹp, kh&oacute; bị gỉ, chống chịu tốt bởi t&aacute;c động của m&ocirc;i trường, &hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c k&iacute;ch thước của k&iacute;nh được thiết kế tối ưu với gương mặt Việt. Phần cầu k&iacute;nh c&oacute; chiều rộng đạt chuẩn, c&acirc;n đối d&aacute;ng k&iacute;nh, đồng thời gi&uacute;p người sử dụng nh&igrave;n đ&uacute;ng trọng t&acirc;m.&nbsp;Thiết kế n&agrave;y&nbsp;ph&ugrave; hợp cho mọi khu&ocirc;n mặt, kiểu d&aacute;ng ph&ugrave; hợp cho cả nam v&agrave; nữ. Bạn c&oacute; thể đeo thời trang, đeo chống nắng ,chống bụi. Th&iacute;ch hợp cho việc sử dụng khi đi đường, d&atilde; ngoại&hellip;</p>\r\n\r\n<p>M&agrave;u sắc: Đen</p>', '2021-11-19', 1, NULL, 3),
(31, 'ĐẦM XÒE CỔ DẸP CÁCH ĐIỆU', '1000000', '1637946723_damxoecoduccachdieu.jpg', 10, 6, 4, 2, 7, '<p>&Aacute;o len &ocirc;m cổ cao, tay s&aacute;t n&aacute;ch. D&aacute;ng &aacute;o &ocirc;m cơ thể.&nbsp;</p>\r\n\r\n<p>Được thiết kế kiểu d&aacute;ng thời trang, th&iacute;ch hợp mix với nhiều trang phục kh&aacute;c nhau: Zu&yacute;p, quần Jeans, legging....Với chất len mềm, mịn chiếc &aacute;o sẽ trở n&ecirc;n item đắt gi&aacute; trong m&ugrave;a Thu Đ&ocirc;ng n&agrave;y.</p>\r\n\r\n<p>M&agrave;u sắc: Nude - Đen - Xanh Lơ</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Sát nách</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Len</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-11-26', 1, '500000', 1),
(32, 'ĐẦM LEN DÁNG ÔM', '2000000', '1638795149_damlendangom.jpg', 10, 7, 4, 2, 5, '<p>Đầm len cổ tr&ograve;n, d&aacute;ng &ocirc;m body. Tay &aacute;o lỡ. 2 viền t&uacute;i giả ph&iacute;a trước.&nbsp;Viền bo len g&acirc;n co gi&atilde;n. Vải họa tiết bắt mắt.</p>\r\n\r\n<p>Được may từ chất liệu len mềm mịn cho cảm gi&aacute;c mềm mại, ấm &aacute;p v&agrave; v&ocirc; c&ugrave;ng dễ chịu khi mặc.&nbsp;M&agrave;u sắc đơn sắc&nbsp;nhưng kh&ocirc;ng k&eacute;m phần trẻ trung, gi&uacute;p ph&aacute;i đẹp th&ecirc;m tự tin mỗi khi xuống phố.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Họa tiết Đỏ Cam - Họa tiết Đen - Họa tiết Xanh L&aacute;</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay lỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Họa ti&ecirc;́t khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Len</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-12-06', 1, '1000000', 4),
(33, 'ĐẦM LEN DÁNG CHỮ A', '2000000', '1638795338_damlendangchuA.jpg', 10, 5, 4, 2, 4, '<p>Đầm len cổ tr&ograve;n, d&aacute;ng chữ A. Tay &aacute;o d&agrave;i, gấu bo cao tạo phồng. Viền bo len g&acirc;n co gi&atilde;n.</p>\r\n\r\n<p>Được may từ chất liệu len mềm mịn cho cảm gi&aacute;c mềm mại, ấm &aacute;p v&agrave; v&ocirc; c&ugrave;ng dễ chịu khi mặc.&nbsp;M&agrave;u sắc đơn sắc&nbsp;nhưng kh&ocirc;ng k&eacute;m phần trẻ trung, gi&uacute;p ph&aacute;i đẹp th&ecirc;m tự tin mỗi khi xuống phố.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Hồng -&nbsp;T&iacute;m Lavender -&nbsp;N&acirc;u C&agrave; Ph&ecirc;</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Chữ A</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Tr&ecirc;n g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Len</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-12-06', 1, '1000000', NULL),
(34, 'ĐÂM LEN CỔ TIM', '2900000', '1638795512_damlencotim.jpg', 10, 5, 4, 4, 6, '<p>Đầm len cổ tim. Cổ tim. D&aacute;ng kh&ocirc;ng tay. Vải sọc len g&acirc;n. Độ d&agrave;i v&aacute;y ngang bắp.</p>\r\n\r\n<p>Thiết kế đầm &ocirc;m gi&uacute;p ph&aacute;i nữ trở n&ecirc;n sang trọng v&agrave; hiện đại mỗi khi đến c&ocirc;ng sở hoặc khi xuống phố. Với chiếc đầm d&agrave;i&nbsp;n&agrave;y, bạn c&oacute; thể dễ d&agrave;ng mix c&ugrave;ng nhiều kiểu&nbsp;<strong>&aacute;o kho&aacute;c</strong>&nbsp;m&ugrave;a đ&ocirc;ng kh&aacute;c nhau.</p>\r\n\r\n<p>M&agrave;u sắc: Nude - V&agrave;ng hoa c&uacute;c -&nbsp;Bạc H&agrave;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tim</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Kh&ocirc;ng tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Chữ A</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang bắp</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Len</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-12-06', 1, '1000000', NULL),
(35, 'DÉP XOĂN ĐAN GÓT TRÒN', '12000000', '1638882053_depxoandangottron.jpg', 10, 8, 6, 3, 6, '<p>D&eacute;p&nbsp;cao g&oacute;t h&igrave;nh tr&ograve;n. C&oacute; 1 quai ngang v&agrave; nh&uacute;m tạo kiểu. G&oacute;t cao 5cm. Mũi bo vu&ocirc;ng</p>\r\n\r\n<p>M&agrave;u sắc: Trắng - Ghi T&iacute;m</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Gi&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xăng đan</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2021-12-07', 0, '1200000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `Brand` int(11) NOT NULL,
  `BrandName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`Brand`, `BrandName`) VALUES
(1, 'ThorMetal'),
(2, 'Louis Vuitton'),
(3, 'Gucci'),
(4, 'Hermes');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `DetailID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `BillID` int(11) NOT NULL,
  `ProductCount` int(11) NOT NULL,
  `Note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`DetailID`, `ProductID`, `BillID`, `ProductCount`, `Note`) VALUES
(22, 3, 9, 2, '1200000'),
(23, 5, 9, 2, '1400000'),
(24, 4, 9, 3, '1300000'),
(25, 2, 10, 2, '1000000'),
(26, 5, 10, 2, '1400000'),
(27, 2, 11, 1, '1000000'),
(28, 3, 11, 1, '1200000'),
(29, 5, 11, 1, '1400000'),
(30, 3, 12, 2, '1200000'),
(31, 5, 12, 3, '1400000'),
(32, 2, 14, 1, '1000000'),
(33, 8, 15, 2, '1300000'),
(34, 3, 16, 2, '1200000'),
(35, 11, 17, 3, '1200000'),
(36, 3, 17, 1, '1200000'),
(37, 3, 19, 2, '1200000'),
(38, 11, 19, 3, '1200000'),
(39, 4, 19, 1, '1300000'),
(40, 3, 20, 1, '1200000'),
(41, 4, 20, 1, '1300000'),
(42, 26, 21, 1, '10000000'),
(43, 3, 22, 3, '1200000'),
(44, 28, 22, 1, '10000000'),
(45, 11, 24, 1, '1200000'),
(46, 24, 25, 2, '12000000'),
(47, 30, 25, 2, '10000000'),
(48, 23, 26, 2, '1900000'),
(49, 29, 27, 3, '1000000'),
(50, 26, 28, 1, '10000000'),
(51, 30, 29, 1, '10000000'),
(52, 30, 30, 1, '10000000'),
(53, 19, 31, 1, '10000000'),
(54, 26, 31, 1, '10000000'),
(55, 27, 31, 1, '1000000'),
(56, 20, 32, 1, '12000000'),
(57, 30, 33, 3, '10000000'),
(58, 16, 34, 1, '22000000'),
(59, 26, 34, 1, '10000000'),
(60, 30, 35, 1, '10000000'),
(61, 23, 35, 1, '1900000');

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE `product_sale` (
  `Sale` int(11) NOT NULL,
  `SaleName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`Sale`, `SaleName`) VALUES
(4, 10),
(5, 20),
(6, 25),
(7, 30),
(8, 35),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `Size` int(11) NOT NULL,
  `SizeName` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`Size`, `SizeName`) VALUES
(5, 'XL'),
(6, 'XXL'),
(7, 'XLX'),
(8, '2XL');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `Type` int(11) NOT NULL,
  `TypeName` varchar(20) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`Type`, `TypeName`, `Status`) VALUES
(1, 'ÁO', 1),
(2, 'QUẦN', 1),
(4, 'ĐẦM', 1),
(6, 'GIẦY', 1),
(7, 'TÚI XÁCH', 1),
(8, 'KÍNH', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_product`
--

CREATE TABLE `rating_product` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_product`
--

INSERT INTO `rating_product` (`id`, `ProductID`, `Rate`, `CustomerID`, `Status`, `Comment`) VALUES
(17, 26, 4, 16, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp'),
(22, 30, 4, 16, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp lại vừa rẻ nữ nè'),
(23, 30, 5, 1, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp'),
(24, 19, 4, 1, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp'),
(25, 26, 5, 1, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp'),
(26, 27, 4, 1, 1, 'Sản phẩm cừa chất lượng lại vừa đẹp, đúng là đẳng cấp lại vừa rẻ nữ nè'),
(27, 20, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleName` varchar(50) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleName`, `idRole`) VALUES
('admin', 1),
('Xem thông tin khách hàng', 2),
('Xem đơn hàng', 3),
('Chỉnh sửa đơn hàng', 4),
('In đơn hàng', 5),
('Hủy đơn hàng', 6),
('Xem sản phẩm', 7),
('Thêm sản phẩm mới', 8),
('Chỉnh sửa thông tin sản phẩm', 9),
('Xóa sản phẩm', 10),
('Ẩn sản phẩm', 11),
('Xem danh mục sản phẩm', 12),
('Thêm, xóa, Sửa danh mục sản phẩm', 13),
('Ẩn danh mục sản phẩm', 14),
('Xem mã giảm giá', 15),
('Thêm, xóa, Sửa mã giảm giá', 16),
('Thêm, xóa, mã giảm giá cho khách hàng', 17),
('Xem tiêu đề tinh tức', 18),
('Thêm,xóa, Sửa tiêu đề tin tức', 19),
('Xem tin tức', 20),
('Thêm, xóa, Sửa tin tức', 21),
('Thêm, xóa, sửa slide', 22);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `ID` int(11) NOT NULL,
  `SlideName` varchar(50) NOT NULL,
  `SlideImage` varchar(200) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`ID`, `SlideName`, `SlideImage`, `Status`) VALUES
(2, 'slide1', '1638534761_slide1.jpg', 1),
(3, 'slide2', '1638535133_slide3.jpg', 1),
(4, 'slide3', '1638535175_slide2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `statistical`
--

CREATE TABLE `statistical` (
  `id_statistical` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `sales` varchar(200) NOT NULL,
  `profit` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statistical`
--

INSERT INTO `statistical` (`id_statistical`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(1, '2020-11-08', '20000000', '7000000', 90, 10),
(2, '2020-11-07', '68000000', '9000000', 60, 8),
(3, '2020-11-06', '30000000', '3000000', 45, 7),
(4, '2020-11-05', '45000000', '3800000', 30, 9),
(5, '2020-11-04', '30000000', '1500000', 15, 12),
(6, '2020-11-03', '8000000', '700000', 65, 30),
(7, '2020-11-02', '28000000', '23000000', 32, 20),
(8, '2020-11-01', '25000000', '20000000', 7, 6),
(9, '2020-10-31', '36000000', '28000000', 40, 15),
(10, '2020-10-30', '50000000', '13000000', 89, 19),
(11, '2020-10-29', '20000000', '15000000', 63, 11),
(12, '2020-10-28', '25000000', '16000000', 94, 14),
(13, '2020-10-27', '32000000', '17000000', 16, 10),
(14, '2020-10-26', '33000000', '19000000', 14, 5),
(15, '2020-10-25', '36000000', '18000000', 22, 12),
(16, '2020-10-24', '34000000', '20000000', 33, 20),
(17, '2020-10-23', '25000000', '16000000', 94, 14),
(18, '2020-10-22', '12000000', '7000000', 16, 10),
(19, '2020-10-21', '63000000', '19000000', 14, 5),
(20, '2020-10-20', '66000000', '18000000', 22, 12),
(21, '2020-10-19', '74000000', '20000000', 33, 20),
(22, '2020-10-18', '63000000', '19000000', 14, 5),
(23, '2020-10-17', '66000000', '18000000', 23, 12),
(24, '2020-10-16', '74000000', '20000000', 32, 20),
(25, '2020-10-15', '63000000', '19000000', 14, 5),
(26, '2020-10-14', '66000000', '18000000', 23, 12),
(27, '2020-10-13', '74000000', '20000000', 33, 20),
(28, '2020-10-12', '66000000', '18000000', 23, 12),
(29, '2020-10-11', '74000000', '20000000', 10, 20),
(30, '2020-10-10', '63000000', '19000000', 14, 5),
(31, '2020-10-09', '66000000', '18000000', 23, 12),
(32, '2020-10-08', '74000000', '20000000', 15, 20),
(33, '2020-10-07', '66000000', '18000000', 23, 12),
(34, '2020-10-06', '74000000', '20000000', 30, 22),
(35, '2020-10-05', '66000000', '18000000', 23, 12),
(36, '2020-10-04', '74000000', '20000000', 32, 20),
(37, '2020-10-03', '63000000', '19000000', 14, 5),
(38, '2020-10-02', '66000000', '18000000', 23, 12),
(39, '2020-10-01', '74000000', '20000000', 32, 20),
(40, '2020-09-30', '63000000', '19000000', 14, 5),
(41, '2020-09-29', '66000000', '18000000', 23, 12),
(42, '2020-09-28', '74000000', '20000000', 15, 20),
(43, '2020-09-27', '66000000', '18000000', 23, 12),
(44, '2020-09-26', '74000000', '20000000', 30, 22),
(45, '2020-09-25', '66000000', '18000000', 23, 12),
(46, '2020-09-24', '74000000', '20000000', 32, 20),
(47, '2020-09-23', '63000000', '19000000', 14, 5),
(48, '2020-09-22', '66000000', '18000000', 23, 12),
(49, '2020-09-21', '74000000', '20000000', 32, 20),
(50, '2020-09-20', '63000000', '19000000', 14, 5),
(51, '2020-09-19', '66000000', '18000000', 23, 12),
(52, '2020-09-18', '74000000', '20000000', 15, 20),
(53, '2020-09-17', '66000000', '18000000', 23, 12),
(54, '2020-09-16', '74000000', '20000000', 30, 22),
(55, '2020-09-15', '66000000', '18000000', 23, 12),
(56, '2020-09-14', '74000000', '20000000', 32, 20),
(57, '2020-09-13', '63000000', '19000000', 14, 5),
(58, '2020-09-12', '66000000', '18000000', 23, 12),
(59, '2020-09-11', '74000000', '20000000', 32, 20),
(60, '2020-09-10', '63000000', '19000000', 14, 5),
(61, '2020-09-09', '66000000', '18000000', 23, 12),
(62, '2020-09-08', '74000000', '20000000', 15, 20),
(63, '2020-09-07', '66000000', '18000000', 23, 12),
(64, '2020-09-06', '74000000', '20000000', 30, 22),
(65, '2020-09-05', '66000000', '18000000', 23, 12),
(66, '2020-09-04', '74000000', '20000000', 32, 20),
(67, '2020-09-03', '63000000', '19000000', 14, 5),
(68, '2020-09-02', '66000000', '18000000', 23, 12),
(69, '2020-09-01', '74000000', '20000000', 32, 20),
(70, '2021-10-10', '1000000000', '100000000', 1000, 100),
(71, '2021-12-18', '800000000', '700000000', 1000, 100),
(72, '2021-12-15', '100000000', '500000', 1000, 100),
(73, '2021-12-15', '1000000', '800000', 1000, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `PayID` (`PayID`),
  ADD KEY `discountID` (`discountID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `detail_news`
--
ALTER TABLE `detail_news`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NewsID` (`NewsID`);

--
-- Indexes for table `detail_role`
--
ALTER TABLE `detail_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAdmin` (`idAdmin`),
  ADD KEY `idRole` (`idRole`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discountID`);

--
-- Indexes for table `discount_detail`
--
ALTER TABLE `discount_detail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `discountID` (`discountID`);

--
-- Indexes for table `method_pay`
--
ALTER TABLE `method_pay`
  ADD PRIMARY KEY (`PayID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `Size` (`Size`),
  ADD KEY `Type` (`Type`),
  ADD KEY `Brand` (`Brand`),
  ADD KEY `Sale` (`Sale`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`Brand`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `BillID` (`BillID`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`Sale`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`Size`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `rating_product`
--
ALTER TABLE `rating_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistical`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `detail_news`
--
ALTER TABLE `detail_news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_role`
--
ALTER TABLE `detail_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discount_detail`
--
ALTER TABLE `discount_detail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `method_pay`
--
ALTER TABLE `method_pay`
  MODIFY `PayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `Brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `Sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `Size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `Type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating_product`
--
ALTER TABLE `rating_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`PayID`) REFERENCES `method_pay` (`PayID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`discountID`) REFERENCES `discount` (`discountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_news`
--
ALTER TABLE `detail_news`
  ADD CONSTRAINT `detail_news_ibfk_1` FOREIGN KEY (`NewsID`) REFERENCES `news` (`NewsID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_role`
--
ALTER TABLE `detail_role`
  ADD CONSTRAINT `detail_role_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_role_ibfk_2` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discount_detail`
--
ALTER TABLE `discount_detail`
  ADD CONSTRAINT `discount_detail_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discount_detail_ibfk_3` FOREIGN KEY (`discountID`) REFERENCES `discount` (`discountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Size`) REFERENCES `product_size` (`Size`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Brand`) REFERENCES `product_brand` (`Brand`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`Type`) REFERENCES `product_type` (`Type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`Sale`) REFERENCES `product_sale` (`Sale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_detail_ibfk_2` FOREIGN KEY (`BillID`) REFERENCES `bill` (`BillID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_product`
--
ALTER TABLE `rating_product`
  ADD CONSTRAINT `rating_product_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_product_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
