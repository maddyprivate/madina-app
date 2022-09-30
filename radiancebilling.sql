-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2021 at 04:28 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.1.33-40+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radiancebilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` int UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `placeOfSupply` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditNoteStatus` enum('quote','unpaid','partial','paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `discountType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalTaxableValue` decimal(10,2) NOT NULL,
  `totalIgstValue` decimal(10,2) NOT NULL,
  `totalCgstValue` decimal(10,2) NOT NULL,
  `totalSgstValue` decimal(10,2) NOT NULL,
  `totalCessValue` decimal(10,2) NOT NULL,
  `netValue` decimal(10,2) NOT NULL,
  `roundOffState` enum('on','off') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `roundOffValue` decimal(4,2) NOT NULL,
  `grandValue` decimal(12,2) NOT NULL,
  `amountRecieved` decimal(12,2) NOT NULL,
  `pendingBalance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otherCharges` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_notes`
--

INSERT INTO `credit_notes` (`id`, `serialPrefix`, `serialNumber`, `issueDate`, `dueDate`, `placeOfSupply`, `creditNoteStatus`, `discountType`, `totalTaxableValue`, `totalIgstValue`, `totalCgstValue`, `totalSgstValue`, `totalCessValue`, `netValue`, `roundOffState`, `roundOffValue`, `grandValue`, `amountRecieved`, `pendingBalance`, `created_at`, `updated_at`, `otherCharges`) VALUES
(1, 'RLPG-CreditNote-', '001', '2021-10-07', '0000-00-00', 'Assam', 'unpaid', 'discountrate', '38500.00', '0.00', '0.00', '0.00', '0.00', '45300.00', 'on', '0.00', '45300.00', '1050.00', 1050, '2021-10-09 12:15:11', '2021-10-10 03:29:24', 0.00),
(2, 'RLPG-CreditNote-', '002', '2021-10-10', '0000-00-00', 'Maharashtra', 'unpaid', 'discountrate', '10000.00', '0.00', '250.00', '250.00', '0.00', '10500.00', 'on', '0.00', '10500.00', '0.00', 10500, '2021-10-10 07:14:46', '2021-10-10 07:17:00', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `credit_note_customers`
--

CREATE TABLE `credit_note_customers` (
  `id` int UNSIGNED NOT NULL,
  `credit_note_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customerId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_note_customers`
--

INSERT INTO `credit_note_customers` (`id`, `credit_note_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `customerId`) VALUES
(1, 1, 'A Hitesh Patil', '27AABBC1234A1ZA', '+91 9999999999', '103 samarth Krupa\r\nPune\r\nMaharashtra\r\n411061', '103 samarth Krupa\r\nPune\r\nMaharashtra\r\n411061', 'on', '2021-10-09 12:15:12', '2021-10-09 12:15:12', 4),
(2, 2, 'Pancham Enterprises', '27ALEPJ9853D1ZY', '+91 9223528666', '1/12,GURUBUX SINGH,, BEHIND MANISHA HEIGHTS, B.R.\r\nROAD, MULUND WEST, Mumbai Suburban, Maharashtra,\r\n400080\r\nMumbai\r\nMaharashtra\r\n400080', '1/12,GURUBUX SINGH,, BEHIND MANISHA HEIGHTS, B.R.\r\nROAD, MULUND WEST, Mumbai Suburban, Maharashtra,\r\n400080\r\nMumbai\r\nMaharashtra\r\n400080', 'on', '2021-10-10 07:16:21', '2021-10-10 07:16:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `credit_note_payments`
--

CREATE TABLE `credit_note_payments` (
  `id` int NOT NULL,
  `creditNote_id` int NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text,
  `method` varchar(256) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_note_products`
--

CREATE TABLE `credit_note_products` (
  `id` int UNSIGNED NOT NULL,
  `credit_note_id` int NOT NULL,
  `creditNoteSerial` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'goods',
  `hsn` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_note_products`
--

INSERT INTO `credit_note_products` (`id`, `credit_note_id`, `creditNoteSerial`, `description`, `type`, `hsn`, `quantity`, `unit`, `saleValue`, `discountRate`, `discountValue`, `taxableValue`, `taxRate`, `igstRate`, `igstValue`, `cgstRate`, `cgstValue`, `sgstRate`, `sgstValue`, `cessRate`, `cessValue`, `grossValue`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cylinder (5KG)', 'goods', '73110010', '1.00', 'BTL', '1000.00', '0.00', '0.00', '1000.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1050.00', '2021-10-09 12:15:13', '2021-10-10 03:29:24'),
(2, 1, 2, 'Cylinder (33 KG)', 'goods', '73110010', '75.00', 'BTL', '500.00', '0.00', '0.00', '37500.00', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '44250.00', '2021-10-10 03:29:25', '2021-10-10 03:29:25'),
(3, 2, 1, 'Cylinder (12KG)', 'goods', '73110010', '100.00', 'BTL', '100.00', '0.00', '0.00', '10000.00', '5.00', '0.00', '0.00', '2.50', '250.00', '2.50', '250.00', '0.00', '0.00', '10500.00', '2021-10-10 07:17:00', '2021-10-10 07:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `credit_note_settings`
--

CREATE TABLE `credit_note_settings` (
  `id` int UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditNoteNotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditNoteTerms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_note_settings`
--

INSERT INTO `credit_note_settings` (`id`, `serialPrefix`, `serialNumberStart`, `creditNoteNotes`, `creditNoteTerms`, `created_at`, `updated_at`) VALUES
(1, 'RLPG-CreditNote-', '001', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` int UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `placeOfSupply` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debitNoteStatus` enum('quote','unpaid','partial','paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `discountType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalTaxableValue` decimal(10,2) NOT NULL,
  `totalIgstValue` decimal(10,2) NOT NULL,
  `totalCgstValue` decimal(10,2) NOT NULL,
  `totalSgstValue` decimal(10,2) NOT NULL,
  `totalCessValue` decimal(10,2) NOT NULL,
  `netValue` decimal(10,2) NOT NULL,
  `roundOffState` enum('on','off') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `roundOffValue` decimal(4,2) NOT NULL,
  `grandValue` decimal(12,2) NOT NULL,
  `amountRecieved` decimal(12,2) NOT NULL,
  `pendingBalance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otherCharges` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debit_notes`
--

INSERT INTO `debit_notes` (`id`, `serialPrefix`, `serialNumber`, `issueDate`, `dueDate`, `placeOfSupply`, `debitNoteStatus`, `discountType`, `totalTaxableValue`, `totalIgstValue`, `totalCgstValue`, `totalSgstValue`, `totalCessValue`, `netValue`, `roundOffState`, `roundOffValue`, `grandValue`, `amountRecieved`, `pendingBalance`, `created_at`, `updated_at`, `otherCharges`) VALUES
(1, 'RLPG-DebitNote-', '001', '2021-10-07', '0000-00-00', 'Assam', 'unpaid', 'discountrate', '38500.00', '0.00', '0.00', '0.00', '0.00', '45300.00', 'on', '0.00', '45300.00', '1050.00', 1050, '2021-10-09 12:15:11', '2021-10-10 03:29:24', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `debit_note_dealers`
--

CREATE TABLE `debit_note_dealers` (
  `id` int UNSIGNED NOT NULL,
  `debit_note_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameAsBilling` enum('on','off') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dealerId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debit_note_dealers`
--

INSERT INTO `debit_note_dealers` (`id`, `debit_note_id`, `name`, `gstin`, `mobile`, `billingAddress`, `shippingAddress`, `sameAsBilling`, `created_at`, `updated_at`, `dealerId`) VALUES
(1, 1, 'A Hitesh Patil', '27AABBC1234A1ZA', '+91 9999999999', '103 samarth Krupa\r\nPune\r\nMaharashtra\r\n411061', '103 samarth Krupa\r\nPune\r\nMaharashtra\r\n411061', 'on', '2021-10-09 12:15:12', '2021-10-09 12:15:12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `debit_note_payments`
--

CREATE TABLE `debit_note_payments` (
  `id` int NOT NULL,
  `debitNote_id` int NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text,
  `method` varchar(256) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_note_products`
--

CREATE TABLE `debit_note_products` (
  `id` int UNSIGNED NOT NULL,
  `debit_note_id` int NOT NULL,
  `debitNoteSerial` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('goods','service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'goods',
  `hsn` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debit_note_products`
--

INSERT INTO `debit_note_products` (`id`, `debit_note_id`, `debitNoteSerial`, `description`, `type`, `hsn`, `quantity`, `unit`, `saleValue`, `discountRate`, `discountValue`, `taxableValue`, `taxRate`, `igstRate`, `igstValue`, `cgstRate`, `cgstValue`, `sgstRate`, `sgstValue`, `cessRate`, `cessValue`, `grossValue`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cylinder (5KG)', 'goods', '73110010', '1.00', 'BTL', '1000.00', '0.00', '0.00', '1000.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1050.00', '2021-10-09 12:15:13', '2021-10-10 03:29:24'),
(2, 1, 2, 'Cylinder (33 KG)', 'goods', '73110010', '75.00', 'BTL', '500.00', '0.00', '0.00', '37500.00', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '44250.00', '2021-10-10 03:29:25', '2021-10-10 03:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `debit_note_settings`
--

CREATE TABLE `debit_note_settings` (
  `id` int UNSIGNED NOT NULL,
  `serialPrefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debitNoteNotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debitNoteTerms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debit_note_settings`
--

INSERT INTO `debit_note_settings` (`id`, `serialPrefix`, `serialNumberStart`, `debitNoteNotes`, `debitNoteTerms`, `created_at`, `updated_at`) VALUES
(1, 'RLPG-DebitNote-', '001', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text,
  `method` varchar(256) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `invoice_id`, `paymentDate`, `amount`, `balance`, `account_id`, `user_id`, `description`, `method`, `created_at`, `updated_at`) VALUES
(1, 26, '2021-10-06', 1800, 10000, 2, 1, 'first', 'cheque', '2021-10-06', '2021-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_payments`
--

INSERT INTO `purchase_payments` (`id`, `purchase_id`, `paymentDate`, `amount`, `balance`, `account_id`, `user_id`, `description`, `method`, `created_at`, `updated_at`) VALUES
(2, 33, '2021-10-21', 4500, 90000, 2, 1, 'cash', 'cash', '2021-10-21', '2021-10-21'),
(3, 33, '2021-10-21', 4500, 90000, 2, 1, 'cash', 'cash', '2021-10-21', '2021-10-21'),
(4, 33, '2021-10-21', 4500, 85500, 2, 1, 'cash', 'cash', '2021-10-21', '2021-10-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_note_customers`
--
ALTER TABLE `credit_note_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_note_payments`
--
ALTER TABLE `credit_note_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_note_products`
--
ALTER TABLE `credit_note_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_note_settings`
--
ALTER TABLE `credit_note_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_note_dealers`
--
ALTER TABLE `debit_note_dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_note_payments`
--
ALTER TABLE `debit_note_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_note_products`
--
ALTER TABLE `debit_note_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_note_settings`
--
ALTER TABLE `debit_note_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_note_customers`
--
ALTER TABLE `credit_note_customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_note_payments`
--
ALTER TABLE `credit_note_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_note_products`
--
ALTER TABLE `credit_note_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credit_note_settings`
--
ALTER TABLE `credit_note_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debit_notes`
--
ALTER TABLE `debit_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debit_note_dealers`
--
ALTER TABLE `debit_note_dealers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debit_note_payments`
--
ALTER TABLE `debit_note_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_note_products`
--
ALTER TABLE `debit_note_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `debit_note_settings`
--
ALTER TABLE `debit_note_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
