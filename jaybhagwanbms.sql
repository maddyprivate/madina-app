-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2021 at 09:48 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaybhagwanbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `accountName` varchar(50) NOT NULL,
  `accountNo` varchar(20) DEFAULT NULL,
  `ifscCode` varchar(20) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '0 for active, 1 for deactive',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `accountName`, `accountNo`, `ifscCode`, `address`, `branch`, `description`, `status`, `updated_at`, `created_at`, `bankName`, `balance`) VALUES
(1, 'JAY BHAGWAN BUILDING MATERIAL SUPPLIERS', '16774011000090', 'PUNB0167710', 'BANER', 'BANER PUNE', 'NA', 1, '2021-08-24 14:47:38', '2021-06-09 18:48:49', 'ORIENTAL BANK OF COMMERS', 6761100.6);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outstandingBalance` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''customer'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `gstin`, `country`, `state`, `person`, `mobile`, `pan`, `address`, `pincode`, `city`, `email`, `outstandingBalance`, `created_at`, `updated_at`, `type`) VALUES
(1, 'A A ASSOCIATES', '27ABNFA5384K1ZV', 'India', 'Maharashtra', 'A A ASSOCIATES', '+91 9921890622', 'ABNFA5384K', 'Baner pune', '411045', 'pune', 'jaybhagwanbms@gmail.com', 18110.00, '2021-06-09 13:47:20', '2021-06-16 15:46:42', 'customer'),
(2, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', 'India', 'Maharashtra', 'ADITYA ASSOCIATE', '+91 9096242315', 'ABGFA6495G', 'Baner', '411045', 'pune', 'jaybhagwan01@gmail.com', 849226.00, '2021-06-09 13:51:13', '2021-10-01 17:38:31', 'customer'),
(3, 'Artistic Design Work', '27AAVFA2537P1ZQ', 'India', 'Maharashtra', 'AAVFA2537P', '+91 9764444594', 'AAVFA2537P', 'Aundh', '411007', 'Pune', NULL, 56205.00, '2021-06-09 14:20:46', '2021-09-24 13:15:49', 'customer'),
(4, 'AUM HOUSING', '27AAKA4028N1Z7', 'India', 'Maharashtra', 'AUM HOUSING', '+91 9850243628', 'AAKA4028N1', 'BANER PUNE 45', '411045', 'pune', NULL, 4725.00, '2021-06-09 14:22:07', '2021-08-13 14:00:46', 'customer'),
(5, 'AVISHKA TRADERS', '27AFYPP6198K1Z6', 'India', 'Maharashtra', 'AVISHKA TRADERS', '+91 9822243901', 'AFYPP6198K', 'NASHIK', '422001', 'NASHIK', NULL, 0.00, '2021-06-09 14:29:11', '2021-06-09 14:29:11', 'customer'),
(6, 'BKBS PROPERTY VENTURES LLP', '27AAUFB8792N1Z9', 'India', 'Maharashtra', 'BKBS PROPERTY VENTURES LLP', '+91 9511726465', 'AAUFB8792N', 'BANER', '411045', 'pune', NULL, 0.00, '2021-06-09 14:32:04', '2021-06-11 12:23:31', 'customer'),
(7, 'FIRST DRAFT ARCHITECTS', '27AAFFF6161P1ZW', 'India', 'Maharashtra', 'FIRST DRAFT ARCHITECTS', '+91 7774051122', 'AAFFF6161P', 'SR. NO. 112/1/2/3. FLAT NO 4, APARTMENT NO 202, ELPREMIERO APARTMENT  CONDOMINIUM.', '411045', 'pune', NULL, 0.00, '2021-06-09 14:34:47', '2021-06-09 14:34:47', 'customer'),
(8, 'HORIZON DEVELOPERS', '27AAEFH9697L1ZH', 'India', 'Maharashtra', 'HORIZON DEVELOPERS', '+91 9657308119', 'AAEFH9697L', 'BANER', '411045', 'pune', NULL, 0.00, '2021-06-09 14:37:49', '2021-06-09 14:37:49', 'customer'),
(9, 'INTEGRATE BUILDCON', '27AAHFI6690K1ZS', 'India', 'Maharashtra', 'INTEGRATE BUILDCON', '+91 9503155588', 'AAHFI6690K', 'KARVENAGAR PUNE', '411052', 'pune', NULL, 0.00, '2021-06-09 14:41:17', '2021-08-24 14:47:51', 'customer'),
(10, 'JAISONS PROPERTIES LLP.', '27AAKFJ3795K1ZO', 'India', 'Maharashtra', 'JAISONS PROPERTIES LLP.', '+91 9657960379', 'AAKFJ3795K', '34, SWAROOP CHAYA APARTMENT, HAPPY COLONY, LANE NO, 2, KOTHRUD PUNE.', '411029', 'pune', NULL, 20135.00, '2021-06-09 14:43:52', '2021-06-29 13:08:43', 'customer'),
(11, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', 'India', 'Maharashtra', 'JAKHAD ENTERPRISES LLP', '+91 9320004101', 'AANFJ8674J', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.', '400063', 'mombai', NULL, 126911.00, '2021-06-09 14:45:12', '2021-09-17 17:21:25', 'customer'),
(12, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', 'India', 'Maharashtra', 'M/S JAISONS QUALITY SYSTEMS', '+91 8788362086', 'AALFJ8872A', 'wakad', '411045', 'pune', NULL, 2929639.00, '2021-06-09 14:47:41', '2021-10-01 17:51:22', 'customer'),
(13, 'MADAN ENTERPRISES', '27AHPPB2250F1ZN', 'India', 'Maharashtra', 'MADAN ENTERPRISES', '+91 9011551220', 'AHPPB2250F', 'AMBEGAON BUDRUK.', '411046', 'pune', NULL, 14355.00, '2021-06-09 14:49:10', '2021-09-17 17:03:38', 'customer'),
(14, 'NIRMITI BUILDCOM', '27AAMFN6503H1Z5', 'India', 'Maharashtra', 'NIRMITI BUILDCOM', '+91 9922471017', 'AAMFN6503H', 'baner pune', '411045', 'pune', NULL, 75083.00, '2021-06-09 14:51:09', '2021-08-12 14:38:43', 'customer'),
(15, 'OMKAR CONSTRUCTION', '27AABF07442F1ZB', 'India', 'Maharashtra', 'OMKAR CONSTRUCTION', '+91 8329560581', 'AABF07442F', 'BAVDHAN PUNE', '411105', 'pune', NULL, 116232.00, '2021-06-09 14:52:27', '2021-06-11 19:10:02', 'customer'),
(16, 'OPULENT HOSPITALITY INDIA PVT. LTD,', '27AABC05631K1ZB', 'India', 'Maharashtra', 'OPULENT HOSPITALITY INDIA PVT. LTD,', '+91 7021924251', 'AABC05631K', '26, ANANDAN, N S ROAD NO.7, J V P D, VILE PARLE WEST, MUMBAI-400049', '400049', 'mumbai', NULL, 0.00, '2021-06-09 14:53:45', '2021-10-01 17:56:00', 'customer'),
(17, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', 'India', 'Maharashtra', 'PAREES PROPERTIES', '+91 9765550708', 'AAVFP3881H', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029', '411029', 'pune', NULL, 71280.00, '2021-06-09 14:55:10', '2021-09-17 17:41:09', 'customer'),
(18, 'R R ENTERPRISES', '27ADLPS5228A1ZK', 'India', 'Maharashtra', 'R R ENTERPRISES', '+91 7020342823', 'ADLPS5228A', '14-B MITTAL COURT 478/479 APP ASHOKA PAVILLION CAMP PUNE', '411001', 'pune', NULL, 0.00, '2021-06-09 14:57:49', '2021-06-09 14:57:49', 'customer'),
(19, 'R. D REALITY', '27AAYFR3982N1ZZ', 'India', 'Maharashtra', 'R. D REALITY', '+91 9822325282', 'AAYFR3982N', 'SITE SWASTIK PARK BANER', '411045', 'pune', NULL, 36548.00, '2021-06-09 14:59:03', '2021-07-08 13:10:39', 'customer'),
(20, 'S K DEVELOPERS', '27ACFFS1684K1ZO', 'India', 'Maharashtra', 'S K DEVELOPERS', '+91 9765399209', 'ACFFS1684K', 'S K BUSINESS PARK BANER PUNE', '411045', 'pune', NULL, 2626.00, '2021-06-09 15:00:24', '2021-06-29 18:32:25', 'customer'),
(21, 'SAHYADRI GROUP OF CONSTRUCTION', '27ADVFS1385F1ZL', 'India', 'Maharashtra', 'SAHYADRI GROUP OF CONSTRUCTION', '+91 9850400007', 'ADVFS1385F', 'WARJE PUNE MAHARASHTRA', '411045', 'pune', NULL, 0.00, '2021-06-09 15:01:35', '2021-06-09 15:01:35', 'customer'),
(22, 'SAMARTHA TRIMURTI PROPERTIES', '27ACCFS2681P1ZI', 'India', 'Maharashtra', 'SAMARTHA TRIMURTI PROPERTIES', '+91 8975528181', 'ACCFS2681P', '41 ESTERA SR NO 41 NEAR SAVTAMALI MANDIR JAMBHE ROAD MALWADI PUNAWALE PUNE', '411033', 'pune', NULL, 335198.00, '2021-06-09 15:02:54', '2021-07-09 13:52:53', 'customer'),
(23, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', 'India', 'Maharashtra', 'SHREE SAIRAJ BUILDCON PROJECTS', '+91 7447722975', 'AHSPB4442N', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038', '411038', 'pune', NULL, 4330394.00, '2021-06-09 15:04:34', '2021-09-16 13:13:44', 'customer'),
(24, 'SHREE SAMARTH ASSOCIATES', '27AAKPB3962P1ZD', 'India', 'Maharashtra', 'SHREE SAMARTH ASSOCIATES', '+91 0000000000', 'AAKPB3962P', 'NEAR GANRAJ CHOUK BANER 45', '411045', 'pune', NULL, 0.00, '2021-06-09 15:09:35', '2021-06-09 15:09:35', 'customer'),
(25, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', 'India', 'Maharashtra', 'SPARK CONSTRUCTION SOLUTION', '+91 9730170748', 'AROPK8923F', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE', '411005', 'pune', NULL, 380191.00, '2021-06-09 15:11:42', '2021-10-01 17:56:28', 'customer'),
(26, 'TANISHKA REALITY', '27AAKFT2720L1ZX', 'India', 'Maharashtra', 'TANISHKA REALITY', '+91 9767355333', 'AAKFT2720L', 'SR. NO. 116, OFFICE NO-208, WALLSTREET -24, 2ND FLOOR, PUNE- BENGULURU HIGHWAY, WARJE, PUNE-411052.', '411052', 'pune', NULL, 0.00, '2021-06-09 15:12:49', '2021-06-09 15:12:49', 'customer'),
(27, 'VASTU INFRA', '27AAKFV3124E1ZA', 'India', 'Maharashtra', 'VASTU INFRA', '+91 9822520707', 'AAKFV3124E', '29/419, LOKMANYANAGAR NAVI PETH, PUNE-411030', '411030', 'pune', NULL, 0.00, '2021-06-09 15:16:53', '2021-06-09 15:16:53', 'customer'),
(28, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', 'India', 'Maharashtra', 'YASHADA DEVLOPERS', '+91 9146058927', 'AAAFY5091M', 'PIMPLE SOUDAGAR', '411025', 'PUNE', NULL, 57960.00, '2021-06-09 17:45:22', '2021-06-28 14:29:20', 'customer'),
(29, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', 'India', 'Maharashtra', 'Mittal Infrastructure pvt ltd', '+91 832958519', 'AAECM4631L', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07', '411014', 'PUNE', NULL, 3056665.00, '2021-06-09 17:51:11', '2021-09-16 13:27:19', 'customer'),
(30, 'KHADKE DEVELOPERS', '27AAKFK4136D1ZH', 'India', 'Maharashtra', 'KHADKE DEVELOPERS', '+91 9822753681', 'AAKFK4136D', 'NASIK', '420003', 'NASIK', NULL, 0.00, '2021-06-09 19:54:51', '2021-06-09 19:54:51', 'customer'),
(31, 'RAJAL ENTERPRISES', '27AAVFR8661B1ZP', 'India', 'Maharashtra', 'RAJAL ENTERPRISES', '+91 8888578234', 'AAVFR8661B', '58/1 HINDUSTAN CHOWK G G ROAD MULUND COLONY MULUND WEST MUMBAI', '400080', 'MUMBAI', NULL, 0.00, '2021-06-09 20:08:25', '2021-06-09 20:08:25', 'customer'),
(32, 'SUPREME INFRA', '27ADTFS0011R1ZJ', 'India', 'Maharashtra', 'SUPREME INFRA', '+91 8668837971', 'ADTFS0011R', 'KOHINOOR SUPPHIRE TATHWADE', '411025', 'PUNE', NULL, 370629.00, '2021-06-10 14:00:55', '2021-07-26 14:42:17', 'customer'),
(33, 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '27AAECR7330R1ZR', 'India', 'Maharashtra', 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '+91 9022499719', 'AAECR7330R', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE', '411024', 'pune', NULL, 36900.00, '2021-06-10 14:59:59', '2021-08-24 17:15:07', 'customer'),
(34, 'GAURAV TRADERS', '27BOWPS3253N1ZX', 'India', 'Maharashtra', 'GAURAV TRADERS', '+91', 'BOWPS3253N', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE', '411043', 'pune', NULL, 1145334.00, '2021-06-10 16:51:44', '2021-09-17 19:11:32', 'customer'),
(35, 'Parklane Construction LLP', '27AATFP4446L1ZH', 'India', 'Maharashtra', 'Parklane Construction LLP', '+91 9960644420', 'AATFP4446L', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.', '411037', 'pune', NULL, 272021.00, '2021-06-10 18:11:29', '2021-08-27 14:38:42', 'customer'),
(36, 'PADALE BUILDCON', '27AAWFP47261ZY', 'India', 'Maharashtra', 'PADALE BUILDCON', '+91 9822051010', 'AAWFP47261', '1ST FLOOR OFFICE NO 101 PADALE HOUSE MAHALUNGE PUNE', '411037', 'pune', NULL, 131670.00, '2021-06-10 18:15:57', '2021-06-11 19:27:38', 'customer'),
(37, 'test M', '27AA1234M12', 'India', 'Maharashtra', 'test person', '+91 9999999999', 'AA1234M12', 'test address', '121212', 'test city', NULL, 205.00, '2021-06-10 20:09:46', '2021-06-10 20:10:49', 'customer'),
(38, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', 'India', 'Maharashtra', 'YOGESH ASSOCIATES', '+91 8459471113', 'AMJPD5463D', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK', '422009', 'nashik', NULL, 92500.00, '2021-06-11 13:31:01', '2021-08-12 14:46:42', 'customer'),
(39, 'THITE NIKAM ASSOCIATES', '27AWPPN0094G1Z8', 'India', 'Maharashtra', 'THITE NIKAM ASSOCIATES', '+91 8237599599', 'AWPPN0094G', 'BANER', '411045', 'PUNE', NULL, 98680.00, '2021-06-11 21:25:04', '2021-06-23 17:18:44', 'customer'),
(40, 'Shubham Structural and Civil Engineers pvt.ltd', '27aaccs3705p1z1', 'India', 'Maharashtra', 'Shubham Structural and Civil Engineers pvt.ltd', '+91 9822440702', 'aaccs3705p', 'kothrud pune', '411036', 'pune', NULL, 21900.00, '2021-06-12 14:01:45', '2021-06-17 13:57:57', 'customer'),
(41, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', 'India', 'Maharashtra', 'PRAVIN ENTERPRISES', '+91 9665816925', 'AKMPK3874G', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE', '411021', 'PUNE', 'pravinsachi.kokate@gmail.com', 50905.00, '2021-06-15 12:56:38', '2021-07-23 15:33:57', 'dealer'),
(42, 'MANISHA TRADERS', '27AEHPG8073L1Z2', 'India', 'Maharashtra', 'MANISHA TRADERS', '+91 9850345566', 'AEHPG8073L', 'KALEWADI PIMPRI PUNE', '411017', 'PUNE', 'MANISHATRADERSPUNE@GMAIL.COM', 52450.00, '2021-06-15 13:05:26', '2021-07-07 17:41:07', 'dealer'),
(43, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', 'India', 'Maharashtra', 'JAYASHRI ENTERPRISES', '+91 9527808461', 'APQPB4107A', 'BHOSARI PUNE', '411026', 'PUNE', 'JAYASHREENTERPRISES2008@GMAIL.COM', 833551.00, '2021-06-15 13:09:22', '2021-07-23 15:31:22', 'dealer'),
(44, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', 'India', 'Maharashtra', 'GREYSTONE MARKETING PVT LTD', '+91 9920378784', 'AAHCG4796K', 'SAKET SOCIAETY DP ROAD AUNDH PUNE', '411007', 'PUNE', 'ACCOUNTS@GREYSTONEMARKETING.IN', 196350.00, '2021-06-15 13:41:55', '2021-07-07 17:42:07', 'dealer'),
(45, 'PARISA STEEL', '27AAKFP2074K1ZW', 'India', 'Maharashtra', 'PARISA STEEL', '+91 9765027333', 'AAKFP2074K', 'HINJAWADI', '411057', 'PUNE', 'PARISASTEEL@GMAIL.COM', 0.00, '2021-06-15 13:43:46', '2021-06-15 13:43:46', 'customer'),
(46, 'RUNAL DEVELOPERS', '27AASPJ2581R1ZR', 'India', 'Maharashtra', 'RUNAL DEVELOPERS', '+91 9168666176', 'AASPJ2581R', 'A 1 SHOP NO 3 INDRAPRASTA APP KINK ROAD PIMPARI CHINCHWAD PUNE', '411033', 'PUNE', NULL, 54495.00, '2021-06-15 16:48:44', '2021-06-15 16:50:50', 'customer'),
(47, 'G L INTERIORS PVT LTD', '27AADCG3136H1ZS', 'India', 'Maharashtra', 'G L INTERIORS PVT LTD', '+91 9136649111', 'AADCG3136H', 'THANE', '401105', 'THANE', NULL, 3885.00, '2021-06-15 16:54:17', '2021-06-15 16:56:01', 'customer'),
(48, 'SANJAY TAYAL', '27AAMFN6503H1Z5', 'India', 'Maharashtra', 'SANJAY TAYAL', '+91 9970742464', 'AAMFN6503H', 'PUNE', '411025', 'PUNE', NULL, 435104.00, '2021-06-16 13:45:51', '2021-06-16 13:48:38', 'customer'),
(49, 'PORWAL DEVELOPERS LLP', '27ABAFP3395G1Z3', 'India', 'Maharashtra', 'PORWAL DEVELOPERS LLP', '+91 7875880000', 'ABAFP3395G', 'BHUSAR VIBHAG, 534/535, OFF RAMESHCHANDRASHANTILAL AND CO, MARKETYARD, PUNE, Pune,Maharashtra, 411037', '411037', 'pune', NULL, 23310.00, '2021-06-16 16:43:48', '2021-06-16 16:45:38', 'customer'),
(50, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', 'India', 'Maharashtra', 'NIKHIL ENTERPRISES', '+91 8830687927', 'ABEPG3120A', 'SENADATTA PETH PUNE', '411030', 'PUNE', 'VRGUPTA.CO@GMAIL.COM', 579603.00, '2021-06-16 17:18:46', '2021-07-07 17:35:10', 'dealer'),
(51, 'AUM SANSKRUTI HOUSING', '27AARFA4302J1ZF', 'India', 'Maharashtra', 'AUM SANSKRUTI HOUSING', '+91 9850243638', 'AARFA4302J', 'WAKAD PUNE', '411057', 'PUNE', NULL, 18000.00, '2021-06-17 13:18:51', '2021-06-17 13:21:05', 'customer'),
(52, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', 'India', 'Maharashtra', 'PRASHANT CHOUDHARI', '+91 8600492350', 'AWPPN0094G', 'BANER', '411045', 'PUNE', NULL, 26250.00, '2021-06-17 18:17:27', '2021-08-23 16:24:42', 'customer'),
(53, 'SRK INFRA', '27BQQPS6111M1Z6', 'India', 'Maharashtra', 'SRK INFRA', '+91 7718161810', 'BQQPS6111M', 'BANER', '411045', 'PUNE', NULL, 253942.00, '2021-06-19 19:18:03', '2021-09-16 16:43:28', 'customer'),
(54, 'PARISA STEEL', '27AAKFP2074K1ZW', 'India', 'Maharashtra', 'PARISA STEEL', '+91 9673007405', 'AAKFP2074K', 'SR NO 256/5 LAXMI CHOWK TATA JOHNSON ROAD HINJWADI TAL MULASHI DIS PUNE', '411057', 'PUNE', NULL, 61266.00, '2021-06-24 17:47:38', '2021-06-24 17:50:29', 'dealer'),
(55, 'LANDMARK REALITY', '27AAFFL6440A1ZO', 'India', 'Maharashtra', 'LANDMARK REALITY', '+91 83293994', 'AAFFL6440A', '2nd Floor, Swami Samarth Complex, Opp. Tingare Petrol Pump, Alandi Road, Bhosari, Pune', '411039', 'PUNE', NULL, 34256.00, '2021-06-28 12:27:49', '2021-06-28 12:33:46', 'customer'),
(56, 'SAGA DEVELOPERS', '27ADYFS4495G1Z5', 'India', 'Maharashtra', 'SAGA DEVELOPERS', '+91 7498931455', 'ADYFS4495G', 'SAGA DEVELOPERSPLOT NO 7 S NO 257/4 GREENPARK AUNDH BANER PUNEpune Maharashtra 411007', '411007', 'pune', 'SAGADEVLOPERS@GMAIL.COM', 47688.00, '2021-06-29 14:26:54', '2021-07-02 18:08:21', 'customer'),
(57, 'JAY BHAGWAN DEVLOPERS', '27AANFJ3002C1ZU', 'India', 'Maharashtra', 'JAY BHAGWAN DEVLOPERS', '+91 9823186513', 'AANFJ3002C', 'BANER', '411045', 'PUNE', NULL, 26190.00, '2021-06-29 15:00:04', '2021-10-01 17:58:34', 'customer'),
(58, 'SHRINIWAS PATIL', '27AMBPP3325Q1ZN', 'India', 'Maharashtra', 'SHRINIWAS PATIL', '+91 7020309040', 'AMBPP3325Q', 'SR NO 32 \r\nPANCARD CLUB RPAD \r\nBANER', '411045', 'PUNE', NULL, 275394.00, '2021-07-02 15:26:27', '2021-07-02 15:33:37', 'customer'),
(59, 'SMARAN ENTERPRISES', '27AKVPD3216E1ZA', 'India', 'Maharashtra', 'SMARAN ENTERPRISES', '+91 9922926996', 'AKVPD3216E', 'THERGAON', '410506', 'PUNE', NULL, 0.00, '2021-07-07 17:43:46', '2021-07-07 17:43:46', 'customer'),
(60, 'SUDARSHAN ENTERPRISES', '27AFXPT2097J1ZF', 'India', 'Maharashtra', 'SUDARSHAN ENTERPRISES', '+91 9975858592', 'AFXPT2097J', 'PUNE', '410515', 'PUNE', NULL, 82985.00, '2021-07-08 12:43:22', '2021-07-08 12:47:28', 'customer'),
(61, 'BALAJI REALITY METRO JAZZ', '27AALFB0250E1ZW', 'India', 'Maharashtra', 'BALAJI REALITY METRO JAZZ', '+91 9373258773', 'AALFB0250E', 'SENAPATI BAPAT ROAD NEAR J W MARRIOT HOTEL PUNE', '411045', 'PUNE', NULL, 29552.00, '2021-07-08 13:13:42', '2021-07-08 13:15:01', 'customer'),
(62, 'MOHITE CONSTRUCTION', '27AOKPM9318P1Z2', 'India', 'Maharashtra', 'MOHITE CONSTRUCTION', '+91 9823293031', 'AOKPM9318P', 'MHALUNGE', '410501', 'pune', NULL, 69999.00, '2021-07-15 13:32:42', '2021-07-15 13:34:55', 'customer'),
(63, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', 'India', 'Maharashtra', 'SHRIRAM SALES', '+91 9822068860', 'ABFFS2393Q', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE', '411030', 'PUNE', NULL, 192299.00, '2021-07-23 15:25:04', '2021-07-23 15:30:43', 'dealer'),
(64, 'SAI SAMARTTHA PROPERTIES', '27ACHFS2552A1ZE', 'India', 'Maharashtra', 'SAI SAMARTTHA PROPERTIES', '+91 9764847947', 'ACHFS2552A', 'PUNAWALE', '411033', 'PUNE', NULL, 66938.00, '2021-08-06 13:15:38', '2021-08-06 13:18:14', 'customer'),
(65, 'IRIS CONSTRUCTION', '27AAEFI0733Q1Z3', 'India', 'Maharashtra', 'IRIS CONSTRUCTION', '+91 7875855755', 'AAEFI0733Q', 'BHALCHANDRA BANGLOW KOTHRUD', '411038', 'PUNE', NULL, 85002.00, '2021-08-12 13:48:23', '2021-08-12 14:12:23', 'customer'),
(66, 'Parnavi Enteprises', '27ADOPN5225D1ZJ', 'India', 'Maharashtra', 'Parnavi Enteprises', '+91 9822316873', 'ADOPN5225D', 'Torana park A\r\nMarket yard road', '411037', 'PUNE', NULL, 18200.00, '2021-08-12 13:50:40', '2021-08-24 17:09:20', 'customer'),
(67, 'Royal Eraville Ventures', '27AAFAR2934N1Z2', 'India', 'Maharashtra', 'Royal Eraville Ventures', '+91 9970076849', 'AAFAR2934N', 'Sr no 181, sade satra nali, behind Amnora park, hadapsar \r\nContact:Nasir Alase', '411028', 'PUNE', NULL, 34001.00, '2021-08-12 13:52:05', '2021-08-12 14:37:49', 'customer'),
(68, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', 'India', 'Maharashtra', 'CRYSTAL VENTURES', '+91 9922033608', 'AAAAC4987B', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD', '411021', 'PUNE', NULL, 41088.00, '2021-08-13 16:33:26', '2021-10-01 17:48:41', 'customer'),
(69, 'KHETAWAT ENTERPRISES', '27BEMPK0082A1ZL', 'India', 'Maharashtra', 'KHETAWAT ENTERPRISES', '+91 9822499232', 'BEMPK0082A', 'PASHAN BANER \r\nPUNE', '415045', 'PUNE', NULL, 63168.00, '2021-08-21 14:47:13', '2021-08-21 14:48:33', 'customer'),
(70, 'RAMDAS DHANAJI DHANKUDE', '27AHWPD3801H1ZB', 'India', 'Maharashtra', 'RAMDAS DHANAJI DHANKUDE', '+91 976366589', 'AHWPD3801H', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE', '411008', 'PUNE', NULL, 132001.00, '2021-09-09 12:31:53', '2021-10-01 18:09:59', 'customer'),
(72, 'Kamal Pramotor & Builders', '27AAQFK0028A1ZQ', 'India', 'Maharashtra', 'Kamal Pramotor & Builders', '+91 9923175628', 'AAQFK0028A', 'Hadapsar', '411013', 'pune', NULL, 170888.00, '2021-09-17 16:49:47', '2021-09-17 16:57:00', 'customer'),
(73, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', 'India', 'Maharashtra', 'Shree Sairaj Buildcon', '+91 9197637200', 'ABJFS1302B', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,', '411038', 'PUNE', NULL, 180092.00, '2021-09-17 17:51:25', '2021-10-04 16:34:12', 'customer'),
(74, 'J P ENTERPRISE', '27AAAFJ0870H1ZJ', 'India', 'Maharashtra', 'J P ENTERPRISE', '+91 7028029095', 'AAAFJ0870H', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City', '400034', 'Mumbai', NULL, 2757.00, '2021-09-21 18:17:36', '2021-10-01 14:21:22', 'customer'),
(75, 'J K ENTERPRISESE', '27ALHPJ7077Q1Z8', 'India', 'Maharashtra', 'J K ENTERPRISESE', '+91 9850892391', 'ALHPJ7077Q', 'GANESHKHIND ROAD \r\nAUNDH', '411007', 'PUNE', NULL, 106319.00, '2021-09-23 17:49:39', '2021-09-23 17:53:57', 'customer'),
(76, 'Shreenath enterprise', '27BOKPS1120Q2ZG', 'India', 'Maharashtra', 'Shreenath enterprise', '+91 9730401010', 'BOKPS1120Q', 'Baner', '411045', 'pune', NULL, 51975.00, '2021-09-28 13:10:02', '2021-09-28 13:58:50', 'customer'),
(77, 'KUMAR PROPERTIES', '27AAAFK6674L1ZV', 'India', 'Maharashtra', 'KUMAR PROPERTIES', '+91 9890898875', 'AAAFK6674L', 'MOHAN NAGAR \r\nBANER', '411045', 'PUNE', NULL, 28068.00, '2021-10-01 18:01:38', '2021-10-01 18:05:54', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `dcs`
--

CREATE TABLE `dcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `placeOfSupply` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dcStatus` enum('quote','unpaid','partial','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dcs`
--

INSERT INTO `dcs` (`id`, `serialPrefix`, `serialNumber`, `issueDate`, `dueDate`, `placeOfSupply`, `dcStatus`, `created_at`, `updated_at`) VALUES
(1, 'JAYBBM-DC-', '001', '2021-06-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-12 03:33:51', '2021-06-12 03:33:51'),
(2, 'JAYBBM-DC-', '002', '2021-06-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-12 03:47:21', '2021-06-12 03:47:21'),
(3, 'JAYBBM-DC-', '055', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 15:19:19', '2021-06-15 15:19:19'),
(4, 'JAYBBM-DC-', '056', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 15:32:33', '2021-06-15 15:32:33'),
(6, 'JAYBBM-DC-', '057', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:09:06', '2021-06-15 16:09:06'),
(7, 'JAYBBM-DC-', '058', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:14:23', '2021-06-15 16:14:23'),
(8, 'JAYBBM-DC-', '059', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:17:38', '2021-06-15 16:17:38'),
(9, 'JAYBBM-DC-', '060', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:23:02', '2021-06-15 16:23:02'),
(10, 'JAYBBM-DC-', '061', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:28:16', '2021-06-15 16:28:16'),
(11, 'JAYBBM-DC-', '062', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:31:47', '2021-06-15 16:31:47'),
(12, 'JAYBBM-DC-', '063', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:42:07', '2021-06-15 16:42:07'),
(13, 'JAYBBM-DC-', '064', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:45:43', '2021-06-29 14:46:07'),
(14, 'JAYBBM-DC-', '065', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:50:50', '2021-06-15 16:50:50'),
(15, 'JAYBBM-DC-', '066', '2021-06-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-15 16:56:01', '2021-06-15 16:56:01'),
(16, 'JAYBBM-DC-', '067', '2021-06-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-16 13:48:38', '2021-06-16 13:48:38'),
(17, 'JAYBBM-DC-', '068', '2021-06-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-16 13:53:40', '2021-06-16 13:53:40'),
(18, 'JAYBBM-DC-', '069', '2021-06-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-16 16:45:38', '2021-06-16 16:45:38'),
(19, 'JAYBBM-DC-', '070', '2021-06-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-17 13:21:05', '2021-06-17 13:21:05'),
(20, 'JAYBBM-DC-', '071', '2021-06-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-17 13:57:57', '2021-06-17 13:57:57'),
(21, 'JAYBBM-DC-', '072', '2021-06-19', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-19 19:22:18', '2021-06-19 19:24:11'),
(22, 'JAYBBM-DC-', '073', '2021-06-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-21 15:41:10', '2021-06-21 15:41:10'),
(23, 'JAYBBM-DC-', '074', '2021-06-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-21 15:53:24', '2021-06-21 15:53:24'),
(24, 'JAYBBM-DC-', '075', '2021-06-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-21 16:29:51', '2021-06-21 16:29:51'),
(25, 'JAYBBM-DC-', '076', '2021-06-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-21 16:32:41', '2021-06-21 16:32:41'),
(26, 'JAYBBM-DC-', '077', '2021-06-22', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-22 14:01:26', '2021-06-22 14:01:26'),
(27, 'JAYBBM-DC-', '046', '2021-05-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-23 13:40:39', '2021-06-23 13:40:39'),
(28, 'JAYBBM-DC-', '078', '2021-06-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-24 18:01:16', '2021-06-24 18:01:16'),
(29, 'JAYBBM-DC-', '079', '2021-06-28', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-28 12:29:54', '2021-06-28 12:33:46'),
(30, 'JAYBBM-DC-', '080', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-28 14:25:23', '2021-06-29 12:49:00'),
(31, 'JAYBBM-DC-', '081', '2021-06-28', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-28 14:29:20', '2021-06-28 14:29:20'),
(32, 'JAYBBM-DC-', '082', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:08:43', '2021-06-29 13:08:43'),
(33, 'JAYBBM-DC-', '083', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:18:12', '2021-06-29 13:18:12'),
(34, 'JAYBBM-DC-', '084', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:40:08', '2021-06-29 13:40:08'),
(35, 'JAYBBM-DC-', '085', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:44:42', '2021-06-29 13:44:42'),
(36, 'JAYBBM-DC-', '086', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:53:57', '2021-06-29 13:53:57'),
(37, 'JAYBBM-DC-', '087', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 13:58:01', '2021-06-29 13:58:01'),
(38, 'JAYBBM-DC-', '088', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 14:03:43', '2021-06-29 14:03:43'),
(39, 'JAYBBM-DC-', '089', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 14:16:29', '2021-06-29 14:16:29'),
(40, 'JAYBBM-DC-', '090', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 14:31:31', '2021-06-29 14:31:31'),
(41, 'JAYBBM-DC-', '091', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 15:05:53', '2021-06-29 15:05:53'),
(42, 'JAYBBM-DC-', '092', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 15:10:17', '2021-06-29 15:10:17'),
(43, 'JAYBBM-DC-', '093', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 15:13:54', '2021-06-29 15:13:54'),
(44, 'JAYBBM-DC-', '094', '2021-06-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-06-29 18:32:25', '2021-06-29 18:32:25'),
(45, 'JAYBBM-DC-', '095', '2021-07-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-01 12:21:23', '2021-07-01 12:21:23'),
(46, 'JAYBBM-DC-', '096', '2021-07-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-02 13:01:22', '2021-07-02 13:02:46'),
(47, 'JAYBBM-DC-', '097', '2021-07-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-02 13:04:39', '2021-07-02 13:04:39'),
(48, 'JAYBBM-DC-', '098', '2021-07-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-02 14:37:54', '2021-07-02 14:37:54'),
(49, 'JAYBBM-DC-', '099', '2021-07-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-02 15:33:37', '2021-07-02 15:33:37'),
(50, 'JAYBBM-DC-', '100', '2021-07-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-02 18:38:30', '2021-07-02 18:38:30'),
(51, 'JAYBBM-DC-', '101', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 12:37:57', '2021-07-08 12:37:57'),
(52, 'JAYBBM-DC-', '102', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 12:47:28', '2021-07-08 12:47:28'),
(53, 'JAYBBM-DC-', '103', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 12:50:32', '2021-07-08 12:50:32'),
(54, 'JAYBBM-DC-', '104', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 12:56:21', '2021-07-08 12:56:21'),
(55, 'JAYBBM-DC-', '105', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 13:02:42', '2021-07-13 14:54:42'),
(56, 'JAYBBM-DC-', '106', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 13:10:39', '2021-07-08 13:10:39'),
(57, 'JAYBBM-DC-', '107', '2021-07-08', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-08 13:15:01', '2021-07-08 13:15:01'),
(58, 'JAYBBM-DC-', '108', '2021-07-09', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-09 13:02:27', '2021-07-09 13:02:27'),
(59, 'JAYBBM-DC-', '109', '2021-07-09', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-09 13:52:53', '2021-07-09 13:52:53'),
(60, 'JAYBBM-DC-', '110', '2021-07-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-12 18:15:01', '2021-07-12 18:15:01'),
(61, 'JAYBBM-DC-', '111', '2021-07-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-12 18:26:09', '2021-07-12 18:26:09'),
(62, 'JAYBBM-DC-', '112', '2021-07-13', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-13 12:52:59', '2021-07-13 12:52:59'),
(63, 'JAYBBM-DC-', '113', '2021-07-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-15 13:20:57', '2021-07-15 13:20:57'),
(64, 'JAYBBM-DC-', '114', '2021-07-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-15 13:26:52', '2021-07-15 13:26:52'),
(65, 'JAYBBM-DC-', '115', '2021-07-15', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-15 13:34:55', '2021-07-15 13:34:55'),
(66, 'JAYBBM-DC-', '116', '2021-07-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-23 16:03:52', '2021-07-23 16:03:52'),
(67, 'JAYBBM-DC-', '117', '2021-07-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-23 16:37:59', '2021-07-23 16:37:59'),
(68, 'JAYBBM-DC-', '118', '2021-07-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-23 16:40:21', '2021-07-23 16:40:21'),
(69, 'JAYBBM-DC-', '119', '2021-07-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-23 16:49:10', '2021-07-23 16:49:10'),
(70, 'JAYBBM-DC-', '120', '2021-07-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-23 17:08:38', '2021-07-23 17:08:38'),
(71, 'JAYBBM-DC-', '121', '2021-07-26', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-26 12:57:25', '2021-07-26 12:57:25'),
(72, 'JAYBBM-DC-', '122', '2021-07-26', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-26 14:42:17', '2021-07-26 14:42:17'),
(73, 'JAYBBM-DC-', '123', '2021-07-26', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-26 14:57:49', '2021-07-26 14:57:49'),
(74, 'JAYBBM-DC-', '124', '2021-07-26', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-26 15:03:13', '2021-07-26 15:03:13'),
(75, 'JAYBBM-DC-', '125', '2021-07-26', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-26 15:05:38', '2021-07-26 15:05:38'),
(76, 'JAYBBM-DC-', '126', '2021-07-29', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-29 13:12:38', '2021-07-29 13:12:38'),
(77, 'JAYBBM-DC-', '127', '2021-07-30', '0000-00-00', 'Maharashtra', 'unpaid', '2021-07-30 13:12:56', '2021-07-30 13:12:56'),
(78, 'JAYBBM-DC-', '128', '2021-08-04', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-04 12:42:15', '2021-08-04 12:42:15'),
(79, 'JAYBBM-DC-', '129', '2021-08-04', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-04 12:47:01', '2021-08-04 12:47:01'),
(80, 'JAYBBM-DC-', '130', '2021-08-04', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-04 12:52:16', '2021-08-04 12:52:16'),
(81, 'JAYBBM-DC-', '131', '2021-08-04', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-04 13:03:23', '2021-08-04 13:03:23'),
(82, 'JAYBBM-DC-', '132', '2021-08-05', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-05 16:19:13', '2021-08-05 16:19:13'),
(83, 'JAYBBM-DC-', '133', '2021-08-06', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-06 13:17:55', '2021-08-06 13:17:55'),
(84, 'JAYBBM-DC-', '134', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 13:59:44', '2021-08-20 18:22:27'),
(85, 'JAYBBM-DC-', '135', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:02:27', '2021-08-12 14:02:27'),
(86, 'JAYBBM-DC-', '136', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:04:06', '2021-08-12 14:04:06'),
(87, 'JAYBBM-DC-', '137', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:10:23', '2021-08-12 14:10:23'),
(88, 'JAYBBM-DC-', '138', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:12:23', '2021-08-12 14:12:23'),
(89, 'JAYBBM-DC-', '139', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:26:15', '2021-08-20 18:16:20'),
(90, 'JAYBBM-DC-', '140', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:31:23', '2021-08-12 14:31:23'),
(91, 'JAYBBM-DC-', '141', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:37:49', '2021-08-12 14:37:49'),
(92, 'JAYBBM-DC-', '142', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:38:43', '2021-08-12 14:38:43'),
(93, 'JAYBBM-DC-', '143', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:40:41', '2021-08-12 14:40:41'),
(94, 'JAYBBM-DC-', '144', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:53:27', '2021-08-13 14:00:46'),
(95, 'JAYBBM-DC-', '145', '2021-08-12', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-12 14:56:34', '2021-08-12 14:56:34'),
(96, 'JAYBBM-DC-', '146', '2021-08-13', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-13 16:35:17', '2021-08-13 18:09:55'),
(97, 'JAYBBM-DC-', '147', '2021-08-13', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-13 16:39:38', '2021-08-13 16:39:38'),
(98, 'JAYBBM-DC-', '148', '2021-08-20', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-20 18:36:31', '2021-08-20 18:36:31'),
(99, 'JAYBBM-DC-', '149', '2021-08-20', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-20 18:40:04', '2021-08-20 18:40:04'),
(100, 'JAYBBM-DC-', '150', '2021-08-20', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-20 18:42:40', '2021-08-20 18:42:40'),
(101, 'JAYBBM-DC-', '151', '2021-08-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-21 12:44:24', '2021-08-21 12:44:24'),
(102, 'JAYBBM-DC-', '152', '2021-08-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-21 12:48:30', '2021-08-21 12:48:30'),
(103, 'JAYBBM-DC-', '153', '2021-08-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-21 12:51:12', '2021-08-21 12:51:12'),
(104, 'JAYBBM-DC-', '154', '2021-08-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-21 14:48:33', '2021-08-21 14:48:33'),
(105, 'JAYBBM-DC-', '155', '2021-08-21', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-21 16:28:48', '2021-08-21 16:28:48'),
(106, 'JAYBBM-DC-', '156', '2021-08-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-23 16:24:42', '2021-08-23 16:24:42'),
(107, 'JAYBBM-DC-', '157', '2021-08-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-23 16:34:55', '2021-08-23 16:34:55'),
(108, 'JAYBBM-DC-', '158', '2021-08-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-24 14:19:46', '2021-08-24 14:19:46'),
(109, 'JAYBBM-DC-', '159', '2021-08-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-24 17:09:20', '2021-08-24 17:09:20'),
(110, 'JAYBBM-DC-', '160', '2021-08-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-24 17:13:09', '2021-08-24 17:13:09'),
(111, 'JAYBBM-DC-', '161', '2021-08-27', '0000-00-00', 'Maharashtra', 'unpaid', '2021-08-27 14:38:42', '2021-08-27 14:38:42'),
(112, 'JAYBBM-DC-', '162', '2021-09-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-02 17:16:01', '2021-09-02 17:16:01'),
(113, 'JAYBBM-DC-', '163', '2021-09-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-02 17:43:20', '2021-09-02 17:43:20'),
(114, 'JAYBBM-DC-', '164', '2021-09-02', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-02 18:05:00', '2021-09-21 18:19:41'),
(115, 'JAYBBM-DC-', '165', '2021-09-09', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-09 12:38:06', '2021-09-09 12:38:06'),
(116, 'JAYBBM-DC-', '166', '2021-09-09', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-09 12:43:12', '2021-09-09 12:43:12'),
(117, 'JAYBBM-DC-', '167', '2021-09-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-16 12:42:45', '2021-09-16 12:42:45'),
(118, 'JAYBBM-DC-', '168', '2021-09-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-16 13:13:44', '2021-09-16 13:13:44'),
(119, 'JAYBBM-DC-', '169', '2021-09-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-16 13:27:19', '2021-09-16 13:27:19'),
(120, 'JAYBBM-DC-', '170', '2021-09-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-16 16:35:50', '2021-10-01 14:21:22'),
(121, 'JAYBBM-DC-', '171', '2021-09-16', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-16 16:51:56', '2021-09-16 16:51:56'),
(122, 'JAYBBM-DC-', '172', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 16:57:00', '2021-09-17 16:57:00'),
(123, 'JAYBBM-DC-', '173', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:03:38', '2021-09-17 17:03:38'),
(124, 'JAYBBM-DC-', '174', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:23:59', '2021-09-17 17:23:59'),
(125, 'JAYBBM-DC-', '175', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:31:26', '2021-09-17 17:31:26'),
(126, 'JAYBBM-DC-', '176', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:35:16', '2021-09-17 17:35:16'),
(127, 'JAYBBM-DC-', '177', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:41:09', '2021-09-17 17:41:09'),
(128, 'JAYBBM-DC-', '178', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:46:27', '2021-09-17 19:11:32'),
(129, 'JAYBBM-DC-', '179', '2021-09-17', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-17 17:55:13', '2021-09-17 17:55:13'),
(130, 'JAYBBM-DC-', '180', '2021-09-18', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-18 19:36:37', '2021-09-18 19:36:37'),
(131, 'JAYBBM-DC-', '181', '2021-09-23', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-23 17:53:57', '2021-09-23 17:53:57'),
(132, 'JAYBBM-DC-', '182', '2021-09-24', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-24 13:15:49', '2021-09-24 13:15:49'),
(133, 'JAYBBM-DC-', '183', '2021-09-28', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-28 13:58:50', '2021-09-28 13:58:50'),
(134, 'JAYBBM-DC-', '184', '2021-09-28', '0000-00-00', 'Maharashtra', 'unpaid', '2021-09-28 14:05:29', '2021-09-28 14:05:29'),
(135, 'JAYBBM-DC-', '185', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:38:31', '2021-10-01 17:38:31'),
(136, 'JAYBBM-DC-', '186', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:42:35', '2021-10-01 17:42:35'),
(137, 'JAYBBM-DC-', '187', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:46:26', '2021-10-01 17:46:26'),
(138, 'JAYBBM-DC-', '188', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:48:41', '2021-10-01 17:48:41'),
(139, 'JAYBBM-DC-', '189', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:51:22', '2021-10-01 17:51:22'),
(140, 'JAYBBM-DC-', '190', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:53:49', '2021-10-01 17:53:49'),
(141, 'JAYBBM-DC-', '191', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:56:00', '2021-10-01 17:56:28'),
(142, 'JAYBBM-DC-', '192', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 17:58:34', '2021-10-01 17:58:34'),
(143, 'JAYBBM-DC-', '193', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 18:05:54', '2021-10-01 18:05:54'),
(144, 'JAYBBM-DC-', '194', '2021-10-01', '0000-00-00', 'Maharashtra', 'unpaid', '2021-10-01 18:09:59', '2021-10-01 18:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `dc_customers`
--

CREATE TABLE `dc_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `dc_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dc_customers`
--

INSERT INTO `dc_customers` (`id`, `dc_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `customerId`) VALUES
(1, 1, 'A A ASSOCIATES', '27ABNFA5384K1ZV', '+91 9921890622', 'Baner pune\r\npune\r\nMaharashtra\r\n411045', 'Baner pune\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-12 03:34:55', '2021-06-12 03:34:55', 1),
(2, 2, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-12 03:47:21', '2021-06-12 03:47:21', 2),
(3, 3, 'A A ASSOCIATES', '27ABNFA5384K1ZV', '+91 9921890622', 'Baner pune\r\npune\r\nMaharashtra\r\n411045', 'Baner pune\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 1),
(4, 4, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'on', '2021-06-15 15:32:33', '2021-06-15 15:32:33', 23),
(5, 5, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'tathwade', 'off', '2021-06-15 15:48:50', '2021-06-15 15:48:50', 23),
(6, 6, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-06-15 16:09:06', '2021-06-15 16:09:06', 12),
(7, 7, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-15 16:14:23', '2021-06-15 16:14:23', 12),
(8, 8, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-15 16:17:38', '2021-06-15 16:17:38', 12),
(9, 9, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-15 16:23:02', '2021-06-15 16:23:02', 12),
(10, 10, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-06-15 16:28:16', '2021-06-15 16:28:16', 12),
(11, 11, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHUGAOV', 'off', '2021-06-15 16:31:47', '2021-06-15 16:31:47', 12),
(12, 12, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'Aundh', 'off', '2021-06-15 16:42:07', '2021-06-15 16:42:07', 3),
(13, 13, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI', 'off', '2021-06-15 16:45:43', '2021-06-15 16:45:43', 29),
(14, 14, 'RUNAL DEVELOPERS', '27AASPJ2581R1ZR', '+91 9168666176', 'A 1 SHOP NO 3 INDRAPRASTA APP KINK ROAD PIMPARI CHINCHWAD PUNE\r\nPUNE\r\nMaharashtra\r\n411033', 'RUNAL HATEWAY', 'off', '2021-06-15 16:50:50', '2021-06-15 16:50:50', 46),
(15, 15, 'G L INTERIORS PVT LTD', '27AADCG3136H1ZS', '+91 9136649111', 'THANE\r\nTHANE\r\nMaharashtra\r\n401105', 'THANE', 'off', '2021-06-15 16:56:01', '2021-06-15 16:56:01', 47),
(16, 16, 'SANJAY TAYAL', '27AAMFN6503H1Z5', '+91 9970742464', 'PUNE\r\nPUNE\r\nMaharashtra\r\n411025', 'PUNE', 'off', '2021-06-16 13:48:38', '2021-06-16 13:48:38', 48),
(17, 17, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'HINGANE KHURD \r\nPUNE', 'off', '2021-06-16 13:53:40', '2021-06-16 13:53:40', 25),
(18, 18, 'PORWAL DEVELOPERS LLP', '27ABAFP3395G1Z3', '+91 7875880000', 'BHUSAR VIBHAG, 534/535, OFF RAMESHCHANDRASHANTILAL AND CO, MARKETYARD, PUNE, Pune,Maharashtra, 411037\r\npune\r\nMaharashtra\r\n411037', 'Parklane  Life seasons, Sr.No.7 Dhanori', 'off', '2021-06-16 16:45:38', '2021-06-16 16:45:38', 49),
(19, 19, 'AUM SANSKRUTI HOUSING', '27AARFA4302J1ZF', '+91 9850243638', 'WAKAD PUNE\r\nPUNE\r\nMaharashtra\r\n411057', 'WAKAD', 'off', '2021-06-17 13:21:05', '2021-06-17 13:21:05', 51),
(20, 20, 'Shubham Structural and Civil Engineers pvt.ltd', '27aaccs3705p1z1', '+91 9822440702', 'kothrud pune\r\npune\r\nMaharashtra\r\n411036', 'KIRLOSKAR BROTHERS \r\nBANER', 'off', '2021-06-17 13:57:57', '2021-06-17 13:57:57', 40),
(21, 21, 'SRK INFRA', '27BQQPS6111M1Z6', '+91 7718161810', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-19 19:22:18', '2021-06-19 19:22:18', 53),
(22, 22, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 23),
(23, 23, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 29),
(24, 24, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 16:29:51', '2021-06-21 16:29:51', 23),
(25, 25, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 16:32:41', '2021-06-21 16:32:41', 23),
(26, 26, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-06-22 14:01:26', '2021-06-22 14:01:26', 34),
(27, 27, 'THITE NIKAM ASSOCIATES', '27AWPPN0094G1Z8', '+91 8237599599', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 39),
(28, 28, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'NARIMAN SQUARE\r\nWAKDEWADI', 'off', '2021-06-24 18:01:16', '2021-06-24 18:01:16', 25),
(29, 29, 'LANDMARK REALITY', '27AAFFL6440A1ZO', '+91 8329399455', '2nd Floor, Swami Samarth Complex, Opp. Tingare Petrol Pump, Alandi Road, Bhosari, Pune\r\nPUNE\r\nMaharashtra\r\n411039', 'BANER', 'off', '2021-06-28 12:29:54', '2021-06-28 12:29:54', 55),
(30, 30, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI SITE', 'off', '2021-06-28 14:25:23', '2021-06-28 14:25:23', 29),
(31, 31, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'on', '2021-06-28 14:29:20', '2021-06-28 14:29:20', 28),
(32, 32, 'JAISONS PROPERTIES LLP.', '27AAKFJ3795K1ZO', '+91 9657960379', '34, SWAROOP CHAYA APARTMENT, HAPPY COLONY, LANE NO, 2, KOTHRUD PUNE.\r\npune\r\nMaharashtra\r\n411029', 'BHUGAON SITE', 'off', '2021-06-29 13:08:43', '2021-06-29 13:08:43', 10),
(33, 33, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PUNAWALE', 'off', '2021-06-29 13:18:12', '2021-06-29 13:18:12', 12),
(34, 34, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MOUNTVIEW SHIVAJINAGAR', 'off', '2021-06-29 13:40:08', '2021-06-29 13:40:08', 12),
(35, 35, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-29 13:44:42', '2021-06-29 13:44:42', 12),
(36, 36, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-06-29 13:53:57', '2021-06-29 13:53:57', 12),
(37, 37, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-29 13:58:01', '2021-06-29 13:58:01', 12),
(38, 38, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'SITE - CLEVELAND PARK MOHOMADWADI', 'off', '2021-06-29 14:03:43', '2021-06-29 14:03:43', 29),
(39, 39, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 2),
(40, 40, 'SAGA DEVELOPERS', '27ADYFS4495G1ZS', '+91 7498931455', 'PLOT NO 7 S NO 257/4 GREEN PARK AUNDH BANER PUNE\r\npune\r\nMaharashtra\r\n411007', 'GREEN PARK AUNDH', 'off', '2021-06-29 14:31:31', '2021-06-29 14:31:31', 56),
(41, 41, 'JAY BHAGWAN DEVLOPERS', '27AANFJ3002C1ZU', '+91 9823186513', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-29 15:05:53', '2021-06-29 15:05:53', 57),
(42, 42, 'SAGA DEVELOPERS', '27ADYFS4495G1ZS', '+91 7498931455', 'PLOT NO 7 S NO 257/4 GREEN PARK AUNDH BANER PUNE\r\npune\r\nMaharashtra\r\n411007', 'AUNDH', 'off', '2021-06-29 15:10:17', '2021-06-29 15:10:17', 56),
(43, 43, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-29 15:13:54', '2021-06-29 15:13:54', 23),
(44, 44, 'S K DEVELOPERS', '27ACFFS1684K1ZO', '+91 9765399209', 'S K BUSINESS PARK BANER PUNE\r\npune\r\nMaharashtra\r\n411045', 'S K BUSINESS PARK BANER PUNE\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-29 18:32:25', '2021-06-29 18:32:25', 20),
(45, 45, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-07-01 12:21:23', '2021-07-01 12:21:23', 34),
(46, 46, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-02 13:01:22', '2021-07-02 13:01:22', 23),
(47, 47, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-07-02 13:04:39', '2021-07-02 13:04:39', 34),
(48, 48, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-07-02 14:37:54', '2021-07-02 14:37:54', 17),
(49, 49, 'SHRINIWAS PATIL', '27AMBPP3325Q1ZN', '+91 7020309040', 'SR NO 32 \r\nPANCARD CLUB RPAD \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'SR NO 32 \r\nPANCARD CLUB RPAD \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-07-02 15:33:37', '2021-07-02 15:33:37', 58),
(50, 50, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', '+91 8459471113', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'on', '2021-07-02 18:38:30', '2021-07-02 18:38:30', 38),
(51, 51, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', '+91 8600492350', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER', 'off', '2021-07-08 12:37:57', '2021-07-08 12:37:57', 52),
(52, 52, 'SUDARSHAN ENTERPRISES', '27AFXPT2097J1ZF', '+91 9975858592', 'PUNE\r\nPUNE\r\nMaharashtra\r\n410515', 'PUNE\r\nPUNE\r\nMaharashtra\r\n410515', 'on', '2021-07-08 12:47:28', '2021-07-08 12:47:28', 60),
(53, 53, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-07-08 12:50:32', '2021-07-08 12:50:32', 12),
(54, 54, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'on', '2021-07-08 12:56:21', '2021-07-08 12:56:21', 11),
(55, 55, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-07-08 13:02:42', '2021-07-08 13:02:42', 17),
(56, 56, 'R. D REALITY', '27AAYFR3982N1ZZ', '+91 9822325282', 'SITE SWASTIK PARK BANER\r\npune\r\nMaharashtra\r\n411045', 'SITE SWASTIK PARK BANER\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 19),
(57, 57, 'BALAJI REALITY METRO JAZZ', '27AALFB0250E1ZW', '+91 9373258773', 'SENAPATI BAPAT ROAD NEAR J W MARRIOT HOTEL PUNE\r\nPUNE\r\nMaharashtra\r\n411045', 'SENAPATI BAPAT ROAD NEAR J W MARRIOT HOTEL PUNE\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-07-08 13:15:01', '2021-07-08 13:15:01', 61),
(58, 58, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-07-09 13:02:27', '2021-07-09 13:02:27', 29),
(59, 59, 'SAMARTHA TRIMURTI PROPERTIES', '27ACCFS2681P1ZI', '+91 8975528181', '41 ESTERA SR NO 41 NEAR SAVTAMALI MANDIR JAMBHE ROAD MALWADI PUNAWALE PUNE\r\npune\r\nMaharashtra\r\n411033', '41 ESTERA PUNAWALE', 'off', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 22),
(60, 60, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-12 18:15:01', '2021-07-12 18:15:01', 29),
(61, 61, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 23),
(62, 62, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'Kohinoor sapphire\r\ntathwade', 'off', '2021-07-13 12:52:59', '2021-07-13 12:52:59', 23),
(63, 63, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-07-15 13:20:57', '2021-07-15 13:20:57', 12),
(64, 64, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 2),
(65, 65, 'MOHITE CONSTRUCTION', '27AOKPM9318P1Z2', '+91 9823293031', 'MHALUNGE\r\npune\r\nMaharashtra\r\n410501', 'HINJAWADI', 'off', '2021-07-15 13:34:55', '2021-07-15 13:34:55', 62),
(66, 66, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'Ghandharv Excellence \r\nOpp D Mart  Barade vasti Moshi', 'off', '2021-07-23 16:03:52', '2021-07-23 16:03:52', 23),
(67, 67, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-07-23 16:37:59', '2021-07-23 16:37:59', 25),
(68, 68, 'Parklane Construction LLP', '27AATFP4446L1ZH', '+91 9960644420', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'SUS', 'off', '2021-07-23 16:40:21', '2021-07-23 16:40:21', 35),
(69, 69, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'wMOUNTVIEW, SHIVAJINAGAR', 'off', '2021-07-23 16:49:10', '2021-07-23 16:49:10', 12),
(70, 70, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 12),
(71, 71, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-26 12:57:25', '2021-07-26 12:57:25', 2),
(72, 72, 'SUPREME INFRA', '27ADTFS0011R1ZJ', '+91 8668837971', 'KOHINOOR SUPPHIRE TATHWADE\r\nPUNE\r\nMaharashtra\r\n411025', 'KOHINOOR SUPPHIRE\r\n TATHWADE', 'off', '2021-07-26 14:42:17', '2021-07-26 14:42:17', 32),
(73, 73, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SUPPHIRE\r\n TATHWADE', 'off', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 29),
(74, 74, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA \r\nPUNAWALE', 'off', '2021-07-26 15:03:13', '2021-07-26 15:03:13', 23),
(75, 75, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA \r\nPUNAWALE', 'off', '2021-07-26 15:05:38', '2021-07-26 15:05:38', 23),
(76, 76, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALGANDHARV CHOWK \r\nPUNE', 'off', '2021-07-29 13:12:38', '2021-07-29 13:12:38', 34),
(77, 77, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI', 'off', '2021-07-30 13:12:56', '2021-07-30 13:12:56', 34),
(78, 78, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nDANGE CHOWK', 'off', '2021-08-04 12:42:15', '2021-08-04 12:42:15', 23),
(79, 79, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE', 'off', '2021-08-04 12:47:01', '2021-08-04 12:47:01', 29),
(80, 80, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILA \r\nPUNAWALE', 'off', '2021-08-04 12:52:16', '2021-08-04 12:52:16', 23),
(81, 81, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE', 'off', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 29),
(82, 82, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'kohinoor sapphire \r\ntathawde', 'off', '2021-08-05 16:19:13', '2021-08-05 16:19:13', 29),
(83, 83, 'SAI SAMARTTHA PROPERTIES', '27ACHFS2552A1ZE', '+91 9764847947', 'PUNAWALE\r\nPUNE\r\nMaharashtra\r\n411033', 'PUNAWALE\r\nSAISHA', 'off', '2021-08-06 13:17:55', '2021-08-06 13:17:55', 64),
(84, 84, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-12 13:59:44', '2021-08-12 13:59:44', 12),
(85, 85, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-08-12 14:02:27', '2021-08-12 14:02:27', 12),
(86, 86, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-08-12 14:04:06', '2021-08-12 14:04:06', 12),
(87, 87, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-08-12 14:10:23', '2021-08-12 14:10:23', 12),
(88, 88, 'IRIS CONSTRUCTION', '27AAEFI0733Q1Z3', '+91 7875855755', 'BHALCHANDRA BANGLOW KOTHRUD\r\nPUNE\r\nMaharashtra\r\n411038', 'BHALCHANDRA BANGLOW KOTHRUD\r\nPUNE\r\nMaharashtra\r\n411038', 'on', '2021-08-12 14:12:23', '2021-08-12 14:12:23', 65),
(89, 89, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'on', '2021-08-12 14:26:15', '2021-08-20 18:16:20', 12),
(90, 90, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-08-12 14:31:23', '2021-08-12 14:31:23', 2),
(91, 91, 'Royal Eraville Ventures', '27AAFAR2934N1Z2', '+91 9970076849', 'Sr no 181, sade satra nali, behind Amnora park, hadapsar \r\nContact:Nasir Alase\r\nPUNE\r\nMaharashtra\r\n411028', 'Sr no 181, sade satra nali, behind Amnora park, hadapsar \r\nContact:Nasir Alase\r\nPUNE\r\nMaharashtra\r\n411028', 'on', '2021-08-12 14:37:49', '2021-08-12 14:37:49', 67),
(92, 92, 'NIRMITI BUILDCOM', '27AAMFN6503H1Z5', '+91 9922471017', 'baner pune\r\npune\r\nMaharashtra\r\n411045', 'baner pune\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-08-12 14:38:43', '2021-08-12 14:38:43', 14),
(93, 93, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', '+91 8459471113', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'on', '2021-08-12 14:40:41', '2021-08-12 14:40:41', 38),
(94, 94, 'AUM HOUSING', '27AAKA4028N1Z7', '+91 9850243628', 'BANER PUNE 45\r\npune\r\nMaharashtra\r\n411045', 'BANER PUNE 45\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-08-12 14:53:27', '2021-08-12 14:53:27', 4),
(95, 95, 'Parnavi Enteprises', '27ADOPN5225D1ZJ', '+91 9822316873', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'on', '2021-08-12 14:56:34', '2021-08-12 14:56:34', 66),
(96, 96, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'BANER ONE \r\nSR NO 23 \r\nPAN CARD CLUB ROAD \r\nBANER PUNE 411045', 'off', '2021-08-13 16:35:17', '2021-08-13 18:09:55', 68),
(97, 97, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-13 16:39:38', '2021-08-13 16:39:38', 12),
(98, 98, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'bhosari', 'off', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 12),
(99, 99, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-08-20 18:40:04', '2021-08-20 18:40:04', 12),
(100, 100, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-08-20 18:42:40', '2021-08-20 18:42:40', 12),
(101, 101, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOORSAPPHIRE \r\nTATHWADE', 'off', '2021-08-21 12:44:24', '2021-08-21 12:44:24', 29),
(102, 102, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-08-21 12:48:30', '2021-08-21 12:48:30', 23),
(103, 103, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-08-21 12:51:12', '2021-08-21 12:51:12', 12),
(104, 104, 'KHETAWAT ENTERPRISES', '27BEMPK0082A1ZL', '+91 9822499232', 'PASHAN BANER \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n415045', 'PASHAN BANER \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n415045', 'on', '2021-08-21 14:48:33', '2021-08-21 14:48:33', 69),
(105, 105, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-21 16:28:48', '2021-08-21 16:28:48', 12),
(106, 106, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', '+91 8600492350', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-08-23 16:24:42', '2021-08-23 16:24:42', 52),
(107, 107, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 17),
(108, 108, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 23),
(109, 109, 'Parnavi Enteprises', '27ADOPN5225D1ZJ', '+91 9822316873', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'on', '2021-08-24 17:09:20', '2021-08-24 17:09:20', 66),
(110, 110, 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '27AAECR7330R1ZR', '+91 9022499719', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'on', '2021-08-24 17:13:09', '2021-08-24 17:13:09', 33),
(111, 111, 'Parklane Construction LLP', '27AATFP4446L1ZH', '+91 9960644420', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'on', '2021-08-27 14:38:42', '2021-08-27 14:38:42', 35),
(112, 112, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-02 17:16:01', '2021-09-02 17:16:01', 34),
(113, 113, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-02 17:43:20', '2021-09-02 17:43:20', 34),
(114, 114, 'J P ENTERPRISE', '27AAAFJ0870H1ZJ', '+91 7028029095', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', 'on', '2021-09-02 18:05:00', '2021-09-21 18:19:41', 74),
(115, 115, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-09-09 12:38:06', '2021-09-09 12:38:06', 29),
(116, 116, 'RAMDAS DHANAJI DHANKUDE', '27AHWPD3801H1ZB', '+91 9763665897', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'on', '2021-09-09 12:43:13', '2021-09-09 12:43:13', 70),
(117, 117, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'sara metrovilla \r\npunawale', 'off', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 23),
(118, 118, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 23),
(119, 119, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-09-16 13:27:19', '2021-09-16 13:27:19', 29),
(120, 120, 'J P ENTERPRISE', '27AAAFJ0870H1ZJ', '+91 7028029095', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', 'off', '2021-09-16 16:35:50', '2021-10-01 14:21:22', 74),
(121, 121, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'IMPERIAL BANER', 'off', '2021-09-16 16:51:56', '2021-09-16 16:51:56', 3),
(122, 122, 'Kamal Pramotor & Builders', '27AAQFK0028A1ZQ', '+91 9923175628', 'Hadapsar\r\npune\r\nMaharashtra\r\n411013', 'Site avani', 'off', '2021-09-17 16:57:00', '2021-09-17 16:57:00', 72),
(123, 123, 'MADAN ENTERPRISES', '27AHPPB2250F1ZN', '+91 9011551220', 'AMBEGAON BUDRUK.\r\npune\r\nMaharashtra\r\n411046', 'AMBEGAON BUDRUK.\r\npune\r\nMaharashtra\r\n411046', 'on', '2021-09-17 17:03:38', '2021-09-17 17:03:38', 13),
(124, 124, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-09-17 17:23:59', '2021-09-17 17:23:59', 12),
(125, 125, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 2),
(126, 126, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'RAVET', 'off', '2021-09-17 17:35:16', '2021-09-17 17:35:16', 2),
(127, 127, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 17),
(128, 128, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-17 17:46:27', '2021-09-17 17:46:27', 34),
(129, 129, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'K 11 BALEWADI', 'off', '2021-09-17 17:55:13', '2021-09-17 17:55:13', 73),
(130, 130, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-09-18 19:36:37', '2021-09-18 19:36:37', 25),
(131, 131, 'J K ENTERPRISESE', '27ALHPJ7077Q1Z8', '+91 9850892391', 'GANESHKHIND ROAD \r\nAUNDH\r\nPUNE\r\nMaharashtra\r\n411007', 'GANESHKHIND ROAD \r\nAUNDH\r\nPUNE\r\nMaharashtra\r\n411007', 'on', '2021-09-23 17:53:57', '2021-09-23 17:53:57', 75),
(132, 132, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'IMPERIAL  BANER', 'off', '2021-09-24 13:15:49', '2021-09-24 13:15:49', 3),
(133, 133, 'Shreenath enterprise', '27BOKPS1120Q2ZG', '+91 9730401010', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-09-28 13:58:50', '2021-09-28 13:58:50', 76),
(134, 134, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'off', '2021-09-28 14:05:29', '2021-09-28 14:05:29', 12),
(135, 135, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 2),
(136, 136, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'BALEWADI', 'off', '2021-10-01 17:42:35', '2021-10-01 17:42:35', 73),
(137, 137, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'CRYSTAL', 'off', '2021-10-01 17:46:26', '2021-10-01 17:46:26', 68),
(138, 138, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'BANER', 'off', '2021-10-01 17:48:41', '2021-10-01 17:48:41', 68),
(139, 139, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-10-01 17:51:22', '2021-10-01 17:51:22', 12),
(140, 140, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'MHALUNGE', 'off', '2021-10-01 17:53:49', '2021-10-01 17:53:49', 73),
(141, 141, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-10-01 17:56:00', '2021-10-01 17:56:28', 25),
(142, 142, 'JAY BHAGWAN DEVLOPERS', '27AANFJ3002C1ZU', '+91 9823186513', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-10-01 17:58:34', '2021-10-01 17:58:34', 57),
(143, 143, 'KUMAR PROPERTIES', '27AAAFK6674L1ZV', '+91 9890898875', 'MOHAN NAGAR \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'MOHAN NAGAR \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 77),
(144, 144, 'RAMDAS DHANAJI DHANKUDE', '27AHWPD3801H1ZB', '+91 9763665897', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'on', '2021-10-01 18:09:59', '2021-10-01 18:09:59', 70);

-- --------------------------------------------------------

--
-- Table structure for table `dc_products`
--

CREATE TABLE `dc_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'goods',
  `quantity` decimal(8,2) NOT NULL,
  `unit` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  `dcSerial` int(11) DEFAULT NULL,
  `dcDate` date DEFAULT NULL,
  `vehicleNo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dcNo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dc_products`
--

INSERT INTO `dc_products` (`id`, `description`, `type`, `quantity`, `unit`, `created_at`, `updated_at`, `dc_id`, `dcSerial`, `dcDate`, `vehicleNo`, `dcNo`) VALUES
(1, 'Cement', 'goods', 1000.00, 'BGS', '2021-06-12 03:56:21', '2021-06-12 03:56:21', 2, 1, '2021-06-12', '1', 'MH123K1'),
(2, 'Cement', 'goods', 2.00, 'BGS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 1, '2021-05-26', NULL, NULL),
(3, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 2, '2021-05-24', NULL, NULL),
(4, 'METAL', 'goods', 1.00, 'CH', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 3, '2021-05-24', NULL, NULL),
(5, 'Cement', 'goods', 10.00, 'BGS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 4, '2021-05-24', NULL, NULL),
(6, 'Cement', 'goods', 5.00, 'BGS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 5, '2021-05-13', NULL, NULL),
(7, 'CRUSHAND', 'goods', 2.00, 'CH', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 6, '2021-04-30', NULL, NULL),
(8, 'Cement', 'goods', 5.00, 'BGS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 7, '2021-04-30', NULL, NULL),
(9, 'RIVER SAND', 'goods', 1.00, 'NOS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 8, '2021-04-14', NULL, NULL),
(10, 'RIVER SAND', 'goods', 1.00, 'NOS', '2021-06-15 15:19:19', '2021-06-15 15:19:19', 3, 9, '2021-04-12', NULL, NULL),
(11, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 15:32:33', '2021-06-15 15:32:33', 4, 1, '2021-06-09', NULL, NULL),
(12, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 15:32:33', '2021-06-15 15:32:33', 4, 2, '2021-06-11', NULL, NULL),
(13, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 15:48:50', '2021-06-15 15:48:50', 5, 1, '2021-06-09', NULL, '13801'),
(14, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 15:48:50', '2021-06-15 15:48:50', 5, 2, '2021-06-11', NULL, '13802'),
(15, 'CRUSHAND', 'goods', 6.16, 'Brass', '2021-06-15 16:09:06', '2021-06-15 16:09:06', 6, 1, '2021-05-16', NULL, '32315'),
(16, 'CRUSHAND', 'goods', 6.16, 'Brass', '2021-06-15 16:09:06', '2021-06-15 16:09:06', 6, 2, '2021-05-29', NULL, '12939'),
(17, 'RIVER SAND', 'goods', 6.85, 'Brass', '2021-06-15 16:09:06', '2021-06-15 16:09:06', 6, 3, '2021-06-02', NULL, '12940'),
(18, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 16:09:06', '2021-06-15 16:09:06', 6, 4, '2021-05-21', NULL, '13803'),
(19, 'Cement', 'goods', 200.00, 'BGS', '2021-06-15 16:14:23', '2021-06-15 16:14:23', 7, 1, '2021-05-30', NULL, NULL),
(20, 'Cement', 'goods', 250.00, 'BGS', '2021-06-15 16:17:38', '2021-06-15 16:17:38', 8, 1, '2021-04-27', NULL, NULL),
(21, 'Cement', 'goods', 160.00, 'BGS', '2021-06-15 16:23:02', '2021-06-15 16:23:02', 9, 1, '2021-06-21', NULL, NULL),
(22, 'PLASTER SAND', 'goods', 4.50, 'Brass', '2021-06-15 16:23:02', '2021-06-15 16:23:02', 9, 2, '2021-05-28', NULL, '1831'),
(23, 'METAL', 'goods', 3.00, 'Brass', '2021-06-15 16:23:02', '2021-06-15 16:23:02', 9, 3, '2021-02-24', NULL, '4995'),
(24, 'METAL', 'goods', 3.73, 'Brass', '2021-06-15 16:28:16', '2021-06-15 16:28:16', 10, 1, '2021-05-25', NULL, '12934'),
(25, 'CRUSHAND', 'goods', 3.82, 'Brass', '2021-06-15 16:28:16', '2021-06-15 16:28:16', 10, 2, '2021-05-26', NULL, '12935'),
(26, 'GRIT', 'goods', 2.14, 'Brass', '2021-06-15 16:31:47', '2021-06-15 16:31:47', 11, 1, '2021-03-31', NULL, NULL),
(27, '6\" BRIKS', 'goods', 300.00, 'NOS', '2021-06-15 16:42:07', '2021-06-15 16:42:07', 12, 1, '2021-04-22', NULL, '147'),
(28, '4\" BRIKS', 'goods', 160.00, 'NOS', '2021-06-15 16:42:07', '2021-06-15 16:42:07', 12, 2, '2021-04-22', NULL, '147'),
(29, '6\" BRIKS', 'goods', 7250.00, 'NOS', '2021-06-15 16:45:43', '2021-06-29 14:46:07', 13, 1, '2021-04-28', NULL, '11145'),
(30, '4\" BRIKS', 'goods', 8650.00, 'NOS', '2021-06-15 16:50:50', '2021-06-15 16:50:50', 14, 1, '2021-04-16', NULL, '10893'),
(31, 'RIVER SAND', 'goods', 30.00, 'NOS', '2021-06-15 16:56:01', '2021-06-15 16:56:01', 15, 1, '2021-03-27', NULL, NULL),
(32, 'BIRLA SHAKTI', 'goods', 3.00, 'BGS', '2021-06-15 16:56:01', '2021-06-15 16:56:01', 15, 2, '2021-03-27', NULL, NULL),
(33, 'steel 8 MM', 'goods', 1600.00, 'KG', '2021-06-16 13:48:38', '2021-06-16 13:48:38', 16, 1, '2021-06-13', NULL, NULL),
(34, 'steel 10,12,16,20,25', 'goods', 5810.00, 'KG', '2021-06-16 13:48:38', '2021-06-16 13:48:38', 16, 2, '2021-06-13', NULL, NULL),
(35, '4\" BRIKS', 'goods', 8980.00, 'NOS', '2021-06-16 13:53:40', '2021-06-16 13:53:40', 17, 1, '2021-06-06', NULL, NULL),
(36, 'RIVER SAND', 'goods', 3.00, 'Brass', '2021-06-16 16:45:38', '2021-06-16 16:45:38', 18, 1, '2021-06-11', NULL, '12946'),
(37, 'Cement', 'goods', 50.00, 'BGS', '2021-06-17 13:21:05', '2021-06-17 13:21:05', 19, 1, '2021-06-06', NULL, NULL),
(38, 'Cement', 'goods', 20.00, 'BGS', '2021-06-17 13:57:57', '2021-06-17 13:57:57', 20, 1, '2021-06-16', NULL, '12226'),
(39, 'MURUM', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 1, '2021-05-05', NULL, '12324'),
(40, 'MURUM', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 2, '2021-05-05', NULL, '12325'),
(41, 'MURUM', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 3, '2021-05-06', NULL, '12326'),
(42, 'MURUM', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 4, '2021-05-06', NULL, '12327'),
(43, 'GSB', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 5, '2021-05-07', NULL, '12328'),
(44, 'GSB', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 6, '2021-05-07', NULL, '12329'),
(45, 'GSB', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 7, '2021-05-07', NULL, '12330'),
(46, 'GSB', 'goods', 7.00, 'Brass', '2021-06-19 19:22:18', '2021-06-19 19:24:11', 21, 8, '2021-05-08', NULL, '12331'),
(47, 'RIVER SAND', 'goods', 4.54, 'Brass', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 22, 1, '2021-06-01', 'MH 12 RN 8145', '12833'),
(48, 'RIVER SAND', 'goods', 4.09, 'Brass', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 22, 2, '2021-05-29', 'MH 12 NX 4633', '12832'),
(49, 'RIVER SAND', 'goods', 4.31, 'Brass', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 22, 3, '2021-05-28', 'MH 12 NX 4633', '12831'),
(50, 'RIVER SAND', 'goods', 4.78, 'Brass', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 22, 4, '2021-05-16', 'MH 12 SF 7780', '12830'),
(51, 'RIVER SAND', 'goods', 5.01, 'Brass', '2021-06-21 15:41:10', '2021-06-21 15:41:10', 22, 5, '2021-05-16', 'MH 12 MV 7779', '12829'),
(52, 'RIVER SAND', 'goods', 6.98, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 1, '2021-06-18', 'MH 12 MV 7779', '12843'),
(53, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 2, '2021-06-18', 'MH12 HF 0887', '12842'),
(54, 'RIVER SAND', 'goods', 7.56, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 3, '2021-06-17', 'MH 12 MV 0133', '12841'),
(55, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 4, '2021-06-14', 'MH 12 SF 7780', '12839'),
(56, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 5, '2021-06-14', 'MH 12 MV 7779', '12838'),
(57, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 6, '2021-06-12', 'MH 12 SF 7780', '12837'),
(58, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 7, '2021-06-09', 'MH 12 MV 7779', '12836'),
(59, 'RIVER SAND', 'goods', 6.98, 'Brass', '2021-06-21 15:53:24', '2021-06-21 15:53:24', 23, 8, '2021-06-07', 'MH 12 SF 7780', '12834'),
(60, 'Cement', 'goods', 100.00, 'BGS', '2021-06-21 16:29:51', '2021-06-21 16:29:51', 24, 1, '2021-06-17', NULL, '2844'),
(61, 'Cement', 'goods', 200.00, 'BGS', '2021-06-21 16:32:41', '2021-06-21 16:32:41', 25, 1, '2021-06-19', NULL, '2845'),
(62, '4\" BRIKS', 'goods', 8011.00, 'NOS', '2021-06-22 14:01:26', '2021-06-22 14:01:26', 26, 1, '2021-06-21', NULL, NULL),
(63, 'Cement', 'goods', 20.00, 'BGS', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 27, 1, '2021-02-07', NULL, NULL),
(64, 'CRUSHAND', 'goods', 2.25, 'Brass', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 27, 2, '2021-02-08', NULL, NULL),
(65, 'METAL', 'goods', 1.00, 'CH', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 27, 3, '2021-02-08', NULL, NULL),
(66, '6\" BRIKS', 'goods', 200.00, 'NOS', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 27, 4, '2021-02-08', NULL, NULL),
(67, 'CRUSHAND', 'goods', 2.00, 'Brass', '2021-06-23 13:40:39', '2021-06-23 13:40:39', 27, 5, '2021-02-16', NULL, NULL),
(68, '4\" BRIKS', 'goods', 9400.00, 'NOS', '2021-06-24 18:01:16', '2021-06-24 18:01:16', 28, 1, '2021-06-16', 'MH 12 SF 7780', '78'),
(69, '4\" BRIKS', 'goods', 4500.00, 'Brass', '2021-06-28 12:29:54', '2021-06-28 12:33:46', 29, 1, '2021-06-24', 'MH 12 SF 7780', '13513'),
(70, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-06-28 14:25:23', '2021-06-29 12:46:41', 30, 1, '2021-04-17', NULL, NULL),
(71, 'RIVER SAND', 'goods', 0.00, 'Brass', '2021-06-28 14:25:23', '2021-06-29 12:46:41', 30, 2, '2021-05-20', NULL, NULL),
(72, '4\" BRIKS', 'goods', 9200.00, 'Brass', '2021-06-28 14:29:20', '2021-06-28 14:29:20', 31, 1, '2021-04-15', NULL, '2999'),
(73, 'CRUSHAND', 'goods', 2.82, 'Brass', '2021-06-29 13:08:43', '2021-06-29 13:08:43', 32, 1, '2021-06-25', NULL, '12854'),
(74, 'GRIT', 'goods', 2.82, 'Brass', '2021-06-29 13:08:43', '2021-06-29 13:08:43', 32, 2, '2021-06-25', NULL, '12855'),
(75, 'PLASTER SAND', 'goods', 5.44, 'Brass', '2021-06-29 13:18:12', '2021-06-29 13:18:12', 33, 1, '2021-06-26', 'MH 14 GS 8555', '12957'),
(76, 'RIVER SAND', 'goods', 7.22, 'Brass', '2021-06-29 13:40:08', '2021-06-29 13:40:08', 34, 1, '2021-06-22', 'MH 12 MV 0133', '13805'),
(77, 'Cement', 'goods', 200.00, 'BGS', '2021-06-29 13:44:42', '2021-06-29 13:44:42', 35, 1, '2021-06-26', NULL, '85'),
(78, 'METAL', 'goods', 6.97, 'Brass', '2021-06-29 13:53:57', '2021-06-29 13:53:57', 36, 1, '2021-06-21', NULL, '12230'),
(79, 'Cement', 'goods', 200.00, 'BGS', '2021-06-29 13:58:01', '2021-06-29 13:58:01', 37, 1, '2021-06-29', NULL, NULL),
(80, 'FLYASH BRICKS', 'goods', 3810.00, 'NOS', '2021-06-29 14:03:43', '2021-06-29 14:03:43', 38, 1, '2021-05-21', NULL, NULL),
(81, 'FLYASH BRICKS', 'goods', 3690.00, 'NOS', '2021-06-29 14:03:43', '2021-06-29 14:03:43', 38, 2, '2021-05-22', NULL, NULL),
(82, 'FLYASH BRICKS', 'goods', 3711.00, 'NOS', '2021-06-29 14:03:43', '2021-06-29 14:03:43', 38, 3, '2021-05-25', NULL, NULL),
(83, 'METAL', 'goods', 2.00, 'CH', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 1, '2021-06-15', NULL, NULL),
(84, 'METAL', 'goods', 3.50, 'Brass', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 2, '2021-06-17', NULL, NULL),
(85, 'Cement', 'goods', 100.00, 'BGS', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 3, '2021-06-18', NULL, NULL),
(86, 'Cement', 'goods', 20.00, 'BGS', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 4, '2021-06-28', NULL, NULL),
(87, 'Cement', 'goods', 100.00, 'BGS', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 5, '2021-06-29', NULL, NULL),
(88, 'FLYASH BRICKS', 'goods', 3000.00, 'NOS', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 6, '2021-06-17', NULL, NULL),
(89, 'CRUSHAND', 'goods', 2.00, 'CH', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 7, '2021-06-27', NULL, NULL),
(90, 'CRUSHAND', 'goods', 2.50, 'Brass', '2021-06-29 14:16:29', '2021-06-29 14:16:29', 39, 8, '2021-06-27', NULL, NULL),
(91, '4\" BRIKS', 'goods', 3000.00, 'NOS', '2021-06-29 14:31:31', '2021-06-29 14:31:31', 40, 1, '2021-06-24', 'MH 12 SF 7780', '13514'),
(92, '4\" BRIKS', 'goods', 2000.00, 'NOS', '2021-06-29 14:31:31', '2021-06-29 14:31:31', 40, 2, '2021-05-27', NULL, NULL),
(93, 'METAL', 'goods', 1.00, 'CH', '2021-06-29 15:05:53', '2021-06-29 15:05:53', 41, 1, '2021-05-10', NULL, NULL),
(94, 'METAL', 'goods', 1.00, 'CH', '2021-06-29 15:05:53', '2021-06-29 15:05:53', 41, 2, '2021-06-24', NULL, NULL),
(95, 'Cement', 'goods', 10.00, 'BGS', '2021-06-29 15:05:53', '2021-06-29 15:05:53', 41, 3, '2021-06-01', NULL, '5656'),
(96, 'Cement', 'goods', 10.00, 'BGS', '2021-06-29 15:05:53', '2021-06-29 15:05:53', 41, 4, '2021-06-18', NULL, NULL),
(97, 'BLOCK', 'goods', 150.00, 'NOS', '2021-06-29 15:10:17', '2021-06-29 15:10:17', 42, 1, '2021-04-20', NULL, '5636'),
(98, 'Cement', 'goods', 300.00, 'BGS', '2021-06-29 15:13:54', '2021-06-29 15:13:54', 43, 1, '2021-06-28', NULL, '12859'),
(99, '4\" BRIKS', 'goods', 330.00, 'NOS', '2021-06-29 18:32:25', '2021-06-29 18:32:25', 44, 1, '2021-06-29', NULL, NULL),
(100, '4\" BRIKS', 'goods', 9300.00, 'NOS', '2021-07-01 12:21:23', '2021-07-01 12:21:23', 45, 1, '2021-06-30', NULL, NULL),
(101, '4\" BRIKS', 'goods', 500.00, 'BGS', '2021-07-02 13:01:22', '2021-07-02 13:02:46', 46, 1, '2021-06-30', NULL, '13806'),
(102, '4\" BRIKS', 'goods', 4500.00, 'NOS', '2021-07-02 13:04:39', '2021-07-02 13:04:39', 47, 1, '2021-07-02', NULL, NULL),
(103, 'Cement', 'goods', 5.00, 'BGS', '2021-07-02 14:37:54', '2021-07-02 14:37:54', 48, 1, '2021-06-27', NULL, NULL),
(104, 'RIVER SAND', 'goods', 33.20, 'Brass', '2021-07-02 15:33:37', '2021-07-02 15:33:37', 49, 1, '2020-07-07', NULL, NULL),
(105, 'Cement', 'goods', 20.00, 'BGS', '2021-07-02 18:38:30', '2021-07-02 18:38:30', 50, 1, '2021-06-26', NULL, NULL),
(106, 'Cement', 'goods', 25.00, 'BGS', '2021-07-02 18:38:30', '2021-07-02 18:38:30', 50, 2, '2021-06-28', NULL, NULL),
(107, 'Cement', 'goods', 15.00, 'BGS', '2021-07-02 18:38:30', '2021-07-02 18:38:30', 50, 3, '2021-06-25', NULL, NULL),
(108, 'Cement', 'goods', 10.00, 'BGS', '2021-07-08 12:37:57', '2021-07-08 12:37:57', 51, 1, '2021-06-18', NULL, NULL),
(109, 'Cement', 'goods', 25.00, 'BGS', '2021-07-08 12:37:57', '2021-07-08 12:37:57', 51, 2, '2021-06-24', NULL, NULL),
(110, 'Cement', 'goods', 30.00, 'BGS', '2021-07-08 12:37:57', '2021-07-08 12:37:57', 51, 3, '2021-06-07', NULL, NULL),
(111, 'FLYASH BRICKS', 'goods', 4347.00, 'NOS', '2021-07-08 12:47:28', '2021-07-08 12:47:28', 52, 1, '2021-02-23', NULL, NULL),
(112, 'FLYASH BRICKS', 'goods', 3906.00, 'NOS', '2021-07-08 12:47:28', '2021-07-08 12:47:28', 52, 2, '2021-03-01', NULL, NULL),
(113, 'FLYASH BRICKS', 'goods', 3906.00, 'NOS', '2021-07-08 12:47:28', '2021-07-08 12:47:28', 52, 3, '2021-03-06', NULL, NULL),
(114, 'Cement', 'goods', 200.00, 'BGS', '2021-07-08 12:50:32', '2021-07-08 12:50:32', 53, 1, '2021-07-07', NULL, '13807'),
(115, 'Cement', 'goods', 15.00, 'BGS', '2021-07-08 12:56:21', '2021-07-08 12:56:21', 54, 1, '2021-06-30', NULL, NULL),
(116, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-07-08 12:56:21', '2021-07-08 12:56:21', 54, 2, '2021-07-05', NULL, NULL),
(117, 'Cement', 'goods', 5.00, 'BGS', '2021-07-08 13:02:42', '2021-07-13 14:54:42', 55, 1, '2021-06-27', NULL, NULL),
(118, 'Cement', 'goods', 7.00, 'BGS', '2021-07-08 13:02:42', '2021-07-13 14:54:42', 55, 2, '2021-07-05', NULL, NULL),
(119, 'Cement', 'goods', 7.00, 'BGS', '2021-07-08 13:02:42', '2021-07-13 14:54:42', 55, 3, '2021-07-04', NULL, NULL),
(120, 'Cement', 'goods', 7.00, 'BGS', '2021-07-08 13:02:42', '2021-07-13 14:54:42', 55, 4, '2021-07-12', NULL, NULL),
(121, 'SANLA', 'goods', 10.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 1, '2021-01-22', NULL, NULL),
(122, 'SANLA', 'goods', 30.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 2, '2021-02-01', NULL, NULL),
(123, 'SANLA', 'goods', 12.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 3, '2021-02-08', NULL, NULL),
(124, 'SANLA', 'goods', 12.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 4, '2021-02-10', NULL, NULL),
(125, '6\" BRIKS', 'goods', 1000.00, 'NOS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 5, '2021-06-04', NULL, NULL),
(126, 'Cement', 'goods', 10.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 6, '2021-06-29', NULL, NULL),
(127, 'Cement', 'goods', 40.00, 'BGS', '2021-07-08 13:10:39', '2021-07-08 13:10:39', 56, 7, '2021-06-30', NULL, NULL),
(128, '4\" BRIKS', 'goods', 4330.00, 'NOS', '2021-07-08 13:15:01', '2021-07-08 13:15:01', 57, 1, '2021-06-02', NULL, '13521'),
(129, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-07-09 13:02:27', '2021-07-09 13:02:27', 58, 1, '2021-06-28', 'MH 12 MD 1323', '12333'),
(130, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-07-09 13:02:27', '2021-07-09 13:02:27', 58, 2, '2021-06-28', 'MH 12 SF 7780', '12334'),
(131, 'RIVER SAND', 'goods', 6.83, 'Brass', '2021-07-09 13:02:27', '2021-07-09 13:02:27', 58, 3, '2021-07-01', 'MH 12 MV 5222', '12335'),
(132, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-07-09 13:02:27', '2021-07-09 13:02:27', 58, 4, '2021-07-03', 'MH 12 MV 0133', '12336'),
(133, 'RIVER SAND', 'goods', 7.55, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 1, '2021-05-24', 'MH 12 MV 5222', '12323'),
(134, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 2, '2021-07-05', 'MH 12 MV 0133', '12332'),
(135, 'RIVER SAND', 'goods', 6.81, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 3, '2021-06-27', 'MH 12 MV 7779', '12961'),
(136, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 4, '2021-06-27', 'MH 12 MV 7779', '12962'),
(137, 'RIVER SAND', 'goods', 7.52, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 5, '2021-06-28', 'MH 12 MV 0133', '12963'),
(138, 'RIVER SAND', 'goods', 7.52, 'Brass', '2021-07-09 13:52:53', '2021-07-09 13:52:53', 59, 6, '2021-06-28', 'MH 12 MV 7780', '12964'),
(139, 'RIVER SAND', 'goods', 6.87, 'Brass', '2021-07-12 18:15:01', '2021-07-12 18:15:01', 60, 1, '2021-07-12', 'MH 12 MF 0133', '12881'),
(140, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-07-12 18:15:01', '2021-07-12 18:15:01', 60, 2, '2021-07-12', 'MH 12 SF 7780', '12882'),
(141, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-07-12 18:15:01', '2021-07-12 18:15:01', 60, 3, '2021-07-12', 'MH 12 MV 7779', '12883'),
(142, 'RIVER SAND', 'goods', 7.61, 'Brass', '2021-07-12 18:15:01', '2021-07-12 18:15:01', 60, 4, '2021-07-12', 'MH 12 MV 0133', '12884'),
(143, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 1, '2021-07-12', 'MH 12 SF 7779', '12866'),
(144, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 2, '2021-07-12', 'MH 12 SF 7780', '12867'),
(145, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 3, '2021-07-12', 'MH 12 MV 0133', '12868'),
(146, 'RIVER SAND', 'goods', 5.07, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 4, '2021-07-12', 'MH 12 NX 4633', '12869'),
(147, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 5, '2021-07-12', 'MH 12 SF 7779', '12870'),
(148, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 6, '2021-07-12', 'MH 12 GF 7780', '12871'),
(149, 'RIVER SAND', 'goods', 5.18, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 7, '2021-07-12', 'MH 12 MV 4633', '12872'),
(150, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 8, '2021-07-12', 'MH 12 SF 7779', '12873'),
(151, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 9, '2021-07-12', 'MH 12 SF 7780', '12874'),
(152, 'RIVER SAND', 'goods', 6.15, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 10, '2021-07-12', 'MH 12 MV 4633', '12875'),
(153, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 11, '2021-07-12', 'MH 12 MV 0133', '12876'),
(154, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 12, '2021-07-12', 'MH 12 SF 7779', '12877'),
(155, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 13, '2021-07-12', 'MH 12 SF 7780', '12878'),
(156, 'RIVER SAND', 'goods', 6.07, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 14, '2021-07-12', 'MH 12 SF 7779', '12879'),
(157, 'RIVER SAND', 'goods', 6.48, 'Brass', '2021-07-12 18:26:09', '2021-07-12 18:26:09', 61, 15, '2021-07-12', 'MH 12 NX 4633', '12880'),
(158, 'Cement', 'goods', 600.00, 'BGS', '2021-07-13 12:52:59', '2021-07-13 12:52:59', 62, 1, '2021-07-12', NULL, '13808'),
(159, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-07-13 14:54:42', '2021-07-13 14:54:42', 55, 5, '2021-07-04', NULL, NULL),
(160, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-07-13 14:54:42', '2021-07-13 14:54:42', 55, 6, '2021-07-08', NULL, NULL),
(161, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-07-13 14:54:42', '2021-07-13 14:54:42', 55, 7, '2021-07-12', NULL, NULL),
(162, '6\" BRIKS', 'goods', 800.00, 'NOS', '2021-07-13 14:54:42', '2021-07-13 14:54:42', 55, 8, '2021-07-08', NULL, NULL),
(163, '4\" BRIKS', 'goods', 10082.00, 'NOS', '2021-07-15 13:20:57', '2021-07-15 13:20:57', 63, 1, '2021-06-09', 'MH 12 SF 7780', '13526'),
(164, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-07-15 13:20:57', '2021-07-15 13:20:57', 63, 2, '2021-06-30', NULL, '13005'),
(165, 'CRUSHAND', 'goods', 3.50, 'Brass', '2021-07-15 13:20:57', '2021-07-15 13:20:57', 63, 3, '2021-07-01', NULL, '396'),
(166, 'PLASTER SAND', 'goods', 4.50, 'Brass', '2021-07-15 13:20:57', '2021-07-15 13:20:57', 63, 4, '2021-06-08', NULL, '714'),
(167, 'RIVER SAND', 'goods', 1.00, 'CH', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 1, '2021-07-02', NULL, NULL),
(168, 'RIVER SAND', 'goods', 1.00, 'CH', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 2, '2021-07-03', NULL, NULL),
(169, 'Cement', 'goods', 25.00, 'BGS', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 3, '2021-07-08', NULL, NULL),
(170, 'Cement', 'goods', 25.00, 'BGS', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 4, '2021-07-09', NULL, NULL),
(171, 'Cement', 'goods', 20.00, 'BGS', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 5, '2021-07-10', NULL, NULL),
(172, 'Cement', 'goods', 50.00, 'BGS', '2021-07-15 13:26:52', '2021-07-15 13:26:52', 64, 6, '2021-07-12', NULL, NULL),
(173, 'Cement', 'goods', 100.00, 'BGS', '2021-07-15 13:34:55', '2021-07-15 13:34:55', 65, 1, '2021-06-30', NULL, NULL),
(174, 'Cement', 'goods', 100.00, 'BGS', '2021-07-15 13:34:55', '2021-07-15 13:34:55', 65, 2, '2021-07-07', NULL, NULL),
(175, 'Cement', 'goods', 300.00, 'BGS', '2021-07-23 16:03:52', '2021-07-23 16:03:52', 66, 1, '2021-07-21', NULL, '13809'),
(176, '4\" BRIKS', 'goods', 9309.00, 'NOS', '2021-07-23 16:37:59', '2021-07-23 16:37:59', 67, 1, '2021-07-21', NULL, NULL),
(177, '4\" BRIKS', 'goods', 9157.00, 'NOS', '2021-07-23 16:40:21', '2021-07-23 16:40:21', 68, 1, '2021-07-14', NULL, '13005'),
(178, '4\" BRIKS', 'goods', 10682.00, 'NOS', '2021-07-23 16:40:21', '2021-07-23 16:40:21', 68, 2, '2021-07-21', NULL, '13008'),
(179, '4\" BRIKS', 'goods', 11205.00, 'NOS', '2021-07-23 16:49:10', '2021-07-23 16:49:10', 69, 1, '2021-07-15', 'MH 12 MV 7779', '12965'),
(180, 'RIVER SAND', 'goods', 6.67, 'Brass', '2021-07-23 16:49:10', '2021-07-23 16:49:10', 69, 2, '2021-07-21', 'MH 12 SA 7551', '12250'),
(181, 'Cement', 'goods', 100.00, 'BGS', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 70, 1, '2021-07-22', NULL, NULL),
(182, 'Cement', 'goods', 100.00, 'BGS', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 70, 2, '2021-07-20', NULL, NULL),
(183, '4\" BRIKS', 'goods', 8700.00, 'NOS', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 70, 3, '2021-07-13', NULL, '13531'),
(184, '4\" BRIKS', 'goods', 8900.00, 'NOS', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 70, 4, '2021-07-20', NULL, '13535'),
(185, 'CRUSHAND', 'goods', 4.34, 'Brass', '2021-07-23 17:08:38', '2021-07-23 17:08:38', 70, 5, '2021-07-14', NULL, '13534'),
(186, 'Cement', 'goods', 100.00, 'BGS', '2021-07-26 12:57:25', '2021-07-26 12:57:25', 71, 1, '2021-07-15', NULL, NULL),
(187, 'RIVER SAND', 'goods', 5.96, 'Brass', '2021-07-26 14:42:17', '2021-07-26 14:42:17', 72, 1, '2021-06-11', 'MH 12 NX 4633', '12846'),
(188, 'CRUSHAND', 'goods', 5.58, 'Brass', '2021-07-26 14:42:17', '2021-07-26 14:42:17', 72, 2, '2021-06-04', 'MH 12 SF 7780', '12847'),
(189, 'RIVER SAND', 'goods', 5.80, 'Brass', '2021-07-26 14:42:17', '2021-07-26 14:42:17', 72, 3, '2021-06-11', 'MH 12 MV 7779', '12848'),
(190, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 1, '2021-07-15', 'MH 12 MV 7779', '12892'),
(191, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 2, '2021-07-16', 'MH 12 MV 7779', '12893'),
(192, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 3, '2021-07-17', 'MH 12 SF 7780', '12894'),
(193, 'RIVER SAND', 'goods', 6.52, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 4, '2021-07-17', 'MH 12 MV 5122', '12895'),
(194, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 5, '2021-07-18', 'MH 12 SF 7780', '12896'),
(195, 'RIVER SAND', 'goods', 6.52, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 6, '2021-07-20', 'MH 12 MV 5122', '12897'),
(196, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 7, '2021-07-24', 'MH 12 NX 0183', '12898'),
(197, 'RIVER SAND', 'goods', 6.91, 'Brass', '2021-07-26 14:57:49', '2021-07-26 14:57:49', 73, 8, '2021-07-24', 'MH 12 MV 5222', '12899'),
(198, 'RIVER SAND', 'goods', 3.81, 'Brass', '2021-07-26 15:03:13', '2021-07-26 15:03:13', 74, 1, '2021-06-24', 'MH 12 MV 0133', '12885'),
(199, 'RIVER SAND', 'goods', 3.56, 'Brass', '2021-07-26 15:03:13', '2021-07-26 15:03:13', 74, 2, '2021-06-25', 'MH 12 EQ 9918', '12886'),
(200, 'RIVER SAND', 'goods', 3.54, 'Brass', '2021-07-26 15:03:13', '2021-07-26 15:03:13', 74, 3, '2021-07-03', 'MH 12 MV 7779', '12887'),
(201, 'RIVER SAND', 'goods', 3.12, 'Brass', '2021-07-26 15:03:13', '2021-07-26 15:03:13', 74, 4, '2021-07-10', 'MH 12 EQ 9918', '12888'),
(202, '4\" BRIKS', 'goods', 10341.00, 'NOS', '2021-07-26 15:05:38', '2021-07-26 15:05:38', 75, 1, '2021-07-13', 'MH 12 SF 7780', '12889'),
(203, '4\" BRIKS', 'goods', 9375.00, 'NOS', '2021-07-29 13:12:38', '2021-07-29 13:12:38', 76, 1, '2021-07-26', 'MH 12 SF 7780', NULL),
(204, '4\" BRIKS', 'goods', 9225.00, 'NOS', '2021-07-30 13:12:56', '2021-07-30 13:12:56', 77, 1, '2021-07-30', NULL, NULL),
(205, 'Cement', 'goods', 220.00, 'BGS', '2021-08-04 12:42:15', '2021-08-04 12:42:15', 78, 1, '2021-07-24', NULL, NULL),
(206, 'Cement', 'goods', 100.00, 'BGS', '2021-08-04 12:42:15', '2021-08-04 12:42:15', 78, 2, '2021-07-27', NULL, NULL),
(207, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-08-04 12:47:01', '2021-08-04 12:47:01', 79, 1, '2021-07-28', 'MH 12 MV 7789', '13412'),
(208, '4\" BRIKS', 'goods', 10500.00, 'NOS', '2021-08-04 12:47:01', '2021-08-04 12:47:01', 79, 2, '2021-07-31', 'MH 12 SF 7780', '13413'),
(209, 'RIVER SAND', 'goods', 5.82, 'Brass', '2021-08-04 12:52:16', '2021-08-04 12:52:16', 80, 1, '2021-07-15', 'MH 12 MV 0133', '13401'),
(210, 'RIVER SAND', 'goods', 5.64, 'Brass', '2021-08-04 12:52:16', '2021-08-04 12:52:16', 80, 2, '2021-07-20', 'MH 12 MV 0133', '13402'),
(211, 'RIVER SAND', 'goods', 7.22, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 1, '2021-07-31', 'MH 12 MV 0133', '13411'),
(212, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 2, '2021-07-31', 'MH 12 SF 7780', '13410'),
(213, 'RIVER SAND', 'goods', 7.13, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 3, '2021-07-30', 'MH 12 HD 5122', '13409'),
(214, 'RIVER SAND', 'goods', 7.56, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 4, '2021-07-30', 'MH 12 MV 0133', '13408'),
(215, 'RIVER SAND', 'goods', 7.13, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 5, '2021-07-28', 'MH 12 HD 5122', '13407'),
(216, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 6, '2021-07-28', 'MH 12 MV 0133', '134016'),
(217, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 7, '2021-07-27', 'MH 12 MV 7779', '13405'),
(218, 'RIVER SAND', 'goods', 7.33, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 8, '2021-07-26', 'MH 12 MV 7779', '13404'),
(219, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-08-04 13:03:23', '2021-08-04 13:03:23', 81, 9, '2021-07-24', 'MH 12 SF 7780', '134008'),
(220, 'RIVER SAND', 'goods', 7.67, 'Brass', '2021-08-05 16:19:13', '2021-08-05 16:19:13', 82, 1, '2021-08-01', 'MH 12 SF 7780', '13416'),
(221, 'RIVER SAND', 'goods', 7.84, 'Brass', '2021-08-05 16:19:13', '2021-08-05 16:19:13', 82, 2, '2021-08-05', 'MH 12 HD 5122', '13417'),
(222, '4\" BRIKS', 'goods', 8500.00, 'NOS', '2021-08-06 13:17:55', '2021-08-06 13:17:55', 83, 1, '2021-08-06', 'MH 12 MV 7779', '13013'),
(223, 'CRUSHAND', 'goods', 6.86, 'Brass', '2021-08-12 13:59:44', '2021-08-20 18:22:27', 84, 1, '2021-07-23', NULL, '13420'),
(224, 'CRUSHAND', 'goods', 6.86, 'Brass', '2021-08-12 13:59:44', '2021-08-20 18:22:27', 84, 2, '2021-07-25', NULL, '12968'),
(225, '4\" BRIKS', 'goods', 11786.00, 'NOS', '2021-08-12 13:59:44', '2021-08-13 14:13:25', 84, 3, '2021-07-24', 'MH 12 SF 7780', '12974'),
(226, 'Cement', 'goods', 200.00, 'BGS', '2021-08-12 14:02:27', '2021-08-12 14:02:27', 85, 1, '2021-07-21', NULL, NULL),
(227, 'Cement', 'goods', 200.00, 'BGS', '2021-08-12 14:04:06', '2021-08-12 14:04:06', 86, 1, '2021-07-29', NULL, NULL),
(228, 'PLASTER SAND', 'goods', 4.50, 'Brass', '2021-08-12 14:10:23', '2021-08-12 14:10:23', 87, 1, '2021-07-28', NULL, NULL),
(229, 'PLASTER SAND', 'goods', 3.50, 'Brass', '2021-08-12 14:10:23', '2021-08-12 14:10:23', 87, 2, '2021-08-04', NULL, NULL),
(230, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-08-12 14:10:23', '2021-08-12 14:10:23', 87, 3, '2021-07-29', NULL, NULL),
(231, 'Cement', 'goods', 250.00, 'BGS', '2021-08-12 14:12:23', '2021-08-12 14:12:23', 88, 1, '2021-07-25', NULL, NULL),
(232, 'Cement', 'goods', 100.00, 'BGS', '2021-08-12 14:26:15', '2021-08-12 14:26:15', 89, 1, '2021-08-06', NULL, NULL),
(233, 'Cement', 'goods', 0.00, 'BGS', '2021-08-12 14:26:15', '2021-08-20 18:16:20', 89, 2, '2021-08-07', NULL, NULL),
(234, 'Cement', 'goods', 100.00, 'BGS', '2021-08-12 14:31:23', '2021-08-12 14:31:23', 90, 1, '2021-08-09', NULL, NULL),
(235, 'CRUSHAND', 'goods', 6.36, 'Brass', '2021-08-12 14:31:23', '2021-08-12 14:31:23', 90, 2, '2021-08-10', NULL, NULL),
(236, 'Cement', 'goods', 100.00, 'BGS', '2021-08-12 14:37:49', '2021-08-12 14:37:49', 91, 1, '2021-08-09', NULL, NULL),
(237, 'Cement', 'goods', 35.00, 'BGS', '2021-08-12 14:38:43', '2021-08-12 14:38:43', 92, 1, '2021-07-30', NULL, NULL),
(238, 'Cement', 'goods', 20.00, 'BGS', '2021-08-12 14:40:41', '2021-08-12 14:46:42', 93, 1, '2021-07-28', NULL, NULL),
(239, 'Cement', 'goods', 20.00, 'BGS', '2021-08-12 14:40:41', '2021-08-12 14:46:42', 93, 2, '2021-07-31', NULL, NULL),
(240, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-08-12 14:53:27', '2021-08-12 14:53:27', 94, 1, '2021-08-11', NULL, NULL),
(241, 'METAL', 'goods', 1.00, 'CH', '2021-08-12 14:53:27', '2021-08-13 14:00:46', 94, 2, '2021-08-11', NULL, NULL),
(242, 'Cement', 'goods', 7.00, 'BGS', '2021-08-12 14:53:27', '2021-08-12 14:53:27', 94, 3, '2021-08-11', NULL, NULL),
(243, 'Cement', 'goods', 15.00, 'BGS', '2021-08-12 14:56:34', '2021-08-12 14:56:34', 95, 1, '2021-08-11', NULL, NULL),
(244, 'RIVER SAND', 'goods', 2.00, 'CH', '2021-08-12 14:56:34', '2021-08-12 14:56:34', 95, 2, '2021-08-11', NULL, NULL),
(245, 'Cement', 'goods', 20.00, 'BGS', '2021-08-13 16:35:17', '2021-08-13 16:35:17', 96, 1, '2021-06-24', NULL, NULL),
(246, 'Cement', 'goods', 10.00, 'BGS', '2021-08-13 16:35:17', '2021-08-13 16:35:17', 96, 2, '2021-06-18', NULL, NULL),
(247, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-08-13 16:39:38', '2021-08-13 16:39:38', 97, 1, '2021-08-12', 'MH 12 MV 7779', '13019'),
(248, 'CRUSHAND', 'goods', 4.88, 'Brass', '2021-08-13 16:39:38', '2021-08-13 16:39:38', 97, 2, '2021-08-11', 'MH 14 HG 8155', '13018'),
(249, 'PLASTER SAND', 'goods', 6.56, 'Brass', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 1, '2021-08-15', 'MH 14 JL 8155', '12275'),
(250, 'PLASTER SAND', 'goods', 6.66, 'Brass', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 2, '2021-08-15', 'MH 14 JL 8155', '12274'),
(251, 'PLASTER SAND', 'goods', 6.75, 'Brass', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 3, '2021-08-18', 'MH 14 JL 8155', '12277'),
(252, '4\" BRIKS', 'goods', 4750.00, 'NOS', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 4, '2021-08-18', 'MH 12 MV 7779', '12276'),
(253, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 5, '2021-08-12', 'MH 12 MV 7779', '13019'),
(254, 'CRUSHAND', 'goods', 4.88, 'Brass', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 6, '2021-08-11', 'MH 14 HG 8155', '13018'),
(255, 'Cement', 'goods', 250.00, 'BGS', '2021-08-20 18:36:31', '2021-08-20 18:36:31', 98, 7, '2021-08-18', NULL, NULL),
(256, 'CRUSHAND', 'goods', 6.16, 'Brass', '2021-08-20 18:40:04', '2021-08-20 18:40:04', 99, 1, '2021-08-02', 'MH 14 HG 8155', '12989'),
(257, 'CRUSHAND', 'goods', 4.50, 'Brass', '2021-08-20 18:42:40', '2021-08-20 18:42:40', 100, 1, '2021-08-13', 'MH 14 HG 8155', '1270'),
(258, 'RIVER SAND', 'goods', 7.09, 'Brass', '2021-08-21 12:44:24', '2021-08-21 12:44:24', 101, 1, '2021-08-06', 'MH 12 MV 0133', '13418'),
(259, 'RIVER SAND', 'goods', 7.13, 'Brass', '2021-08-21 12:44:24', '2021-08-21 12:44:24', 101, 2, '2021-08-11', 'MH 12 HD 5211', '13419'),
(260, '4\" BRIKS', 'goods', 8074.00, 'NOS', '2021-08-21 12:48:30', '2021-08-21 12:48:30', 102, 1, '2021-07-18', 'MH 12 SF 7780', '12891'),
(261, 'Cement', 'goods', 250.00, 'BGS', '2021-08-21 12:51:12', '2021-08-21 12:51:12', 103, 1, '2021-08-07', NULL, NULL),
(262, '4\" BRIKS', 'goods', 9400.00, 'NOS', '2021-08-21 14:48:33', '2021-08-21 14:48:33', 104, 1, '2021-08-02', NULL, NULL),
(263, 'PLASTER SAND', 'goods', 6.86, 'Brass', '2021-08-21 16:28:48', '2021-08-21 16:28:48', 105, 1, '2021-08-13', 'MH 14 JL 8155', '13420'),
(264, 'Cement', 'goods', 10.00, 'BGS', '2021-08-23 16:24:42', '2021-08-23 16:24:42', 106, 1, '2021-08-23', NULL, NULL),
(265, 'Cement', 'goods', 5.00, 'BGS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 1, '2021-07-22', NULL, NULL),
(266, 'Cement', 'goods', 5.00, 'BGS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 2, '2021-07-23', NULL, NULL),
(267, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 3, '2021-07-23', NULL, NULL),
(268, 'FLYASH BRICKS', 'goods', 300.00, 'NOS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 4, '2021-07-23', NULL, NULL),
(269, 'FLYASH BRICKS', 'goods', 300.00, 'NOS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 5, '2021-07-24', NULL, NULL),
(270, 'FLYASH BRICKS', 'goods', 300.00, 'NOS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 6, '2021-07-30', NULL, NULL),
(271, 'FLYASH BRICKS', 'goods', 300.00, 'NOS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 7, '2021-08-03', NULL, NULL),
(272, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 8, '2021-08-03', NULL, NULL),
(273, 'Cement', 'goods', 5.00, 'BGS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 9, '2021-08-03', NULL, NULL),
(274, 'FLYASH BRICKS', 'goods', 350.00, 'NOS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 10, '2021-08-04', NULL, NULL),
(275, 'Cement', 'goods', 5.00, 'BGS', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 11, '2021-08-07', NULL, NULL),
(276, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-08-23 16:34:55', '2021-08-23 16:34:55', 107, 12, '2021-08-09', NULL, NULL),
(277, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 1, '2021-07-09', 'MH 12 SF 7780', '13422'),
(278, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 2, '2021-07-21', 'MH 12 SF 7779', '13423'),
(279, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 3, '2021-07-22', 'MH 12 MV 0133', '13424'),
(280, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 4, '2021-07-23', 'MH 12 SF 7779', '13425'),
(281, 'RIVER SAND', 'goods', 5.07, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 5, '2021-08-01', 'MH 12 NX 4633', '13426'),
(282, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 6, '2021-08-02', 'MH 12 SF 7780', '13527'),
(283, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 7, '2021-08-03', 'MH 12 SF 7779', '13428'),
(284, 'RIVER SAND', 'goods', 6.15, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 8, '2021-08-06', 'MH 12 NX 4633', '13429'),
(285, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 9, '2021-08-08', 'MH 12 SF 7779', '13430'),
(286, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 10, '2021-08-10', 'MH 12 SF 7780', '13431'),
(287, 'RIVER SAND', 'goods', 6.48, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 11, '2021-08-15', 'MH 12 NY 4633', '13432'),
(288, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-08-24 14:19:46', '2021-08-24 14:19:46', 108, 12, '2021-08-19', 'MH 12 SF 7780', '13433'),
(289, 'Cement', 'goods', 10.00, 'BGS', '2021-08-24 17:09:20', '2021-08-24 17:09:20', 109, 1, '2021-08-23', NULL, NULL),
(290, 'Cement', 'goods', 100.00, 'BGS', '2021-08-24 17:13:09', '2021-08-24 17:13:15', 110, 1, '2021-08-20', NULL, NULL),
(291, '4\" BRIKS', 'goods', 8477.00, 'NOS', '2021-08-27 14:38:42', '2021-08-27 14:38:42', 111, 1, '2021-08-19', 'MH 12 HU 7444', '13434'),
(292, '6\" BRIKS', 'goods', 6600.00, 'NOS', '2021-09-02 17:16:01', '2021-09-02 17:16:01', 112, 1, '2021-09-01', NULL, NULL),
(293, '4\" BRIKS', 'goods', 9410.00, 'NOS', '2021-09-02 17:16:01', '2021-09-02 17:16:01', 112, 2, '2021-09-02', 'MH 12 MV 7779', '13031'),
(294, '4\" BRIKS', 'goods', 8819.00, 'NOS', '2021-09-02 17:43:20', '2021-09-02 17:43:20', 113, 1, '2021-08-30', NULL, NULL),
(295, '6\" BRIKS', 'goods', 6740.00, 'NOS', '2021-09-02 17:43:20', '2021-09-02 17:43:20', 113, 2, '2021-08-30', NULL, NULL),
(296, '4\" BRIKS', 'goods', 10500.00, 'NOS', '2021-09-02 18:05:00', '2021-09-02 18:06:25', 114, 1, '2021-08-17', 'mh 12 mv 7779', '13022'),
(297, '4\" BRIKS', 'goods', 10300.00, 'NOS', '2021-09-09 12:38:06', '2021-09-09 12:38:06', 115, 1, '2021-08-14', 'MH 12 SF 7750', '13549'),
(298, 'Cement', 'goods', 200.00, 'BGS', '2021-09-09 12:43:13', '2021-09-09 12:43:13', 116, 1, '2021-09-07', NULL, NULL),
(299, 'RIVER SAND', 'goods', 4.35, 'Brass', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 117, 1, '2021-07-31', 'MH 12 SF 7780', '13435'),
(300, 'RIVER SAND', 'goods', 5.12, 'Brass', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 117, 2, '2021-08-04', 'MH 16 BC 4100', '13437'),
(301, 'RIVER SAND', 'goods', 5.74, 'Brass', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 117, 3, '2021-08-16', 'MH 12 MV 0133', '13439'),
(302, 'RIVER SAND', 'goods', 5.54, 'Brass', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 117, 4, '2021-08-06', 'MH 12 NX 0300', '13438'),
(303, 'RIVER SAND', 'goods', 5.22, 'Brass', '2021-09-16 12:42:45', '2021-09-16 12:42:45', 117, 5, '2021-08-02', 'MH 16 BC 4100', '13436'),
(304, 'RIVER SAND', 'goods', 5.74, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 1, '2021-09-12', 'MH 12 HD 5122', '13467'),
(305, 'RIVER SAND', 'goods', 5.46, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 2, '2021-09-09', 'MH 12 HD 5122', '13466'),
(306, 'RIVER SAND', 'goods', 6.48, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 3, '2021-09-08', 'MH 12 NX 4633', '13465'),
(307, 'RIVER SAND', 'goods', 6.07, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 4, '2021-09-21', 'MH 12 SF 7779', '13464'),
(308, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 5, '2021-09-21', 'MH 12 SF 7780', '13463'),
(309, 'RIVER SAND', 'goods', 6.30, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 6, '2021-08-30', 'MH 12 SF 7779', '13462'),
(310, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 7, '2021-09-30', 'MH 12 MV 0133', '13461'),
(311, 'RIVER SAND', 'goods', 6.15, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 8, '2021-08-28', 'MH 12 NX 4633', '13460'),
(312, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 9, '2021-08-28', 'MH 12 SF 7780', '13459'),
(313, 'RIVER SAND', 'goods', 6.42, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 10, '2021-08-26', 'MH 12 SF 7779', '13458'),
(314, 'RIVER SAND', 'goods', 5.18, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 11, '2021-08-26', 'MH 12 NX 4633', '13457'),
(315, 'RIVER SAND', 'goods', 6.53, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 12, '2021-08-25', 'MH 12 SF 7779', '13456'),
(316, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 13, '2021-08-21', 'MH 12 SF 7780', '13455'),
(317, 'RIVER SAND', 'goods', 5.07, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 14, '2021-08-21', 'MH 12 NX 4633', '13454'),
(318, 'RIVER SAND', 'goods', 5.21, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 15, '2021-08-21', 'MH 12 MV 0133', '13453'),
(319, 'RIVER SAND', 'goods', 6.64, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 16, '2021-08-20', 'MH 12 SF 7780', '13452'),
(320, 'RIVER SAND', 'goods', 6.62, 'Brass', '2021-09-16 13:13:44', '2021-09-16 13:13:44', 118, 17, '2021-08-20', 'MH 12 SF 7779', '13451'),
(321, 'RIVER SAND', 'goods', 7.67, 'Brass', '2021-09-16 13:27:19', '2021-09-16 13:27:19', 119, 1, '2021-08-27', 'MH 12 SF 7780', '13440'),
(322, 'RIVER SAND', 'goods', 7.44, 'Brass', '2021-09-16 13:27:19', '2021-09-16 13:27:19', 119, 2, '2021-08-29', 'MH 12 SF 7780', '13441'),
(323, 'RIVER SAND', 'goods', 7.56, 'Brass', '2021-09-16 13:27:19', '2021-09-16 13:27:19', 119, 3, '2021-08-30', 'MH 12 NX 0133', '13442'),
(324, '4\" BRIKS', 'goods', 10500.00, 'Brass', '2021-09-16 16:35:50', '2021-10-01 14:21:22', 120, 1, '2021-09-24', 'MH 12 SF 7780', '13812'),
(325, 'CRUSHAND', 'goods', 3.00, 'Brass', '2021-09-16 16:51:56', '2021-09-16 16:51:56', 121, 1, '2021-09-04', 'MH 14 CT 3455', '12286'),
(326, '4\" BRIKS', 'goods', 10500.00, 'NOS', '2021-09-17 16:57:00', '2021-09-17 16:57:00', 122, 1, '2021-09-12', 'MH 12 SF 7780', '13559'),
(327, '4\" BRIKS', 'goods', 10500.00, 'NOS', '2021-09-17 16:57:00', '2021-09-17 16:57:00', 122, 2, '2021-09-15', 'MH 12 SF 7780', '13561'),
(328, 'Cement', 'goods', 10.00, 'BGS', '2021-09-17 17:03:38', '2021-09-17 17:03:38', 123, 1, '2021-02-24', NULL, NULL),
(329, 'Cement', 'goods', 20.00, 'BGS', '2021-09-17 17:03:38', '2021-09-17 17:03:38', 123, 2, '2021-02-25', NULL, NULL),
(330, 'Cement', 'goods', 5.00, 'BGS', '2021-09-17 17:03:38', '2021-09-17 17:03:38', 123, 3, '2021-03-01', NULL, NULL),
(331, 'SANLA', 'goods', 10.00, 'BGS', '2021-09-17 17:03:38', '2021-09-17 17:03:38', 123, 4, '2021-03-06', NULL, NULL),
(332, 'Cement', 'goods', 200.00, 'BGS', '2021-09-17 17:23:59', '2021-09-17 17:23:59', 124, 1, '2021-08-24', NULL, NULL),
(333, 'Cement', 'goods', 140.00, 'BGS', '2021-09-17 17:23:59', '2021-09-17 17:23:59', 124, 2, '2021-09-04', NULL, NULL),
(334, 'METAL', 'goods', 1.00, 'CH', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 125, 1, '2021-08-06', NULL, NULL),
(335, '4\" BRIKS', 'goods', 1600.00, 'NOS', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 125, 2, '2021-08-08', NULL, NULL),
(336, 'Cement', 'goods', 20.00, 'BGS', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 125, 3, '2021-08-08', NULL, NULL),
(337, 'METAL', 'goods', 1.00, 'CH', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 125, 4, '2021-08-18', NULL, NULL),
(338, '4\" BRIKS', 'goods', 1010.00, 'NOS', '2021-09-17 17:31:26', '2021-09-17 17:31:26', 125, 5, '2021-08-18', NULL, NULL),
(339, 'Cement', 'goods', 50.00, 'BGS', '2021-09-17 17:35:16', '2021-09-17 17:35:16', 126, 1, '2021-08-23', NULL, NULL),
(340, 'Cement', 'goods', 100.00, 'BGS', '2021-09-17 17:35:16', '2021-09-17 17:35:16', 126, 2, '2021-09-09', NULL, NULL),
(341, 'CRUSHAND', 'goods', 6.36, 'Brass', '2021-09-17 17:35:16', '2021-09-17 17:35:16', 126, 3, '2021-09-10', NULL, NULL),
(342, 'Cement', 'goods', 7.00, 'BGS', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 1, '2021-08-12', NULL, NULL),
(343, '6\" BRIKS', 'goods', 50.00, 'NOS', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 2, '2021-08-12', NULL, NULL),
(344, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 3, '2021-08-13', NULL, NULL),
(345, 'CRUSHAND', 'goods', 1.00, 'CH', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 4, '2021-08-16', NULL, NULL),
(346, 'Cement', 'goods', 5.00, 'BGS', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 5, '2021-08-17', NULL, NULL),
(347, 'Cement', 'goods', 5.00, 'BGS', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 6, '2021-08-24', NULL, NULL),
(348, 'Cement', 'goods', 5.00, 'BGS', '2021-09-17 17:41:09', '2021-09-17 17:41:09', 127, 7, '2021-08-27', NULL, NULL),
(349, '4\" BRIKS', 'goods', 9410.00, 'NOS', '2021-09-17 17:46:27', '2021-09-17 17:46:27', 128, 1, '2021-09-03', NULL, NULL),
(350, '4\" BRIKS', 'goods', 2500.00, 'NOS', '2021-09-17 17:46:27', '2021-09-17 19:11:32', 128, 2, '2021-08-22', NULL, NULL),
(351, '6\" BRIKS', 'goods', 6750.00, 'NOS', '2021-09-17 17:46:27', '2021-09-17 17:46:27', 128, 3, '2021-09-05', NULL, NULL),
(352, '6\" BRIKS', 'goods', 6780.00, 'NOS', '2021-09-17 17:46:27', '2021-09-17 17:46:27', 128, 4, '2021-09-07', NULL, NULL),
(353, '4\" BRIKS', 'goods', 9481.00, 'NOS', '2021-09-17 17:55:13', '2021-09-17 17:55:13', 129, 1, '2021-09-10', 'MH 12 SF 7780', '13558'),
(354, '4\" BRIKS', 'goods', 9400.00, 'NOS', '2021-09-18 19:36:37', '2021-09-18 19:36:37', 130, 1, '2021-09-02', NULL, NULL),
(355, '4\" BRIKS', 'goods', 9500.00, 'NOS', '2021-09-23 17:53:57', '2021-09-23 17:53:57', 131, 1, '2021-09-23', NULL, NULL),
(356, 'Cement', 'goods', 100.00, 'BGS', '2021-09-23 17:53:57', '2021-09-23 17:53:57', 131, 2, '2021-09-23', NULL, NULL),
(357, 'CRUSHAND', 'goods', 3.00, 'Brass', '2021-09-24 13:15:49', '2021-09-24 13:15:49', 132, 1, '2021-09-24', 'MH 12 CT 3455', '12295'),
(358, '4\" BRIKS', 'goods', 9000.00, 'NOS', '2021-09-28 13:58:50', '2021-09-28 13:58:50', 133, 1, '2021-09-27', NULL, NULL),
(359, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-09-28 14:05:29', '2021-09-28 14:05:29', 134, 1, '2021-09-08', 'MH 12 ME 7779', '12295'),
(360, 'Cement', 'goods', 200.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 1, '2021-09-08', NULL, NULL),
(361, 'METAL', 'goods', 1.00, 'CH', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 2, '2021-09-15', NULL, NULL),
(362, 'Cement', 'goods', 15.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 3, '2021-09-17', NULL, NULL),
(363, 'METAL', 'goods', 1.00, 'CH', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 4, '2021-09-20', NULL, NULL),
(364, 'RIVER SAND', 'goods', 1.00, 'CH', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 5, '2021-09-22', NULL, NULL),
(365, 'CRUSHAND', 'goods', 6.30, 'Brass', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 6, '2021-09-22', NULL, NULL),
(366, '4\" BRIKS', 'goods', 500.00, 'NOS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 7, '2021-09-23', NULL, NULL),
(367, 'Cement', 'goods', 20.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 8, '2021-09-24', NULL, NULL),
(368, 'METAL', 'goods', 2.00, 'CH', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 9, '2021-09-24', NULL, NULL),
(369, '4\" BRIKS', 'goods', 500.00, 'NOS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 10, '2021-09-24', NULL, NULL),
(370, 'Cement', 'goods', 10.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 11, '2021-09-25', NULL, NULL),
(371, 'Cement', 'goods', 50.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 12, '2021-09-26', NULL, NULL),
(372, 'Cement', 'goods', 55.00, 'BGS', '2021-10-01 17:38:31', '2021-10-01 17:38:31', 135, 13, '2021-09-28', NULL, NULL),
(373, '4\" BRIKS', 'goods', 9350.00, 'NOS', '2021-10-01 17:42:35', '2021-10-01 17:42:35', 136, 1, '2021-09-18', NULL, '13037'),
(374, '4\" BRIKS', 'goods', 2000.00, 'NOS', '2021-10-01 17:46:26', '2021-10-01 17:46:26', 137, 1, '2021-09-13', NULL, NULL),
(375, 'FLYASH BRICKS', 'goods', 1500.00, 'NOS', '2021-10-01 17:48:41', '2021-10-01 17:48:41', 138, 1, '2021-09-22', NULL, NULL),
(376, '4\" BRIKS', 'goods', 10000.00, 'NOS', '2021-10-01 17:51:22', '2021-10-01 17:51:22', 139, 1, '2021-09-08', NULL, '12295'),
(377, '4\" BRIKS', 'goods', 3300.00, 'NOS', '2021-10-01 17:53:49', '2021-10-01 17:53:49', 140, 1, '2021-09-17', NULL, '13036'),
(378, '4\" BRIKS', 'goods', 9350.00, 'NOS', '2021-10-01 17:56:00', '2021-10-01 17:56:00', 141, 1, '2021-09-26', NULL, '13562'),
(379, 'Cement', 'goods', 10.00, 'BGS', '2021-10-01 17:58:34', '2021-10-01 17:58:34', 142, 1, '2021-08-03', NULL, NULL),
(380, 'Cement', 'goods', 10.00, 'BGS', '2021-10-01 17:58:34', '2021-10-01 17:58:34', 142, 2, '2021-08-21', NULL, NULL),
(381, 'Cement', 'goods', 20.00, 'BGS', '2021-10-01 17:58:34', '2021-10-01 17:58:34', 142, 3, '2021-09-09', NULL, NULL),
(382, 'CRUSHAND', 'goods', 2.00, 'CH', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 143, 1, '2021-09-14', NULL, NULL),
(383, 'RCC PIEP', 'goods', 13.00, 'NOS', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 143, 2, '2021-09-16', NULL, NULL),
(384, 'METAL', 'goods', 1.00, 'CH', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 143, 3, '2021-09-15', NULL, NULL),
(385, 'FLYASH BRICKS', 'goods', 300.00, 'NOS', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 143, 4, '2021-09-16', NULL, NULL),
(386, 'Cement', 'goods', 8.00, 'BGS', '2021-10-01 18:05:54', '2021-10-01 18:05:54', 143, 5, '2021-09-17', NULL, NULL),
(387, 'Cement', 'goods', 200.00, 'BGS', '2021-10-01 18:09:59', '2021-10-01 18:09:59', 144, 1, '2021-10-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_settings`
--

CREATE TABLE `dc_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dcNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dcTerms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dc_settings`
--

INSERT INTO `dc_settings` (`id`, `serialPrefix`, `serialNumberStart`, `dcNotes`, `dcTerms`, `created_at`, `updated_at`) VALUES
(1, 'JAYBBM-DC-', '054', ' ', ' ', '2021-05-29 08:54:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `chequeNo` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `chequeNo` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `serialPrefix` varchar(100) NOT NULL,
  `serialNumber` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_settings`
--

CREATE TABLE `expense_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expenseNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expenseTerms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_settings`
--

INSERT INTO `expense_settings` (`id`, `serialPrefix`, `serialNumberStart`, `expenseNotes`, `expenseTerms`, `created_at`, `updated_at`) VALUES
(1, 'EXP-', '001', ' ', ' ', '2021-05-29 08:54:14', '2021-05-29 08:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `placeOfSupply` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherCharges` double DEFAULT '0',
  `invoiceStatus` enum('quote','unpaid','partial','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `discountType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalTaxableValue` decimal(10,2) NOT NULL,
  `totalIgstValue` decimal(10,2) NOT NULL,
  `totalCgstValue` decimal(10,2) NOT NULL,
  `totalSgstValue` decimal(10,2) NOT NULL,
  `totalCessValue` decimal(10,2) NOT NULL,
  `netValue` decimal(10,2) NOT NULL,
  `roundOffState` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `roundOffValue` decimal(4,2) NOT NULL,
  `grandValue` decimal(12,2) NOT NULL,
  `amountRecieved` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `serialPrefix`, `serialNumber`, `issueDate`, `dueDate`, `placeOfSupply`, `vehicleNo`, `otherCharges`, `invoiceStatus`, `discountType`, `totalTaxableValue`, `totalIgstValue`, `totalCgstValue`, `totalSgstValue`, `totalCessValue`, `netValue`, `roundOffState`, `roundOffValue`, `grandValue`, `amountRecieved`, `created_at`, `updated_at`) VALUES
(1, 'JAYBBM-', '001', '2021-04-02', '2021-05-02', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'on', 0.00, 0.00, 0.00, '2021-06-09 19:32:15', '2021-06-10 16:31:35'),
(2, 'JAYBBM-', '002', '2021-04-14', '2021-05-14', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 50880.00, 0.00, 1272.00, 1272.00, 0.00, 53424.00, 'on', 0.00, 53424.00, 53424.00, '2021-06-09 19:34:20', '2021-06-19 18:18:54'),
(3, 'JAYBBM-', '003', '2021-04-16', '2021-05-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 360600.00, 0.00, 9015.01, 9015.01, 0.00, 378630.00, 'on', 0.00, 378630.00, 378630.00, '2021-06-09 19:43:17', '2021-06-11 16:48:18'),
(4, 'JAYBBM-', '004', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 335386.80, 0.00, 8384.68, 8384.68, 0.00, 352156.13, 'on', -0.13, 352156.00, 352156.00, '2021-06-09 19:48:37', '2021-06-19 18:19:31'),
(5, 'JAYBBM-', '005', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 60300.00, 0.00, 1507.50, 1507.50, 0.00, 63315.00, 'on', 0.00, 63315.00, 63315.00, '2021-06-09 19:56:02', '2021-06-19 18:20:11'),
(6, 'JAYBBM-', '006', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 93408.00, 0.00, 2335.20, 2335.20, 0.00, 98078.40, 'on', -0.40, 98078.00, 98078.00, '2021-06-09 19:57:37', '2021-06-11 16:56:46'),
(7, 'JAYBBM-', '007', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 79750.00, 0.00, 1993.75, 1993.75, 0.00, 83737.50, 'on', 0.50, 83738.00, 83738.00, '2021-06-09 19:59:17', '2021-06-11 16:57:16'),
(8, 'JAYBBM-', '008', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50000.00, 0.00, 1250.00, 1250.00, 0.00, 52500.00, 'on', 0.00, 52500.00, 52500.00, '2021-06-09 20:00:53', '2021-06-11 17:02:08'),
(9, 'JAYBBM-', '009', '2021-04-13', '2021-05-13', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 79750.00, 0.00, 1993.75, 1993.75, 0.00, 83737.50, 'on', 0.50, 83738.00, 83738.00, '2021-06-09 20:02:06', '2021-06-11 17:03:47'),
(10, 'JAYBBM-', '010', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 71400.00, 0.00, 1785.00, 1785.00, 0.00, 74970.00, 'on', 0.00, 74970.00, 74970.00, '2021-06-09 20:04:10', '2021-06-11 17:04:09'),
(11, 'JAYBBM-', '011', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 13500.00, 0.00, 337.50, 337.50, 0.00, 14175.00, 'on', 0.00, 14175.00, 14175.00, '2021-06-09 20:09:50', '2021-06-11 17:05:46'),
(12, 'JAYBBM-', '012', '2021-05-24', '2021-06-23', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 105672.00, 0.00, 2641.80, 2641.80, 0.00, 110955.60, 'on', 0.40, 110956.00, 110956.00, '2021-06-10 14:03:44', '2021-06-11 14:02:00'),
(13, 'JAYBBM-', '013', '2021-04-30', '2021-05-30', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 373322.00, 0.00, 9333.04, 9333.04, 0.00, 391988.10, 'on', -0.10, 391988.00, 391988.00, '2021-06-10 14:11:56', '2021-06-11 17:10:49'),
(14, 'JAYBBM-', '014', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 74000.00, 0.00, 1850.00, 1850.00, 0.00, 77700.00, 'on', 0.00, 77700.00, 77700.00, '2021-06-10 14:21:00', '2021-06-11 17:25:35'),
(15, 'JAYBBM-', '015', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 32000.00, 0.00, 800.00, 800.00, 0.00, 33600.00, 'on', 0.00, 33600.00, 33600.00, '2021-06-10 14:22:59', '2021-06-11 17:26:36'),
(16, 'JAYBBM-', '016', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 1000, 'unpaid', 'discountrate', 18281.25, 0.00, 2559.39, 2559.39, 0.00, 24400.00, 'on', 0.00, 24400.00, 24400.00, '2021-06-10 14:30:48', '2021-06-11 17:28:51'),
(17, 'JAYBBM-', '017', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 71600.00, 0.00, 1790.00, 1790.00, 0.00, 75180.00, 'on', 0.00, 75180.00, 75180.00, '2021-06-10 14:39:17', '2021-06-11 17:30:48'),
(18, 'JAYBBM-', '018', '2021-05-06', '2021-06-05', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 618164.00, 0.00, 15454.13, 15454.13, 0.00, 649072.20, 'on', -0.20, 649072.00, 649072.00, '2021-06-10 14:53:48', '2021-06-11 17:38:16'),
(19, 'JAYBBM-', '019', '2021-04-17', '2021-05-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 32960.00, 0.00, 824.00, 824.00, 0.00, 34608.00, 'on', 0.00, 34608.00, 34608.00, '2021-06-10 14:56:06', '2021-06-11 17:41:54'),
(20, 'JAYBBM-', '020', '2021-04-27', '2021-05-27', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 29297.00, 0.00, 4101.58, 4101.58, 0.00, 37500.16, 'on', -0.16, 37500.00, 37500.00, '2021-06-10 15:01:15', '2021-06-11 17:43:13'),
(21, 'JAYBBM-', '021', '2021-05-04', '2021-06-03', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 255750.00, 0.00, 6393.76, 6393.76, 0.00, 268537.50, 'on', 0.50, 268538.00, 268538.00, '2021-06-10 16:00:48', '2021-06-14 14:37:04'),
(22, 'JAYBBM-', '022', '2021-05-24', '2021-06-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 260406.00, 0.00, 6510.15, 6510.15, 0.00, 273426.30, 'on', -0.30, 273426.00, 273426.00, '2021-06-10 16:05:07', '2021-06-11 18:14:20'),
(23, 'JAYBBM-', '023', '2021-05-05', '2021-06-04', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63648.00, 0.00, 1591.20, 1591.20, 0.00, 66830.40, 'on', -0.40, 66830.00, 66830.00, '2021-06-10 16:53:03', '2021-07-02 13:28:03'),
(24, 'JAYBBM-', '024', '2021-05-05', '2021-06-04', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 66500.00, 0.00, 1662.50, 1662.50, 0.00, 69825.00, 'on', 0.00, 69825.00, 69825.00, '2021-06-10 17:16:53', '2021-07-02 13:28:28'),
(25, 'JAYBBM-', '025', '2021-05-07', '2021-06-06', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63240.00, 0.00, 1581.00, 1581.00, 0.00, 66402.00, 'on', 0.00, 66402.00, 66402.00, '2021-06-10 17:21:59', '2021-07-02 13:28:36'),
(26, 'JAYBBM-', '026', '2021-05-07', '2021-06-06', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 60720.00, 0.00, 1518.00, 1518.00, 0.00, 63756.00, 'on', 0.00, 63756.00, 63756.00, '2021-06-10 17:23:47', '2021-06-11 18:19:51'),
(27, 'JAYBBM-', '027', '2021-05-07', '2021-06-06', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 197173.00, 0.00, 4929.34, 4929.34, 0.00, 207031.65, 'on', 0.35, 207032.00, 207032.00, '2021-06-10 17:27:43', '2021-06-11 18:22:11'),
(28, 'JAYBBM-', '028', '2021-05-07', '2021-06-06', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 146876.00, 0.00, 3671.90, 3671.90, 0.00, 154219.80, 'on', 0.20, 154220.00, 154220.00, '2021-06-10 17:43:11', '2021-06-14 14:56:10'),
(29, 'JAYBBM-', '029', '2021-05-18', '2021-06-17', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 56500.00, 0.00, 1412.50, 1412.50, 0.00, 59325.00, 'on', 0.00, 59325.00, 59325.00, '2021-06-10 20:10:49', '2021-07-02 13:28:45'),
(30, 'JAYBBM-', '030', '2021-05-18', '2021-06-17', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63240.00, 0.00, 1581.00, 1581.00, 0.00, 66402.00, 'on', 0.00, 66402.00, 0.00, '2021-06-11 12:19:01', '2021-07-02 13:27:45'),
(31, 'JAYBBM-', '031', '2021-05-24', '2021-06-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 57680.00, 0.00, 1442.00, 1442.00, 0.00, 60564.00, 'on', 0.00, 60564.00, 60564.00, '2021-06-11 12:21:30', '2021-06-11 19:03:48'),
(32, 'JAYBBM-', '032', '2021-05-24', '2021-06-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'on', 0.00, 0.00, 0.00, '2021-06-11 12:23:31', '2021-06-11 12:23:31'),
(33, 'JAYBBM-', '033', '2021-05-24', '2021-06-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 224664.00, 0.00, 5616.60, 5616.60, 0.00, 235897.20, 'on', -0.20, 235897.00, 235897.00, '2021-06-11 12:27:36', '2021-06-14 14:51:37'),
(34, 'JAYBBM-', '034', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 110697.30, 0.00, 2767.44, 2767.44, 0.00, 116232.17, 'on', -0.17, 116232.00, 116232.00, '2021-06-11 12:29:23', '2021-06-11 19:10:02'),
(35, 'JAYBBM-', '035', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 217000.00, 0.00, 5425.00, 5425.00, 0.00, 227850.00, 'on', 0.00, 227850.00, 227850.00, '2021-06-11 12:31:28', '2021-06-11 19:12:41'),
(36, 'JAYBBM-', '036', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 47223.00, 0.00, 1180.58, 1180.58, 0.00, 49584.15, 'on', -0.15, 49584.00, 49584.00, '2021-06-11 12:33:41', '2021-06-11 19:14:26'),
(37, 'JAYBBM-', '037', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 52904.00, 0.00, 1322.60, 1322.60, 0.00, 55549.20, 'on', -0.20, 55549.00, 55549.00, '2021-06-11 12:36:05', '2021-06-11 19:16:40'),
(38, 'JAYBBM-', '038', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 54560.00, 0.00, 1364.00, 1364.00, 0.00, 57288.00, 'on', 0.00, 57288.00, 57288.00, '2021-06-11 12:37:19', '2021-06-11 19:18:10'),
(39, 'JAYBBM-', '039', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 57680.00, 0.00, 1442.00, 1442.00, 0.00, 60564.00, 'on', 0.00, 60564.00, 60564.00, '2021-06-11 12:38:18', '2021-06-11 19:18:32'),
(40, 'JAYBBM-', '040', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 49386.65, 0.00, 1234.67, 1234.67, 0.00, 51855.98, 'on', 0.02, 51856.00, 51856.00, '2021-06-11 12:40:06', '2021-07-02 13:28:56'),
(41, 'JAYBBM-', '041', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 33598.50, 0.00, 839.96, 839.96, 0.00, 35278.43, 'on', -0.43, 35278.00, 35278.00, '2021-06-11 12:41:10', '2021-06-11 19:25:25'),
(42, 'JAYBBM-', '042', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 56840.00, 0.00, 1421.00, 1421.00, 0.00, 59682.00, 'on', 0.00, 59682.00, 59682.00, '2021-06-11 12:42:31', '2021-07-02 13:28:17'),
(43, 'JAYBBM-', '043', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 52612.80, 0.00, 4735.15, 4735.15, 0.00, 62083.10, 'on', -0.10, 62083.00, 62083.00, '2021-06-11 12:46:01', '2021-07-02 12:05:51'),
(44, 'JAYBBM-', '044', '2021-05-27', '2021-06-26', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 125400.00, 0.00, 3135.00, 3135.00, 0.00, 131670.00, 'on', 0.00, 131670.00, 131670.00, '2021-06-11 12:48:46', '2021-07-13 13:18:37'),
(45, 'JAYBBM-', '045', '2021-05-27', '2021-06-26', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 56057.60, 0.00, 1401.44, 1401.44, 0.00, 58860.48, 'on', -0.48, 58860.00, 58860.00, '2021-06-11 12:50:18', '2021-07-13 13:15:44'),
(46, 'JAYBBM-', '046', '2021-05-29', '2021-06-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 22200.00, 0.00, 1130.00, 1130.00, 0.00, 24460.00, 'on', 0.00, 24460.00, 24460.00, '2021-06-23 17:01:14', '2021-06-23 17:18:44'),
(47, 'JAYBBM-', '047', '2021-05-29', '2021-06-28', 'Maharashtra', NULL, 600, 'unpaid', 'discountrate', 16406.40, 0.00, 2296.90, 2296.90, 0.00, 21600.19, 'on', -0.19, 21600.00, 0.00, '2021-06-11 19:56:48', '2021-06-11 19:56:48'),
(48, 'JAYBBM-', '048', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 27031.45, 0.00, 3784.41, 3784.41, 0.00, 34600.25, 'on', -0.25, 34600.00, 34600.00, '2021-06-11 20:00:54', '2021-06-30 14:02:30'),
(49, 'JAYBBM-', '049', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 472018.00, 0.00, 11800.46, 11800.46, 0.00, 495618.90, 'on', 0.10, 495619.00, 0.00, '2021-06-11 20:09:09', '2021-06-11 20:09:09'),
(50, 'JAYBBM-', '050', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 317700.00, 0.00, 7942.52, 7942.52, 0.00, 333585.00, 'on', 0.00, 333585.00, 333585.00, '2021-06-11 20:14:32', '2021-06-14 14:45:49'),
(51, 'JAYBBM-', '051', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63240.00, 0.00, 1581.00, 1581.00, 0.00, 66402.00, 'on', 0.00, 66402.00, 0.00, '2021-06-11 20:17:47', '2021-07-02 13:29:37'),
(52, 'JAYBBM-', '052', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 170793.14, 0.00, 23474.04, 23474.04, 0.00, 217741.22, 'on', -0.22, 217741.00, 0.00, '2021-06-11 20:24:06', '2021-06-11 20:24:06'),
(53, 'JAYBBM-', '053', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 33878.40, 0.00, 4305.98, 4305.98, 0.00, 42490.35, 'on', -0.35, 42490.00, 0.00, '2021-06-11 20:43:25', '2021-06-11 20:43:25'),
(54, 'JAYBBM-', '054', '2021-06-12', '2021-07-12', 'Maharashtra', NULL, 300, 'paid', 'discountrate', 5468.80, 0.00, 765.63, 765.63, 0.00, 7300.06, 'on', -0.06, 7300.00, 0.00, '2021-06-12 14:04:10', '2021-06-12 14:04:46'),
(55, 'JAYBBM-', '055', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 700, 'paid', 'discountrate', 15542.20, 0.00, 933.91, 933.91, 0.00, 18110.02, 'on', -0.02, 18110.00, 18110.00, '2021-06-15 15:14:27', '2021-07-01 16:31:35'),
(56, 'JAYBBM-', '056', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 107812.00, 0.00, 15093.68, 15093.68, 0.00, 137999.36, 'on', -0.36, 137999.00, 137999.00, '2021-06-15 15:31:42', '2021-07-29 14:55:25'),
(57, 'JAYBBM-', '057', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 151706.00, 0.00, 10261.40, 10261.40, 0.00, 172228.80, 'on', 0.20, 172229.00, 137999.00, '2021-06-15 15:44:21', '2021-06-15 16:02:52'),
(58, 'JAYBBM-', '058', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-06-15 16:13:47', '2021-06-15 16:13:47'),
(59, 'JAYBBM-', '059', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 70312.50, 0.00, 9843.75, 9843.75, 0.00, 90000.00, 'on', 0.00, 90000.00, 0.00, '2021-06-15 16:16:34', '2021-06-15 16:16:34'),
(60, 'JAYBBM-', '060', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 83374.40, 0.00, 7187.42, 7187.42, 0.00, 97749.23, 'on', -0.23, 97749.00, 0.00, '2021-06-15 16:24:20', '2021-06-15 16:24:20'),
(61, 'JAYBBM-', '061', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 23050.00, 0.00, 576.25, 576.25, 0.00, 24202.50, 'on', 0.50, 24203.00, 0.00, '2021-06-15 16:26:36', '2021-06-15 16:26:36'),
(62, 'JAYBBM-', '062', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 7062.00, 0.00, 176.55, 176.55, 0.00, 7415.10, 'on', -0.10, 7415.00, 7415.00, '2021-06-15 16:30:31', '2021-06-16 15:28:47'),
(63, 'JAYBBM-', '063', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 1500, 'unpaid', 'discountrate', 30500.00, 0.00, 762.50, 762.50, 0.00, 33525.00, 'on', 0.00, 33525.00, 0.00, '2021-06-15 16:40:30', '2021-06-15 16:40:30'),
(64, 'JAYBBM-', '064', '2021-06-15', '2021-06-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 65250.00, 0.00, 1631.25, 1631.25, 0.00, 68512.50, 'on', 0.50, 68513.00, 0.00, '2021-06-15 16:44:29', '2021-06-29 12:54:31'),
(65, 'JAYBBM-', '065', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51900.00, 0.00, 1297.50, 1297.50, 0.00, 54495.00, 'on', 0.00, 54495.00, 0.00, '2021-06-15 16:49:52', '2021-06-15 16:49:52'),
(66, 'JAYBBM-', '066', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 3520.32, 0.00, 182.34, 182.34, 0.00, 3885.01, 'on', -0.01, 3885.00, 0.00, '2021-06-15 16:55:11', '2021-06-15 17:15:57'),
(67, 'JAYBBM-', '067', '2021-06-16', '2021-07-16', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 368731.80, 0.00, 33185.86, 33185.86, 0.00, 435103.52, 'on', 0.48, 435104.00, 0.00, '2021-06-16 13:47:31', '2021-06-21 14:27:37'),
(68, 'JAYBBM-', '068', '2021-06-16', '2021-07-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 56125.00, 0.00, 1403.13, 1403.13, 0.00, 58931.25, 'on', -0.25, 58931.00, 0.00, '2021-06-16 13:52:57', '2021-06-16 13:52:57'),
(69, 'JAYBBM-', '069', '2021-06-16', '2021-07-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 22200.00, 0.00, 555.00, 555.00, 0.00, 23310.00, 'on', 0.00, 23310.00, 0.00, '2021-06-16 16:44:52', '2021-06-16 16:44:52'),
(70, 'JAYBBM-', '070', '2021-06-17', '2021-07-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 14062.50, 0.00, 1968.75, 1968.75, 0.00, 18000.00, 'on', 0.00, 18000.00, 0.00, '2021-06-17 13:20:28', '2021-06-17 13:20:28'),
(71, 'JAYBBM-', '071', '2021-06-17', '2021-07-17', 'Maharashtra', NULL, 300, 'paid', 'discountrate', 5468.80, 0.00, 765.63, 765.63, 0.00, 7300.06, 'on', -0.06, 7300.00, 0.00, '2021-06-17 13:56:46', '2021-06-17 16:19:31'),
(72, 'JAYBBM-', '072', '2021-06-19', '2021-07-19', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 89600.00, 0.00, 2240.00, 2240.00, 0.00, 94080.00, 'on', 0.00, 94080.00, 0.00, '2021-06-19 19:19:10', '2021-06-19 19:19:10'),
(73, 'JAYBBM-', '073', '2021-06-21', '2021-07-21', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 165929.00, 0.00, 4148.23, 4148.23, 0.00, 174225.45, 'on', -0.45, 174225.00, 0.00, '2021-06-21 15:33:48', '2021-06-21 15:33:48'),
(74, 'JAYBBM-', '074', '2021-06-21', '2021-07-21', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 437925.00, 0.00, 10948.13, 10948.13, 0.00, 459821.25, 'on', -0.25, 459821.00, 0.00, '2021-06-21 15:46:03', '2021-06-21 15:46:03'),
(75, 'JAYBBM-', '075', '2021-06-21', '2021-07-21', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 26953.00, 0.00, 3773.42, 3773.42, 0.00, 34499.84, 'on', 0.16, 34500.00, 0.00, '2021-06-21 16:28:48', '2021-07-29 14:55:46'),
(76, 'JAYBBM-', '076', '2021-06-21', '2021-07-21', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-06-21 16:32:13', '2021-07-29 14:56:02'),
(77, 'JAYBBM-', '077', '2021-06-22', '2021-07-22', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 54474.80, 0.00, 1361.87, 1361.87, 0.00, 57198.54, 'on', 0.46, 57199.00, 0.00, '2021-06-22 14:00:54', '2021-07-02 13:29:22'),
(81, 'JAYBBM-', '078', '2021-06-24', '2021-07-24', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 56870.00, 0.00, 1421.75, 1421.75, 0.00, 59713.50, 'on', 0.50, 59714.00, 64155.00, '2021-06-24 17:56:18', '2021-07-01 14:38:17'),
(82, 'JAYBBM-', '079', '2021-06-28', '2021-07-28', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 32625.00, 0.00, 815.63, 815.63, 0.00, 34256.25, 'on', -0.25, 34256.00, 0.00, '2021-06-28 12:29:09', '2021-07-22 13:05:29'),
(83, 'JAYBBM-', '080', '2021-06-29', '2021-06-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 44285.00, 0.00, 1107.13, 1107.13, 0.00, 46499.25, 'on', -0.25, 46499.00, 46499.00, '2021-06-28 14:24:14', '2021-06-29 12:48:27'),
(84, 'JAYBBM-', '081', '2021-06-28', '2021-07-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55200.00, 0.00, 1380.00, 1380.00, 0.00, 57960.00, 'on', 0.00, 57960.00, 0.00, '2021-06-28 14:28:35', '2021-06-28 14:28:35'),
(85, 'JAYBBM-', '082', '2021-06-29', '2021-06-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 19176.00, 0.00, 479.40, 479.40, 0.00, 20134.80, 'on', 0.20, 20135.00, 0.00, '2021-06-29 12:59:54', '2021-06-29 12:59:54'),
(86, 'JAYBBM-', '083', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 36992.00, 0.00, 924.80, 924.80, 0.00, 38841.60, 'on', 0.40, 38842.00, 0.00, '2021-06-29 13:16:56', '2021-06-29 13:16:56'),
(87, 'JAYBBM-', '084', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 57760.00, 0.00, 1444.00, 1444.00, 0.00, 60648.00, 'on', 0.00, 60648.00, 0.00, '2021-06-29 13:39:08', '2021-06-29 13:39:08'),
(88, 'JAYBBM-', '085', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 54688.00, 0.00, 7656.32, 7656.32, 0.00, 70000.64, 'on', 0.36, 70001.00, 0.00, '2021-06-29 13:44:02', '2021-06-29 13:44:02'),
(89, 'JAYBBM-', '086', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 19516.00, 0.00, 487.90, 487.90, 0.00, 20491.80, 'on', 0.20, 20492.00, 0.00, '2021-06-29 13:52:56', '2021-06-29 13:52:56'),
(90, 'JAYBBM-', '087', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-06-29 13:57:25', '2021-06-29 13:57:25'),
(91, 'JAYBBM-', '088', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 100899.00, 0.00, 2522.47, 2522.47, 0.00, 105943.95, 'on', 0.05, 105944.00, 0.00, '2021-06-29 14:02:24', '2021-06-29 14:02:24'),
(92, 'JAYBBM-', '089', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 104306.80, 0.00, 9525.70, 9525.70, 0.00, 123358.20, 'on', -0.20, 123358.00, 0.00, '2021-06-29 14:13:31', '2021-06-29 14:13:31'),
(93, 'JAYBBM-', '090', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 35000.00, 0.00, 875.00, 875.00, 0.00, 36750.00, 'on', 0.00, 36750.00, 36750.00, '2021-06-29 14:29:50', '2021-07-02 18:04:43'),
(94, 'JAYBBM-', '091', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 400, 'unpaid', 'discountrate', 9425.00, 0.00, 882.50, 882.50, 0.00, 11590.00, 'on', 0.00, 11590.00, 0.00, '2021-06-29 15:04:12', '2021-06-29 15:04:12'),
(95, 'JAYBBM-', '092', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 700, 'paid', 'discountrate', 9750.00, 0.00, 243.75, 243.75, 0.00, 10937.50, 'on', 0.50, 10938.00, 10938.00, '2021-06-29 15:09:26', '2021-07-02 18:08:21'),
(96, 'JAYBBM-', '093', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 80859.00, 0.00, 11320.26, 11320.26, 0.00, 103499.52, 'on', 0.48, 103500.00, 0.00, '2021-06-29 15:13:03', '2021-06-29 15:13:03'),
(97, 'JAYBBM-', '094', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 200, 'paid', 'discountrate', 2310.00, 0.00, 57.75, 57.75, 0.00, 2625.50, 'on', 0.50, 2626.00, 0.00, '2021-06-29 18:31:59', '2021-07-07 17:58:46'),
(98, 'JAYBBM-', '095', '2021-07-01', '2021-07-31', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63240.00, 0.00, 1581.00, 1581.00, 0.00, 66402.00, 'on', 0.00, 66402.00, 0.00, '2021-07-01 12:20:54', '2021-07-05 18:34:07'),
(99, 'JAYBBM-', '096', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 133985.00, 0.00, 18757.90, 18757.90, 0.00, 171500.80, 'on', 0.20, 171501.00, 0.00, '2021-07-02 12:57:11', '2021-07-02 12:57:11'),
(100, 'JAYBBM-', '097', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 30600.00, 0.00, 765.00, 765.00, 0.00, 32130.00, 'on', 0.00, 32130.00, 0.00, '2021-07-02 13:04:10', '2021-07-05 18:33:59'),
(101, 'JAYBBM-', '098', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 200, 'unpaid', 'discountrate', 1406.25, 0.00, 196.88, 196.88, 0.00, 2000.00, 'on', 0.00, 2000.00, 0.00, '2021-07-02 14:37:33', '2021-07-02 14:37:33'),
(102, 'JAYBBM-', '099', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 262280.00, 0.00, 6557.00, 6557.00, 0.00, 275394.00, 'on', 0.00, 275394.00, 0.00, '2021-07-02 15:31:12', '2021-07-02 15:34:05'),
(103, 'JAYBBM-', '100', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 600, 'unpaid', 'discountrate', 16406.40, 0.00, 2296.90, 2296.90, 0.00, 21600.19, 'on', -0.19, 21600.00, 0.00, '2021-07-02 18:37:43', '2021-07-02 18:37:43'),
(104, 'JAYBBM-', '101', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 17773.60, 0.00, 2488.30, 2488.30, 0.00, 22750.21, 'on', -0.21, 22750.00, 0.00, '2021-07-08 12:37:03', '2021-07-27 13:26:33'),
(105, 'JAYBBM-', '102', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 79033.50, 0.00, 1975.84, 1975.84, 0.00, 82985.18, 'on', -0.18, 82985.00, 0.00, '2021-07-08 12:45:17', '2021-07-08 12:45:17'),
(106, 'JAYBBM-', '103', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-07-08 12:49:56', '2021-07-08 12:49:56'),
(107, 'JAYBBM-', '104', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 200, 'unpaid', 'discountrate', 6418.75, 0.00, 645.63, 645.63, 0.00, 7910.00, 'on', 0.00, 7910.00, 0.00, '2021-07-08 12:54:15', '2021-07-08 12:54:15'),
(108, 'JAYBBM-', '105', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 1800, 'unpaid', 'discountrate', 20712.50, 0.00, 1358.75, 1358.75, 0.00, 25230.00, 'on', 0.00, 25230.00, 14250.00, '2021-07-08 13:01:07', '2021-07-13 14:52:04'),
(109, 'JAYBBM-', '106', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 2000, 'unpaid', 'discountrate', 29822.50, 0.00, 2362.75, 2362.75, 0.00, 36548.00, 'on', 0.00, 36548.00, 0.00, '2021-07-08 13:07:06', '2021-07-08 13:07:06'),
(110, 'JAYBBM-', '107', '2021-07-08', '2021-08-07', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 28145.00, 0.00, 703.63, 703.63, 0.00, 29552.25, 'on', -0.25, 29552.00, 0.00, '2021-07-08 13:14:21', '2021-07-08 13:14:21'),
(111, 'JAYBBM-', '108', '2021-07-09', '2021-08-08', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 208425.00, 0.00, 5210.63, 5210.63, 0.00, 218846.25, 'on', -0.25, 218846.00, 0.00, '2021-07-09 12:59:36', '2021-07-09 12:59:36'),
(112, 'JAYBBM-', '109', '2021-07-09', '2021-08-08', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 319236.00, 0.00, 7980.90, 7980.90, 0.00, 335197.80, 'on', 0.20, 335198.00, 0.00, '2021-07-09 13:37:16', '2021-07-09 13:37:16'),
(113, 'JAYBBM-', '110', '2021-07-12', '2021-08-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 207375.00, 0.00, 5184.38, 5184.38, 0.00, 217743.75, 'on', 0.25, 217744.00, 0.00, '2021-07-12 18:11:03', '2021-07-12 18:11:03'),
(114, 'JAYBBM-', '111', '2021-07-12', '2021-08-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 666271.00, 0.00, 16656.78, 16656.78, 0.00, 699584.55, 'on', 0.45, 699585.00, 0.00, '2021-07-12 18:17:17', '2021-07-12 18:17:17'),
(115, 'JAYBBM-', '112', '2021-07-13', '2021-08-12', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 160314.00, 0.00, 22443.96, 22443.96, 0.00, 205201.92, 'on', 0.08, 205202.00, 0.00, '2021-07-13 12:52:28', '2021-07-13 12:52:28'),
(116, 'JAYBBM-', '113', '2021-07-15', '2021-08-14', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 182724.00, 0.00, 4568.10, 4568.10, 0.00, 191860.20, 'on', -0.20, 191860.00, 0.00, '2021-07-15 13:19:00', '2021-07-15 13:19:00'),
(117, 'JAYBBM-', '114', '2021-07-15', '2021-08-14', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 47812.80, 0.00, 4968.79, 4968.79, 0.00, 57750.38, 'on', -0.38, 57750.00, 0.00, '2021-07-15 13:25:12', '2021-07-15 13:25:12'),
(118, 'JAYBBM-', '115', '2021-07-15', '2021-08-14', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 54687.00, 0.00, 7656.18, 7656.18, 0.00, 69999.36, 'on', -0.36, 69999.00, 0.00, '2021-07-15 13:34:09', '2021-07-22 13:06:17'),
(119, 'JAYBBM-', '116', '2021-07-21', '2021-08-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 84375.00, 0.00, 11812.50, 11812.50, 0.00, 108000.00, 'on', 0.00, 108000.00, 0.00, '2021-07-23 16:03:10', '2021-07-23 16:03:10'),
(120, 'JAYBBM-', '117', '2021-07-23', '2021-08-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 58646.70, 0.00, 1466.17, 1466.17, 0.00, 61579.03, 'on', -0.03, 61579.00, 0.00, '2021-07-23 16:37:28', '2021-07-23 16:37:28'),
(121, 'JAYBBM-', '118', '2021-07-23', '2021-08-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 136889.10, 0.00, 3422.23, 3422.23, 0.00, 143733.55, 'on', 0.45, 143734.00, 0.00, '2021-07-23 16:39:31', '2021-07-23 16:39:31'),
(122, 'JAYBBM-', '119', '2021-07-23', '2021-08-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 131795.00, 0.00, 3294.88, 3294.88, 0.00, 138384.75, 'on', 0.25, 138385.00, 0.00, '2021-07-23 16:47:57', '2021-07-23 16:47:57'),
(123, 'JAYBBM-', '120', '2021-07-23', '2021-08-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 192990.00, 0.00, 11203.57, 11203.57, 0.00, 215397.14, 'on', -0.14, 215397.00, 0.00, '2021-07-23 17:07:05', '2021-07-23 17:07:05'),
(124, 'JAYBBM-', '121', '2021-07-26', '2021-08-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 26992.00, 0.00, 3778.88, 3778.88, 0.00, 34549.76, 'on', 0.24, 34550.00, 0.00, '2021-07-26 12:56:33', '2021-07-26 12:56:33'),
(125, 'JAYBBM-', '122', '2021-07-26', '2021-08-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 128316.00, 0.00, 3207.90, 3207.90, 0.00, 134731.80, 'on', 0.20, 134732.00, 0.00, '2021-07-26 14:39:24', '2021-07-26 14:39:24'),
(126, 'JAYBBM-', '123', '2021-07-26', '2021-08-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 420975.00, 0.00, 10524.38, 10524.38, 0.00, 442023.75, 'on', 0.25, 442024.00, 0.00, '2021-07-26 14:48:32', '2021-07-26 14:48:32'),
(127, 'JAYBBM-', '124', '2021-07-26', '2021-08-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 102419.00, 0.00, 2560.48, 2560.48, 0.00, 107539.95, 'on', 0.05, 107540.00, 0.00, '2021-07-26 15:00:40', '2021-07-26 15:00:40'),
(128, 'JAYBBM-', '125', '2021-07-26', '2021-08-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 67216.50, 0.00, 1680.41, 1680.41, 0.00, 70577.32, 'on', -0.32, 70577.00, 0.00, '2021-07-26 15:04:48', '2021-07-26 15:04:48'),
(129, 'JAYBBM-', '126', '2021-07-29', '2021-08-28', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63750.00, 0.00, 1593.75, 1593.75, 0.00, 66937.50, 'on', 0.50, 66938.00, 0.00, '2021-07-29 13:10:07', '2021-08-03 13:50:05'),
(130, 'JAYBBM-', '127', '2021-07-30', '2021-08-29', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 62730.00, 0.00, 1568.25, 1568.25, 0.00, 65866.50, 'on', 0.50, 65867.00, 0.00, '2021-07-30 13:12:02', '2021-08-03 13:50:12'),
(131, 'JAYBBM-', '128', '2021-08-04', '2021-09-03', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 87109.80, 0.00, 12195.37, 12195.37, 0.00, 111500.54, 'on', 0.46, 111501.00, 0.00, '2021-08-04 12:41:29', '2021-08-04 12:41:29'),
(132, 'JAYBBM-', '129', '2021-08-04', '2021-09-03', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 148625.00, 0.00, 3715.63, 3715.63, 0.00, 156056.25, 'on', -0.25, 156056.00, 0.00, '2021-08-04 12:45:00', '2021-08-04 12:45:00'),
(133, 'JAYBBM-', '130', '2021-08-04', '2021-09-03', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 83658.00, 0.00, 2091.45, 2091.45, 0.00, 87840.90, 'on', 0.10, 87841.00, 89044.00, '2021-08-04 12:49:23', '2021-08-05 16:02:17'),
(134, 'JAYBBM-', '131', '2021-08-04', '2021-09-03', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 494325.00, 0.00, 12358.13, 12358.13, 0.00, 519041.25, 'on', -0.25, 519041.00, 0.00, '2021-08-04 12:57:37', '2021-08-04 12:57:37'),
(135, 'JAYBBM-', '132', '2021-08-05', '2021-09-04', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 116550.00, 0.00, 2913.75, 2913.75, 0.00, 122377.50, 'on', 0.50, 122378.00, 0.00, '2021-08-05 16:17:23', '2021-08-05 16:17:23'),
(136, 'JAYBBM-', '133', '2021-08-06', '2021-09-05', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 63750.00, 0.00, 1593.75, 1593.75, 0.00, 66937.50, 'on', 0.50, 66938.00, 66938.00, '2021-08-06 13:16:35', '2021-08-12 16:20:06'),
(137, 'JAYBBM-', '134', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 127778.00, 0.00, 3194.45, 3194.45, 0.00, 134166.90, 'on', 0.10, 134167.00, 131187.00, '2021-08-12 13:57:56', '2021-08-20 18:20:41'),
(138, 'JAYBBM-', '135', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-08-12 14:01:49', '2021-08-12 14:01:49'),
(139, 'JAYBBM-', '136', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 55468.00, 0.00, 7765.52, 7765.52, 0.00, 70999.04, 'on', -0.04, 70999.00, 0.00, '2021-08-12 14:03:28', '2021-08-12 14:03:28'),
(140, 'JAYBBM-', '137', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 124400.00, 0.00, 3110.00, 3110.00, 0.00, 130620.00, 'on', 0.00, 130620.00, 0.00, '2021-08-12 14:09:11', '2021-08-12 14:09:11'),
(141, 'JAYBBM-', '138', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 66407.50, 0.00, 9297.05, 9297.05, 0.00, 85001.60, 'on', 0.40, 85002.00, 0.00, '2021-08-12 14:11:57', '2021-08-12 14:11:57'),
(142, 'JAYBBM-', '139', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 27344.00, 0.00, 3828.16, 3828.16, 0.00, 35000.32, 'on', -0.32, 35000.00, 122501.00, '2021-08-12 14:25:42', '2021-08-20 18:15:11'),
(143, 'JAYBBM-', '140', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 48968.00, 0.00, 4368.76, 4368.76, 0.00, 57705.52, 'on', 0.48, 57706.00, 0.00, '2021-08-12 14:29:14', '2021-08-12 14:29:14'),
(144, 'JAYBBM-', '141', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 26563.00, 0.00, 3718.82, 3718.82, 0.00, 34000.64, 'on', 0.36, 34001.00, 0.00, '2021-08-12 14:33:12', '2021-08-12 14:33:12'),
(145, 'JAYBBM-', '142', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 400, 'unpaid', 'discountrate', 9843.75, 0.00, 1378.13, 1378.13, 0.00, 13000.00, 'on', 0.00, 13000.00, 0.00, '2021-08-12 14:37:00', '2021-08-12 14:37:00'),
(146, 'JAYBBM-', '143', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 500, 'unpaid', 'discountrate', 11093.60, 0.00, 1553.10, 1553.10, 0.00, 14699.81, 'on', 0.19, 14700.00, 0.00, '2021-08-12 14:40:10', '2021-08-12 14:40:10'),
(147, 'JAYBBM-', '144', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 4068.75, 0.00, 328.13, 328.13, 0.00, 4725.00, 'on', 0.00, 4725.00, 0.00, '2021-08-12 14:52:32', '2021-08-13 13:59:59'),
(148, 'JAYBBM-', '145', '2021-08-12', '2021-09-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 13101.60, 0.00, 799.22, 799.22, 0.00, 14700.05, 'on', -0.05, 14700.00, 0.00, '2021-08-12 14:55:06', '2021-08-12 14:55:06'),
(149, 'JAYBBM-', '146', '2021-08-13', '2021-09-12', 'Maharashtra', NULL, 400, 'unpaid', 'discountrate', 8203.20, 0.00, 1148.45, 1148.45, 0.00, 10900.10, 'on', -0.10, 10900.00, 10900.00, '2021-08-13 16:34:41', '2021-08-13 18:09:39'),
(150, 'JAYBBM-', '147', '2021-08-13', '2021-09-12', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 86104.00, 0.00, 2152.60, 2152.60, 0.00, 90409.20, 'on', -0.20, 90409.00, 0.00, '2021-08-13 16:38:00', '2021-08-13 16:38:00'),
(151, 'JAYBBM-', '148', '2021-08-20', '2021-09-19', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 321557.50, 0.00, 15675.80, 15675.80, 0.00, 352909.10, 'on', -0.10, 352909.00, 0.00, '2021-08-20 18:31:59', '2021-08-20 18:31:59'),
(152, 'JAYBBM-', '149', '2021-08-20', '2021-09-19', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 20328.00, 0.00, 508.20, 508.20, 0.00, 21344.40, 'on', -0.40, 21344.00, 0.00, '2021-08-20 18:39:00', '2021-08-20 18:39:00'),
(153, 'JAYBBM-', '150', '2021-08-20', '2021-09-19', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 14850.00, 0.00, 371.25, 371.25, 0.00, 15592.50, 'on', 0.50, 15593.00, 0.00, '2021-08-20 18:41:50', '2021-08-20 18:41:50'),
(154, 'JAYBBM-', '151', '2021-08-21', '2021-09-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 106650.00, 0.00, 2666.25, 2666.25, 0.00, 111982.50, 'on', 0.50, 111983.00, 0.00, '2021-08-21 12:42:43', '2021-08-21 12:42:43'),
(155, 'JAYBBM-', '152', '2021-08-21', '2021-09-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 56518.00, 0.00, 1412.95, 1412.95, 0.00, 59343.90, 'on', 0.10, 59344.00, 0.00, '2021-08-21 12:47:15', '2021-08-21 12:47:15'),
(156, 'JAYBBM-', '153', '2021-08-21', '2021-09-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 68360.00, 0.00, 9570.40, 9570.40, 0.00, 87500.80, 'on', 0.20, 87501.00, 0.00, '2021-08-21 12:50:20', '2021-08-21 12:50:20'),
(157, 'JAYBBM-', '154', '2021-08-21', '2021-09-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 60160.00, 0.00, 1504.00, 1504.00, 0.00, 63168.00, 'on', 0.00, 63168.00, 0.00, '2021-08-21 14:48:04', '2021-08-21 14:48:04'),
(158, 'JAYBBM-', '155', '2021-08-21', '2021-09-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 46648.00, 0.00, 1166.20, 1166.20, 0.00, 48980.40, 'on', -0.40, 48980.00, 0.00, '2021-08-21 16:27:45', '2021-08-21 16:27:45'),
(159, 'JAYBBM-', '156', '2021-08-23', '2021-09-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 2734.40, 0.00, 382.82, 382.82, 0.00, 3500.03, 'on', -0.03, 3500.00, 0.00, '2021-08-23 16:24:23', '2021-08-23 16:24:23'),
(160, 'JAYBBM-', '157', '2021-08-23', '2021-09-22', 'Maharashtra', NULL, 2300, 'unpaid', 'discountrate', 25400.00, 0.00, 1281.88, 1281.88, 0.00, 30263.75, 'on', 0.25, 30264.00, 0.00, '2021-08-23 16:29:41', '2021-08-23 16:29:41'),
(161, 'JAYBBM-', '158', '2021-08-24', '2021-09-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 542828.00, 0.00, 13570.70, 13570.70, 0.00, 569969.40, 'on', -0.40, 569969.00, 0.00, '2021-08-24 14:12:31', '2021-08-24 14:12:31'),
(162, 'JAYBBM-', '159', '2021-08-24', '2021-09-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 2734.40, 0.00, 382.82, 382.82, 0.00, 3500.03, 'on', -0.03, 3500.00, 0.00, '2021-08-24 17:07:47', '2021-08-24 17:07:47'),
(163, 'JAYBBM-', '160', '2021-08-24', '2021-09-23', 'Maharashtra', NULL, 900, 'unpaid', 'discountrate', 28125.00, 0.00, 3937.50, 3937.50, 0.00, 36900.00, 'on', 0.00, 36900.00, 36000.00, '2021-08-24 17:12:27', '2021-08-24 17:15:07'),
(164, 'JAYBBM-', '161', '2021-08-27', '2021-09-26', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 66120.60, 0.00, 1653.02, 1653.02, 0.00, 69426.63, 'on', 0.37, 69427.00, 0.00, '2021-08-27 14:37:37', '2021-08-27 14:37:37'),
(165, 'JAYBBM-', '162', '2021-09-02', '2021-10-02', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 144495.00, 0.00, 3612.38, 3612.38, 0.00, 151719.75, 'on', 0.25, 151720.00, 0.00, '2021-09-02 17:13:54', '2021-09-02 17:13:54'),
(166, 'JAYBBM-', '163', '2021-09-02', '2021-10-02', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 141630.50, 0.00, 3540.76, 3540.76, 0.00, 148712.03, 'on', -0.03, 148712.00, 0.00, '2021-09-02 17:42:29', '2021-09-02 17:42:29'),
(167, 'JAYBBM-', '164', '2021-09-02', '2021-10-02', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 76125.00, 0.00, 1903.13, 1903.13, 0.00, 79931.25, 'on', -0.25, 79931.00, 79931.00, '2021-09-02 18:04:18', '2021-10-02 12:25:00'),
(168, 'JAYBBM-', '165', '2021-09-09', '2021-10-09', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 72100.00, 0.00, 1802.50, 1802.50, 0.00, 75705.00, 'on', 0.00, 75705.00, 0.00, '2021-09-09 12:36:50', '2021-09-09 12:36:50'),
(169, 'JAYBBM-', '166', '2021-09-09', '2021-10-09', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 53126.00, 0.00, 7437.64, 7437.64, 0.00, 68001.28, 'on', -0.28, 68001.00, 0.00, '2021-09-09 12:42:39', '2021-09-09 15:24:41'),
(170, 'JAYBBM-', '167', '2021-09-16', '2021-10-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 189581.00, 0.00, 4739.52, 4739.52, 0.00, 199060.05, 'on', -0.05, 199060.00, 0.00, '2021-09-16 12:39:27', '2021-09-16 12:39:27'),
(171, 'JAYBBM-', '168', '2021-09-16', '2021-10-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 748031.00, 0.00, 18700.78, 18700.78, 0.00, 785432.55, 'on', 0.45, 785433.00, 0.00, '2021-09-16 12:58:27', '2021-09-16 12:58:27'),
(172, 'JAYBBM-', '169', '2021-09-16', '2021-10-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 170025.00, 0.00, 4250.63, 4250.63, 0.00, 178526.25, 'on', -0.25, 178526.00, 0.00, '2021-09-16 13:16:36', '2021-09-16 13:16:36'),
(173, 'JAYBBM-', '170', '2021-09-24', '2021-10-24', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 78750.00, 0.00, 1968.75, 1968.75, 0.00, 82687.50, 'on', 0.50, 82688.00, 79931.00, '2021-09-16 16:35:04', '2021-10-01 14:20:28'),
(174, 'JAYBBM-', '171', '2021-09-16', '2021-10-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 10200.00, 0.00, 255.00, 255.00, 0.00, 10710.00, 'on', 0.00, 10710.00, 0.00, '2021-09-16 16:50:39', '2021-09-16 16:50:39'),
(175, 'JAYBBM-', '172', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 162750.00, 0.00, 4068.76, 4068.76, 0.00, 170887.50, 'on', 0.50, 170888.00, 0.00, '2021-09-17 16:55:00', '2021-09-17 16:55:00'),
(176, 'JAYBBM-', '173', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 600, 'unpaid', 'discountrate', 10943.75, 0.00, 1405.63, 1405.63, 0.00, 14355.00, 'on', 0.00, 14355.00, 0.00, '2021-09-17 17:01:02', '2021-09-17 17:01:02'),
(177, 'JAYBBM-', '174', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 92969.60, 0.00, 13015.74, 13015.74, 0.00, 119001.09, 'on', -0.09, 119001.00, 119001.00, '2021-09-17 17:20:52', '2021-09-17 17:22:04'),
(178, 'JAYBBM-', '175', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 30148.80, 0.00, 1382.63, 1382.63, 0.00, 32914.06, 'on', -0.06, 32914.00, 0.00, '2021-09-17 17:28:30', '2021-09-17 17:28:30'),
(179, 'JAYBBM-', '176', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 62640.00, 0.00, 6282.84, 6282.84, 0.00, 75205.68, 'on', 0.32, 75206.00, 0.00, '2021-09-17 17:33:57', '2021-09-17 17:33:57'),
(180, 'JAYBBM-', '177', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 800, 'unpaid', 'discountrate', 11012.50, 0.00, 986.88, 986.88, 0.00, 13786.25, 'on', -0.25, 13786.00, 0.00, '2021-09-17 17:38:26', '2021-09-17 17:38:26'),
(181, 'JAYBBM-', '178', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'paid', 'discountrate', 240861.00, 0.00, 6021.53, 6021.53, 0.00, 252904.05, 'on', -0.05, 252904.00, 253692.00, '2021-09-17 17:43:40', '2021-09-18 12:30:28'),
(182, 'JAYBBM-', '179', '2021-09-17', '2021-10-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 73477.75, 0.00, 1836.94, 1836.94, 0.00, 77151.64, 'on', 0.36, 77152.00, 0.00, '2021-09-17 17:53:06', '2021-09-17 17:53:06'),
(183, 'JAYBBM-', '180', '2021-09-18', '2021-10-18', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 59220.00, 0.00, 1480.50, 1480.50, 0.00, 62181.00, 'on', 0.00, 62181.00, 0.00, '2021-09-18 19:36:00', '2021-09-18 19:36:00'),
(184, 'JAYBBM-', '181', '2021-09-23', '2021-10-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 95438.00, 0.00, 5440.70, 5440.70, 0.00, 106319.39, 'on', -0.39, 106319.00, 0.00, '2021-09-23 17:53:25', '2021-09-23 17:53:25'),
(185, 'JAYBBM-', '182', '2021-09-24', '2021-10-24', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 11400.00, 0.00, 285.00, 285.00, 0.00, 11970.00, 'on', 0.00, 11970.00, 0.00, '2021-09-24 13:14:59', '2021-09-24 13:14:59'),
(186, 'JAYBBM-', '183', '2021-09-28', '2021-10-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 49500.00, 0.00, 1237.50, 1237.50, 0.00, 51975.00, 'on', 0.00, 51975.00, 0.00, '2021-09-28 13:10:43', '2021-09-28 13:10:43'),
(187, 'JAYBBM-', '184', '2021-09-28', '2021-10-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 75000.00, 0.00, 1875.00, 1875.00, 0.00, 78750.00, 'on', 0.00, 78750.00, 0.00, '2021-09-28 14:04:18', '2021-09-28 14:04:18'),
(188, 'JAYBBM-', '185', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 2150, 'unpaid', 'discountrate', 140544.00, 0.00, 14519.56, 14519.56, 0.00, 171733.12, 'on', -0.12, 171733.00, 0.00, '2021-10-01 17:33:38', '2021-10-01 17:33:38'),
(189, 'JAYBBM-', '186', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 72462.50, 0.00, 1811.56, 1811.56, 0.00, 76085.63, 'on', 0.37, 76086.00, 0.00, '2021-10-01 17:41:32', '2021-10-01 17:41:32'),
(190, 'JAYBBM-', '187', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 16000.00, 0.00, 400.00, 400.00, 0.00, 16800.00, 'on', 0.00, 16800.00, 0.00, '2021-10-01 17:45:25', '2021-10-01 17:45:25'),
(191, 'JAYBBM-', '188', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 12750.00, 0.00, 318.75, 318.75, 0.00, 13387.50, 'on', 0.50, 13388.00, 0.00, '2021-10-01 17:47:45', '2021-10-01 17:47:45'),
(192, 'JAYBBM-', '189', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 75000.00, 0.00, 1875.00, 1875.00, 0.00, 78750.00, 'on', 0.00, 78750.00, 0.00, '2021-10-01 17:50:13', '2021-10-01 17:50:13'),
(193, 'JAYBBM-', '190', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25575.00, 0.00, 639.38, 639.38, 0.00, 26853.75, 'on', 0.25, 26854.00, 25988.00, '2021-10-01 17:52:59', '2021-10-04 16:34:12'),
(194, 'JAYBBM-', '191', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 70125.00, 0.00, 1753.13, 1753.13, 0.00, 73631.25, 'on', -0.25, 73631.00, 0.00, '2021-10-01 17:54:59', '2021-10-01 17:54:59'),
(195, 'JAYBBM-', '192', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 600, 'unpaid', 'discountrate', 10937.60, 0.00, 1531.26, 1531.26, 0.00, 14600.13, 'on', -0.13, 14600.00, 0.00, '2021-10-01 17:57:43', '2021-10-01 17:57:43'),
(196, 'JAYBBM-', '193', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 2000, 'unpaid', 'discountrate', 22947.52, 0.00, 1560.40, 1560.40, 0.00, 28068.33, 'on', -0.33, 28068.00, 0.00, '2021-10-01 18:03:46', '2021-10-01 18:03:46'),
(197, 'JAYBBM-', '194', '2021-10-01', '2021-10-31', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50000.00, 0.00, 7000.00, 7000.00, 0.00, 64000.00, 'on', 0.00, 64000.00, 0.00, '2021-10-01 18:09:16', '2021-10-01 18:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_customers`
--

CREATE TABLE `invoice_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_customers`
--

INSERT INTO `invoice_customers` (`id`, `invoice_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `customerId`) VALUES
(1, 1, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'on', '2021-06-09 19:32:15', '2021-06-09 19:32:15', NULL),
(2, 2, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'MOSHI ALANDI BTRD ROAD,\r\nDUDULGAON', 'off', '2021-06-09 19:34:20', '2021-06-09 19:34:20', NULL),
(3, 3, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'on', '2021-06-09 19:43:17', '2021-06-09 19:43:17', NULL),
(4, 4, 'OMKAR CONSTRUCTION', '27AABF07442F1ZB', '+91 8329560581', 'BAVDHAN PUNE\r\npune\r\nMaharashtra\r\n411105', 'BAVDHAN PUNE\r\npune\r\nMaharashtra\r\n411105', 'on', '2021-06-09 19:48:37', '2021-06-09 19:48:37', NULL),
(5, 5, 'KHADKE DEVELOPERS', '27AAKFK4136D1ZH', '+91 9822753681', 'NASIK\r\nNASIK\r\nMaharashtra\r\n420003', 'NASIK\r\nNASIK\r\nMaharashtra\r\n420003', 'on', '2021-06-09 19:56:02', '2021-06-09 19:56:02', NULL),
(6, 6, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-06-09 19:57:37', '2021-06-09 19:57:37', NULL),
(7, 7, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-09 19:59:17', '2021-06-09 19:59:17', NULL),
(8, 8, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-09 20:00:53', '2021-06-11 12:58:35', 2),
(9, 9, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-09 20:02:06', '2021-06-09 20:02:06', NULL),
(10, 10, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'on', '2021-06-09 20:04:10', '2021-06-09 20:04:10', NULL),
(11, 11, 'RAJAL ENTERPRISES', '27AAVFR8661B1ZP', '+91 8888578234', '58/1 HINDUSTAN CHOWK G G ROAD MULUND COLONY MULUND WEST MUMBAI\r\nMUMBAI\r\nMaharashtra\r\n400080', '58/1 HINDUSTAN CHOWK G G ROAD MULUND COLONY MULUND WEST MUMBAI\r\nMUMBAI\r\nMaharashtra\r\n400080', 'on', '2021-06-09 20:09:50', '2021-06-09 20:09:50', NULL),
(12, 12, 'SUPREME INFRA', '27ADTFS0011R1ZJ', '+91 8668837971', 'KOHINOOR SUPPHIRE TATHWADE\r\nPUNE\r\nMaharashtra\r\n411025', 'KOJINOOR THTHWADE', 'off', '2021-06-10 14:03:44', '2021-06-10 14:03:44', NULL),
(13, 13, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE TATHWADE', 'off', '2021-06-10 14:11:56', '2021-06-10 14:11:56', NULL),
(14, 14, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'off', '2021-06-10 14:21:00', '2021-06-10 14:21:00', NULL),
(15, 15, 'SAHYADRI GROUP OF CONSTRUCTION', '27ADVFS1385F1ZL', '+91 9850400007', 'WARJE PUNE MAHARASHTRA\r\npune\r\nMaharashtra\r\n411045', 'WARJE PUNE', 'off', '2021-06-10 14:22:59', '2021-06-10 14:22:59', NULL),
(16, 16, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'off', '2021-06-10 14:30:48', '2021-06-10 14:30:48', NULL),
(17, 17, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'pune', 'off', '2021-06-10 14:39:31', '2021-06-10 14:39:31', NULL),
(18, 18, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA SANSKRUTI RANUBAI MALA\r\nCHAKAN', 'off', '2021-06-10 14:53:48', '2021-06-10 14:53:48', NULL),
(19, 19, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 9552989419', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI', 'off', '2021-06-10 14:56:06', '2021-06-10 14:56:06', NULL),
(20, 20, 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '27AAECR7330R1ZR', '+91 9022499719', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'V T P BLUE WATER MHALUNGE', 'off', '2021-06-10 15:01:15', '2021-06-10 15:01:15', NULL),
(21, 21, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SUPPHIRE\r\nTATHAWADE', 'off', '2021-06-10 16:00:48', '2021-06-10 16:00:48', NULL),
(22, 22, 'SAMARTHA TRIMURTI PROPERTIES', '27ACCFS2681P1ZI', '+91 8975528181', '41 ESTERA SR NO 41 NEAR SAVTAMALI MANDIR JAMBHE ROAD MALWADI PUNAWALE PUNE\r\npune\r\nMaharashtra\r\n411033', '41 ESTERA PUNAWALE', 'off', '2021-06-10 16:05:07', '2021-06-10 16:05:07', NULL),
(23, 23, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 7057556067', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 16:53:03', '2021-06-10 17:12:23', NULL),
(24, 24, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 7057556067', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 17:16:53', '2021-06-10 17:17:19', NULL),
(25, 25, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 17:21:59', '2021-06-10 17:21:59', NULL),
(26, 26, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-06-10 17:23:47', '2021-06-10 17:23:47', NULL),
(27, 27, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE ,\r\nTATHAWADE', 'off', '2021-06-10 17:27:43', '2021-06-10 17:27:43', NULL),
(28, 28, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA, PUNAWALE', 'off', '2021-06-10 17:43:11', '2021-06-10 17:43:11', NULL),
(29, 29, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 20:10:49', '2021-06-11 12:17:04', 34),
(30, 30, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-11 12:19:01', '2021-06-11 12:19:01', 34),
(31, 31, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MOUNTVIEW SHIVAJINAGAR', 'off', '2021-06-11 12:21:30', '2021-06-11 12:21:30', 12),
(32, 32, 'BKBS PROPERTY VENTURES LLP', '27AAUFB8792N1Z9', '+91 9511726465', 'BANER\r\npune\r\nMaharashtra\r\n411045', 'BANER\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-11 12:23:31', '2021-06-11 12:23:31', 6),
(33, 33, 'SUPREME INFRA', '27ADTFS0011R1ZJ', '+91 8668837971', 'KOHINOOR SUPPHIRE TATHWADE\r\nPUNE\r\nMaharashtra\r\n411025', 'KOJINOOR THTHWADE', 'off', '2021-06-11 12:27:36', '2021-06-11 12:27:36', 32),
(34, 34, 'OMKAR CONSTRUCTION', '27AABF07442F1ZB', '+91 8329560581', 'BAVDHAN PUNE\r\npune\r\nMaharashtra\r\n411105', 'KOTHRUD', 'off', '2021-06-11 12:29:23', '2021-06-11 12:29:23', 15),
(35, 35, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-11 12:31:28', '2021-06-11 12:31:28', 12),
(36, 36, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-11 12:33:41', '2021-06-11 12:33:41', 12),
(37, 37, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-11 12:36:05', '2021-06-11 12:36:05', 12),
(38, 38, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'WAKAD', 'off', '2021-06-11 12:37:19', '2021-06-11 12:37:19', 12),
(39, 39, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG SHIVAJINAGAR', 'off', '2021-06-11 12:38:18', '2021-06-11 12:38:18', 12),
(40, 40, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'PUNE', 'off', '2021-06-11 12:40:06', '2021-06-11 12:40:06', 34),
(41, 41, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner', 'off', '2021-06-11 12:41:10', '2021-06-11 12:41:10', 2),
(42, 42, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'pune', 'off', '2021-06-11 12:42:31', '2021-06-11 12:42:31', 34),
(43, 43, 'NIRMITI BUILDCOM', '27AAMFN6503H1Z5', '+91 9922471017', 'baner pune\r\npune\r\nMaharashtra\r\n411045', 'baner', 'off', '2021-06-11 12:46:01', '2021-06-11 12:46:01', 14),
(44, 44, 'PADALE BUILDCON', '27AAWFP47261ZY', '+91 9822051010', '1ST FLOOR OFFICE NO 101 PADALE HOUSE MAHALUNGE PUNE\r\npune\r\nMaharashtra\r\n411037', 'TALEGAON', 'off', '2021-06-11 12:48:46', '2021-06-11 12:48:46', 36),
(45, 45, 'Parklane Construction LLP', '27AATFP4446L1ZH', '+91 9960644420', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'SUS', 'off', '2021-06-11 12:50:18', '2021-06-11 12:50:18', 35),
(46, 47, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', '+91 8459471113', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'PUNE', 'off', '2021-06-11 19:56:48', '2021-06-11 19:56:48', 38),
(47, 48, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', '+91 8600492350', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'Sr no - 38/1/122 \r\nBaner, Pune', 'off', '2021-06-11 20:00:54', '2021-06-17 18:18:45', 52),
(48, 49, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA', 'off', '2021-06-11 20:09:09', '2021-06-11 20:09:09', 23),
(49, 50, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE', 'off', '2021-06-11 20:14:32', '2021-06-11 20:14:32', 29),
(50, 51, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'pune', 'off', '2021-06-11 20:17:47', '2021-06-11 20:17:47', 34),
(51, 52, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner', 'off', '2021-06-11 20:24:06', '2021-06-11 20:24:06', 2),
(52, 53, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner', 'off', '2021-06-11 20:43:25', '2021-06-11 20:43:25', 2),
(53, 54, 'Shubham Structural and Civil Engineers pvt.ltd', '27aaccs3705p1z1', '+91 9822440702', 'kothrud pune\r\npune\r\nMaharashtra\r\n411036', 'kothrud pune', 'off', '2021-06-12 14:04:10', '2021-06-12 14:04:10', 40),
(54, 55, 'A A ASSOCIATES', '27ABNFA5384K1ZV', '+91 9921890622', 'Baner pune\r\npune\r\nMaharashtra\r\n411045', 'Baner pune', 'off', '2021-06-15 15:14:27', '2021-06-16 15:46:08', 1),
(55, 56, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-15 15:31:42', '2021-06-15 16:58:42', 23),
(56, 57, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'on', '2021-06-15 15:44:21', '2021-06-15 16:02:52', 12),
(57, 58, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-15 16:13:47', '2021-06-15 16:13:47', 12),
(58, 59, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-15 16:16:34', '2021-06-15 16:16:34', 12),
(59, 60, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-15 16:24:20', '2021-06-15 16:24:20', 12),
(60, 61, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-06-15 16:26:36', '2021-06-15 16:26:36', 12),
(61, 62, 'JAISONS PROPERTIES LLP.', '27AAKFJ3795K1ZO', '+91 9657960379', '34, SWAROOP CHAYA APARTMENT, HAPPY COLONY, LANE NO, 2, KOTHRUD PUNE.\r\npune\r\nMaharashtra\r\n411029', 'BHUGAOV', 'on', '2021-06-15 16:30:31', '2021-06-16 15:28:47', 10),
(62, 63, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'Aundh', 'off', '2021-06-15 16:40:30', '2021-06-15 16:40:30', 3),
(63, 64, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI', 'off', '2021-06-15 16:44:29', '2021-06-15 16:44:29', 29),
(64, 65, 'RUNAL DEVELOPERS', '27AASPJ2581R1ZR', '+91 9168666176', 'A 1 SHOP NO 3 INDRAPRASTA APP KINK ROAD PIMPARI CHINCHWAD PUNE\r\nPUNE\r\nMaharashtra\r\n411033', 'RUNAL GATEWAY', 'off', '2021-06-15 16:49:52', '2021-06-15 16:49:52', 46),
(65, 66, 'G L INTERIORS PVT LTD', '27AADCG3136H1ZS', '+91 9136649111', 'THANE\r\nTHANE\r\nMaharashtra\r\n401105', 'THANE', 'off', '2021-06-15 16:55:11', '2021-06-15 16:55:11', 47),
(66, 67, 'SANJAY TAYAL', '27AAMFN6503H1Z5', '+91 9970742464', 'PUNE\r\nPUNE\r\nMaharashtra\r\n411025', 'PUNE', 'off', '2021-06-16 13:47:31', '2021-06-16 13:47:31', 48),
(67, 68, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'HINGANE KHURD \r\nPUNE', 'off', '2021-06-16 13:52:57', '2021-06-16 13:52:57', 25),
(68, 69, 'PORWAL DEVELOPERS LLP', '27ABAFP3395G1Z3', '+91 7875880000', 'BHUSAR VIBHAG, 534/535, OFF RAMESHCHANDRASHANTILAL AND CO, MARKETYARD, PUNE, Pune,Maharashtra, 411037\r\npune\r\nMaharashtra\r\n411037', 'Parklane  Life seasons, Sr.No.7 Dhanori', 'off', '2021-06-16 16:44:52', '2021-06-16 16:44:52', 49),
(69, 70, 'AUM SANSKRUTI HOUSING', '27AARFA4302J1ZF', '+91 9850243638', 'WAKAD PUNE\r\nPUNE\r\nMaharashtra\r\n411057', 'WAKAD', 'off', '2021-06-17 13:20:28', '2021-06-17 13:20:28', 51),
(70, 71, 'Shubham Structural and Civil Engineers pvt.ltd', '27aaccs3705p1z1', '+91 9822440702', 'kothrud pune\r\npune\r\nMaharashtra\r\n411036', 'KIRLOSKAR BROTHERS\r\nBANER', 'off', '2021-06-17 13:56:46', '2021-06-17 13:56:46', 40),
(71, 72, 'SRK INFRA', '27BQQPS6111M1Z6', '+91 7718161810', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER', 'off', '2021-06-19 19:19:10', '2021-06-19 19:19:10', 53),
(72, 73, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 15:33:48', '2021-06-21 15:33:48', 23),
(73, 74, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 15:46:03', '2021-06-21 15:46:03', 29),
(74, 75, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIER\r\nTATHWADDE', 'off', '2021-06-21 16:28:48', '2021-06-21 16:28:48', 23),
(75, 76, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-21 16:32:13', '2021-06-21 16:32:13', 23),
(76, 77, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-06-22 14:00:54', '2021-06-22 14:00:54', 34),
(77, 78, 'THITE NIKAM ASSOCIATES', '27AWPPN0094G1Z8', '+91 8237599599', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-23 13:38:45', '2021-06-23 13:38:45', 39),
(78, 79, 'THITE NIKAM ASSOCIATES', '27AWPPN0094G1Z8', '+91 8237599599', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-23 16:59:04', '2021-06-23 16:59:04', 39),
(79, 46, 'THITE NIKAM ASSOCIATES', '27AWPPN0094G1Z8', '+91 8237599599', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-23 17:01:14', '2021-06-23 17:01:14', 39),
(80, 81, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'NIRMAN SQUARE\r\nWAKDEWADI', 'off', '2021-06-24 17:56:18', '2021-06-24 17:56:18', 25),
(81, 82, 'LANDMARK REALITY', '27AAFFL6440A1ZO', '+91 8329399455', '2nd Floor, Swami Samarth Complex, Opp. Tingare Petrol Pump, Alandi Road, Bhosari, Pune\r\nPUNE\r\nMaharashtra\r\n411039', 'BANER', 'off', '2021-06-28 12:29:09', '2021-06-28 12:29:09', 55),
(82, 83, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI SITE', 'off', '2021-06-28 14:24:14', '2021-06-28 14:24:14', 29),
(83, 84, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'on', '2021-06-28 14:28:35', '2021-06-28 14:28:35', 28),
(84, 85, 'JAISONS PROPERTIES LLP.', '27AAKFJ3795K1ZO', '+91 9657960379', '34, SWAROOP CHAYA APARTMENT, HAPPY COLONY, LANE NO, 2, KOTHRUD PUNE.\r\npune\r\nMaharashtra\r\n411029', 'BHUGAON SITE', 'off', '2021-06-29 12:59:54', '2021-06-29 12:59:54', 10),
(85, 86, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PUNAWALE', 'off', '2021-06-29 13:16:56', '2021-06-29 13:16:56', 12),
(86, 87, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MOUNTVIEW SHIVAJINAGAR', 'off', '2021-06-29 13:39:08', '2021-06-29 13:39:08', 12),
(87, 88, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-06-29 13:44:02', '2021-06-29 13:44:02', 12),
(88, 89, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-06-29 13:52:56', '2021-06-29 13:52:56', 12),
(89, 90, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-29 13:57:25', '2021-06-29 13:57:25', 12),
(90, 91, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'SITE - CLEVELAND PARK MOHOMADWADI', 'off', '2021-06-29 14:02:24', '2021-06-29 14:02:24', 29),
(91, 92, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-29 14:13:31', '2021-06-29 14:13:31', 2),
(92, 93, 'SAGA DEVELOPERS', '27ADYFS4495G1Z5', '+91 7498931455', 'SAGA DEVELOPERSPLOT NO 7 S NO 257/4 GREENPARK AUNDH BANER PUNEpune Maharashtra 411007\r\npune\r\nMaharashtra\r\n411007', 'GREEN PARK AUNDH', 'on', '2021-06-29 14:29:50', '2021-07-02 18:04:43', 56),
(93, 94, 'JAY BHAGWAN DEVLOPERS', '27AANFJ3002C1ZU', '+91 9823186513', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-06-29 15:04:12', '2021-06-29 15:04:12', 57),
(94, 95, 'SAGA DEVELOPERS', '27ADYFS4495G1Z5', '+91 7498931455', 'SAGA DEVELOPERSPLOT NO 7 S NO 257/4 GREENPARK AUNDH BANER PUNEpune Maharashtra 411007\r\npune\r\nMaharashtra\r\n411007', 'AUNDH', 'on', '2021-06-29 15:09:26', '2021-07-02 18:08:21', 56),
(95, 96, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-06-29 15:13:03', '2021-06-29 15:13:03', 23),
(96, 97, 'S K DEVELOPERS', '27ACFFS1684K1ZO', '+91 9765399209', 'S K BUSINESS PARK BANER PUNE\r\npune\r\nMaharashtra\r\n411045', 'S K BUSINESS PARK BANER PUNE\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-29 18:31:59', '2021-06-29 18:31:59', 20),
(97, 98, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-07-01 12:20:54', '2021-07-01 12:20:54', 34),
(98, 99, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-02 12:57:11', '2021-07-02 12:57:11', 23),
(99, 100, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-07-02 13:04:10', '2021-07-02 13:04:10', 34),
(100, 101, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'off', '2021-07-02 14:37:33', '2021-07-02 14:37:33', 17),
(101, 102, 'SHRINIWAS PATIL', '27AMBPP3325Q1ZN', '+91 7020309040', 'SR NO 32 \r\nPANCARD CLUB RPAD \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'SR NO 32 \r\nPANCARD CLUB RPAD \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-07-02 15:31:12', '2021-07-02 15:31:12', 58),
(102, 103, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', '+91 8459471113', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'on', '2021-07-02 18:37:43', '2021-07-02 18:37:43', 38),
(103, 104, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', '+91 8600492350', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER', 'off', '2021-07-08 12:37:03', '2021-07-08 12:37:03', 52),
(104, 105, 'SUDARSHAN ENTERPRISES', '27AFXPT2097J1ZF', '+91 9975858592', 'PUNE\r\nPUNE\r\nMaharashtra\r\n410515', 'PUNE\r\nPUNE\r\nMaharashtra\r\n410515', 'off', '2021-07-08 12:45:17', '2021-07-08 12:45:17', 60),
(105, 106, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-07-08 12:49:56', '2021-07-08 12:49:56', 12),
(106, 107, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'on', '2021-07-08 12:54:15', '2021-07-08 12:54:15', 11),
(107, 108, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-07-08 13:01:07', '2021-07-08 13:01:07', 17),
(108, 109, 'R. D REALITY', '27AAYFR3982N1ZZ', '+91 9822325282', 'SITE SWASTIK PARK BANER\r\npune\r\nMaharashtra\r\n411045', 'SITE SWASTIK PARK BANER\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-08 13:07:06', '2021-07-08 13:07:06', 19),
(109, 110, 'BALAJI REALITY METRO JAZZ', '27AALFB0250E1ZW', '+91 9373258773', 'SENAPATI BAPAT ROAD NEAR J W MARRIOT HOTEL PUNE\r\nPUNE\r\nMaharashtra\r\n411045', 'SENAPATI BAPAT ROAD NEAR J W MARRIOT HOTEL PUNE\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-07-08 13:14:21', '2021-07-08 13:14:21', 61),
(110, 111, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-07-09 12:59:36', '2021-07-09 12:59:36', 29),
(111, 112, 'SAMARTHA TRIMURTI PROPERTIES', '27ACCFS2681P1ZI', '+91 8975528181', '41 ESTERA SR NO 41 NEAR SAVTAMALI MANDIR JAMBHE ROAD MALWADI PUNAWALE PUNE\r\npune\r\nMaharashtra\r\n411033', '41 ESTERA \r\n PUNAWALE', 'off', '2021-07-09 13:37:16', '2021-07-09 13:37:16', 22),
(112, 113, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-12 18:11:03', '2021-07-12 18:11:03', 29),
(113, 114, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-07-12 18:17:17', '2021-07-12 18:17:17', 23),
(114, 115, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'Kohinoor sapphire\r\ntathwade', 'off', '2021-07-13 12:52:28', '2021-07-13 12:52:28', 23),
(115, 116, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-07-15 13:19:00', '2021-07-15 13:19:00', 12),
(116, 117, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-15 13:25:12', '2021-07-15 13:25:12', 2),
(117, 118, 'MOHITE CONSTRUCTION', '27AOKPM9318P1Z2', '+91 9823293031', 'MHALUNGE\r\npune\r\nMaharashtra\r\n410501', 'HINJAWADI', 'off', '2021-07-15 13:34:09', '2021-07-15 13:34:09', 62),
(118, 119, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'Ghandharv Excellence \r\nOpp D Mart  Barade vasti Moshi', 'off', '2021-07-23 16:03:10', '2021-07-23 16:03:10', 23),
(119, 120, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-07-23 16:37:28', '2021-07-23 16:37:28', 25),
(120, 121, 'Parklane Construction LLP', '27AATFP4446L1ZH', '+91 9960644420', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'SUS', 'off', '2021-07-23 16:39:31', '2021-07-23 16:39:31', 35),
(121, 122, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MOUNTVIEW, SHIVAJINAGAR', 'off', '2021-07-23 16:47:57', '2021-07-23 16:47:57', 12),
(122, 123, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-07-23 17:07:05', '2021-07-23 17:07:05', 12),
(123, 124, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-07-26 12:56:33', '2021-07-26 12:56:33', 2),
(124, 125, 'SUPREME INFRA', '27ADTFS0011R1ZJ', '+91 8668837971', 'KOHINOOR SUPPHIRE TATHWADE\r\nPUNE\r\nMaharashtra\r\n411025', 'KOHINOOR SUPPHIRE\r\n TATHWADE', 'off', '2021-07-26 14:39:24', '2021-07-26 14:39:24', 32),
(125, 126, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SUPPHIRE\r\n TATHWADE', 'off', '2021-07-26 14:48:32', '2021-07-26 14:48:32', 29),
(126, 127, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA \r\nPUNAWALE', 'off', '2021-07-26 15:00:40', '2021-07-26 15:00:40', 23),
(127, 128, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA \r\nPUNAWALE', 'off', '2021-07-26 15:04:48', '2021-07-26 15:04:48', 23),
(128, 129, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALGANDHARV CHOWK \r\nPUNE', 'off', '2021-07-29 13:10:07', '2021-07-29 13:10:07', 34),
(129, 130, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI', 'off', '2021-07-30 13:12:02', '2021-07-30 13:12:02', 34),
(130, 131, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nDANGE CHOWK', 'off', '2021-08-04 12:41:29', '2021-08-04 12:41:29', 23),
(131, 132, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE', 'off', '2021-08-04 12:45:00', '2021-08-04 12:45:00', 29),
(132, 133, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILA \r\nPUNAWALE', 'off', '2021-08-04 12:49:23', '2021-08-04 12:49:23', 23),
(133, 134, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE', 'off', '2021-08-04 12:57:37', '2021-08-04 12:57:37', 29),
(134, 135, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'kohinoor sapphire\r\ntathwade', 'off', '2021-08-05 16:17:23', '2021-08-05 16:17:23', 29),
(135, 136, 'SAI SAMARTTHA PROPERTIES', '27ACHFS2552A1ZE', '+91 9764847947', 'PUNAWALE\r\nPUNE\r\nMaharashtra\r\n411033', 'PUNAWALE\r\n SAISHA', 'off', '2021-08-06 13:16:35', '2021-08-06 13:16:35', 64),
(136, 137, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-12 13:57:56', '2021-08-12 13:57:56', 12),
(137, 138, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-08-12 14:01:49', '2021-08-12 14:01:49', 12),
(138, 139, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-08-12 14:03:28', '2021-08-12 14:03:28', 12),
(139, 140, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-08-12 14:09:11', '2021-08-12 14:09:11', 12),
(140, 141, 'IRIS CONSTRUCTION', '27AAEFI0733Q1Z3', '+91 7875855755', 'BHALCHANDRA BANGLOW KOTHRUD\r\nPUNE\r\nMaharashtra\r\n411038', 'BHALCHANDRA BANGLOW KOTHRUD\r\nPUNE\r\nMaharashtra\r\n411038', 'on', '2021-08-12 14:11:57', '2021-08-12 14:11:57', 65),
(141, 142, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'on', '2021-08-12 14:25:42', '2021-08-20 18:15:11', 12),
(142, 143, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'RAVET', 'off', '2021-08-12 14:29:14', '2021-08-12 14:29:14', 2),
(143, 144, 'Royal Eraville Ventures', '27AAFAR2934N1Z2', '+91 9970076849', 'Sr no 181, sade satra nali, behind Amnora park, hadapsar \r\nContact:Nasir Alase\r\nPUNE\r\nMaharashtra\r\n411028', 'Sr no 181, sade satra nali, behind Amnora park, hadapsar \r\nContact:Nasir Alase\r\nPUNE\r\nMaharashtra\r\n411028', 'on', '2021-08-12 14:33:12', '2021-08-12 14:33:12', 67),
(144, 145, 'NIRMITI BUILDCOM', '27AAMFN6503H1Z5', '+91 9922471017', 'baner pune\r\npune\r\nMaharashtra\r\n411045', 'baner pune\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-08-12 14:37:00', '2021-08-12 14:37:00', 14),
(145, 146, 'YOGESH ASSOCIATES', '27AMJPD5463D1Z7', '+91 8459471113', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'FLAT NO 06 SR NO 110 SAMARTH VILLA SHRIRAJ NAGAR INDIRA NAGAR NASHIK\r\nnashik\r\nMaharashtra\r\n422009', 'off', '2021-08-12 14:40:10', '2021-08-12 14:40:10', 38),
(146, 147, 'AUM HOUSING', '27AAKA4028N1Z7', '+91 9850243628', 'BANER PUNE 45\r\npune\r\nMaharashtra\r\n411045', 'BANER PUNE 45\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-08-12 14:52:32', '2021-08-12 14:52:32', 4),
(147, 148, 'Parnavi Enteprises', '27ADOPN5225D1ZJ', '+91 9822316873', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'on', '2021-08-12 14:55:06', '2021-08-12 14:55:06', 66),
(148, 149, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'BANER ONE \r\nSR NO 23 \r\nPAN CARD CLUB ROAD \r\nBANER PUNE 411045', 'off', '2021-08-13 16:34:41', '2021-08-13 18:09:39', 68),
(149, 150, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-13 16:38:00', '2021-08-13 16:38:00', 12),
(150, 151, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'bhosari', 'off', '2021-08-20 18:31:59', '2021-08-20 18:31:59', 12),
(151, 152, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'HINJAWADI', 'off', '2021-08-20 18:39:00', '2021-08-20 18:39:00', 12),
(152, 153, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-08-20 18:41:50', '2021-08-20 18:41:50', 12),
(153, 154, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-08-21 12:42:43', '2021-08-21 12:42:43', 29),
(154, 155, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-08-21 12:47:15', '2021-08-21 12:47:15', 23),
(155, 156, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-08-21 12:50:20', '2021-08-21 12:50:20', 12),
(156, 157, 'KHETAWAT ENTERPRISES', '27BEMPK0082A1ZL', '+91 9822499232', 'PASHAN BANER \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n415045', 'PASHAN BANER \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n415045', 'on', '2021-08-21 14:48:04', '2021-08-21 14:48:04', 69),
(157, 158, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'BHOSARI', 'off', '2021-08-21 16:27:45', '2021-08-21 16:27:45', 12),
(158, 159, 'PRASHANT CHOUDHARI', '27AWPPN0094G1Z8', '+91 8600492350', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-08-23 16:24:23', '2021-08-23 16:24:23', 52),
(159, 160, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-08-23 16:29:41', '2021-08-23 16:29:41', 17),
(160, 161, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-08-24 14:12:31', '2021-08-24 14:12:31', 23),
(161, 162, 'Parnavi Enteprises', '27ADOPN5225D1ZJ', '+91 9822316873', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'Torana park A\r\nMarket yard road\r\nPUNE\r\nMaharashtra\r\n411037', 'on', '2021-08-24 17:07:47', '2021-08-24 17:07:47', 66),
(162, 163, 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '27AAECR7330R1ZR', '+91 9022499719', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'on', '2021-08-24 17:12:27', '2021-08-24 17:12:27', 33),
(163, 164, 'Parklane Construction LLP', '27AATFP4446L1ZH', '+91 9960644420', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'Off./Unit 6, Sadgurukrupa Building, 557/a/11b/1 Gultekdi, Salisbury Park, Pune -\r\n411037,Pune.\r\npune\r\nMaharashtra\r\n411037', 'on', '2021-08-27 14:37:37', '2021-08-27 14:37:37', 35),
(164, 165, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-02 17:13:54', '2021-09-02 17:13:54', 34),
(165, 166, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-02 17:42:29', '2021-09-02 17:42:29', 34),
(166, 167, 'J P ENTERPRISE', '27AAAFJ0870H1ZJ', '+91 7028029095', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', 'on', '2021-09-02 18:04:18', '2021-09-21 18:19:13', 74),
(167, 168, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE\r\nTATHWADE', 'off', '2021-09-09 12:36:50', '2021-09-09 12:36:50', 29),
(168, 169, 'RAMDAS DHANAJI DHANKUDE', '27AHWPD3801H1ZB', '+91 9763665897', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'on', '2021-09-09 12:42:39', '2021-09-09 12:42:39', 70),
(169, 170, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'sara metrovilla \r\npunawale', 'off', '2021-09-16 12:39:27', '2021-09-16 12:39:27', 23),
(170, 171, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-09-16 12:58:27', '2021-09-16 12:58:27', 23),
(171, 172, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SAPPHIRE \r\nTATHWADE', 'off', '2021-09-16 13:16:36', '2021-09-16 13:16:36', 29),
(172, 173, 'J P ENTERPRISE', '27AAAFJ0870H1ZJ', '+91 7028029095', '403, KONARK SHRAM, 156 TARDEO ROAD, TARDEO,\r\nMumbai City\r\nMumbai\r\nMaharashtra\r\n400034', 'baner', 'on', '2021-09-16 16:35:04', '2021-10-01 14:20:28', 74),
(173, 174, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'IMPERIAL BANER', 'off', '2021-09-16 16:50:39', '2021-09-16 16:50:39', 3),
(174, 175, 'Kamal Pramotor & Builders', '27AAQFK0028A1ZQ', '+91 9923175628', 'Hadapsar\r\npune\r\nMaharashtra\r\n411013', 'Site Avani', 'off', '2021-09-17 16:55:00', '2021-09-17 16:55:00', 72),
(175, 176, 'MADAN ENTERPRISES', '27AHPPB2250F1ZN', '+91 9011551220', 'AMBEGAON BUDRUK.\r\npune\r\nMaharashtra\r\n411046', 'AMBEGAON BUDRUK.\r\npune\r\nMaharashtra\r\n411046', 'on', '2021-09-17 17:01:02', '2021-09-17 17:01:02', 13),
(176, 177, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'PIRANGUT', 'off', '2021-09-17 17:20:52', '2021-09-17 17:22:04', 12),
(177, 178, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-09-17 17:28:30', '2021-09-17 17:28:30', 2),
(178, 179, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'RAVET', 'off', '2021-09-17 17:33:57', '2021-09-17 17:33:57', 2),
(179, 180, 'PAREES PROPERTIES', '27AAVFP3881H1ZJ', '+91 9765550708', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'FLAT NO 2B HILL VIEW CO-OP HOUSING SOCIETY PAUD ROAD ,PUNE MAHARASHTRA 411029\r\npune\r\nMaharashtra\r\n411029', 'on', '2021-09-17 17:38:26', '2021-09-17 17:38:26', 17),
(180, 181, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'on', '2021-09-17 17:43:40', '2021-09-17 17:43:40', 34),
(181, 182, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'K 11 BALEWADI', 'off', '2021-09-17 17:53:06', '2021-09-17 17:53:06', 73),
(182, 183, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-09-18 19:36:00', '2021-09-18 19:36:00', 25),
(183, 184, 'J K ENTERPRISESE', '27ALHPJ7077Q1Z8', '+91 9850892391', 'GANESHKHIND ROAD \r\nAUNDH\r\nPUNE\r\nMaharashtra\r\n411007', 'GANESHKHIND ROAD \r\nAUNDH\r\nPUNE\r\nMaharashtra\r\n411007', 'on', '2021-09-23 17:53:25', '2021-09-23 17:53:25', 75),
(184, 185, 'Artistic Design Work', '27AAVFA2537P1ZQ', '+91 9764444594', 'Aundh\r\nPune\r\nMaharashtra\r\n411007', 'IMPERIAL BANER', 'off', '2021-09-24 13:14:59', '2021-09-24 13:14:59', 3),
(185, 186, 'Shreenath enterprise', '27BOKPS1120Q2ZG', '+91 9730401010', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-09-28 13:10:43', '2021-09-28 13:10:43', 76),
(186, 187, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'off', '2021-09-28 14:04:18', '2021-09-28 14:04:18', 12),
(187, 188, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-10-01 17:33:38', '2021-10-01 17:33:38', 2),
(188, 189, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'BALEWADI', 'off', '2021-10-01 17:41:32', '2021-10-01 17:41:32', 73),
(189, 190, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'CRYSTAL', 'off', '2021-10-01 17:45:25', '2021-10-01 17:45:25', 68),
(190, 191, 'CRYSTAL VENTURES', '27AAAAC4987B2ZT', '+91 9922033608', 'FORTUNE PLAZA,OFF NO 404\r\nSR NO 1/10/16, AMCHI COLONY \r\nBAVDHAN KHURD\r\nPUNE\r\nMaharashtra\r\n411021', 'BANER', 'off', '2021-10-01 17:47:45', '2021-10-01 17:47:45', 68),
(191, 192, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-10-01 17:50:13', '2021-10-01 17:50:13', 12),
(192, 193, 'Shree Sairaj Buildcon', '27ABJFS1302B1ZQ', '+91 9197637200', 'Office No 301, 2nd floor, above MacDonald , Venture Building , Paud Road , Kothrud Depot,\r\nPUNE\r\nMaharashtra\r\n411038', 'MHALUNGE', 'off', '2021-10-01 17:52:59', '2021-10-01 17:52:59', 73),
(193, 194, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-10-01 17:54:59', '2021-10-01 17:54:59', 25),
(194, 195, 'JAY BHAGWAN DEVLOPERS', '27AANFJ3002C1ZU', '+91 9823186513', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'BANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-10-01 17:57:43', '2021-10-01 17:57:43', 57),
(195, 196, 'KUMAR PROPERTIES', '27AAAFK6674L1ZV', '+91 9890898875', 'MOHAN NAGAR \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'MOHAN NAGAR \r\nBANER\r\nPUNE\r\nMaharashtra\r\n411045', 'on', '2021-10-01 18:03:46', '2021-10-01 18:03:46', 77),
(196, 197, 'RAMDAS DHANAJI DHANKUDE', '27AHWPD3801H1ZB', '+91 9763665897', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'HOUSE NO.370/2, BANER VILLAGE, NEAR SAVATAMALI\r\nMAHARAJ MANDIR , BANER PUNE\r\nPUNE\r\nMaharashtra\r\n411008', 'on', '2021-10-01 18:09:16', '2021-10-01 18:09:16', 70);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_customers1`
--

CREATE TABLE `invoice_customers1` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_customers1`
--

INSERT INTO `invoice_customers1` (`id`, `invoice_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `customerId`) VALUES
(1, 1, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'on', '2021-06-09 19:32:15', '2021-06-09 19:32:15', 28),
(2, 2, 'YASHADA DEVLOPERS', '27AAAFY5091M1ZM', '+91 9146058927', 'PIMPLE SOUDAGAR\r\nPUNE\r\nMaharashtra\r\n411025', 'MOSHI ALANDI BTRD ROAD,\r\nDUDULGAON', 'off', '2021-06-09 19:34:20', '2021-06-09 19:34:20', 28),
(3, 3, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'on', '2021-06-09 19:43:17', '2021-06-09 19:43:17', 29),
(4, 4, 'OMKAR CONSTRUCTION', '27AABF07442F1ZB', '+91 8329560581', 'BAVDHAN PUNE\r\npune\r\nMaharashtra\r\n411105', 'BAVDHAN PUNE\r\npune\r\nMaharashtra\r\n411105', 'on', '2021-06-09 19:48:37', '2021-06-09 19:48:37', 15),
(5, 5, 'KHADKE DEVELOPERS', '27AAKFK4136D1ZH', '+91 9822753681', 'NASIK\r\nNASIK\r\nMaharashtra\r\n420003', 'NASIK\r\nNASIK\r\nMaharashtra\r\n420003', 'on', '2021-06-09 19:56:02', '2021-06-09 19:56:02', 30),
(6, 6, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'MODIBAG', 'off', '2021-06-09 19:57:37', '2021-06-09 19:57:37', 12),
(7, 7, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-09 19:59:17', '2021-06-09 19:59:17', 12),
(8, 8, 'ADITYA ASSOCIATE', '27ABGFA6495G1Z5', '+91 9096242315', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'Baner\r\npune\r\nMaharashtra\r\n411045', 'on', '2021-06-09 20:00:53', '2021-06-09 20:00:53', 2),
(9, 9, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'KHARADI', 'off', '2021-06-09 20:02:06', '2021-06-09 20:02:06', 12),
(10, 10, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'on', '2021-06-09 20:04:10', '2021-06-09 20:04:10', 29),
(11, 11, 'RAJAL ENTERPRISES', '27AAVFR8661B1ZP', '+91 8888578234', '58/1 HINDUSTAN CHOWK G G ROAD MULUND COLONY MULUND WEST MUMBAI\r\nMUMBAI\r\nMaharashtra\r\n400080', '58/1 HINDUSTAN CHOWK G G ROAD MULUND COLONY MULUND WEST MUMBAI\r\nMUMBAI\r\nMaharashtra\r\n400080', 'on', '2021-06-09 20:09:50', '2021-06-09 20:09:50', 31),
(12, 12, 'SUPREME INFRA', '27ADTFS0011R1ZJ', '+91 8668837971', 'KOHINOOR SUPPHIRE TATHWADE\r\nPUNE\r\nMaharashtra\r\n411025', 'KOJINOOR THTHWADE', 'off', '2021-06-10 14:03:44', '2021-06-10 14:03:44', 32),
(13, 13, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE TATHWADE', 'off', '2021-06-10 14:11:56', '2021-06-10 14:11:56', 23),
(14, 14, 'M/S JAISONS QUALITY SYSTEMS', '27AALFJ8872AIZ4', '+91 8788362086', 'wakad\r\npune\r\nMaharashtra\r\n411045', 'kharadi', 'off', '2021-06-10 14:21:00', '2021-06-10 14:21:00', 12),
(15, 15, 'SAHYADRI GROUP OF CONSTRUCTION', '27ADVFS1385F1ZL', '+91 9850400007', 'WARJE PUNE MAHARASHTRA\r\npune\r\nMaharashtra\r\n411045', 'WARJE PUNE', 'off', '2021-06-10 14:22:59', '2021-06-10 14:22:59', 21),
(16, 16, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'off', '2021-06-10 14:30:48', '2021-06-10 14:30:48', 11),
(17, 17, 'JAKHAD ENTERPRISES LLP', '27AANFJ8674J1ZJ', '+91 9320004101', 'B- 201, RAGHUNATH KRUPA WALAWALKAR WADI, AAREY ROAD, GOREGAON EAST, MUMBAI.\r\nmombai\r\nMaharashtra\r\n400063', 'pune', 'off', '2021-06-10 14:39:31', '2021-06-10 14:39:31', 11),
(18, 18, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA SANSKRUTI RANUBAI MALA\r\nCHAKAN', 'off', '2021-06-10 14:53:48', '2021-06-10 14:53:48', 23),
(19, 19, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 9552989419', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'WAGHOLI', 'off', '2021-06-10 14:56:06', '2021-06-10 14:56:06', 29),
(20, 20, 'RNK CONSYTRUCTION SPECIALITIES PVT LTD', '27AAECR7330R1ZR', '+91 9022499719', 'OFFICE NO 108 / 109 1ST FLOOR KRISHNANGAN HIGHTS NEAR DNS BANK ,\r\nSINHGAD ROAD, HINGANE KHURAD PUNE\r\npune\r\nMaharashtra\r\n411024', 'V T P BLUE WATER MHALUNGE', 'off', '2021-06-10 15:01:15', '2021-06-10 15:01:15', 33),
(21, 21, 'Mittal Infrastructure pvt ltd', '27AAECM4631L1ZA', '+91 8390903261', 'Indra Memories, Office no. 07, 3rd floor,Next to Sakalnagr, Near Nexa Showroom,\r\nBaner Road Pune -07\r\nPUNE\r\nMaharashtra\r\n411014', 'KOHINOOR SUPPHIRE\r\nTATHAWADE', 'off', '2021-06-10 16:00:48', '2021-06-10 16:00:48', 29),
(22, 22, 'SAMARTHA TRIMURTI PROPERTIES', '27ACCFS2681P1ZI', '+91 8975528181', '41 ESTERA SR NO 41 NEAR SAVTAMALI MANDIR JAMBHE ROAD MALWADI PUNAWALE PUNE\r\npune\r\nMaharashtra\r\n411033', '41 ESTERA PUNAWALE', 'off', '2021-06-10 16:05:07', '2021-06-10 16:05:07', 22),
(23, 23, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 7057556067', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 16:53:03', '2021-06-10 17:12:23', 34),
(24, 24, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 7057556067', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 17:16:53', '2021-06-10 17:17:19', 34),
(25, 25, 'GAURAV TRADERS', '27BOWPS3253N1ZX', '+91 9371219324', 'S NO 20/3/3 BALAJI NAGAR DHANKAWADI PUNE\r\npune\r\nMaharashtra\r\n411043', 'BALBHARTI CHOUK', 'off', '2021-06-10 17:21:59', '2021-06-10 17:21:59', 34),
(26, 26, 'SPARK CONSTRUCTION SOLUTION', '27AROPK8923F1ZE', '+91 9730170748', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'FLAT NO 6 PLOT 16 F P 542 872 873 SILVER SPLENDOUR REVENUE COLONY J M ROAD PUNE\r\npune\r\nMaharashtra\r\n411005', 'on', '2021-06-10 17:23:47', '2021-06-10 17:23:47', 25),
(27, 27, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'KOHINOOR SAPPHIRE ,\r\nTATHAWADE', 'off', '2021-06-10 17:27:43', '2021-06-10 17:27:43', 23),
(28, 28, 'SHREE SAIRAJ BUILDCON PROJECTS', '27AHSPB4442N1ZX', '+91 7447722975', '301.2FLOOR VENTURE BUILDING PAUD ROAS NEAR BY PMT DEPOT . KOTHRUD PUNE 411038\r\npune\r\nMaharashtra\r\n411038', 'SARA METROVILLA, PUNAWALE', 'off', '2021-06-10 17:43:11', '2021-06-10 17:43:11', 23);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoiceSerial` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'goods',
  `hsn` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleValue` decimal(10,2) NOT NULL,
  `discountRate` decimal(4,2) NOT NULL,
  `discountValue` decimal(10,2) NOT NULL,
  `taxableValue` decimal(10,2) NOT NULL,
  `taxRate` decimal(4,2) NOT NULL,
  `igstRate` decimal(4,2) NOT NULL,
  `igstValue` decimal(10,2) NOT NULL,
  `cgstRate` decimal(4,2) NOT NULL,
  `cgstValue` decimal(10,2) NOT NULL,
  `sgstRate` decimal(4,2) NOT NULL,
  `sgstValue` decimal(10,2) NOT NULL,
  `cessRate` decimal(4,2) NOT NULL,
  `cessValue` decimal(10,2) NOT NULL,
  `grossValue` decimal(10,2) NOT NULL,
  `dcDate` date DEFAULT NULL,
  `vehicleNo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dcNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `invoiceSerial`, `description`, `type`, `hsn`, `quantity`, `unit`, `saleValue`, `discountRate`, `discountValue`, `taxableValue`, `taxRate`, `igstRate`, `igstValue`, `cgstRate`, `cgstValue`, `sgstRate`, `sgstValue`, `cessRate`, `cessValue`, `grossValue`, `dcDate`, `vehicleNo`, `created_at`, `updated_at`, `dcNo`) VALUES
(1, 1, 1, '4\" BRIKS', 'goods', '68159910', 1.00, '', 0.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, 2.50, 0.00, 2.50, 0.00, 0.00, 0.00, 0.00, '2021-06-09', NULL, '2021-06-09 19:32:15', '2021-06-09 19:32:15', NULL),
(2, 2, 1, '4\" BRIKS', 'goods', '68159910', 8480.00, 'NOS', 6.00, 0.00, 0.00, 50880.00, 5.00, 0.00, 0.00, 2.50, 1272.00, 2.50, 1272.00, 0.00, 0.00, 53424.00, '2021-04-01', NULL, '2021-06-09 19:34:20', '2021-06-11 16:43:59', '02'),
(3, 3, 1, 'RIVER SAND', 'goods', '00002505', 6.64, 'Brass', 7500.00, 0.00, 0.00, 49800.00, 5.00, 0.00, 0.00, 2.50, 1245.00, 2.50, 1245.00, 0.00, 0.00, 52290.00, '2021-04-06', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11295'),
(4, 3, 2, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7500.00, 0.00, 0.00, 51525.00, 5.00, 0.00, 0.00, 2.50, 1288.13, 2.50, 1288.13, 0.00, 0.00, 54101.25, '2021-04-06', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11294'),
(5, 3, 3, 'RIVER SAND', 'goods', '00002505', 6.76, 'Brass', 7500.00, 0.00, 0.00, 50700.00, 5.00, 0.00, 0.00, 2.50, 1267.50, 2.50, 1267.50, 0.00, 0.00, 53235.00, '2021-04-10', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11299'),
(6, 3, 4, 'RIVER SAND', 'goods', '00002505', 6.53, 'Brass', 7500.00, 0.00, 0.00, 48975.00, 5.00, 0.00, 0.00, 2.50, 1224.38, 2.50, 1224.38, 0.00, 0.00, 51423.75, '2021-04-10', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11298'),
(7, 3, 5, 'RIVER SAND', 'goods', '00002505', 7.10, 'Brass', 7500.00, 0.00, 0.00, 53250.00, 5.00, 0.00, 0.00, 2.50, 1331.25, 2.50, 1331.25, 0.00, 0.00, 55912.50, '2021-04-15', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11537'),
(8, 3, 6, 'RIVER SAND', 'goods', '00002505', 6.64, 'Brass', 7500.00, 0.00, 0.00, 49800.00, 5.00, 0.00, 0.00, 2.50, 1245.00, 2.50, 1245.00, 0.00, 0.00, 52290.00, '2021-04-13', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11535'),
(9, 3, 7, 'RIVER SAND', 'goods', '00002505', 7.54, 'Brass', 7500.00, 0.00, 0.00, 56550.00, 5.00, 0.00, 0.00, 2.50, 1413.75, 2.50, 1413.75, 0.00, 0.00, 59377.50, '2021-04-14', NULL, '2021-06-09 19:43:17', '2021-06-11 16:48:18', '11536'),
(10, 4, 1, '4\" BRIKS', 'goods', '68159910', 8929.00, 'NOS', 6.30, 0.00, 0.00, 56252.70, 5.00, 0.00, 0.00, 2.50, 1406.32, 2.50, 1406.32, 0.00, 0.00, 59065.33, '2021-03-26', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11397'),
(11, 4, 2, '4\" BRIKS', 'goods', '68159910', 8909.00, 'NOS', 6.30, 0.00, 0.00, 56126.70, 5.00, 0.00, 0.00, 2.50, 1403.17, 2.50, 1403.17, 0.00, 0.00, 58933.03, '2021-04-01', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11393'),
(12, 4, 3, '4\" BRIKS', 'goods', '68159910', 8909.00, 'NOS', 6.30, 0.00, 0.00, 56126.70, 5.00, 0.00, 0.00, 2.50, 1403.17, 2.50, 1403.17, 0.00, 0.00, 58933.03, '2021-04-02', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11398'),
(13, 4, 4, '4\" BRIKS', 'goods', '68159910', 8807.00, 'NOS', 6.30, 0.00, 0.00, 55484.10, 5.00, 0.00, 0.00, 2.50, 1387.10, 2.50, 1387.10, 0.00, 0.00, 58258.31, '2021-04-06', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11138'),
(14, 4, 5, '4\" BRIKS', 'goods', '68159910', 8806.00, 'NOS', 6.30, 0.00, 0.00, 55477.80, 5.00, 0.00, 0.00, 2.50, 1386.95, 2.50, 1386.95, 0.00, 0.00, 58251.69, '2021-04-11', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11139'),
(15, 4, 6, '4\" BRIKS', 'goods', '68159910', 8876.00, 'NOS', 6.30, 0.00, 0.00, 55918.80, 5.00, 0.00, 0.00, 2.50, 1397.97, 2.50, 1397.97, 0.00, 0.00, 58714.74, '2021-04-14', NULL, '2021-06-09 19:48:37', '2021-06-11 16:50:16', '11140'),
(16, 5, 1, '4\" BRIKS', 'goods', '68159910', 6700.00, 'NOS', 9.00, 0.00, 0.00, 60300.00, 5.00, 0.00, 0.00, 2.50, 1507.50, 2.50, 1507.50, 0.00, 0.00, 63315.00, '2021-04-09', NULL, '2021-06-09 19:56:02', '2021-06-11 16:53:55', '05'),
(17, 6, 1, '4\" BRIKS', 'goods', '68159910', 15568.00, 'NOS', 6.00, 0.00, 0.00, 93408.00, 5.00, 0.00, 0.00, 2.50, 2335.20, 2.50, 2335.20, 0.00, 0.00, 98078.40, '2021-03-24', NULL, '2021-06-09 19:57:37', '2021-06-11 16:56:46', '06'),
(18, 7, 1, '4\" BRIKS', 'goods', '68159910', 11000.00, 'NOS', 7.25, 0.00, 0.00, 79750.00, 5.00, 0.00, 0.00, 2.50, 1993.75, 2.50, 1993.75, 0.00, 0.00, 83737.50, '2021-03-30', NULL, '2021-06-09 19:59:17', '2021-06-11 16:57:16', '07'),
(19, 8, 1, '4\" BRIKS', 'goods', '68159910', 8000.00, 'NOS', 6.25, 0.00, 0.00, 50000.00, 5.00, 0.00, 0.00, 2.50, 1250.00, 2.50, 1250.00, 0.00, 0.00, 52500.00, '2021-04-07', NULL, '2021-06-09 20:00:53', '2021-06-11 17:02:08', '08'),
(20, 9, 1, '4\" BRIKS', 'goods', '68159910', 11000.00, 'NOS', 7.25, 0.00, 0.00, 79750.00, 5.00, 0.00, 0.00, 2.50, 1993.75, 2.50, 1993.75, 0.00, 0.00, 83737.50, '2021-04-13', NULL, '2021-06-09 20:02:06', '2021-06-11 17:03:47', '09'),
(21, 10, 1, '4\" BRIKS', 'goods', '68159910', 10200.00, 'NOS', 7.00, 0.00, 0.00, 71400.00, 5.00, 0.00, 0.00, 2.50, 1785.00, 2.50, 1785.00, 0.00, 0.00, 74970.00, '2021-04-09', NULL, '2021-06-09 20:04:10', '2021-06-11 17:04:09', '10'),
(22, 11, 1, 'CRUSHAND', 'goods', '00002517', 4.50, 'Brass', 3000.00, 0.00, 0.00, 13500.00, 5.00, 0.00, 0.00, 2.50, 337.50, 2.50, 337.50, 0.00, 0.00, 14175.00, '2021-03-11', NULL, '2021-06-09 20:09:50', '2021-06-11 17:05:46', '11'),
(23, 12, 1, 'RIVER SAND', 'goods', '00002505', 2.68, 'Brass', 7400.00, 0.00, 0.00, 19832.00, 5.00, 0.00, 0.00, 2.50, 495.80, 2.50, 495.80, 0.00, 0.00, 20823.60, '2021-03-29', NULL, '2021-06-10 14:03:44', '2021-06-11 13:55:30', '11542'),
(24, 12, 2, 'RIVER SAND', 'goods', '00002505', 5.41, 'Brass', 7400.00, 0.00, 0.00, 40034.00, 5.00, 0.00, 0.00, 2.50, 1000.85, 2.50, 1000.85, 0.00, 0.00, 42035.70, '2021-04-15', NULL, '2021-06-10 14:03:44', '2021-06-11 13:55:30', '11543'),
(25, 12, 3, 'RIVER SAND', 'goods', '00002505', 6.19, 'Brass', 7400.00, 0.00, 0.00, 45806.00, 5.00, 0.00, 0.00, 2.50, 1145.15, 2.50, 1145.15, 0.00, 0.00, 48096.30, '2021-04-16', NULL, '2021-06-10 14:03:44', '2021-06-11 13:55:30', '11544'),
(26, 13, 1, 'RIVER SAND', 'goods', '00002505', 6.64, 'Brass', 7300.00, 0.00, 0.00, 48472.00, 5.00, 0.00, 0.00, 2.50, 1211.80, 2.50, 1211.80, 0.00, 0.00, 50895.60, '2021-03-29', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11545'),
(27, 13, 2, 'RIVER SAND', 'goods', '00002505', 6.42, 'Brass', 7300.00, 0.00, 0.00, 46866.00, 5.00, 0.00, 0.00, 2.50, 1171.65, 2.50, 1171.65, 0.00, 0.00, 49209.30, '2021-04-11', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11546'),
(28, 13, 3, 'RIVER SAND', 'goods', '00002505', 6.53, 'Brass', 7300.00, 0.00, 0.00, 47669.00, 5.00, 0.00, 0.00, 2.50, 1191.72, 2.50, 1191.72, 0.00, 0.00, 50052.45, '2021-04-11', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11547'),
(29, 13, 4, 'RIVER SAND', 'goods', '00002505', 6.76, 'Brass', 7300.00, 0.00, 0.00, 49348.00, 5.00, 0.00, 0.00, 2.50, 1233.70, 2.50, 1233.70, 0.00, 0.00, 51815.40, '2021-04-12', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11548'),
(30, 13, 5, 'RIVER SAND', 'goods', '00002505', 6.53, 'Brass', 7300.00, 0.00, 0.00, 47669.00, 5.00, 0.00, 0.00, 2.50, 1191.72, 2.50, 1191.72, 0.00, 0.00, 50052.45, '2021-04-12', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11549'),
(31, 13, 6, 'RIVER SAND', 'goods', '00002505', 6.47, 'Brass', 7300.00, 0.00, 0.00, 47231.00, 5.00, 0.00, 0.00, 2.50, 1180.78, 2.50, 1180.78, 0.00, 0.00, 49592.55, '2021-04-13', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11550'),
(32, 13, 7, 'RIVER SAND', 'goods', '00002505', 5.96, 'Brass', 7300.00, 0.00, 0.00, 43508.00, 5.00, 0.00, 0.00, 2.50, 1087.70, 2.50, 1087.70, 0.00, 0.00, 45683.40, '2021-04-13', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11296'),
(33, 13, 8, 'RIVER SAND', 'goods', '00002505', 5.83, 'Brass', 7300.00, 0.00, 0.00, 42559.00, 5.00, 0.00, 0.00, 2.50, 1063.97, 2.50, 1063.97, 0.00, 0.00, 44686.95, '2021-04-15', NULL, '2021-06-10 14:11:56', '2021-06-11 17:10:49', '11297'),
(34, 14, 1, 'CRUSHAND', 'goods', '00002517', 3.50, 'Brass', 3300.00, 0.00, 0.00, 11550.00, 5.00, 0.00, 0.00, 2.50, 288.75, 2.50, 288.75, 0.00, 0.00, 12127.50, '2021-03-01', NULL, '2021-06-10 14:21:00', '2021-06-11 17:25:35', '14'),
(35, 14, 2, 'CRUSHAND', 'goods', '00002517', 4.50, 'Brass', 3300.00, 0.00, 0.00, 14850.00, 5.00, 0.00, 0.00, 2.50, 371.25, 2.50, 371.25, 0.00, 0.00, 15592.50, '2021-04-03', NULL, '2021-06-10 14:21:00', '2021-06-11 17:25:35', '14'),
(36, 14, 3, 'PLASTER SAND', 'goods', '00002517', 3.50, 'Brass', 6800.00, 0.00, 0.00, 23800.00, 5.00, 0.00, 0.00, 2.50, 595.00, 2.50, 595.00, 0.00, 0.00, 24990.00, '2021-04-06', NULL, '2021-06-10 14:21:00', '2021-06-11 17:25:35', '14'),
(37, 14, 4, 'PLASTER SAND', 'goods', '00002517', 3.50, 'Brass', 6800.00, 0.00, 0.00, 23800.00, 5.00, 0.00, 0.00, 2.50, 595.00, 2.50, 595.00, 0.00, 0.00, 24990.00, '2021-04-07', NULL, '2021-06-10 14:21:00', '2021-06-11 17:25:35', '14'),
(38, 15, 1, 'FLYASH BRICKS', 'goods', '68159910', 4000.00, 'NOS', 8.00, 0.00, 0.00, 32000.00, 5.00, 0.00, 0.00, 2.50, 800.00, 2.50, 800.00, 0.00, 0.00, 33600.00, '2021-04-07', NULL, '2021-06-10 14:22:59', '2021-06-11 17:26:36', '11135'),
(39, 16, 1, 'Cement', 'goods', '25232930', 15.00, 'BGS', 281.25, 0.00, 0.00, 4218.75, 28.00, 0.00, 0.00, 14.00, 590.63, 14.00, 590.63, 0.00, 0.00, 5400.00, '2021-04-02', NULL, '2021-06-10 14:30:48', '2021-06-11 17:28:51', '16'),
(40, 16, 2, 'Cement', 'goods', '25232930', 10.00, 'BGS', 281.25, 0.00, 0.00, 2812.50, 28.00, 0.00, 0.00, 14.00, 393.75, 14.00, 393.75, 0.00, 0.00, 3600.00, '2021-04-09', NULL, '2021-06-10 14:30:48', '2021-06-11 17:28:51', '16'),
(41, 16, 3, 'Cement', 'goods', '25232930', 15.00, 'BGS', 281.25, 0.00, 0.00, 4218.75, 28.00, 0.00, 0.00, 14.00, 590.63, 14.00, 590.63, 0.00, 0.00, 5400.00, '2021-04-13', NULL, '2021-06-10 14:30:48', '2021-06-11 17:28:51', '16'),
(42, 16, 4, 'Cement', 'goods', '25232930', 25.00, 'BGS', 281.25, 0.00, 0.00, 7031.25, 28.00, 0.00, 0.00, 14.00, 984.38, 14.00, 984.38, 0.00, 0.00, 9000.00, '2021-04-06', NULL, '2021-06-10 14:30:48', '2021-06-11 17:28:51', '16'),
(43, 17, 1, 'CRUSHAND', 'goods', '00002517', 3.50, 'Brass', 3200.00, 0.00, 0.00, 11200.00, 5.00, 0.00, 0.00, 2.50, 280.00, 2.50, 280.00, 0.00, 0.00, 11760.00, '2021-03-31', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(44, 17, 2, 'METAL', 'goods', '00002517', 3.50, 'Brass', 2600.00, 0.00, 0.00, 9100.00, 5.00, 0.00, 0.00, 2.50, 227.50, 2.50, 227.50, 0.00, 0.00, 9555.00, '2021-04-01', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(45, 17, 3, 'CRUSHAND', 'goods', '00002517', 5.00, 'Brass', 3200.00, 0.00, 0.00, 16000.00, 5.00, 0.00, 0.00, 2.50, 400.00, 2.50, 400.00, 0.00, 0.00, 16800.00, '2021-04-04', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(46, 17, 4, 'METAL', 'goods', '00002517', 2.50, 'Brass', 2600.00, 0.00, 0.00, 6500.00, 5.00, 0.00, 0.00, 2.50, 162.50, 2.50, 162.50, 0.00, 0.00, 6825.00, '2021-04-07', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(47, 17, 5, 'CRUSHAND', 'goods', '00002517', 5.50, 'Brass', 3200.00, 0.00, 0.00, 17600.00, 5.00, 0.00, 0.00, 2.50, 440.00, 2.50, 440.00, 0.00, 0.00, 18480.00, '2021-04-13', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(48, 17, 6, 'CRUSHAND', 'goods', '00002517', 3.50, 'Brass', 3200.00, 0.00, 0.00, 11200.00, 5.00, 0.00, 0.00, 2.50, 280.00, 2.50, 280.00, 0.00, 0.00, 11760.00, '2021-04-08', NULL, '2021-06-10 14:39:31', '2021-06-11 17:30:48', '17'),
(49, 18, 1, 'RIVER SAND', 'goods', '00002505', 6.98, 'Brass', 7300.00, 0.00, 0.00, 50954.00, 5.00, 0.00, 0.00, 2.50, 1273.85, 2.50, 1273.85, 0.00, 0.00, 53501.70, '2021-03-26', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10688'),
(50, 18, 2, 'RIVER SAND', 'goods', '00002505', 6.54, 'Brass', 7300.00, 0.00, 0.00, 47742.00, 5.00, 0.00, 0.00, 2.50, 1193.55, 2.50, 1193.55, 0.00, 0.00, 50129.10, '2021-03-22', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10687'),
(51, 18, 3, 'RIVER SAND', 'goods', '00002505', 6.73, 'Brass', 7300.00, 0.00, 0.00, 49129.00, 5.00, 0.00, 0.00, 2.50, 1228.23, 2.50, 1228.23, 0.00, 0.00, 51585.45, '2021-03-21', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10685'),
(52, 18, 4, 'RIVER SAND', 'goods', '00002505', 6.80, 'Brass', 7300.00, 0.00, 0.00, 49640.00, 5.00, 0.00, 0.00, 2.50, 1241.00, 2.50, 1241.00, 0.00, 0.00, 52122.00, '2021-03-21', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10684'),
(53, 18, 5, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7300.00, 0.00, 0.00, 50151.00, 5.00, 0.00, 0.00, 2.50, 1253.78, 2.50, 1253.78, 0.00, 0.00, 52658.55, '2021-03-15', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10683'),
(54, 18, 6, 'RIVER SAND', 'goods', '00002505', 6.65, 'Brass', 7300.00, 0.00, 0.00, 48545.00, 5.00, 0.00, 0.00, 2.50, 1213.63, 2.50, 1213.63, 0.00, 0.00, 50972.25, '2021-02-25', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10682'),
(55, 18, 7, 'RIVER SAND', 'goods', '00002505', 6.84, 'Brass', 7300.00, 0.00, 0.00, 49932.00, 5.00, 0.00, 0.00, 2.50, 1248.30, 2.50, 1248.30, 0.00, 0.00, 52428.60, '2021-02-25', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10681'),
(56, 18, 8, 'RIVER SAND', 'goods', '00002505', 5.58, 'Brass', 7300.00, 0.00, 0.00, 40734.00, 5.00, 0.00, 0.00, 2.50, 1018.35, 2.50, 1018.35, 0.00, 0.00, 42770.70, '2021-02-24', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10680'),
(57, 18, 9, 'RIVER SAND', 'goods', '00002505', 5.85, 'Brass', 7300.00, 0.00, 0.00, 42705.00, 5.00, 0.00, 0.00, 2.50, 1067.63, 2.50, 1067.63, 0.00, 0.00, 44840.25, '2021-03-29', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10543'),
(58, 18, 10, 'RIVER SAND', 'goods', '00002505', 5.34, 'Brass', 7300.00, 0.00, 0.00, 38982.00, 5.00, 0.00, 0.00, 2.50, 974.55, 2.50, 974.55, 0.00, 0.00, 40931.10, '2021-04-07', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10544'),
(59, 18, 11, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7300.00, 0.00, 0.00, 50151.00, 5.00, 0.00, 0.00, 2.50, 1253.78, 2.50, 1253.78, 0.00, 0.00, 52658.55, '2021-04-07', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10545'),
(60, 18, 12, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7300.00, 0.00, 0.00, 50151.00, 5.00, 0.00, 0.00, 2.50, 1253.78, 2.50, 1253.78, 0.00, 0.00, 52658.55, '2021-04-14', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10546'),
(61, 18, 13, 'RIVER SAND', 'goods', '00002505', 6.76, 'Brass', 7300.00, 0.00, 0.00, 49348.00, 5.00, 0.00, 0.00, 2.50, 1233.70, 2.50, 1233.70, 0.00, 0.00, 51815.40, '2021-04-15', NULL, '2021-06-10 14:53:48', '2021-06-11 17:38:16', '10545'),
(62, 19, 1, 'RIVER SAND', 'goods', '00002505', 4.12, 'Brass', 8000.00, 0.00, 0.00, 32960.00, 5.00, 0.00, 0.00, 2.50, 824.00, 2.50, 824.00, 0.00, 0.00, 34608.00, '2021-04-14', NULL, '2021-06-10 14:56:06', '2021-06-11 17:41:54', '19'),
(63, 20, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 292.97, 0.00, 0.00, 29297.00, 28.00, 0.00, 0.00, 14.00, 4101.58, 14.00, 4101.58, 0.00, 0.00, 37500.16, '2021-04-23', NULL, '2021-06-10 15:01:15', '2021-06-11 17:43:13', '20'),
(64, 21, 1, 'RIVER SAND', 'goods', '00002505', 6.98, 'Brass', 7500.00, 0.00, 0.00, 52350.00, 5.00, 0.00, 0.00, 2.50, 1308.75, 2.50, 1308.75, 0.00, 0.00, 54967.50, '2021-04-18', 'MH 12 MV 7779', '2021-06-10 16:00:48', '2021-06-14 14:37:04', '12804'),
(65, 21, 2, 'RIVER SAND', 'goods', '00002505', 6.63, 'Brass', 7500.00, 0.00, 0.00, 49725.00, 5.00, 0.00, 0.00, 2.50, 1243.13, 2.50, 1243.13, 0.00, 0.00, 52211.25, '2021-04-19', 'MH 12 HD 6522', '2021-06-10 16:00:48', '2021-06-14 14:37:04', '12802'),
(66, 21, 3, 'RIVER SAND', 'goods', '00002505', 6.64, 'Brass', 7500.00, 0.00, 0.00, 49800.00, 5.00, 0.00, 0.00, 2.50, 1245.00, 2.50, 1245.00, 0.00, 0.00, 52290.00, '2021-04-22', 'MH 12 SF 7780', '2021-06-10 16:00:48', '2021-06-14 14:37:04', '12803'),
(67, 21, 4, 'RIVER SAND', 'goods', '00002505', 6.98, 'Brass', 7500.00, 0.00, 0.00, 52350.00, 5.00, 0.00, 0.00, 2.50, 1308.75, 2.50, 1308.75, 0.00, 0.00, 54967.50, '2021-04-22', 'MH 12 MX 4633', '2021-06-10 16:00:48', '2021-06-14 14:37:04', '12801'),
(68, 21, 5, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7500.00, 0.00, 0.00, 51525.00, 5.00, 0.00, 0.00, 2.50, 1288.13, 2.50, 1288.13, 0.00, 0.00, 54101.25, '2021-04-23', 'MH 12 NX 4633', '2021-06-10 16:00:48', '2021-06-14 14:37:04', '12805'),
(69, 22, 1, 'RIVER SAND', 'goods', '00002505', 7.21, 'Brass', 7400.00, 0.00, 0.00, 53354.00, 5.00, 0.00, 0.00, 2.50, 1333.85, 2.50, 1333.85, 0.00, 0.00, 56021.70, '2021-04-19', NULL, '2021-06-10 16:05:07', '2021-06-11 18:14:20', '489'),
(70, 22, 2, 'RIVER SAND', 'goods', '00002505', 6.69, 'Brass', 7400.00, 0.00, 0.00, 49506.00, 5.00, 0.00, 0.00, 2.50, 1237.65, 2.50, 1237.65, 0.00, 0.00, 51981.30, '2021-04-17', NULL, '2021-06-10 16:05:07', '2021-06-11 18:14:20', '488'),
(71, 22, 3, 'RIVER SAND', 'goods', '00002505', 7.89, 'Brass', 7400.00, 0.00, 0.00, 58386.00, 5.00, 0.00, 0.00, 2.50, 1459.65, 2.50, 1459.65, 0.00, 0.00, 61305.30, '2021-04-17', NULL, '2021-06-10 16:05:07', '2021-06-11 18:14:20', '487'),
(72, 22, 4, 'RIVER SAND', 'goods', '00002505', 6.42, 'Brass', 7400.00, 0.00, 0.00, 47508.00, 5.00, 0.00, 0.00, 2.50, 1187.70, 2.50, 1187.70, 0.00, 0.00, 49883.40, '2021-04-27', NULL, '2021-06-10 16:05:07', '2021-06-11 18:14:20', '12824'),
(73, 22, 5, 'RIVER SAND', 'goods', '00002505', 6.98, 'Brass', 7400.00, 0.00, 0.00, 51652.00, 5.00, 0.00, 0.00, 2.50, 1291.30, 2.50, 1291.30, 0.00, 0.00, 54234.60, '2021-05-07', NULL, '2021-06-10 16:05:07', '2021-06-11 18:14:20', '12825'),
(74, 23, 1, '4\" BRIKS', 'goods', '68159910', 9360.00, 'NOS', 6.80, 0.00, 0.00, 63648.00, 5.00, 0.00, 0.00, 2.50, 1591.20, 2.50, 1591.20, 0.00, 0.00, 66830.40, '2021-05-03', NULL, '2021-06-10 16:53:03', '2021-06-11 18:15:35', '11148'),
(75, 24, 1, '4\" BRIKS', 'goods', '68159910', 9500.00, 'NOS', 7.00, 0.00, 0.00, 66500.00, 5.00, 0.00, 0.00, 2.50, 1662.50, 2.50, 1662.50, 0.00, 0.00, 69825.00, '2021-04-23', NULL, '2021-06-10 17:16:53', '2021-06-11 18:16:45', '11146'),
(76, 25, 1, '4\" BRIKS', 'goods', '68159910', 9300.00, 'NOS', 6.80, 0.00, 0.00, 63240.00, 5.00, 0.00, 0.00, 2.50, 1581.00, 2.50, 1581.00, 0.00, 0.00, 66402.00, '2021-05-06', NULL, '2021-06-10 17:21:59', '2021-06-11 18:18:15', '25'),
(77, 26, 1, '4\" BRIKS', 'goods', '68159910', 10120.00, 'NOS', 6.00, 0.00, 0.00, 60720.00, 5.00, 0.00, 0.00, 2.50, 1518.00, 2.50, 1518.00, 0.00, 0.00, 63756.00, '2021-05-06', NULL, '2021-06-10 17:23:47', '2021-06-11 18:19:51', '26'),
(78, 27, 1, 'RIVER SAND', 'goods', '00002505', 5.85, 'Brass', 7300.00, 0.00, 0.00, 42705.00, 5.00, 0.00, 0.00, 2.50, 1067.63, 2.50, 1067.63, 0.00, 0.00, 44840.25, '2021-04-20', NULL, '2021-06-10 17:27:43', '2021-06-11 18:22:11', NULL),
(79, 27, 2, 'RIVER SAND', 'goods', '00002505', 6.08, 'Brass', 7300.00, 0.00, 0.00, 44384.00, 5.00, 0.00, 0.00, 2.50, 1109.60, 2.50, 1109.60, 0.00, 0.00, 46603.20, '2021-04-22', NULL, '2021-06-10 17:27:43', '2021-06-11 18:22:11', NULL),
(80, 27, 3, 'RIVER SAND', 'goods', '00002505', 5.51, 'Brass', 7300.00, 0.00, 0.00, 40223.00, 5.00, 0.00, 0.00, 2.50, 1005.58, 2.50, 1005.58, 0.00, 0.00, 42234.15, '2021-04-30', NULL, '2021-06-10 17:27:43', '2021-06-11 18:22:11', NULL),
(81, 27, 4, 'RIVER SAND', 'goods', '00002505', 5.07, 'Brass', 7300.00, 0.00, 0.00, 37011.00, 5.00, 0.00, 0.00, 2.50, 925.28, 2.50, 925.28, 0.00, 0.00, 38861.55, '2021-04-30', NULL, '2021-06-10 17:27:43', '2021-06-11 18:22:11', NULL),
(82, 27, 5, 'RIVER SAND', 'goods', '00002505', 4.50, 'Brass', 7300.00, 0.00, 0.00, 32850.00, 5.00, 0.00, 0.00, 2.50, 821.25, 2.50, 821.25, 0.00, 0.00, 34492.50, '2021-05-04', NULL, '2021-06-10 17:27:43', '2021-06-11 18:22:11', NULL),
(83, 28, 1, 'RIVER SAND', 'goods', '00002505', 6.30, 'Brass', 7300.00, 0.00, 0.00, 45990.00, 5.00, 0.00, 0.00, 2.50, 1149.75, 2.50, 1149.75, 0.00, 0.00, 48289.50, '2021-04-19', 'MH 12 MZ 4710', '2021-06-10 17:43:11', '2021-06-14 14:56:10', '12808'),
(84, 28, 2, 'RIVER SAND', 'goods', '00002505', 6.84, 'Brass', 7300.00, 0.00, 0.00, 49932.00, 5.00, 0.00, 0.00, 2.50, 1248.30, 2.50, 1248.30, 0.00, 0.00, 52428.60, '2021-04-18', 'MH 12 HD 5415', '2021-06-10 17:43:11', '2021-06-14 14:56:10', '12807'),
(85, 28, 3, 'RIVER SAND', 'goods', '00002505', 6.98, 'Brass', 7300.00, 0.00, 0.00, 50954.00, 5.00, 0.00, 0.00, 2.50, 1273.85, 2.50, 1273.85, 0.00, 0.00, 53501.70, '2021-04-18', 'MH 12 SF 7780', '2021-06-10 17:43:11', '2021-06-14 14:56:10', '12806'),
(86, 29, 1, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 5.65, 0.00, 0.00, 56500.00, 5.00, 0.00, 0.00, 2.50, 1412.50, 2.50, 1412.50, 0.00, 0.00, 59325.00, '2021-05-09', NULL, '2021-06-10 20:10:49', '2021-06-11 19:00:43', '29'),
(87, 30, 1, '4\" BRIKS', 'goods', '68159910', 9300.00, 'NOS', 6.80, 0.00, 0.00, 63240.00, 5.00, 0.00, 0.00, 2.50, 1581.00, 2.50, 1581.00, 0.00, 0.00, 66402.00, '2021-05-09', NULL, '2021-06-11 12:19:01', '2021-06-11 12:19:01', '30'),
(88, 31, 1, 'RIVER SAND', 'goods', '00002505', 7.21, 'Brass', 8000.00, 0.00, 0.00, 57680.00, 5.00, 0.00, 0.00, 2.50, 1442.00, 2.50, 1442.00, 0.00, 0.00, 60564.00, '2021-04-15', NULL, '2021-06-11 12:21:30', '2021-06-11 19:03:48', '11117'),
(89, 32, 1, 'RIVER SAND', 'goods', '00002505', 1.00, '', 0.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, 2.50, 0.00, 2.50, 0.00, 0.00, 0.00, 0.00, '2021-06-11', NULL, '2021-06-11 12:23:31', '2021-06-11 12:23:31', NULL),
(90, 33, 1, 'RIVER SAND', 'goods', '00002505', 6.38, 'Brass', 7400.00, 0.00, 0.00, 47212.00, 5.00, 0.00, 0.00, 2.50, 1180.30, 2.50, 1180.30, 0.00, 0.00, 49572.60, '2021-04-19', 'MH 12 MV 5222', '2021-06-11 12:27:36', '2021-06-14 14:51:37', '12827'),
(91, 33, 2, 'RIVER SAND', 'goods', '00002505', 6.42, 'Brass', 7400.00, 0.00, 0.00, 47508.00, 5.00, 0.00, 0.00, 2.50, 1187.70, 2.50, 1187.70, 0.00, 0.00, 49883.40, '2021-05-31', 'MH 12 HD 5415', '2021-06-11 12:27:36', '2021-06-14 14:51:37', '12819'),
(92, 33, 3, 'RIVER SAND', 'goods', '00002505', 5.96, 'Brass', 7400.00, 0.00, 0.00, 44104.00, 5.00, 0.00, 0.00, 2.50, 1102.60, 2.50, 1102.60, 0.00, 0.00, 46309.20, '2021-05-07', 'MH 12 NV 7779', '2021-06-11 12:27:36', '2021-06-14 14:51:37', '12826'),
(93, 33, 4, 'RIVER SAND', 'goods', '00002505', 5.18, 'Brass', 7400.00, 0.00, 0.00, 38332.00, 5.00, 0.00, 0.00, 2.50, 958.30, 2.50, 958.30, 0.00, 0.00, 40248.60, '2021-05-06', 'MH 12 MV 4633', '2021-06-11 12:27:36', '2021-06-14 14:51:37', '12820'),
(94, 33, 5, 'RIVER SAND', 'goods', '00002505', 6.42, 'Brass', 7400.00, 0.00, 0.00, 47508.00, 5.00, 0.00, 0.00, 2.50, 1187.70, 2.50, 1187.70, 0.00, 0.00, 49883.40, '2021-04-20', 'MH 12 MV 4633', '2021-06-11 12:27:36', '2021-06-14 14:51:37', '12817'),
(95, 34, 1, '4\" BRIKS', 'goods', '68159910', 8786.00, 'NOS', 6.30, 0.00, 0.00, 55351.80, 5.00, 0.00, 0.00, 2.50, 1383.80, 2.50, 1383.80, 0.00, 0.00, 58119.39, '2021-04-27', NULL, '2021-06-11 12:29:23', '2021-06-11 19:10:02', '11144'),
(96, 34, 2, '4\" BRIKS', 'goods', '68159910', 8785.00, 'NOS', 6.30, 0.00, 0.00, 55345.50, 5.00, 0.00, 0.00, 2.50, 1383.64, 2.50, 1383.64, 0.00, 0.00, 58112.78, '2021-05-02', NULL, '2021-06-11 12:29:23', '2021-06-11 19:10:02', '11147'),
(97, 35, 1, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.00, 0.00, 0.00, 70000.00, 5.00, 0.00, 0.00, 2.50, 1750.00, 2.50, 1750.00, 0.00, 0.00, 73500.00, '2021-05-08', NULL, '2021-06-11 12:31:28', '2021-06-11 19:12:41', '11129'),
(98, 35, 2, '4\" BRIKS', 'goods', '68159910', 11000.00, 'NOS', 7.00, 0.00, 0.00, 77000.00, 5.00, 0.00, 0.00, 2.50, 1925.00, 2.50, 1925.00, 0.00, 0.00, 80850.00, '2021-04-20', NULL, '2021-06-11 12:31:28', '2021-06-11 19:12:41', '11141'),
(99, 35, 3, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.00, 0.00, 0.00, 70000.00, 5.00, 0.00, 0.00, 2.50, 1750.00, 2.50, 1750.00, 0.00, 0.00, 73500.00, '2021-05-13', NULL, '2021-06-11 12:31:28', '2021-06-11 19:12:41', '13501'),
(100, 36, 1, 'CRUSHAND', 'goods', '00002517', 3.25, 'Brass', 3300.00, 0.00, 0.00, 10725.00, 5.00, 0.00, 0.00, 2.50, 268.13, 2.50, 268.13, 0.00, 0.00, 11261.25, '2021-05-12', NULL, '2021-06-11 12:33:41', '2021-06-11 19:14:26', '316'),
(101, 36, 2, 'CRUSHAND', 'goods', '00002517', 3.28, 'Brass', 3300.00, 0.00, 0.00, 10824.00, 5.00, 0.00, 0.00, 2.50, 270.60, 2.50, 270.60, 0.00, 0.00, 11365.20, '2021-04-14', NULL, '2021-06-11 12:33:41', '2021-06-11 19:14:26', '1177'),
(102, 36, 3, 'CRUSHAND', 'goods', '00002517', 4.50, 'Brass', 3300.00, 0.00, 0.00, 14850.00, 5.00, 0.00, 0.00, 2.50, 371.25, 2.50, 371.25, 0.00, 0.00, 15592.50, '2021-04-16', NULL, '2021-06-11 12:33:41', '2021-06-11 19:14:26', '1183'),
(103, 36, 4, 'CRUSHAND', 'goods', '00002517', 3.28, 'Brass', 3300.00, 0.00, 0.00, 10824.00, 5.00, 0.00, 0.00, 2.50, 270.60, 2.50, 270.60, 0.00, 0.00, 11365.20, '2021-05-11', NULL, '2021-06-11 12:33:41', '2021-06-11 19:14:26', '314'),
(104, 37, 1, 'PLASTER SAND', 'goods', '00002517', 4.50, 'Brass', 6800.00, 0.00, 0.00, 30600.00, 5.00, 0.00, 0.00, 2.50, 765.00, 2.50, 765.00, 0.00, 0.00, 32130.00, '2021-04-16', NULL, '2021-06-11 12:36:05', '2021-06-11 19:16:40', '1182'),
(105, 37, 2, 'PLASTER SAND', 'goods', '00002517', 3.28, 'Brass', 6800.00, 0.00, 0.00, 22304.00, 5.00, 0.00, 0.00, 2.50, 557.60, 2.50, 557.60, 0.00, 0.00, 23419.20, '2021-05-12', NULL, '2021-06-11 12:36:05', '2021-06-11 19:16:40', '317'),
(106, 38, 1, 'RIVER SAND', 'goods', '00002505', 6.82, 'Brass', 8000.00, 0.00, 0.00, 54560.00, 5.00, 0.00, 0.00, 2.50, 1364.00, 2.50, 1364.00, 0.00, 0.00, 57288.00, '2021-03-17', NULL, '2021-06-11 12:37:19', '2021-06-11 19:18:10', '10673'),
(107, 39, 1, 'RIVER SAND', 'goods', '00002505', 7.21, 'Brass', 8000.00, 0.00, 0.00, 57680.00, 5.00, 0.00, 0.00, 2.50, 1442.00, 2.50, 1442.00, 0.00, 0.00, 60564.00, '2021-04-24', NULL, '2021-06-11 12:38:18', '2021-06-11 19:18:32', '12815'),
(108, 40, 1, '4\" BRIKS', 'goods', '68159910', 8741.00, 'Brass', 5.65, 0.00, 0.00, 49386.65, 5.00, 0.00, 0.00, 2.50, 1234.67, 2.50, 1234.67, 0.00, 0.00, 51855.98, '2021-05-23', NULL, '2021-06-11 12:40:06', '2021-06-11 19:18:53', '40'),
(109, 41, 1, '4\" BRIKS', 'goods', '68159910', 5169.00, 'NOS', 6.50, 0.00, 0.00, 33598.50, 5.00, 0.00, 0.00, 2.50, 839.96, 2.50, 839.96, 0.00, 0.00, 35278.43, '2021-04-18', NULL, '2021-06-11 12:41:10', '2021-06-11 19:25:25', '10895'),
(110, 42, 1, '4\" BRIKS', 'goods', '68159910', 9800.00, 'NOS', 5.80, 0.00, 0.00, 56840.00, 5.00, 0.00, 0.00, 2.50, 1421.00, 2.50, 1421.00, 0.00, 0.00, 59682.00, '2021-05-24', NULL, '2021-06-11 12:42:31', '2021-06-11 19:25:57', '10898'),
(111, 43, 1, 'STEEL 25 MM', 'goods', '00007214', 970.00, 'KG', 54.24, 0.00, 0.00, 52612.80, 18.00, 0.00, 0.00, 9.00, 4735.15, 9.00, 4735.15, 0.00, 0.00, 62083.10, '2021-01-01', NULL, '2021-06-11 12:46:01', '2021-06-11 19:26:20', '43'),
(112, 44, 1, '4\" BRIKS', 'goods', '68159910', 6600.00, 'NOS', 9.50, 0.00, 0.00, 62700.00, 5.00, 0.00, 0.00, 2.50, 1567.50, 2.50, 1567.50, 0.00, 0.00, 65835.00, '2021-05-23', NULL, '2021-06-11 12:48:46', '2021-06-11 19:27:38', '13505'),
(113, 44, 2, '4\" BRIKS', 'goods', '68159910', 6600.00, 'NOS', 9.50, 0.00, 0.00, 62700.00, 5.00, 0.00, 0.00, 2.50, 1567.50, 2.50, 1567.50, 0.00, 0.00, 65835.00, '2021-05-22', NULL, '2021-06-11 12:48:46', '2021-06-11 19:27:38', '13504'),
(114, 45, 1, '4\" BRIKS', 'goods', '68159910', 8759.00, 'NOS', 6.40, 0.00, 0.00, 56057.60, 5.00, 0.00, 0.00, 2.50, 1401.44, 2.50, 1401.44, 0.00, 0.00, 58860.48, '2021-05-27', NULL, '2021-06-11 12:50:18', '2021-06-11 19:28:09', '12936'),
(115, 47, 1, 'Cement', 'goods', '25232930', 60.00, 'BGS', 273.44, 0.00, 0.00, 16406.40, 28.00, 0.00, 0.00, 14.00, 2296.90, 14.00, 2296.90, 0.00, 0.00, 21000.19, '2021-05-27', NULL, '2021-06-11 19:56:48', '2021-06-11 19:56:48', '47'),
(116, 48, 1, 'Cement', 'goods', '25232930', 30.00, 'BGS', 296.88, 0.00, 0.00, 8906.40, 28.00, 0.00, 0.00, 14.00, 1246.90, 14.00, 1246.90, 0.00, 0.00, 11400.19, '2021-04-16', NULL, '2021-06-11 20:00:54', '2021-06-17 18:18:45', '48'),
(117, 49, 1, 'RIVER SAND', 'goods', '00002505', 5.24, 'Brass', 7300.00, 0.00, 0.00, 38252.00, 5.00, 0.00, 0.00, 2.50, 956.30, 2.50, 956.30, 0.00, 0.00, 40164.60, '2021-05-23', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12321'),
(118, 49, 2, 'RIVER SAND', 'goods', '00002505', 5.96, 'Brass', 7300.00, 0.00, 0.00, 43508.00, 5.00, 0.00, 0.00, 2.50, 1087.70, 2.50, 1087.70, 0.00, 0.00, 45683.40, '2021-05-17', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12320'),
(119, 49, 3, 'RIVER SAND', 'goods', '00002505', 5.78, 'Brass', 7300.00, 0.00, 0.00, 42194.00, 5.00, 0.00, 0.00, 2.50, 1054.85, 2.50, 1054.85, 0.00, 0.00, 44303.70, '2021-05-17', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12319'),
(120, 49, 4, 'RIVER SAND', 'goods', '00002505', 6.73, 'Brass', 7300.00, 0.00, 0.00, 49129.00, 5.00, 0.00, 0.00, 2.50, 1228.23, 2.50, 1228.23, 0.00, 0.00, 51585.45, '2021-04-29', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12318'),
(121, 49, 5, 'RIVER SAND', 'goods', '00002505', 5.96, 'Brass', 7300.00, 0.00, 0.00, 43508.00, 5.00, 0.00, 0.00, 2.50, 1087.70, 2.50, 1087.70, 0.00, 0.00, 45683.40, '2021-05-30', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12322'),
(122, 49, 6, 'RIVER SAND', 'goods', '00002505', 6.84, 'Brass', 7300.00, 0.00, 0.00, 49932.00, 5.00, 0.00, 0.00, 2.50, 1248.30, 2.50, 1248.30, 0.00, 0.00, 52428.60, '2021-04-29', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12317'),
(123, 49, 7, 'RIVER SAND', 'goods', '00002505', 6.94, 'Brass', 7300.00, 0.00, 0.00, 50662.00, 5.00, 0.00, 0.00, 2.50, 1266.55, 2.50, 1266.55, 0.00, 0.00, 53195.10, '2021-04-22', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12316'),
(124, 49, 8, 'RIVER SAND', 'goods', '00002505', 3.67, 'Brass', 7300.00, 0.00, 0.00, 26791.00, 5.00, 0.00, 0.00, 2.50, 669.78, 2.50, 669.78, 0.00, 0.00, 28130.55, '2021-05-04', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12308'),
(125, 49, 9, 'RIVER SAND', 'goods', '00002505', 5.56, 'Brass', 7300.00, 0.00, 0.00, 40588.00, 5.00, 0.00, 0.00, 2.50, 1014.70, 2.50, 1014.70, 0.00, 0.00, 42617.40, '2021-05-10', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12309'),
(126, 49, 10, 'RIVER SAND', 'goods', '00002505', 6.42, 'Brass', 7300.00, 0.00, 0.00, 46866.00, 5.00, 0.00, 0.00, 2.50, 1171.65, 2.50, 1171.65, 0.00, 0.00, 49209.30, '2021-05-10', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12310'),
(127, 49, 11, 'RIVER SAND', 'goods', '00002505', 5.56, 'Brass', 7300.00, 0.00, 0.00, 40588.00, 5.00, 0.00, 0.00, 2.50, 1014.70, 2.50, 1014.70, 0.00, 0.00, 42617.40, '2021-05-16', NULL, '2021-06-11 20:09:09', '2021-06-11 20:09:09', '12311'),
(128, 50, 1, 'RIVER SAND', 'goods', '00002505', 7.21, 'Brass', 7500.00, 0.00, 0.00, 54075.00, 5.00, 0.00, 0.00, 2.50, 1351.88, 2.50, 1351.88, 0.00, 0.00, 56778.75, '2021-06-11', 'MH 12 NV 7779', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12301'),
(129, 50, 2, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7500.00, 0.00, 0.00, 51525.00, 5.00, 0.00, 0.00, 2.50, 1288.13, 2.50, 1288.13, 0.00, 0.00, 54101.25, '2021-06-11', 'MH 12 MV 7779', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12307'),
(130, 50, 3, 'RIVER SAND', 'goods', '00002505', 6.87, 'Brass', 7500.00, 0.00, 0.00, 51525.00, 5.00, 0.00, 0.00, 2.50, 1288.13, 2.50, 1288.13, 0.00, 0.00, 54101.25, '2021-06-11', 'MH 12 NX 0133', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12306'),
(131, 50, 4, 'RIVER SAND', 'goods', '00002505', 7.21, 'Brass', 7500.00, 0.00, 0.00, 54075.00, 5.00, 0.00, 0.00, 2.50, 1351.88, 2.50, 1351.88, 0.00, 0.00, 56778.75, '2021-06-11', 'MH 12 NX 0133', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12305'),
(132, 50, 5, 'RIVER SAND', 'goods', '00002505', 7.10, 'Brass', 7500.00, 0.00, 0.00, 53250.00, 5.00, 0.00, 0.00, 2.50, 1331.25, 2.50, 1331.25, 0.00, 0.00, 55912.50, '2021-06-11', 'MH 12 MV 7779', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12304'),
(133, 50, 6, 'RIVER SAND', 'goods', '00002505', 7.10, 'Brass', 7500.00, 0.00, 0.00, 53250.00, 5.00, 0.00, 0.00, 2.50, 1331.25, 2.50, 1331.25, 0.00, 0.00, 55912.50, '2021-06-11', 'MH 12 SF 7780', '2021-06-11 20:14:32', '2021-06-14 14:45:49', '12302'),
(134, 51, 1, '4\" BRIKS', 'goods', '68159910', 9300.00, 'NOS', 6.80, 0.00, 0.00, 63240.00, 5.00, 0.00, 0.00, 2.50, 1581.00, 2.50, 1581.00, 0.00, 0.00, 66402.00, '2021-05-28', NULL, '2021-06-11 20:17:47', '2021-06-11 20:17:47', '51'),
(135, 52, 1, 'Cement', 'goods', '25232930', 50.00, 'BGS', 269.53, 0.00, 0.00, 13476.50, 28.00, 0.00, 0.00, 14.00, 1886.71, 14.00, 1886.71, 0.00, 0.00, 17249.92, '2021-03-30', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(136, 52, 2, 'Cement', 'goods', '25232930', 100.00, 'BGS', 269.53, 0.00, 0.00, 26953.00, 28.00, 0.00, 0.00, 14.00, 3773.42, 14.00, 3773.42, 0.00, 0.00, 34499.84, '2021-03-31', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(137, 52, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 1900.00, 0.00, 0.00, 1900.00, 5.00, 0.00, 0.00, 2.50, 47.50, 2.50, 47.50, 0.00, 0.00, 1995.00, '2021-04-01', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(138, 52, 4, 'Cement', 'goods', '25232930', 12.00, 'BGS', 292.97, 0.00, 0.00, 3515.64, 28.00, 0.00, 0.00, 14.00, 492.19, 14.00, 492.19, 0.00, 0.00, 4500.02, '2021-04-09', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(139, 52, 5, 'METAL', 'goods', '00002517', 1.00, 'CH', 1900.00, 0.00, 0.00, 1900.00, 5.00, 0.00, 0.00, 2.50, 47.50, 2.50, 47.50, 0.00, 0.00, 1995.00, '2021-04-15', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(140, 52, 6, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, '2021-04-26', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(141, 52, 7, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, '2021-04-28', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(142, 52, 8, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, '2021-05-14', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(143, 52, 9, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, '2021-05-22', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(144, 52, 10, 'Cement', 'goods', '25232930', 50.00, 'BGS', 273.44, 0.00, 0.00, 13672.00, 28.00, 0.00, 0.00, 14.00, 1914.08, 14.00, 1914.08, 0.00, 0.00, 17500.16, '2021-05-22', NULL, '2021-06-11 20:24:06', '2021-06-11 20:24:06', '52'),
(145, 53, 1, 'METAL', 'goods', '00002517', 2.00, 'CH', 1900.00, 0.00, 0.00, 3800.00, 5.00, 0.00, 0.00, 2.50, 95.00, 2.50, 95.00, 0.00, 0.00, 3990.00, '2021-06-09', NULL, '2021-06-11 20:43:25', '2021-06-11 20:43:25', '53'),
(146, 53, 2, 'Cement', 'goods', '25232930', 110.00, 'BGS', 273.44, 0.00, 0.00, 30078.40, 28.00, 0.00, 0.00, 14.00, 4210.98, 14.00, 4210.98, 0.00, 0.00, 38500.35, '2021-06-10', NULL, '2021-06-11 20:43:25', '2021-06-11 20:43:25', '53'),
(147, 48, 2, 'Cement', 'goods', '25232930', 25.00, 'BGS', 281.25, 0.00, 0.00, 7031.25, 28.00, 0.00, 0.00, 14.00, 984.38, 14.00, 984.38, 0.00, 0.00, 9000.00, '2021-04-27', NULL, '2021-06-11 21:20:27', '2021-06-17 18:18:45', '48'),
(148, 48, 3, 'Cement', 'goods', '25232930', 20.00, 'BGS', 281.25, 0.00, 0.00, 5625.00, 28.00, 0.00, 0.00, 14.00, 787.50, 14.00, 787.50, 0.00, 0.00, 7200.00, '2021-04-22', NULL, '2021-06-11 21:20:27', '2021-06-17 18:18:45', '48'),
(149, 48, 4, 'Cement', 'goods', '25232930', 20.00, 'BGS', 273.44, 0.00, 0.00, 5468.80, 28.00, 0.00, 0.00, 14.00, 765.63, 14.00, 765.63, 0.00, 0.00, 7000.06, '2021-06-08', NULL, '2021-06-11 21:22:47', '2021-06-17 18:18:45', '48'),
(150, 54, 1, 'BIRLA SHAKTI', 'goods', '25232910', 20.00, 'BGS', 273.44, 0.00, 0.00, 5468.80, 28.00, 0.00, 0.00, 14.00, 765.63, 14.00, 765.63, 0.00, 0.00, 7000.06, '2021-06-12', NULL, '2021-06-12 14:04:10', '2021-06-12 14:04:30', '54'),
(151, 55, 1, 'Cement', 'goods', '25232930', 12.00, 'BGS', 281.25, 0.00, 0.00, 3375.00, 28.00, 0.00, 0.00, 14.00, 472.50, 14.00, 472.50, 0.00, 0.00, 4320.00, NULL, NULL, '2021-06-15 15:14:27', '2021-06-16 15:46:42', NULL),
(152, 55, 2, 'Cement', 'goods', '25232930', 5.00, 'BGS', 273.44, 0.00, 0.00, 1367.20, 28.00, 0.00, 0.00, 14.00, 191.41, 14.00, 191.41, 0.00, 0.00, 1750.02, NULL, NULL, '2021-06-15 15:14:27', '2021-06-16 15:46:42', NULL),
(153, 55, 3, 'CRUSHAND', 'goods', '00002517', 3.00, 'CH', 2200.00, 0.00, 0.00, 6600.00, 5.00, 0.00, 0.00, 2.50, 165.00, 2.50, 165.00, 0.00, 0.00, 6930.00, NULL, NULL, '2021-06-15 15:14:27', '2021-06-16 15:46:42', NULL),
(154, 55, 4, 'RIVER SAND', 'goods', '00002505', 60.00, 'NOS', 50.00, 0.00, 0.00, 3000.00, 5.00, 0.00, 0.00, 2.50, 75.00, 2.50, 75.00, 0.00, 0.00, 3150.00, NULL, NULL, '2021-06-15 15:14:27', '2021-06-16 15:46:42', NULL),
(155, 55, 5, 'METAL', 'goods', '00002517', 1.00, 'CH', 1200.00, 0.00, 0.00, 1200.00, 5.00, 0.00, 0.00, 2.50, 30.00, 2.50, 30.00, 0.00, 0.00, 1260.00, NULL, NULL, '2021-06-15 15:14:27', '2021-06-16 15:46:42', NULL),
(156, 56, 1, 'Cement', 'goods', '25232930', 400.00, 'BGS', 269.53, 0.00, 0.00, 107812.00, 28.00, 0.00, 0.00, 14.00, 15093.68, 14.00, 15093.68, 0.00, 0.00, 137999.36, NULL, NULL, '2021-06-15 15:31:42', '2021-06-15 16:58:42', NULL),
(157, 57, 1, 'CRUSHAND', 'goods', '00002517', 12.32, 'Brass', 3300.00, 0.00, 0.00, 40656.00, 5.00, 0.00, 0.00, 2.50, 1016.40, 2.50, 1016.40, 0.00, 0.00, 42688.80, NULL, NULL, '2021-06-15 15:44:21', '2021-06-15 16:02:52', NULL),
(158, 57, 2, 'RIVER SAND', 'goods', '00002505', 6.85, 'Brass', 8000.00, 0.00, 0.00, 54800.00, 5.00, 0.00, 0.00, 2.50, 1370.00, 2.50, 1370.00, 0.00, 0.00, 57540.00, NULL, NULL, '2021-06-15 16:02:52', '2021-06-15 16:02:52', NULL),
(159, 57, 3, 'Cement', 'goods', '25232930', 200.00, 'BGS', 281.25, 0.00, 0.00, 56250.00, 28.00, 0.00, 0.00, 14.00, 7875.00, 14.00, 7875.00, 0.00, 0.00, 72000.00, NULL, NULL, '2021-06-15 16:02:52', '2021-06-15 16:02:52', NULL),
(160, 58, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-06-15 16:13:47', '2021-06-15 16:13:47', NULL),
(161, 59, 1, 'Cement', 'goods', '25232930', 250.00, 'BGS', 281.25, 0.00, 0.00, 70312.50, 28.00, 0.00, 0.00, 14.00, 9843.75, 14.00, 9843.75, 0.00, 0.00, 90000.00, NULL, NULL, '2021-06-15 16:16:34', '2021-06-15 16:16:34', NULL),
(162, 60, 1, 'Cement', 'goods', '25232930', 160.00, 'BGS', 277.34, 0.00, 0.00, 44374.40, 28.00, 0.00, 0.00, 14.00, 6212.42, 14.00, 6212.42, 0.00, 0.00, 56799.23, NULL, NULL, '2021-06-15 16:24:20', '2021-06-15 16:24:20', NULL),
(163, 60, 2, 'PLASTER SAND', 'goods', '00002517', 4.50, 'Brass', 6800.00, 0.00, 0.00, 30600.00, 5.00, 0.00, 0.00, 2.50, 765.00, 2.50, 765.00, 0.00, 0.00, 32130.00, NULL, NULL, '2021-06-15 16:24:20', '2021-06-15 16:24:20', NULL),
(164, 60, 3, 'METAL', 'goods', '00002517', 3.00, 'KG', 2800.00, 0.00, 0.00, 8400.00, 5.00, 0.00, 0.00, 2.50, 210.00, 2.50, 210.00, 0.00, 0.00, 8820.00, NULL, NULL, '2021-06-15 16:24:20', '2021-06-15 16:24:20', NULL),
(165, 61, 1, 'METAL', 'goods', '00002517', 3.73, 'Brass', 2800.00, 0.00, 0.00, 10444.00, 5.00, 0.00, 0.00, 2.50, 261.10, 2.50, 261.10, 0.00, 0.00, 10966.20, NULL, NULL, '2021-06-15 16:26:36', '2021-06-15 16:26:36', NULL),
(166, 61, 2, 'CRUSHAND', 'goods', '00002517', 3.82, 'Brass', 3300.00, 0.00, 0.00, 12606.00, 5.00, 0.00, 0.00, 2.50, 315.15, 2.50, 315.15, 0.00, 0.00, 13236.30, NULL, NULL, '2021-06-15 16:26:36', '2021-06-15 16:26:36', NULL),
(167, 62, 1, 'GRIT', 'goods', '00002517', 2.14, 'Brass', 3300.00, 0.00, 0.00, 7062.00, 5.00, 0.00, 0.00, 2.50, 176.55, 2.50, 176.55, 0.00, 0.00, 7415.10, NULL, NULL, '2021-06-15 16:30:31', '2021-06-16 15:28:47', NULL),
(168, 63, 1, '6\" BRIKS', 'goods', '68159910', 300.00, 'NOS', 75.00, 0.00, 0.00, 22500.00, 5.00, 0.00, 0.00, 2.50, 562.50, 2.50, 562.50, 0.00, 0.00, 23625.00, NULL, NULL, '2021-06-15 16:40:30', '2021-06-15 16:40:30', NULL),
(169, 63, 2, '4\" BRIKS', 'goods', '68159910', 160.00, 'NOS', 50.00, 0.00, 0.00, 8000.00, 5.00, 0.00, 0.00, 2.50, 200.00, 2.50, 200.00, 0.00, 0.00, 8400.00, NULL, NULL, '2021-06-15 16:40:30', '2021-06-15 16:40:30', NULL),
(170, 64, 1, '6\" BRIKS', 'goods', '68159910', 7250.00, 'NOS', 9.00, 0.00, 0.00, 65250.00, 5.00, 0.00, 0.00, 2.50, 1631.25, 2.50, 1631.25, 0.00, 0.00, 68512.50, NULL, NULL, '2021-06-15 16:44:29', '2021-06-29 12:54:31', NULL),
(171, 65, 1, '4\" BRIKS', 'goods', '68159910', 8650.00, 'NOS', 6.00, 0.00, 0.00, 51900.00, 5.00, 0.00, 0.00, 2.50, 1297.50, 2.50, 1297.50, 0.00, 0.00, 54495.00, NULL, NULL, '2021-06-15 16:49:52', '2021-06-15 16:49:52', NULL),
(172, 66, 1, 'RIVER SAND', 'goods', '00002505', 30.00, 'NOS', 90.00, 0.00, 0.00, 2700.00, 5.00, 0.00, 0.00, 2.50, 67.50, 2.50, 67.50, 0.00, 0.00, 2835.00, NULL, NULL, '2021-06-15 16:55:11', '2021-06-15 16:55:11', NULL),
(173, 66, 2, 'BIRLA SHAKTI', 'goods', '25232910', 3.00, 'BGS', 273.44, 0.00, 0.00, 820.32, 28.00, 0.00, 0.00, 14.00, 114.84, 14.00, 114.84, 0.00, 0.00, 1050.01, NULL, NULL, '2021-06-15 16:55:11', '2021-06-15 16:55:11', NULL),
(174, 67, 1, 'steel 8 MM', 'goods', '00007214', 1600.00, 'KG', 50.42, 0.00, 0.00, 80672.00, 18.00, 0.00, 0.00, 9.00, 7260.48, 9.00, 7260.48, 0.00, 0.00, 95192.96, NULL, NULL, '2021-06-16 13:47:31', '2021-06-16 13:47:31', NULL),
(175, 67, 2, 'steel 10,12,16,20,25', 'goods', '00007214', 5810.00, 'KG', 49.58, 0.00, 0.00, 288059.80, 18.00, 0.00, 0.00, 9.00, 25925.38, 9.00, 25925.38, 0.00, 0.00, 339910.56, NULL, NULL, '2021-06-16 13:47:31', '2021-06-16 13:47:31', NULL),
(176, 68, 1, '4\" BRIKS', 'goods', '68159910', 8980.00, 'NOS', 6.25, 0.00, 0.00, 56125.00, 5.00, 0.00, 0.00, 2.50, 1403.13, 2.50, 1403.13, 0.00, 0.00, 58931.25, NULL, NULL, '2021-06-16 13:52:57', '2021-06-16 13:52:57', NULL),
(177, 69, 1, 'RIVER SAND', 'goods', '00002505', 3.00, 'Brass', 7400.00, 0.00, 0.00, 22200.00, 5.00, 0.00, 0.00, 2.50, 555.00, 2.50, 555.00, 0.00, 0.00, 23310.00, NULL, NULL, '2021-06-16 16:44:52', '2021-06-16 16:44:52', NULL),
(178, 70, 1, 'Cement', 'goods', '25232930', 50.00, 'BGS', 281.25, 0.00, 0.00, 14062.50, 28.00, 0.00, 0.00, 14.00, 1968.75, 14.00, 1968.75, 0.00, 0.00, 18000.00, NULL, NULL, '2021-06-17 13:20:28', '2021-06-17 13:20:28', NULL),
(179, 71, 1, 'Cement', 'goods', '25232930', 20.00, 'BGS', 273.44, 0.00, 0.00, 5468.80, 28.00, 0.00, 0.00, 14.00, 765.63, 14.00, 765.63, 0.00, 0.00, 7000.06, NULL, NULL, '2021-06-17 13:56:46', '2021-06-17 13:56:46', NULL),
(180, 72, 1, 'MURUM', 'goods', '00002517', 28.00, 'Brass', 950.00, 0.00, 0.00, 26600.00, 5.00, 0.00, 0.00, 2.50, 665.00, 2.50, 665.00, 0.00, 0.00, 27930.00, NULL, NULL, '2021-06-19 19:19:10', '2021-06-19 19:19:10', NULL),
(181, 72, 2, 'GSB', 'goods', '00002517', 28.00, 'Brass', 2250.00, 0.00, 0.00, 63000.00, 5.00, 0.00, 0.00, 2.50, 1575.00, 2.50, 1575.00, 0.00, 0.00, 66150.00, NULL, NULL, '2021-06-19 19:19:10', '2021-06-19 19:19:10', NULL),
(182, 73, 1, 'RIVER SAND', 'goods', '00002505', 22.73, 'Brass', 7300.00, 0.00, 0.00, 165929.00, 5.00, 0.00, 0.00, 2.50, 4148.23, 2.50, 4148.23, 0.00, 0.00, 174225.45, NULL, NULL, '2021-06-21 15:33:48', '2021-06-21 15:33:48', NULL),
(183, 74, 1, 'RIVER SAND', 'goods', '00002505', 58.39, 'Brass', 7500.00, 0.00, 0.00, 437925.00, 5.00, 0.00, 0.00, 2.50, 10948.13, 2.50, 10948.13, 0.00, 0.00, 459821.25, NULL, NULL, '2021-06-21 15:46:03', '2021-06-21 15:46:03', NULL),
(184, 75, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 269.53, 0.00, 0.00, 26953.00, 28.00, 0.00, 0.00, 14.00, 3773.42, 14.00, 3773.42, 0.00, 0.00, 34499.84, NULL, NULL, '2021-06-21 16:28:48', '2021-06-21 16:28:48', NULL),
(185, 76, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-06-21 16:32:13', '2021-06-21 16:32:13', NULL),
(186, 77, 1, '4\" BRIKS', 'goods', '68159910', 8011.00, 'NOS', 6.80, 0.00, 0.00, 54474.80, 5.00, 0.00, 0.00, 2.50, 1361.87, 2.50, 1361.87, 0.00, 0.00, 57198.54, NULL, NULL, '2021-06-22 14:00:54', '2021-06-22 14:00:54', NULL),
(187, 78, 1, 'Cement', 'goods', '25232930', 20.00, 'BGS', 250.00, 0.00, 0.00, 5000.00, 28.00, 0.00, 0.00, 14.00, 700.00, 14.00, 700.00, 0.00, 0.00, 6400.00, NULL, NULL, '2021-06-23 13:38:45', '2021-06-23 13:38:45', NULL),
(188, 78, 2, 'CRUSHAND', 'goods', '00002517', 4.25, 'Brass', 3200.00, 0.00, 0.00, 13600.00, 5.00, 0.00, 0.00, 2.50, 340.00, 2.50, 340.00, 0.00, 0.00, 14280.00, NULL, NULL, '2021-06-23 13:38:45', '2021-06-23 13:38:45', NULL),
(189, 78, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 1800.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 13:38:45', '2021-06-23 13:38:45', NULL),
(190, 78, 4, '6\" BRIKS', 'goods', '68159910', 200.00, 'NOS', 9.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 13:38:45', '2021-06-23 13:38:45', NULL),
(191, 79, 1, 'Cement', 'goods', '25232930', 20.00, 'BGS', 250.00, 0.00, 0.00, 5000.00, 28.00, 0.00, 0.00, 14.00, 700.00, 14.00, 700.00, 0.00, 0.00, 6400.00, NULL, NULL, '2021-06-23 16:59:04', '2021-06-23 16:59:04', NULL),
(192, 79, 2, 'CRUSHAND', 'goods', '00002517', 4.50, 'Brass', 3200.00, 0.00, 0.00, 14400.00, 5.00, 0.00, 0.00, 2.50, 360.00, 2.50, 360.00, 0.00, 0.00, 15120.00, NULL, NULL, '2021-06-23 16:59:04', '2021-06-23 16:59:04', NULL),
(193, 79, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 1800.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 16:59:04', '2021-06-23 16:59:04', NULL),
(194, 79, 4, '6\" BRIKS', 'goods', '68159910', 200.00, 'NOS', 9.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 16:59:04', '2021-06-23 16:59:04', NULL),
(195, 46, 1, 'Cement', 'goods', '25232930', 20.00, 'BGS', 250.00, 0.00, 0.00, 5000.00, 28.00, 0.00, 0.00, 14.00, 700.00, 14.00, 700.00, 0.00, 0.00, 6400.00, NULL, NULL, '2021-06-23 17:01:14', '2021-06-23 17:18:44', NULL),
(196, 46, 2, 'CRUSHAND', 'goods', '00002517', 4.25, 'Brass', 3200.00, 0.00, 0.00, 13600.00, 5.00, 0.00, 0.00, 2.50, 340.00, 2.50, 340.00, 0.00, 0.00, 14280.00, NULL, NULL, '2021-06-23 17:01:14', '2021-06-23 17:18:44', NULL),
(197, 46, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 1800.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 17:01:14', '2021-06-23 17:18:44', NULL),
(198, 46, 4, '6\" BRIKS', 'goods', '68159910', 200.00, 'NOS', 9.00, 0.00, 0.00, 1800.00, 5.00, 0.00, 0.00, 2.50, 45.00, 2.50, 45.00, 0.00, 0.00, 1890.00, NULL, NULL, '2021-06-23 17:01:14', '2021-06-23 17:18:44', NULL),
(199, 81, 1, '4\" BRIKS', 'goods', '68159910', 9400.00, 'NOS', 6.05, 0.00, 0.00, 56870.00, 5.00, 0.00, 0.00, 2.50, 1421.75, 2.50, 1421.75, 0.00, 0.00, 59713.50, NULL, NULL, '2021-06-24 17:56:18', '2021-07-01 14:38:17', NULL),
(200, 82, 1, '4\" BRIKS', 'goods', '68159910', 4500.00, 'Brass', 7.25, 0.00, 0.00, 32625.00, 5.00, 0.00, 0.00, 2.50, 815.63, 2.50, 815.63, 0.00, 0.00, 34256.25, NULL, NULL, '2021-06-28 12:29:09', '2021-06-28 12:29:09', NULL),
(201, 83, 1, 'RIVER SAND', 'goods', '00002505', 5.21, 'Brass', 8500.00, 0.00, 0.00, 44285.00, 5.00, 0.00, 0.00, 2.50, 1107.13, 2.50, 1107.13, 0.00, 0.00, 46499.25, NULL, NULL, '2021-06-28 14:24:14', '2021-06-29 12:48:27', NULL),
(202, 84, 1, '4\" BRIKS', 'goods', '68159910', 9200.00, 'Brass', 6.00, 0.00, 0.00, 55200.00, 5.00, 0.00, 0.00, 2.50, 1380.00, 2.50, 1380.00, 0.00, 0.00, 57960.00, NULL, NULL, '2021-06-28 14:28:35', '2021-06-28 14:28:35', NULL),
(203, 85, 1, 'CRUSHAND', 'goods', '00002517', 2.82, 'Brass', 3400.00, 0.00, 0.00, 9588.00, 5.00, 0.00, 0.00, 2.50, 239.70, 2.50, 239.70, 0.00, 0.00, 10067.40, NULL, NULL, '2021-06-29 12:59:54', '2021-06-29 12:59:54', NULL),
(204, 85, 2, 'GRIT', 'goods', '00002517', 2.82, 'Brass', 3400.00, 0.00, 0.00, 9588.00, 5.00, 0.00, 0.00, 2.50, 239.70, 2.50, 239.70, 0.00, 0.00, 10067.40, NULL, NULL, '2021-06-29 12:59:54', '2021-06-29 12:59:54', NULL),
(205, 86, 1, 'PLASTER SAND', 'goods', '00002517', 5.44, 'Brass', 6800.00, 0.00, 0.00, 36992.00, 5.00, 0.00, 0.00, 2.50, 924.80, 2.50, 924.80, 0.00, 0.00, 38841.60, NULL, NULL, '2021-06-29 13:16:56', '2021-06-29 13:16:56', NULL),
(206, 87, 1, 'RIVER SAND', 'goods', '00002505', 7.22, 'Brass', 8000.00, 0.00, 0.00, 57760.00, 5.00, 0.00, 0.00, 2.50, 1444.00, 2.50, 1444.00, 0.00, 0.00, 60648.00, NULL, NULL, '2021-06-29 13:39:08', '2021-06-29 13:39:08', NULL),
(207, 88, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 273.44, 0.00, 0.00, 54688.00, 28.00, 0.00, 0.00, 14.00, 7656.32, 14.00, 7656.32, 0.00, 0.00, 70000.64, NULL, NULL, '2021-06-29 13:44:02', '2021-06-29 13:44:02', NULL),
(208, 89, 1, 'METAL', 'goods', '00002517', 6.97, 'Brass', 2800.00, 0.00, 0.00, 19516.00, 5.00, 0.00, 0.00, 2.50, 487.90, 2.50, 487.90, 0.00, 0.00, 20491.80, NULL, NULL, '2021-06-29 13:52:56', '2021-06-29 13:52:56', NULL),
(209, 90, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-06-29 13:57:25', '2021-06-29 13:57:25', NULL),
(210, 91, 1, 'FLYASH BRICKS', 'goods', '68159910', 11211.00, 'NOS', 9.00, 0.00, 0.00, 100899.00, 5.00, 0.00, 0.00, 2.50, 2522.47, 2.50, 2522.47, 0.00, 0.00, 105943.95, NULL, NULL, '2021-06-29 14:02:24', '2021-06-29 14:02:24', NULL),
(211, 92, 1, 'METAL', 'goods', '00002517', 2.00, 'CH', 1900.00, 0.00, 0.00, 3800.00, 5.00, 0.00, 0.00, 2.50, 95.00, 2.50, 95.00, 0.00, 0.00, 3990.00, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL),
(212, 92, 2, 'METAL', 'goods', '00002517', 3.50, 'Brass', 2600.00, 0.00, 0.00, 9100.00, 5.00, 0.00, 0.00, 2.50, 227.50, 2.50, 227.50, 0.00, 0.00, 9555.00, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL),
(213, 92, 3, 'Cement', 'goods', '25232930', 220.00, 'BGS', 273.44, 0.00, 0.00, 60156.80, 28.00, 0.00, 0.00, 14.00, 8421.95, 14.00, 8421.95, 0.00, 0.00, 77000.70, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL),
(214, 92, 4, 'FLYASH BRICKS', 'goods', '68159910', 3000.00, 'NOS', 6.50, 0.00, 0.00, 19500.00, 5.00, 0.00, 0.00, 2.50, 487.50, 2.50, 487.50, 0.00, 0.00, 20475.00, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL);
INSERT INTO `invoice_products` (`id`, `invoice_id`, `invoiceSerial`, `description`, `type`, `hsn`, `quantity`, `unit`, `saleValue`, `discountRate`, `discountValue`, `taxableValue`, `taxRate`, `igstRate`, `igstValue`, `cgstRate`, `cgstValue`, `sgstRate`, `sgstValue`, `cessRate`, `cessValue`, `grossValue`, `dcDate`, `vehicleNo`, `created_at`, `updated_at`, `dcNo`) VALUES
(215, 92, 5, 'CRUSHAND', 'goods', '00002517', 2.00, 'CH', 2000.00, 0.00, 0.00, 4000.00, 5.00, 0.00, 0.00, 2.50, 100.00, 2.50, 100.00, 0.00, 0.00, 4200.00, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL),
(216, 92, 6, 'CRUSHAND', 'goods', '00002517', 2.50, 'Brass', 3100.00, 0.00, 0.00, 7750.00, 5.00, 0.00, 0.00, 2.50, 193.75, 2.50, 193.75, 0.00, 0.00, 8137.50, NULL, NULL, '2021-06-29 14:13:31', '2021-06-29 14:13:31', NULL),
(217, 93, 1, '4\" BRIKS', 'goods', '68159910', 5000.00, 'NOS', 7.00, 0.00, 0.00, 35000.00, 5.00, 0.00, 0.00, 2.50, 875.00, 2.50, 875.00, 0.00, 0.00, 36750.00, NULL, NULL, '2021-06-29 14:29:50', '2021-07-02 18:04:43', NULL),
(218, 94, 1, 'METAL', 'goods', '00002517', 2.00, 'CH', 1900.00, 0.00, 0.00, 3800.00, 5.00, 0.00, 0.00, 2.50, 95.00, 2.50, 95.00, 0.00, 0.00, 3990.00, NULL, NULL, '2021-06-29 15:04:12', '2021-06-29 15:04:12', NULL),
(219, 94, 2, 'Cement', 'goods', '25232930', 20.00, 'BGS', 281.25, 0.00, 0.00, 5625.00, 28.00, 0.00, 0.00, 14.00, 787.50, 14.00, 787.50, 0.00, 0.00, 7200.00, NULL, NULL, '2021-06-29 15:04:12', '2021-06-29 15:04:12', NULL),
(220, 95, 1, 'BLOCK', 'goods', '00006815', 150.00, 'NOS', 65.00, 0.00, 0.00, 9750.00, 5.00, 0.00, 0.00, 2.50, 243.75, 2.50, 243.75, 0.00, 0.00, 10237.50, NULL, NULL, '2021-06-29 15:09:26', '2021-07-02 18:08:21', NULL),
(221, 96, 1, 'Cement', 'goods', '25232930', 300.00, 'BGS', 269.53, 0.00, 0.00, 80859.00, 28.00, 0.00, 0.00, 14.00, 11320.26, 14.00, 11320.26, 0.00, 0.00, 103499.52, NULL, NULL, '2021-06-29 15:13:03', '2021-06-29 15:13:03', NULL),
(222, 97, 1, '4\" BRIKS', 'goods', '68159910', 330.00, 'NOS', 7.00, 0.00, 0.00, 2310.00, 5.00, 0.00, 0.00, 2.50, 57.75, 2.50, 57.75, 0.00, 0.00, 2425.50, NULL, NULL, '2021-06-29 18:31:59', '2021-06-29 18:31:59', NULL),
(223, 98, 1, '4\" BRIKS', 'goods', '68159910', 9300.00, 'NOS', 6.80, 0.00, 0.00, 63240.00, 5.00, 0.00, 0.00, 2.50, 1581.00, 2.50, 1581.00, 0.00, 0.00, 66402.00, NULL, NULL, '2021-07-01 12:20:54', '2021-07-01 12:20:54', NULL),
(224, 99, 1, 'Cement', 'goods', '25232930', 500.00, 'BGS', 267.97, 0.00, 0.00, 133985.00, 28.00, 0.00, 0.00, 14.00, 18757.90, 14.00, 18757.90, 0.00, 0.00, 171500.80, NULL, NULL, '2021-07-02 12:57:11', '2021-07-02 12:57:11', NULL),
(225, 100, 1, '4\" BRIKS', 'goods', '68159910', 4500.00, 'NOS', 6.80, 0.00, 0.00, 30600.00, 5.00, 0.00, 0.00, 2.50, 765.00, 2.50, 765.00, 0.00, 0.00, 32130.00, NULL, NULL, '2021-07-02 13:04:10', '2021-07-02 13:04:10', NULL),
(226, 101, 1, 'Cement', 'goods', '25232930', 5.00, 'BGS', 281.25, 0.00, 0.00, 1406.25, 28.00, 0.00, 0.00, 14.00, 196.88, 14.00, 196.88, 0.00, 0.00, 1800.00, NULL, NULL, '2021-07-02 14:37:33', '2021-07-02 14:37:33', NULL),
(227, 102, 1, 'RIVER SAND', 'goods', '00002505', 33.20, 'Brass', 7900.00, 0.00, 0.00, 262280.00, 5.00, 0.00, 0.00, 2.50, 6557.00, 2.50, 6557.00, 0.00, 0.00, 275394.00, NULL, NULL, '2021-07-02 15:31:12', '2021-07-02 15:31:12', NULL),
(228, 103, 1, 'Cement', 'goods', '25232930', 60.00, 'BGS', 273.44, 0.00, 0.00, 16406.40, 28.00, 0.00, 0.00, 14.00, 2296.90, 14.00, 2296.90, 0.00, 0.00, 21000.19, NULL, NULL, '2021-07-02 18:37:43', '2021-07-02 18:37:43', NULL),
(229, 104, 1, 'Cement', 'goods', '25232930', 65.00, 'BGS', 273.44, 0.00, 0.00, 17773.60, 28.00, 0.00, 0.00, 14.00, 2488.30, 14.00, 2488.30, 0.00, 0.00, 22750.21, NULL, NULL, '2021-07-08 12:37:03', '2021-07-08 12:37:03', NULL),
(230, 105, 1, 'FLYASH BRICKS', 'goods', '68159910', 12159.00, 'NOS', 6.50, 0.00, 0.00, 79033.50, 5.00, 0.00, 0.00, 2.50, 1975.84, 2.50, 1975.84, 0.00, 0.00, 82985.18, NULL, NULL, '2021-07-08 12:45:17', '2021-07-08 12:45:17', NULL),
(231, 106, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-07-08 12:49:56', '2021-07-08 12:49:56', NULL),
(232, 107, 1, 'Cement', 'goods', '25232930', 15.00, 'BGS', 281.25, 0.00, 0.00, 4218.75, 28.00, 0.00, 0.00, 14.00, 590.63, 14.00, 590.63, 0.00, 0.00, 5400.00, NULL, NULL, '2021-07-08 12:54:15', '2021-07-08 12:54:15', NULL),
(233, 107, 2, 'CRUSHAND', 'goods', '00002517', 1.00, 'CH', 2200.00, 0.00, 0.00, 2200.00, 5.00, 0.00, 0.00, 2.50, 55.00, 2.50, 55.00, 0.00, 0.00, 2310.00, NULL, NULL, '2021-07-08 12:54:15', '2021-07-08 12:54:15', NULL),
(234, 108, 1, 'CRUSHAND', 'goods', '00002517', 3.00, 'CH', 2200.00, 0.00, 0.00, 6600.00, 5.00, 0.00, 0.00, 2.50, 165.00, 2.50, 165.00, 0.00, 0.00, 6930.00, NULL, NULL, '2021-07-08 13:01:07', '2021-07-13 14:52:04', NULL),
(235, 108, 2, 'Cement', 'goods', '25232930', 26.00, 'BGS', 281.25, 0.00, 0.00, 7312.50, 28.00, 0.00, 0.00, 14.00, 1023.75, 14.00, 1023.75, 0.00, 0.00, 9360.00, NULL, NULL, '2021-07-08 13:01:07', '2021-07-13 14:52:04', NULL),
(236, 108, 3, '6\" BRIKS', 'goods', '68159910', 800.00, 'NOS', 8.50, 0.00, 0.00, 6800.00, 5.00, 0.00, 0.00, 2.50, 170.00, 2.50, 170.00, 0.00, 0.00, 7140.00, NULL, NULL, '2021-07-08 13:01:07', '2021-07-13 14:52:04', NULL),
(237, 109, 1, 'SANLA', 'goods', '00002521', 64.00, 'BGS', 90.00, 0.00, 0.00, 5760.00, 5.00, 0.00, 0.00, 2.50, 144.00, 2.50, 144.00, 0.00, 0.00, 6048.00, NULL, NULL, '2021-07-08 13:07:06', '2021-07-08 13:07:06', NULL),
(238, 109, 2, '6\" BRIKS', 'goods', '68159910', 1000.00, 'NOS', 10.00, 0.00, 0.00, 10000.00, 5.00, 0.00, 0.00, 2.50, 250.00, 2.50, 250.00, 0.00, 0.00, 10500.00, NULL, NULL, '2021-07-08 13:07:06', '2021-07-08 13:07:06', NULL),
(239, 109, 3, 'Cement', 'goods', '25232930', 50.00, 'BGS', 281.25, 0.00, 0.00, 14062.50, 28.00, 0.00, 0.00, 14.00, 1968.75, 14.00, 1968.75, 0.00, 0.00, 18000.00, NULL, NULL, '2021-07-08 13:07:06', '2021-07-08 13:07:06', NULL),
(240, 110, 1, '4\" BRIKS', 'goods', '68159910', 4330.00, 'NOS', 6.50, 0.00, 0.00, 28145.00, 5.00, 0.00, 0.00, 2.50, 703.63, 2.50, 703.63, 0.00, 0.00, 29552.25, NULL, NULL, '2021-07-08 13:14:21', '2021-07-08 13:14:21', NULL),
(241, 111, 1, 'RIVER SAND', 'goods', '00002505', 27.79, 'Brass', 7500.00, 0.00, 0.00, 208425.00, 5.00, 0.00, 0.00, 2.50, 5210.63, 2.50, 5210.63, 0.00, 0.00, 218846.25, NULL, NULL, '2021-07-09 12:59:36', '2021-07-09 12:59:36', NULL),
(242, 112, 1, 'RIVER SAND', 'goods', '00002505', 43.14, 'Brass', 7400.00, 0.00, 0.00, 319236.00, 5.00, 0.00, 0.00, 2.50, 7980.90, 2.50, 7980.90, 0.00, 0.00, 335197.80, NULL, NULL, '2021-07-09 13:37:16', '2021-07-09 13:37:16', NULL),
(243, 113, 1, 'RIVER SAND', 'goods', '00002505', 27.65, 'Brass', 7500.00, 0.00, 0.00, 207375.00, 5.00, 0.00, 0.00, 2.50, 5184.38, 2.50, 5184.38, 0.00, 0.00, 217743.75, NULL, NULL, '2021-07-12 18:11:03', '2021-07-12 18:11:03', NULL),
(244, 114, 1, 'RIVER SAND', 'goods', '00002505', 91.27, 'Brass', 7300.00, 0.00, 0.00, 666271.00, 5.00, 0.00, 0.00, 2.50, 16656.78, 2.50, 16656.78, 0.00, 0.00, 699584.55, NULL, NULL, '2021-07-12 18:17:17', '2021-07-12 18:17:17', NULL),
(245, 115, 1, 'Cement', 'goods', '25232930', 600.00, 'BGS', 267.19, 0.00, 0.00, 160314.00, 28.00, 0.00, 0.00, 14.00, 22443.96, 14.00, 22443.96, 0.00, 0.00, 205201.92, NULL, NULL, '2021-07-13 12:52:28', '2021-07-13 12:52:28', NULL),
(246, 116, 1, '4\" BRIKS', 'goods', '68159910', 20082.00, 'NOS', 7.00, 0.00, 0.00, 140574.00, 5.00, 0.00, 0.00, 2.50, 3514.35, 2.50, 3514.35, 0.00, 0.00, 147602.70, NULL, NULL, '2021-07-15 13:19:00', '2021-07-15 13:19:00', NULL),
(247, 116, 2, 'CRUSHAND', 'goods', '00002517', 3.50, 'Brass', 3300.00, 0.00, 0.00, 11550.00, 5.00, 0.00, 0.00, 2.50, 288.75, 2.50, 288.75, 0.00, 0.00, 12127.50, NULL, NULL, '2021-07-15 13:19:00', '2021-07-15 13:19:00', NULL),
(248, 116, 3, 'PLASTER SAND', 'goods', '00002517', 4.50, 'Brass', 6800.00, 0.00, 0.00, 30600.00, 5.00, 0.00, 0.00, 2.50, 765.00, 2.50, 765.00, 0.00, 0.00, 32130.00, NULL, NULL, '2021-07-15 13:19:00', '2021-07-15 13:19:00', NULL),
(249, 117, 1, 'RIVER SAND', 'goods', '00002505', 2.00, 'CH', 7500.00, 0.00, 0.00, 15000.00, 5.00, 0.00, 0.00, 2.50, 375.00, 2.50, 375.00, 0.00, 0.00, 15750.00, NULL, NULL, '2021-07-15 13:25:12', '2021-07-15 13:25:12', NULL),
(250, 117, 2, 'Cement', 'goods', '25232930', 120.00, 'BGS', 273.44, 0.00, 0.00, 32812.80, 28.00, 0.00, 0.00, 14.00, 4593.79, 14.00, 4593.79, 0.00, 0.00, 42000.38, NULL, NULL, '2021-07-15 13:25:12', '2021-07-15 13:25:12', NULL),
(251, 118, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 269.53, 0.00, 0.00, 26953.00, 28.00, 0.00, 0.00, 14.00, 3773.42, 14.00, 3773.42, 0.00, 0.00, 34499.84, NULL, NULL, '2021-07-15 13:34:09', '2021-07-15 13:34:09', NULL),
(252, 118, 2, 'Cement', 'goods', '25232930', 100.00, 'BGS', 277.34, 0.00, 0.00, 27734.00, 28.00, 0.00, 0.00, 14.00, 3882.76, 14.00, 3882.76, 0.00, 0.00, 35499.52, NULL, NULL, '2021-07-15 13:34:09', '2021-07-15 13:34:09', NULL),
(253, 119, 1, 'Cement', 'goods', '25232930', 300.00, 'BGS', 281.25, 0.00, 0.00, 84375.00, 28.00, 0.00, 0.00, 14.00, 11812.50, 14.00, 11812.50, 0.00, 0.00, 108000.00, NULL, NULL, '2021-07-23 16:03:10', '2021-07-23 16:03:10', NULL),
(254, 120, 1, '4\" BRIKS', 'goods', '68159910', 9309.00, 'NOS', 6.30, 0.00, 0.00, 58646.70, 5.00, 0.00, 0.00, 2.50, 1466.17, 2.50, 1466.17, 0.00, 0.00, 61579.03, NULL, NULL, '2021-07-23 16:37:28', '2021-07-23 16:37:28', NULL),
(255, 121, 1, '4\" BRIKS', 'goods', '68159910', 19839.00, 'NOS', 6.90, 0.00, 0.00, 136889.10, 5.00, 0.00, 0.00, 2.50, 3422.23, 2.50, 3422.23, 0.00, 0.00, 143733.55, NULL, NULL, '2021-07-23 16:39:31', '2021-07-23 16:39:31', NULL),
(256, 122, 1, '4\" BRIKS', 'goods', '68159910', 11205.00, 'NOS', 7.00, 0.00, 0.00, 78435.00, 5.00, 0.00, 0.00, 2.50, 1960.88, 2.50, 1960.88, 0.00, 0.00, 82356.75, NULL, NULL, '2021-07-23 16:47:57', '2021-07-23 16:47:57', NULL),
(257, 122, 2, 'RIVER SAND', 'goods', '00002505', 6.67, 'Brass', 8000.00, 0.00, 0.00, 53360.00, 5.00, 0.00, 0.00, 2.50, 1334.00, 2.50, 1334.00, 0.00, 0.00, 56028.00, NULL, NULL, '2021-07-23 16:47:57', '2021-07-23 16:47:57', NULL),
(258, 123, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-07-23 17:07:05', '2021-07-23 17:07:05', NULL),
(259, 123, 2, '4\" BRIKS', 'goods', '68159910', 17600.00, 'NOS', 7.00, 0.00, 0.00, 123200.00, 5.00, 0.00, 0.00, 2.50, 3080.00, 2.50, 3080.00, 0.00, 0.00, 129360.00, NULL, NULL, '2021-07-23 17:07:05', '2021-07-23 17:07:05', NULL),
(260, 123, 3, 'CRUSHAND', 'goods', '00002517', 4.34, 'Brass', 3300.00, 0.00, 0.00, 14322.00, 5.00, 0.00, 0.00, 2.50, 358.05, 2.50, 358.05, 0.00, 0.00, 15038.10, NULL, NULL, '2021-07-23 17:07:05', '2021-07-23 17:07:05', NULL),
(261, 124, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 269.92, 0.00, 0.00, 26992.00, 28.00, 0.00, 0.00, 14.00, 3778.88, 14.00, 3778.88, 0.00, 0.00, 34549.76, NULL, NULL, '2021-07-26 12:56:33', '2021-07-26 12:56:33', NULL),
(262, 125, 1, 'RIVER SAND', 'goods', '00002505', 17.34, 'Brass', 7400.00, 0.00, 0.00, 128316.00, 5.00, 0.00, 0.00, 2.50, 3207.90, 2.50, 3207.90, 0.00, 0.00, 134731.80, NULL, NULL, '2021-07-26 14:39:24', '2021-07-26 14:39:24', NULL),
(263, 126, 1, 'RIVER SAND', 'goods', '00002505', 56.13, 'Brass', 7500.00, 0.00, 0.00, 420975.00, 5.00, 0.00, 0.00, 2.50, 10524.38, 2.50, 10524.38, 0.00, 0.00, 442023.75, NULL, NULL, '2021-07-26 14:48:32', '2021-07-26 14:48:32', NULL),
(264, 127, 1, 'RIVER SAND', 'goods', '00002505', 14.03, 'Brass', 7300.00, 0.00, 0.00, 102419.00, 5.00, 0.00, 0.00, 2.50, 2560.48, 2.50, 2560.48, 0.00, 0.00, 107539.95, NULL, NULL, '2021-07-26 15:00:40', '2021-07-26 15:00:40', NULL),
(265, 128, 1, '4\" BRIKS', 'goods', '68159910', 10341.00, 'NOS', 6.50, 0.00, 0.00, 67216.50, 5.00, 0.00, 0.00, 2.50, 1680.41, 2.50, 1680.41, 0.00, 0.00, 70577.32, NULL, NULL, '2021-07-26 15:04:48', '2021-07-26 15:04:48', NULL),
(266, 129, 1, '4\" BRIKS', 'goods', '68159910', 9375.00, 'NOS', 6.80, 0.00, 0.00, 63750.00, 5.00, 0.00, 0.00, 2.50, 1593.75, 2.50, 1593.75, 0.00, 0.00, 66937.50, NULL, NULL, '2021-07-29 13:10:07', '2021-07-29 13:10:07', NULL),
(267, 130, 1, '4\" BRIKS', 'goods', '68159910', 9225.00, 'NOS', 6.80, 0.00, 0.00, 62730.00, 5.00, 0.00, 0.00, 2.50, 1568.25, 2.50, 1568.25, 0.00, 0.00, 65866.50, NULL, NULL, '2021-07-30 13:12:02', '2021-07-30 13:12:02', NULL),
(268, 131, 1, 'Cement', 'goods', '25232930', 220.00, 'BGS', 273.44, 0.00, 0.00, 60156.80, 28.00, 0.00, 0.00, 14.00, 8421.95, 14.00, 8421.95, 0.00, 0.00, 77000.70, NULL, NULL, '2021-08-04 12:41:29', '2021-08-04 12:41:29', NULL),
(269, 131, 2, 'Cement', 'goods', '25232930', 100.00, 'BGS', 269.53, 0.00, 0.00, 26953.00, 28.00, 0.00, 0.00, 14.00, 3773.42, 14.00, 3773.42, 0.00, 0.00, 34499.84, NULL, NULL, '2021-08-04 12:41:29', '2021-08-04 12:41:29', NULL),
(270, 132, 1, '4\" BRIKS', 'goods', '68159910', 20500.00, 'NOS', 7.25, 0.00, 0.00, 148625.00, 5.00, 0.00, 0.00, 2.50, 3715.63, 2.50, 3715.63, 0.00, 0.00, 156056.25, NULL, NULL, '2021-08-04 12:45:00', '2021-08-04 12:45:00', NULL),
(271, 133, 1, 'RIVER SAND', 'goods', '00002505', 11.46, 'Brass', 7300.00, 0.00, 0.00, 83658.00, 5.00, 0.00, 0.00, 2.50, 2091.45, 2.50, 2091.45, 0.00, 0.00, 87840.90, NULL, NULL, '2021-08-04 12:49:23', '2021-08-05 16:02:17', NULL),
(272, 134, 1, 'RIVER SAND', 'goods', '00002505', 65.91, 'Brass', 7500.00, 0.00, 0.00, 494325.00, 5.00, 0.00, 0.00, 2.50, 12358.13, 2.50, 12358.13, 0.00, 0.00, 519041.25, NULL, NULL, '2021-08-04 12:57:37', '2021-08-04 12:57:37', NULL),
(273, 135, 1, 'RIVER SAND', 'goods', '00002505', 15.54, 'Brass', 7500.00, 0.00, 0.00, 116550.00, 5.00, 0.00, 0.00, 2.50, 2913.75, 2.50, 2913.75, 0.00, 0.00, 122377.50, NULL, NULL, '2021-08-05 16:17:23', '2021-08-05 16:17:23', NULL),
(274, 136, 1, '4\" BRIKS', 'goods', '68159910', 8500.00, 'NOS', 7.50, 0.00, 0.00, 63750.00, 5.00, 0.00, 0.00, 2.50, 1593.75, 2.50, 1593.75, 0.00, 0.00, 66937.50, NULL, NULL, '2021-08-06 13:16:35', '2021-08-06 13:18:14', NULL),
(275, 137, 1, 'CRUSHAND', 'goods', '00002517', 13.72, 'Brass', 3300.00, 0.00, 0.00, 45276.00, 5.00, 0.00, 0.00, 2.50, 1131.90, 2.50, 1131.90, 0.00, 0.00, 47539.80, NULL, NULL, '2021-08-12 13:57:56', '2021-08-20 18:20:41', NULL),
(276, 137, 2, '4\" BRIKS', 'goods', '68159910', 11786.00, 'NOS', 7.00, 0.00, 0.00, 82502.00, 5.00, 0.00, 0.00, 2.50, 2062.55, 2.50, 2062.55, 0.00, 0.00, 86627.10, NULL, NULL, '2021-08-12 13:57:56', '2021-08-20 18:20:41', NULL),
(277, 138, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-08-12 14:01:49', '2021-08-12 14:01:49', NULL),
(278, 139, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 277.34, 0.00, 0.00, 55468.00, 28.00, 0.00, 0.00, 14.00, 7765.52, 14.00, 7765.52, 0.00, 0.00, 70999.04, NULL, NULL, '2021-08-12 14:03:28', '2021-08-12 14:03:28', NULL),
(279, 140, 1, 'PLASTER SAND', 'goods', '00002517', 8.00, 'Brass', 6800.00, 0.00, 0.00, 54400.00, 5.00, 0.00, 0.00, 2.50, 1360.00, 2.50, 1360.00, 0.00, 0.00, 57120.00, NULL, NULL, '2021-08-12 14:09:11', '2021-08-12 14:09:11', NULL),
(280, 140, 2, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.00, 0.00, 0.00, 70000.00, 5.00, 0.00, 0.00, 2.50, 1750.00, 2.50, 1750.00, 0.00, 0.00, 73500.00, NULL, NULL, '2021-08-12 14:09:11', '2021-08-12 14:09:11', NULL),
(281, 141, 1, 'Cement', 'goods', '25232930', 250.00, 'BGS', 265.63, 0.00, 0.00, 66407.50, 28.00, 0.00, 0.00, 14.00, 9297.05, 14.00, 9297.05, 0.00, 0.00, 85001.60, NULL, NULL, '2021-08-12 14:11:57', '2021-08-12 14:11:57', NULL),
(282, 142, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, NULL, NULL, '2021-08-12 14:25:42', '2021-08-20 18:15:11', NULL),
(283, 143, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 273.44, 0.00, 0.00, 27344.00, 28.00, 0.00, 0.00, 14.00, 3828.16, 14.00, 3828.16, 0.00, 0.00, 35000.32, NULL, NULL, '2021-08-12 14:29:14', '2021-08-12 14:29:14', NULL),
(284, 143, 2, 'CRUSHAND', 'goods', '00002517', 6.36, 'Brass', 3400.00, 0.00, 0.00, 21624.00, 5.00, 0.00, 0.00, 2.50, 540.60, 2.50, 540.60, 0.00, 0.00, 22705.20, NULL, NULL, '2021-08-12 14:29:14', '2021-08-12 14:29:14', NULL),
(285, 144, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 265.63, 0.00, 0.00, 26563.00, 28.00, 0.00, 0.00, 14.00, 3718.82, 14.00, 3718.82, 0.00, 0.00, 34000.64, NULL, NULL, '2021-08-12 14:33:12', '2021-08-12 14:33:12', NULL),
(286, 145, 1, 'Cement', 'goods', '25232930', 35.00, 'BGS', 281.25, 0.00, 0.00, 9843.75, 28.00, 0.00, 0.00, 14.00, 1378.13, 14.00, 1378.13, 0.00, 0.00, 12600.00, NULL, NULL, '2021-08-12 14:37:00', '2021-08-12 14:37:00', NULL),
(287, 146, 1, 'Cement', 'goods', '25232930', 40.00, 'BGS', 277.34, 0.00, 0.00, 11093.60, 28.00, 0.00, 0.00, 14.00, 1553.10, 14.00, 1553.10, 0.00, 0.00, 14199.81, NULL, NULL, '2021-08-12 14:40:10', '2021-08-12 14:40:10', NULL),
(288, 147, 1, 'CRUSHAND', 'goods', '00002517', 1.00, 'CH', 1100.00, 0.00, 0.00, 1100.00, 5.00, 0.00, 0.00, 2.50, 27.50, 2.50, 27.50, 0.00, 0.00, 1155.00, NULL, NULL, '2021-08-12 14:52:32', '2021-08-13 13:59:59', NULL),
(289, 147, 2, 'Cement', 'goods', '25232930', 7.00, 'BGS', 281.25, 0.00, 0.00, 1968.75, 28.00, 0.00, 0.00, 14.00, 275.63, 14.00, 275.63, 0.00, 0.00, 2520.00, NULL, NULL, '2021-08-12 14:52:32', '2021-08-13 13:59:59', NULL),
(290, 148, 1, 'Cement', 'goods', '25232930', 15.00, 'BGS', 273.44, 0.00, 0.00, 4101.60, 28.00, 0.00, 0.00, 14.00, 574.22, 14.00, 574.22, 0.00, 0.00, 5250.05, NULL, NULL, '2021-08-12 14:55:06', '2021-08-12 14:55:06', NULL),
(291, 148, 2, 'RIVER SAND', 'goods', '00002505', 2.00, 'CH', 4500.00, 0.00, 0.00, 9000.00, 5.00, 0.00, 0.00, 2.50, 225.00, 2.50, 225.00, 0.00, 0.00, 9450.00, NULL, NULL, '2021-08-12 14:55:06', '2021-08-12 14:55:06', NULL),
(292, 147, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 1000.00, 0.00, 0.00, 1000.00, 5.00, 0.00, 0.00, 2.50, 25.00, 2.50, 25.00, 0.00, 0.00, 1050.00, NULL, NULL, '2021-08-13 13:59:59', '2021-08-13 13:59:59', NULL),
(293, 149, 1, 'Cement', 'goods', '25232930', 30.00, 'BGS', 273.44, 0.00, 0.00, 8203.20, 28.00, 0.00, 0.00, 14.00, 1148.45, 14.00, 1148.45, 0.00, 0.00, 10500.10, NULL, NULL, '2021-08-13 16:34:41', '2021-08-13 18:09:39', NULL),
(294, 150, 1, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.00, 0.00, 0.00, 70000.00, 5.00, 0.00, 0.00, 2.50, 1750.00, 2.50, 1750.00, 0.00, 0.00, 73500.00, NULL, NULL, '2021-08-13 16:38:00', '2021-08-13 16:38:00', NULL),
(295, 150, 2, 'CRUSHAND', 'goods', '00002517', 4.88, 'Brass', 3300.00, 0.00, 0.00, 16104.00, 5.00, 0.00, 0.00, 2.50, 402.60, 2.50, 402.60, 0.00, 0.00, 16909.20, NULL, NULL, '2021-08-13 16:38:00', '2021-08-13 16:38:00', NULL),
(296, 151, 1, 'PLASTER SAND', 'goods', '00002517', 19.97, 'Brass', 6800.00, 0.00, 0.00, 135796.00, 5.00, 0.00, 0.00, 2.50, 3394.90, 2.50, 3394.90, 0.00, 0.00, 142585.80, NULL, NULL, '2021-08-20 18:31:59', '2021-08-20 18:31:59', NULL),
(297, 151, 2, '4\" BRIKS', 'goods', '68159910', 14750.00, 'NOS', 7.00, 0.00, 0.00, 103250.00, 5.00, 0.00, 0.00, 2.50, 2581.25, 2.50, 2581.25, 0.00, 0.00, 108412.50, NULL, NULL, '2021-08-20 18:31:59', '2021-08-20 18:31:59', NULL),
(298, 151, 3, 'CRUSHAND', 'goods', '00002517', 4.88, 'Brass', 3300.00, 0.00, 0.00, 16104.00, 5.00, 0.00, 0.00, 2.50, 402.60, 2.50, 402.60, 0.00, 0.00, 16909.20, NULL, NULL, '2021-08-20 18:31:59', '2021-08-20 18:31:59', NULL),
(299, 151, 4, 'Cement', 'goods', '25232930', 250.00, 'BGS', 265.63, 0.00, 0.00, 66407.50, 28.00, 0.00, 0.00, 14.00, 9297.05, 14.00, 9297.05, 0.00, 0.00, 85001.60, NULL, NULL, '2021-08-20 18:31:59', '2021-08-20 18:31:59', NULL),
(300, 152, 1, 'CRUSHAND', 'goods', '00002517', 6.16, 'Brass', 3300.00, 0.00, 0.00, 20328.00, 5.00, 0.00, 0.00, 2.50, 508.20, 2.50, 508.20, 0.00, 0.00, 21344.40, NULL, NULL, '2021-08-20 18:39:00', '2021-08-20 18:39:00', NULL),
(301, 153, 1, 'CRUSHAND', 'goods', '00002517', 4.50, 'Brass', 3300.00, 0.00, 0.00, 14850.00, 5.00, 0.00, 0.00, 2.50, 371.25, 2.50, 371.25, 0.00, 0.00, 15592.50, NULL, NULL, '2021-08-20 18:41:50', '2021-08-20 18:41:50', NULL),
(302, 154, 1, 'RIVER SAND', 'goods', '00002505', 14.22, 'Brass', 7500.00, 0.00, 0.00, 106650.00, 5.00, 0.00, 0.00, 2.50, 2666.25, 2.50, 2666.25, 0.00, 0.00, 111982.50, NULL, NULL, '2021-08-21 12:42:43', '2021-08-21 12:42:43', NULL),
(303, 155, 1, '4\" BRIKS', 'goods', '68159910', 8074.00, 'NOS', 7.00, 0.00, 0.00, 56518.00, 5.00, 0.00, 0.00, 2.50, 1412.95, 2.50, 1412.95, 0.00, 0.00, 59343.90, NULL, NULL, '2021-08-21 12:47:15', '2021-08-21 12:47:15', NULL),
(304, 156, 1, 'Cement', 'goods', '25232930', 250.00, 'BGS', 273.44, 0.00, 0.00, 68360.00, 28.00, 0.00, 0.00, 14.00, 9570.40, 14.00, 9570.40, 0.00, 0.00, 87500.80, NULL, NULL, '2021-08-21 12:50:20', '2021-08-21 12:50:20', NULL),
(305, 157, 1, '4\" BRIKS', 'goods', '68159910', 9400.00, 'NOS', 6.40, 0.00, 0.00, 60160.00, 5.00, 0.00, 0.00, 2.50, 1504.00, 2.50, 1504.00, 0.00, 0.00, 63168.00, NULL, NULL, '2021-08-21 14:48:04', '2021-08-21 14:48:04', NULL),
(306, 158, 1, 'PLASTER SAND', 'goods', '00002517', 6.86, 'Brass', 6800.00, 0.00, 0.00, 46648.00, 5.00, 0.00, 0.00, 2.50, 1166.20, 2.50, 1166.20, 0.00, 0.00, 48980.40, NULL, NULL, '2021-08-21 16:27:45', '2021-08-21 16:27:45', NULL),
(307, 159, 1, 'Cement', 'goods', '25232930', 10.00, 'BGS', 273.44, 0.00, 0.00, 2734.40, 28.00, 0.00, 0.00, 14.00, 382.82, 14.00, 382.82, 0.00, 0.00, 3500.03, NULL, NULL, '2021-08-23 16:24:23', '2021-08-23 16:24:23', NULL),
(308, 160, 1, 'Cement', 'goods', '25232930', 20.00, 'BGS', 281.25, 0.00, 0.00, 5625.00, 28.00, 0.00, 0.00, 14.00, 787.50, 14.00, 787.50, 0.00, 0.00, 7200.00, NULL, NULL, '2021-08-23 16:29:41', '2021-08-23 16:29:41', NULL),
(309, 160, 2, 'CRUSHAND', 'goods', '00002517', 3.00, 'CH', 2200.00, 0.00, 0.00, 6600.00, 5.00, 0.00, 0.00, 2.50, 165.00, 2.50, 165.00, 0.00, 0.00, 6930.00, NULL, NULL, '2021-08-23 16:29:41', '2021-08-23 16:29:41', NULL),
(310, 160, 3, 'FLYASH BRICKS', 'goods', '68159910', 1550.00, 'NOS', 8.50, 0.00, 0.00, 13175.00, 5.00, 0.00, 0.00, 2.50, 329.38, 2.50, 329.38, 0.00, 0.00, 13833.75, NULL, NULL, '2021-08-23 16:29:41', '2021-08-23 16:29:41', NULL),
(311, 161, 1, 'RIVER SAND', 'goods', '00002505', 74.36, 'Brass', 7300.00, 0.00, 0.00, 542828.00, 5.00, 0.00, 0.00, 2.50, 13570.70, 2.50, 13570.70, 0.00, 0.00, 569969.40, NULL, NULL, '2021-08-24 14:12:31', '2021-08-24 14:12:31', NULL),
(312, 162, 1, 'Cement', 'goods', '25232930', 10.00, 'BGS', 273.44, 0.00, 0.00, 2734.40, 28.00, 0.00, 0.00, 14.00, 382.82, 14.00, 382.82, 0.00, 0.00, 3500.03, NULL, NULL, '2021-08-24 17:07:47', '2021-08-24 17:07:47', NULL),
(313, 163, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 281.25, 0.00, 0.00, 28125.00, 28.00, 0.00, 0.00, 14.00, 3937.50, 14.00, 3937.50, 0.00, 0.00, 36000.00, NULL, NULL, '2021-08-24 17:12:27', '2021-08-24 17:15:07', NULL),
(314, 164, 1, '4\" BRIKS', 'goods', '68159910', 8477.00, 'NOS', 7.80, 0.00, 0.00, 66120.60, 5.00, 0.00, 0.00, 2.50, 1653.02, 2.50, 1653.02, 0.00, 0.00, 69426.63, NULL, NULL, '2021-08-27 14:37:37', '2021-08-27 14:37:37', NULL),
(315, 165, 1, '6\" BRIKS', 'goods', '68159910', 6600.00, 'NOS', 11.20, 0.00, 0.00, 73920.00, 5.00, 0.00, 0.00, 2.50, 1848.00, 2.50, 1848.00, 0.00, 0.00, 77616.00, NULL, NULL, '2021-09-02 17:13:54', '2021-09-02 17:13:54', NULL),
(316, 165, 2, '4\" BRIKS', 'goods', '68159910', 9410.00, 'NOS', 7.50, 0.00, 0.00, 70575.00, 5.00, 0.00, 0.00, 2.50, 1764.38, 2.50, 1764.38, 0.00, 0.00, 74103.75, NULL, NULL, '2021-09-02 17:13:54', '2021-09-02 17:13:54', NULL),
(317, 166, 1, '4\" BRIKS', 'goods', '68159910', 8819.00, 'NOS', 7.50, 0.00, 0.00, 66142.50, 5.00, 0.00, 0.00, 2.50, 1653.56, 2.50, 1653.56, 0.00, 0.00, 69449.63, NULL, NULL, '2021-09-02 17:42:29', '2021-09-02 17:42:29', NULL),
(318, 166, 2, '6\" BRIKS', 'goods', '68159910', 6740.00, 'NOS', 11.20, 0.00, 0.00, 75488.00, 5.00, 0.00, 0.00, 2.50, 1887.20, 2.50, 1887.20, 0.00, 0.00, 79262.40, NULL, NULL, '2021-09-02 17:42:29', '2021-09-02 17:42:29', NULL),
(319, 167, 1, '4\" BRIKS', 'goods', '68159910', 10500.00, 'NOS', 7.25, 0.00, 0.00, 76125.00, 5.00, 0.00, 0.00, 2.50, 1903.13, 2.50, 1903.13, 0.00, 0.00, 79931.25, NULL, NULL, '2021-09-02 18:04:18', '2021-09-21 18:19:13', NULL),
(320, 168, 1, '4\" BRIKS', 'goods', '68159910', 10300.00, 'NOS', 7.00, 0.00, 0.00, 72100.00, 5.00, 0.00, 0.00, 2.50, 1802.50, 2.50, 1802.50, 0.00, 0.00, 75705.00, NULL, NULL, '2021-09-09 12:36:50', '2021-09-09 12:36:50', NULL),
(321, 169, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 265.63, 0.00, 0.00, 53126.00, 28.00, 0.00, 0.00, 14.00, 7437.64, 14.00, 7437.64, 0.00, 0.00, 68001.28, NULL, NULL, '2021-09-09 12:42:39', '2021-09-09 12:42:39', NULL),
(322, 170, 1, 'RIVER SAND', 'goods', '00002505', 25.97, 'Brass', 7300.00, 0.00, 0.00, 189581.00, 5.00, 0.00, 0.00, 2.50, 4739.52, 2.50, 4739.52, 0.00, 0.00, 199060.05, NULL, NULL, '2021-09-16 12:39:27', '2021-09-16 12:39:27', NULL),
(323, 171, 1, 'RIVER SAND', 'goods', '00002505', 102.47, 'Brass', 7300.00, 0.00, 0.00, 748031.00, 5.00, 0.00, 0.00, 2.50, 18700.78, 2.50, 18700.78, 0.00, 0.00, 785432.55, NULL, NULL, '2021-09-16 12:58:27', '2021-09-16 12:58:27', NULL),
(324, 172, 1, 'RIVER SAND', 'goods', '00002505', 22.67, 'Brass', 7500.00, 0.00, 0.00, 170025.00, 5.00, 0.00, 0.00, 2.50, 4250.63, 2.50, 4250.63, 0.00, 0.00, 178526.25, NULL, NULL, '2021-09-16 13:16:36', '2021-09-16 13:16:36', NULL),
(325, 173, 1, '4\" BRIKS', 'goods', '68159910', 10500.00, 'Brass', 7.50, 0.00, 0.00, 78750.00, 5.00, 0.00, 0.00, 2.50, 1968.75, 2.50, 1968.75, 0.00, 0.00, 82687.50, NULL, NULL, '2021-09-16 16:35:04', '2021-10-01 14:20:28', NULL),
(326, 174, 1, 'CRUSHAND', 'goods', '00002517', 3.00, 'Brass', 3400.00, 0.00, 0.00, 10200.00, 5.00, 0.00, 0.00, 2.50, 255.00, 2.50, 255.00, 0.00, 0.00, 10710.00, NULL, NULL, '2021-09-16 16:50:39', '2021-09-16 16:50:39', NULL),
(327, 175, 1, '4\" BRIKS', 'goods', '68159910', 10500.00, 'NOS', 7.75, 0.00, 0.00, 81375.00, 5.00, 0.00, 0.00, 2.50, 2034.38, 2.50, 2034.38, 0.00, 0.00, 85443.75, NULL, NULL, '2021-09-17 16:55:00', '2021-09-17 16:55:00', NULL),
(328, 175, 2, '4\" BRIKS', 'goods', '68159910', 10500.00, 'NOS', 7.75, 0.00, 0.00, 81375.00, 5.00, 0.00, 0.00, 2.50, 2034.38, 2.50, 2034.38, 0.00, 0.00, 85443.75, NULL, NULL, '2021-09-17 16:55:00', '2021-09-17 16:55:00', NULL),
(329, 176, 1, 'Cement', 'goods', '25232930', 35.00, 'BGS', 281.25, 0.00, 0.00, 9843.75, 28.00, 0.00, 0.00, 14.00, 1378.13, 14.00, 1378.13, 0.00, 0.00, 12600.00, NULL, NULL, '2021-09-17 17:01:02', '2021-09-17 17:01:02', NULL),
(330, 176, 2, 'SANLA', 'goods', '00002521', 10.00, 'BGS', 110.00, 0.00, 0.00, 1100.00, 5.00, 0.00, 0.00, 2.50, 27.50, 2.50, 27.50, 0.00, 0.00, 1155.00, NULL, NULL, '2021-09-17 17:01:02', '2021-09-17 17:01:02', NULL),
(331, 177, 1, 'Cement', 'goods', '25232930', 340.00, 'BGS', 273.44, 0.00, 0.00, 92969.60, 28.00, 0.00, 0.00, 14.00, 13015.74, 14.00, 13015.74, 0.00, 0.00, 119001.09, NULL, NULL, '2021-09-17 17:20:52', '2021-09-17 17:22:04', NULL),
(332, 178, 1, 'METAL', 'goods', '00002517', 2.00, 'CH', 1900.00, 0.00, 0.00, 3800.00, 5.00, 0.00, 0.00, 2.50, 95.00, 2.50, 95.00, 0.00, 0.00, 3990.00, NULL, NULL, '2021-09-17 17:28:30', '2021-09-17 17:28:30', NULL),
(333, 178, 2, '4\" BRIKS', 'goods', '68159910', 2610.00, 'NOS', 8.00, 0.00, 0.00, 20880.00, 5.00, 0.00, 0.00, 2.50, 522.00, 2.50, 522.00, 0.00, 0.00, 21924.00, NULL, NULL, '2021-09-17 17:28:30', '2021-09-17 17:28:30', NULL),
(334, 178, 3, 'Cement', 'goods', '25232930', 20.00, 'BGS', 273.44, 0.00, 0.00, 5468.80, 28.00, 0.00, 0.00, 14.00, 765.63, 14.00, 765.63, 0.00, 0.00, 7000.06, NULL, NULL, '2021-09-17 17:28:30', '2021-09-17 17:28:30', NULL),
(335, 179, 1, 'Cement', 'goods', '25232930', 150.00, 'BGS', 273.44, 0.00, 0.00, 41016.00, 28.00, 0.00, 0.00, 14.00, 5742.24, 14.00, 5742.24, 0.00, 0.00, 52500.48, NULL, NULL, '2021-09-17 17:33:57', '2021-09-17 17:33:57', NULL),
(336, 179, 2, 'CRUSHAND', 'goods', '00002517', 6.36, 'Brass', 3400.00, 0.00, 0.00, 21624.00, 5.00, 0.00, 0.00, 2.50, 540.60, 2.50, 540.60, 0.00, 0.00, 22705.20, NULL, NULL, '2021-09-17 17:33:57', '2021-09-17 17:33:57', NULL),
(337, 180, 1, 'Cement', 'goods', '25232930', 22.00, 'BGS', 281.25, 0.00, 0.00, 6187.50, 28.00, 0.00, 0.00, 14.00, 866.25, 14.00, 866.25, 0.00, 0.00, 7920.00, NULL, NULL, '2021-09-17 17:38:26', '2021-09-17 17:38:26', NULL),
(338, 180, 2, 'CRUSHAND', 'goods', '00002517', 2.00, 'Brass', 2200.00, 0.00, 0.00, 4400.00, 5.00, 0.00, 0.00, 2.50, 110.00, 2.50, 110.00, 0.00, 0.00, 4620.00, NULL, NULL, '2021-09-17 17:38:26', '2021-09-17 17:38:26', NULL),
(339, 180, 3, '6\" BRIKS', 'goods', '68159910', 50.00, 'NOS', 8.50, 0.00, 0.00, 425.00, 5.00, 0.00, 0.00, 2.50, 10.63, 2.50, 10.63, 0.00, 0.00, 446.25, NULL, NULL, '2021-09-17 17:38:26', '2021-09-17 17:38:26', NULL),
(340, 181, 1, '4\" BRIKS', 'goods', '68159910', 11910.00, 'NOS', 7.50, 0.00, 0.00, 89325.00, 5.00, 0.00, 0.00, 2.50, 2233.13, 2.50, 2233.13, 0.00, 0.00, 93791.25, NULL, NULL, '2021-09-17 17:43:40', '2021-09-17 19:10:09', NULL),
(341, 181, 2, '6\" BRIKS', 'goods', '68159910', 13530.00, 'NOS', 11.20, 0.00, 0.00, 151536.00, 5.00, 0.00, 0.00, 2.50, 3788.40, 2.50, 3788.40, 0.00, 0.00, 159112.80, NULL, NULL, '2021-09-17 17:43:40', '2021-09-17 19:10:09', NULL),
(342, 182, 1, '4\" BRIKS', 'goods', '68159910', 9481.00, 'NOS', 7.75, 0.00, 0.00, 73477.75, 5.00, 0.00, 0.00, 2.50, 1836.94, 2.50, 1836.94, 0.00, 0.00, 77151.64, NULL, NULL, '2021-09-17 17:53:06', '2021-09-17 17:53:06', NULL),
(343, 183, 1, '4\" BRIKS', 'goods', '68159910', 9400.00, 'NOS', 6.30, 0.00, 0.00, 59220.00, 5.00, 0.00, 0.00, 2.50, 1480.50, 2.50, 1480.50, 0.00, 0.00, 62181.00, NULL, NULL, '2021-09-18 19:36:00', '2021-09-18 19:36:00', NULL),
(344, 184, 1, '4\" BRIKS', 'goods', '68159910', 9500.00, 'NOS', 7.25, 0.00, 0.00, 68875.00, 5.00, 0.00, 0.00, 2.50, 1721.88, 2.50, 1721.88, 0.00, 0.00, 72318.75, NULL, NULL, '2021-09-23 17:53:25', '2021-09-23 17:53:25', NULL),
(345, 184, 2, 'Cement', 'goods', '25232930', 100.00, 'BGS', 265.63, 0.00, 0.00, 26563.00, 28.00, 0.00, 0.00, 14.00, 3718.82, 14.00, 3718.82, 0.00, 0.00, 34000.64, NULL, NULL, '2021-09-23 17:53:25', '2021-09-23 17:53:25', NULL),
(346, 185, 1, 'CRUSHAND', 'goods', '00002517', 3.00, 'Brass', 3800.00, 0.00, 0.00, 11400.00, 5.00, 0.00, 0.00, 2.50, 285.00, 2.50, 285.00, 0.00, 0.00, 11970.00, NULL, NULL, '2021-09-24 13:14:59', '2021-09-24 13:14:59', NULL),
(347, 186, 1, '4\" BRIKS', 'goods', '68159910', 9000.00, 'NOS', 5.50, 0.00, 0.00, 49500.00, 5.00, 0.00, 0.00, 2.50, 1237.50, 2.50, 1237.50, 0.00, 0.00, 51975.00, NULL, NULL, '2021-09-28 13:10:43', '2021-09-28 13:10:43', NULL),
(348, 187, 1, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.50, 0.00, 0.00, 75000.00, 5.00, 0.00, 0.00, 2.50, 1875.00, 2.50, 1875.00, 0.00, 0.00, 78750.00, NULL, NULL, '2021-09-28 14:04:18', '2021-09-28 14:04:18', NULL),
(349, 188, 1, 'Cement', 'goods', '25232930', 350.00, 'BGS', 273.44, 0.00, 0.00, 95704.00, 28.00, 0.00, 0.00, 14.00, 13398.56, 14.00, 13398.56, 0.00, 0.00, 122501.12, NULL, NULL, '2021-10-01 17:33:38', '2021-10-01 17:33:38', NULL),
(350, 188, 2, 'METAL', 'goods', '00002517', 4.00, 'CH', 2100.00, 0.00, 0.00, 8400.00, 5.00, 0.00, 0.00, 2.50, 210.00, 2.50, 210.00, 0.00, 0.00, 8820.00, NULL, NULL, '2021-10-01 17:33:38', '2021-10-01 17:33:38', NULL),
(351, 188, 3, 'RIVER SAND', 'goods', '00002505', 1.00, 'CH', 4500.00, 0.00, 0.00, 4500.00, 5.00, 0.00, 0.00, 2.50, 112.50, 2.50, 112.50, 0.00, 0.00, 4725.00, NULL, NULL, '2021-10-01 17:33:38', '2021-10-01 17:33:38', NULL),
(352, 188, 4, '4\" BRIKS', 'goods', '68159910', 1000.00, 'NOS', 8.00, 0.00, 0.00, 8000.00, 5.00, 0.00, 0.00, 2.50, 200.00, 2.50, 200.00, 0.00, 0.00, 8400.00, NULL, NULL, '2021-10-01 17:33:38', '2021-10-01 17:33:38', NULL),
(353, 188, 5, 'CRUSHAND', 'goods', '00002517', 6.30, 'Brass', 3800.00, 0.00, 0.00, 23940.00, 5.00, 0.00, 0.00, 2.50, 598.50, 2.50, 598.50, 0.00, 0.00, 25137.00, NULL, NULL, '2021-10-01 17:33:38', '2021-10-01 17:33:38', NULL),
(354, 189, 1, '4\" BRIKS', 'goods', '68159910', 9350.00, 'NOS', 7.75, 0.00, 0.00, 72462.50, 5.00, 0.00, 0.00, 2.50, 1811.56, 2.50, 1811.56, 0.00, 0.00, 76085.63, NULL, NULL, '2021-10-01 17:41:32', '2021-10-01 17:41:32', NULL),
(355, 190, 1, '4\" BRIKS', 'goods', '68159910', 2000.00, 'NOS', 8.00, 0.00, 0.00, 16000.00, 5.00, 0.00, 0.00, 2.50, 400.00, 2.50, 400.00, 0.00, 0.00, 16800.00, NULL, NULL, '2021-10-01 17:45:25', '2021-10-01 17:45:25', NULL),
(356, 191, 1, 'FLYASH BRICKS', 'goods', '68159910', 1500.00, 'NOS', 8.50, 0.00, 0.00, 12750.00, 5.00, 0.00, 0.00, 2.50, 318.75, 2.50, 318.75, 0.00, 0.00, 13387.50, NULL, NULL, '2021-10-01 17:47:45', '2021-10-01 17:47:45', NULL),
(357, 192, 1, '4\" BRIKS', 'goods', '68159910', 10000.00, 'NOS', 7.50, 0.00, 0.00, 75000.00, 5.00, 0.00, 0.00, 2.50, 1875.00, 2.50, 1875.00, 0.00, 0.00, 78750.00, NULL, NULL, '2021-10-01 17:50:13', '2021-10-01 17:50:13', NULL),
(358, 193, 1, '4\" BRIKS', 'goods', '68159910', 3300.00, 'NOS', 7.75, 0.00, 0.00, 25575.00, 5.00, 0.00, 0.00, 2.50, 639.38, 2.50, 639.38, 0.00, 0.00, 26853.75, NULL, NULL, '2021-10-01 17:52:59', '2021-10-04 16:34:12', NULL),
(359, 194, 1, '4\" BRIKS', 'goods', '68159910', 9350.00, 'NOS', 7.50, 0.00, 0.00, 70125.00, 5.00, 0.00, 0.00, 2.50, 1753.13, 2.50, 1753.13, 0.00, 0.00, 73631.25, NULL, NULL, '2021-10-01 17:54:59', '2021-10-01 17:54:59', NULL),
(360, 195, 1, 'Cement', 'goods', '25232930', 40.00, 'BGS', 273.44, 0.00, 0.00, 10937.60, 28.00, 0.00, 0.00, 14.00, 1531.26, 14.00, 1531.26, 0.00, 0.00, 14000.13, NULL, NULL, '2021-10-01 17:57:43', '2021-10-01 17:57:43', NULL),
(361, 196, 1, 'CRUSHAND', 'goods', '00002517', 2.00, 'CH', 2300.00, 0.00, 0.00, 4600.00, 5.00, 0.00, 0.00, 2.50, 115.00, 2.50, 115.00, 0.00, 0.00, 4830.00, NULL, NULL, '2021-10-01 18:03:46', '2021-10-01 18:03:46', NULL),
(362, 196, 2, 'RCC PIEP', 'goods', '00001252', 13.00, 'NOS', 870.00, 0.00, 0.00, 11310.00, 18.00, 0.00, 0.00, 9.00, 1017.90, 9.00, 1017.90, 0.00, 0.00, 13345.80, NULL, NULL, '2021-10-01 18:03:46', '2021-10-01 18:03:46', NULL),
(363, 196, 3, 'METAL', 'goods', '00002517', 1.00, 'CH', 2000.00, 0.00, 0.00, 2000.00, 5.00, 0.00, 0.00, 2.50, 50.00, 2.50, 50.00, 0.00, 0.00, 2100.00, NULL, NULL, '2021-10-01 18:03:46', '2021-10-01 18:03:46', NULL),
(364, 196, 4, 'FLYASH BRICKS', 'goods', '68159910', 300.00, 'NOS', 9.50, 0.00, 0.00, 2850.00, 5.00, 0.00, 0.00, 2.50, 71.25, 2.50, 71.25, 0.00, 0.00, 2992.50, NULL, NULL, '2021-10-01 18:03:46', '2021-10-01 18:03:46', NULL),
(365, 196, 5, 'Cement', 'goods', '25232930', 8.00, 'BGS', 273.44, 0.00, 0.00, 2187.52, 28.00, 0.00, 0.00, 14.00, 306.25, 14.00, 306.25, 0.00, 0.00, 2800.03, NULL, NULL, '2021-10-01 18:03:46', '2021-10-01 18:03:46', NULL),
(366, 197, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 250.00, 0.00, 0.00, 50000.00, 28.00, 0.00, 0.00, 14.00, 7000.00, 14.00, 7000.00, 0.00, 0.00, 64000.00, NULL, NULL, '2021-10-01 18:09:16', '2021-10-01 18:09:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_settings`
--

CREATE TABLE `invoice_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceTerms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_settings`
--

INSERT INTO `invoice_settings` (`id`, `serialPrefix`, `serialNumberStart`, `invoiceNotes`, `invoiceTerms`, `created_at`, `updated_at`) VALUES
(1, 'JAYBBM-', '001', '', '', '2021-05-29 08:54:14', '2021-05-29 08:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_03_110524_create_roles_table', 1),
(4, '2018_06_03_111622_create_role_user_table', 1),
(5, '2018_06_03_175503_create_contacts_table', 1),
(6, '2018_06_09_113953_create_products_table', 1),
(7, '2018_06_12_055050_create_profile_settings_table', 1),
(8, '2018_06_12_065014_create_invoice_settings_table', 1),
(9, '2018_06_12_112904_create_invoices_table', 1),
(10, '2018_06_12_120116_create_invoice_customers_table', 1),
(11, '2018_06_12_120132_create_invoice_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsn` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleValue` decimal(10,2) NOT NULL,
  `discountRate` decimal(4,2) NOT NULL,
  `taxRate` decimal(4,2) NOT NULL,
  `cessValue` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `type`, `hsn`, `sku`, `unit`, `saleValue`, `discountRate`, `taxRate`, `cessValue`, `created_at`, `updated_at`) VALUES
(1, 'Cement', 'goods', '25232930', '25232930', 'BGS', 0.00, 0.00, 28.00, 0.00, '2021-06-09 13:49:22', '2021-06-11 12:06:18'),
(2, 'CRUSHAND', 'goods', '00002517', '00002517', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:53:23', '2021-06-09 13:53:23'),
(3, 'RIVER SAND', 'goods', '00002505', '00002505', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:53:48', '2021-06-09 13:53:48'),
(4, 'STEEL', 'goods', '00007214', '00007214', 'KG', 0.00, 0.00, 18.00, 0.00, '2021-06-09 13:54:28', '2021-06-09 13:54:28'),
(5, 'METAL', 'goods', '00002517', '00002517', 'KG', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:55:09', '2021-06-09 13:55:09'),
(6, 'BIRLA SHAKTI', 'goods', '25232910', '25232910', 'BGS', 0.00, 0.00, 28.00, 0.00, '2021-06-09 13:55:41', '2021-06-09 13:55:41'),
(7, 'SANLA', 'goods', '00002521', '00002521', 'BGS', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:57:06', '2021-06-09 13:57:06'),
(8, '4\" BRIKS', 'goods', '68159910', '68159910', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:57:27', '2021-06-09 13:57:27'),
(9, '6\" BRIKS', 'goods', '68159910', '68159910', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:58:10', '2021-06-09 13:58:10'),
(10, 'BLOCK', 'goods', '00006815', '00006815', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:58:51', '2021-06-09 13:58:51'),
(11, 'RCC PIEP', 'goods', '00001252', '00001252', 'BOU', 0.00, 0.00, 18.00, 0.00, '2021-06-09 13:59:25', '2021-06-09 13:59:25'),
(12, 'DABBER', 'goods', '00006802', '00006802', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 13:59:58', '2021-06-09 13:59:58'),
(13, 'GRIT', 'goods', '00002517', '00002517', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 14:00:20', '2021-06-09 14:00:20'),
(14, 'FLYASH BRICKS', 'goods', '68159910', '68159910', 'BOU', 0.00, 0.00, 5.00, 0.00, '2021-06-09 14:00:41', '2021-06-09 14:00:41'),
(15, 'CHEMICAL', 'goods', '00008479', '00008479', 'KLR', 0.00, 0.00, 18.00, 0.00, '2021-06-09 14:05:38', '2021-06-09 14:05:38'),
(16, 'PLASTER SAND', 'goods', '00002517', '00002517', 'Brass', 0.00, 0.00, 5.00, 0.00, '2021-06-10 14:17:25', '2021-06-10 14:17:25'),
(17, 'STEEL 25 MM', 'goods', '00007214', '00007214', 'KG', 0.00, 0.00, 18.00, 0.00, '2021-06-11 12:43:43', '2021-06-11 12:43:43'),
(18, 'steel 10,12,16,20,25', 'goods', '00007214', '00007214', 'KG', 0.00, 0.00, 18.00, 0.00, '2021-06-16 13:44:04', '2021-06-16 13:44:04'),
(19, 'steel 8 MM', 'goods', '00007214', '00007214', 'KG', 0.00, 0.00, 18.00, 0.00, '2021-06-16 13:44:41', '2021-06-16 13:44:41'),
(20, 'WHITE CEMENT', 'goods', '00002523', '00002523', 'BGS', 0.00, 0.00, 28.00, 0.00, '2021-06-16 17:26:03', '2021-06-16 17:26:03'),
(21, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', '25232910', 'BGS', 0.00, 0.00, 28.00, 0.00, '2021-06-16 17:41:33', '2021-06-16 17:41:33'),
(22, 'MURUM', 'goods', '00002517', '00002517', 'Brass', 0.00, 0.00, 5.00, 0.00, '2021-06-19 19:13:26', '2021-06-19 19:13:26'),
(23, 'GSB', 'goods', '00002517', '00002517', 'Brass', 0.00, 0.00, 5.00, 0.00, '2021-06-19 19:14:05', '2021-06-19 19:14:05'),
(24, 'ACC OPC - 53', 'goods', '00002523', '00002523', 'BGS', 0.00, 0.00, 28.00, 0.00, '2021-06-24 17:34:07', '2021-06-24 17:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `profile_settings`
--

CREATE TABLE `profile_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `businessName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panNumber` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeOfOrigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankAccount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankIfsc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankBranch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logoPath` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_settings`
--

INSERT INTO `profile_settings` (`id`, `businessName`, `address`, `gstin`, `panNumber`, `placeOfOrigin`, `bankName`, `bankAccount`, `bankIfsc`, `bankBranch`, `logoPath`, `created_at`, `updated_at`) VALUES
(1, 'Jay Bhagwan Building Material Suppliers', 'Office No 101, Purushottam Plaza, above Wadeshwar Hotel,Baner Road, Pune 411045', '27AWPPN0094G1Z8', 'AWPPN0094G', 'Maharashtra', 'Punjab National Bank', '16774011000090', 'PUNB0167710', 'Baner', '', '2021-05-29 08:54:14', '2021-09-28 12:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `placeOfSupply` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherCharges` double DEFAULT '0',
  `purchaseStatus` enum('quote','unpaid','partial','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `discountType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalTaxableValue` decimal(10,2) NOT NULL,
  `totalIgstValue` decimal(10,2) NOT NULL,
  `totalCgstValue` decimal(10,2) NOT NULL,
  `totalSgstValue` decimal(10,2) NOT NULL,
  `totalCessValue` decimal(10,2) NOT NULL,
  `netValue` decimal(10,2) NOT NULL,
  `roundOffState` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `roundOffValue` decimal(4,2) NOT NULL,
  `grandValue` decimal(12,2) NOT NULL,
  `amountRecieved` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `serialPrefix`, `serialNumber`, `issueDate`, `dueDate`, `placeOfSupply`, `vehicleNo`, `otherCharges`, `purchaseStatus`, `discountType`, `totalTaxableValue`, `totalIgstValue`, `totalCgstValue`, `totalSgstValue`, `totalCessValue`, `netValue`, `roundOffState`, `roundOffValue`, `grandValue`, `amountRecieved`, `created_at`, `updated_at`) VALUES
(32, 'JAYBMS-PUR-', '001', '2021-04-06', '2021-05-06', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 49922.00, 0.00, 6989.08, 6989.08, 0.00, 63900.16, 'on', -0.16, 63900.00, 63900.00, '2021-06-12 10:57:23', '2021-07-31 14:51:32'),
(33, 'JAYBMS-PUR-', '002', '2021-04-01', '2021-05-01', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 14082.00, 0.00, 1971.48, 1971.48, 0.00, 18024.96, 'on', 0.04, 18025.00, 0.00, '2021-06-16 17:12:42', '2021-06-16 17:12:42'),
(34, 'JAYBMS-PUR-', '003', '2021-04-05', '2021-05-05', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 12480.50, 0.00, 1747.27, 1747.27, 0.00, 15975.04, 'on', -0.04, 15975.00, 0.00, '2021-06-16 17:13:41', '2021-06-16 17:13:41'),
(35, 'JAYBMS-PUR-', '004', '2021-04-09', '2021-05-09', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24961.00, 0.00, 3494.54, 3494.54, 0.00, 31950.08, 'on', -0.08, 31950.00, 0.00, '2021-06-16 17:14:23', '2021-06-16 17:14:23'),
(36, 'JAYBMS-PUR-', '005', '2021-04-13', '2021-05-13', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24961.00, 0.00, 3494.54, 3494.54, 0.00, 31950.08, 'on', -0.08, 31950.00, 0.00, '2021-06-16 17:15:15', '2021-06-16 17:15:15'),
(37, 'JAYBMS-PUR-', '006', '2021-04-16', '2021-05-16', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24961.00, 0.00, 3494.54, 3494.54, 0.00, 31950.08, 'on', -0.08, 31950.00, 0.00, '2021-06-16 17:16:33', '2021-06-16 17:16:33'),
(38, 'JAYBMS-PUR-', '007', '2021-04-13', '2021-05-13', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25000.00, 0.00, 3500.00, 3500.00, 0.00, 32000.00, 'on', 0.00, 32000.00, 0.00, '2021-06-16 17:19:45', '2021-06-16 17:19:45'),
(39, 'JAYBMS-PUR-', '008', '2021-04-26', '2021-05-26', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 52032.00, 0.00, 7284.48, 7284.48, 0.00, 66600.96, 'on', 0.04, 66601.00, 0.00, '2021-06-16 17:21:04', '2021-06-16 17:21:04'),
(40, 'JAYBMS-PUR-', '009', '2021-04-30', '2021-05-30', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 65040.00, 0.00, 9105.60, 9105.60, 0.00, 83251.20, 'on', -0.20, 83251.00, 0.00, '2021-06-16 17:22:56', '2021-06-16 17:22:56'),
(41, 'JAYBMS-PUR-', '010', '2021-04-22', '2021-05-22', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 3789.05, 0.00, 530.47, 530.47, 0.00, 4849.98, 'on', 0.02, 4850.00, 4850.00, '2021-06-16 17:26:51', '2021-06-24 17:30:34'),
(42, 'JAYBMS-PUR-', '011', '2021-04-23', '2021-05-23', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 28125.00, 0.00, 3937.50, 3937.50, 0.00, 36000.00, 'on', 0.00, 36000.00, 0.00, '2021-06-16 17:43:39', '2021-06-16 17:43:39'),
(43, 'JAYBMS-PUR-', '012', '2021-04-09', '2021-05-09', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 3375.00, 0.00, 472.50, 472.50, 0.00, 4320.00, 'on', 0.00, 4320.00, 0.00, '2021-06-16 17:44:38', '2021-06-16 17:44:38'),
(44, 'JAYBMS-PUR-', '013', '2021-05-27', '2021-06-26', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 9843.75, 0.00, 1378.13, 1378.13, 0.00, 12600.00, 'on', 0.00, 12600.00, 0.00, '2021-06-24 17:35:19', '2021-06-24 17:35:19'),
(45, 'JAYBMS-PUR-', '014', '2021-05-21', '2021-06-20', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 53906.00, 0.00, 7546.84, 7546.84, 0.00, 68999.68, 'on', 0.32, 69000.00, 0.00, '2021-06-24 17:37:01', '2021-06-24 17:37:01'),
(46, 'JAYBMS-PUR-', '015', '2021-05-29', '2021-06-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 53126.00, 0.00, 7437.64, 7437.64, 0.00, 68001.28, 'on', -0.28, 68001.00, 0.00, '2021-06-24 17:39:23', '2021-06-24 17:39:23'),
(47, 'JAYBMS-PUR-', '016', '2021-05-14', '2021-06-13', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50704.00, 0.00, 7098.56, 7098.56, 0.00, 64901.12, 'on', -0.12, 64901.00, 0.00, '2021-06-24 17:40:31', '2021-06-24 17:40:31'),
(48, 'JAYBMS-PUR-', '017', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25234.00, 0.00, 3532.76, 3532.76, 0.00, 32299.52, 'on', 0.48, 32300.00, 0.00, '2021-06-24 17:41:21', '2021-06-24 17:41:21'),
(49, 'JAYBMS-PUR-', '018', '2021-05-22', '2021-06-21', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25234.00, 0.00, 3532.76, 3532.76, 0.00, 32299.52, 'on', 0.48, 32300.00, 0.00, '2021-06-24 17:42:20', '2021-06-24 17:42:20'),
(50, 'JAYBMS-PUR-', '019', '2021-05-18', '2021-06-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 3031.24, 0.00, 424.37, 424.37, 0.00, 3879.99, 'on', 0.01, 3880.00, 0.00, '2021-06-24 17:43:53', '2021-06-24 17:43:53'),
(51, 'JAYBMS-PUR-', '020', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 47661.75, 0.00, 4289.56, 4289.56, 0.00, 56240.86, 'on', 0.14, 56241.00, 0.00, '2021-06-24 17:48:59', '2021-06-24 17:48:59'),
(52, 'JAYBMS-PUR-', '021', '2021-05-26', '2021-06-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 3925.80, 0.00, 549.61, 549.61, 0.00, 5025.02, 'on', -0.02, 5025.00, 0.00, '2021-06-24 17:50:29', '2021-06-24 17:50:29'),
(53, 'JAYBMS-PUR-', '022', '2021-06-10', '2021-07-10', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 49922.00, 0.00, 6989.08, 6989.08, 0.00, 63900.16, 'on', -0.16, 63900.00, 0.00, '2021-07-07 17:21:53', '2021-07-07 17:21:53'),
(54, 'JAYBMS-PUR-', '023', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25820.00, 0.00, 3614.80, 3614.80, 0.00, 33049.60, 'on', 0.40, 33050.00, 0.00, '2021-07-07 17:22:48', '2021-07-07 17:22:48'),
(55, 'JAYBMS-PUR-', '024', '2021-06-11', '2021-07-11', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24961.00, 0.00, 3494.54, 3494.54, 0.00, 31950.08, 'on', -0.08, 31950.00, 0.00, '2021-07-07 17:23:42', '2021-07-07 17:23:42'),
(56, 'JAYBMS-PUR-', '025', '2021-06-17', '2021-07-17', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25820.00, 0.00, 3614.80, 3614.80, 0.00, 33049.60, 'on', 0.40, 33050.00, 0.00, '2021-07-07 17:24:32', '2021-07-07 17:24:32'),
(57, 'JAYBMS-PUR-', '026', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24961.00, 0.00, 3494.54, 3494.54, 0.00, 31950.08, 'on', -0.08, 31950.00, 0.00, '2021-07-07 17:25:38', '2021-07-07 17:25:38'),
(58, 'JAYBMS-PUR-', '027', '2021-06-18', '2021-07-18', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51640.00, 0.00, 7229.60, 7229.60, 0.00, 66099.20, 'on', -0.20, 66099.00, 0.00, '2021-07-07 17:26:22', '2021-07-07 17:26:22'),
(59, 'JAYBMS-PUR-', '028', '2021-06-25', '2021-07-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24570.00, 0.00, 3439.80, 3439.80, 0.00, 31449.60, 'on', 0.40, 31450.00, 0.00, '2021-07-07 17:27:28', '2021-07-07 17:27:28'),
(60, 'JAYBMS-PUR-', '029', '2021-06-28', '2021-07-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50860.00, 0.00, 7120.40, 7120.40, 0.00, 65100.80, 'on', 0.20, 65101.00, 0.00, '2021-07-07 17:28:17', '2021-07-07 17:28:17'),
(61, 'JAYBMS-PUR-', '030', '2021-06-28', '2021-07-28', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 76290.00, 0.00, 10680.60, 10680.60, 0.00, 97651.20, 'on', -0.20, 97651.00, 0.00, '2021-07-07 17:29:01', '2021-07-07 17:29:01'),
(62, 'JAYBMS-PUR-', '031', '2021-06-02', '2021-07-02', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 41875.20, 0.00, 5862.53, 5862.53, 0.00, 53600.26, 'on', -0.26, 53600.00, 0.00, '2021-07-07 17:29:57', '2021-07-07 17:29:57'),
(63, 'JAYBMS-PUR-', '032', '2021-06-25', '2021-07-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51094.00, 0.00, 7153.16, 7153.16, 0.00, 65400.32, 'on', -0.32, 65400.00, 0.00, '2021-07-07 17:30:50', '2021-07-07 17:30:50'),
(64, 'JAYBMS-PUR-', '033', '2021-06-18', '2021-07-18', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50000.00, 0.00, 7000.00, 7000.00, 0.00, 64000.00, 'on', 0.00, 64000.00, 0.00, '2021-07-07 17:31:41', '2021-07-07 17:31:41'),
(65, 'JAYBMS-PUR-', '034', '2021-06-09', '2021-07-09', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 50782.00, 0.00, 7109.48, 7109.48, 0.00, 65000.96, 'on', 0.04, 65001.00, 0.00, '2021-07-07 17:32:44', '2021-07-07 17:32:44'),
(66, 'JAYBMS-PUR-', '035', '2021-06-30', '2021-07-30', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24609.00, 0.00, 3445.26, 3445.26, 0.00, 31499.52, 'on', 0.48, 31500.00, 0.00, '2021-07-07 17:33:30', '2021-07-07 17:33:30'),
(67, 'JAYBMS-PUR-', '036', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 126955.00, 0.00, 17773.70, 17773.70, 0.00, 162502.40, 'on', -0.40, 162502.00, 0.00, '2021-07-07 17:34:23', '2021-07-07 17:34:23'),
(68, 'JAYBMS-PUR-', '037', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51562.00, 0.00, 7218.68, 7218.68, 0.00, 65999.36, 'on', -0.36, 65999.00, 0.00, '2021-07-07 17:35:10', '2021-07-07 17:35:10'),
(69, 'JAYBMS-PUR-', '038', '2021-06-25', '2021-07-25', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 52344.00, 0.00, 7328.16, 7328.16, 0.00, 67000.32, 'on', -0.32, 67000.00, 0.00, '2021-07-07 17:36:14', '2021-07-07 17:36:14'),
(70, 'JAYBMS-PUR-', '039', '2021-06-29', '2021-07-29', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25586.00, 0.00, 3582.04, 3582.04, 0.00, 32750.08, 'on', -0.08, 32750.00, 0.00, '2021-07-07 17:37:14', '2021-07-07 17:37:14'),
(71, 'JAYBMS-PUR-', '040', '2021-06-21', '2021-07-21', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 5703.20, 0.00, 798.45, 798.45, 0.00, 7300.10, 'on', -0.10, 7300.00, 0.00, '2021-07-07 17:38:12', '2021-07-07 17:38:12'),
(72, 'JAYBMS-PUR-', '041', '2021-06-15', '2021-07-15', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 4277.40, 0.00, 598.84, 598.84, 0.00, 5475.07, 'on', -0.07, 5475.00, 0.00, '2021-07-07 17:38:50', '2021-07-07 17:38:50'),
(73, 'JAYBMS-PUR-', '042', '2021-06-05', '2021-07-05', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 12851.50, 0.00, 1799.21, 1799.21, 0.00, 16449.92, 'on', 0.08, 16450.00, 0.00, '2021-07-07 17:41:07', '2021-07-07 17:41:07'),
(74, 'JAYBMS-PUR-', '043', '2021-06-30', '2021-07-30', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 25000.00, 0.00, 3500.00, 3500.00, 0.00, 32000.00, 'on', 0.00, 32000.00, 0.00, '2021-07-07 17:42:07', '2021-07-07 17:42:07'),
(75, 'JAYBMS-PUR-', '044', '2021-07-20', '2021-08-19', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 37558.50, 0.00, 5258.19, 5258.19, 0.00, 48074.88, 'on', 0.12, 48075.00, 0.00, '2021-07-23 15:26:10', '2021-07-23 15:26:10'),
(76, 'JAYBMS-PUR-', '045', '2021-07-14', '2021-08-13', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24258.00, 0.00, 3396.12, 3396.12, 0.00, 31050.24, 'on', -0.24, 31050.00, 0.00, '2021-07-23 15:27:03', '2021-07-23 15:27:03'),
(77, 'JAYBMS-PUR-', '046', '2021-07-19', '2021-08-18', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 24258.00, 0.00, 3396.12, 3396.12, 0.00, 31050.24, 'on', -0.24, 31050.00, 0.00, '2021-07-23 15:28:17', '2021-07-23 15:28:17'),
(78, 'JAYBMS-PUR-', '047', '2021-07-19', '2021-08-18', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 12519.50, 0.00, 1752.73, 1752.73, 0.00, 16024.96, 'on', 0.04, 16025.00, 0.00, '2021-07-23 15:28:55', '2021-07-23 15:28:55'),
(79, 'JAYBMS-PUR-', '048', '2021-07-06', '2021-08-05', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51640.00, 0.00, 7229.60, 7229.60, 0.00, 66099.20, 'on', -0.20, 66099.00, 0.00, '2021-07-23 15:30:43', '2021-07-23 15:30:43'),
(80, 'JAYBMS-PUR-', '049', '2021-07-05', '2021-08-04', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 51640.00, 0.00, 7229.60, 7229.60, 0.00, 66099.20, 'on', -0.20, 66099.00, 0.00, '2021-07-23 15:31:22', '2021-07-23 15:31:22'),
(81, 'JAYBMS-PUR-', '050', '2021-07-05', '2021-08-04', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 2851.60, 0.00, 399.22, 399.22, 0.00, 3650.05, 'on', -0.05, 3650.00, 0.00, '2021-07-23 15:32:23', '2021-07-23 15:32:23'),
(82, 'JAYBMS-PUR-', '051', '2021-07-03', '2021-08-02', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 7031.25, 0.00, 984.38, 984.38, 0.00, 9000.00, 'on', 0.00, 9000.00, 0.00, '2021-07-23 15:33:17', '2021-07-23 15:33:17'),
(83, 'JAYBMS-PUR-', '052', '2021-07-02', '2021-08-01', 'Maharashtra', NULL, 0, 'unpaid', 'discountrate', 7031.25, 0.00, 984.38, 984.38, 0.00, 9000.00, 'on', 0.00, 9000.00, 0.00, '2021-07-23 15:33:57', '2021-07-23 15:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_dealers`
--

CREATE TABLE `purchase_dealers` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dealerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_dealers`
--

INSERT INTO `purchase_dealers` (`id`, `purchase_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `dealerId`) VALUES
(32, 32, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 71', 'off', '2021-06-12 10:59:03', '2021-06-16 17:11:45', 43),
(33, 33, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO - 7', 'off', '2021-06-16 17:12:42', '2021-06-16 17:12:42', 43),
(34, 34, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO - 41', 'off', '2021-06-16 17:13:41', '2021-06-16 17:13:41', 43),
(35, 35, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOCE NO - 161', 'off', '2021-06-16 17:14:23', '2021-06-16 17:14:23', 43),
(36, 36, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOCE NO - 198', 'off', '2021-06-16 17:15:15', '2021-06-16 17:15:15', 43),
(37, 37, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOCE NO - 258', 'off', '2021-06-16 17:16:33', '2021-06-16 17:16:33', 43),
(38, 38, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOCE NO - 2122JKC4', 'off', '2021-06-16 17:19:45', '2021-06-16 17:19:45', 50),
(39, 39, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOCE NO - 2122KES17', 'off', '2021-06-16 17:21:04', '2021-06-16 17:21:04', 50),
(40, 40, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO - 2122PEN44', 'off', '2021-06-16 17:22:56', '2021-06-16 17:22:56', 50),
(41, 41, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO - 185', 'off', '2021-06-16 17:26:51', '2021-06-16 17:26:51', 41),
(42, 42, 'MANISHA TRADERS', '27AEHPG8073L1Z2', '+91 9850345566', 'KALEWADI PIMPRI PUNE\r\nPUNE\r\nMaharashtra\r\n411017', 'INVOICE NO - 0103', 'off', '2021-06-16 17:43:39', '2021-06-16 17:43:39', 42),
(43, 43, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOIVCE NO - 95', 'off', '2021-06-16 17:44:38', '2021-06-16 17:44:38', 41),
(44, 44, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO 312', 'off', '2021-06-24 17:35:19', '2021-06-24 17:35:19', 41),
(45, 45, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO - 2122KES40', 'off', '2021-06-24 17:37:01', '2021-06-24 17:37:01', 50),
(46, 46, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'invoice no - 2122pen58', 'off', '2021-06-24 17:39:23', '2021-06-24 17:39:23', 50),
(47, 47, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO - 657', 'off', '2021-06-24 17:40:31', '2021-06-24 17:40:31', 43),
(48, 48, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', '+91 9920378784', 'SAKET SOCIAETY DP ROAD AUNDH PUNE\r\nPUNE\r\nMaharashtra\r\n411007', 'INVOCE NO - 186', 'off', '2021-06-24 17:41:21', '2021-06-24 17:41:21', 44),
(49, 49, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', '+91 9920378784', 'SAKET SOCIAETY DP ROAD AUNDH PUNE\r\nPUNE\r\nMaharashtra\r\n411007', 'INVOICE NO - 171', 'off', '2021-06-24 17:42:20', '2021-06-24 17:42:20', 44),
(50, 50, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO - 257', 'off', '2021-06-24 17:43:53', '2021-06-24 17:43:53', 41),
(51, 51, 'PARISA STEEL', '27AAKFP2074K1ZW', '+91 9673007405', 'SR NO 256/5 LAXMI CHOWK TATA JOHNSON ROAD HINJWADI TAL MULASHI DIS PUNE\r\nPUNE\r\nMaharashtra\r\n411057', 'INVOICE NO - 649', 'off', '2021-06-24 17:48:59', '2021-06-24 17:48:59', 54),
(52, 52, 'PARISA STEEL', '27AAKFP2074K1ZW', '+91 9673007405', 'SR NO 256/5 LAXMI CHOWK TATA JOHNSON ROAD HINJWADI TAL MULASHI DIS PUNE\r\nPUNE\r\nMaharashtra\r\n411057', 'INVOICE NO - 650', 'off', '2021-06-24 17:50:29', '2021-06-24 17:50:29', 54),
(53, 53, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1250', 'off', '2021-07-07 17:21:53', '2021-07-07 17:21:53', 43),
(54, 54, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1282', 'off', '2021-07-07 17:22:48', '2021-07-07 17:22:48', 43),
(55, 55, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1279', 'off', '2021-07-07 17:23:42', '2021-07-07 17:23:42', 43),
(56, 56, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1411', 'off', '2021-07-07 17:24:32', '2021-07-07 17:24:32', 43),
(57, 57, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1363', 'off', '2021-07-07 17:25:38', '2021-07-07 17:25:38', 43),
(58, 58, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1430', 'off', '2021-07-07 17:26:22', '2021-07-07 17:26:22', 43),
(59, 59, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO  1585', 'off', '2021-07-07 17:27:28', '2021-07-07 17:27:28', 43),
(60, 60, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1672', 'off', '2021-07-07 17:28:17', '2021-07-07 17:28:17', 43),
(61, 61, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1674', 'off', '2021-07-07 17:29:01', '2021-07-07 17:29:01', 43),
(62, 62, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122PEN61', 'off', '2021-07-07 17:29:57', '2021-07-07 17:29:57', 50),
(63, 63, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 2122PEN93', 'off', '2021-07-07 17:30:50', '2021-07-07 17:30:50', 43),
(64, 64, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122KES89', 'off', '2021-07-07 17:31:41', '2021-07-07 17:31:41', 50),
(65, 65, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122KES70', 'off', '2021-07-07 17:32:44', '2021-07-07 17:32:44', 50),
(66, 66, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122KES129', 'off', '2021-07-07 17:33:30', '2021-07-07 17:33:30', 50),
(67, 67, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122KES121', 'off', '2021-07-07 17:34:23', '2021-07-07 17:34:23', 50),
(68, 68, 'NIKHIL ENTERPRISES', '27ABEPG3120A1ZK', '+91 8830687927', 'SENADATTA PETH PUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 2122PEN95', 'off', '2021-07-07 17:35:10', '2021-07-07 17:35:10', 50),
(69, 69, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', '+91 9920378784', 'SAKET SOCIAETY DP ROAD AUNDH PUNE\r\nPUNE\r\nMaharashtra\r\n411007', 'INVOICE NO  397', 'off', '2021-07-07 17:36:14', '2021-07-07 17:36:14', 44),
(70, 70, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', '+91 9920378784', 'SAKET SOCIAETY DP ROAD AUNDH PUNE\r\nPUNE\r\nMaharashtra\r\n411007', 'INVOICE NO 412', 'off', '2021-07-07 17:37:14', '2021-07-07 17:37:14', 44),
(71, 71, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO 557', 'off', '2021-07-07 17:38:12', '2021-07-07 17:38:12', 41),
(72, 72, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO 504', 'off', '2021-07-07 17:38:50', '2021-07-07 17:38:50', 41),
(73, 73, 'MANISHA TRADERS', '27AEHPG8073L1Z2', '+91 9850345566', 'KALEWADI PIMPRI PUNE\r\nPUNE\r\nMaharashtra\r\n411017', 'INVOICE NO 0293', 'off', '2021-07-07 17:41:07', '2021-07-07 17:41:07', 42),
(74, 74, 'GREYSTONE MARKETING PVT LTD', '27AAHCG4796K1ZX', '+91 9920378784', 'SAKET SOCIAETY DP ROAD AUNDH PUNE\r\nPUNE\r\nMaharashtra\r\n411007', 'INVOICE NO 427', 'off', '2021-07-07 17:42:07', '2021-07-07 17:42:07', 44),
(75, 75, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', '+91 9822068860', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 385', 'off', '2021-07-23 15:26:10', '2021-07-23 15:26:10', 63),
(76, 76, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', '+91 9822068860', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 348', 'off', '2021-07-23 15:27:03', '2021-07-23 15:27:03', 63),
(77, 77, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', '+91 9822068860', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 374', 'off', '2021-07-23 15:28:17', '2021-07-23 15:28:17', 63),
(78, 78, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', '+91 9822068860', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 375', 'off', '2021-07-23 15:28:55', '2021-07-23 15:28:55', 63),
(79, 79, 'SHRIRAM SALES', '27ABFFS2393Q1ZE', '+91 9822068860', 'LOKMANYANAGAR POST ODDICE NAVI PETH \r\nPUNE\r\nPUNE\r\nMaharashtra\r\n411030', 'INVOICE NO 292', 'off', '2021-07-23 15:30:43', '2021-07-23 15:30:43', 63),
(80, 80, 'JAYASHRI ENTERPRISES', '27APQPB4107A1ZF', '+91 9527808461', 'BHOSARI PUNE\r\nPUNE\r\nMaharashtra\r\n411026', 'INVOICE NO 1806', 'off', '2021-07-23 15:31:22', '2021-07-23 15:31:22', 43),
(81, 81, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO 734', 'off', '2021-07-23 15:32:23', '2021-07-23 15:32:23', 41),
(82, 82, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO  706', 'off', '2021-07-23 15:33:17', '2021-07-23 15:33:17', 41),
(83, 83, 'PRAVIN ENTERPRISES', '27AKMPK3874G1ZS', '+91 9665816925', 'SUSH ROAD PASHAN CHOUK NEAR BY BALAJI TEMPLE PASHAN PUNE\r\nPUNE\r\nMaharashtra\r\n411021', 'INVOICE NO 698', 'off', '2021-07-23 15:33:57', '2021-07-23 15:33:57', 41);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchaseSerial` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'goods',
  `hsn` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleValue` decimal(10,2) NOT NULL,
  `discountRate` decimal(4,2) NOT NULL,
  `discountValue` decimal(10,2) NOT NULL,
  `taxableValue` decimal(10,2) NOT NULL,
  `taxRate` decimal(4,2) NOT NULL,
  `igstRate` decimal(4,2) NOT NULL,
  `igstValue` decimal(10,2) NOT NULL,
  `cgstRate` decimal(4,2) NOT NULL,
  `cgstValue` decimal(10,2) NOT NULL,
  `sgstRate` decimal(4,2) NOT NULL,
  `sgstValue` decimal(10,2) NOT NULL,
  `cessRate` decimal(4,2) NOT NULL,
  `cessValue` decimal(10,2) NOT NULL,
  `grossValue` decimal(10,2) NOT NULL,
  `dcDate` date DEFAULT NULL,
  `vehicleNo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dcNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `purchase_id`, `purchaseSerial`, `description`, `type`, `hsn`, `quantity`, `unit`, `saleValue`, `discountRate`, `discountValue`, `taxableValue`, `taxRate`, `igstRate`, `igstValue`, `cgstRate`, `cgstValue`, `sgstRate`, `sgstValue`, `cessRate`, `cessValue`, `grossValue`, `dcDate`, `vehicleNo`, `created_at`, `updated_at`, `dcNo`) VALUES
(89, 32, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 249.61, 0.00, 0.00, 49922.00, 28.00, 0.00, 0.00, 14.00, 6989.08, 14.00, 6989.08, 0.00, 0.00, 63900.16, NULL, NULL, '2021-06-12 10:59:53', '2021-06-16 17:11:45', NULL),
(90, 33, 1, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 281.64, 0.00, 0.00, 14082.00, 28.00, 0.00, 0.00, 14.00, 1971.48, 14.00, 1971.48, 0.00, 0.00, 18024.96, NULL, NULL, '2021-06-16 17:12:42', '2021-06-16 17:12:42', NULL),
(91, 34, 1, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 249.61, 0.00, 0.00, 12480.50, 28.00, 0.00, 0.00, 14.00, 1747.27, 14.00, 1747.27, 0.00, 0.00, 15975.04, NULL, NULL, '2021-06-16 17:13:41', '2021-06-16 17:13:41', NULL),
(92, 35, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 249.61, 0.00, 0.00, 24961.00, 28.00, 0.00, 0.00, 14.00, 3494.54, 14.00, 3494.54, 0.00, 0.00, 31950.08, NULL, NULL, '2021-06-16 17:14:23', '2021-06-16 17:14:23', NULL),
(93, 36, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 249.61, 0.00, 0.00, 24961.00, 28.00, 0.00, 0.00, 14.00, 3494.54, 14.00, 3494.54, 0.00, 0.00, 31950.08, NULL, NULL, '2021-06-16 17:15:15', '2021-06-16 17:15:15', NULL),
(94, 37, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 249.61, 0.00, 0.00, 24961.00, 28.00, 0.00, 0.00, 14.00, 3494.54, 14.00, 3494.54, 0.00, 0.00, 31950.08, NULL, NULL, '2021-06-16 17:16:33', '2021-06-16 17:16:33', NULL),
(95, 38, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 250.00, 0.00, 0.00, 25000.00, 28.00, 0.00, 0.00, 14.00, 3500.00, 14.00, 3500.00, 0.00, 0.00, 32000.00, NULL, NULL, '2021-06-16 17:19:45', '2021-06-16 17:19:45', NULL),
(96, 39, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 260.16, 0.00, 0.00, 52032.00, 28.00, 0.00, 0.00, 14.00, 7284.48, 14.00, 7284.48, 0.00, 0.00, 66600.96, NULL, NULL, '2021-06-16 17:21:04', '2021-06-16 17:21:04', NULL),
(97, 40, 1, 'Cement', 'goods', '25232930', 250.00, 'BGS', 260.16, 0.00, 0.00, 65040.00, 28.00, 0.00, 0.00, 14.00, 9105.60, 14.00, 9105.60, 0.00, 0.00, 83251.20, NULL, NULL, '2021-06-16 17:22:56', '2021-06-16 17:22:56', NULL),
(98, 41, 1, 'WHITE CEMENT', 'goods', '00002523', 5.00, 'BGS', 757.81, 0.00, 0.00, 3789.05, 28.00, 0.00, 0.00, 14.00, 530.47, 14.00, 530.47, 0.00, 0.00, 4849.98, NULL, NULL, '2021-06-16 17:26:51', '2021-06-24 17:30:34', NULL),
(99, 42, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 100.00, 'BGS', 281.25, 0.00, 0.00, 28125.00, 28.00, 0.00, 0.00, 14.00, 3937.50, 14.00, 3937.50, 0.00, 0.00, 36000.00, NULL, NULL, '2021-06-16 17:43:39', '2021-06-16 17:43:39', NULL),
(100, 43, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 12.00, 'BGS', 281.25, 0.00, 0.00, 3375.00, 28.00, 0.00, 0.00, 14.00, 472.50, 14.00, 472.50, 0.00, 0.00, 4320.00, NULL, NULL, '2021-06-16 17:44:38', '2021-06-16 17:44:38', NULL),
(101, 44, 1, 'ACC OPC - 53', 'goods', '00002523', 35.00, 'BGS', 281.25, 0.00, 0.00, 9843.75, 28.00, 0.00, 0.00, 14.00, 1378.13, 14.00, 1378.13, 0.00, 0.00, 12600.00, NULL, NULL, '2021-06-24 17:35:19', '2021-06-24 17:35:19', NULL),
(102, 45, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 269.53, 0.00, 0.00, 53906.00, 28.00, 0.00, 0.00, 14.00, 7546.84, 14.00, 7546.84, 0.00, 0.00, 68999.68, NULL, NULL, '2021-06-24 17:37:01', '2021-06-24 17:37:01', NULL),
(103, 46, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 265.63, 0.00, 0.00, 53126.00, 28.00, 0.00, 0.00, 14.00, 7437.64, 14.00, 7437.64, 0.00, 0.00, 68001.28, NULL, NULL, '2021-06-24 17:39:23', '2021-06-24 17:39:23', NULL),
(104, 47, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 253.52, 0.00, 0.00, 50704.00, 28.00, 0.00, 0.00, 14.00, 7098.56, 14.00, 7098.56, 0.00, 0.00, 64901.12, NULL, NULL, '2021-06-24 17:40:31', '2021-06-24 17:40:31', NULL),
(105, 48, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 252.34, 0.00, 0.00, 25234.00, 28.00, 0.00, 0.00, 14.00, 3532.76, 14.00, 3532.76, 0.00, 0.00, 32299.52, NULL, NULL, '2021-06-24 17:41:21', '2021-06-24 17:41:21', NULL),
(106, 49, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 252.34, 0.00, 0.00, 25234.00, 28.00, 0.00, 0.00, 14.00, 3532.76, 14.00, 3532.76, 0.00, 0.00, 32299.52, NULL, NULL, '2021-06-24 17:42:20', '2021-06-24 17:42:20', NULL),
(107, 50, 1, 'WHITE CEMENT', 'goods', '00002523', 4.00, 'BGS', 757.81, 0.00, 0.00, 3031.24, 28.00, 0.00, 0.00, 14.00, 424.37, 14.00, 424.37, 0.00, 0.00, 3879.99, NULL, NULL, '2021-06-24 17:43:53', '2021-06-24 17:43:53', NULL),
(108, 51, 1, 'STEEL 25 MM', 'goods', '00007214', 921.00, 'KG', 51.75, 0.00, 0.00, 47661.75, 18.00, 0.00, 0.00, 9.00, 4289.56, 9.00, 4289.56, 0.00, 0.00, 56240.86, NULL, NULL, '2021-06-24 17:48:59', '2021-06-24 17:48:59', NULL),
(109, 52, 1, 'Cement', 'goods', '25232930', 15.00, 'BGS', 261.72, 0.00, 0.00, 3925.80, 28.00, 0.00, 0.00, 14.00, 549.61, 14.00, 549.61, 0.00, 0.00, 5025.02, NULL, NULL, '2021-06-24 17:50:29', '2021-06-24 17:50:29', NULL),
(110, 53, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 249.61, 0.00, 0.00, 49922.00, 28.00, 0.00, 0.00, 14.00, 6989.08, 14.00, 6989.08, 0.00, 0.00, 63900.16, NULL, NULL, '2021-07-07 17:21:53', '2021-07-07 17:21:53', NULL),
(111, 54, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 258.20, 0.00, 0.00, 25820.00, 28.00, 0.00, 0.00, 14.00, 3614.80, 14.00, 3614.80, 0.00, 0.00, 33049.60, NULL, NULL, '2021-07-07 17:22:48', '2021-07-07 17:22:48', NULL),
(112, 55, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 249.61, 0.00, 0.00, 24961.00, 28.00, 0.00, 0.00, 14.00, 3494.54, 14.00, 3494.54, 0.00, 0.00, 31950.08, NULL, NULL, '2021-07-07 17:23:42', '2021-07-07 17:23:42', NULL),
(113, 56, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 258.20, 0.00, 0.00, 25820.00, 28.00, 0.00, 0.00, 14.00, 3614.80, 14.00, 3614.80, 0.00, 0.00, 33049.60, NULL, NULL, '2021-07-07 17:24:32', '2021-07-07 17:24:32', NULL),
(114, 57, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 249.61, 0.00, 0.00, 24961.00, 28.00, 0.00, 0.00, 14.00, 3494.54, 14.00, 3494.54, 0.00, 0.00, 31950.08, NULL, NULL, '2021-07-07 17:25:38', '2021-07-07 17:25:38', NULL),
(115, 58, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 258.20, 0.00, 0.00, 51640.00, 28.00, 0.00, 0.00, 14.00, 7229.60, 14.00, 7229.60, 0.00, 0.00, 66099.20, NULL, NULL, '2021-07-07 17:26:22', '2021-07-07 17:26:22', NULL),
(116, 59, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 245.70, 0.00, 0.00, 24570.00, 28.00, 0.00, 0.00, 14.00, 3439.80, 14.00, 3439.80, 0.00, 0.00, 31449.60, NULL, NULL, '2021-07-07 17:27:28', '2021-07-07 17:27:28', NULL),
(117, 60, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 254.30, 0.00, 0.00, 50860.00, 28.00, 0.00, 0.00, 14.00, 7120.40, 14.00, 7120.40, 0.00, 0.00, 65100.80, NULL, NULL, '2021-07-07 17:28:17', '2021-07-07 17:28:17', NULL),
(118, 61, 1, 'BIRLA SHAKTI', 'goods', '25232910', 300.00, 'BGS', 254.30, 0.00, 0.00, 76290.00, 28.00, 0.00, 0.00, 14.00, 10680.60, 14.00, 10680.60, 0.00, 0.00, 97651.20, NULL, NULL, '2021-07-07 17:29:01', '2021-07-07 17:29:01', NULL),
(119, 62, 1, 'Cement', 'goods', '25232930', 160.00, 'BGS', 261.72, 0.00, 0.00, 41875.20, 28.00, 0.00, 0.00, 14.00, 5862.53, 14.00, 5862.53, 0.00, 0.00, 53600.26, NULL, NULL, '2021-07-07 17:29:57', '2021-07-07 17:29:57', NULL),
(120, 63, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 255.47, 0.00, 0.00, 51094.00, 28.00, 0.00, 0.00, 14.00, 7153.16, 14.00, 7153.16, 0.00, 0.00, 65400.32, NULL, NULL, '2021-07-07 17:30:50', '2021-07-07 17:30:50', NULL),
(121, 64, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 250.00, 0.00, 0.00, 50000.00, 28.00, 0.00, 0.00, 14.00, 7000.00, 14.00, 7000.00, 0.00, 0.00, 64000.00, NULL, NULL, '2021-07-07 17:31:41', '2021-07-07 17:31:41', NULL),
(122, 65, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 253.91, 0.00, 0.00, 50782.00, 28.00, 0.00, 0.00, 14.00, 7109.48, 14.00, 7109.48, 0.00, 0.00, 65000.96, NULL, NULL, '2021-07-07 17:32:44', '2021-07-07 17:32:44', NULL),
(123, 66, 1, 'Cement', 'goods', '25232930', 100.00, 'BGS', 246.09, 0.00, 0.00, 24609.00, 28.00, 0.00, 0.00, 14.00, 3445.26, 14.00, 3445.26, 0.00, 0.00, 31499.52, NULL, NULL, '2021-07-07 17:33:30', '2021-07-07 17:33:30', NULL),
(124, 67, 1, 'Cement', 'goods', '25232930', 500.00, 'BGS', 253.91, 0.00, 0.00, 126955.00, 28.00, 0.00, 0.00, 14.00, 17773.70, 14.00, 17773.70, 0.00, 0.00, 162502.40, NULL, NULL, '2021-07-07 17:34:23', '2021-07-07 17:34:23', NULL),
(125, 68, 1, 'Cement', 'goods', '25232930', 200.00, 'BGS', 257.81, 0.00, 0.00, 51562.00, 28.00, 0.00, 0.00, 14.00, 7218.68, 14.00, 7218.68, 0.00, 0.00, 65999.36, NULL, NULL, '2021-07-07 17:35:10', '2021-07-07 17:35:10', NULL),
(126, 69, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 261.72, 0.00, 0.00, 52344.00, 28.00, 0.00, 0.00, 14.00, 7328.16, 14.00, 7328.16, 0.00, 0.00, 67000.32, NULL, NULL, '2021-07-07 17:36:14', '2021-07-07 17:36:14', NULL),
(127, 70, 1, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 261.72, 0.00, 0.00, 13086.00, 28.00, 0.00, 0.00, 14.00, 1832.04, 14.00, 1832.04, 0.00, 0.00, 16750.08, NULL, NULL, '2021-07-07 17:37:14', '2021-07-07 17:37:14', NULL),
(128, 70, 2, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 250.00, 0.00, 0.00, 12500.00, 28.00, 0.00, 0.00, 14.00, 1750.00, 14.00, 1750.00, 0.00, 0.00, 16000.00, NULL, NULL, '2021-07-07 17:37:14', '2021-07-07 17:37:14', NULL),
(129, 71, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 20.00, 'BGS', 285.16, 0.00, 0.00, 5703.20, 28.00, 0.00, 0.00, 14.00, 798.45, 14.00, 798.45, 0.00, 0.00, 7300.10, NULL, NULL, '2021-07-07 17:38:12', '2021-07-07 17:38:12', NULL),
(130, 72, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 15.00, 'BGS', 285.16, 0.00, 0.00, 4277.40, 28.00, 0.00, 0.00, 14.00, 598.84, 14.00, 598.84, 0.00, 0.00, 5475.07, NULL, NULL, '2021-07-07 17:38:50', '2021-07-07 17:38:50', NULL),
(131, 73, 1, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 257.03, 0.00, 0.00, 12851.50, 28.00, 0.00, 0.00, 14.00, 1799.21, 14.00, 1799.21, 0.00, 0.00, 16449.92, NULL, NULL, '2021-07-07 17:41:07', '2021-07-07 17:41:07', NULL),
(132, 74, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 250.00, 0.00, 0.00, 25000.00, 28.00, 0.00, 0.00, 14.00, 3500.00, 14.00, 3500.00, 0.00, 0.00, 32000.00, NULL, NULL, '2021-07-07 17:42:07', '2021-07-07 17:42:07', NULL),
(133, 75, 1, 'BIRLA SHAKTI', 'goods', '25232910', 150.00, 'BGS', 250.39, 0.00, 0.00, 37558.50, 28.00, 0.00, 0.00, 14.00, 5258.19, 14.00, 5258.19, 0.00, 0.00, 48074.88, NULL, NULL, '2021-07-23 15:26:10', '2021-07-23 15:26:10', NULL),
(134, 76, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 242.58, 0.00, 0.00, 24258.00, 28.00, 0.00, 0.00, 14.00, 3396.12, 14.00, 3396.12, 0.00, 0.00, 31050.24, NULL, NULL, '2021-07-23 15:27:03', '2021-07-23 15:27:03', NULL),
(135, 77, 1, 'BIRLA SHAKTI', 'goods', '25232910', 100.00, 'BGS', 242.58, 0.00, 0.00, 24258.00, 28.00, 0.00, 0.00, 14.00, 3396.12, 14.00, 3396.12, 0.00, 0.00, 31050.24, NULL, NULL, '2021-07-23 15:28:17', '2021-07-23 15:28:17', NULL),
(136, 78, 1, 'BIRLA SHAKTI', 'goods', '25232910', 50.00, 'BGS', 250.39, 0.00, 0.00, 12519.50, 28.00, 0.00, 0.00, 14.00, 1752.73, 14.00, 1752.73, 0.00, 0.00, 16024.96, NULL, NULL, '2021-07-23 15:28:55', '2021-07-23 15:28:55', NULL),
(137, 79, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 258.20, 0.00, 0.00, 51640.00, 28.00, 0.00, 0.00, 14.00, 7229.60, 14.00, 7229.60, 0.00, 0.00, 66099.20, NULL, NULL, '2021-07-23 15:30:43', '2021-07-23 15:30:43', NULL),
(138, 80, 1, 'BIRLA SHAKTI', 'goods', '25232910', 200.00, 'BGS', 258.20, 0.00, 0.00, 51640.00, 28.00, 0.00, 0.00, 14.00, 7229.60, 14.00, 7229.60, 0.00, 0.00, 66099.20, NULL, NULL, '2021-07-23 15:31:22', '2021-07-23 15:31:22', NULL),
(139, 81, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 10.00, 'BGS', 285.16, 0.00, 0.00, 2851.60, 28.00, 0.00, 0.00, 14.00, 399.22, 14.00, 399.22, 0.00, 0.00, 3650.05, NULL, NULL, '2021-07-23 15:32:23', '2021-07-23 15:32:23', NULL),
(140, 82, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 25.00, 'BGS', 281.25, 0.00, 0.00, 7031.25, 28.00, 0.00, 0.00, 14.00, 984.38, 14.00, 984.38, 0.00, 0.00, 9000.00, NULL, NULL, '2021-07-23 15:33:17', '2021-07-23 15:33:17', NULL),
(141, 83, 1, 'BIRLA SUPER 53 GRADE', 'goods', '25232910', 25.00, 'BGS', 281.25, 0.00, 0.00, 7031.25, 28.00, 0.00, 0.00, 14.00, 984.38, 14.00, 984.38, 0.00, 0.00, 9000.00, NULL, NULL, '2021-07-23 15:33:57', '2021-07-23 15:33:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_settings`
--

CREATE TABLE `purchase_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaseNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaseTerms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_settings`
--

INSERT INTO `purchase_settings` (`id`, `serialPrefix`, `serialNumberStart`, `purchaseNotes`, `purchaseTerms`, `created_at`, `updated_at`) VALUES
(1, 'JAYBMS-PUR-', '001', ' ', ' ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2021-05-29 08:54:13', '2021-05-29 08:54:13'),
(2, 'user', 'User', '2021-05-29 08:54:13', '2021-05-29 08:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `payeeid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `base_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `account`, `type`, `amount`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tax`, `date`, `dr`, `cr`, `bal`, `base_amount`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'JAY BHAGWAN BUILDING MATERIAL SUPPLIERS', 'Income', 6943052.60, 0, 0, NULL, NULL, 'Cleared', 'Initial Balance', 0.00, '2021-06-09', 0.00, 6943052.60, 6943052.60, 0.0000, '2021-06-09 18:48:49', '2021-06-09 18:48:49', 'Rutuja Jadhav'),
(2, 'JAY BHAGWAN BUILDING MATERIAL SUPPLIERS', '', 181852.00, 50, 1, NULL, NULL, 'Cleared', 'B N 4,17,44,', 0.00, '2021-06-16', 0.00, 181852.00, 6761200.60, 0.0000, '2021-06-16 17:47:33', '2021-06-16 17:47:33', NULL),
(3, 'JAY BHAGWAN BUILDING MATERIAL SUPPLIERS', '', -100.00, 9, 1, NULL, NULL, 'Cleared', NULL, 0.00, '2021-08-24', 0.00, -100.00, 6761100.60, 0.0000, '2021-08-24 14:47:38', '2021-08-24 14:47:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `fromAccountId` int(11) NOT NULL,
  `toAccountId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rutuja Jadhav', 'jadhavrutuja1924@gmail.com', '$2y$10$uRUuMRlaydCUl.KqnLM2Du3zB8S5xkNwuVgisltJ.3IpTGVnTQ5n6', '9LJQ782HdxaxSULVdF5tSsjTB54iU8Cak4bqhLTXA2ZkOXaaTrUAMvyrCe3C', '2021-05-29 08:54:13', '2021-06-09 13:34:46'),
(2, 'Tukaram Nagargoje', 'tukaramnagargoje101@gmail.com', '$2y$10$Ba9wK3eHW7DvY6tlBl8ObOyFlxzLMOY2swTOdABXvV2LQEiGzJARm', NULL, '2021-05-29 08:54:13', '2021-06-11 20:30:43'),
(3, 'Admin', 'admin@jaybhagwan.in', '$2y$10$SYyHbhrkHeUtkeyXnLt5m.xNLMBCsVh5/1D2fqBKcj01CNoe/GyG2', 'qa6xjd1n1ZJNT3btTcytV95YsLNeUC5JyuIJ1weBBxXIoLdV7MLlUgXBhpjk', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcs`
--
ALTER TABLE `dcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_customers`
--
ALTER TABLE `dc_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_products`
--
ALTER TABLE `dc_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_settings`
--
ALTER TABLE `dc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_settings`
--
ALTER TABLE `expense_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_customers`
--
ALTER TABLE `invoice_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_customers1`
--
ALTER TABLE `invoice_customers1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_settings`
--
ALTER TABLE `profile_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_dealers`
--
ALTER TABLE `purchase_dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_settings`
--
ALTER TABLE `purchase_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_id_index` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `dcs`
--
ALTER TABLE `dcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `dc_customers`
--
ALTER TABLE `dc_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `dc_products`
--
ALTER TABLE `dc_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `dc_settings`
--
ALTER TABLE `dc_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_settings`
--
ALTER TABLE `expense_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `invoice_customers`
--
ALTER TABLE `invoice_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `invoice_customers1`
--
ALTER TABLE `invoice_customers1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `profile_settings`
--
ALTER TABLE `profile_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `purchase_dealers`
--
ALTER TABLE `purchase_dealers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `purchase_settings`
--
ALTER TABLE `purchase_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
