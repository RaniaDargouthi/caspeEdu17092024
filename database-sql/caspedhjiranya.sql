-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 05:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caspedhjiranya`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'This field is filled in the seller''s financial document to find the installment order',
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT 0,
  `tax` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(13,2) DEFAULT NULL,
  `type` enum('addiction','deduction') NOT NULL,
  `type_account` enum('income','asset','subscribe','promotion','registration_package','installment_payment') DEFAULT NULL,
  `store_type` enum('automatic','manual') NOT NULL DEFAULT 'automatic',
  `referred_user_id` int(10) UNSIGNED DEFAULT NULL,
  `is_affiliate_amount` tinyint(1) NOT NULL DEFAULT 0,
  `is_affiliate_commission` tinyint(1) NOT NULL DEFAULT 0,
  `is_registration_bonus` tinyint(1) NOT NULL DEFAULT 0,
  `is_cashback` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`id`, `user_id`, `creator_id`, `order_item_id`, `webinar_id`, `bundle_id`, `meeting_time_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `product_id`, `installment_payment_id`, `installment_order_id`, `gift_id`, `system`, `tax`, `amount`, `type`, `type_account`, `store_type`, `referred_user_id`, `is_affiliate_amount`, `is_affiliate_commission`, `is_registration_bonus`, `is_cashback`, `description`, `created_at`) VALUES
(251, 996, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1625944212),
(252, 996, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 165.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for 1:30 hours of consultation', 1625944347),
(253, 996, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 15.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625944347),
(254, 1015, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 120.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625944347),
(255, 1015, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 30.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625944347),
(256, 930, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 600.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'Gifts from the platform', 1625950715),
(257, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1000.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1625950749),
(258, 995, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for 1:00 hours of consultation', 1625952630),
(259, 995, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625952630),
(260, 934, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625952630),
(261, 934, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625952630),
(262, 995, NULL, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1625953197),
(263, 995, NULL, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625953198),
(264, 4, NULL, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625953198),
(265, 4, NULL, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625953198),
(266, 979, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 400.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1625992548),
(267, 995, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 137.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for 1:15 hours of consultation', 1625996816),
(268, 995, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 12.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625996817),
(269, 1015, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625996817),
(270, 1015, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 25.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625996817),
(271, 995, NULL, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1625996942),
(272, 995, NULL, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625996943),
(273, 929, NULL, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 45.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625996943),
(274, 929, NULL, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625996943),
(275, 995, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1625996979),
(276, 995, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625996979),
(277, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625996979),
(278, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625996979),
(279, 995, NULL, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 17.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1625997105),
(280, 995, NULL, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1625997106),
(281, 3, NULL, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 14.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1625997106),
(282, 3, NULL, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1625997106),
(283, 996, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.75, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626060488),
(284, 996, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626060488),
(285, 867, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626060488),
(286, 867, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626060488),
(287, 996, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 44.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626060553),
(288, 996, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626060553),
(289, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 32.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626060553),
(290, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626060553),
(291, 930, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626060836),
(292, 930, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626060837),
(293, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626060837),
(294, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626060837),
(295, 1015, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 332.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Payout request', 1626061220),
(296, 979, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 66.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626061333),
(297, 979, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 6.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626061334),
(298, 929, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 54.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626061334),
(299, 929, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626061334),
(300, 979, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 22.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626061374),
(301, 979, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626061374),
(302, 863, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626061374),
(303, 863, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626061374),
(304, 979, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626061375),
(305, 979, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626061376),
(306, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626061376),
(307, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626061376),
(308, 995, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 22.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626061450),
(309, 995, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626061451),
(310, 995, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'subscribe', 'automatic', NULL, 0, 0, 0, 0, 'Income for Subscribe', 1626061451),
(311, 867, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061483),
(312, 1, NULL, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061483),
(313, 929, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061490),
(314, 1, NULL, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061490),
(315, 863, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061494),
(316, 1, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Subscribe', 1626061494),
(317, 1015, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1626132570),
(318, 1015, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 17.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626132845),
(319, 1015, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626132845),
(320, 863, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 12.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626132845),
(321, 863, NULL, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626132845),
(322, 929, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1626241074),
(323, 929, NULL, NULL, 2004, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626241152),
(324, 929, NULL, NULL, 2004, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626241153),
(325, 929, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, 0, 50.00, 'addiction', 'promotion', 'automatic', NULL, 0, 0, 0, 0, 'Paid for Promotion', 1626241153),
(326, 929, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626241213),
(327, 929, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626241214),
(328, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626241214),
(329, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626241214),
(330, 995, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for 1:00 hours of consultation', 1626247196),
(331, 995, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626247196),
(332, 870, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626247196),
(333, 870, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626247196),
(334, 995, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Refunded to Buyer', 1626247245),
(335, NULL, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Refunded Tax', 1626247245),
(336, 870, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Refunded Income', 1626247245),
(337, 870, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Refunded Commission to Seller', 1626247245),
(338, 870, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Refunded Commission', 1626247245),
(339, 996, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 29.70, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1626508957),
(340, 996, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.70, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1626508957),
(341, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1626508957),
(342, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1626508957),
(343, 930, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 250.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1628704280),
(344, 923, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1628704284),
(345, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1628704378),
(346, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1628704382),
(347, 996, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'offline payment approved', 1628704397),
(348, 929, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1635412197),
(349, 929, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1635412197),
(350, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1635412197),
(351, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1635412197),
(352, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', 1017, 1, 0, 0, 0, 'public.get_amount_from_referral', 1639378855),
(353, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 80.00, 'deduction', 'income', 'automatic', 1017, 1, 0, 0, 0, 'public.get_amount_from_referral', 1639378855),
(354, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 50.00, 'addiction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'public.get_amount_from_referral', 1639378855),
(355, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 50.00, 'deduction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'public.get_amount_from_referral', 1639378855),
(356, 1017, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'charging for test', 1639379205),
(357, 1017, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1639379284),
(358, 1017, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1639379285),
(359, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1639379285),
(360, 867, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1639379285),
(361, 1015, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.50, 'addiction', 'income', 'automatic', 1017, 0, 1, 0, 0, 'public.get_commission_from_referral', 1639379285),
(362, 1017, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1639379351),
(363, 1017, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1639379352),
(364, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1639379352),
(365, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 15.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1639379352),
(366, 1015, NULL, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5.00, 'addiction', 'income', 'automatic', 1017, 0, 1, 0, 0, 'public.get_commission_from_referral', 1639379352),
(367, 1017, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form Credit', 1639379394),
(368, 1017, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form Buyer', 1639379395),
(369, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1639379395),
(370, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Commission from Seller', 1639379395),
(371, 1015, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.50, 'addiction', 'income', 'automatic', 1017, 0, 1, 0, 0, 'public.get_commission_from_referral', 1639379395),
(372, 995, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646172087),
(373, 995, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646172087),
(374, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1646172087),
(375, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Get Commission From Seller', 1646172087),
(376, 996, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 9.90, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646172124),
(377, 996, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.90, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646172124),
(378, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1646172124),
(379, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Get Commission From Seller', 1646172124),
(380, 979, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646172160),
(381, 979, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646172160),
(382, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1646172160),
(383, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Get Commission From Seller', 1646172160),
(384, 929, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646172296),
(385, 929, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646172297),
(386, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1646172297),
(387, 1015, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Get Commission From Seller', 1646172297),
(388, 995, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 825.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid for 1:00 hours of consultation', 1646379290),
(389, 995, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 75.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646379290),
(390, 1015, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 600.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Income Sale', 1646379290),
(391, 1015, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 150.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Get Commission From Seller', 1646379290),
(392, 867, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'gift', 1646381415),
(393, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, 0, 218.90, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646386792),
(394, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, 1, 19.90, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646386797),
(395, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, 0, 199.00, 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 0, 0, 'Paid For Registration Package', 1646386797),
(396, 859, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'Charge for the test.', 1646387608),
(397, 859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, 0, 220.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid Form Credit', 1646387660),
(398, 859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, 1, 20.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax Get Form Buyer', 1646387660),
(399, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 1, 0, 200.00, 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 0, 0, 'Paid For Registration Package', 1646387660),
(400, 930, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656083263),
(401, 930, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656083263),
(402, 1015, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656083263),
(403, 1015, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656083263),
(404, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, 0, 5.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656103844),
(405, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, 1, 0.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656103844),
(406, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656103844),
(407, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 1, 0, 1.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656103844),
(408, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 31.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656104131),
(409, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656104132),
(410, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 27.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656104132),
(411, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 0, 2.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656104132),
(412, 996, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 39.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656130482),
(413, 996, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656130482),
(414, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 28.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656130482),
(415, 864, NULL, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 7.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656130482),
(416, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 0, 314.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656130707),
(417, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 1, 14.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656130707),
(418, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 0, 271.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656130707),
(419, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 0, 29.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656130707),
(420, 996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, 0, 78.75, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656130963),
(421, 996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, 1, 3.75, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656130964),
(422, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, 0, 60.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656130964),
(423, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0, 15.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656130964),
(424, 979, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.80, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656139704),
(425, 979, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.80, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656139705),
(426, 934, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656139705),
(427, 934, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656139705),
(428, 979, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 27.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656139705),
(429, 979, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656139706),
(430, 929, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656139706),
(431, 929, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656139706),
(432, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 26.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656148574),
(433, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656148574),
(434, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 23.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656148574),
(435, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656148574),
(436, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'Gift Balance', 1656148789),
(437, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 52.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656148838),
(438, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 2.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656148838),
(439, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 45.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656148838),
(440, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656148838),
(441, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, 0, 17.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1656322658),
(442, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1656322658),
(443, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, 0, 12.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1656322658),
(444, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 1, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1656322658),
(739, 870, NULL, NULL, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1678915553),
(740, 870, NULL, NULL, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1678915553),
(744, 979, NULL, 694, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, 39.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1678919437),
(745, 979, NULL, 694, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 1, 3.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1678919437),
(746, 929, NULL, 694, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 32.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1678919437),
(747, 929, NULL, 694, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1678919437),
(788, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', 1045, 1, 0, 0, 0, 'Affiliate income', 1678958778),
(789, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'deduction', 'income', 'automatic', 1045, 1, 0, 0, 0, 'Affiliate income', 1678958778),
(790, 1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'Affiliate income', 1678958778),
(791, 1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'deduction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'Affiliate income', 1678958778),
(792, 1045, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 150.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 0, 0, 'test', 1678959187),
(793, 1045, NULL, 701, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1678959222),
(794, 1045, NULL, 701, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1678959222),
(795, 870, NULL, 701, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1678959222),
(796, 870, NULL, 701, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 15.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1678959222),
(797, 995, NULL, 701, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5.00, 'addiction', 'income', 'automatic', 1045, 0, 1, 0, 0, 'Affiliate income', 1678959222),
(798, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', 1046, 1, 0, 0, 0, 'Affiliate income', 1678959533),
(799, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'deduction', 'income', 'automatic', 1046, 1, 0, 0, 0, 'Affiliate income', 1678959533),
(800, 1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'Affiliate income', 1678959533),
(801, 1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'deduction', 'income', 'automatic', NULL, 1, 0, 0, 0, 'Affiliate income', 1678959533),
(805, 930, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 39.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1678961218),
(806, 930, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1678961218),
(807, 929, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 32.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1678961218),
(808, 929, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1678961218),
(809, 930, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 1, 'Cashback For Course', 1678961218),
(810, 930, NULL, 703, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 1, 'Cashback For Course', 1678961218),
(812, 870, NULL, NULL, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1678961558),
(816, 979, NULL, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1678961652),
(817, 979, NULL, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1678961652),
(818, 1045, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Paid form credit', 1679088431),
(819, 1045, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 0, 'Tax form buyer', 1679088431),
(820, 867, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1679088431),
(821, 867, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1679088431),
(822, 995, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.50, 'addiction', 'income', 'automatic', 1045, 0, 1, 0, 0, 'Affiliate income', 1679088431),
(823, 1045, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 1, 'Cashback For Course', 1679088431),
(824, 1045, NULL, 705, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 1, 'Cashback For Course', 1679088431),
(828, 995, NULL, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1685783051),
(829, 995, NULL, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1685783051),
(830, 870, NULL, NULL, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Sales income', 1685783075),
(831, 870, NULL, NULL, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 0, 0, 'Seller commission', 1685783075),
(835, 930, NULL, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1685783153),
(836, 930, NULL, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 0, 1, NULL, 1685783153);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners`
--

CREATE TABLE `advertising_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` enum('home1','home2','course','course_sidebar','product_show','bundle','bundle_sidebar') NOT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT 12,
  `link` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertising_banners`
--

INSERT INTO `advertising_banners` (`id`, `position`, `size`, `link`, `published`, `created_at`) VALUES
(2, 'home1', 12, '/login', 1, 1607885353),
(3, 'home2', 6, '/certificate_validation', 1, 1607885656),
(4, 'home2', 6, '/instructors', 1, 1607885681),
(6, 'course_sidebar', 12, '/instructors', 1, 1607886391),
(7, 'course_sidebar', 12, '/certificate_validation', 1, 1607886440),
(8, 'product_show', 12, '/products', 1, 1656569687),
(9, 'bundle_sidebar', 12, '/classes?type[]=bundle', 1, 1656571896);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners_translations`
--

CREATE TABLE `advertising_banners_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `advertising_banner_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_banners_translations`
--

INSERT INTO `advertising_banners_translations` (`id`, `advertising_banner_id`, `locale`, `title`, `image`) VALUES
(1, 2, 'en', 'Home - Join as instructor', '/store/1/default_images/banners/become_instructor_banner.png'),
(2, 3, 'en', 'Certificate validation - Home', '/store/1/default_images/banners/validate_certificates_banner.png'),
(3, 4, 'en', 'Reserve a meeting - Home', '/store/1/default_images/banners/reserve_a_meeting.png'),
(4, 6, 'en', 'Reserve a meeting - Course page', '/store/1/default_images/banners/reserve_a_meeting.png'),
(5, 7, 'en', 'Certificate validation - Course page', '/store/1/default_images/banners/validate_certificates_banner.png'),
(7, 2, 'ar', 'الصفحة الرئيسية - انضم كمدرس', '/store/1/default_images/banners/become_instructor_banner_ar.png'),
(8, 2, 'es', 'Inicio - Únete como instructora', '/store/1/default_images/banners/become_instructor_banner_es.png'),
(9, 3, 'ar', 'التحقق من صحة الشهادة - الصفحة الرئيسية', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(10, 3, 'es', 'Validación de certificados - Inicio', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(11, 4, 'ar', 'حجز اجتماع - الصفحة الرئيسية', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(12, 4, 'es', 'Reservar una reunión - Inicio', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(13, 6, 'ar', 'حجز اجتماع - صفحة الدورة', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(14, 6, 'es', 'Reservar una reunión - página del curso', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(15, 7, 'ar', 'التحقق من صحة الشهادة - صفحة الدورة', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(16, 7, 'es', 'Validación del certificado - página del curso', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(17, 8, 'en', 'Store - Product page', '/store/1/default_images/banners/store_en.png'),
(18, 8, 'ar', 'المتجر - صفحة المنتج', '/store/1/default_images/banners/store_ar.png'),
(19, 8, 'es', 'Tienda - Página del producto', '/store/1/default_images/banners/store_es.png'),
(20, 9, 'en', 'Course Bundle - Sidebar', '/store/1/default_images/banners/bundle_en.png'),
(21, 9, 'ar', 'حزمة الدورة - الشريط الجانبي', '/store/1/default_images/banners/bundle_ar.png'),
(22, 9, 'es', 'Paquete de cursos - Barra lateral', '/store/1/default_images/banners/bundle_es.png');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(10) UNSIGNED NOT NULL,
  `affiliate_user_id` int(10) UNSIGNED NOT NULL,
  `referred_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_codes`
--

CREATE TABLE `affiliates_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agora_history`
--

CREATE TABLE `agora_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `start_at` int(10) UNSIGNED NOT NULL,
  `end_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_contents`
--

CREATE TABLE `ai_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_type` enum('text','image') NOT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `prompt` text DEFAULT NULL,
  `result` text DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_contents`
--

INSERT INTO `ai_contents` (`id`, `user_id`, `service_type`, `service_id`, `keyword`, `language`, `prompt`, `result`, `created_at`) VALUES
(1, 1, 'text', 5, 'Laravel', 'English', 'Generate a text with the Laravel subject in English language with less than 100 word for a blog short description.', '{\"text\":\"Discover the power of Laravel \\u2013 an elegant and intuitive PHP framework designed for web artisans. With its extensive set of tools and libraries, Laravel empowers developers to create robust and scalable web applications with ease. Whether you\\u2019re a beginner or a seasoned professional, delve into the world of Laravel and unlock unparalleled efficiency and productivity in your coding journey. Join us as we explore the wonders of Laravel and its seamless integration capabilities, making web development a breeze.\",\"images\":[]}', 1694943786);

-- --------------------------------------------------------

--
-- Table structure for table `ai_content_templates`
--

CREATE TABLE `ai_content_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('text','image') NOT NULL,
  `enable_length` tinyint(1) NOT NULL DEFAULT 0,
  `length` int(10) UNSIGNED DEFAULT NULL,
  `image_size` enum('256','512','1024') DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_content_templates`
--

INSERT INTO `ai_content_templates` (`id`, `type`, `enable_length`, `length`, `image_size`, `enable`, `created_at`) VALUES
(1, 'text', 1, 5, NULL, 1, 1694939030),
(2, 'text', 1, 40, NULL, 1, 1694940999),
(3, 'text', 1, 300, NULL, 1, 1694941070),
(4, 'text', 1, 5, NULL, 1, 1694941199),
(5, 'text', 1, 100, NULL, 1, 1694941500),
(6, 'text', 1, 300, NULL, 1, 1694941560),
(7, 'image', 0, NULL, '512', 1, 1694942113),
(8, 'text', 1, 160, NULL, 1, 1694942972),
(9, 'text', 1, 160, NULL, 1, 1694970677),
(10, 'text', 1, 300, NULL, 1, 1694970808),
(11, 'text', 1, 150, NULL, 1, 1694971282),
(12, 'text', 0, NULL, NULL, 1, 1694994114),
(13, 'text', 0, NULL, NULL, 1, 1694994456),
(14, 'text', 1, 200, NULL, 1, 1694994762),
(15, 'text', 1, 200, NULL, 1, 1694995011),
(16, 'text', 1, 300, NULL, 1, 1694995299),
(17, 'text', 1, 100, NULL, 1, 1694995502),
(18, 'text', 1, 5, NULL, 1, 1695024064),
(19, 'text', 1, 300, NULL, 1, 1695024166),
(20, 'text', 1, 160, NULL, 1, 1695024265);

-- --------------------------------------------------------

--
-- Table structure for table `ai_content_template_translations`
--

CREATE TABLE `ai_content_template_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `ai_content_template_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) NOT NULL,
  `prompt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_content_template_translations`
--

INSERT INTO `ai_content_template_translations` (`id`, `ai_content_template_id`, `locale`, `title`, `prompt`) VALUES
(1, 1, 'en', 'Course Title', 'Generate a text with the [keyword] subject in [language] language with less than [length] word for a course title.'),
(2, 2, 'en', 'Course Short Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words.'),
(3, 3, 'en', 'Course Long Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words.'),
(4, 4, 'en', 'Blog Title', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a blog title.'),
(5, 5, 'en', 'Blog Short Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a blog short description.'),
(6, 6, 'en', 'Blog Long Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a blog description.'),
(7, 7, 'en', 'Genrate Image', 'Generate an image with the [keyword] subject.'),
(8, 8, 'en', 'Course SEO Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a course SEO description.'),
(9, 9, 'en', 'Blog SEO Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a blog SEO description.'),
(10, 10, 'en', 'Upcoming Course Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for an upcoming course.'),
(11, 11, 'en', 'Quiz Question', 'Generate a question with the [keyword] subject in the [language] language with less than [length] words.'),
(12, 12, 'en', 'Generate FAQ', 'Generate a faq with the [keyword] subject in the [keyword] language.'),
(13, 13, 'en', 'Course Requirements', 'Generate requirements for a course with [keyword] subject in [language].'),
(14, 14, 'en', 'Form Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a form description.'),
(15, 15, 'en', 'Course Advertising Description', 'Generate a text with the [keyword] subject in [language] with less than [length] words for a course advertising description.'),
(16, 16, 'en', '\"About Us\" Page Description', 'Generate a text with the [keyword] subject in [language] with less than [length] words for the \"About Us\" page description.'),
(17, 17, 'en', 'Generate Notice', 'Generate a text with the [keyword] subject in [language] with less than [length] words for notice.'),
(18, 18, 'en', 'Store Product Title', 'Generate a text with the [keyword] subject in [language] language with less than [length] word for a product title.'),
(19, 19, 'en', 'Store Product Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a store product description.'),
(20, 20, 'en', 'Store Product SEO Description', 'Generate a text with the [keyword] subject in the [language] language with less than [length] words for a store product  SEO description.');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` enum('register_date','course_count','course_rate','sale_count','support_rate','product_sale_count','make_topic','send_post_in_topic','instructor_blog') NOT NULL,
  `condition` varchar(128) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `image`, `type`, `condition`, `score`, `created_at`) VALUES
(21, '/store/1/default_images/badges/new_user.png', 'register_date', '{\"from\":\"1\",\"to\":\"30\"}', 5, 1625553769),
(22, '/store/1/default_images/badges/loyal_user.png', 'register_date', '{\"from\":\"31\",\"to\":\"365\"}', 10, 1625554171),
(23, '/store/1/default_images/badges/faithful_user.png', 'register_date', '{\"from\":\"365\",\"to\":\"1000\"}', 15, 1625554495),
(24, '/store/1/default_images/badges/junior_vendor.png', 'course_count', '{\"from\":\"1\",\"to\":\"1\"}', 10, 1625554772),
(25, '/store/1/default_images/badges/senior_vendor.png', 'course_count', '{\"from\":\"2\",\"to\":\"2\"}', 20, 1625554960),
(26, '/store/1/default_images/badges/expert_vendor.png', 'course_count', '{\"from\":\"3\",\"to\":\"6\"}', 30, 1625555421),
(27, '/store/1/default_images/badges/bronze_classes.png', 'course_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625556048),
(28, '/store/1/default_images/badges/silver_classes.png', 'course_rate', '{\"from\":\"3\",\"to\":\"4\"}', 10, 1625556159),
(29, '/store/1/default_images/badges/golden_classes.png', 'course_rate', '{\"from\":\"4\",\"to\":\"5\"}', 50, 1625556284),
(30, '/store/1/default_images/badges/best_seller.png', 'sale_count', '{\"from\":\"1\",\"to\":\"2\"}', NULL, 1625557021),
(31, '/store/1/default_images/badges/top_seller.png', 'sale_count', '{\"from\":\"3\",\"to\":\"9\"}', 20, 1625557247),
(32, '/store/1/default_images/badges/king_seller.png', 'sale_count', '{\"from\":\"10\",\"to\":\"20\"}', 50, 1625558061),
(33, '/store/1/default_images/badges/good_support.png', 'support_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625558473),
(34, '/store/1/default_images/badges/amazing_support.png', 'support_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625558682),
(35, '/store/1/default_images/badges/fantastic_support.png', 'support_rate', '{\"from\":\"4\",\"to\":\"5\"}', 20, 1625558892),
(36, '/store/1/default_images/badges/Best Store Seller.svg', 'product_sale_count', '{\"from\":\"5\",\"to\":\"9\"}', 5, 1656145531),
(37, '/store/1/default_images/badges/King Store Seller.svg', 'product_sale_count', '{\"from\":\"10\",\"to\":\"15\"}', 10, 1656145677),
(38, '/store/1/default_images/badges/Forums Top User.svg', 'make_topic', '{\"from\":\"1\",\"to\":\"5\"}', 10, 1656145989),
(39, '/store/1/default_images/badges/Forums Best User.svg', 'make_topic', '{\"from\":\"6\",\"to\":\"10\"}', 15, 1656146136),
(40, '/store/1/default_images/badges/Loyal Writer.svg', 'instructor_blog', '{\"from\":\"5\",\"to\":\"10\"}', 20, 1656146397),
(41, '/store/1/default_images/badges/Forums Loyal User.svg', 'send_post_in_topic', '{\"from\":\"20\",\"to\":\"30\"}', 10, 1656146689);

-- --------------------------------------------------------

--
-- Table structure for table `badge_translations`
--

CREATE TABLE `badge_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badge_translations`
--

INSERT INTO `badge_translations` (`id`, `badge_id`, `locale`, `title`, `description`) VALUES
(1, 21, 'en', 'New User', '1 Month of Membership'),
(2, 22, 'en', 'Loyal User', '1 year of Membership'),
(3, 23, 'en', 'Faithful User', 'Old Membership'),
(4, 24, 'en', 'Junior Vendor', 'Has 1 Class'),
(5, 25, 'en', 'Senior Vendor', 'Has 2 Classes'),
(6, 26, 'en', 'Expert Vendor', 'Has 3 to 6 Classes'),
(7, 27, 'en', 'Bronze Classes', 'Classes Rating from 2 to 3'),
(8, 28, 'en', 'Silver Classes', 'Classes Rating from 3 to 4'),
(9, 29, 'en', 'Golden Classes', 'Classes Rating from 4 to 5'),
(10, 30, 'en', 'Best Seller', 'Classes Sales from 1 to 2'),
(11, 31, 'en', 'Top Seller', 'Classes Sales from 3 to 9'),
(12, 32, 'en', 'King Seller', 'Classes Sales from 10 to 20'),
(13, 33, 'en', 'Good Support', 'Support Rating from 2 to 3'),
(14, 34, 'en', 'Amazing Support', 'Support Rating from 3 to 4'),
(15, 35, 'en', 'Fantastic Support', 'Support Rating from 4 to 5'),
(16, 36, 'en', 'Store Best Seller', 'Store Products Sales from 1 to 5'),
(17, 37, 'en', 'Store King Seller', 'Store Products Sales from 6 to 15'),
(18, 38, 'en', 'Forums Top User', 'Has 2 to 5 Topics'),
(19, 39, 'en', 'Forums Best User', 'Has 6 to 10 Topics'),
(20, 40, 'en', 'Loyal Writer', 'Has 5 to 10 Articles'),
(21, 41, 'en', 'Forum Loyal User', 'Has 20 to 30 Posts in Forums');

-- --------------------------------------------------------

--
-- Table structure for table `become_instructors`
--

CREATE TABLE `become_instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role` enum('teacher','organization') NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','accept','reject') NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `visit_count` int(10) UNSIGNED DEFAULT 0,
  `enable_comment` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('pending','publish') NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `author_id`, `slug`, `image`, `visit_count`, `enable_comment`, `status`, `created_at`, `updated_at`) VALUES
(21, 34, 1014, 'How-To-Teach-Your-Kid-Anything-Easily', '/store/1/default_images/blogs/blog1.jpg', 91, 1, 'publish', 1625091953, 1656136960),
(22, 37, 1014, 'Better-Relationship-Between-You-and-Your-Student-s-Parent', '/store/1/default_images/blogs/blog2.jpg', 78, 1, 'publish', 1625093279, 1645386787),
(23, 36, 1, '3-Laws-to-Become-a-Straight-A-Student', '/store/1014/blog3.jpg', 86, 1, 'publish', 1625094412, 1656136976);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`) VALUES
(33, 'Announcements', 'Vel-consequatur'),
(34, 'Articles', 'Facilis-ea'),
(36, 'Events', 'Fugit-dignissimos-possimus'),
(37, 'News', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `locale`, `title`, `description`, `content`, `meta_description`) VALUES
(2, 21, 'en', 'How To Teach Your Kid Easily', '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.'),
(3, 22, 'en', 'Better Relationship Between Friends', '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.'),
(4, 23, 'en', 'Become a Straight-A Student', '<p>In this article, I’ll explain the two rules I followed to become a straight-A student. If you take my advice, you’ll get better grades and lead a more balanced life too.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'In this article, I’ll explain the two rules I followed to become a straight-A student.'),
(5, 21, 'ar', 'كيف تعلم طفلك أي شيء بسهولة', '<p style=\"text-align: right; \">الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين. بدأت في تدريس الرياضيات بسبب اليأس المالي.</p>', '<p style=\"text-align: right; \">بدأت في تدريس الرياضيات بسبب اليأس المالي. لقد طُردت للتو من وظيفتي كنادل ، ومعظم عمليات التدقيق اللغوي في الوظائف في نيويورك تم الاستعانة بمصادر خارجية للهند ، وللمرة الثالثة في حياتي ، كنت أواجه فقرًا مدقعًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان المبلغ الذي نسيته مذهلاً في البداية ، وقد تفوقت في الرياضيات طوال حياتي الأكاديمية. إذا كنت لا تستخدمها ، فأنت تخسرها حقًا ، لذلك ليس من المستغرب أن يبكي معظم الآباء عمي في الرياضيات في الصف الرابع تقريبًا. إنهم لا يتذكرون ولا يريدون أن يتذكروا ، مما يديم هذا الموقف لدى أطفالهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تخيل أنك تفعل أي شيء ، حتى لو كنت بارعًا فيه ، بما يعادل عملاقًا يلوح في الأفق خلفك ويفحص كل تحركاتك. وهذا هو ما يفعله الآباء لأطفالهم. إنهم يحومون وينقضون على كل خطأ.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">1) تعاطف مع أطفالك</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في جلستي الأولى مع تلميذي الأول ، تراجعت والدته بعصبية خلفنا ، ثم اتصلت بي لمدة خمس دقائق. سألت إذا لاحظت أن ابنها قد أجاب على السؤال الأخير بشكل غير صحيح ، ورأيت على الفور جوهر المشكلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عليك أن ترتاح وتسترخي حتى يكون طفلك مرتاحًا وتنتظر حتى النهاية قبل أن تبدأ في تصحيح أي شيء. هذه هي الطريقة التي يتعلم بها الأطفال التحقق من عملهم ، وأن ارتكاب الأخطاء ليس مشكلة كبيرة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الأخطاء لا مفر منها ، ولكن كيفية التعامل معها ليست كذلك. إذا كنت تريد أن يشعر ابنك بالرعب إلى الأبد من الرياضيات ، إذن ، بكل الوسائل ، استمر في الازدحام ومقاطعته على الدوام. من المحتمل أن تجعلهم حذرين من محاولة تعلم أي شيء على الإطلاق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">2) إعطاء نفسك وأطلق عليه الرصاص</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لحسن الحظ ، فهمت هذه الأم ومعظم الآباء الآخرين ما كنت أفعله ، وأدركوا تواطؤهم في كفاح أطفالهم. بعد تلك الجلسة الأولى ، تركتنا أمي وشأننا ، وبدأ طفلها في التحسن على الفور.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تم تشجيع والديه لدرجة أنهم سألوا عما إذا كان بإمكاني المساعدة في مواضيع أخرى. كان التاريخ والعلوم واللغة الإنجليزية داخل غرفة قيادتي ، لكن الطفل ذهب إلى مدرسة كاثوليكية وكان عليه أن يتعلم اللاتينية.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">استعرت نسخة من كتابه اللاتيني وأصيبت بالإحباط تمامًا. اللغة اللاتينية محيرة ، خاصة في البداية. هذا العدد الكبير من الإقتران، ومسألة السياق. الطريقة التي تتحدث بها إلى النبلاء والأقران والعبيد تشبه عمليًا تعلم ثلاث لغات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما زلت مفلسة ، وهذا يعني المزيد من المال. وهل كان علي بالفعل معرفة اللاتينية؟ كل ما كان علي فعله هو البقاء قبل الطفل ببضعة أيام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">3) كن صادقا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">حالتنا الافتراضية هي إنكار جهلنا ، خاصة أمام الأطفال. نحن دفاعيون ورفضون ، ويمكن لمعظم الأطفال أن يقولوا إنك ضائع مثلهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان الحل هو الاعتراف بذلك منذ البداية. سألني الطفل عن وجهة نظر تعلم اللاتينية وأخبرته أنني لا أعرف. من المفترض أنه ساعد مع لغات أخرى ، لكن ربما يمكنه استخدامه يومًا ما لإثارة إعجاب الأشخاص الطنانين في حفلات الكوكتيل. سألني لماذا تكسر بعض الأفعال أنماط الاقتران ، وقلت له إنها طريقة القدماء في تعذيبنا.</p><p style=\"text-align: right; \">عندما كان طفلاً صغيرًا ، كان يتعلم اللغة أسرع مني ، لكنه كان يواجه صعوبة أكبر في بعض التفاصيل الدقيقة. كانت هناك أوقات حيرتني فيها وأتحدث بصوت عالٍ أمامه.</p><p style=\"text-align: right; \">أنا مدرس رياضيات. ما الذي جعلني أعتقد أنني مستعد لتدريس اللاتينية ، ناهيك عن تعلمها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قال لي الطفل إنني أبدو جيدًا في كل شيء آخر ، لذا من المحتمل أن أفهم ذلك ، لكن كان هناك القليل من القلق في صوته. كلما فعلت الأسوأ ، زاد احتمال فشله ، وأراد إخراج اللاتينية من حياته أكثر مما فعلت.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد قربنا كراهيتنا المتبادل للغة اللاتينية من بعضنا البعض. لأول مرة ، أدرك كلانا أننا في هذا معًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">4) التعامل مع أولياء الأمور والمعلمين هو جزء من التعليم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">مع تقدمه في السن ، بدأ يسألني عن والديه ، اللذين كانا من المحافظين في قناة فوكس نيوز. قال لي انه يمكن ان نرى انهم منحازون، ولكن لم أفهم لماذا، أو أعرف ما يفكر.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أخبرته أن يفكر بنفسه ويعترف عندما لا يعرف شيئًا ، وأنه لا يجب أن يخشى تغيير رأيه في ضوء أدلة جديدة صحيحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">واشتكى أساتذته، واحد منهم لم يكن سعيدا كنت قد علمته الطرق المختلفة لعلم الجبر. في نهاية المطاف، وعلم أنه كيفية القيام بذلك بطريقة المعلم، ولكن عنيدا حاجة سبيلا آخر للوصول إلى هناك. كنا غاضبين بعض الشيء ، لكنني أخبرته أن تعلم التعامل مع المعلمين هو جزء من التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">احتفظت بالضغينة لنفسي ، لكنني أردت أيضًا خنق معلمه. وكان هذا الطفل قد ذهب من متوسط ​​D إلى B +، وكان هذا المعلم لا يزال يطارد له. ولا عجب في ذلك كثير من الناس رديء في الرياضيات - الآباء والامهات والمعلمين ضدهم وحتى لم يدرك ذلك.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">5) احتضان موقف التعلم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذا لم تكن على استعداد للتعلم ، فسيكون من الصعب تدريسه ، والخطوة الأولى هي قبول مدى ضآلة معرفتنا. من النفاق أن تنقض على ابنك عندما لا تتمكن من أداء واجبه المنزلي أيضًا ، ويلاحظ الأطفال ذلك ويشعرون بحق أنك غير عادل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">التعلم الإلكتروني) سيحسن إدراكك بشكل عام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القراءة والرياضيات مهارات أساسية ، وتعلم الرياضيات أمر متواضع. في حين أن هناك القليل من الأدلة التي تدعم أن الرياضيات تحسن التفكير بشكل عام ، فأنت بحاجة إليها لفهم العلوم ، وعندما تشعر بالحيرة تجاه الكثير من الواجبات المدرسية لطفلك في المدرسة الابتدائية ، فإن القليل على الأقل من عدم اليقين يخترق آرائك. أنت تدرك أنك لا تعرف الكثير كما كنت تعتقد ، وبالنسبة لمعظم الناس ، يمكن أن يمثل هذا بداية جديدة. مع انحسار الصلابة ، تعاود اللدونة الظهور ، وعادات التعلم مدى الحياة هي أثمن هدية يمكن أن تقدمها لنفسك ولطفلك.إذا اخترت أن يكون الأطفال، يجب أن يكون لديك الاولوية رقم واحد، وسوف يفاجأ في مقدار التعلم (أو ص</p>', 'الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين.'),
(6, 21, 'es', 'Cómo enseñar a tu hija cualquier cosa fácilmente', '<p>La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres. Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p>', '<p>Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p><p><br></p><p>La cantidad que había olvidado fue sorprendente al principio, y había sobresalido en matemáticas durante toda mi vida académica. Si no lo usas, realmente lo pierdes, así que no es de extrañar que la mayoría de los padres lloren a tío en matemáticas de cuarto grado. No recuerdan y no quieren recordar, perpetuando esta actitud en sus hijos.</p><p><br></p><p>Imagínese haciendo cualquier cosa, incluso algo en lo que se le da bien, con el equivalente a un gigante acechando detrás de usted y escudriñando cada uno de sus movimientos. Esto es lo que les hacen los padres a sus hijos. Se ciernen y se abalanzan sobre cada error.</p><p><br></p><p>1) Tenga empatía por sus hijos</p><p><br></p><p>En mi primera sesión con mi primer alumno, su madre se escondió nerviosamente detrás de nosotros, luego me llamó unos cinco minutos después. Me preguntó si noté que su hijo había respondido la última pregunta incorrectamente, e inmediatamente vi la esencia del problema.</p><p><br></p><p>Tienes que descansar y relajarte para que tu hijo se sienta cómodo y esperar hasta el final antes de empezar a corregir algo. Así es como los niños aprenden a controlar su trabajo y que cometer errores no es gran cosa.</p><p><br></p><p>Los errores son inevitables, pero la forma en que los manejamos no lo es. Si quiere que su hijo esté eternamente aterrorizado por las matemáticas, entonces, por supuesto, continúe apiñándolos e interrumpiéndolos perpetuamente. Lo más probable es que los haga desconfiar de intentar aprender algo.</p><p><br></p><p>2) Date una oportunidad</p><p><br></p><p>Afortunadamente, esta madre y la mayoría de los otros padres entendieron lo que estaba haciendo y reconocieron su complicidad en las luchas de sus hijos. Después de esa primera sesión, mamá nos dejó solos y su hijo comenzó a mejorar de inmediato.</p><p><br></p><p>Sus padres estaban tan animados que me preguntaron si podía ayudar con otros temas. La historia, la ciencia y el inglés estaban a mi alcance, pero el niño fue a una escuela católica y tuvo que aprender latín.</p><p><br></p><p>Pedí prestada una copia de su libro en latín y me desmoralicé por completo. El latín es desconcertante, especialmente al principio. Tantas conjugaciones y contexto son importantes. La forma de hablar con nobles, compañeros y esclavos es prácticamente como aprender tres idiomas diferentes.</p><p><br></p><p>Aún así, estaba arruinado y esto significaría más dinero. ¿Y realmente tenía que saber latín? Todo lo que tenía que hacer era quedarme unos días por delante del chico.</p><p><br></p><p>3) Sea honesto</p><p><br></p><p>Nuestro estado predeterminado es negar nuestra ignorancia, especialmente frente a los niños. Estamos a la defensiva y desdeñosos, y la mayoría de los niños pueden decir que estás tan perdido como ellos.</p><p><br></p><p>Mi solución fue admitir esto desde el principio. El niño me preguntó qué sentido tenía aprender latín y le dije que no lo sabía. Supuestamente le ayudó con otros idiomas, pero tal vez algún día podría usarlo para impresionar a personas pretenciosas en los cócteles. Me preguntó por qué algunos verbos rompían los patrones de conjugación y le dije que era la forma de los antiguos de torturarnos.</p><p><br></p><p>Cuando era niño, aprendió el idioma más rápido que yo, pero tuvo más dificultades con algunas de las sutilezas. Hubo momentos en que estaba desconcertado y me hablaba en voz alta frente a él.</p><p><br></p><p>Soy un tutor de matemáticas. ¿Qué diablos me hizo pensar que estaba equipado para enseñar latín, y mucho menos aprenderlo?</p><p><br></p><p>El chico me dijo que parecía ser bastante bueno en todo lo demás, así que probablemente lo entendería, pero había un matiz de preocupación en su voz. Cuanto peor lo hacía, más probabilidades había de que fracasara, y quería que el latín fuera de su vida incluso más que yo.</p><p><br></p><p>Nuestro odio mutuo por el latín nos acercó más. Por primera vez, ambos comprendimos que estábamos juntos en esto.</p><p><br></p><p>4) Tratar con padres y maestros es parte de la educación</p><p><br></p><p>A medida que crecía, empezó a preguntarme sobre sus padres, que eran conservadores de Fox News. Me dijo que podía ver que eran parciales, pero que no entendía por qué ni sabía qué pensar.</p><p><br></p><p>Le dije que pensara por sí mismo y admitiera cuando no sabía algo, y que no debería tener miedo de cambiar de opinión a la luz de nuevas pruebas válidas.</p><p><br></p><p>Se quejaba de sus profesores, uno de los cuales no estaba contento de que le hubiera enseñado diferentes enfoques del álgebra. Con el tiempo, aprendió a hacerlo a la manera del maestro, pero necesitaba otra vía para llegar allí. Ambos estábamos un poco enojados, pero le dije que aprender a tratar con los maestros es parte de la educación.</p><p><br></p><p>Me guardé mi rencor, pero también quería estrangular a su maestro. Este niño había pasado de un promedio D a un B +, y esta maestra todavía lo perseguía. No es de extrañar que tanta gente sea pésima en matemáticas: sus padres y maestros estaban en contra de ellos y ni siquiera se dieron cuenta.</p><p><br></p><p>5) Adopte una actitud de aprendizaje</p><p><br></p><p>Si no está dispuesto a aprender, será difícil enseñar y el primer paso es aceptar lo poco que sabemos. Es hipócrita atacar a tu hijo cuando tú tampoco puedes hacer su tarea, y los niños se dan cuenta de esto y sienten que estás siendo injusto.</p><p><br></p><p>Si elige tener hijos, deberían ser su prioridad número uno y se sorprenderá de cuánto aprendizaje (o relearning) mejorará su cognición en general.</p><p><br></p><p>La lectura y las matemáticas son habilidades fundamentales, y aprender matemáticas es una lección de humildad. Si bien hay poca evidencia que respalde que las matemáticas mejoran el razonamiento en general, las necesita para comprender las ciencias, y cuando gran parte de las tareas de la escuela primaria de su hijo le desconcierta, al menos un poco de incertidumbre penetra en sus puntos de vista. Te das cuenta de que no sabes tanto como pensabas y, para la mayoría, esto puede marcar un nuevo comienzo. A medida que cede la rigidez, resurge la plasticidad y el hábito del aprendizaje permanente es el regalo más valioso que puede hacerse a sí mismo y a su hijo.</p>', 'La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres.'),
(7, 23, 'es', '3 leyes para convertirse en una estudiante heterosexual', '<p>En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente. Si sigue mi consejo, obtendrá mejores calificaciones y también llevará una vida más equilibrada.</p>', '<p>Un historial académico sólido puede abrirle puertas en el futuro. Más importante aún, a través del proceso de convertirse en un estudiante sobresaliente, aprenderá valores como el trabajo duro, la disciplina y la determinación.</p><p>Regla 1: siempre tenga un plan.</p><p>(a) A medida que avanza el semestre, realice un seguimiento de las fechas clave: pruebas y exámenes, fechas límite para la presentación de proyectos, interrupciones del período, etc.</p><p>Ingrese estas fechas en un calendario físico o digital.</p><p>Si elige utilizar un calendario digital, le recomiendo Google Calendar.</p><p><br></p><p>(b) Programe un horario fijo cada semana en el que revise sus próximos eventos durante los próximos dos meses. Marque cuándo comenzará a prepararse para ese examen de matemáticas, a trabajar en ese proyecto de historia o a escribir ese ensayo en inglés.</p><p>(d) A continuación, anote sus compromisos para la próxima semana, p. ej. actividades extracurriculares, reuniones familiares, clases extra. En su calendario, resalte los bloques de tiempo que tendrá para el trabajo escolar.</p><p>Este proceso de planificación puede parecer lento, pero por lo general solo tomará 15 minutos cada semana.</p><p>Esta es una sabia inversión de tiempo como estudiante, porque el resto de la semana será mucho más productiva.</p><p>De esta manera, estudiarás inteligentemente, ¡no solo duro!</p><p><br></p><p>Regla # 2: Sea organizado.</p><p>Alguna vez ha tenido problemas para encontrar sus notas o tareas cuando las necesitaba? Probablemente terminó perdiendo un tiempo precioso buscándolos, antes de que finalmente se los pidiera prestados a su amigo.</p><p>Muchos estudiantes me dicen que guardan todas sus notas y tareas en una gran pila, ¡y solo las clasifican antes de sus exámenes!</p><p>Ser organizado, es más fácil decirlo que hacerlo, lo sé.</p>', 'En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente.'),
(8, 23, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<div style=\"text-align: right;\">في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا. إذا أخذت بنصيحتي ، ستحصل على درجات أفضل وتعيش حياة أكثر توازناً أيضًا.</div>', '<div style=\"text-align: right; \">يمكن للسجل الأكاديمي القوي أن يفتح لك الأبواب في المستقبل. والأهم من ذلك ، من خلال عملية أن تصبح طالبًا عاديًا ، ستتعلم قيمًا مثل العمل الجاد والانضباط والتصميم.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة 1: امتلك خطة دائمًا.</div><div style=\"text-align: right; \">(أ) مع تقدم الفصل الدراسي ، تتبع التواريخ الرئيسية: الاختبارات والامتحانات والمواعيد النهائية لتقديم المشروع وفواصل الفصل الدراسي وما إلى ذلك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">أدخل هذه التواريخ في تقويم مادي أو رقمي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">إذا اخترت استخدام تقويم رقمي ، فإنني أوصي بتقويم Google.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(ب) حدد موعدًا محددًا كل أسبوع حيث تقوم بمراجعة الأحداث القادمة على مدار الشهرين المقبلين. ضع علامة على الوقت الذي ستبدأ فيه التحضير لامتحان الرياضيات هذا ، أو العمل في مشروع التاريخ ، أو كتابة هذه الورقة باللغة الإنجليزية.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(د) بعد ذلك ، دوِّن التزاماتك للأسبوع القادم ، على سبيل المثال الأنشطة اللامنهجية والتجمعات العائلية والفصول الإضافية. في التقويم الخاص بك ، حدد فترات الوقت التي ستتاح لك للعمل المدرسي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">قد تبدو عملية التخطيط هذه مضيعة للوقت ، ولكنها عادة ما تستغرق 15 دقيقة فقط كل أسبوع.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">هذا استثمار حكيم للوقت كطالب ، لأن بقية الأسبوع ستصبح أكثر إنتاجية بكثير.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">بهذه الطريقة ، ستدرس بذكاء ، وليس فقط بجد!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة رقم 2: كن منظمًا.</div><div style=\"text-align: right; \">هل واجهت مشكلة في العثور على ملاحظاتك أو مهامك عندما احتجت إليها؟ ربما انتهى بك الأمر إلى إضاعة الوقت الثمين في البحث عنهم ، قبل أن تطلب أخيرًا استعارتهم من صديقك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">يخبرني العديد من الطلاب أنهم يحتفظون بجميع ملاحظاتهم وواجباتهم في كومة كبيرة واحدة ، ولا يقوموا بفرزها إلا قبل امتحاناتهم!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">كونك منظمًا - القول أسهل من الفعل ، أعلم.</div>', 'في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا.'),
(9, 22, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<p style=\"text-align: right; \">العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير. لماذا هو مهم؟ حسنًا ، تساعد العلاقة الجيدة بينك وبين ولي أمر الطالب أو الوصي عليه في مساعدة الطلاب على أداء أفضل على المستوى الشخصي والأكاديمي. </p>', '<p style=\"text-align: right; \">الرحمة والإيجابية هي كل شيء</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون التعامل معك أمرًا مرهقًا للوالدين أو الأوصياء. قد يكون هناك خوف من أن أداء طفلهم ليس جيدًا كما ينبغي ، أو ضيق الوقت للتواصل ، أو حتى حواجز اللغة. بصفتك مدرسًا ، فإن التعاطف وتقديم المعلومات بنبرة مهذبة يؤدي إلى العجائب في مثل هذه المواقف. من الأفضل الابتسام والتواصل البصري والترحيب وتقديم أي نصيحة إذا لزم الأمر. إحدى الحيل الجيدة للمساعدة في تهدئة الآباء أو الأوصياء عند التحدث إليهم هي الاعتراف أولاً بشيء إيجابي عن طفلهم لاحظته مهما كان صغيراً. على سبيل المثال ، ربما لاحظت أنهم أكثر انخراطًا في دروسهم وطرحوا المزيد من الأسئلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كن استباقيًا وتواصل كثيرًا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يتحدث بعض المعلمين مع الوالدين أو الأوصياء فقط عندما تكون هناك مشكلة ، مما يخلق بيئة سلبية لكليهما. هذا هو السبب في أنه من الضروري بذل الجهد للتحدث معهم كثيرًا سواء كان ذلك وجهًا لوجه أو مكالمة هاتفية أو حتى رسالة بريد إلكتروني. من الأفضل إبقائهم على اطلاع دائم بما يتعلمه أطفالهم. غالبًا ما يمنعهم التواصل من الشعور باليقظة القصوى عند التواصل معهم ويمكنه أيضًا تعزيز صداقة جميلة. بالطبع من المهم معرفة أن الآباء والأوصياء مشغولون! لذا تأكد عند التواصل معهم أنك تخطط مسبقًا للعثور على وقت يناسبهم بشكل أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">اجعل الوالد أو الوصي يشعر بالتقدير واطلب مشورتهما</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">من الطرق الرائعة لبناء علاقة مع الوالدين أو الأوصياء إشراكهم في تعليم أطفالهم. هذا لا يعني مجرد مساعدتهم في أداء واجباتهم المدرسية ، ولكن قد يعني مطالبتهم بالمشاركة في الأنشطة أو الأحداث المدرسية. يُعد سؤالهم عما إذا كانوا يرغبون في المساعدة في تنظيم حدث طريقة رائعة للتعرف عليهم ومنحهم فرصة لمقابلة أولياء الأمور أو الأوصياء الآخرين. يمكن أن يكون أيضًا شيئًا بسيطًا مثل إنشاء خطة درس تطلب مدخلات منهم. بالطبع كل هذا يعتمد على جدولهم الزمني وما إذا كان لديهم الوقت للمشاركة. في النهاية ، كلما حاولت إشراكهم في الأنشطة ، كان ذلك أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">طريقة أخرى رائعة لجعلهم يشعرون بالتقدير هي طلب نصيحتهم. إذا كان الطالب يعرض سلوكيات سلبية أثناء الدرس ، فمن الحكمة طلب مشورة الوالد أو الوصي. من خلال طلب نصيحتهم ، يمكن أن يحدث شيئان. أولاً ، قد لا يعرفون أن هناك سلوكًا سلبيًا للبدء به لأن الطالب قد لا يعرضه في المنزل. ثانيًا ، أنت تبني علاقة أفضل مع الوالد أو الوصي من خلال الحصول على مدخلاتهم في هذا الموقف ، مما سيبني الثقة. لا يجب أن تدور الأسئلة حول تعليم الطالب فقط عند التحدث إليهم ، بل يمكنك أيضًا طرح أسئلة حول اهتمامات الطالب والخطط التي لديهم خلال العطلات. من المهم دائمًا أن تتصرف بشكل احترافي عند التعامل مع أحد الوالدين أو الوصي ، ولكن لا يجب أن تكون المحادثة فقط حول التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجنب أخذها بشكل شخصي والافتراضات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الآباء والأوصياء بشر ولديهم ضغوط خاصة بهم للتعامل معها سواء كان ذلك في العمل أو في حياتهم المنزلية. من الأفضل لك أن تحافظ على هدوئك دائمًا ولا تأخذ أي شيء يقولونه على محمل الجد. يجب عليك دائمًا الرد بأسئلة من شأنها أن تساعد في نزع فتيل الموقف. على سبيل المثال ، قد يقول أحد الوالدين أو الوصي \"أنت تقول هذا لأنك خرجت لإحضار طفلي\" وأفضل طريقة للرد على سؤال مثل هذا هي \"أنا آسف لأنك تشعر بهذه الطريقة ، يرجى إعلامي لماذا تعتقد هذا؟\"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كما يجب ألا تضع افتراضات حول الحياة المنزلية للطالب. ما لم يتم ذكر ذلك ، يمكن للافتراض أن يسبب العديد من المشاكل ويمكن أن يكون غير حساس لوضع الأسرة. يجب ألا تفترض أن الطالب يعيش مع كلا الوالدين أو أي من الوالدين في هذا الشأن. الآن ، في عالمنا المتنوع عالميًا ، لا يجب أن تفترض أن اللغة الأولى للوالد أو الوصي هي اللغة الإنجليزية ويجب دائمًا تأكيد ما إذا كان بإمكانهم التحدث باللغة الإنجليزية في المقام الأول. سيكون لكل طالب وضع مختلف عن الوضع الذي يليه. تؤدي الافتراضات إلى سوء الفهم الذي يمكن أن يخلق ظروفًا أكثر صعوبة للتعلم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون بناء علاقة مع أحد الوالدين أو الوصي أمرًا صعبًا في بعض الأحيان. يمكن أن يساعدك وضع هذه الأفكار في الاعتبار على التواصل معها بشكل أفضل. من الجيد أن تتذكر ، في نهاية اليوم ، أنه كلما كان لديك اتصال أفضل معهم ، كان من الأفضل أن يساعدوا في تعليم الطالب ، مما يسمح لهم في النهاية بتحقيق النجاح الأكاديمي وتعزيز حب التعلم.</p>', 'العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير.'),
(10, 22, 'es', 'Mejor relación entre usted y los padres de su estudiante', '<p>La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida. ¿Por qué es importante? Bueno, una buena relación entre usted y el padre o tutor del estudiante sirve para ayudar a los estudiantes a desempeñarse mejor a nivel personal y académico. Fomentar una relación con ellos como tutor puede ser un desafío debido a una serie de factores; sin embargo, hay varias formas de construir esta relación y optimizar el sistema de apoyo al aprendizaje de los estudiantes a lo largo del tiempo.</p>', '<p>La compasión y la positividad lo son todo</p><p>Puede ser estresante para los padres o tutores interactuar con usted. Puede haber temor de que a su hijo no le esté yendo tan bien como debería, falta de tiempo para conectarse o incluso barreras del idioma. Como tutor, ser compasivo y brindar información en un tono educado hace maravillas en situaciones como esta. Es mejor sonreír, hacer contacto visual, ser acogedor y ofrecer cualquier consejo si es necesario. Un buen truco para ayudar a los padres o tutores a hablar con ellos es reconocer primero algo positivo acerca de su hijo que haya notado, sin importar lo pequeño que sea. Por ejemplo, es posible que haya notado que están más involucrados en sus lecciones y hacen más preguntas.</p><p><br></p><p>Sea proactivo y comuníquese con frecuencia</p><p><br></p><p>Es posible que algunos tutores solo hablen con los padres o tutores cuando hay un problema, lo que crea un entorno negativo para ambos. Por eso es clave hacer el esfuerzo de hablar con ellos a menudo, ya sea cara a cara, por teléfono o incluso por correo electrónico. Es mejor mantenerlos actualizados sobre el aprendizaje de sus hijos. Comunicarse a menudo evita que se sientan en alerta máxima cuando se acerca e incluso puede fomentar una hermosa amistad. ¡Por supuesto que es importante saber que los padres y tutores están ocupados! Por eso, cuando te comuniques con ellos, asegúrate de planificar con anticipación para encontrar el momento que mejor funcione para ellos.</p><p><br></p><p>Haga que el padre o tutor se sienta valorado y solicite su consejo</p><p><br></p><p>Una excelente manera de entablar una relación con los padres o tutores es involucrarlos en la educación de sus hijos. Esto no significa solo que los ayuden con la tarea, sino que también podría significar pedirles que participen en actividades o eventos escolares. Preguntarles si les gustaría ayudar a organizar un evento es una excelente manera de conocerlos y darles la oportunidad de conocer a otros padres o tutores. También podría ser algo tan simple como crear un plan de lección que solicite su opinión. Por supuesto, todo esto depende de su horario y si tienen tiempo para participar. Al final, cuanto más intente involucrarlos en las actividades, mejor.</p><p><br></p><p>Otra excelente manera de hacerlos sentir valorados es pedirles su consejo. Si su estudiante muestra comportamientos negativos durante una lección, es aconsejable buscar el consejo del padre o tutor. Al pedirles su consejo, pueden ocurrir dos cosas. Uno, para empezar, es posible que no sepan que existe un comportamiento negativo, ya que es posible que el estudiante no lo esté mostrando en casa. Dos, está construyendo una mejor relación con el padre o tutor al obtener su opinión en esta situación, lo que generará confianza. Las preguntas no tienen que ser solo sobre la educación del estudiante al hablar con él, también puede hacer preguntas sobre el interés del estudiante y los planes que tiene durante las vacaciones. Siempre es importante que te comportes de manera profesional cuando trates con un padre o tutor, pero la conversación no tiene que ser estrictamente sobre educación.</p><p><br></p><p>Evite tomárselo personalmente y hacer suposiciones</p><p><br></p><p>Los padres y tutores son humanos y tienen que lidiar con su propio estrés, ya sea en el trabajo o en su vida familiar. Es mejor para usted mantener siempre la calma y nunca tomar en serio nada de lo que le digan. Siempre debe responder con preguntas que ayuden a calmar la situación. Por ejemplo, un padre o tutor puede decir \"Dices esto porque quieres atrapar a mi hijo\" y la mejor manera de responder a una pregunta como esta es \"Lamento que te sientas así, por favor avísame Por qué piensas esto?</p><p>Además, no debe hacer suposiciones sobre la vida hogareña de un estudiante. A menos que se haya indicado así, una suposición puede causar muchos problemas y puede ser insensible a la situación de una familia. No debe asumir que el estudiante vive con ambos padres o con cualquier padre. Ahora, en nuestro mundo globalmente diverso, no debe asumir que el primer idioma del padre o tutor es el inglés y siempre debe confirmar si pueden hablar inglés en primer lugar. Cada estudiante tendrá una situación diferente a la del próximo. Las suposiciones conducen a malentendidos que pueden crear circunstancias más desafiantes para el aprendizaje.</p><p><br></p><p>Establecer una relación con un padre o tutor a veces puede ser un desafío. Tener estas ideas en mente puede ayudarlo a conectarse mejor con ellas. Es bueno recordar que, al final del día, cuanto mejor sea la conexión que tenga con ellos, mejor podrán ayudar a enseñar al estudiante, lo que en última instancia les permitirá alcanzar el éxito académico y fomentar el amor por el aprendizaje.</p>', 'La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida.');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `price`) VALUES
(1, 'الاساس : 5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_courses`
--

CREATE TABLE `book_courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_courses`
--

INSERT INTO `book_courses` (`id`, `title`, `pages`, `book_id`) VALUES
(1, 'الصديقتان', 'ص 20 - 23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `image_cover` varchar(255) NOT NULL,
  `video_demo` varchar(255) DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT 0,
  `access_days` int(10) UNSIGNED DEFAULT NULL COMMENT 'Number of days to access the bundle',
  `message_for_reviewer` text DEFAULT NULL,
  `status` enum('active','pending','is_draft','inactive') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL,
  `updated_at` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`id`, `creator_id`, `teacher_id`, `category_id`, `slug`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `price`, `points`, `subscribe`, `access_days`, `message_for_reviewer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1059, 1059, 612, 'course-bundel-for-me', '/store/1059/Green Illustrated Welcome Back Students Instagram Story.png', '/store/1059/Green Illustrated Welcome Back Students Instagram Story.png', NULL, NULL, NULL, NULL, 0, NULL, 'bonsoire', 'is_draft', 1705265287, 1705265461);

-- --------------------------------------------------------

--
-- Table structure for table `bundle_filter_option`
--

CREATE TABLE `bundle_filter_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `bundle_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_translations`
--

CREATE TABLE `bundle_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bundle_translations`
--

INSERT INTO `bundle_translations` (`id`, `bundle_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(1, 1, 'ar', 'course bundel for me', NULL, '<p>course bundles for me</p>');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_webinars`
--

CREATE TABLE `bundle_webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `bundle_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `product_order_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `special_offer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_discount_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cashback_rules`
--

CREATE TABLE `cashback_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_type` enum('all','courses','store_products','bundles','meetings','registration_packages','subscription_packages','recharge_wallet') NOT NULL,
  `target` varchar(255) DEFAULT NULL,
  `start_date` bigint(20) UNSIGNED DEFAULT NULL,
  `end_date` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(15,2) DEFAULT NULL,
  `amount_type` enum('fixed_amount','percent') DEFAULT NULL,
  `apply_cashback_per_item` tinyint(1) NOT NULL DEFAULT 0,
  `max_amount` double(15,2) DEFAULT NULL,
  `min_amount` double(15,2) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashback_rules`
--

INSERT INTO `cashback_rules` (`id`, `target_type`, `target`, `start_date`, `end_date`, `amount`, `amount_type`, `apply_cashback_per_item`, `max_amount`, `min_amount`, `enable`, `created_at`) VALUES
(5, 'all', NULL, 1672610400, NULL, 10.00, 'percent', 0, NULL, NULL, 0, 1678921892);

-- --------------------------------------------------------

--
-- Table structure for table `cashback_rule_specification_items`
--

CREATE TABLE `cashback_rule_specification_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `cashback_rule_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashback_rule_translations`
--

CREATE TABLE `cashback_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `cashback_rule_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashback_rule_translations`
--

INSERT INTO `cashback_rule_translations` (`id`, `cashback_rule_id`, `locale`, `title`) VALUES
(5, 5, 'en', 'Christmas Cashback');

-- --------------------------------------------------------

--
-- Table structure for table `cashback_rule_users_groups`
--

CREATE TABLE `cashback_rule_users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `cashback_rule_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `parent_id`, `icon`, `order`) VALUES
(612, 'لغة-عربية', NULL, '/store/1/arabic-language.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`) VALUES
(55, 612, 'ar', 'لغة عربية');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED DEFAULT NULL,
  `quiz_result_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `user_grade` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('quiz','course') NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

CREATE TABLE `certificates_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('quiz','course') NOT NULL,
  `position_x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_y` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `font_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('draft','publish') NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `image`, `type`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, '/store/1/default_images/certificate.jpg', 'quiz', '300', '400', '32', '#314963', 'publish', 1608663541, 1656581793),
(2, '/store/1/default_images/certificate.jpg', 'course', '200', '400', '28', '#314963', 'publish', 1656581772, 1656664628);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template_translations`
--

CREATE TABLE `certificate_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_template_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `rtl` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_template_translations`
--

INSERT INTO `certificate_template_translations` (`id`, `certificate_template_id`, `locale`, `title`, `body`, `rtl`) VALUES
(1, 1, 'en', 'Quiz-depended Certificate Template', 'This certificate awarded to [student] \r\nregarding passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]', 0),
(2, 1, 'es', 'Certificado', 'Este certificado se otorgó a [student]\r\nen cuanto a aprobar el [course] con\r\nel [grade] con éxito\r\nID de certificado: [certificate_id]', NULL),
(3, 2, 'en', 'Completion Certificate Template', 'This certificate awarded to [student] \r\nregarding completing the course [course] with \r\nsuccess for [duration] minutes.\r\nCertificate ID : [certificate_id]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `upcoming_course_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_review_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` enum('pending','active') NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `viewed_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `comments_reports`
--

CREATE TABLE `comments_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reply` text DEFAULT NULL,
  `status` enum('pending','replied') NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `course_forums`
--

CREATE TABLE `course_forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_answers`
--

CREATE TABLE `course_forum_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `resolved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_learning`
--

CREATE TABLE `course_learning` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_noticeboards`
--

CREATE TABLE `course_noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `color` enum('warning','danger','neutral','info','success') NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_noticeboard_status`
--

CREATE TABLE `course_noticeboard_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noticeboard_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` enum('left','right','left_with_space','right_with_space') NOT NULL,
  `currency_separator` enum('dot','comma') NOT NULL,
  `currency_decimal` int(10) UNSIGNED DEFAULT NULL,
  `exchange_rate` double(15,2) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `currency_position`, `currency_separator`, `currency_decimal`, `exchange_rate`, `order`, `created_at`) VALUES
(4, 'EUR', 'left', 'dot', 2, 0.93, 1, 1678868603),
(6, 'INR', 'left', 'dot', 2, 82.52, 2, 1678869222);

-- --------------------------------------------------------

--
-- Table structure for table `delete_account_requests`
--

CREATE TABLE `delete_account_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `discount_type` enum('percentage','fixed_amount') NOT NULL,
  `source` enum('all','course','category','meeting','product','bundle') NOT NULL,
  `code` varchar(64) NOT NULL,
  `percent` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `max_amount` int(10) UNSIGNED DEFAULT NULL,
  `minimum_order` int(10) UNSIGNED DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `user_type` enum('all_users','special_users') NOT NULL,
  `product_type` enum('all','physical','virtual') DEFAULT NULL,
  `for_first_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','disable') NOT NULL DEFAULT 'active',
  `expired_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `discount_bundles`
--

CREATE TABLE `discount_bundles` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `bundle_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_categories`
--

CREATE TABLE `discount_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_courses`
--

CREATE TABLE `discount_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_groups`
--

CREATE TABLE `discount_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_users`
--

CREATE TABLE `discount_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `code` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `promo` tinyint(4) DEFAULT NULL,
  `price_after_promo` float DEFAULT NULL,
  `promo_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ebooks`
--

INSERT INTO `ebooks` (`id`, `title`, `cover`, `price`, `code`, `file`, `promo`, `price_after_promo`, `promo_code`) VALUES
(5, 'اساس نهائي الروضة', '1707941584_ebook.png', 15, 'CODE4KIDS', 'ebook2024/assas.html', NULL, NULL, '0'),
(6, 'مثال عن كتاب', '1709144448_animals.png', 30, 'KITAB2024', 'ebook2024/assas.html', NULL, NULL, '0'),
(7, 'livre2', '1709198601_Screenshot from 2024-01-23 23-06-06.png', 20, 'LIV2', 'asses/asses.html', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `upcoming_course_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `creator_id`, `webinar_id`, `bundle_id`, `upcoming_course_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 1059, NULL, 1, NULL, 1, 1705265394, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `faq_id`, `locale`, `title`, `answer`) VALUES
(1, 1, 'ar', 'course bundle 11', 'est ce que');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `upcoming_course_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `webinar_id`, `bundle_id`, `upcoming_course_id`, `created_at`) VALUES
(1, 1061, 2023, NULL, NULL, 1711286844);

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinars`
--

CREATE TABLE `feature_webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `page` enum('categories','home','home_categories') NOT NULL,
  `status` enum('publish','pending') NOT NULL,
  `updated_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinar_translations`
--

CREATE TABLE `feature_webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') NOT NULL,
  `downloadable` tinyint(1) DEFAULT 0,
  `storage` enum('upload','youtube','vimeo','external_link','google_drive','dropbox','iframe','s3','upload_archive','secure_host') NOT NULL,
  `file` text NOT NULL,
  `volume` varchar(64) NOT NULL,
  `file_type` varchar(64) NOT NULL,
  `interactive_type` enum('adobe_captivate','i_spring','custom') DEFAULT NULL,
  `interactive_file_name` varchar(255) DEFAULT NULL,
  `interactive_file_path` varchar(255) DEFAULT NULL,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT 0,
  `access_after_day` int(10) UNSIGNED DEFAULT NULL,
  `online_viewer` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `file_translations`
--

CREATE TABLE `file_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `filter_option_translations`
--

CREATE TABLE `filter_option_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_translations`
--

CREATE TABLE `filter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floating_bars`
--

CREATE TABLE `floating_bars` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_at` bigint(20) DEFAULT NULL,
  `end_at` bigint(20) DEFAULT NULL,
  `title_color` varchar(255) DEFAULT NULL,
  `description_color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `btn_color` varchar(255) DEFAULT NULL,
  `btn_text_color` varchar(255) DEFAULT NULL,
  `bar_height` int(11) DEFAULT NULL,
  `position` enum('top','bottom') NOT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT 0,
  `enable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floating_bars`
--

INSERT INTO `floating_bars` (`id`, `start_at`, `end_at`, `title_color`, `description_color`, `icon`, `background_color`, `background_image`, `btn_url`, `btn_color`, `btn_text_color`, `bar_height`, `position`, `fixed`, `enable`) VALUES
(2, 1678456800, 1755727200, '#2d2d2d', '#b3b3b3', '/store/1/topnav_icon.svg', '#1f3b64', '/store/1/topnav_background.jpg', '/classes?discount=on', '#feb702', '#ffffff', 70, 'top', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `floating_bar_translations`
--

CREATE TABLE `floating_bar_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `floating_bar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floating_bar_translations`
--

INSERT INTO `floating_bar_translations` (`id`, `floating_bar_id`, `locale`, `title`, `description`, `btn_text`) VALUES
(3, 2, 'en', 'New Years Day Celebration', 'Get all courses with 50 to 70% off without any limitation', 'View Courses'),
(4, 2, 'ar', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('requested','accepted','rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `enable_login` tinyint(1) NOT NULL DEFAULT 0,
  `enable_resubmission` tinyint(1) NOT NULL DEFAULT 0,
  `enable_welcome_message` tinyint(1) NOT NULL DEFAULT 0,
  `enable_tank_you_message` tinyint(1) NOT NULL DEFAULT 0,
  `welcome_message_image` varchar(255) DEFAULT NULL,
  `tank_you_message_image` varchar(255) DEFAULT NULL,
  `start_date` bigint(20) UNSIGNED DEFAULT NULL,
  `end_date` bigint(20) UNSIGNED DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `url`, `cover`, `image`, `enable_login`, `enable_resubmission`, `enable_welcome_message`, `enable_tank_you_message`, `welcome_message_image`, `tank_you_message_image`, `start_date`, `end_date`, `enable`, `created_at`) VALUES
(2, 'teacher_form', '/store/1/default_images/16.jpg', '/store/1/default_images/about.png', 1, 1, 1, 1, '/store/1/default_images/welcome.jpg', '/store/1/default_images/thank_you.jpg', 1694894400, 1789592400, 1, 1694945521);

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `type` enum('input','number','upload','date_picker','toggle','textarea','dropdown','checkbox','radio') NOT NULL,
  `order` int(11) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `form_id`, `type`, `order`, `required`) VALUES
(1, 2, 'input', 1, 1),
(2, 2, 'input', 2, 1),
(3, 2, 'number', 4, 1),
(4, 2, 'date_picker', 5, 1),
(5, 2, 'input', 6, 1),
(6, 2, 'number', 7, 0),
(7, 2, 'radio', 3, 1),
(8, 2, 'textarea', 8, 0),
(9, 2, 'dropdown', 9, 1),
(10, 2, 'checkbox', 10, 0),
(11, 2, 'toggle', 12, 1),
(12, 2, 'upload', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_field_options`
--

CREATE TABLE `form_field_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_field_options`
--

INSERT INTO `form_field_options` (`id`, `form_field_id`, `order`) VALUES
(1, 7, NULL),
(2, 7, NULL),
(3, 9, NULL),
(4, 9, NULL),
(5, 10, NULL),
(6, 10, NULL),
(7, 10, NULL),
(8, 10, NULL),
(9, 10, NULL),
(10, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_field_option_translations`
--

CREATE TABLE `form_field_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_field_option_translations`
--

INSERT INTO `form_field_option_translations` (`id`, `form_field_option_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Male'),
(2, 2, 'en', 'Female'),
(3, 3, 'en', 'YES'),
(4, 4, 'en', 'NO'),
(5, 5, 'en', 'Benefits'),
(6, 6, 'en', 'Company reputation'),
(7, 7, 'en', 'Location'),
(8, 8, 'en', 'Salary'),
(9, 9, 'en', 'To gain experience'),
(10, 10, 'en', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `form_field_translations`
--

CREATE TABLE `form_field_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_field_translations`
--

INSERT INTO `form_field_translations` (`id`, `form_field_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'First Name'),
(2, 2, 'en', 'Last Name'),
(3, 3, 'en', 'Age'),
(4, 4, 'en', 'Date of Birth'),
(5, 5, 'en', 'Address'),
(6, 6, 'en', 'Mobile Number'),
(7, 7, 'en', 'Gender'),
(8, 8, 'en', 'Educational Background'),
(9, 9, 'en', 'Have you had any previous experience with teaching?'),
(10, 10, 'en', 'What determined you to apply for this position?'),
(11, 11, 'en', 'I accept the terms and rules'),
(12, 12, 'en', 'ID Card Image');

-- --------------------------------------------------------

--
-- Table structure for table `form_roles_users_groups`
--

CREATE TABLE `form_roles_users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_roles_users_groups`
--

INSERT INTO `form_roles_users_groups` (`id`, `form_id`, `role_id`, `user_id`, `group_id`) VALUES
(14, 2, 2, NULL, NULL),
(15, 2, 3, NULL, NULL),
(16, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

CREATE TABLE `form_submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_submission_items`
--

CREATE TABLE `form_submission_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `submission_id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(10) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_translations`
--

CREATE TABLE `form_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `heading_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `welcome_message_title` varchar(255) DEFAULT NULL,
  `welcome_message_description` text DEFAULT NULL,
  `tank_you_message_title` varchar(255) DEFAULT NULL,
  `tank_you_message_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_translations`
--

INSERT INTO `form_translations` (`id`, `form_id`, `locale`, `title`, `heading_title`, `description`, `welcome_message_title`, `welcome_message_description`, `tank_you_message_title`, `tank_you_message_description`) VALUES
(2, 2, 'en', 'Teacher Registration Form', 'Teacher Registration Form', '<div>We appreciate your interest in becoming a part of our dedicated team of educators. As a teacher, you play a crucial role in shaping the future and empowering the next generation with knowledge and skills.</div><div><br></div><div>This registration form is designed to collect essential information about your qualifications and background. Your input will help us assess your suitability for a teaching position within our institution. Please take your time to complete the form accurately, as it will serve as the foundation of our evaluation process.</div><div><br></div><div>If you encounter any questions or need assistance while filling out this form, our support team is readily available to provide guidance and address your queries.</div><div><br></div><div>Thank you for considering us as the platform for your teaching journey. We believe in the power of education to transform lives, and we look forward to the possibility of having you on board to make a positive impact on our students.</div><div><br></div><div>Let\'s begin the registration process, and we wish you the best of luck in your pursuit of a fulfilling teaching career with us!</div>', 'Welcome To Rocket LMS', 'We are delighted that you have chosen to join our esteemed educational institution. Your commitment to education is greatly appreciated, and we look forward to having you as part of our team.\r\n\r\nThis registration form is the first step in the process of becoming a valued member of our teaching staff. Your expertise and passion for teaching are integral to our mission of providing a high-quality education to our students.\r\n\r\nPlease complete this form with accuracy and detail, as it will help us better understand your qualifications and preferences. If you have any questions or require assistance during the registration process, our dedicated support team is here to help.\r\n\r\nThank you for choosing to embark on this journey with us. Together, we can make a positive impact on the lives of our students and inspire them to achieve their full potential.\r\n\r\nLet\'s get started with your registration, and once again, welcome aboard!', 'Thank you for your submission', 'Your interest in joining our educational institution as a teacher is greatly appreciated. We value your dedication to the field of education and your willingness to be a part of our team.\r\n\r\nYour registration is an important step in our selection process, and we will carefully review the information you\'ve provided. Should we require any further details or have additional questions, our team will reach out to you promptly.\r\n\r\nWe understand that becoming a teacher is a significant commitment, and we are excited about the potential you bring to our institution. Your passion and expertise will undoubtedly contribute to the growth and success of our students.\r\n\r\nOnce again, thank you for taking the time to register with us. We will be in touch soon with updates on your application status. We look forward to the possibility of working together to create a positive and inspiring educational experience for all.');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` enum('disabled','active') DEFAULT NULL,
  `close` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `slug`, `role_id`, `group_id`, `parent_id`, `icon`, `status`, `close`, `order`) VALUES
(1, 'Lifestyle', NULL, NULL, NULL, '/store/1/default_images/forums/icons/makeup.png', 'active', 0, NULL),
(2, 'Beauty-Makeup', NULL, NULL, 1, '/store/1/default_images/forums/icons/makeup.png', 'active', 0, 1),
(3, 'Food-Beverage', NULL, NULL, 1, '/store/1/default_images/forums/icons/donut.png', 'active', 0, 2),
(4, 'Travel', NULL, NULL, 1, '/store/1/default_images/forums/icons/airplane.png', 'active', 0, 3),
(5, 'Music', NULL, NULL, NULL, '/store/1/default_images/forums/icons/love-song.png', 'active', 0, NULL),
(6, 'Marketing', NULL, NULL, NULL, '/store/1/default_images/forums/icons/advertising.png', 'active', 0, NULL),
(7, 'Digital-Marketing', NULL, NULL, 6, '/store/1/default_images/forums/icons/digital-marketing.png', 'active', 0, 1),
(8, 'Public-Relations', NULL, NULL, 6, '/store/1/default_images/forums/icons/security.png', 'active', 0, 2),
(9, 'Advertising', NULL, NULL, 6, '/store/1/default_images/forums/icons/ads.png', 'active', 0, 3),
(10, 'Social-Media', NULL, NULL, 6, '/store/1/default_images/forums/icons/twitter.png', 'active', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `forum_featured_topics`
--

CREATE TABLE `forum_featured_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_recommended_topics`
--

CREATE TABLE `forum_recommended_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_recommended_topics`
--

INSERT INTO `forum_recommended_topics` (`id`, `title`, `icon`, `created_at`) VALUES
(1, 'Food & Health', '/store/1/default_images/forums/icons/dish.png', 1655794486),
(2, 'Math', '/store/1/default_images/forums/icons/drawing-compass.png', 1655796024),
(3, 'Marketing', '/store/1/default_images/forums/icons/target.png', 1655796482),
(4, 'Language', '/store/1/default_images/forums/icons/translate.png', 1655796824);

-- --------------------------------------------------------

--
-- Table structure for table `forum_recommended_topic_items`
--

CREATE TABLE `forum_recommended_topic_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `recommended_topic_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `close` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_attachments`
--

CREATE TABLE `forum_topic_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_bookmarks`
--

CREATE TABLE `forum_topic_bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_likes`
--

CREATE TABLE `forum_topic_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `topic_post_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_posts`
--

CREATE TABLE `forum_topic_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text NOT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_reports`
--

CREATE TABLE `forum_topic_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `topic_post_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_translations`
--

CREATE TABLE `forum_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_translations`
--

INSERT INTO `forum_translations` (`id`, `forum_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Lifestyle', 'Lifestyle is the interests, opinions, behaviours, and behavioural orientations of an individual, group, or culture. The term was introduced by Austrian psychologist Alfred Adler in his 1929 book, The Case of Miss R., with the meaning of \"a person\'s basic character as established early in childhood\".'),
(2, 2, 'en', 'Beauty & Makeup', 'How to create your natural skincare perfect'),
(3, 3, 'en', 'Food & Beverage', 'A practical forum to take your cooking skills from dull to delicious'),
(4, 4, 'en', 'Travel', 'How You Can Afford a Life of Travel and Adventure!'),
(5, 5, 'en', 'Music', 'Discuss music with The World\'s Top instructors'),
(6, 6, 'en', 'Marketing', 'Marketing is the process of exploring.'),
(7, 7, 'en', 'Digital Marketing', 'Master Digital Marketing Strategy'),
(8, 8, 'en', 'Public Relations', 'Everything you need to know to be successful at PR'),
(9, 9, 'en', 'Advertising', 'Learn the inner workings of a massive digital industry'),
(10, 10, 'en', 'Social Media', 'MASTER online marketing on Twitter, Pinterest, Instagram');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for show modal in recipient user panel',
  `status` enum('active','pending','cancel') DEFAULT 'pending',
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `creator_id`, `name`, `discount`, `commission`, `status`, `created_at`) VALUES
(2, 1, 'Vip Instructors', 20, 10, 'active', 1613379096),
(3, 1, 'Special Students', 10, NULL, 'active', 1614530208);

-- --------------------------------------------------------

--
-- Table structure for table `groups_registration_packages`
--

CREATE TABLE `groups_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_statistics`
--

CREATE TABLE `home_page_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_statistics`
--

INSERT INTO `home_page_statistics` (`id`, `icon`, `color`, `count`, `order`, `created_at`) VALUES
(2, '/store/1/default_images/trend_categories_icons/chess.png', '#c95d63', 20, 1, 1675870234),
(3, '/store/1/default_images/trend_categories_icons/palette.png', '#496ddb', 12, 4, 1675870276),
(4, '/store/1/default_images/trend_categories_icons/connection.png', '#717ec3', 16, 3, 1675870320),
(5, '/store/1/default_images/trend_categories_icons/family.png', '#ae8799', 78, 2, 1675870418);

-- --------------------------------------------------------

--
-- Table structure for table `home_page_statistic_translations`
--

CREATE TABLE `home_page_statistic_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `home_page_statistic_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_statistic_translations`
--

INSERT INTO `home_page_statistic_translations` (`id`, `home_page_statistic_id`, `locale`, `title`, `description`) VALUES
(2, 2, 'en', 'Skillful Instructors', 'Start learning from experienced instructors.'),
(3, 3, 'en', 'Video Courses', 'Learn without any geographical & time limitations.'),
(4, 4, 'en', 'Live Classes', 'Improve your skills using live knowledge flow.'),
(5, 5, 'en', 'Happy Students', 'are available to help you by their knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` enum('featured_classes','latest_bundles','latest_classes','best_rates','trend_categories','full_advertising_banner','best_sellers','discount_classes','free_classes','store_products','testimonials','subscribes','find_instructors','reward_program','become_instructor','forum_section','video_or_image_section','instructors','half_advertising_banner','organizations','blog','upcoming_courses') NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `name`, `order`) VALUES
(1, 'latest_classes', 3),
(2, 'featured_classes', 2),
(18, 'testimonials', 5),
(19, 'latest_bundles', 1),
(20, 'free_classes', 4);

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_type` enum('all','courses','store_products','bundles','meetings','registration_packages','subscription_packages') NOT NULL,
  `target` varchar(255) DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `start_date` bigint(20) UNSIGNED DEFAULT NULL,
  `end_date` bigint(20) UNSIGNED DEFAULT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT 0,
  `request_uploads` tinyint(1) NOT NULL DEFAULT 0,
  `bypass_verification_for_verified_users` tinyint(1) NOT NULL DEFAULT 0,
  `upfront` double(15,2) DEFAULT NULL,
  `upfront_type` enum('fixed_amount','percent') DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installments`
--

INSERT INTO `installments` (`id`, `target_type`, `target`, `capacity`, `start_date`, `end_date`, `verification`, `request_uploads`, `bypass_verification_for_verified_users`, `upfront`, `upfront_type`, `enable`, `created_at`) VALUES
(1, 'courses', 'specific_courses', 10, 1672549200, NULL, 1, 1, 0, 30.00, 'percent', 1, 1678904056);

-- --------------------------------------------------------

--
-- Table structure for table `installment_orders`
--

CREATE TABLE `installment_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `product_order_id` int(10) UNSIGNED DEFAULT NULL,
  `item_price` double(15,2) NOT NULL DEFAULT 0.00,
  `status` enum('paying','open','rejected','pending_verification','canceled','refunded') NOT NULL DEFAULT 'paying',
  `created_at` bigint(20) UNSIGNED NOT NULL,
  `refund_at` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installment_order_attachments`
--

CREATE TABLE `installment_order_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_order_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installment_order_payments`
--

CREATE TABLE `installment_order_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_order_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('upfront','step') NOT NULL,
  `selected_installment_step_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(15,2) NOT NULL,
  `status` enum('paying','paid','canceled','refunded') NOT NULL DEFAULT 'paying',
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installment_reminders`
--

CREATE TABLE `installment_reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `installment_order_id` int(10) UNSIGNED NOT NULL,
  `installment_step_id` int(10) UNSIGNED NOT NULL,
  `type` enum('before_due','due','after_due') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installment_specification_items`
--

CREATE TABLE `installment_specification_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installment_steps`
--

CREATE TABLE `installment_steps` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `deadline` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(15,2) DEFAULT NULL,
  `amount_type` enum('fixed_amount','percent') DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installment_steps`
--

INSERT INTO `installment_steps` (`id`, `installment_id`, `deadline`, `amount`, `amount_type`, `order`) VALUES
(1, 1, 90, 20.00, 'percent', 0),
(2, 1, 180, 30.00, 'percent', 1),
(3, 1, 270, 30.00, 'percent', 2);

-- --------------------------------------------------------

--
-- Table structure for table `installment_step_translations`
--

CREATE TABLE `installment_step_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_step_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installment_step_translations`
--

INSERT INTO `installment_step_translations` (`id`, `installment_step_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'First Installment'),
(2, 2, 'en', 'Second Installment'),
(3, 3, 'en', 'Third Installment');

-- --------------------------------------------------------

--
-- Table structure for table `installment_translations`
--

CREATE TABLE `installment_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `verification_description` text DEFAULT NULL,
  `verification_banner` varchar(255) DEFAULT NULL,
  `verification_video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installment_translations`
--

INSERT INTO `installment_translations` (`id`, `installment_id`, `locale`, `title`, `main_title`, `description`, `banner`, `options`, `verification_description`, `verification_banner`, `verification_video`) VALUES
(1, 1, 'en', 'Christmas installment plan', 'Installment payment On Christmas', 'Buy your courses in installments.', '/store/1/default_images/Installments/installment_banner.png', 'Instant access to course files88889 months payment duration8888No price difference with cash payments8888Get points after finalizing installments', '<p>To use this installment plan, you should attach a picture of your ID card and your 3-month bank account statement.</p><p>We will try to review your request as soon as possible.</p>', '/store/1/default_images/Installments/verification_image.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installment_user_groups`
--

CREATE TABLE `installment_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jazzcash_transactions`
--

CREATE TABLE `jazzcash_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_ref_no` varchar(255) NOT NULL,
  `order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Order data fields and values',
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Jazzcash request data fields and values',
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Jazzcash response data fields and values',
  `status` enum('pending','error','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `amount` double(15,2) UNSIGNED DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `in_person` tinyint(1) NOT NULL DEFAULT 0,
  `in_person_amount` double(15,2) DEFAULT NULL,
  `group_meeting` tinyint(1) NOT NULL DEFAULT 0,
  `online_group_min_student` int(11) DEFAULT NULL,
  `online_group_max_student` int(11) DEFAULT NULL,
  `online_group_amount` double(15,2) DEFAULT NULL,
  `in_person_group_min_student` int(11) DEFAULT NULL,
  `in_person_group_max_student` int(11) DEFAULT NULL,
  `in_person_group_amount` double(15,2) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `creator_id`, `amount`, `discount`, `in_person`, `in_person_amount`, `group_meeting`, `online_group_min_student`, `online_group_max_student`, `online_group_amount`, `in_person_group_min_student`, `in_person_group_max_student`, `in_person_group_amount`, `disabled`, `created_at`) VALUES
(1, 1059, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1705265752);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_times`
--

CREATE TABLE `meeting_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `meeting_type` enum('all','in_person','online') NOT NULL DEFAULT 'all',
  `day_label` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') NOT NULL,
  `time` varchar(64) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_09_145553_create_roles_table', 1),
(4, '2020_08_09_145834_create_sections_table', 1),
(5, '2020_08_09_145926_create_permissions_table', 1),
(6, '2020_08_24_163003_create_webinars_table', 1),
(7, '2020_08_24_164823_create_webinar_partner_teacher_table', 1),
(8, '2020_08_24_165658_create_tags_table', 1),
(9, '2020_08_24_165835_create_webinar_tag_table', 1),
(10, '2020_08_24_171611_create_categories_table', 1),
(11, '2020_08_29_052437_create_filters_table', 1),
(12, '2020_08_29_052900_create_filter_options_table', 1),
(13, '2020_08_29_054455_add_category_id_in_webinar_table', 1),
(14, '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table', 1),
(15, '2020_09_02_180508_create_webinar_filter_option_table', 1),
(16, '2020_09_02_193923_create_tickets_table', 1),
(17, '2020_09_02_210447_create_sessions_table', 1),
(18, '2020_09_02_212642_create_files_table', 1),
(19, '2020_09_03_175543_create_faqs_table', 1),
(20, '2020_09_08_175539_delete_webinar_tag_and_update_tag_table', 1),
(21, '2020_09_09_154522_create_quizzes_table', 1),
(22, '2020_09_09_174646_create_quizzes_questions_table', 1),
(23, '2020_09_09_182726_create_quizzes_questions_answers_table', 1),
(24, '2020_09_14_160028_create_prerequisites_table', 1),
(25, '2020_09_14_183235_nullable_item_id_in_quizzes_table', 1),
(26, '2020_09_14_190110_create_webinar_quizzes_table', 1),
(27, '2020_09_16_163835_create_quizzes_results_table', 1),
(28, '2020_09_24_102115_add_total_mark_in_quize_table', 1),
(29, '2020_09_24_132242_create_comment_table', 1),
(30, '2020_09_24_132639_create_favorites_table', 1),
(31, '2020_09_26_181200_create_certificate_table', 1),
(32, '2020_09_26_181444_create_certificates_templates_table', 1),
(33, '2020_09_30_170451_add_slug_in_webinars_table', 1),
(34, '2020_09_30_191202_create_purchases_table', 1),
(35, '2020_10_02_063828_create_rating_table', 1),
(36, '2020_10_02_094723_edit_table_and_add_foreign_key', 1),
(37, '2020_10_08_055408_add_reviwes_table', 1),
(38, '2020_10_08_084100_edit_status_comments_table', 1),
(39, '2020_10_08_121041_create_meetings_table', 2),
(40, '2020_10_08_121621_create_meeting_times_table', 2),
(41, '2020_10_08_121848_create_meeting_requests_table', 2),
(42, '2020_10_15_172913_add_about_and_head_line_in_users_table', 2),
(43, '2020_10_15_173645_create_follow_table', 2),
(46, '2020_10_17_100606_create_badges_table', 3),
(47, '2020_10_08_121848_create_reserve_meetings_table', 4),
(48, '2020_10_20_193013_update_users_table', 5),
(50, '2020_10_18_220323_convert_creatore_user_id_to_creator_id', 7),
(51, '2020_10_22_153502_create_cart_table', 7),
(52, '2020_10_22_154636_create_orders_table', 7),
(53, '2020_10_22_155930_create_order_items_table', 7),
(54, '2020_10_23_204203_create_sales_table', 7),
(55, '2020_10_23_211459_create_accounting_table', 7),
(56, '2020_10_23_213515_create_discounts_table', 7),
(57, '2020_10_23_213934_create_discount_users_table', 7),
(58, '2020_10_23_235444_create_ticket_users_table', 7),
(59, '2020_10_25_172331_create_groups_table', 7),
(60, '2020_10_25_172523_create_group_users_table', 7),
(62, '2020_11_02_202754_edit_email_in_users_table', 8),
(63, '2020_11_03_200314_edit_some_tables', 9),
(64, '2020_11_06_193300_create_settings_table', 10),
(67, '2020_11_09_202533_create_feature_webinars_table', 11),
(68, '2020_11_10_193459_edit_webinars_table', 12),
(69, '2020_11_11_203344_create_trend_categories_table', 13),
(72, '2020_11_11_222833_create_blog_categories_table', 14),
(75, '2020_11_11_231204_create_blog_table', 15),
(76, '2020_10_25_223247_add_sub_title_tickets_table', 16),
(77, '2020_10_28_001340_add_count_in_discount_users_table', 16),
(78, '2020_10_28_221509_create_payment_channels_table', 16),
(79, '2020_11_01_120909_change_class_name_enum_payment_channels_table', 16),
(80, '2020_11_07_233948_add_some_raw_in_order_items__table', 16),
(81, '2020_11_10_061350_add_discount_id_in_order_items_table', 16),
(82, '2020_11_10_071651_decimal_orders_order_items_sales_table', 16),
(83, '2020_11_11_193138_change_reference_id_type_in_orders_tabel', 16),
(84, '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table', 16),
(85, '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table', 17),
(86, '2020_11_12_000116_add_type_in_orders_table', 17),
(87, '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table', 17),
(88, '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table', 17),
(91, '2020_11_12_170109_add_blog_id_to_comments_table', 18),
(98, '2020_11_14_201228_add_bio_and_ban_to_users_table', 20),
(99, '2020_11_14_224447_create_users_badges_table', 21),
(100, '2020_11_14_233319_create_payout_request_table', 22),
(101, '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table', 22),
(102, '2020_11_16_195009_create_supports_table', 22),
(103, '2020_11_16_201814_create_support_departments_table', 22),
(107, '2020_11_16_202254_create_supports_table', 23),
(109, '2020_11_17_192744_create_support_conversations_table', 24),
(110, '2020_11_17_072348_create_offline_payments_table', 25),
(111, '2020_11_19_191943_add_replied_status_to_comments_table', 25),
(114, '2020_11_20_215748_create_subscribes_table', 26),
(115, '2020_11_21_185519_create_notification_templates_table', 27),
(116, '2020_11_22_210832_create_promotions_table', 28),
(118, '2020_11_23_194153_add_status_column_to_discounts_table', 29),
(119, '2020_11_23_213532_create_users_occupations_table', 30),
(120, '2020_11_30_220855_change_amount_in_payouts_table', 31),
(121, '2020_11_30_231334_add_pay_date_in_offline_payments_table', 31),
(122, '2020_11_30_233018_add_charge_enum_in_type_in_orders_table', 31),
(123, '2020_12_01_193948_create_testimonials_table', 32),
(124, '2020_12_02_202043_edit_and_add_types_to_webinars_table', 33),
(128, '2020_12_04_204048_add_column_creator_id_to_some_tables', 34),
(129, '2020_12_05_205320_create_text_lessons_table', 35),
(130, '2020_12_05_210052_create_text_lessons_attachments_table', 36),
(131, '2020_12_06_215701_add_order_column_to_webinar_items_tables', 37),
(132, '2020_12_11_114844_add_column_storage_to_files_table', 38),
(133, '2020_12_07_211009_add_subscribe_id_in_order_items_table', 39),
(134, '2020_12_07_211657_nullable_payment_method_in_orders_table', 39),
(135, '2020_12_07_212306_add_subscribe_enum__type_in_orders_table', 39),
(136, '2020_12_07_223237_changes_in_sales_table', 39),
(137, '2020_12_07_224925_add_subscribe_id_in_accounting_table', 39),
(138, '2020_12_07_230200_create_subscribe_uses_table', 39),
(139, '2020_12_11_123209_add_subscribe_type_account_in_accounting_table', 39),
(140, '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table', 39),
(141, '2020_12_11_135824_add_subscribe_payment_method_in_sales_table', 39),
(143, '2020_12_13_205751_create_advertising_banners_table', 41),
(145, '2020_12_14_204251_create_become_instructors_table', 42),
(146, '2020_11_12_232207_create_reports_table', 43),
(147, '2020_11_12_232207_create_comments_reports_table', 44),
(148, '2020_12_17_210822_create_webinar_reports_table', 45),
(150, '2020_12_18_181551_create_notifications_table', 46),
(151, '2020_12_18_195833_create_notifications_status_table', 47),
(152, '2020_12_19_195152_add_status_column_to_payment_channels_table', 48),
(154, '2020_12_20_231434_create_contacts_table', 49),
(155, '2020_12_21_210345_edit_quizzes_table', 50),
(156, '2020_12_24_221715_add_column_to_users_table', 50),
(157, '2020_12_24_084728_create_special_offers_table', 51),
(158, '2020_12_25_204545_add_promotion_enum_type_in_orders_table', 51),
(159, '2020_12_25_205139_add_promotion_id_in_order_items_table', 51),
(160, '2020_12_25_205811_add_promotion_id_in_accounting_table', 51),
(161, '2020_12_25_210341_add_promotion_id_in_sales_table', 51),
(162, '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table', 51),
(163, '2020_12_25_231005_add_promotion_type_enum_in_sales_table', 51),
(166, '2020_12_29_192943_add_column_reply_to_contacts_table', 53),
(167, '2020_12_30_225001_create_payu_transactions_table', 54),
(168, '2021_01_06_202649_edit_column_password_from_users_table', 55),
(169, '2021_01_08_134022_add_api_column_to_sessions_table', 56),
(170, '2021_01_10_215540_add_column_store_type_to_accounting', 57),
(173, '2021_01_13_214145_edit_carts_table', 58),
(174, '2021_01_13_230725_delete_column_type_from_orders_table', 59),
(175, '2021_01_20_214653_add_discount_column_to_reserve_meetings_table', 60),
(177, '2021_01_27_193915_add_foreign_key_to_support_conversations_table', 61),
(178, '2021_02_02_203821_add_viewed_at_column_to_comments_table', 62),
(180, '2021_02_12_134504_add_financial_approval_column_to_users_table', 64),
(181, '2021_02_12_131916_create_verifications_table', 65),
(182, '2021_02_15_221518_add_certificate_to_users_table', 66),
(183, '2021_02_16_194103_add_cloumn_private_to_webinars_table', 66),
(184, '2021_02_18_213601_edit_rates_column_webinar_reviews_table', 67),
(188, '2021_02_27_212131_create_noticeboards_table', 68),
(189, '2021_02_27_213940_create_noticeboards_status_table', 68),
(191, '2021_02_28_195025_edit_groups_table', 69),
(192, '2021_03_06_205221_create_newsletters_table', 70),
(193, '2021_03_12_105526_add_is_main_column_to_roles_table', 71),
(194, '2021_03_12_202441_add_description_column_to_feature_webinars_table', 72),
(195, '2021_03_18_130248_edit_status_column_from_supports_table', 73),
(196, '2021_03_19_113306_add_column_order_to_categories_table', 74),
(197, '2021_03_19_115939_add_column_order_to_filter_options_table', 75),
(199, '2021_03_24_100005_edit_discounts_table', 76),
(200, '2021_03_27_204551_create_sales_status_table', 77),
(202, '2021_03_28_182558_add_column_page_to_settings_table', 78),
(206, '2021_03_31_195835_add_new_status_in_reserve_meetings_table', 79),
(207, '2020_12_12_204705_create_course_learning_table', 80),
(208, '2021_04_19_195452_add_meta_description_column_to_blog_table', 81),
(209, '2021_04_21_200131_add_icon_column_to_categories_table', 82),
(210, '2021_04_21_203746_add_is_popular_column_to_subscribes_table', 83),
(211, '2021_04_25_203955_add_is_charge_account_column_to_order_items', 84),
(212, '2021_04_25_203955_add_is_charge_account_column_to_orders', 85),
(213, '2021_05_13_111720_add_moderator_secret_column_to_sessions_table', 86),
(214, '2021_05_13_123920_add_zoom_id_column_to_sessions_table', 87),
(215, '2021_05_14_182848_create_session_reminds_table', 88),
(217, '2021_05_25_193743_create_users_zoom_api_table', 89),
(218, '2021_05_25_205716_add_new_column_to_sessions_table', 90),
(219, '2021_05_27_095128_add_user_id_to_newsletters_table', 91),
(220, '2020_12_27_192459_create_pages_table', 92),
(221, '2021_07_03_222439_add_special_offer_id_to_cart_table', 93),
(222, '2021_09_02_101422_add_payment_data_to_orders_table', 94),
(223, '2021_09_02_110519_add_sender_id_to_notifications_table', 95),
(224, '2021_09_06_113524_create_webinar_chapters_table', 96),
(228, '2021_09_06_114459_add_chapter_id_to_files_table', 97),
(229, '2021_09_06_114532_add_chapter_id_to_text_lessons_table', 97),
(230, '2021_09_06_114547_add_chapter_id_to_sessions_table', 97),
(231, '2021_09_13_134659_add_chapter_id_to_quizzes_table', 98),
(234, '2021_09_14_122505_create_affiliates_table', 100),
(235, '2021_09_14_122117_create_affiliates_codes_table', 101),
(239, '2021_09_14_142927_add_affiliate_column_to_users_table', 105),
(241, '2021_09_14_142302_add_affiliate_column_to_accounting_table', 106),
(244, '2021_09_18_155914_create_blog_translations_table', 107),
(246, '2021_09_19_190400_create_page_translations_table', 108),
(248, '2021_09_19_203526_create_setting_translations_table', 109),
(250, '2021_09_20_140241_create_advertising_banners_translations_table', 110),
(252, '2021_09_20_175518_create_category_translations_table', 111),
(255, '2021_09_20_184724_create_filter_translations_table', 112),
(256, '2021_09_20_185132_create_filter_option_translations_table', 112),
(258, '2021_09_21_160650_create_subscribe_translations_table', 113),
(260, '2021_09_21_162922_create_promotion_translations_table', 114),
(262, '2021_09_21_164954_create_testimonial_translations_table', 115),
(264, '2021_09_21_182251_create_feature_webinar_translations_table', 116),
(266, '2021_09_21_184239_create_certificate_template_translations_table', 117),
(268, '2021_09_21_195731_create_support_department_translations_table', 118),
(270, '2021_09_21_201512_create_badge_translations_table', 119),
(272, '2021_09_22_120723_create_webinar_translations_table', 120),
(274, '2021_09_22_135518_create_ticket_translations_table', 121),
(276, '2021_09_22_144342_create_webinar_chapter_translations_table', 122),
(278, '2021_09_22_162502_create_session_translations_table', 123),
(280, '2021_09_22_172309_create_file_translations_table', 124),
(282, '2021_09_22_173500_create_faq_translations_table', 125),
(284, '2021_09_23_094903_create_text_lesson_translations_table', 126),
(286, '2021_09_27_194537_create_quiz_translations_table', 127),
(288, '2021_09_28_112529_create_quiz_question_translations_table', 128),
(290, '2021_09_28_122513_create_quizzes_questions_answer_translations_table', 129),
(291, '2021_12_03_103010_add_agora_session_api_to_sessions_table', 130),
(292, '2021_12_03_103558_add_agora_to_sessions_table', 131),
(293, '2021_12_03_114009_create_agora_history_table', 132),
(295, '2021_12_04_183524_create_regions_table', 133),
(298, '2021_12_25_151304_add_new_column_to_meetings_table', 135),
(299, '2021_12_26_142304_add_new_column_to_meeting_times_table', 136),
(302, '2022_01_01_162247_add_new_column_to_reserve_meetings_table', 137),
(305, '2022_01_02_142927_create_rewards_table', 138),
(307, '2022_01_03_153517_create_rewards_accounting_table', 139),
(308, '2022_01_04_161756_add_score_column_to_badges_table', 140),
(309, '2022_01_04_165147_add_points_column_to_webinars_table', 141),
(312, '2022_01_08_154504_edit_storage_column_and_add_new_value_to_files_table', 142),
(313, '2022_01_11_162839_add_timezone_column_to_users_table', 143),
(314, '2022_01_12_142238_add_timezone_column_to_webinars_table', 144),
(315, '2022_01_15_131828_create_registration_packages_table', 145),
(319, '2022_01_15_203133_edit_columns_in_accounting_table', 146),
(320, '2022_01_16_102825_edit_columns_in_order_items_table', 147),
(321, '2022_01_17_152605_add_registration_package_id_to_sales_table', 148),
(322, '2022_01_18_103414_create_users_registration_packages_table', 149),
(323, '2022_01_18_113331_create_groups_registration_packages_table', 150),
(325, '2022_01_20_110119_add_become_instructor_id_column_to_order_items_table', 152),
(326, '2022_01_18_160228_add_column_role_to_become_instructors_table', 153),
(327, '2022_01_26_080434_add_reserve_date_columns_to_reserve_meetings_table', 154),
(328, '2022_01_28_094259_edit_column_in_discounts_table', 155),
(329, '2022_01_28_094515_create_discount_courses_table', 155),
(330, '2022_01_28_094527_create_discount_groups_table', 155),
(331, '2022_01_31_093231_add_column_description_to_meeting_times_table', 156),
(332, '2022_01_31_093306_add_column_description_to_reserve_meetings_table', 156),
(334, '2022_02_01_092922_create_newsletters_history_table', 157),
(335, '2022_02_01_104529_create_discount_categories_table', 158),
(337, '2022_02_02_092820_add_attachment_column_to_offline_payments_table', 159),
(339, '2022_02_02_184235_add_column_video_demo_source_to_webinars_table', 160),
(340, '2021_12_05_193333_add_new_column_to_users_table', 161),
(341, '2022_02_27_072819_add_forign_key_for_region_to_users_table', 162),
(347, '2022_03_05_123830_create_product_categories_table', 163),
(348, '2022_03_05_125138_create_product_filters_table', 163),
(350, '2022_03_06_091528_create_product_filter_options_table', 163),
(351, '2022_03_07_081257_create_product_specifications_table', 164),
(353, '2022_03_07_081808_create_product_specification_categories_table', 165),
(357, '2022_03_05_125434_create_products_table', 166),
(358, '2022_03_07_093128_create_product_discounts_table', 166),
(362, '2022_03_08_101832_create_product_media_table', 167),
(363, '2022_03_09_054031_create_product_selected_filter_options_table', 168),
(364, '2022_03_09_083337_create_product_specification_meta_table', 169),
(369, '2022_03_09_084108_create_product_selected_specifications_table', 170),
(370, '2022_03_09_140558_create_product_faqs_table', 171),
(374, '2022_03_11_180436_create_product_reviews_table', 174),
(375, '2022_03_11_182715_add_product_id_to_comments_reports_table', 175),
(376, '2022_03_08_094452_create_product_files_table', 176),
(377, '2022_03_11_180746_add_product_id_to_comments_table', 177),
(378, '2022_03_12_102233_add_new_position_to_advertising_banners_table', 178),
(383, '2022_03_13_072108_add_product_id_to_sales_table', 179),
(385, '2022_03_13_081212_create_product_orders_table', 180),
(386, '2022_03_19_171559_create_product_selected_specification_translations_table', 181),
(387, '2022_03_21_161055_add_create_store_column_to_users_table', 182),
(388, '2022_03_26_065509_add_new_type_to_rewards_table', 183),
(389, '2022_03_28_051949_add_product_count_column_to_registration_packages_table', 184),
(391, '2022_03_28_054322_add_product_type_column_to_discounts_table', 185),
(392, '2022_03_28_062248_edit_type_column_of_rewards_accounting_table', 186),
(393, '2022_03_28_083906_edit_type_column_to_badges_table', 187),
(394, '2022_04_02_051515_create_webinar_chapter_items_table', 188),
(395, '2022_04_02_085059_remove_type_column_from_webinar_chapters_table', 189),
(396, '2022_04_02_131352_add_check_sequence_content_fields_to_contents_tables', 190),
(399, '2022_04_04_075541_add_assignment_type_to_webinar_chapter_items_table', 192),
(400, '2022_04_04_071203_create_webinar_assignments_table', 193),
(401, '2022_04_04_071303_create_webinar_assignment_attachments_table', 193),
(405, '2022_04_05_053308_create_webinar_assignment_history_table', 194),
(406, '2022_04_05_060030_create_webinar_assignment_history_messages_table', 194),
(407, '2022_04_06_121240_add_new_type_passed_assignment_to_rewards_table', 195),
(408, '2022_04_09_064609_add_access_content_column_to_users_table', 196),
(409, '2022_04_10_073822_create_bundles_table', 197),
(410, '2022_04_10_092348_create_bundle_filter_option_table', 198),
(413, '2022_04_10_130733_create_bundle_webinars_table', 200),
(421, '2022_04_10_093457_add_bundle_id_to_needle_tables', 201),
(422, '2022_04_12_153052_add_access_time_to_webinars_table', 202),
(423, '2022_04_13_053947_create_course_noticeboards_table', 203),
(424, '2022_04_13_054536_create_course_noticeboard_status_table', 203),
(425, '2022_04_13_130155_add_column_forum_to_webinars_table', 204),
(427, '2022_04_14_060606_create_course_forums_table', 205),
(428, '2022_04_14_063316_create_course_forum_answers_table', 206),
(447, '2022_04_21_133513_add_new_type_in_rewards_table', 216),
(448, '2022_04_21_135212_add_new_type_in_badges_table', 217),
(449, '2022_04_24_081637_add_new_type_instructor_blog_in_rewards_table', 218),
(450, '2022_04_24_082515_add_new_type_instructor_blog_in_badges_table', 219),
(452, '2022_04_25_043945_create_users_cookie_security_table', 220),
(453, '2022_04_25_143142_add_organization_price__column_to_webinars_table', 221),
(454, '2022_04_25_165256_add_image_and_video_to_quizzes_questions_table', 222),
(456, '2022_04_26_060018_edit_certificates_templates_table', 223),
(458, '2022_04_26_082017_edit_certificates_table', 224),
(459, '2022_04_26_155421_create_subscribe_reminds_table', 225),
(460, '2022_04_26_163428_add_instructor_id_to_noticeboards_table', 226),
(461, '2022_04_27_133655_add_unlimited_download_to_subscribes_table', 227),
(462, '2022_04_27_133655_add_infinite_use_to_subscribes_table', 228),
(463, '2022_04_27_140844_add_extra_time_to_join_to_sessions_table', 229),
(464, '2022_04_28_052318_create_webinar_extra_description_table', 230),
(466, '2022_05_09_125820_create_navbar_buttons_table', 232),
(467, '2021_06_07_000000_create_payku_transactions_table', 233),
(468, '2021_06_07_000001_create_payku_payments_table', 233),
(469, '2021_11_30_122831_create_jazzcash_transactions_table', 233),
(470, '2021_12_15_000000_add_new_columns_to_tables', 233),
(471, '2022_05_23_081324_create_product_specification_multi_values_table', 234),
(472, '2022_05_23_091527_create_product_selected_specification_multi_values_table', 235),
(475, '2022_05_23_151601_add_product_delivery_fee_column_to_sales_table', 236),
(476, '2022_04_18_103856_create_forums_table', 237),
(477, '2022_04_18_152201_create_forum_topics_table', 237),
(478, '2022_04_18_152845_create_forum_topic_attachments_table', 237),
(479, '2022_04_19_071911_create_forum_topic_posts_table', 237),
(480, '2022_04_19_123745_create_forum_topic_reports_table', 237),
(481, '2022_04_19_135314_create_forum_topic_bookmarks_table', 237),
(482, '2022_04_19_152929_create_forum_topic_likes_table', 237),
(483, '2022_04_20_152756_create_forum_featured_topics_table', 237),
(484, '2022_04_21_054043_create_forum_recommended_topics_table', 237),
(485, '2022_04_21_054815_create_forum_recommended_topic_items_table', 237),
(486, '2022_05_26_085212_change_some_column_varchar_to_text', 238),
(487, '2022_05_27_142612_add_avarat_settings_to_users_table', 239),
(489, '2022_05_01_151107_add_manual_added_column_to_sales_table', 240),
(490, '2022_05_29_162315_create_delete_account_requests_table', 241),
(491, '2020_10_20_211927_create_users_metas_table', 242),
(492, '2022_05_31_133347_add_certificate_column_to_webinars_table', 243),
(494, '2022_05_31_165839_add_online_viewer_column_to_files_table', 244),
(495, '2022_06_08_071712_create_home_sections_table', 245),
(496, '2022_10_14_074434_add_reserve_meeting_id_to_sessions_table', 246),
(497, '2022_12_25_082946_add_logged_count_column_to_users_table', 247),
(498, '2022_12_26_064214_add_new_column_to_quizzes_table', 247),
(499, '2022_12_27_064800_add_column_url_to_categories_table', 247),
(500, '2023_01_02_085731_create_upcoming_courses_table', 248),
(501, '2023_01_09_065436_create_installments_table', 249),
(502, '2023_01_14_144421_create_installment_orders_table', 250),
(503, '2023_01_18_064141_create_floating_bars_table', 251),
(504, '2023_01_18_145605_create_cashback_rules_table', 252),
(505, '2023_01_21_075422_add_column_to_accounting_table', 253),
(506, '2023_01_24_141128_create_currencies_table', 254),
(507, '2023_01_25_090622_add_currency_column_to_users', 254),
(508, '2023_01_25_104531_edit_price_column_tables', 254),
(509, '2023_01_25_145647_add_column_to_payment_channels_table', 254),
(510, '2023_01_29_074044_create_installment_reminders_table', 255),
(511, '2023_02_06_135446_add_new_columns_to_special_offers_table', 256),
(512, '2023_02_07_141617_create_discount_bundles_table', 257),
(513, '2023_02_07_152101_add_new_columns_to_users_zoom_api_table', 258),
(514, '2023_02_08_140023_create_home_page_statistics_table', 259),
(515, '2023_02_11_135759_add_enable_waitlist_column_to_webinars_table', 260),
(516, '2023_02_11_144743_create_waitlists_table', 261),
(518, '2023_02_13_134648_create_offline_banks_table', 262),
(520, '2023_02_14_144003_create_user_banks_table', 263),
(523, '2023_02_15_140227_create_test_table', 264),
(524, '2023_02_15_151458_add_new_storage_to_files_table', 265),
(528, '2023_02_20_141047_create_gifts_table', 266),
(529, '2023_02_27_065823_add_enable_registration_bonus_to_users_table', 267),
(530, '2023_03_05_075231_add_installment_order_id_to_accounting_table', 267),
(531, '2023_03_08_095345_edit_payouts_table', 268),
(532, '2023_03_10_143238_edit_column_in_quizzes_table', 269),
(533, '2023_03_12_110714_edit_column_in_order_items_table', 270),
(534, '2023_03_13_120634_edit_price_column_in_promotions_table', 271),
(535, '2023_03_13_135747_add_price_column_to_installment_orders_table', 271),
(536, '2023_05_02_150757_create_selected_installments_table', 272),
(537, '2023_06_09_072812_create_forms_table', 273),
(538, '2023_06_09_084907_create_form_fields_table', 273),
(539, '2023_06_11_123736_create_form_submissions_table', 273),
(540, '2023_06_13_115235_create_user_form_fields_table', 273),
(541, '2019_08_19_000000_create_failed_jobs_table', 274),
(542, '2019_12_14_000001_create_personal_access_tokens_table', 274),
(543, '2023_08_13_145531_create_ai_content_templates_table', 274),
(544, '2023_08_17_065609_create_ai_contents_table', 274),
(545, '2023_09_12_102852_add_ai_content_limitation_column_to_users_table', 275),
(546, '2023_09_12_103623_add_ai_content_access_column_to_registration_packages_table', 275);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_buttons`
--

CREATE TABLE `navbar_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `for_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbar_buttons`
--

INSERT INTO `navbar_buttons` (`id`, `role_id`, `for_guest`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 4, 0),
(4, 3, 0),
(6, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_button_translations`
--

CREATE TABLE `navbar_button_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `navbar_button_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbar_button_translations`
--

INSERT INTO `navbar_button_translations` (`id`, `navbar_button_id`, `locale`, `title`, `url`) VALUES
(1, 1, 'en', 'Become instructor', '/become-instructor'),
(2, 1, 'ar', 'أصبح مدربا', '/become-instructor'),
(3, 1, 'es', 'Convertirse en instructora', '/become-instructor'),
(4, 2, 'en', 'Admin panel', '/admin'),
(5, 3, 'en', 'Create a new course', '/panel/webinars/new'),
(6, 3, 'es', 'Crear un nuevo curso', '/panel/webinars/new'),
(7, 3, 'ar', 'أنشئ دورة جديدة', '/panel/webinars/new'),
(8, 4, 'en', 'Create a new course', '/panel/webinars/new'),
(9, 4, 'es', 'Crear un nuevo curso', '/panel/webinars/new'),
(10, 4, 'ar', 'أنشئ دورة جديدة', '/panel/webinars/new'),
(11, 6, 'en', 'Start learning', '/login');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `user_id`, `email`, `created_at`) VALUES
(8, 995, 'cameronschofield@gmail.com', 1625090411),
(9, 1017, 'a.pmelaa@gmail.com', 1646389129),
(10, 996, 'robert2002@gmail.com', 1646414262),
(11, NULL, 'quinnkenneth3437@yahoo.com', 1707023255),
(12, NULL, 'vadimaks3c@outlook.com', 1707695261),
(13, NULL, 'carlos.ricks4345@aol.com', 1708390411),
(14, NULL, 'randy45hamptongkj@outlook.com', 1709276047),
(15, NULL, 'hamptonelfreda8291@gmail.com', 1709811743),
(16, NULL, 'george90scarboroughe7w@outlook.com', 1710602838),
(17, NULL, 'dahlnoble168@gmail.com', 1711276523),
(18, NULL, 'james8s_craiggm@outlook.com', 1711691357),
(19, NULL, 'tmorrisiv1994@gmail.com', 1712165810),
(20, NULL, 'jukes_justin1997@yahoo.com', 1713057577),
(21, NULL, 'antonia98allmang3r@outlook.com', 1713194110),
(22, NULL, 'shaquanaahs@outlook.com', 1713583465),
(23, NULL, 'belreif901@gmail.com', 1713818480);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters_history`
--

CREATE TABLE `newsletters_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `send_method` enum('send_to_all','send_to_bcc','send_to_excel') NOT NULL,
  `bcc_email` varchar(255) DEFAULT NULL,
  `email_count` int(11) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters_history`
--

INSERT INTO `newsletters_history` (`id`, `title`, `description`, `send_method`, `bcc_email`, `email_count`, `created_at`) VALUES
(1, 'Black Friday OFF', '<p>Hello,</p><p>Be sure to check our Black Friday discounts.</p><p>Regards.</p>', 'send_to_all', NULL, 2, 1646389249);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(10) UNSIGNED DEFAULT NULL,
  `instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('all','organizations','students','instructors','students_and_instructors') NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `organ_id`, `instructor_id`, `webinar_id`, `user_id`, `type`, `sender`, `title`, `message`, `created_at`) VALUES
(10, NULL, NULL, NULL, NULL, 'all', 'Staff', 'Top summer classes', '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>', 1625921717),
(11, NULL, NULL, NULL, NULL, 'instructors', 'Staff', 'Instructor terms of services changed', '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>', 1625921872),
(12, NULL, NULL, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards_status`
--

CREATE TABLE `noticeboards_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noticeboard_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards_status`
--

INSERT INTO `noticeboards_status` (`id`, `user_id`, `noticeboard_id`, `seen_at`) VALUES
(7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sender` enum('system','admin') DEFAULT 'system',
  `type` enum('single','all_users','students','instructors','organizations','group','course_students') NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `webinar_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(2213, 1, NULL, NULL, NULL, 'New user registered', '<p>Student registered on the platform on 18 ديسمبر 2023 13:01&nbsp;as Student</p>', 'system', 'single', 1702922461),
(2214, 1, NULL, NULL, NULL, 'New user registered', '<p>Jihed Goui registered on the platform on 18 ديسمبر 2023 14:09&nbsp;as Student</p>', 'system', 'single', 1702926557),
(2215, 1, NULL, NULL, NULL, 'new badge', '<p>You received Faithful User&nbsp;badge</p>', 'system', 'single', 1703012714),
(2216, 1, NULL, NULL, NULL, 'new badge', '<p>You received Faithful User&nbsp;badge</p>', 'system', 'single', 1703012714),
(2217, 1052, NULL, NULL, NULL, 'Course approve', '<p>your course with title نحو عربي approved</p>', 'system', 'single', 1703028630),
(2218, 1052, NULL, NULL, NULL, 'new badge', '<p>You received Junior Vendor&nbsp;badge</p>', 'system', 'single', 1703028712),
(2219, 1, NULL, NULL, NULL, 'New user registered', '<p>rania chebbi registered on the platform on 20 ديسمبر 2023 03:29&nbsp;as Student</p>', 'system', 'single', 1703060965),
(2220, 1, NULL, NULL, NULL, 'New user registered', '<p>jaafer dargouthy registered on the platform on 20 ديسمبر 2023 14:07&nbsp;as Student</p>', 'system', 'single', 1703099226),
(2221, 1052, NULL, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1703457080),
(2222, 1, NULL, NULL, NULL, 'New user registered', '<p>ujehaqnej registered on the platform on 3 يناير 2024 05:43&nbsp;as Student</p>', 'system', 'single', 1704278636),
(2223, 1, NULL, NULL, NULL, 'New user registered', '<p>rojoyot registered on the platform on 3 يناير 2024 06:09&nbsp;as Student</p>', 'system', 'single', 1704280186),
(2224, 1, NULL, NULL, NULL, 'New user registered', '<p>dargouthi rania registered on the platform on 7 يناير 2024 06:45&nbsp;as Student</p>', 'system', 'single', 1704627953),
(2225, 1057, NULL, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1705147396),
(2226, 1, NULL, NULL, NULL, 'New user registered', '<p>Achref Babba registered on the platform on 13 يناير 2024 07:50&nbsp;as Student</p>', 'system', 'single', 1705150217),
(2227, 1, NULL, NULL, NULL, 'New user registered', '<p>rania CASPecole registered on the platform on 14 يناير 2024 14:21&nbsp;as Organization</p>', 'system', 'single', 1705260105),
(2228, 1, NULL, NULL, NULL, 'New item created', '<p>rania CASPecole created a new item with title 1 er course</p>', 'system', 'single', 1705264144),
(2229, 1059, NULL, NULL, NULL, 'new badge', '<p>You received Junior Vendor&nbsp;badge</p>', 'system', 'single', 1705264311),
(2230, 1, NULL, NULL, NULL, 'New item created', '<p>rania CASPecole created a new item with title course ecole</p>', 'system', 'single', 1705264608),
(2231, 1059, NULL, NULL, NULL, 'new badge', '<p>You received Senior Vendor&nbsp;badge</p>', 'system', 'single', 1705264850),
(2232, 1059, NULL, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title course ecole</p>', 'system', 'single', 1705264947),
(2233, 1, NULL, NULL, NULL, 'Content review request', '<p>rania CASPecole sent a review request for course ecole</p>', 'system', 'single', 1705264947),
(2234, 1059, NULL, NULL, NULL, 'Bundle submitted successfully', '<p>Your bundle with the title course bundel for me&nbsp;submitted successfully.</p>', 'system', 'single', 1705265287),
(2235, 1, NULL, NULL, NULL, 'Bundle submitted (Admin)', '<p>rania CASPecole submitted a bundle with the title course bundel for me.</p>', 'system', 'single', 1705265287),
(2236, 1, NULL, NULL, NULL, 'New item created', '<p>rania CASPecole created a new item with title course bundel for me</p>', 'system', 'single', 1705265287),
(2237, 1059, NULL, NULL, NULL, 'new badge', '<p>You received Best Seller&nbsp;badge</p>', 'system', 'single', 1705268568),
(2238, 1059, NULL, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1705310567),
(2239, 1059, NULL, NULL, NULL, 'Course approve', '<p>your course with title course ecole approved</p>', 'system', 'single', 1705517876),
(2240, 1052, NULL, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1705706603),
(2241, 1, NULL, NULL, NULL, 'New user registered', '<p>jaafar registered on the platform on 20 يناير 2024 08:29&nbsp;as Student</p>', 'system', 'single', 1705757364),
(2242, 1, NULL, NULL, NULL, 'New user registered', '<p>jaafar registered on the platform on 20 يناير 2024 08:33&nbsp;as Student</p>', 'system', 'single', 1705757638),
(2243, 1, NULL, NULL, NULL, 'New user registered', '<p>YLNSTpBEibrIoHAd registered on the platform on 4 فبراير 2024 00:08&nbsp;as Organization</p>', 'system', 'single', 1707023296),
(2244, 1, NULL, NULL, NULL, 'New user registered', '<p>Diana Rossenga registered on the platform on 9 فبراير 2024 11:11&nbsp;as Student</p>', 'system', 'single', 1707495109),
(2245, 1, NULL, NULL, NULL, 'New user registered', '<p>njGeSIoXx registered on the platform on 11 فبراير 2024 18:48&nbsp;as Organization</p>', 'system', 'single', 1707695308),
(2246, 1, NULL, NULL, NULL, 'New user registered', '<p>طالب registered on the platform on 12 فبراير 2024 15:31&nbsp;as Student</p>', 'system', 'single', 1707769872),
(2247, 1059, NULL, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1708005555),
(2248, 1057, NULL, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1708293412),
(2249, 1, NULL, NULL, NULL, 'New user registered', '<p>pITcGLuJnK registered on the platform on 19 فبراير 2024 19:54&nbsp;as Organization</p>', 'system', 'single', 1708390499),
(2250, 1, NULL, NULL, NULL, 'New user registered', '<p>ECOLE PRIVE registered on the platform on 20 فبراير 2024 15:57&nbsp;as Organization</p>', 'system', 'single', 1708462635),
(2251, 1066, NULL, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1708901139),
(2252, 1, NULL, NULL, NULL, 'New user registered', '<p>GUQdsavFLZYAlVoE registered on the platform on 1 مارس 2024 01:54&nbsp;as Organization</p>', 'system', 'single', 1709276074),
(2253, 1, NULL, NULL, NULL, 'New user registered', '<p>ThwZbIFJ registered on the platform on 7 مارس 2024 06:43&nbsp;as Organization</p>', 'system', 'single', 1709811805),
(2254, 1, NULL, NULL, NULL, 'New user registered', '<p>CRqwczeghPiKQ registered on the platform on 24 مارس 2024 05:35&nbsp;as Organization</p>', 'system', 'single', 1711276556),
(2255, 1066, NULL, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1711282481),
(2256, 1, NULL, NULL, NULL, 'New user registered', '<p>UnmatReekDrarma registered on the platform on 26 مارس 2024 08:58&nbsp;as Student</p>', 'system', 'single', 1711461531),
(2257, 1, NULL, NULL, NULL, 'New user registered', '<p>fqOvEYIgPiNZAd registered on the platform on 29 مارس 2024 00:50&nbsp;as Organization</p>', 'system', 'single', 1711691438),
(2258, 1, NULL, NULL, NULL, 'New user registered', '<p>vGJPfXLFNOnRIq registered on the platform on 3 أبريل 2024 12:37&nbsp;as Organization</p>', 'system', 'single', 1712165851),
(2259, 1, NULL, NULL, NULL, 'New user registered', '<p>Eddy Diot registered on the platform on 9 أبريل 2024 05:16&nbsp;as Student</p>', 'system', 'single', 1712657796),
(2260, 1, NULL, NULL, NULL, 'New user registered', '<p>TzWPKQSiusXf registered on the platform on 13 أبريل 2024 20:20&nbsp;as Organization</p>', 'system', 'single', 1713057628),
(2261, 1, NULL, NULL, NULL, 'New user registered', '<p>VArUCxXBQhw registered on the platform on 15 أبريل 2024 10:15&nbsp;as Organization</p>', 'system', 'single', 1713194113),
(2262, 1, NULL, NULL, NULL, 'New user registered', '<p>VukyPwfrLOJBIiN registered on the platform on 19 أبريل 2024 22:24&nbsp;as Organization</p>', 'system', 'single', 1713583490),
(2263, 1, NULL, NULL, NULL, 'New user registered', '<p>vQdoDpZJPzki registered on the platform on 22 أبريل 2024 15:42&nbsp;as Organization</p>', 'system', 'single', 1713818526);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_status`
--

CREATE TABLE `notifications_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `user_id`, `notification_id`, `seen_at`) VALUES
(1, 1, 2223, 1704625728),
(2, 1057, 2225, 1705256362),
(3, 1059, 2238, 1705510808);

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `title`, `template`) VALUES
(2, 'new badge', '<p>You received [u.b.title]&nbsp;badge</p>'),
(3, 'Change user group', '<p>your group change to [u.g.title]</p>'),
(4, 'Course created', '<p>you create new course&nbsp;with Title [c.title]</p>'),
(5, 'Course approve', '<p>your course with title [c.title] approved</p>'),
(6, 'Course rejection', '<p>Your course with title [c.title] rejected</p>'),
(7, 'New comment', '<p>user [u.name] add new comment fro course with title [c.title]</p>'),
(8, 'New support message', '<p>user [u.name] send new support message for course with title [c.title]</p>'),
(9, 'support message replied', '<p>support message replied fro course [c.title]</p>'),
(10, 'New support for admin', '<p>send new support&nbsp; ticket with title&nbsp;[s.t.title]</p>'),
(11, 'support ticket replied for admin', '<p>replied support&nbsp; ticket with title&nbsp;[s.t.title]</p>'),
(12, 'New financial document', '<p>&nbsp;New financial document for course [c.title] with type [f.d.type] with price [amount]</p>'),
(13, 'Payout request', '<p>payout request with amount&nbsp; [payout.amount]</p>'),
(14, 'Payout proceed', 'Payout with amount [payout.amount]&nbsp;&nbsp;proceed by account [payout.account]'),
(15, 'New sales', '<p>new sale for course with title [c.title]</p>'),
(16, 'New purchase', '<p>new purchase for course with title [c.title]</p>'),
(17, 'Rating (Feedback)', '<p>new feedback submitted for course with title [c.title] bu student [student.name] and rate [rate.count]</p>'),
(18, 'Offline payment request', '<p>Offline payment request with amount [amount]</p>'),
(19, 'Offline payment approved', '<p>Offline payment request with amount [amount]&nbsp;approved</p>'),
(20, 'Offline payment rejected', '<p>Offline payment request with amount [amount]&nbsp;rejected</p>'),
(21, 'New subscribe plan', '<p>New subscribe plan activated by user [u.name] for plan [s.p.name]</p>'),
(22, 'New appointment', '<p>New appointment booked by user [u.name] in time [time.date] with price&nbsp;[amount]</p>'),
(23, 'New appointment link', '<p>appointment&nbsp; link defined by the [instructor.name]. time [time.date] and link is [link]</p>'),
(24, 'Appointment reminder', '<p>You have an appointment on [time.date]</p>'),
(25, 'Meeting finished', '<p>meeting finished instructor : [instructor.name] and student :&nbsp; [student.name] and time : [time.date]</p>'),
(26, 'New contact message', '<p>New contact message with title [c.u.title] and user name [u.name] recived</p>'),
(27, 'Webinar reminder', '<p>Webinar reminder time [time.date] webinar title [c.title]</p>'),
(28, 'Promotion plan', '<p>plan [p.p.name]&nbsp;&nbsp;activated for course [c.title]</p>'),
(29, 'Promotion plan for admin', '<p>new request promotion plan [p.p.name] for course [c.title]</p>'),
(30, 'Certificate', '<p>certificate recived for course [c.title]</p>'),
(31, 'Waiting quiz', '<p>student [student.name]&nbsp; waiting for quiz [q.title] for course [c.title]</p>'),
(32, 'Waiting quiz result', '<p>course [c.title]&nbsp;calculated quiz [q.title] result [q.result] by instructor</p>'),
(33, 'product new sale', '<p>new sale for product with title [p.title]</p>'),
(34, 'Product New purchase', '<p>new purchase for product with title [p.title]</p>'),
(35, 'Product New comment', '<p>user [u.name] add new comment fro product with title [p.title]</p>'),
(36, 'Product tracking code', '<p>user [u.name] add tracking code for product with title [p.title]</p>'),
(37, 'Product Rating (Feedback)', '<p>new feedback submitted for product with title [p.title] by user [u.name] and rate [rate.count]</p>'),
(38, 'Product receive shipment', '<p>user [u.name] received product with title [p.title]</p>'),
(39, 'Product out of stock', '<p>The product inventory ended with the title [p.title]</p>'),
(40, 'Send assignment by the student to the instructor', '<p>[student.name] send assignment for course by title [c.title]</p>'),
(41, 'when the instructor sends a message for assignment', '<p>[instructor.name] send message for course by title [c.title]</p>'),
(42, 'assignment grade', '<p>The [instructor.name]&nbsp;gave you a grade of [assignment_grade]&nbsp;for course by title [c.title]</p>'),
(43, 'user access to content', '<p>Your access to content is enabled.</p>'),
(44, 'Send post in topic', '<p>[u.name] send post in your topic with title [topic_title]&nbsp;</p>'),
(45, 'publish instructor blog post', '<p>your post with title [blog_title] published.</p>'),
(46, 'new comment for instructor blog', '<p>user [u.name] add new comment for your blog with title [blog_title]</p>'),
(47, 'Meeting reminder', '<p>Meeting reminder time [time.date] with instructor by name [instructor.name]</p>'),
(48, 'subscribe expire reminder', '<p>Your subscribe has been expired in&nbsp;[time.date]</p>'),
(49, 'Course Forum new Question', '<p>[u.name] registered a question in the [c.title]&nbsp;course forum.</p>'),
(50, 'New answer in course forum', '<p>[u.name] registered a answer in the [c.title]&nbsp;course forum.</p>'),
(52, 'You received a gift', '<p>[u.name]&nbsp;sent you [gift_title] which is a [gift_type]&nbsp;as a gift with the following message: [gift_message]</p>'),
(53, 'Gift submitted successfully', '<p>Your gift request for [u.name]&nbsp;submitted successfully on [time.date]&nbsp;and the [gift_title] which is a [gift_type]&nbsp;at [amount]&nbsp;will be sent to the recipient on [time.date.2]&nbsp;with the following message: [gift_message]</p>'),
(54, 'Gift sent to recipient', '<p>We sent the gift request that you submitted on [time.date]&nbsp;for [u.name]. We sent [gift_title]&nbsp;which is a [gift_type]&nbsp;to the recipient with the following message on [time.date] . [gift_message]</p>'),
(55, 'Gift request submitted (Admin)', '<p>[u.name.2] submitted a gift request for [gift_title]&nbsp;which is a [gift_type]&nbsp;for [u.name]&nbsp;on [time.date]&nbsp;at [amount]&nbsp;and it will be sent to the recipient on [time.date.2]</p>'),
(56, 'Gift sent to recipient (Admin)', '<p>The system sent a [gift_title]&nbsp;which is a [gift_type]&nbsp;to [u.name]&nbsp;on [time.date.2]&nbsp;successfully. [u.name.2]&nbsp;submitted this request on [time.date]&nbsp;at [amount].</p>'),
(57, 'You have an upcoming installment', '<p>You have an installment for [installment_title] at [amount]&nbsp;on due date [time.date]</p>'),
(58, 'You have an unpaid installment', '<p>You have an installment for [installment_title]&nbsp;at [amount]&nbsp;for today. Please pay it as soon as possible.</p>'),
(59, 'You have an overdue installment', '<p>You have an overdue installment for [installment_title]&nbsp;at [amount]&nbsp;on due date [time.date].</p>'),
(60, 'Installment verification request approved', '<p>Your verification request for [installment_title]&nbsp;approved.</p>'),
(61, 'Installment verification request rejected', '<p>Your verification request for [installment_title]&nbsp;rejected.</p>'),
(62, 'Installment paid successfully', '<p>You paid [amount]&nbsp;for [installment_title]&nbsp;with due date [time.date]&nbsp;successfully.</p>'),
(63, 'Installment paid successfully (Admin)', '<p>[u.name] paid [amount]&nbsp;for [installment_title]&nbsp;with the due date [time.date]&nbsp;successfully.</p>'),
(64, 'Installment upfront amount paid', '<p>You paid [amount] as upfront for&nbsp;[installment_title].</p>'),
(65, 'Installment verification request submitted', '<p>We received your verification request for [installment_title]&nbsp;on [time.date]&nbsp;and the result will be informed to you soon.</p>'),
(66, 'Installment verification request submitted (Admin)', '<p>[u.name] submitted a verification request for [installment_title]&nbsp;on [time.date].</p>'),
(67, 'Installment request submitted', '<p>Your installment for [installment_title]&nbsp;at [amount]&nbsp;submitted successfully.</p>'),
(68, 'Installment request submitted (Admin)', '<p>[u.name] submitted an installment request for [installment_title]&nbsp;at [amount].</p>'),
(69, 'New upcoming course submitted', '<p>Your upcoming course [item_title]&nbsp;submitted successfully.</p>'),
(70, 'New upcoming course submitted (Admin)', '<p>[u.name] submitted an upcoming course with title [item_title].</p>'),
(71, 'Upcoming course approved', '<p>Your upcoming course [item_title]&nbsp;approved.</p>'),
(72, 'Upcoming course rejected', '<p>Your upcoming course [item_title] rejected.</p>'),
(73, 'Your upcoming course published', '<p>Your upcoming course [item_title]&nbsp;published.</p>'),
(74, 'Your upcoming course followed', '<p>[u.name] followed your upcoming course [item_title]</p>'),
(75, 'Upcoming course published and is accessible', '<p>The upcoming course [item_title] published now and you can check it.</p>'),
(76, 'You got cashback!', '<p>You got [amount]&nbsp;as cashback and this amount added to your account.</p>'),
(77, 'User got cashback (Admin)', '<p>[u.name] got [amount] as cashback and this amount charged to their account.</p>'),
(78, 'Bundle submitted successfully', '<p>Your bundle with the title [item_title]&nbsp;submitted successfully.</p>'),
(79, 'Bundle submitted (Admin)', '<p>[u.name] submitted a bundle with the title [item_title].</p>'),
(80, 'Bundle published successfully', '<p>Your bundle with title [item_title]&nbsp;published successfully.</p>'),
(81, 'Bundle rejected', '<p>Your bundle with title [item_title]&nbsp;rejected.</p>'),
(82, 'New review for your bundle', '<p>[u.name] submitted a [rate.count] star rating for your bundle [item_title].</p>'),
(83, 'You got registration bonus', '<p>You got [amount]&nbsp;as registration bonus.</p>'),
(84, 'Registration bonus unlocked', '<p>Your registration bonus [amount]&nbsp;unlocked.</p>'),
(85, 'Registration bonus unlocked (Admin)', '<p>The registration bonus [amount] is unlocked for [u.name].</p>'),
(86, 'SaaS package activated successfully', '<p>[item_title] activated for you until [time.date].</p>'),
(87, 'SaaS package activated (Admin)', '<p>[u.name] activated [item_title]&nbsp;registration plan until [time.date].</p>'),
(88, 'Your contact message submitted', '<p>We received your contact message with the subject [c.u.title]&nbsp;on time.date].</p>'),
(89, 'New contact message received', '<p>New contact message received from [u.name] with subject [c.u.title] with message [c.u.message]</p>'),
(90, 'You submitted to waitlist', '<p>You submitted to [c.title]&nbsp;waitlist.</p>'),
(91, 'User submitted in waitlist', '<p>[u.name] submitted to [c.title]&nbsp;waitlist.</p>'),
(92, 'New user registered with your affiliate code', '<p>[u.name] registered with your affiliate code on [time.date].</p>'),
(93, 'New quiz added to course', '<p>New quiz with the title [q.title]&nbsp;added to the course [c.title].</p>'),
(94, 'New reward point', '<p>You get [points]&nbsp;for [item_title]&nbsp;on [time.date]</p>'),
(95, 'New notice', '<p>You got a new notice with title [c.title]&nbsp;on [time.date]</p>'),
(96, 'New course notice', '<p>You got a new course notice for [c.title]&nbsp;with title [item_title]</p>'),
(97, 'Your user role changed', '<p>Your user role changed to [u.role]</p>'),
(98, 'New user group', '<p>You added to [u.g.title] user group.</p>'),
(99, 'Become instructor/organization request approved', '<p>Your become instructor/organization request is approved.</p>'),
(100, 'Become instructor/organization request rejected', '<p>Your instructor/organization request rejected</p>'),
(101, 'New question in course forum', '<p>[u.name] posted a new question in [c.title] forum.</p>'),
(102, 'New answer in course forum', '<p>[u.name] posted a new answer in [c.title] forum.</p>'),
(103, 'Live meeting created', '<p>[instructor.name] started a new live meeting. Please login to your account and join it now...</p>'),
(104, 'New user registered', '<p>[u.name] registered on the platform on [time.date]&nbsp;as [u.role]</p>'),
(105, 'New instructor/organization request', '<p>[u.name] submit a user role change request on [time.date]</p>'),
(106, 'New course enrollment', '<p>[u.name] enrolled in [c.title]&nbsp;on [time.date]&nbsp;at [amount]</p>'),
(107, 'New forum topic', '<p>[u.name] created a new topic with title [topic_title]&nbsp;in [forum_title]&nbsp;forum.</p>'),
(108, 'New report', '<p>[u.name] sent a content review for revising.</p>'),
(109, 'New item created', '<p>[u.name] created a new item with title [item_title]</p>'),
(110, 'New store order', '<p>New store order received from [u.name]&nbsp;at [amount]</p>'),
(111, 'Subscription plan activated', '<p>[u.name] purchased [s.p.name]&nbsp;at [amount]</p>'),
(112, 'Content review request', '<p>[u.name] sent a review request for [item_title]</p>'),
(113, 'New user blog post', '<p>[u.name] submitted a blog article with title [blog_title]</p>'),
(114, 'New item review (Rating)', '<p>[u.name] submitted a new rate for [item_title]</p>'),
(115, 'New organization user', '<p>[organization.name] submitted [u.name]&nbsp;as new [u.role]</p>'),
(116, 'User wallet charge', '<p>[u.name] charged their wallet for [amount]</p>'),
(117, 'New payout request', '<p>[u.name] submitted a new payout request for [amount]</p>'),
(118, 'New offline payment request', '<p>[u.name] submitted a new offline payment request at [amount]</p>'),
(119, 'Content access approval', '<p>Your content access request approved. You can access all courses now...</p>'),
(121, 'Form submission by user', '<p>[u.name] have submitted form [form_title]</p>');

-- --------------------------------------------------------

--
-- Table structure for table `offline_banks`
--

CREATE TABLE `offline_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_banks`
--

INSERT INTO `offline_banks` (`id`, `logo`, `created_at`) VALUES
(6, '/store/1/default_images/offline_payments/Qatar National Bank.png', 1678951755),
(7, '/store/1/default_images/offline_payments/jpmorgan.png', 1679089716),
(8, '/store/1/default_images/offline_payments/State Bank of India.png', 1679090036);

-- --------------------------------------------------------

--
-- Table structure for table `offline_bank_specifications`
--

CREATE TABLE `offline_bank_specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `offline_bank_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_bank_specifications`
--

INSERT INTO `offline_bank_specifications` (`id`, `offline_bank_id`, `value`) VALUES
(17, 6, '2578-4910-3682-6288'),
(18, 6, '38152294372'),
(19, 6, 'QA66QUWW934528129454345775226'),
(20, 7, 'Rocket LMS'),
(21, 7, 'NL37ABNA2423554788'),
(22, 7, '5012-4518-1772-8911'),
(23, 8, '6282-4518-1237-7641'),
(24, 8, '56238341127'),
(25, 8, 'IN37ABNA2422193788');

-- --------------------------------------------------------

--
-- Table structure for table `offline_bank_specification_translations`
--

CREATE TABLE `offline_bank_specification_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `offline_bank_specification_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_bank_specification_translations`
--

INSERT INTO `offline_bank_specification_translations` (`id`, `offline_bank_specification_id`, `locale`, `name`) VALUES
(20, 17, 'en', 'Card ID'),
(21, 18, 'en', 'Account ID'),
(22, 19, 'en', 'IBAN'),
(23, 20, 'en', 'Account Holder'),
(24, 21, 'en', 'IBAN'),
(25, 22, 'en', 'Card Number'),
(26, 23, 'en', 'Card Number'),
(27, 24, 'en', 'Account ID'),
(28, 25, 'en', 'IBAN');

-- --------------------------------------------------------

--
-- Table structure for table `offline_bank_translations`
--

CREATE TABLE `offline_bank_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `offline_bank_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_bank_translations`
--

INSERT INTO `offline_bank_translations` (`id`, `offline_bank_id`, `locale`, `title`) VALUES
(7, 6, 'en', 'Qatar National Bank'),
(8, 7, 'en', 'JPMorgan'),
(9, 8, 'en', 'State Bank of India');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `offline_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_number` varchar(64) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` enum('waiting','approved','reject') NOT NULL,
  `pay_date` varchar(64) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paying','paid','fail') NOT NULL,
  `payment_method` enum('credit','payment_channel') DEFAULT NULL,
  `is_charge_account` tinyint(1) NOT NULL DEFAULT 0,
  `amount` double(15,2) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `total_discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `product_delivery_fee` decimal(13,2) DEFAULT NULL,
  `reference_id` text DEFAULT NULL,
  `payment_data` text DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `payment_method`, `is_charge_account`, `amount`, `tax`, `total_discount`, `total_amount`, `product_delivery_fee`, `reference_id`, `payment_data`, `created_at`) VALUES
(1, 1057, 'pending', NULL, 0, 15.00, 1.50, 0.00, 16.50, 0.00, NULL, NULL, 1706286576);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_order_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `become_instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(15,2) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_price` double(15,2) DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `commission_price` double(15,2) DEFAULT NULL,
  `discount` double(15,2) DEFAULT NULL,
  `total_amount` double(15,2) DEFAULT NULL,
  `product_delivery_fee` double(15,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `webinar_id`, `bundle_id`, `subscribe_id`, `promotion_id`, `gift_id`, `registration_package_id`, `product_id`, `product_order_id`, `installment_payment_id`, `reserve_meeting_id`, `ticket_id`, `discount_id`, `become_instructor_id`, `amount`, `tax`, `tax_price`, `commission`, `commission_price`, `discount`, `total_amount`, `product_delivery_fee`, `created_at`) VALUES
(310, 1015, 306, 1996, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63.00, 10, 6.30, 0, 0.00, NULL, 69.30, NULL, 1625145687),
(311, 996, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, 150.00, 10, 15.00, 20, 30.00, 0.00, 165.00, NULL, 1625944333),
(312, 995, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, 100.00, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1625952623),
(313, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1625953190),
(314, 995, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 125.00, 10, 12.50, 20, 25.00, 0.00, 137.50, NULL, 1625996807),
(315, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, 10, 5.00, 10, 5.00, 0.00, 55.00, NULL, 1625996936),
(316, 995, 312, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100.00, 10, 5.00, 20, 10.00, 50.00, 55.00, NULL, 1625996974),
(317, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 10, 1.60, 10, 1.60, 4.00, 17.60, NULL, 1625997096),
(318, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25.00, 10, 2.25, 20, 4.50, 2.50, 24.75, NULL, 1626060481),
(319, 996, 315, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100.00, 10, 4.00, 20, 8.00, 60.00, 44.00, NULL, 1626060548),
(320, 930, 316, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100.00, 10, 5.00, 20, 10.00, 50.00, 55.00, NULL, 1626060832),
(321, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00, 10, 6.00, 10, 6.00, 0.00, 66.00, NULL, 1626061329),
(322, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 10, 2.00, 20, 4.00, 0.00, 22.00, NULL, 1626061366),
(323, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1626061366),
(324, 995, 319, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 10, 2.00, 0, 0.00, NULL, 22.00, NULL, 1626061431),
(325, 1015, 320, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 10, 2.00, 20, 4.00, 0.00, 22.00, NULL, 1626132487),
(326, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 20.00, 10, 1.60, 20, 3.20, 4.00, 17.60, NULL, 1626132840),
(327, 929, 322, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40.00, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1626240993),
(328, 929, 323, 2004, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, 10, 5.00, 0, 0.00, NULL, 55.00, NULL, 1626241146),
(329, 929, 324, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40.00, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1626241207),
(330, 995, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, 100.00, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1626247189),
(331, 1015, 326, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 10, 1.60, 10, 1.60, 4.00, 17.60, NULL, 1626284818),
(332, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, 10, 2.70, 20, 5.40, 3.00, 29.70, NULL, 1626508952),
(333, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1635412190),
(334, 979, 329, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 10, 10.00, 0, 0.00, NULL, 110.00, NULL, 1635448382),
(335, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1639379271),
(336, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1639379347),
(337, 1017, 332, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40.00, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1639379382),
(338, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172083),
(339, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10, 0.90, 20, 1.80, 1.00, 9.90, NULL, 1646172119),
(340, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172156),
(341, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172292),
(342, 995, 337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 750.00, 10, 75.00, 20, 150.00, 0.00, 825.00, NULL, 1646379279),
(343, 1017, 338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 300.00, 10, 30.00, 20, 60.00, 0.00, 330.00, NULL, 1646380150),
(344, 930, 339, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5, 199.00, 10, 19.90, 0, 0.00, NULL, 218.90, NULL, 1646386782),
(345, 859, 340, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 6, 200.00, 10, 20.00, 0, 0.00, NULL, 220.00, NULL, 1646387650),
(346, 930, 341, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, 10, 5.00, 20, 10.00, 0.00, 55.00, 0.00, 1656083106),
(347, 995, 342, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, 5.00, 5, 0.25, 20, 1.00, 0.00, 5.25, 0.00, 1656103838),
(348, 923, 343, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, 25.00, 5, 1.25, 10, 2.50, 0.00, 31.25, 5.00, 1656104126),
(349, 996, 344, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40.00, 10, 3.60, 20, 7.20, 4.00, 39.60, 0.00, 1656130476),
(350, 930, 345, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 290.00, 5, 14.50, 10, 29.00, 0.00, 314.50, 10.00, 1656130702),
(351, 996, 346, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 75.00, 5, 3.75, 20, 15.00, 0.00, 78.75, 0.00, 1656130959),
(352, 979, 347, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8.00, 10, 0.80, 20, 1.60, 0.00, 8.80, 0.00, 1656139699),
(353, 979, 347, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25.00, 10, 2.50, 20, 5.00, 0.00, 27.50, 0.00, 1656139699),
(354, 1017, 348, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, 25.00, 5, 1.00, 10, 2.00, 5.00, 26.00, 5.00, 1656148569),
(355, 995, 349, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, 50.00, 5, 2.25, 10, 4.50, 5.00, 52.25, 5.00, 1656148735),
(356, 995, 350, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, 50.00, 5, 2.25, 10, 4.50, 5.00, 52.25, 5.00, 1656148833),
(357, 995, 351, NULL, NULL, NULL, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, 9, NULL, 20.00, 5, 1.00, 20, 4.00, 4.00, 17.00, 0.00, 1656322652),
(692, 995, 694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678915479),
(693, 979, 695, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678917758),
(695, 930, 697, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678922505),
(696, 995, 698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 20.00, 10, 2.00, 20, 4.00, 0.00, 22.00, 0.00, 1678922687),
(697, 1017, 699, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678923549),
(698, 979, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678925784),
(699, 995, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678925910),
(700, 995, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 20.00, 10, 2.00, 20, 4.00, 0.00, 22.00, 0.00, 1678926034),
(701, 1045, 703, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 10, 10.00, 20, 20.00, 0.00, 110.00, 0.00, 1678959216),
(702, 995, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678960998),
(703, 930, 705, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00, 10, 3.60, 10, 3.60, 24.00, 39.60, 0.00, 1678961213),
(704, 979, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1678961648),
(705, 1045, 707, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1679088424),
(706, 995, 708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1685783036),
(707, 930, 709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 30.00, 10, 3.00, 20, 6.00, 0.00, 33.00, 0.00, 1685783147),
(708, 1057, 1, 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.00, 10, 1.50, 20, 3.00, 0.00, 16.50, 0.00, 1706286576);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `robot` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('publish','draft') NOT NULL DEFAULT 'draft',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `link`, `name`, `robot`, `status`, `created_at`) VALUES
(3, '/about', 'About', 1, 'publish', 1609088468),
(5, '/terms', 'Terms & rules', 1, 'publish', 1646409295),
(6, '/reward_points_system', 'Reward Points System', 1, 'publish', 1646398467);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(1, 3, 'en', 'About Rocket LMS', 'Rocket LMS is an online course marketplace with a pile of features that helps you to run your online education business easily.', '<div><b>Rocket LMS</b> is an online course marketplace with a pile of features that helps you to run your online education business easily. This platform helps instructors and students get in touch together and share knowledge.</div><div><br></div><div>Teachers will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</div><div><br></div><div>Rocket LMS is based on real business needs, cultural differences, advanced user researches so it covers your business requirements efficiently.</div><div style=\"text-align: center; \"><img src=\"/store/1/default_images/about.png\" style=\"width: 1110px;\"><br></div><div><br></div><div><b>WHY CHOOSE Rocket LMS?</b></div><div><br></div><div>- Comprehensive solution for online education businesses</div><div>- Based on real business needs</div><div>- Multiple content types (Video courses, Live classes, text courses)</div><div>- Youtube, Vimeo, and AWS integration</div><div>- Google calendar integration</div><div>- Online 1 to 1 meetings support</div><div>- Single &amp; multiple instructors</div><div>- Organizational education system</div><div>- Subscribe system</div><div>- Various payment gateways for worldwide</div><div>- Offline payment</div><div>- Multilanguage</div><div>- Fully responsive</div><div>- Fully customizable</div><div>- RTL support</div>'),
(2, 5, 'en', 'Terms of Service', 'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.', '<p><b>Note: This is just demo data.</b></p><p>Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“<b>Services</b>”).</p><p>If you publish content on our platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of the personal data of our students and instructors in our Privacy Policy. If you are using our platform for Business as part of your organization’s Udemy for Business subscription, you should consult our Udemy for Business Privacy Statement.</p><p style=\"text-align: center; \"><img src=\"/store/1/default_images/blogs/home2.png\" style=\"width: 954px;\"><br></p><p>You need an account for most activities on our platform, including to <b>purchase</b> and access content or to <b>submit content for publication</b>. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</p>'),
(3, 6, 'en', 'Reward Points System', 'Rocket LMS Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin.', '<p><img src=\"/store/1/default_images/Reward Points System.jpg\" style=\"width: 800px;\"><br></p><p><b>Rocket LMS&nbsp;Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin. Reward your Customers using Reward Points for Product Purchase, Writing Reviews, Sign up, Referrals, etc. The earned Reward Points can be redeemed for future purchases.&nbsp;</b></p>'),
(4, 5, 'es', 'Términos de servicio', 'Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender.', '<p>Nota: Estos son solo datos de demostración.</p><p><br></p><p>Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender (estudiantes). Consideramos nuestro modelo de mercado la mejor manera de ofrecer contenido educativo valioso a nuestros usuarios. Necesitamos reglas para mantener nuestra plataforma y servicios seguros para usted, nosotros y nuestra comunidad de estudiantes e instructores. Estos Términos se aplican a todas sus actividades en el sitio web de Udemy, las aplicaciones móviles de Udemy, nuestras aplicaciones de TV, nuestras API y otros servicios relacionados (\"Servicios\").</p><p><br></p><p>Si publica contenido en nuestra plataforma, también debe aceptar los Términos del instructor. También proporcionamos detalles sobre nuestro procesamiento de los datos personales de nuestros estudiantes e instructores en nuestra Política de privacidad. Si utiliza nuestra plataforma para empresas como parte de la suscripción a Udemy for Business de su organización, debe consultar nuestra Declaración de privacidad de Udemy for Business.</p><p><br></p><p><br></p><p><br></p><p>Necesita una cuenta para la mayoría de las actividades en nuestra plataforma, incluso para comprar y acceder a contenido o para enviar contenido para su publicación. Al configurar y mantener su cuenta, debe proporcionar y continuar proporcionando información precisa y completa, incluida una dirección de correo electrónico válida. Usted es completamente responsable de su cuenta y de todo lo que sucede en ella, incluido cualquier daño o perjuicio (a nosotros o a cualquier otra persona) causado por alguien que usa su cuenta sin su permiso. Esto significa que debe tener cuidado con su contraseña. No puede transferir su cuenta a otra persona ni usar la cuenta de otra persona. Si se comunica con nosotros para solicitar acceso a una cuenta, no le otorgaremos dicho acceso a menos que pueda proporcionarnos la información que necesitamos para demostrar que es el propietario de esa cuenta. En caso de fallecimiento de un usuario, la cuenta de ese usuario se cerrará.</p>'),
(5, 5, 'ar', 'شروط الخدمة', 'مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم.', '<p style=\"direction: rtl; text-align: right;\">ملاحظة: هذه مجرد بيانات تجريبية.</p><p style=\"direction: rtl; text-align: right;\">مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم (الطلاب). نحن نعتبر نموذج السوق الخاص بنا هو أفضل طريقة لتقديم محتوى تعليمي قيم لمستخدمينا. نحن بحاجة إلى قواعد للحفاظ على نظامنا الأساسي وخدماتنا آمنة لك ولنا ومجتمع الطلاب والمدرسين لدينا. تنطبق هذه الشروط على جميع أنشطتك على موقع Udemy على الويب ، وتطبيقات Udemy للهاتف المحمول ، وتطبيقات التلفزيون لدينا ، وواجهات برمجة التطبيقات الخاصة بنا ، والخدمات الأخرى ذات الصلة (\"الخدمات\").</p><p style=\"direction: rtl; text-align: right;\">إذا قمت بنشر محتوى على نظامنا الأساسي ، فيجب عليك أيضًا الموافقة على شروط المدرب. نقدم أيضًا تفاصيل تتعلق بمعالجتنا للبيانات الشخصية لطلابنا ومعلمينا في سياسة الخصوصية الخاصة بنا. إذا كنت تستخدم منصتنا للأعمال كجزء من اشتراك Udemy for Business الخاص بمؤسستك ، فيجب عليك الرجوع إلى بيان خصوصية Udemy for Business.</p><p style=\"direction: rtl; text-align: right;\">أنت بحاجة إلى حساب لمعظم الأنشطة على نظامنا الأساسي ، بما في ذلك شراء المحتوى والوصول إليه أو إرسال المحتوى للنشر. عند إعداد حسابك وصيانته ، يجب عليك تقديم معلومات دقيقة وكاملة والاستمرار في تقديمها ، بما في ذلك عنوان بريد إلكتروني صالح. أنت تتحمل المسؤولية الكاملة عن حسابك وكل ما يحدث على حسابك ، بما في ذلك أي ضرر أو ضرر (لنا أو لأي شخص آخر) ناجم عن شخص يستخدم حسابك دون إذنك. هذا يعني أنك بحاجة إلى توخي الحذر بشأن كلمة المرور الخاصة بك. لا يجوز لك نقل حسابك إلى شخص آخر أو استخدام حساب شخص آخر. إذا اتصلت بنا لطلب الوصول إلى حساب ، فلن نمنحك هذا الوصول ما لم تتمكن من تزويدنا بالمعلومات التي نحتاجها لإثبات أنك مالك هذا الحساب. في حالة وفاة المستخدم ، سيتم إغلاق حساب هذا المستخدم.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('av18981848@gmail.com', 'cYTtJLR86NoxZ0whf465XoQa98hhxAxx2Q7t3zeaeTJRYoUMQwqqzb4rgqP2', '2021-02-20 16:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `payku_payments`
--

CREATE TABLE `payku_payments` (
  `transaction_id` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `media` varchar(255) NOT NULL,
  `verification_key` varchar(255) NOT NULL,
  `authorization_code` varchar(255) NOT NULL,
  `last_4_digits` int(10) UNSIGNED DEFAULT NULL,
  `installments` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `additional_parameters` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_key` varchar(255) DEFAULT NULL,
  `transaction_key` varchar(255) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_transactions`
--

CREATE TABLE `payku_transactions` (
  `id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `notified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_channels`
--

CREATE TABLE `payment_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `currencies` text DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_channels`
--

INSERT INTO `payment_channels` (`id`, `title`, `class_name`, `status`, `image`, `settings`, `currencies`, `created_at`) VALUES
(1, 'Alipay', 'Alipay', 'inactive', '/store/1/default_images/payment gateways/alipay.png', '', '[\"USD\"]', '1654755044'),
(2, 'Authorize.net', 'Authorizenet', 'inactive', '/store/1/default_images/payment gateways/authirizenet.png', '', '[\"USD\"]', '1654755044'),
(3, 'Bitpay', 'Bitpay', 'inactive', '/store/1/default_images/payment gateways/bitpay.png', '', '[\"USD\"]', '1654755044'),
(4, 'Braintree', 'Braintree', 'inactive', '/store/1/default_images/payment gateways/braintree.png', '', '[\"USD\"]', '1654755044'),
(5, 'Cashu', 'Cashu', 'inactive', '/store/1/default_images/payment gateways/cashu.png', '', '[\"USD\"]', '1654755044'),
(6, 'Flutterwave', 'Flutterwave', 'inactive', '/store/1/default_images/payment gateways/flutterwave.png', '', '[\"USD\"]', '1654755044'),
(7, 'Instamojo', 'Instamojo', 'inactive', '/store/1/default_images/payment gateways/instamojo.png', '', '[\"USD\"]', '1654755044'),
(8, 'Iyzipay', 'Iyzipay', 'inactive', '/store/1/default_images/payment gateways/iyzico.png', '', '[\"USD\"]', '1654755044'),
(9, 'Izipay', 'Izipay', 'inactive', '/store/1/default_images/payment gateways/izipay.png', '', '[\"USD\"]', '1654755044'),
(10, 'KlarnaCheckout', 'KlarnaCheckout', 'inactive', '/store/1/default_images/payment gateways/klarna.png', '', '[\"USD\"]', '1654755044'),
(11, 'MercadoPago', 'MercadoPago', 'inactive', '/store/1/default_images/payment gateways/mercadopago.png', '', '[\"USD\"]', '1654755044'),
(12, 'Midtrans', 'Midtrans', 'inactive', '/store/1/default_images/payment gateways/midtrans.png', '', '[\"USD\"]', '1654755044'),
(13, 'Mollie', 'Mollie', 'inactive', '/store/1/default_images/payment gateways/mollie.png', '', '[\"USD\"]', '1654755044'),
(14, 'N-genius', 'Ngenius', 'inactive', '/store/1/default_images/payment gateways/ngenius.png', '', '[\"USD\"]', '1654755044'),
(15, 'Payfort', 'Payfort', 'inactive', '/store/1/default_images/payment gateways/payfort.png', '', '[\"USD\"]', '1654755044'),
(16, 'Payhere', 'Payhere', 'inactive', '/store/1/default_images/payment gateways/payhere.png', '', '[\"USD\"]', '1654755044'),
(17, 'Payku', 'Payku', 'inactive', '/store/1/default_images/payment gateways/payku.png', '', '[\"USD\"]', '1654755044'),
(18, 'Paylink', 'Paylink', 'inactive', '/store/1/default_images/payment gateways/paylink.png', '', '[\"USD\"]', '1654755044'),
(19, 'Paypal', 'Paypal', 'active', '/store/1/default_images/payment gateways/paypal.png', '', '[\"USD\",\"EUR\"]', '1654755044'),
(20, 'Paysera', 'Paysera', 'inactive', '/store/1/default_images/payment gateways/paysera.png', '', '[\"USD\"]', '1654755044'),
(21, 'Paystack', 'Paystack', 'inactive', '/store/1/default_images/payment gateways/paystack.png', '', '[\"USD\"]', '1654755044'),
(22, 'Paytm', 'Paytm', 'inactive', '/store/1/default_images/payment gateways/paytm.png', '', '[\"USD\"]', '1654755044'),
(23, 'Payu', 'Payu', 'active', '/store/1/default_images/payment gateways/payu.png', '', '[\"USD\",\"EUR\",\"INR\"]', '1654755044'),
(24, 'Razorpay', 'Razorpay', 'active', '/store/1/default_images/payment gateways/razorpay.png', '', '[\"USD\",\"EUR\"]', '1654755044'),
(25, 'Robokassa', 'Robokassa', 'inactive', '/store/1/default_images/payment gateways/robokassa.png', '', '[\"USD\"]', '1654755044'),
(26, 'Sslcommerz', 'Sslcommerz', 'inactive', '/store/1/default_images/payment gateways/sslcommerz.png', '', '[\"USD\"]', '1654755044'),
(27, 'Stripe', 'Stripe', 'inactive', '/store/1/default_images/payment gateways/stripe.png', '', '[\"USD\"]', '1654755044'),
(28, 'Toyyibpay', 'Toyyibpay', 'inactive', '/store/1/default_images/payment gateways/toyyibpay.png', '', '[\"USD\"]', '1654755044'),
(29, 'Voguepay', 'Voguepay', 'inactive', '/store/1/default_images/payment gateways/voguepay.png', '', '[\"USD\"]', '1654755044'),
(31, 'Zarinpal', 'Zarinpal', 'inactive', '/store/1/default_images/payment gateways/zarinpal.png', '', '[\"USD\"]', '1654755044'),
(32, 'JazzCash', 'JazzCash', 'inactive', '/store/1/default_images/payment gateways/jazzcash.png', '', '[\"USD\"]', '1654755044');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_selected_bank_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `status` enum('waiting','done','reject') NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payu_transactions`
--

CREATE TABLE `payu_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paid_for_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_for_type` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `gateway` text NOT NULL,
  `body` text NOT NULL,
  `destination` varchar(255) NOT NULL,
  `hash` text NOT NULL,
  `response` text DEFAULT NULL,
  `status` enum('pending','failed','successful','invalid') NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `section_id`, `allow`) VALUES
(16460, 2, 1, 1),
(16461, 2, 2, 1),
(16462, 2, 3, 1),
(16463, 2, 4, 1),
(16464, 2, 5, 1),
(16465, 2, 6, 1),
(16466, 2, 7, 1),
(16467, 2, 8, 1),
(16468, 2, 9, 1),
(16469, 2, 10, 1),
(16470, 2, 11, 1),
(16471, 2, 12, 1),
(16472, 2, 13, 1),
(16473, 2, 14, 1),
(16474, 2, 15, 1),
(16475, 2, 16, 1),
(16476, 2, 17, 1),
(16477, 2, 25, 1),
(16478, 2, 26, 1),
(16479, 2, 50, 1),
(16480, 2, 51, 1),
(16481, 2, 52, 1),
(16482, 2, 53, 1),
(16483, 2, 54, 1),
(16484, 2, 100, 1),
(16485, 2, 101, 1),
(16486, 2, 102, 1),
(16487, 2, 103, 1),
(16488, 2, 104, 1),
(16489, 2, 105, 1),
(16490, 2, 106, 1),
(16491, 2, 107, 1),
(16492, 2, 108, 1),
(16493, 2, 109, 1),
(16494, 2, 110, 1),
(16495, 2, 111, 1),
(16496, 2, 112, 1),
(16497, 2, 113, 1),
(16498, 2, 114, 1),
(16499, 2, 115, 1),
(16500, 2, 116, 1),
(16501, 2, 117, 1),
(16502, 2, 150, 1),
(16503, 2, 151, 1),
(16504, 2, 152, 1),
(16505, 2, 153, 1),
(16506, 2, 154, 1),
(16507, 2, 155, 1),
(16508, 2, 156, 1),
(16509, 2, 157, 1),
(16510, 2, 158, 1),
(16511, 2, 159, 1),
(16512, 2, 160, 1),
(16513, 2, 161, 1),
(16514, 2, 162, 1),
(16515, 2, 163, 1),
(16516, 2, 164, 1),
(16517, 2, 165, 1),
(16518, 2, 166, 1),
(16519, 2, 200, 1),
(16520, 2, 201, 1),
(16521, 2, 202, 1),
(16522, 2, 203, 1),
(16523, 2, 204, 1),
(16524, 2, 205, 1),
(16525, 2, 206, 1),
(16526, 2, 207, 1),
(16527, 2, 208, 1),
(16528, 2, 250, 1),
(16529, 2, 251, 1),
(16530, 2, 252, 1),
(16531, 2, 253, 1),
(16532, 2, 254, 1),
(16533, 2, 300, 1),
(16534, 2, 301, 1),
(16535, 2, 302, 1),
(16536, 2, 303, 1),
(16537, 2, 304, 1),
(16538, 2, 350, 1),
(16539, 2, 351, 1),
(16540, 2, 352, 1),
(16541, 2, 353, 1),
(16542, 2, 354, 1),
(16543, 2, 355, 1),
(16544, 2, 356, 1),
(16545, 2, 357, 1),
(16546, 2, 400, 1),
(16547, 2, 401, 1),
(16548, 2, 402, 1),
(16549, 2, 403, 1),
(16550, 2, 404, 1),
(16551, 2, 405, 1),
(16552, 2, 450, 1),
(16553, 2, 451, 1),
(16554, 2, 452, 1),
(16555, 2, 453, 1),
(16556, 2, 454, 1),
(16557, 2, 455, 1),
(16558, 2, 456, 1),
(16559, 2, 457, 1),
(16560, 2, 458, 1),
(16561, 2, 459, 1),
(16562, 2, 460, 1),
(16563, 2, 500, 1),
(16564, 2, 501, 1),
(16565, 2, 502, 1),
(16566, 2, 503, 1),
(16567, 2, 504, 1),
(16568, 2, 505, 1),
(16569, 2, 550, 1),
(16570, 2, 551, 1),
(16571, 2, 552, 1),
(16572, 2, 553, 1),
(16573, 2, 554, 1),
(16574, 2, 555, 1),
(16575, 2, 600, 1),
(16576, 2, 601, 1),
(16577, 2, 602, 1),
(16578, 2, 603, 1),
(16579, 2, 650, 1),
(16580, 2, 651, 1),
(16581, 2, 652, 1),
(16582, 2, 653, 1),
(16583, 2, 654, 1),
(16584, 2, 655, 1),
(16585, 2, 656, 1),
(16586, 2, 657, 1),
(16587, 2, 658, 1),
(16588, 2, 700, 1),
(16589, 2, 701, 1),
(16590, 2, 702, 1),
(16591, 2, 703, 1),
(16592, 2, 704, 1),
(16593, 2, 705, 1),
(16594, 2, 706, 1),
(16595, 2, 707, 1),
(16596, 2, 708, 1),
(16597, 2, 750, 1),
(16598, 2, 751, 1),
(16599, 2, 752, 1),
(16600, 2, 753, 1),
(16601, 2, 754, 1),
(16602, 2, 800, 1),
(16603, 2, 801, 1),
(16604, 2, 802, 1),
(16605, 2, 803, 1),
(16606, 2, 850, 1),
(16607, 2, 851, 1),
(16608, 2, 852, 1),
(16609, 2, 853, 1),
(16610, 2, 854, 1),
(16611, 2, 900, 1),
(16612, 2, 901, 1),
(16613, 2, 902, 1),
(16614, 2, 903, 1),
(16615, 2, 904, 1),
(16616, 2, 950, 1),
(16617, 2, 951, 1),
(16618, 2, 952, 1),
(16619, 2, 953, 1),
(16620, 2, 954, 1),
(16621, 2, 955, 1),
(16622, 2, 956, 1),
(16623, 2, 957, 1),
(16624, 2, 958, 1),
(16625, 2, 959, 1),
(16626, 2, 1000, 1),
(16627, 2, 1001, 1),
(16628, 2, 1002, 1),
(16629, 2, 1003, 1),
(16630, 2, 1004, 1),
(16631, 2, 1050, 1),
(16632, 2, 1051, 1),
(16633, 2, 1052, 1),
(16634, 2, 1053, 1),
(16635, 2, 1054, 1),
(16636, 2, 1055, 1),
(16637, 2, 1056, 1),
(16638, 2, 1057, 1),
(16639, 2, 1058, 1),
(16640, 2, 1059, 1),
(16641, 2, 1060, 1),
(16642, 2, 1075, 1),
(16643, 2, 1076, 1),
(16644, 2, 1077, 1),
(16645, 2, 1078, 1),
(16646, 2, 1079, 1),
(16647, 2, 1080, 1),
(16648, 2, 1081, 1),
(16649, 2, 1082, 1),
(16650, 2, 1083, 1),
(16651, 2, 1100, 1),
(16652, 2, 1101, 1),
(16653, 2, 1102, 1),
(16654, 2, 1103, 1),
(16655, 2, 1104, 1),
(16656, 2, 1150, 1),
(16657, 2, 1151, 1),
(16658, 2, 1152, 1),
(16659, 2, 1153, 1),
(16660, 2, 1154, 1),
(16661, 2, 1200, 1),
(16662, 2, 1201, 1),
(16663, 2, 1202, 1),
(16664, 2, 1203, 1),
(16665, 2, 1204, 1),
(16666, 2, 1230, 1),
(16667, 2, 1231, 1),
(16668, 2, 1232, 1),
(16669, 2, 1233, 1),
(16670, 2, 1234, 1),
(16671, 2, 1235, 1),
(16672, 2, 1250, 1),
(16673, 2, 1251, 1),
(16674, 2, 1252, 1),
(16675, 2, 1253, 1),
(16676, 2, 1300, 1),
(16677, 2, 1301, 1),
(16678, 2, 1302, 1),
(16679, 2, 1303, 1),
(16680, 2, 1304, 1),
(16681, 2, 1305, 1),
(16682, 2, 1350, 1),
(16683, 2, 1351, 1),
(16684, 2, 1352, 1),
(16685, 2, 1353, 1),
(16686, 2, 1354, 1),
(16687, 2, 1355, 1),
(16688, 2, 1400, 1),
(16689, 2, 1401, 1),
(16690, 2, 1402, 1),
(16691, 2, 1403, 1),
(16692, 2, 1404, 1),
(16693, 2, 1405, 1),
(16694, 2, 1406, 1),
(16695, 2, 1407, 1),
(16696, 2, 1408, 1),
(16697, 2, 1409, 1),
(16698, 2, 1450, 1),
(16699, 2, 1451, 1),
(16700, 2, 1452, 1),
(16701, 2, 1453, 1),
(16702, 2, 1454, 1),
(16703, 2, 1455, 1),
(16704, 2, 1456, 1),
(16705, 2, 1457, 1),
(16706, 2, 1500, 1),
(16707, 2, 1501, 1),
(16708, 2, 1502, 1),
(16709, 2, 1503, 1),
(16710, 2, 1504, 1),
(16711, 2, 1550, 1),
(16712, 2, 1551, 1),
(16713, 2, 1552, 1),
(16714, 2, 1553, 1),
(16715, 2, 1554, 1),
(16716, 2, 1600, 1),
(16717, 2, 1601, 1),
(16718, 2, 1602, 1),
(16719, 2, 1603, 1),
(16720, 2, 1604, 1),
(16721, 2, 1605, 1),
(16722, 2, 1650, 1),
(16723, 2, 1651, 1),
(16724, 2, 1652, 1),
(16725, 2, 1675, 1),
(16726, 2, 1676, 1),
(16727, 2, 1677, 1),
(16728, 2, 1678, 1),
(16729, 2, 1725, 1),
(16730, 2, 1726, 1),
(16731, 2, 1727, 1),
(16732, 2, 1728, 1),
(16733, 2, 1729, 1),
(16734, 2, 1730, 1),
(16735, 2, 1731, 1),
(16736, 2, 1732, 1),
(16737, 2, 1750, 1),
(16738, 2, 1751, 1),
(16739, 2, 1752, 1),
(16740, 2, 1753, 1),
(16741, 2, 1754, 1),
(16742, 2, 1775, 1),
(16743, 2, 1776, 1),
(16744, 2, 1777, 1),
(16745, 2, 1778, 1),
(16746, 2, 1779, 1),
(16747, 2, 1780, 1),
(16748, 2, 1781, 1),
(16749, 2, 1800, 1),
(16750, 2, 1801, 1),
(16751, 2, 1802, 1),
(16752, 2, 1803, 1),
(16753, 2, 1804, 1),
(16754, 2, 1805, 1),
(16755, 2, 1806, 1),
(16756, 2, 1807, 1),
(16757, 2, 1808, 1),
(16758, 2, 1809, 1),
(16759, 2, 1810, 1),
(16760, 2, 1811, 1),
(16761, 2, 1812, 1),
(16762, 2, 1813, 1),
(16763, 2, 1814, 1),
(16764, 2, 1815, 1),
(16765, 2, 1816, 1),
(16766, 2, 1817, 1),
(16767, 2, 1818, 1),
(16768, 2, 1819, 1),
(16769, 2, 1820, 1),
(16770, 2, 1821, 1),
(16771, 2, 1822, 1),
(16772, 2, 1823, 1),
(16773, 2, 1824, 1),
(16774, 2, 1825, 1),
(16775, 2, 1826, 1),
(16776, 2, 1827, 1),
(16777, 2, 1828, 1),
(16778, 2, 1829, 1),
(16779, 2, 1830, 1),
(16780, 2, 1831, 1),
(16781, 2, 1832, 1),
(16782, 2, 1833, 1),
(16783, 2, 1834, 1),
(16784, 2, 1835, 1),
(16785, 2, 1836, 1),
(16786, 2, 1837, 1),
(16787, 2, 1838, 1),
(16788, 2, 1850, 1),
(16789, 2, 1851, 1),
(16790, 2, 1852, 1),
(16791, 2, 1853, 1),
(16792, 2, 1875, 1),
(16793, 2, 1876, 1),
(16794, 2, 1877, 1),
(16795, 2, 1900, 1),
(16796, 2, 1901, 1),
(16797, 2, 1902, 1),
(16798, 2, 1903, 1),
(16799, 2, 1904, 1),
(16800, 2, 1905, 1),
(16801, 2, 1925, 1),
(16802, 2, 1926, 1),
(16803, 2, 1927, 1),
(16804, 2, 1928, 1),
(16805, 2, 1929, 1),
(16806, 2, 1930, 1),
(16807, 2, 1931, 1),
(16808, 2, 1932, 1),
(16809, 2, 1933, 1),
(16810, 2, 1934, 1),
(16811, 2, 1950, 1),
(16812, 2, 1951, 1),
(16813, 2, 1952, 1),
(16814, 2, 1953, 1),
(16815, 2, 1954, 1),
(16816, 2, 1975, 1),
(16817, 2, 1976, 1),
(16818, 2, 1977, 1),
(16819, 2, 1978, 1),
(16820, 2, 1979, 1),
(16821, 2, 2000, 1),
(16822, 2, 2001, 1),
(16823, 2, 2015, 1),
(16824, 2, 2016, 1),
(16825, 2, 2017, 1),
(16826, 2, 2018, 1),
(16827, 2, 2019, 1),
(16828, 2, 2020, 1),
(16829, 2, 2021, 1),
(16830, 2, 2030, 1),
(16831, 2, 2031, 1),
(16832, 2, 2032, 1),
(16833, 2, 2050, 1),
(16834, 2, 2051, 1),
(16835, 2, 2052, 1),
(16836, 2, 2053, 1),
(16837, 2, 2054, 1),
(16838, 2, 2055, 1),
(16839, 2, 2070, 1),
(16840, 2, 2071, 1),
(16841, 2, 2072, 1),
(16842, 2, 2073, 1),
(16843, 2, 2074, 1),
(16844, 2, 2075, 1),
(16845, 2, 2076, 1),
(16846, 2, 2077, 1),
(16847, 2, 2078, 1),
(16848, 2, 2079, 1),
(16849, 2, 2080, 1),
(16850, 2, 2081, 1),
(16851, 2, 2090, 1),
(16852, 2, 2091, 1),
(16853, 2, 2092, 1),
(16854, 2, 2093, 1),
(16855, 2, 3000, 1),
(16856, 2, 3001, 1),
(16857, 2, 3010, 1),
(16858, 2, 3011, 1),
(16859, 2, 3012, 1),
(16860, 2, 3013, 1),
(16861, 2, 3020, 1),
(16862, 2, 3021, 1),
(16863, 2, 3022, 1),
(16864, 2, 3023, 1),
(16865, 2, 3024, 1),
(16866, 2, 3025, 1),
(16867, 2, 3030, 1),
(16868, 2, 3031, 1),
(16869, 2, 3032, 1),
(16870, 2, 3033, 1),
(16871, 2, 3034, 1),
(16872, 2, 3035, 1),
(16873, 2, 3040, 1),
(16874, 2, 3041, 1),
(16875, 2, 3042, 1),
(16876, 2, 3043, 1),
(16877, 2, 3044, 1),
(16878, 2, 3045, 1),
(16879, 2, 3046, 1),
(16880, 2, 3050, 1),
(16881, 2, 3051, 1),
(16882, 2, 3052, 1),
(16883, 2, 3053, 1),
(16884, 2, 3054, 1),
(16885, 2, 3055, 1),
(16886, 2, 3056, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `prerequisite_id` int(10) UNSIGNED NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `type` enum('virtual','physical') NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `price` double(15,2) UNSIGNED DEFAULT NULL,
  `point` bigint(20) UNSIGNED DEFAULT NULL,
  `unlimited_inventory` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` tinyint(1) NOT NULL DEFAULT 0,
  `inventory` int(10) UNSIGNED DEFAULT NULL,
  `inventory_warning` int(10) UNSIGNED DEFAULT NULL,
  `inventory_updated_at` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_fee` double(15,2) UNSIGNED DEFAULT NULL,
  `delivery_estimated_time` int(10) UNSIGNED DEFAULT NULL,
  `message_for_reviewer` text DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','pending','draft','inactive') NOT NULL,
  `updated_at` bigint(20) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `creator_id`, `type`, `slug`, `category_id`, `price`, `point`, `unlimited_inventory`, `ordering`, `inventory`, `inventory_warning`, `inventory_updated_at`, `delivery_fee`, `delivery_estimated_time`, `message_for_reviewer`, `tax`, `commission`, `status`, `updated_at`, `created_at`) VALUES
(6, 1, 'virtual', 'Where-the-Crawdads-Sing-e-book', 3, 20.00, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1656322425, 1656321480),
(7, 1059, 'physical', 'med', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 1705517698, 1705517698);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `icon`, `order`) VALUES
(1, NULL, '/store/1/default_images/categories_icons/feather.png', NULL),
(2, NULL, '/store/1/default_images/categories_icons/pie-chart.png', NULL),
(3, NULL, '/store/1/default_images/categories_icons/umbrella.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_translations`
--

CREATE TABLE `product_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_translations`
--

INSERT INTO `product_category_translations` (`id`, `product_category_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Design Tools'),
(2, 2, 'en', 'Science Tools'),
(3, 3, 'en', 'e-book');

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percent` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `start_date` int(10) UNSIGNED NOT NULL,
  `end_date` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

CREATE TABLE `product_faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_faq_translations`
--

CREATE TABLE `product_faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_faq_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_files`
--

CREATE TABLE `product_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `online_viewer` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_files`
--

INSERT INTO `product_files` (`id`, `creator_id`, `product_id`, `path`, `file_type`, `volume`, `online_viewer`, `order`, `status`, `created_at`) VALUES
(5, 1, 6, '/store/1/Where-the-Crawdads-Sing.pdf', 'pdf', '3', 1, NULL, 'active', 1656322274);

-- --------------------------------------------------------

--
-- Table structure for table `product_file_translations`
--

CREATE TABLE `product_file_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_file_translations`
--

INSERT INTO `product_file_translations` (`id`, `product_file_id`, `locale`, `title`, `description`) VALUES
(5, 5, 'en', 'Where the Crawdads Sing e-book', 'Where the Crawdads Sing is at once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder. Owens reminds us that we are forever shaped by the children we once were, and that we are all subject to the beautiful and violent secrets that nature keeps.');

-- --------------------------------------------------------

--
-- Table structure for table `product_filters`
--

CREATE TABLE `product_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filters`
--

INSERT INTO `product_filters` (`id`, `category_id`) VALUES
(1, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_options`
--

CREATE TABLE `product_filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_options`
--

INSERT INTO `product_filter_options` (`id`, `filter_id`, `order`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_option_translations`
--

CREATE TABLE `product_filter_option_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_filter_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_option_translations`
--

INSERT INTO `product_filter_option_translations` (`id`, `product_filter_option_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Brushes'),
(2, 2, 'en', 'Novel'),
(3, 3, 'en', 'Laguage learning'),
(4, 4, 'en', 'Scientific');

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_translations`
--

CREATE TABLE `product_filter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_filter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_translations`
--

INSERT INTO `product_filter_translations` (`id`, `product_filter_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Paint Tools'),
(2, 2, 'en', 'Type');

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` enum('thumbnail','image','video') NOT NULL,
  `path` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_media`
--

INSERT INTO `product_media` (`id`, `creator_id`, `product_id`, `type`, `path`, `order`, `created_at`) VALUES
(77, 1, 6, 'thumbnail', '/store/1/default_images/Where the Crawdads Sing e-book.jpg', NULL, 1656322425),
(78, 1, 6, 'image', '/store/1/default_images/Where the Crawdads Sing e-book_1.jpg', NULL, 1656322425),
(79, 1, 6, 'image', '/store/1/default_images/Where the Crawdads Sing e-book_2.jpg', NULL, 1656322425);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_order_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `specifications` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED DEFAULT NULL,
  `message_to_seller` text DEFAULT NULL,
  `tracking_code` varchar(255) DEFAULT NULL,
  `status` enum('pending','waiting_delivery','shipped','success','canceled') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `product_id`, `seller_id`, `buyer_id`, `sale_id`, `installment_order_id`, `gift_id`, `specifications`, `quantity`, `discount_id`, `message_to_seller`, `tracking_code`, `status`, `created_at`) VALUES
(1, 4, 1016, 995, 193, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'success', 1656103830),
(2, 1, 1015, 923, 194, NULL, NULL, '{\"Size\":\"Small\"}', 1, NULL, 'Please deliver faster.\r\nRegards.', NULL, 'waiting_delivery', 1656104034),
(3, 2, 934, 930, 196, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'waiting_delivery', 1656130623),
(4, 5, 1015, 996, 197, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'success', 1656130950),
(5, 1, 1015, 1017, 200, NULL, NULL, '{\"Size\":\"Medium\"}', 1, 1, NULL, '43956044000324128', 'success', 1656148501),
(6, 1, 1015, 995, 201, NULL, NULL, '{\"Size\":\"Small\"}', 2, 1, 'Please deliver fast.\r\nRegards.', '596324000328246', 'shipped', 1656148667),
(7, 6, 1, 995, 202, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'success', 1656322618);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_quality` int(10) UNSIGNED NOT NULL,
  `purchase_worth` int(10) UNSIGNED NOT NULL,
  `delivery_quality` int(10) UNSIGNED NOT NULL,
  `seller_quality` int(10) UNSIGNED NOT NULL,
  `rates` char(10) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','active') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_filter_options`
--

CREATE TABLE `product_selected_filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_filter_options`
--

INSERT INTO `product_selected_filter_options` (`id`, `product_id`, `filter_option_id`) VALUES
(16, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specifications`
--

CREATE TABLE `product_selected_specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_specification_id` int(10) UNSIGNED NOT NULL,
  `type` enum('textarea','multi_value') NOT NULL,
  `allow_selection` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specifications`
--

INSERT INTO `product_selected_specifications` (`id`, `creator_id`, `product_id`, `product_specification_id`, `type`, `allow_selection`, `order`, `status`, `created_at`) VALUES
(6, 1, 6, 5, 'multi_value', 0, NULL, 'active', 1656322503),
(7, 1, 6, 4, 'textarea', 0, NULL, 'active', 1656322546);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specification_multi_values`
--

CREATE TABLE `product_selected_specification_multi_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `selected_specification_id` int(10) UNSIGNED NOT NULL,
  `specification_multi_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specification_multi_values`
--

INSERT INTO `product_selected_specification_multi_values` (`id`, `selected_specification_id`, `specification_multi_value_id`) VALUES
(10, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specification_translations`
--

CREATE TABLE `product_selected_specification_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_selected_specification_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specification_translations`
--

INSERT INTO `product_selected_specification_translations` (`id`, `product_selected_specification_id`, `locale`, `value`) VALUES
(2, 7, 'en', 'Publisher ‏ : ‎ Penguin Publishing Group (March 30, 2021)\r\nLanguage ‏ : ‎ English\r\nPaperback ‏ : ‎ 400 pages\r\nISBN-10 ‏ : ‎ 0735219109\r\nISBN-13 ‏ : ‎ 978-0735219106\r\nItem Weight ‏ : ‎ 11.2 ounces\r\nDimensions ‏ : ‎ 5.5 x 0.79 x 8.22 inches');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `input_type` enum('textarea','multi_value') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `input_type`) VALUES
(1, 'multi_value'),
(2, 'multi_value'),
(3, 'multi_value'),
(4, 'textarea'),
(5, 'multi_value');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_categories`
--

CREATE TABLE `product_specification_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `specification_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_categories`
--

INSERT INTO `product_specification_categories` (`id`, `specification_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(5, 5, 3),
(6, 4, 1),
(7, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_multi_values`
--

CREATE TABLE `product_specification_multi_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `specification_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_multi_values`
--

INSERT INTO `product_specification_multi_values` (`id`, `specification_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 5),
(12, 5),
(13, 5),
(14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_multi_value_translations`
--

CREATE TABLE `product_specification_multi_value_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_specification_multi_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_multi_value_translations`
--

INSERT INTO `product_specification_multi_value_translations` (`id`, `product_specification_multi_value_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Small'),
(2, 2, 'en', 'Medium'),
(3, 3, 'en', 'Large'),
(4, 4, 'en', 'Basic'),
(5, 5, 'en', 'Advanced'),
(6, 6, 'en', '3-5'),
(7, 7, 'en', '5-8'),
(8, 8, 'en', '8-13'),
(9, 9, 'en', '13-18'),
(10, 10, 'en', '+18'),
(11, 11, 'en', 'Novel'),
(12, 12, 'en', 'Language learning'),
(13, 13, 'en', 'Scientific'),
(14, 14, 'en', 'literature');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_translations`
--

CREATE TABLE `product_specification_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_specification_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_translations`
--

INSERT INTO `product_specification_translations` (`id`, `product_specification_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Size'),
(2, 2, 'en', 'Skill Level'),
(3, 3, 'en', 'Age Range'),
(4, 4, 'en', 'Main Features'),
(5, 5, 'en', 'E-book type');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_description` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `title`, `seo_description`, `summary`, `description`) VALUES
(6, 6, 'en', 'Where the Crawdads Sing e-book', 'The #1 New York Times bestselling worldwide sensation with more than 12 million copies sold', 'SOON TO BE A MAJOR MOTION PICTURE—The #1 New York Times bestselling worldwide sensation with more than 12 million copies sold, hailed by The New York Times Book Review as “a painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of nature.”\r\n\r\nFor years, rumors of the “Marsh Girl” have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life—until the unthinkable happens.\r\n\r\nWhere the Crawdads Sing is at once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder. Owens reminds us that we are forever shaped by the children we once were and that we are all subject to the beautiful and violent secrets that nature keeps.', '<div>“A painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of nature....Owens here surveys the desolate marshlands of the North Carolina coast through the eyes of an abandoned child. And in her isolation that child makes us open our own eyes to the secret wonders—and dangers—of her private world.”—The New York Times Book Review</div><div><br></div><div>“Steeped in the rhythms and shadows of the coastal marshes of North Carolina’s Outer Banks, this fierce and hauntingly beautiful novel centers on...Kya’s heartbreaking story of learning to trust human connections, intertwine[d] with a gripping murder mystery, revealing savage truths. An astonishing debut.”—People</div><div><br></div><div>“This lush mystery is perfect for fans of Barbara Kingsolver.”—Bustle</div><div><br></div><div>“A lush debut novel, Owens delivers her mystery wrapped in gorgeous, lyrical prose. It’s clear she’s from this place—the land of the southern coasts, but also the emotional terrain—you can feel it in the pages.  A magnificent achievement, ambitious, credible and very timely.”—Alexandra Fuller, New York Times bestselling author of Don’t Let’s Go to the Dogs Tonight</div><div><br></div><div>“Heart-wrenching...A fresh exploration of isolation and nature from a female perspective along with a compelling love story.”—Entertainment Weekly</div><div><br></div><div>“This wonderful novel has a bit of everything—mystery, romance, and fascinating characters, all told in a story that takes place in North Carolina.”—Nicholas Sparks, New York Times bestselling author of Every Breath</div><div><br></div><div>“Delia Owen’s gorgeous novel is both a coming-of-age tale and an engrossing whodunit.”—Real Simple</div><div><br></div><div>“Evocative...Kya makes for an unforgettable heroine.”—Publishers Weekly</div><div><br></div><div>“The New Southern novel...A lyrical debut.”—Southern Living</div><div><br></div><div>“A nature-infused romance with a killer twist.”—Refinery29</div><div><br></div><div>“Anyone who liked The Great Alone will want to read Where the Crawdads Sing....This astonishing debut is a beautiful and haunting novel that packs a powerful punch. It’s the first novel in a long time that made me cry.”—Kristin Hannah, author ofThe Great AloneandThe Nightingale</div><div><br></div><div>“Both a coming-of-age story and a mysterious account of a murder investigation told from the perspective of a young girl...Through Kya’s story, Owens explores how isolation affects human behavior, and the deep effect that rejection can have on our lives.”—Vanity Fair</div><div><br></div><div>“Lyrical...Its appeal ris[es] from Kya’s deep connection to the place where makes her home, and to all of its creatures.”—Booklist</div><div><br></div><div>“This beautiful, evocative novel is likely to stay with you for many days afterward....absorbing.”—AARP </div><div><br></div><div>“This haunting tale captivates every bit as much for its crime drama elements as for the humanity at its core.” —Mystery & Suspense Magazine</div><div><br></div><div>“Compelling, original...A mystery, a courtroom drama, a romance and a coming-of-age story, Where the Crawdads Sing is a moving, beautiful tale. Readers will remember Kya for a long, long time.”—ShelfAwareness</div><div><br></div><div>“With prose luminous as a low-country moon, Owens weaves a compelling tale of a forgotten girl in the unforgiving coastal marshes of North Carolina. It is a murder mystery/love story/courtroom drama that readers will love, but the novel delves so much deeper into the bone and sinew of our very nature, asking often unanswerable questions, old and intractable as the marsh itself. A stunning debut!”—Christopher Scotton, author of The Secret Wisdom of the Earth</div><div><br></div><div>“A compelling mystery with prose so luminous it can cut through the murkiest of pluff mud.”—Augusta Chronicle</div><div><br></div><div>“Carries the rhythm of an old time ballad. It is clear Owens knows this land intimately, from the black mud sucking at footsteps to the taste of saltwater and the cry of seagulls.”—David Joy, author of The Line That Held Us</div>'),
(7, 7, 'ar', 'med', 'raniaaaaa', 'rania shool', '<p>raniiiaaa</p>');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(2, 15, 150.00, '/store/1/default_images/subscribe_packages/gold.png', 1, 1635446032),
(3, 15, 50.00, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1646415095),
(4, 15, 90.00, '/store/1/default_images/subscribe_packages/silver.png', 0, 1635446095);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translations`
--

CREATE TABLE `promotion_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_translations`
--

INSERT INTO `promotion_translations` (`id`, `promotion_id`, `locale`, `title`, `description`) VALUES
(1, 2, 'en', 'Gold', 'One of your classes will be displayed at the top of the category list and homepage slider'),
(2, 3, 'en', 'Bronze', 'One of your classes will be displayed at the top of the category list'),
(3, 4, 'en', 'Silver', 'One of your classes will be displayed at the homepage slider'),
(4, 2, 'es', 'Oro', 'Una de sus clases se mostrará en la parte superior de la lista de categorías y el control deslizante de la página de inicio.'),
(5, 2, 'ar', 'ذهب', 'سيتم عرض أحد فصولك الدراسية في أعلى قائمة الفئات وشريط تمرير الصفحة الرئيسية'),
(6, 4, 'ar', 'فضة', 'سيتم عرض إحدى فصولك الدراسية في شريط تمرير الصفحة الرئيسية'),
(7, 4, 'es', 'Plata', 'Una de sus clases se mostrará en el control deslizante de la página de inicio.'),
(8, 3, 'ar', 'برونزية', 'سيتم عرض أحد فصولك في أعلى قائمة الفئات'),
(9, 3, 'es', 'Bronce', 'Una de sus clases se mostrará en la parte superior de la lista de categorías.');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `attempt` int(11) DEFAULT NULL,
  `pass_mark` int(11) NOT NULL,
  `certificate` tinyint(1) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `total_mark` int(10) UNSIGNED DEFAULT NULL,
  `display_limited_questions` tinyint(1) NOT NULL DEFAULT 0,
  `display_number_of_questions` int(10) UNSIGNED DEFAULT NULL,
  `display_questions_randomly` tinyint(1) NOT NULL DEFAULT 0,
  `expiry_days` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `webinar_id`, `creator_id`, `chapter_id`, `time`, `attempt`, `pass_mark`, `certificate`, `status`, `total_mark`, `display_limited_questions`, `display_number_of_questions`, `display_questions_randomly`, `expiry_days`, `created_at`, `updated_at`) VALUES
(43, 2023, 1052, NULL, 12, 3, 5, 0, 'active', NULL, 0, NULL, 0, 2, 1703028771, 1703028803),
(44, 2025, 1059, NULL, 5, 5, 10, 0, 'active', NULL, 0, NULL, 0, NULL, 1705264750, 1705267266);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_new`
--

CREATE TABLE `quizzes_new` (
  `id` int(11) NOT NULL,
  `serie_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `question_body` varchar(255) NOT NULL,
  `sound_file` varchar(255) DEFAULT NULL,
  `picture_file` varchar(255) DEFAULT NULL,
  `question_number` int(11) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `suggestions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `quiz_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes_new`
--

INSERT INTO `quizzes_new` (`id`, `serie_id`, `question`, `question_body`, `sound_file`, `picture_file`, `question_number`, `correct_answer`, `suggestions`, `quiz_type_id`) VALUES
(2, 2, 'اضع العلامة امام ما يناسب', 'أ.هذا النص هو', NULL, NULL, 1, 3, '{\r\n\"1\":\"نثر\",\r\n\"2\":\"شعر\",\r\n\"3\":\"حوار\",\r\n\"4\":\"قصة\"\r\n}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

CREATE TABLE `quizzes_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(255) NOT NULL,
  `type` enum('multiple','descriptive') NOT NULL,
  `image` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

CREATE TABLE `quizzes_questions_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answer_translations`
--

CREATE TABLE `quizzes_questions_answer_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quizzes_questions_answer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

CREATE TABLE `quizzes_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `results` text DEFAULT NULL,
  `user_grade` int(11) DEFAULT NULL,
  `status` enum('passed','failed','waiting') NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_results`
--

INSERT INTO `quizzes_results` (`id`, `quiz_id`, `user_id`, `results`, `user_grade`, `status`, `created_at`) VALUES
(1, 44, 1057, '{\"attempt_number\":\"1\"}', 0, 'failed', 1705268672),
(2, 44, 1059, '', 0, 'waiting', 1706286506);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_serie`
--

CREATE TABLE `quizzes_serie` (
  `id` int(11) NOT NULL,
  `serie_name` varchar(255) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes_serie`
--

INSERT INTO `quizzes_serie` (`id`, `serie_name`, `course_id`) VALUES
(2, 'courses 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question_translations`
--

CREATE TABLE `quiz_question_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quizzes_question_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `correct` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_translations`
--

CREATE TABLE `quiz_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_translations`
--

INSERT INTO `quiz_translations` (`id`, `quiz_id`, `locale`, `title`) VALUES
(20, 43, 'ar', 'حلل و ناقش'),
(21, 44, 'ar', 'quiz 1');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_types`
--

CREATE TABLE `quiz_types` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `geo_center` point DEFAULT NULL,
  `type` enum('country','province','city','district') NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `province_id`, `city_id`, `geo_center`, `type`, `title`, `created_at`) VALUES
(16, NULL, NULL, NULL, 0x000000000101000000502c37a3fd2748400000000000910440, 'country', 'France', 1646175250),
(17, NULL, NULL, NULL, 0x000000000101000000cc4c51ad1a29374000000000509c5340, 'country', 'India', 1646045215),
(18, NULL, NULL, NULL, 0x000000000101000000fc87794512fd434000000000787e58c0, 'country', 'United States', 1646208799),
(19, NULL, NULL, NULL, 0x000000000101000000c399e9d9582130400000000040da3240, 'country', 'Chad', 1646045318),
(20, NULL, NULL, NULL, 0x000000000101000000c914e2b7f634384000000000e0634640, 'country', 'Saudi Arabia', 1646045651),
(21, 16, NULL, NULL, 0x000000000101000000b7417d8d9700484000000000c01709c0, 'province', 'Brittany', 1646175600),
(22, 16, NULL, NULL, 0x000000000101000000c28d5422c26d484000000000e0b20240, 'province', 'Île-de-France', 1646176998),
(23, 16, 22, NULL, 0x00000000010100000043242b8d136e4840f6ffffff3dcd0240, 'city', 'Paris', 1646177038),
(24, 16, 22, 23, 0x000000000101000000f4056521416f4840f7ffff7f315a0240, 'district', 'Chaillot', 1646177131),
(25, 16, 22, 23, 0x000000000101000000fecb2c1406684840f9ffff7f26fc0140, 'district', 'Le val', 1646177195),
(26, 16, 22, 23, 0x000000000101000000da05b69e8a6d484008000000cd2e0340, 'district', 'Charonne', 1646177249),
(27, 17, NULL, NULL, 0x00000000010100000032073e5acab03c4004000000934a5340, 'province', 'Delhi', 1646177430),
(28, 17, NULL, NULL, 0x000000000101000000e7331bb0e31333400200008025395240, 'province', 'Maharashtra', 1646177529),
(29, 17, 27, NULL, 0x0000000001010000004ea45133209e3c4002000050f54c5340, 'city', 'New Delhi', 1646177585),
(30, 17, 28, NULL, 0x0000000001010000000fd66a9d27f13240040000305b355240, 'city', 'Mumbai', 1646177660),
(31, 20, NULL, NULL, 0x0000000001010000005aa3dd6a75923840070000004acf4340, 'province', 'Medina', 1646207588),
(32, 20, 31, NULL, 0x0000000001010000007522ebce077938400500005028ce4340, 'city', 'Medina', 1646207641),
(33, 20, NULL, NULL, 0x000000000101000000f87d72b19dd33840000000007c5d4740, 'province', 'Riyadh', 1646207846),
(34, 20, 33, NULL, 0x0000000001010000003352eaadc2a23840050000207c5b4740, 'city', 'Riyadh', 1646207899),
(35, 17, 27, 29, 0x000000000101000000677eaddc83933c40000000f4e44f5340, 'district', 'Jal vihar', 1646208038),
(36, 17, 27, 29, 0x0000000001010000000c564b253b8f3c40030000f4f54d5340, 'district', 'Anand lok', 1646208100),
(37, 17, 28, 30, 0x000000000101000000744a1102cef732400000003c9b345240, 'district', 'Tardeo', 1646208151),
(38, 17, 28, 30, 0x000000000101000000e1347d6ea4ed32400000009235355240, 'district', 'Kala ghoda', 1646208227),
(39, 17, 28, 30, 0x0000000001010000007f59b3f397003340feffffa36f345240, 'district', 'Nehru nagar', 1646208287),
(40, 20, 31, 32, 0x0000000001010000009f9a107be67a3840fcfffff32bcc4340, 'district', 'Al fath', 1646208357),
(41, 20, 31, 32, 0x0000000001010000004a9335c11e7c384001000084fbd54340, 'district', 'Al mabuth', 1646208449),
(42, 20, 33, 34, 0x000000000101000000ecdbbe5e4ca438400400001821554740, 'district', 'Al rafiah', 1646208501),
(43, 20, 33, 34, 0x00000000010100000047a393f74fa83840fdffff8f195d4740, 'district', 'Al malaz', 1646208541),
(44, 20, 33, 34, 0x000000000101000000b3cc5d99029b384004000090d3574740, 'district', 'Sultanah', 1646208741),
(45, 18, NULL, NULL, 0x0000000001010000008a421c62479242402300000002ef5dc0, 'province', 'California', 1646208923),
(46, 18, NULL, NULL, 0x00000000010100000073bb0212f86a4540000000006add52c0, 'province', 'New York', 1646209125),
(47, 18, 45, NULL, 0x000000000101000000c0eb475b13e44240e2ffffafd29a5ec0, 'city', 'San Francisco', 1646209213),
(48, 18, 45, NULL, 0x000000000101000000996d3806e37c4240f8fffff7ee815ec0, 'city', 'Santa Cruz', 1646209310),
(49, 18, 46, NULL, 0x0000000001010000002ff3954dd15d4440020000504b7f52c0, 'city', 'New York', 1646209459),
(50, 18, 46, NULL, 0x00000000010100000035c4cc6279534540000000b85b7052c0, 'city', 'Albany', 1646209552),
(51, 18, 45, 47, 0x0000000001010000003aeafdd6abe04240faffffd7b49f5ec0, 'district', 'Sunset district', 1646209607),
(52, 18, 45, 47, 0x0000000001010000001d646d8c1bdf4240f1ffff57859a5ec0, 'district', 'Bernal heights', 1646209668),
(53, 18, 45, 48, 0x000000000101000000798fe4b88f7b4240220000d4f3825ec0, 'district', 'Westside', 1646209704),
(54, 18, 45, 48, 0x0000000001010000000ea4fdcb187c4240e4ffffdb84805ec0, 'district', 'Seabright', 1646209756),
(55, 18, 46, 49, 0x000000000101000000502d3717765b444003000064278052c0, 'district', 'Civic center', 1646209822),
(56, 18, 46, 49, 0x000000000101000000895ffa4836624440fffffff7687d52c0, 'district', 'Lenox hill', 1646209902),
(57, 18, 46, 50, 0x0000000001010000002a11fd866f5445400400000c7e7252c0, 'district', 'Pine hills', 1646209945),
(58, 18, 46, 50, 0x000000000101000000132a6a90cb5445400400000a557052c0, 'district', 'Arbor hill', 1646209990),
(59, 19, NULL, NULL, 0x000000000101000000e02f3b6e02472840f2ffffff83122e40, 'province', 'N\'Djaména', 1646210607),
(60, 19, 59, NULL, 0x0000000001010000000b5659aeba3d284018000040c4192e40, 'city', 'N\'Djaména', 1646210643),
(61, 19, NULL, NULL, 0x000000000101000000776860c6695021400e00000094103040, 'province', 'Logone Occidental', 1646210813),
(62, 19, 61, NULL, 0x000000000101000000d1cf427b71222140030000a0e2123040, 'city', 'Moundou', 1646210881),
(63, 19, 59, 60, 0x0000000001010000002e2f2cc30d312840e6ffffdf71262e40, 'district', 'Moursal', 1646210978),
(64, 19, 59, 60, 0x0000000001010000009f93ddbcdc392840f1ffff9feb192e40, 'district', 'Blabline', 1646211027),
(65, 19, 61, 62, 0x0000000001010000000b91007923232140f7ffff9732163040, 'district', 'Bornou', 1646211077),
(66, 19, 61, 62, 0x0000000001010000006b07cb49aa192140f6ffffa7650f3040, 'district', 'Dokapti', 1646211168),
(67, 16, 21, NULL, 0x00000000010100000018e23f51690e4840fffffffff1e3fabf, 'city', 'Rennes', 1646295560),
(68, 16, 21, 67, 0x0000000001010000001d2d3bd0140e4840060000009f54fbbf, 'district', 'Moulin du comte', 1646295696);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages`
--

CREATE TABLE `registration_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `role` enum('instructors','organizations') NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `product_count` int(10) UNSIGNED DEFAULT NULL,
  `ai_content_access` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('disabled','active') NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages`
--

INSERT INTO `registration_packages` (`id`, `days`, `price`, `icon`, `role`, `instructors_count`, `students_count`, `courses_capacity`, `courses_count`, `meeting_count`, `product_count`, `ai_content_access`, `status`, `created_at`) VALUES
(1, 30, 99.00, '/store/1/default_images/registertion_packages/bronze_instructor.png', 'instructors', NULL, NULL, 40, 10, 30, NULL, 0, 'active', 1646040584),
(2, 90, 199.00, '/store/1/default_images/registertion_packages/silver_instructor.png', 'instructors', NULL, NULL, 60, 20, 50, NULL, 0, 'active', 1646041075),
(3, 180, 400.00, '/store/1/default_images/registertion_packages/gold_instructor.png', 'instructors', NULL, NULL, 100, 40, 75, NULL, 0, 'active', 1646041329),
(4, 30, 200.00, '/store/1/default_images/registertion_packages/bronze_organization.png', 'organizations', 5, 50, 40, 10, 30, NULL, 0, 'active', 1646041807),
(5, 90, 400.00, '/store/1/default_images/registertion_packages/silver_organization.png', 'organizations', 10, 100, 70, 20, 50, NULL, 0, 'active', 1646041992),
(6, 180, 600.00, '/store/1/default_images/registertion_packages/gold_organization.png', 'organizations', 30, 300, 150, 50, 100, NULL, 0, 'active', 1646042364);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages_translations`
--

CREATE TABLE `registration_packages_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_package_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages_translations`
--

INSERT INTO `registration_packages_translations` (`id`, `registration_package_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Basic', 'Suggested for starter instructors.'),
(2, 2, 'en', 'Pro', 'Suggested for professional instructors.'),
(3, 3, 'en', 'Premium', 'Suggested for expert instructors.'),
(4, 4, 'en', 'Basic', 'Suggested for small organizations'),
(5, 5, 'en', 'Pro', 'Suggested for medium organizations'),
(6, 6, 'en', 'Premium', 'Suggested for big organizations');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_meetings`
--

CREATE TABLE `reserve_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(10) NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `start_at` bigint(20) UNSIGNED NOT NULL,
  `end_at` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paid_amount` decimal(13,2) NOT NULL,
  `meeting_type` enum('in_person','online') NOT NULL DEFAULT 'online',
  `student_count` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','open','finished','canceled') NOT NULL,
  `created_at` int(11) NOT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `reserved_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','buy_store_product','pass_assignment','send_post_in_topic','make_topic','create_blog_by_instructor','comment_for_instructor_blog') NOT NULL,
  `score` int(10) UNSIGNED DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `status` enum('active','disabled') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `type`, `score`, `condition`, `status`, `created_at`) VALUES
(3, 'charge_wallet', 50, '150', 'active', 1641205067),
(4, 'account_charge', 50, '100', 'active', 1641369989),
(5, 'badge', NULL, NULL, 'active', 1641300755),
(6, 'create_classes', 50, NULL, 'active', 1641369921),
(7, 'buy', 50, '10', 'active', 1641369938),
(8, 'pass_the_quiz', 50, NULL, 'active', 1641369947),
(9, 'certificate', 30, NULL, 'active', 1641369955),
(10, 'comment', 5, NULL, 'active', 1641369968),
(11, 'register', 5, NULL, 'active', 1641370008),
(12, 'review_courses', 15, NULL, 'active', 1641370016),
(13, 'instructor_meeting_reserve', 30, NULL, 'active', 1641370026),
(14, 'student_meeting_reserve', 30, NULL, 'active', 1641370036),
(15, 'newsletters', 10, NULL, 'active', 1641370050),
(16, 'referral', 5, NULL, 'active', 1641370059),
(18, 'learning_progress_100', 20, NULL, 'active', 1641372957),
(19, 'buy_store_product', 50, '26', 'active', 1648277874),
(20, 'pass_assignment', 50, NULL, 'active', 1649247227),
(21, 'make_topic', 1, NULL, 'active', 1650548269),
(22, 'send_post_in_topic', 1, NULL, 'active', 1650548278),
(23, 'create_blog_by_instructor', 5, NULL, 'active', 1650788324),
(24, 'comment_for_instructor_blog', 3, NULL, 'active', 1650788336);

-- --------------------------------------------------------

--
-- Table structure for table `rewards_accounting`
--

CREATE TABLE `rewards_accounting` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','withdraw','buy_store_product','pass_assignment','send_post_in_topic','make_topic','create_blog_by_instructor','comment_for_instructor_blog') NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `status` enum('addiction','deduction') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards_accounting`
--

INSERT INTO `rewards_accounting` (`id`, `user_id`, `item_id`, `type`, `score`, `status`, `created_at`) VALUES
(77, 1, 23, 'badge', 15, 'addiction', 1655618081);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `users_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `caption`, `users_count`, `is_admin`, `created_at`) VALUES
(1, 'user', 'تلميذ', 0, 0, 1604418504),
(2, 'admin', 'Admin role', 0, 1, 1604418504),
(3, 'organization', 'مدرسة', 0, 0, 1604418504),
(4, 'teacher', 'معلم', 0, 0, 1604418504),
(6, 'education', 'Author', 0, 1, 1613370817);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `product_order_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `installment_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method` enum('credit','payment_channel','subscribe') DEFAULT NULL,
  `type` enum('webinar','meeting','subscribe','promotion','registration_package','product','bundle','installment_payment','gift') NOT NULL,
  `amount` decimal(13,2) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `commission` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `product_delivery_fee` decimal(13,2) DEFAULT NULL,
  `manual_added` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_purchased_item` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` int(10) UNSIGNED NOT NULL,
  `refund_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `seller_id`, `buyer_id`, `order_id`, `webinar_id`, `bundle_id`, `meeting_id`, `meeting_time_id`, `subscribe_id`, `ticket_id`, `promotion_id`, `product_order_id`, `registration_package_id`, `installment_payment_id`, `gift_id`, `payment_method`, `type`, `amount`, `tax`, `commission`, `discount`, `total_amount`, `product_delivery_fee`, `manual_added`, `access_to_purchased_item`, `created_at`, `refund_at`) VALUES
(141, 1015, 996, 307, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'meeting', 150.00, 15.00, 30.00, 0.00, 165.00, NULL, 0, 1, 1625944345, NULL),
(142, 934, 995, 308, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'meeting', 100.00, 10.00, 20.00, 0.00, 110.00, NULL, 0, 1, 1625952627, NULL),
(143, 4, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 10.00, 1.00, 2.00, 0.00, 11.00, NULL, 0, 1, 1625953196, NULL),
(144, 1015, 995, 310, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'meeting', 125.00, 12.50, 25.00, 0.00, 137.50, NULL, 0, 1, 1625996812, NULL),
(145, 1016, 995, NULL, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1625996905, NULL),
(146, 929, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 50.00, 5.00, 5.00, 0.00, 55.00, NULL, 0, 1, 1625996941, NULL),
(147, 1015, 995, 312, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 100.00, 5.00, 10.00, 50.00, 55.00, NULL, 0, 1, 1625996978, NULL),
(148, 3, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 20.00, 1.60, 1.60, 4.00, 17.60, NULL, 0, 1, 1625997104, NULL),
(149, 1015, 996, NULL, 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626060382, NULL),
(150, 934, 996, NULL, 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626060412, NULL),
(151, 867, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 25.00, 2.25, 4.50, 2.50, 24.75, NULL, 0, 1, 1626060487, NULL),
(152, 1015, 996, 315, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 100.00, 4.00, 8.00, 60.00, 44.00, NULL, 0, 1, 1626060552, NULL),
(153, 1015, 979, NULL, 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626060740, NULL),
(154, 1015, 930, NULL, 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626060773, NULL),
(155, 1015, 930, 316, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 100.00, 5.00, 10.00, 50.00, 55.00, NULL, 0, 1, 1626060835, NULL),
(156, 929, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 60.00, 6.00, 6.00, 0.00, 66.00, NULL, 0, 1, 1626061332, NULL),
(157, 863, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 20.00, 2.00, 4.00, 0.00, 22.00, NULL, 0, 1, 1626061373, NULL),
(158, 867, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 30.00, 3.00, 6.00, 0.00, 33.00, NULL, 0, 1, 1626061374, NULL),
(159, NULL, 995, 319, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'subscribe', 20.00, 2.00, 0.00, NULL, 22.00, NULL, 0, 1, 1626061450, NULL),
(160, 867, 995, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subscribe', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1626061483, NULL),
(161, 929, 995, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subscribe', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 0, 1626061490, NULL),
(162, 863, 995, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subscribe', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1626061494, NULL),
(163, 1015, 995, NULL, 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626062834, NULL),
(164, 1016, 996, NULL, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626129811, NULL),
(165, 1016, 1015, NULL, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626132407, NULL),
(166, 863, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 20.00, 1.60, 3.20, 4.00, 17.60, NULL, 0, 1, 1626132844, NULL),
(167, NULL, 929, 323, 2004, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'credit', 'promotion', 50.00, 5.00, 0.00, NULL, 55.00, NULL, 0, 1, 1626241152, NULL),
(168, 864, 929, 324, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 40.00, 3.00, 6.00, 10.00, 33.00, NULL, 0, 1, 1626241212, NULL),
(169, 1015, 929, NULL, 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, NULL, NULL, 0, 1, 1626243340, NULL),
(170, 870, 995, 325, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'meeting', 100.00, 10.00, 20.00, 0.00, 110.00, NULL, 0, 1, 1626247195, 1626247245),
(171, 867, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 30.00, 2.70, 5.40, 3.00, 29.70, NULL, 0, 1, 1626508956, NULL),
(172, 867, 995, NULL, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1635408189, NULL),
(173, 867, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 30.00, 3.00, 6.00, 0.00, 33.00, NULL, 0, 1, 1635412196, NULL),
(174, 867, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 30.00, 3.00, 6.00, 0.00, 33.00, NULL, 0, 1, 1639379284, NULL),
(175, 1016, 1017, NULL, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1639379336, NULL),
(176, 1015, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 100.00, 10.00, 20.00, 0.00, 110.00, NULL, 0, 1, 1639379350, NULL),
(177, 864, 1017, 332, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 40.00, 3.00, 6.00, 10.00, 33.00, NULL, 0, 1, 1639379388, NULL),
(178, 1015, 995, NULL, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1646127212, NULL),
(179, 1015, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 10.00, 1.00, 2.00, 0.00, 11.00, NULL, 0, 1, 1646172086, NULL),
(180, 1015, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 10.00, 0.90, 1.80, 1.00, 9.90, NULL, 0, 1, 1646172123, NULL),
(181, 1015, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 10.00, 1.00, 2.00, 0.00, 11.00, NULL, 0, 1, 1646172159, NULL),
(182, 1015, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 10.00, 1.00, 2.00, 0.00, 11.00, NULL, 0, 1, 1646172296, NULL),
(183, 1015, 996, NULL, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1646174000, NULL),
(184, 1015, 1017, NULL, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1646174029, NULL),
(185, 1015, 1016, NULL, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1646326504, NULL),
(186, 1015, 995, 337, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'meeting', 750.00, 75.00, 150.00, 0.00, 825.00, NULL, 0, 1, 1646379288, NULL),
(187, NULL, 930, 339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'credit', 'registration_package', 199.00, 19.90, 0.00, NULL, 218.90, NULL, 0, 1, 1646386787, NULL),
(188, NULL, 859, 340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 'credit', 'registration_package', 200.00, 20.00, 0.00, NULL, 220.00, NULL, 0, 1, 1646387655, NULL),
(189, 929, 995, NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1655872666, NULL),
(190, 929, 996, NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1655875500, NULL),
(191, 929, 930, NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 0, 1, 1655877104, NULL),
(192, 1015, 930, 341, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'bundle', 50.00, 5.00, 10.00, 0.00, 55.00, 0.00, 0, 1, 1656083262, NULL),
(193, 1016, 995, 342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'credit', 'product', 5.00, 0.25, 1.00, 0.00, 5.25, 0.00, 0, 1, 1656103844, NULL),
(194, 1015, 923, 343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'credit', 'product', 25.00, 1.25, 2.50, 0.00, 31.25, 5.00, 0, 1, 1656104131, NULL),
(195, 864, 996, 344, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 40.00, 3.60, 7.20, 4.00, 39.60, 0.00, 0, 1, 1656130481, NULL),
(196, 934, 930, 345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 'credit', 'product', 290.00, 14.50, 29.00, 0.00, 314.50, 10.00, 0, 1, 1656130707, NULL),
(197, 1015, 996, 346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 'credit', 'product', 75.00, 3.75, 15.00, 0.00, 78.75, 0.00, 0, 1, 1656130963, NULL),
(198, 934, 979, 347, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'bundle', 8.00, 0.80, 1.60, 0.00, 8.80, 0.00, 0, 1, 1656139703, NULL),
(199, 929, 979, 347, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'bundle', 25.00, 2.50, 5.00, 0.00, 27.50, 0.00, 0, 1, 1656139705, NULL),
(200, 1015, 1017, 348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 'credit', 'product', 25.00, 1.00, 2.00, 5.00, 26.00, 5.00, 0, 1, 1656148574, NULL),
(201, 1015, 995, 350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 'credit', 'product', 50.00, 2.25, 4.50, 5.00, 52.25, 5.00, 0, 1, 1656148838, NULL),
(202, 1, 995, 351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 'credit', 'product', 20.00, 1.00, 4.00, 4.00, 17.00, 0.00, 0, 1, 1656322658, NULL),
(269, 929, 979, 696, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'credit', 'gift', 60.00, 3.60, 3.60, 24.00, 39.60, 0.00, 0, 1, 1678919437, NULL),
(276, 870, 1045, 703, 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 100.00, 10.00, 20.00, 0.00, 110.00, 0.00, 0, 1, 1678959222, NULL),
(278, 929, 930, 705, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 60.00, 3.60, 3.60, 24.00, 39.60, 0.00, 0, 1, 1678961218, NULL),
(280, 867, 1045, 707, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 30.00, 3.00, 6.00, 0.00, 33.00, 0.00, 0, 1, 1679088431, NULL),
(281, 1059, 1057, NULL, 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'credit', 'webinar', 0.00, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1705267126, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_log`
--

CREATE TABLE `sales_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `viewed_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_log`
--

INSERT INTO `sales_log` (`id`, `sale_id`, `viewed_at`) VALUES
(1, 173, 1635412221),
(2, 172, 1635412222),
(3, 171, 1635412222),
(4, 170, 1635412222),
(5, 169, 1635412222),
(6, 168, 1635412222),
(7, 167, 1635412222),
(8, 166, 1635412222),
(9, 165, 1635412222),
(10, 164, 1635412222),
(11, 163, 1635412231),
(12, 162, 1635412231),
(13, 161, 1635412231),
(14, 160, 1635412231),
(15, 159, 1635412231),
(16, 158, 1635412231),
(17, 157, 1635412231),
(18, 156, 1635412231),
(19, 155, 1635412231),
(20, 154, 1635412231),
(21, 153, 1635412234),
(22, 152, 1635412234),
(23, 151, 1635412234),
(24, 150, 1635412234),
(25, 149, 1635412234),
(26, 148, 1635412234),
(27, 147, 1635412234),
(28, 146, 1635412234),
(29, 145, 1635412234),
(30, 144, 1635412234),
(31, 143, 1635412235),
(32, 142, 1635412235),
(33, 141, 1635412235),
(34, 184, 1646260033),
(35, 183, 1646260033),
(36, 182, 1646260033),
(37, 181, 1646260033),
(38, 180, 1646260033),
(39, 179, 1646260033),
(40, 178, 1646260033),
(41, 177, 1646260033),
(42, 176, 1646260033),
(43, 175, 1646260033),
(44, 191, 1655970525),
(45, 190, 1655970525),
(46, 189, 1655970525),
(47, 185, 1655970525),
(48, 195, 1656233676),
(126, 199, 1678864379),
(127, 198, 1678864379),
(128, 192, 1678864379),
(129, 188, 1678864379),
(130, 187, 1678864379),
(131, 186, 1678864379),
(132, 174, 1678864399),
(133, 269, 1678925651),
(135, 278, 1679088169),
(137, 276, 1679088169),
(138, 280, 1679090268);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `section_group_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `section_group_id`, `caption`) VALUES
(1, 'admin_general_dashboard', NULL, 'General Dashboard'),
(2, 'admin_general_dashboard_show', 1, 'General Dashboard page'),
(3, 'admin_general_dashboard_quick_access_links', 1, 'Quick access links in General Dashboard'),
(4, 'admin_general_dashboard_daily_sales_statistics', 1, 'Daily Sales Type Statistics Section'),
(5, 'admin_general_dashboard_income_statistics', 1, 'Income Statistics Section'),
(6, 'admin_general_dashboard_total_sales_statistics', 1, 'Total Sales Statistics Section'),
(7, 'admin_general_dashboard_new_sales', 1, 'New Sales Section'),
(8, 'admin_general_dashboard_new_comments', 1, 'New Comments Section'),
(9, 'admin_general_dashboard_new_tickets', 1, 'New Tickets Section'),
(10, 'admin_general_dashboard_new_reviews', 1, 'New Reviews Section'),
(11, 'admin_general_dashboard_sales_statistics_chart', 1, 'Sales Statistics Chart'),
(12, 'admin_general_dashboard_recent_comments', 1, 'Recent comments Section'),
(13, 'admin_general_dashboard_recent_tickets', 1, 'Recent tickets Section'),
(14, 'admin_general_dashboard_recent_webinars', 1, 'Recent webinars Section'),
(15, 'admin_general_dashboard_recent_courses', 1, 'Recent courses Section'),
(16, 'admin_general_dashboard_users_statistics_chart', 1, 'Users Statistics Chart'),
(17, 'admin_clear_cache', 1, 'Clear cache'),
(25, 'admin_marketing_dashboard', NULL, 'Marketing Dashboard'),
(26, 'admin_marketing_dashboard_show', 25, 'Marketing Dashboard page'),
(50, 'admin_roles', NULL, 'Roles'),
(51, 'admin_roles_list', 50, 'Roles List'),
(52, 'admin_roles_create', 50, 'Roles Create'),
(53, 'admin_roles_edit', 50, 'Roles Edit'),
(54, 'admin_roles_delete', 50, 'Roles Delete'),
(100, 'admin_users', NULL, 'Users'),
(101, 'admin_staffs_list', 100, 'Staffs list'),
(102, 'admin_users_list', 100, 'Students list'),
(103, 'admin_instructors_list', 100, 'Instructors list'),
(104, 'admin_organizations_list', 100, 'Organizations list'),
(105, 'admin_users_create', 100, 'Users Create'),
(106, 'admin_users_edit', 100, 'Users Edit'),
(107, 'admin_users_delete', 100, 'Users Delete'),
(108, 'admin_users_export_excel', 100, 'List Export excel'),
(109, 'admin_users_badges', 100, 'Users Badges'),
(110, 'admin_users_badges_edit', 100, 'Badges edit'),
(111, 'admin_users_badges_delete', 100, 'Badges delete'),
(112, 'admin_users_impersonate', 100, 'users impersonate (login by users)'),
(113, 'admin_become_instructors_list', 100, 'Lists of requests for become instructors'),
(114, 'admin_become_instructors_reject', 100, 'Reject requests for become instructors'),
(115, 'admin_become_instructors_delete', 100, 'Delete requests for become instructors'),
(116, 'admin_update_user_registration_package', 100, 'Edit user registration package'),
(117, 'admin_update_user_meeting_settings', 100, 'Edit user meeting settings'),
(150, 'admin_webinars', NULL, 'Webinars'),
(151, 'admin_webinars_list', 150, 'Webinars List'),
(152, 'admin_webinars_create', 150, 'Webinars Create'),
(153, 'admin_webinars_edit', 150, 'Webinars Edit'),
(154, 'admin_webinars_delete', 150, 'Webinars Delete'),
(155, 'admin_webinars_export_excel', 150, 'Export excel webinars list'),
(156, 'admin_feature_webinars', 150, 'Feature webinars list'),
(157, 'admin_feature_webinars_create', 150, 'create feature webinar'),
(158, 'admin_feature_webinars_export_excel', 150, 'Feature webinar export excel'),
(159, 'admin_webinar_students_lists', 150, 'Webinar students Lists'),
(160, 'admin_webinar_students_delete', 150, 'Webinar students delete'),
(161, 'admin_webinar_notification_to_students', 150, 'Send notification to course students'),
(162, 'admin_webinar_statistics', 150, 'Course statistics'),
(163, 'admin_agora_history_list', 150, 'Agora history lists'),
(164, 'admin_agora_history_export', 150, 'Agora history export'),
(165, 'admin_course_question_forum_list', 150, 'Forum Question Lists'),
(166, 'admin_course_question_forum_answers', 150, 'Forum Answers Lists'),
(200, 'admin_categories', NULL, 'Categories'),
(201, 'admin_categories_list', 200, 'Categories List'),
(202, 'admin_categories_create', 200, 'Categories Create'),
(203, 'admin_categories_edit', 200, 'Categories Edit'),
(204, 'admin_categories_delete', 200, 'Categories Delete'),
(205, 'admin_trending_categories', 200, 'Trends Categories List'),
(206, 'admin_create_trending_categories', 200, 'Create Trend Categories'),
(207, 'admin_edit_trending_categories', 200, 'Edit Trend Categories'),
(208, 'admin_delete_trending_categories', 200, 'Delete Trend Categories'),
(250, 'admin_tags', NULL, 'Tags'),
(251, 'admin_tags_list', 250, 'Tags List'),
(252, 'admin_tags_create', 250, 'Tags Create'),
(253, 'admin_tags_edit', 250, 'Tags Edit'),
(254, 'admin_tags_delete', 250, 'Tags Delete'),
(300, 'admin_filters', NULL, 'Filters'),
(301, 'admin_filters_list', 300, 'Filters List'),
(302, 'admin_filters_create', 300, 'Filters Create'),
(303, 'admin_filters_edit', 300, 'Filters Edit'),
(304, 'admin_filters_delete', 300, 'Filters Delete'),
(350, 'admin_quizzes', NULL, 'Quizzes'),
(351, 'admin_quizzes_list', 350, 'Quizzes List'),
(352, 'admin_quizzes_create', 350, 'Create Quiz'),
(353, 'admin_quizzes_edit', 350, 'Edit Quiz'),
(354, 'admin_quizzes_delete', 350, 'Delete Quiz'),
(355, 'admin_quizzes_results', 350, 'Quizzes results'),
(356, 'admin_quizzes_results_delete', 350, 'Quizzes results delete'),
(357, 'admin_quizzes_lists_excel', 350, 'Quizzes export excel'),
(400, 'admin_quiz_result', NULL, 'Quiz Result'),
(401, 'admin_quiz_result_list', 400, 'Quiz Result List'),
(402, 'admin_quiz_result_create', 400, 'Quiz Result Create'),
(403, 'admin_quiz_result_edit', 400, 'Quiz Result Edit'),
(404, 'admin_quiz_result_delete', 400, 'Quiz Result Delete'),
(405, 'admin_quiz_result_export_excel', 400, 'quiz result export excel'),
(450, 'admin_certificate', NULL, 'Certificate'),
(451, 'admin_certificate_list', 450, 'Certificate List'),
(452, 'admin_certificate_create', 450, 'Certificate Create'),
(453, 'admin_certificate_edit', 450, 'Certificate Edit'),
(454, 'admin_certificate_delete', 450, 'Certificate Delete'),
(455, 'admin_certificate_template_list', 450, 'Certificate template lists'),
(456, 'admin_certificate_template_create', 450, 'Certificate template create'),
(457, 'admin_certificate_template_edit', 450, 'Certificate template edit'),
(458, 'admin_certificate_template_delete', 450, 'Certificate template delete'),
(459, 'admin_certificate_export_excel', 450, 'Certificates export excel'),
(460, 'admin_course_certificate_list', 450, 'Course Competition Certificates'),
(500, 'admin_discount_codes', NULL, 'Discount codes'),
(501, 'admin_discount_codes_list', 500, 'Discount codes list'),
(502, 'admin_discount_codes_create', 500, 'Discount codes create'),
(503, 'admin_discount_codes_edit', 500, 'Discount codes edit'),
(504, 'admin_discount_codes_delete', 500, 'Discount codes delete'),
(505, 'admin_discount_codes_export', 500, 'Discount codes export excel'),
(550, 'admin_group', NULL, 'Groups'),
(551, 'admin_group_list', 550, 'Groups List'),
(552, 'admin_group_create', 550, 'Groups Create'),
(553, 'admin_group_edit', 550, 'Groups Edit'),
(554, 'admin_group_delete', 550, 'Groups Delete'),
(555, 'admin_update_group_registration_package', 550, 'Update group registration package'),
(600, 'admin_payment_channel', NULL, 'Payment Channels'),
(601, 'admin_payment_channel_list', 600, 'Payment Channels List'),
(602, 'admin_payment_channel_toggle_status', 600, 'active or inactive channel'),
(603, 'admin_payment_channel_edit', 600, 'Payment Channels Edit'),
(650, 'admin_settings', NULL, 'settings'),
(651, 'admin_settings_general', 650, 'General settings'),
(652, 'admin_settings_financial', 650, 'Financial settings'),
(653, 'admin_settings_personalization', 650, 'Personalization settings'),
(654, 'admin_settings_notifications', 650, 'Notifications settings'),
(655, 'admin_settings_seo', 650, 'Seo settings'),
(656, 'admin_settings_customization', 650, 'Customization settings'),
(657, 'admin_settings_update_app', 650, 'Update App settings'),
(658, 'admin_settings_home_sections', 650, 'Home sections settings'),
(700, 'admin_blog', NULL, 'Blog'),
(701, 'admin_blog_lists', 700, 'Blog lists'),
(702, 'admin_blog_create', 700, 'Blog create'),
(703, 'admin_blog_edit', 700, 'Blog edit'),
(704, 'admin_blog_delete', 700, 'Blog delete'),
(705, 'admin_blog_categories', 700, 'Blog categories list'),
(706, 'admin_blog_categories_create', 700, 'Blog categories create'),
(707, 'admin_blog_categories_edit', 700, 'Blog categories edit'),
(708, 'admin_blog_categories_delete', 700, 'Blog categories delete'),
(750, 'admin_sales', NULL, 'Sales'),
(751, 'admin_sales_list', 750, 'Sales List'),
(752, 'admin_sales_refund', 750, 'Sales Refund'),
(753, 'admin_sales_invoice', 750, 'Sales invoice'),
(754, 'admin_sales_export', 750, 'Sales Export Excel'),
(800, 'admin_documents', NULL, 'Balances'),
(801, 'admin_documents_list', 800, 'Balances List'),
(802, 'admin_documents_create', 800, 'Balances Create'),
(803, 'admin_documents_print', 800, 'Balances print'),
(850, 'admin_payouts', NULL, 'Payout'),
(851, 'admin_payouts_list', 850, 'Payout List'),
(852, 'admin_payouts_reject', 850, 'Payout Reject'),
(853, 'admin_payouts_payout', 850, 'Payout accept'),
(854, 'admin_payouts_export_excel', 850, 'Payout export excel'),
(900, 'admin_offline_payments', NULL, 'Offline Payments'),
(901, 'admin_offline_payments_list', 900, 'Offline Payments List'),
(902, 'admin_offline_payments_reject', 900, 'Offline Payments Reject'),
(903, 'admin_offline_payments_approved', 900, 'Offline Payments Approved'),
(904, 'admin_offline_payments_export_excel', 900, 'Offline Payments export excel'),
(950, 'admin_supports', NULL, 'Supports'),
(951, 'admin_supports_list', 950, 'Supports List'),
(952, 'admin_support_send', 950, 'Send Support'),
(953, 'admin_supports_reply', 950, 'Supports reply'),
(954, 'admin_supports_delete', 950, 'Supports delete'),
(955, 'admin_support_departments', 950, 'Support departments lists'),
(956, 'admin_support_department_create', 950, 'Create support department'),
(957, 'admin_support_departments_edit', 950, 'Edit support departments'),
(958, 'admin_support_departments_delete', 950, 'Delete support department'),
(959, 'admin_support_course_conversations', 950, 'Course conversations'),
(1000, 'admin_subscribe', NULL, 'Subscribes'),
(1001, 'admin_subscribe_list', 1000, 'Subscribes list'),
(1002, 'admin_subscribe_create', 1000, 'Subscribes create'),
(1003, 'admin_subscribe_edit', 1000, 'Subscribes edit'),
(1004, 'admin_subscribe_delete', 1000, 'Subscribes delete'),
(1050, 'admin_notifications', NULL, 'Notifications'),
(1051, 'admin_notifications_list', 1050, 'Notifications list'),
(1052, 'admin_notifications_send', 1050, 'Send Notifications'),
(1053, 'admin_notifications_edit', 1050, 'Edit and details Notifications'),
(1054, 'admin_notifications_delete', 1050, 'Delete Notifications'),
(1055, 'admin_notifications_markAllRead', 1050, 'Mark All Read Notifications'),
(1056, 'admin_notifications_templates', 1050, 'Notifications templates'),
(1057, 'admin_notifications_template_create', 1050, 'Create notification template'),
(1058, 'admin_notifications_template_edit', 1050, 'Edit notification template'),
(1059, 'admin_notifications_template_delete', 1050, 'Delete notification template'),
(1060, 'admin_notifications_posted_list', 1050, 'Notifications Posted list'),
(1075, 'admin_noticeboards', NULL, 'Noticeboards'),
(1076, 'admin_noticeboards_list', 1075, 'Noticeboards list'),
(1077, 'admin_noticeboards_send', 1075, 'Send Noticeboards'),
(1078, 'admin_noticeboards_edit', 1075, 'Edit Noticeboards'),
(1079, 'admin_noticeboards_delete', 1075, 'Delete Noticeboards'),
(1080, 'admin_course_noticeboards_list', 1075, 'Course Noticeboards list'),
(1081, 'admin_course_noticeboards_send', 1075, 'Send Course Noticeboards'),
(1082, 'admin_course_noticeboards_edit', 1075, 'Edit Course Noticeboards'),
(1083, 'admin_course_noticeboards_delete', 1075, 'Delete Course Noticeboards'),
(1100, 'admin_promotion', NULL, 'Promotions'),
(1101, 'admin_promotion_list', 1100, 'Promotions list'),
(1102, 'admin_promotion_create', 1100, 'Promotion create'),
(1103, 'admin_promotion_edit', 1100, 'Promotion edit'),
(1104, 'admin_promotion_delete', 1100, 'Promotion delete'),
(1150, 'admin_testimonials', NULL, 'testimonials'),
(1151, 'admin_testimonials_list', 1150, 'testimonials list'),
(1152, 'admin_testimonials_create', 1150, 'testimonials create'),
(1153, 'admin_testimonials_edit', 1150, 'testimonials edit'),
(1154, 'admin_testimonials_delete', 1150, 'testimonials delete'),
(1200, 'admin_advertising', NULL, 'advertising'),
(1201, 'admin_advertising_banners', 1200, 'advertising banners list'),
(1202, 'admin_advertising_banners_create', 1200, 'create advertising banner'),
(1203, 'admin_advertising_banners_edit', 1200, 'edit advertising banner'),
(1204, 'admin_advertising_banners_delete', 1200, 'delete advertising banner'),
(1230, 'admin_newsletters', NULL, 'Newsletters'),
(1231, 'admin_newsletters_lists', 1230, 'Newsletters lists'),
(1232, 'admin_newsletters_send', 1230, 'Send Newsletters'),
(1233, 'admin_newsletters_history', 1230, 'Newsletters histories'),
(1234, 'admin_newsletters_delete', 1230, 'Delete newsletters item'),
(1235, 'admin_newsletters_export_excel', 1230, 'Export excel newsletters item'),
(1250, 'admin_contacts', NULL, 'Contacts'),
(1251, 'admin_contacts_lists', 1250, 'Contacts lists'),
(1252, 'admin_contacts_reply', 1250, 'Contacts reply'),
(1253, 'admin_contacts_delete', 1250, 'Contacts delete'),
(1300, 'admin_product_discount', NULL, 'product discount'),
(1301, 'admin_product_discount_list', 1300, 'product discount list'),
(1302, 'admin_product_discount_create', 1300, 'create product discount'),
(1303, 'admin_product_discount_edit', 1300, 'edit product discount'),
(1304, 'admin_product_discount_delete', 1300, 'delete product discount'),
(1305, 'admin_product_discount_export', 1300, 'delete product export excel'),
(1350, 'admin_pages', NULL, 'pages'),
(1351, 'admin_pages_list', 1350, 'pages list'),
(1352, 'admin_pages_create', 1350, 'pages create'),
(1353, 'admin_pages_edit', 1350, 'pages edit'),
(1354, 'admin_pages_toggle', 1350, 'pages toggle publish/draft'),
(1355, 'admin_pages_delete', 1350, 'pages delete'),
(1400, 'admin_comments', NULL, 'Comments'),
(1401, 'admin_comments_edit', 1400, 'Comments edit'),
(1402, 'admin_comments_reply', 1400, 'Comments reply'),
(1403, 'admin_comments_delete', 1400, 'Comments delete'),
(1404, 'admin_comments_status', 1400, 'Comments status (active or pending)'),
(1405, 'admin_comments_reports', 1400, 'Reports'),
(1406, 'admin_webinar_comments', 1400, 'Classes comments'),
(1407, 'admin_blog_comments', 1400, 'Blog comments'),
(1408, 'admin_product_comments', 1400, 'Product comments'),
(1409, 'admin_bundle_comments', 1400, 'Bundle comments'),
(1450, 'admin_reports', NULL, 'Reports'),
(1451, 'admin_webinar_reports', 1450, 'Classes reports'),
(1452, 'admin_webinar_comments_reports', 1450, 'Classes Comments reports'),
(1453, 'admin_webinar_reports_delete', 1450, 'Classes reports delete'),
(1454, 'admin_blog_comments_reports', 1450, 'Blog Comments reports'),
(1455, 'admin_report_reasons', 1450, 'Reports reasons'),
(1456, 'admin_product_comments_reports', 1450, 'Products Comments reports'),
(1457, 'admin_forum_topic_post_reports', 1450, 'Forum Topic Posts Reports'),
(1500, 'admin_additional_pages', NULL, 'Additional Pages'),
(1501, 'admin_additional_pages_404', 1500, '404 error page settings'),
(1502, 'admin_additional_pages_contact_us', 1500, 'Contact page settings'),
(1503, 'admin_additional_pages_footer', 1500, 'Footer settings'),
(1504, 'admin_additional_pages_navbar_links', 1500, 'Top Navbar links settings'),
(1550, 'admin_appointments', NULL, 'Appointments'),
(1551, 'admin_appointments_lists', 1550, 'Appointments lists'),
(1552, 'admin_appointments_join', 1550, 'Appointments join'),
(1553, 'admin_appointments_send_reminder', 1550, 'Appointments send reminder'),
(1554, 'admin_appointments_cancel', 1550, 'Appointments cancel'),
(1600, 'admin_reviews', NULL, 'Reviews'),
(1601, 'admin_reviews_lists', 1600, 'Reviews lists'),
(1602, 'admin_reviews_status_toggle', 1600, 'Reviews status toggle (publish or hidden)'),
(1603, 'admin_reviews_detail_show', 1600, 'Review details page'),
(1604, 'admin_reviews_reply', 1600, 'Review reply'),
(1605, 'admin_reviews_delete', 1600, 'Review delete'),
(1650, 'admin_consultants', NULL, 'Consultants'),
(1651, 'admin_consultants_lists', 1650, 'Consultants lists'),
(1652, 'admin_consultants_export_excel', 1650, 'Consultants export excel'),
(1675, 'admin_referrals', NULL, 'Referrals'),
(1676, 'admin_referrals_history', 1675, 'Referrals History'),
(1677, 'admin_referrals_users', 1675, 'Referrals users'),
(1678, 'admin_referrals_export', 1675, 'Export Referrals'),
(1725, 'admin_regions', NULL, 'Regions'),
(1726, 'admin_regions_countries', 1725, 'countries lists'),
(1727, 'admin_regions_provinces', 1725, 'provinces lists'),
(1728, 'admin_regions_cities', 1725, 'cities lists'),
(1729, 'admin_regions_districts', 1725, 'districts lists'),
(1730, 'admin_regions_create', 1725, 'create item'),
(1731, 'admin_regions_edit', 1725, 'edit item'),
(1732, 'admin_regions_delete', 1725, 'delete item'),
(1750, 'admin_rewards', NULL, 'Rewards'),
(1751, 'admin_rewards_history', 1750, 'Rewards history'),
(1752, 'admin_rewards_settings', 1750, 'Rewards settings'),
(1753, 'admin_rewards_items', 1750, 'Rewards items'),
(1754, 'admin_rewards_item_delete', 1750, 'Reward item delete'),
(1775, 'admin_registration_packages', NULL, 'Registration packages'),
(1776, 'admin_registration_packages_lists', 1775, 'packages lists'),
(1777, 'admin_registration_packages_new', 1775, 'New package'),
(1778, 'admin_registration_packages_edit', 1775, 'Edit package'),
(1779, 'admin_registration_packages_delete', 1775, 'Delete package'),
(1780, 'admin_registration_packages_reports', 1775, 'Reports'),
(1781, 'admin_registration_packages_settings', 1775, 'Settings'),
(1800, 'admin_store', NULL, 'Store'),
(1801, 'admin_store_products', 1800, 'Products lists'),
(1802, 'admin_store_new_product', 1800, 'Create New Product'),
(1803, 'admin_store_edit_product', 1800, 'Edit Product'),
(1804, 'admin_store_delete_product', 1800, 'Delete Product'),
(1805, 'admin_store_export_products', 1800, 'Export excel Products'),
(1806, 'admin_store_categories_list', 1800, 'Store Categories Lists'),
(1807, 'admin_store_categories_create', 1800, 'Create Store Category'),
(1808, 'admin_store_categories_edit', 1800, 'Edit Store Category'),
(1809, 'admin_store_categories_delete', 1800, 'Delete Store Category'),
(1810, 'admin_store_filters_list', 1800, 'Store Filters Lists'),
(1811, 'admin_store_filters_create', 1800, 'Create Store Filter'),
(1812, 'admin_store_filters_edit', 1800, 'Edit Store Filter'),
(1813, 'admin_store_filters_delete', 1800, 'Delete Store Filter'),
(1814, 'admin_store_specifications', 1800, 'Store Specifications'),
(1815, 'admin_store_specifications_create', 1800, 'Create New Store Specification'),
(1816, 'admin_store_specifications_edit', 1800, 'Edit Store Specification'),
(1817, 'admin_store_specifications_delete', 1800, 'Delete Store Specification'),
(1818, 'admin_store_discounts', 1800, 'Store Discounts Lists'),
(1819, 'admin_store_discounts_create', 1800, 'Create New Store discount'),
(1820, 'admin_store_discounts_edit', 1800, 'Edit Store discount'),
(1821, 'admin_store_discounts_delete', 1800, 'Delete Store discount'),
(1822, 'admin_store_products_orders', 1800, 'Products Orders'),
(1823, 'admin_store_products_orders_refund', 1800, 'Products Orders Refund'),
(1824, 'admin_store_products_orders_invoice', 1800, 'Products Orders View Invoice'),
(1825, 'admin_store_products_orders_export', 1800, 'Products Orders Export Excel'),
(1826, 'admin_store_products_orders_tracking_code', 1800, 'Products Orders Tracking code'),
(1827, 'admin_store_products_reviews', 1800, 'Reviews lists'),
(1828, 'admin_store_products_reviews_status_toggle', 1800, 'Reviews status toggle (publish or hidden)'),
(1829, 'admin_store_products_reviews_detail_show', 1800, 'Review details page'),
(1830, 'admin_store_products_reviews_delete', 1800, 'Review delete'),
(1831, 'admin_store_settings', 1800, 'Store settings'),
(1832, 'admin_store_in_house_products', 1800, 'In-house products'),
(1833, 'admin_store_in_house_orders', 1800, 'In-house Products Orders'),
(1834, 'admin_store_products_sellers', 1800, 'Products Sellers'),
(1835, 'admin_store_in_house_products_delete', 1800, 'In-house Products Delete'),
(1836, 'admin_store_in_house_products_export', 1800, 'In-house Products Export Excel'),
(1837, 'admin_store_in_house_orders', 1800, 'In-house Products Orders'),
(1838, 'admin_store_products_sellers', 1800, 'Products Sellers'),
(1850, 'admin_webinar_assignments', NULL, 'Webinar assignments'),
(1851, 'admin_webinar_assignments_lists', 1850, 'Assignments lists'),
(1852, 'admin_webinar_assignments_students', 1850, 'Assignment students'),
(1853, 'admin_webinar_assignments_conversations', 1850, 'Assignment students conversations'),
(1875, 'admin_users_not_access_content', NULL, 'Users do not have access to the content'),
(1876, 'admin_users_not_access_content_lists', 1875, 'Users lists'),
(1877, 'admin_users_not_access_content_toggle', 1875, 'Toggle active/inactive users to view content'),
(1900, 'admin_bundles', NULL, 'Bundles'),
(1901, 'admin_bundles_list', 1900, 'Bundles Lists'),
(1902, 'admin_bundles_create', 1900, 'Create new Bundle'),
(1903, 'admin_bundles_edit', 1900, 'Edit bundle'),
(1904, 'admin_bundles_delete', 1900, 'Delete bundle'),
(1905, 'admin_bundles_export_excel', 1900, 'Export excel'),
(1925, 'admin_forum', NULL, 'Forums'),
(1926, 'admin_forum_list', 1925, 'Forums Lists'),
(1927, 'admin_forum_create', 1925, 'Forums create'),
(1928, 'admin_forum_edit', 1925, 'Forums edit'),
(1929, 'admin_forum_delete', 1925, 'Forums delete'),
(1930, 'admin_forum_topics_lists', 1925, 'Forums topics lists'),
(1931, 'admin_forum_topics_create', 1925, 'Forums topics create'),
(1932, 'admin_forum_topics_delete', 1925, 'Forums topics delete'),
(1933, 'admin_forum_topics_posts', 1925, 'Forums topic posts'),
(1934, 'admin_forum_topics_create_posts', 1925, 'Forums topic store posts'),
(1950, 'admin_featured_topics', NULL, 'Featured topics'),
(1951, 'admin_featured_topics_list', 1950, 'Featured topics Lists'),
(1952, 'admin_featured_topics_create', 1950, 'Featured topics create'),
(1953, 'admin_featured_topics_edit', 1950, 'Featured topics edit'),
(1954, 'admin_featured_topics_delete', 1950, 'Featured topics delete'),
(1975, 'admin_recommended_topics', NULL, 'Recommended topics'),
(1976, 'admin_recommended_topics_list', 1975, 'Recommended topics Lists'),
(1977, 'admin_recommended_topics_create', 1975, 'Recommended topics create'),
(1978, 'admin_recommended_topics_edit', 1975, 'Recommended topics edit'),
(1979, 'admin_recommended_topics_delete', 1975, 'Recommended topics delete'),
(2000, 'admin_advertising_modal', NULL, 'Advertising modal'),
(2001, 'admin_advertising_modal_config', 2000, 'Set Advertising modal'),
(2015, 'admin_enrollment', NULL, 'Enrollment'),
(2016, 'admin_enrollment_history', 2015, 'Enrollment History'),
(2017, 'admin_enrollment_add_student_to_items', 2015, 'Enrollment Add Student To Items'),
(2018, 'admin_enrollment_block_access', 2015, 'Enrollment Block Access'),
(2019, 'admin_enrollment_enable_access', 2015, 'Enrollment Enable Access'),
(2020, 'admin_enrollment_export', 2015, 'Enrollment Export History'),
(2021, 'admin_enrollment_export', 2015, 'Enrollment Export History'),
(2030, 'admin_delete_account_requests', NULL, 'Delete Account Requests'),
(2031, 'admin_delete_account_requests_lists', 2030, 'Delete Account Requests Lists'),
(2032, 'admin_delete_account_requests_confirm', 2030, 'Delete Account Requests Confirm'),
(2050, 'admin_upcoming_courses', NULL, 'Upcoming Course'),
(2051, 'admin_upcoming_courses_list', 2050, 'Lists'),
(2052, 'admin_upcoming_courses_create', 2050, 'Create'),
(2053, 'admin_upcoming_courses_edit', 2050, 'Edit and Update'),
(2054, 'admin_upcoming_courses_delete', 2050, 'Delete'),
(2055, 'admin_upcoming_courses_followers', 2050, 'Followers'),
(2070, 'admin_installments', NULL, 'Installments'),
(2071, 'admin_installments_list', 2070, 'Lists'),
(2072, 'admin_installments_create', 2070, 'Create'),
(2073, 'admin_installments_edit', 2070, 'Edit and Update'),
(2074, 'admin_installments_delete', 2070, 'Delete'),
(2075, 'admin_installments_settings', 2070, 'Settings'),
(2076, 'admin_installments_purchases', 2070, 'Purchases'),
(2077, 'admin_installments_overdue_lists', 2070, 'Overdue Installments'),
(2078, 'admin_installments_overdue_history', 2070, 'Overdue History'),
(2079, 'admin_installments_verification_requests', 2070, 'Verification Requests'),
(2080, 'admin_installments_verified_users', 2070, 'Verified Users'),
(2081, 'admin_installments_orders', 2070, 'Approve/Reject/Refund Requests'),
(2090, 'admin_registration_bonus', NULL, 'Registration Bonus'),
(2091, 'admin_registration_bonus_history', 2090, 'History'),
(2092, 'admin_registration_bonus_settings', 2090, 'Settings'),
(2093, 'admin_registration_bonus_export_excel', 2090, 'Export Excel'),
(3000, 'admin_floating_bar', NULL, 'Top/Bottom Floating Bar'),
(3001, 'admin_floating_bar_create', 3000, 'Create/Edit'),
(3010, 'admin_cashback', NULL, 'Cashback'),
(3011, 'admin_cashback_rules', 3010, 'Rules'),
(3012, 'admin_cashback_transactions', 3010, 'Transactions'),
(3013, 'admin_cashback_history', 3010, 'History'),
(3020, 'admin_waitlists', NULL, 'Waitlists'),
(3021, 'admin_waitlists_lists', 3020, 'Lists'),
(3022, 'admin_waitlists_users', 3020, 'Joined Users'),
(3023, 'admin_waitlists_exports', 3020, 'Export excel lists'),
(3024, 'admin_waitlists_clear_list', 3020, 'Clear lists'),
(3025, 'admin_waitlists_disable', 3020, 'Disable'),
(3030, 'admin_gift', NULL, 'Gifts'),
(3031, 'admin_gift_history', 3030, 'History'),
(3032, 'admin_gift_send_reminder', 3030, 'Send Reminder'),
(3033, 'admin_gift_cancel', 3030, 'Cancel'),
(3034, 'admin_gift_settings', 3030, 'Settings'),
(3035, 'admin_gift_export', 3030, 'Export Excel'),
(3040, 'admin_forms', NULL, 'Forms'),
(3041, 'admin_forms_lists', 3040, 'Lists'),
(3042, 'admin_forms_create', 3040, 'Create'),
(3043, 'admin_forms_edit', 3040, 'Edit'),
(3044, 'admin_forms_delete', 3040, 'Delete'),
(3045, 'admin_forms_export', 3040, 'Export'),
(3046, 'admin_forms_submissions', 3040, 'Submissions'),
(3050, 'admin_ai_contents', NULL, 'AI Contents'),
(3051, 'admin_ai_contents_lists', 3050, 'Generated Contents Lists'),
(3052, 'admin_ai_contents_templates_lists', 3050, 'Template Lists'),
(3053, 'admin_ai_contents_templates_create', 3050, 'Template Create'),
(3054, 'admin_ai_contents_templates_edit', 3050, 'Template Edit'),
(3055, 'admin_ai_contents_templates_delete', 3050, 'Template Delete'),
(3056, 'admin_ai_contents_settings', 3050, 'Settings');

-- --------------------------------------------------------

--
-- Table structure for table `selected_installments`
--

CREATE TABLE `selected_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(10) UNSIGNED NOT NULL,
  `installment_order_id` int(10) UNSIGNED NOT NULL,
  `start_date` bigint(20) UNSIGNED DEFAULT NULL,
  `end_date` bigint(20) UNSIGNED DEFAULT NULL,
  `upfront` double(15,2) DEFAULT NULL,
  `upfront_type` enum('fixed_amount','percent') DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selected_installment_steps`
--

CREATE TABLE `selected_installment_steps` (
  `id` int(10) UNSIGNED NOT NULL,
  `selected_installment_id` int(10) UNSIGNED NOT NULL,
  `installment_step_id` int(10) UNSIGNED NOT NULL,
  `deadline` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(15,2) DEFAULT NULL,
  `amount_type` enum('fixed_amount','percent') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `date` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `extra_time_to_join` int(10) UNSIGNED DEFAULT NULL COMMENT 'Specifies that the user can see the join button up to a few minutes after the start time of the webinar.',
  `zoom_start_link` text DEFAULT NULL,
  `zoom_id` varchar(255) DEFAULT NULL,
  `session_api` enum('local','big_blue_button','zoom','agora','jitsi','google_meet') NOT NULL DEFAULT 'local',
  `api_secret` varchar(255) DEFAULT NULL,
  `moderator_secret` varchar(255) DEFAULT NULL,
  `agora_settings` text DEFAULT NULL,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT 0,
  `access_after_day` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `session_reminds`
--

CREATE TABLE `session_reminds` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_translations`
--

CREATE TABLE `session_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` enum('general','financial','personalization','notifications','seo','customization','other') NOT NULL DEFAULT 'other',
  `name` varchar(255) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `name`, `updated_at`) VALUES
(1, 'seo', 'seo_metas', 1651070958),
(2, 'general', 'socials', 1704640385),
(4, 'other', 'footer', 1632071275),
(5, 'general', 'general', 1705147150),
(6, 'financial', 'financial', 1678734927),
(8, 'personalization', 'home_hero', 1704637532),
(12, 'customization', 'custom_css_js', 1636119881),
(14, 'personalization', 'page_background', 1705256530),
(15, 'personalization', 'home_hero2', 1704628941),
(20, 'other', 'report_reasons', 1632235945),
(22, 'notifications', 'notifications', 1694977768),
(23, 'financial', 'site_bank_accounts', 1617002426),
(24, 'other', 'contact_us', 1664436566),
(25, 'personalization', 'home_sections', 1653226117),
(26, 'other', 'navbar_links', 1647616036),
(27, 'personalization', 'home_video_or_image_box', 1703030062),
(28, 'other', '404', 1678950792),
(29, 'personalization', 'panel_sidebar', 1642355954),
(30, 'financial', 'referral', 1694988819),
(31, 'general', 'features', 1694988777),
(32, 'personalization', 'find_instructors', 1642530710),
(33, 'personalization', 'reward_program', 1645628594),
(34, 'general', 'rewards_settings', 1694988430),
(37, 'financial', 'registration_packages_general', 1694988440),
(38, 'financial', 'registration_packages_instructors', 1694988447),
(39, 'financial', 'registration_packages_organizations', 1694988452),
(40, 'personalization', 'become_instructor_section', 1645345116),
(41, 'general', 'store_settings', 1694988402),
(42, 'personalization', 'theme_colors', 1705268334),
(43, 'personalization', 'forums_section', 1650546951),
(44, 'personalization', 'cookie_settings', 1653487194),
(45, 'personalization', 'mobile_app', 1653489015),
(46, 'personalization', 'theme_fonts', 1677180546),
(47, 'general', 'reminders', 1650982581),
(48, 'other', 'advertising_modal', 1652000772),
(52, 'personalization', 'others_personalization', 1678148917),
(53, 'general', 'security', 1678150584),
(54, 'general', 'installments_settings', 1694988485),
(55, 'general', 'installments_terms_settings', 1679089417),
(56, 'financial', 'currency_settings', 1694988804),
(57, 'personalization', 'statistics', 1678151460),
(58, 'personalization', 'maintenance_settings', 1678873553),
(59, 'general', 'general_options', 1678540371),
(60, 'financial', 'offline_banks_credits', 1676303092),
(61, 'financial', 'offline_banks', 1694988826),
(62, 'general', 'gifts_general_settings', 1694988506),
(63, 'general', 'registration_bonus_settings', 1694988529),
(64, 'general', 'registration_bonus_terms_settings', 1678898719),
(65, 'general', 'ai_contents_settings', 1694988423);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', '{\"home\":{\"title\":\"Home\",\"description\":\"home page Description\",\"robot\":\"index\"},\"search\":{\"title\":\"Search\",\"description\":\"search page Description\",\"robot\":\"index\"},\"categories\":{\"title\":\"Category\",\"description\":\"categories page Description\",\"robot\":\"index\"},\"login\":{\"title\":\"Login\",\"description\":\"login page description\",\"robot\":\"index\"},\"register\":{\"title\":\"Register\",\"description\":\"register page Description\",\"robot\":\"index\"},\"about\":{\"title\":\"about page title\",\"description\":\"about page Description\"},\"contact\":{\"title\":\"Contact\",\"description\":\"contact page Description\",\"robot\":\"index\"},\"certificate_validation\":{\"title\":\"Certificate validation\",\"description\":\"Certificate validation description\",\"robot\":\"index\"},\"classes\":{\"title\":\"Courses\",\"description\":\"Courses page Description\",\"robot\":\"index\"},\"blog\":{\"title\":\"Blog\",\"description\":\"Blog page description\",\"robot\":\"index\"},\"instructors\":{\"title\":\"Instructors\",\"description\":\"instructors page Description\",\"robot\":\"index\"},\"organizations\":{\"title\":\"Organizations\",\"description\":\"Organizations page description\",\"robot\":\"index\"},\"instructor_finder_wizard\":{\"title\":\"Instructor finder wizard\",\"description\":\"Instructor finder wizard description\",\"robot\":\"noindex\"},\"instructor_finder\":{\"title\":\"Instructor finder\",\"description\":\"Instructor finder description\",\"robot\":\"index\"},\"reward_courses\":{\"title\":\"Reward courses\",\"description\":\"Reward courses description\",\"robot\":\"index\"},\"products_lists\":{\"title\":\"Store Products\",\"description\":\"Store Products Description\",\"robot\":\"noindex\"},\"reward_products\":{\"title\":\"Reward Products\",\"description\":\"Reward Products Description\",\"robot\":\"noindex\"},\"forum\":{\"title\":\"Forums\",\"description\":\"Forums Description\",\"robot\":\"noindex\"},\"upcoming_courses_lists\":{\"title\":\"Upcoming Course\",\"description\":\"Upcoming courses description\",\"robot\":\"noindex\"}}'),
(2, 2, 'en', '{\"Instagram\":{\"title\":\"Instagram\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/instagram.svg\",\"link\":\"https:\\/\\/www.instagram.com\\/\",\"order\":\"1\"},\"Whatsapp\":{\"title\":\"Whatsapp\",\"image\":\"\\/store\\/1\\/images-removebg-preview.png\",\"link\":\"https:\\/\\/wa.me\\/50513948\",\"order\":\"2\"},\"Facebook\":{\"title\":\"Facebook\",\"image\":\"\\/store\\/1\\/963-9637917_thumb-image-white-pinterest-icon-png.png\",\"link\":\"https:\\/\\/www.facebook.com\\/caspeducation?mibextid=kFxxJD\",\"order\":\"4\"}}'),
(4, 5, 'en', '{\"site_name\":null,\"site_email\":null,\"site_phone\":null,\"site_language\":\"AR\",\"register_method\":\"email\",\"default_time_zone\":\"America\\/Eirunepe\",\"date_format\":\"textual\",\"time_format\":\"24_hours\",\"fav_icon\":null,\"logo\":\"\\/store\\/1\\/logo.png\",\"footer_logo\":\"\\/store\\/1\\/footer logo.png\",\"rtl_layout\":\"1\",\"preloading\":\"1\",\"hero_section1\":\"1\",\"hero_section2\":\"0\",\"content_translate\":false,\"app_debugbar\":\"0\"}'),
(5, 6, 'en', '{\"commission\":\"20\",\"tax\":\"10\",\"minimum_payout\":\"50\",\"currency\":\"USD\",\"currency_position\":\"left\",\"price_display\":\"only_price\"}'),
(6, 8, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(7, 12, 'en', '{\"css\":null,\"js\":null}'),
(8, 14, 'en', '{\"admin_login\":\"\\/store\\/1\\/head.jpg\",\"admin_dashboard\":\"\\/store\\/1\\/head.jpg\",\"login\":\"\\/store\\/1\\/loginCaspeEdu.jpg\",\"register\":\"\\/store\\/1\\/register.png\",\"remember_pass\":\"\\/store\\/1\\/default_images\\/password_recovery.jpg\",\"verification\":\"\\/store\\/1\\/default_images\\/verification.jpg\",\"search\":\"\\/store\\/1\\/default_images\\/search_cover.png\",\"categories\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"become_instructor\":\"\\/store\\/1\\/default_images\\/become_instructor.jpg\",\"certificate_validation\":\"\\/store\\/1\\/default_images\\/certificate_validation.jpg\",\"blog\":\"\\/store\\/1\\/default_images\\/blogs_cover.png\",\"instructors\":\"\\/store\\/1\\/default_images\\/instructors_cover.png\",\"organizations\":\"\\/store\\/1\\/default_images\\/organizations_cover.png\",\"dashboard\":\"\\/store\\/1\\/head.jpg\",\"user_cover\":\"\\/store\\/1\\/head.jpg\",\"instructor_finder_wizard\":\"\\/store\\/1\\/default_images\\/instructor_finder_wizard.jpg\",\"products_lists\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"upcoming_courses_lists\":\"\\/store\\/1\\/default_images\\/category_cover.png\"}'),
(9, 15, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(10, 20, 'en', '[\"Inappropriate Course Content\",\"Inappropriate Behavior\",\"Policy Violation\",\"Spammy Content\",\"Other\"]'),
(11, 22, 'en', '{\"new_comment_admin\":\"7\",\"support_message_admin\":\"10\",\"support_message_replied_admin\":\"11\",\"promotion_plan_admin\":\"29\",\"new_contact_message\":\"26\",\"new_badge\":\"2\",\"change_user_group\":\"3\",\"course_created\":\"4\",\"course_approve\":\"5\",\"course_reject\":\"6\",\"new_comment\":\"7\",\"support_message\":\"8\",\"support_message_replied\":\"9\",\"new_rating\":\"17\",\"webinar_reminder\":\"27\",\"new_financial_document\":\"12\",\"payout_request\":\"13\",\"payout_proceed\":\"14\",\"offline_payment_request\":\"18\",\"offline_payment_approved\":\"19\",\"offline_payment_rejected\":\"20\",\"new_sales\":\"15\",\"new_purchase\":\"16\",\"new_subscribe_plan\":\"21\",\"promotion_plan\":\"28\",\"new_appointment\":\"22\",\"new_appointment_link\":\"23\",\"appointment_reminder\":\"24\",\"meeting_finished\":\"25\",\"new_certificate\":\"30\",\"waiting_quiz\":\"31\",\"waiting_quiz_result\":\"32\",\"payout_request_admin\":\"13\",\"product_new_sale\":\"33\",\"product_new_purchase\":\"34\",\"product_new_comment\":\"35\",\"product_tracking_code\":\"36\",\"product_new_rating\":\"37\",\"product_receive_shipment\":\"38\",\"product_out_of_stock\":\"39\",\"student_send_message\":\"40\",\"instructor_send_message\":\"41\",\"instructor_set_grade\":\"42\",\"send_post_in_topic\":\"44\",\"publish_instructor_blog_post\":\"45\",\"new_comment_for_instructor_blog_post\":\"46\",\"meeting_reserve_reminder\":\"47\",\"subscribe_reminder\":\"48\",\"reminder_gift_to_receipt\":\"52\",\"gift_sender_confirmation\":\"53\",\"gift_sender_notification\":\"54\",\"admin_gift_submission\":\"55\",\"admin_gift_sending_confirmation\":\"56\",\"reminder_installments_before_overdue\":\"57\",\"installment_due_reminder\":\"58\",\"reminder_installments_after_overdue\":\"59\",\"approve_installment_verification_request\":\"60\",\"reject_installment_verification_request\":\"61\",\"paid_installment_step\":\"62\",\"paid_installment_step_for_admin\":\"63\",\"paid_installment_upfront\":\"64\",\"installment_verification_request_sent\":\"65\",\"admin_installment_verification_request_sent\":\"66\",\"instalment_request_submitted\":\"67\",\"instalment_request_submitted_for_admin\":\"68\",\"upcoming_course_submission\":\"69\",\"upcoming_course_submission_for_admin\":\"70\",\"upcoming_course_approved\":\"71\",\"upcoming_course_rejected\":\"72\",\"upcoming_course_published\":\"73\",\"upcoming_course_followed\":\"74\",\"upcoming_course_published_for_followers\":\"75\",\"user_get_cashback\":\"76\",\"user_get_cashback_notification_for_admin\":\"77\",\"bundle_submission\":\"78\",\"bundle_submission_for_admin\":\"79\",\"bundle_approved\":\"80\",\"bundle_rejected\":\"81\",\"new_review_for_bundle\":\"82\",\"registration_bonus_achieved\":\"83\",\"registration_bonus_unlocked\":\"84\",\"registration_bonus_unlocked_for_admin\":\"85\",\"registration_package_activated\":\"86\",\"registration_package_activated_for_admin\":\"87\",\"registration_package_expired\":\"87\",\"contact_message_submission\":\"88\",\"contact_message_submission_for_admin\":\"89\",\"waitlist_submission\":\"90\",\"waitlist_submission_for_admin\":\"91\",\"new_referral_user\":\"92\",\"user_role_change\":\"97\",\"add_to_user_group\":\"98\",\"become_instructor_request_approved\":\"99\",\"become_instructor_request_rejected\":\"100\",\"new_question_in_forum\":\"101\",\"new_answer_in_forum\":\"102\",\"new_appointment_session\":\"103\",\"new_quiz\":\"93\",\"user_get_new_point\":\"94\",\"new_course_notice\":\"96\",\"new_registration\":\"104\",\"new_become_instructor_request\":\"105\",\"new_course_enrollment\":\"106\",\"new_forum_topic\":\"107\",\"new_report_item_for_admin\":\"108\",\"new_item_created\":\"109\",\"new_store_order\":\"110\",\"subscription_plan_activated\":\"111\",\"content_review_request\":\"112\",\"new_user_blog_post\":\"113\",\"new_user_item_rating\":\"114\",\"new_organization_user\":\"115\",\"user_wallet_charge\":\"116\",\"new_user_payout_request\":\"117\",\"new_offline_payment_request\":\"118\",\"user_access_to_content\":\"119\",\"submit_form_by_users\":\"121\"}'),
(12, 23, 'en', '{\"540\":{\"title\":\"Qatar National Bank\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/Qatar National Bank.png\",\"card_id\":\"2578-4910-3682-6288\",\"account_id\":\"38152294372\",\"iban\":\"QA66QUWW934528129454345775226\"},\"334\":{\"title\":\"State Bank of India\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/State Bank of India.png\",\"card_id\":\"6282-4518-1237-7641\",\"account_id\":\"56238341127\",\"iban\":\"IN37ABNA2422193788\"},\"jhgDW\":{\"title\":\"JPMorgan\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/jpmorgan.png\",\"card_id\":\"5012-4518-1772-8911\",\"account_id\":\"46237751125\",\"iban\":\"NL37ABNA2423554788\"}}'),
(13, 24, 'en', '{\"background\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"latitude\":\"43.45905\",\"longitude\":\"11.87300\",\"map_zoom\":\"16\",\"phones\":\"415-716-1166 , 415-716-1167\",\"emails\":\"mail@lms.rocket-soft.org , info@lms.rocket-soft.org\",\"address\":\"4193 Roosevelt Street\\r\\nSan Francisco, CA 94103\"}'),
(14, 25, 'en', '{\"latest_classes\":\"1\",\"best_sellers\":\"1\",\"free_classes\":\"1\",\"discount_classes\":\"1\",\"best_rates\":\"1\",\"trend_categories\":\"1\",\"testimonials\":\"1\",\"subscribes\":\"1\",\"blog\":\"1\",\"organizations\":\"1\",\"instructors\":\"1\",\"video_or_image_section\":\"1\",\"find_instructors\":\"1\",\"reward_program\":\"1\"}'),
(15, 26, 'en', '{\"02nh9a\":{\"title\":\"Home\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Courses\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructors\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"Uo5b2v\":{\"title\":\"Store\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"Forums\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(16, 27, 'en', '{\"link\":\"\\/classes\",\"title\":\"Start learning anywhere, anytime...\",\"description\":\"Use Rocket LMS to access high-quality education materials without any limitations in the easiest way.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(17, 28, 'en', '{\"error_image\":\"\\/store\\/1\\/default_images\\/404.svg\",\"error_title\":\"Page not found!\",\"error_description\":\"Sorry, this page is not available...\"}'),
(18, 29, 'en', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user.png\"}'),
(19, 30, 'en', '{\"status\":\"0\",\"users_affiliate_status\":\"0\",\"affiliate_user_commission\":\"5\",\"store_affiliate_user_commission\":\"5\",\"affiliate_user_amount\":\"20\",\"referred_user_amount\":\"10\",\"referral_description\":\"You can share your affiliate URL you will get the above rewards when a user uses the platform.\"}'),
(20, 4, 'en', '{\"first_column\":{\"title\":\"About US\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS is a fully-featured learning management system that helps you to run your education business in several hours. This platform helps instructors to create professional education materials and helps students to learn from the best instructors.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Additional Links\",\"value\":\"<p><a href=\\\"\\/login\\\"><font color=\\\"#ffffff\\\">- Login<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/register\\\"><font color=\\\"#ffffff\\\">- Register<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/blog\\\"><font color=\\\"#ffffff\\\">- Blog<\\/font><\\/a><\\/p><p><a href=\\\"\\/contact\\\"><font color=\\\"#ffffff\\\">- Contact us<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/certificate_validation\\\"><font color=\\\"#ffffff\\\">- Certificate validation<\\/font><\\/a><br><\\/font><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/become-instructor\\\"><font color=\\\"#ffffff\\\">- Become instructor<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/pages\\/terms\\\"><font color=\\\"#ffffff\\\">- Terms &amp; rules<\\/font><\\/a><\\/p><p><a href=\\\"\\/pages\\/about\\\"><font color=\\\"#ffffff\\\">- About us<\\/font><\\/a><br><\\/p>\"},\"third_column\":{\"title\":\"Similar Businesses\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Purchase Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(31, 4, 'ar', '{\"first_column\":{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"value\":\"<p>CASP EDUCATION \\u0647\\u064a \\u0633\\u0628\\u064a\\u0644\\u0643 \\u0644\\u062a\\u0639\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629<\\/p>\"},\"second_column\":{\"title\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become-instructor\\\"><span style=\\\"color: #ffffff;\\\">- \\u0623\\u0635\\u0628\\u062d \\u0645\\u062f\\u0631\\u0628\\u0627<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0642\\u0648\\u0627\\u0639\\u062f<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0645\\u0645\\u0627\\u062b\\u0644\\u0629\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u064a\\u0648\\u062f\\u0645\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u06a9\\u06cc\\u0644 \\u0634\\u06cc\\u0631<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0643\\u0631\\u0633 \\u0627\\u064a\\u0631\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0644\\u06cc\\u0646\\u062f\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u0643\\u064a\\u0644 \\u0633\\u0641\\u062a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0648\\u062f\\u0627\\u0633\\u064a\\u062a\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">\\u0627\\u062f\\u0643\\u0633<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0645\\u0633\\u062a\\u0631 \\u0643\\u0644\\u0633<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"\\u0642\\u0645 \\u0628\\u0634\\u0631\\u0627\\u0621 Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(32, 31, 'en', '{\"agora_resolution\":null,\"agora_max_bitrate\":\"2260\",\"agora_min_bitrate\":\"1130\",\"agora_frame_rate\":\"15\",\"agora_live_streaming\":\"0\",\"agora_chat\":\"0\",\"agora_in_free_courses\":\"0\",\"agora_for_meeting\":\"0\",\"meeting_live_stream_type\":\"single\",\"course_live_stream_type\":\"single\",\"new_interactive_file\":\"0\",\"timezone_in_register\":\"1\",\"timezone_in_create_webinar\":\"1\",\"sequence_content_status\":\"0\",\"webinar_assignment_status\":\"0\",\"webinar_private_content_status\":\"0\",\"disable_view_content_after_user_register\":\"0\",\"course_forum_status\":\"0\",\"forums_status\":\"0\",\"direct_classes_payment_button_status\":\"1\",\"direct_bundles_payment_button_status\":\"1\",\"direct_products_payment_button_status\":\"1\",\"cookie_settings_status\":\"0\",\"mobile_app_status\":\"0\",\"maintenance_status\":\"0\",\"maintenance_access_key\":\"key\",\"extra_time_to_join_status\":\"1\",\"extra_time_to_join_default_value\":\"20\",\"show_other_register_method\":\"0\",\"show_certificate_additional_in_register\":\"0\",\"show_google_login_button\":\"1\",\"show_facebook_login_button\":\"1\",\"show_live_chat_widget\":\"0\",\"cashback_active\":\"0\",\"display_cashback_notice_in_the_product_page\":\"0\",\"display_minimum_amount_cashback_notices\":\"0\",\"available_session_apis\":[\"local\",\"zoom\"],\"available_sources\":[\"upload\",\"youtube\",\"vimeo\",\"external_link\",\"google_drive\",\"iframe\",\"s3\",\"secure_host\"],\"bunny_configs\":[],\"select_the_role_during_registration\":[\"teacher\",\"organization\"],\"waitlist_status\":\"0\",\"upcoming_courses_status\":\"0\",\"user_register_form\":null,\"instructor_register_form\":null,\"organization_register_form\":null,\"become_instructor_form\":null,\"become_organization_form\":null}'),
(33, 32, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Find the best instructor\",\"description\":\"Looking for an instructor? Find the best instructors according to different parameters like gender, skill level, price, meeting type, rating, etc.\\r\\nFind instructors on the map.\",\"button1\":{\"title\":\"Tutor Finder\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutors on Map\",\"link\":\"\\/instructor-finder\"}}'),
(34, 33, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Win Club Points\",\"description\":\"Use Rocket LMS and win club points according to different activities.\\r\\nYou will be able to use your club points to get free prizes and courses. Start using the system now and collect points!\",\"button1\":{\"title\":\"Rewards\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"Points Club\",\"link\":\"\\/panel\\/rewards\"}}'),
(35, 34, 'en', '{\"status\":\"0\",\"exchangeable\":\"0\",\"exchangeable_unit\":null,\"want_more_points_link\":\"\\/pages\\/reward_points_system\"}'),
(38, 37, 'en', '{\"status\":\"0\",\"show_packages_during_registration\":\"0\",\"force_user_to_select_a_package\":\"0\",\"enable_home_section\":\"1\"}'),
(39, 38, 'en', '{\"status\":\"0\",\"courses_capacity\":\"20\",\"courses_count\":\"5\",\"meeting_count\":\"20\",\"product_count\":\"5\"}'),
(40, 39, 'en', '{\"status\":\"0\",\"instructors_count\":\"5\",\"students_count\":\"30\",\"courses_capacity\":\"30\",\"courses_count\":\"10\",\"meeting_count\":\"40\",\"product_count\":\"10\"}'),
(41, 40, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Become an instructor\",\"description\":\"Are you interested to be a part of our community?\\r\\nYou can be a part of our community by signing up as an instructor or organization.\",\"button1\":{\"title\":\"Become an Instructor\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Registration Packages\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(42, 8, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"\\u0650CAPSEDUCATION \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/store\\/1\\/head.jpg\",\"is_video_background\":\"0\"}'),
(43, 8, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(44, 15, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"CASPEDUCATION \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/store\\/1\\/head.jpg\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(45, 15, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(46, 27, 'ar', '{\"link\":\"\\/classes\",\"title\":\"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0641\\u064a \\u0623\\u064a \\u0645\\u0643\\u0627\\u0646 \\u0648\\u0641\\u064a \\u0623\\u064a \\u0648\\u0642\\u062a ...\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 CASPEDUCATION \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u062f\\u0648\\u0646 \\u0623\\u064a \\u0642\\u064a\\u0648\\u062f \\u0648\\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(47, 27, 'es', '{\"link\":\"\\/classes\",\"title\":\"Empiece a aprender en cualquier lugar, en cualquier momento ...\",\"description\":\"Utilice Rocket LMS para acceder a materiales educativos de alta calidad sin limitaciones de la forma m\\u00e1s sencilla.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(48, 29, 'ar', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-ar.png\"}'),
(49, 29, 'es', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-sp.png\"}'),
(50, 4, 'es', '{\"first_column\":{\"title\":\"Sobre Nosotras\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS es un sistema de gesti\\u00f3n de aprendizaje con todas las funciones que le ayuda a gestionar su negocio educativo en varias horas. Esta plataforma ayuda a los instructores a crear materiales educativos profesionales y ayuda a los estudiantes a aprender de los mejores instructores.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Enlaces Adicionales\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- Acceso<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- Registrarse<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- Blog<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- Contacta con nosotras<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- Validaci\\u00f3n de certificado<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become-instructor\\\"><span style=\\\"color: #ffffff;\\\">- Convi\\u00e9rtete en instructor<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- T\\u00e9rminos y reglas<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- Sobre nosotras<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"Negocios Similares\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Compra Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(51, 26, 'es', '{\"02nh9a\":{\"title\":\"hogar\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Cursos\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructoras\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"VBxDrB\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"Uo5b2v\":{\"title\":\"Tienda\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"Foros\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(52, 26, 'ar', '{\"02nh9a\":{\"title\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"\\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"Uo5b2v\":{\"title\":\"\\u0645\\u062a\\u062c\\u0631\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062f\\u064a\\u0627\\u062a\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(53, 32, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"\\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0645\\u062f\\u0631\\u0628\",\"description\":\"\\u062a\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u061f \\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0645\\u062b\\u0644 \\u0627\\u0644\\u062c\\u0646\\u0633 \\u0648\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0648\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639 \\u0648\\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0648\\u0645\\u0627 \\u0625\\u0644\\u0649 \\u0630\\u0644\\u0643.\\r\\n\\u0627\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629.\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0628\\u0627\\u062d\\u062b \\u0639\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"\\u0645\\u062f\\u0631\\u0633\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629\",\"link\":\"\\/instructor-finder\"}}'),
(54, 32, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Encuentra la mejor instructora\",\"description\":\"\\u00bfBuscas un instructor? Encuentre los mejores instructores seg\\u00fan diferentes par\\u00e1metros como g\\u00e9nero, nivel de habilidad, precio, tipo de reuni\\u00f3n, calificaci\\u00f3n, etc.\\r\\nEncuentra instructores en el mapa.\",\"button1\":{\"title\":\"Buscadora de tutores\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutores en el mapa\",\"link\":\"\\/instructor-finder\"}}'),
(55, 33, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0648\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629.\\r\\n\\u0633\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062c\\u0648\\u0627\\u0626\\u0632 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0645\\u062c\\u0627\\u0646\\u064a\\u0629. \\u0627\\u0628\\u062f\\u0623 \\u0641\\u064a \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0622\\u0646 \\u0648\\u0627\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637!\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\",\"link\":\"\\/panel\\/rewards\"}}'),
(56, 33, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Gana puntos del club\",\"description\":\"Utilice Rocket LMS y gane puntos del club seg\\u00fan diferentes actividades.\\r\\nPodr\\u00e1s utilizar tus puntos del club para conseguir premios y cursos gratuitos. \\u00a1Comience a usar el sistema ahora y acumule puntos!\",\"button1\":{\"title\":\"Recompensas\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"club de puntos\",\"link\":\"\\/panel\\/rewards\"}}'),
(57, 40, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064b\\u0627\",\"description\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u0647\\u062a\\u0645 \\u0628\\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627\\u061f\\r\\n\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0643\\u0645\\u062f\\u0631\\u0628 \\u0623\\u0648 \\u0645\\u0646\\u0638\\u0645\\u0629.\",\"button1\":{\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0633\\u064b\\u0627\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"\\u062d\\u0632\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(58, 40, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Convi\\u00e9rtete en instructora\",\"description\":\"\\u00bfEst\\u00e1s interesado en ser parte de nuestra comunidad?\\r\\nPuedes ser parte de nuestra comunidad registr\\u00e1ndote como instructor u organizaci\\u00f3n.\",\"button1\":{\"title\":\"Convi\\u00e9rtete en instructora\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Paquetes de registro\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(59, 42, 'en', '{\"primary\":\"#fc7a2a\",\"primary-border\":\"#ffffff\",\"primary-hover\":\"#005494\",\"primary-border-hover\":\"#ffffff\",\"primary-btn-shadow\":null,\"primary-btn-shadow-hover\":null,\"primary-btn-color\":null,\"primary-btn-color-hover\":null,\"secondary\":\"#005494\",\"secondary-border\":null,\"secondary-hover\":null,\"secondary-border-hover\":null,\"secondary-btn-shadow\":null,\"secondary-btn-shadow-hover\":null,\"secondary-btn-color\":null,\"secondary-btn-color-hover\":null,\"admin_primary\":\"#005494\"}'),
(60, 44, 'en', '{\"cookie_settings_modal_message\":\"<p>When you visit any of our websites, it may store or retrieve information on your browser, mostly in the form of cookies. This information might be about you, your preferences or your device and is mostly used to make the site work as you expect it to. The information does not usually directly identify you, but it can give you a more personalized web experience. Because we respect your right to privacy, you can choose not to allow some types of cookies. Click on the different category headings to find out more and manage your preferences. Please note, that blocking some types of cookies may impact your experience of the site and the services we are able to offer.<\\/p>\",\"cookie_settings_modal_items\":{\"dDRjfkGvQfFzQJpa\":{\"title\":\"Strictly Necessary\",\"description\":\"These cookies are necessary for our website to function properly and cannot be switched off in our systems. They are usually only set in response to actions made by you that amount to a request for services, such as setting your privacy preferences, logging in or filling in forms, or where they\\u2019re essential to providing you with a service you have requested. You cannot opt out of these cookies. You can set your browser to block or alert you about these cookies, but if you do, some parts of the site will not then work. These cookies do not store any personally identifiable information.\",\"required\":\"1\"},\"mOzJowgvTnWFlRzz\":{\"title\":\"Performance Cookies\",\"description\":\"These cookies allow us to count visits and traffic sources so we can measure and improve the performance of our site. They help us to know which pages are the most and least popular and see how visitors move around the site, which helps us optimize your experience. All information these cookies collect is aggregated and therefore anonymous. If you do not allow these cookies we will not be able to use your data in this way.\",\"required\":\"0\"},\"XBMtdYaeSrqMicTH\":{\"title\":\"Functional Cookies\",\"description\":\"These cookies enable the website to provide enhanced functionality and personalization. They may be set by us or by third-party providers whose services we have added to our pages. If you do not allow these cookies then some or all of these services may not function properly.\",\"required\":\"0\"},\"XlLqzsvNpRqdcNWP\":{\"title\":\"Targeting Cookies\",\"description\":\"These cookies may be set through our site by our advertising partners. They may be used by those companies to build a profile of your interests and show you relevant adverts on other sites. They do not store directly personal information but are based on uniquely identifying your browser and internet device. If you do not allow these cookies, you will experience less targeted advertising.\",\"required\":\"0\"}}}'),
(61, 41, 'en', '{\"status\":\"0\",\"virtual_product_commission\":\"20\",\"physical_product_commission\":\"10\",\"store_tax\":\"10\",\"possibility_create_virtual_product\":\"1\",\"possibility_create_physical_product\":\"1\",\"shipping_tracking_url\":\"https:\\/\\/www.tracking.my\\/\",\"activate_comments\":\"1\",\"show_address_selection_in_cart\":\"0\",\"take_address_selection_optional\":\"0\"}'),
(62, 46, 'en', '{\"main\":{\"regular\":\"\\/store\\/1\\/fonts\\/montserrat-regular.woff2\",\"bold\":\"\\/store\\/1\\/fonts\\/montserrat-bold.woff2\",\"medium\":\"\\/store\\/1\\/fonts\\/montserrat-medium.woff2\"},\"rtl\":{\"regular\":\"\\/store\\/1\\/fonts\\/Vazir-Regular.woff2\",\"bold\":\"\\/store\\/1\\/fonts\\/Vazir-Bold.woff2\",\"medium\":\"\\/store\\/1\\/fonts\\/Vazir-Medium.woff2\"}}'),
(63, 43, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/forums\\/forum_section.jpg\",\"title\":\"Have a Question? Ask it in forum and get answer\",\"description\":\"Our forums helps you to create your questions on different subjects and communicate with other forum users. Our users will help you to get the best answer!\",\"button1\":{\"title\":\"Create a new topic\",\"link\":\"\\/forums\\/create-topic\"},\"button2\":{\"title\":\"Browse forums\",\"link\":\"\\/forums\"}}'),
(64, 45, 'en', '{\"mobile_app_hero_image\":\"\\/store\\/1\\/default_images\\/app_only.png\",\"mobile_app_description\":\"<div>Is an amazing, modern, and clean landing page for showcasing your app or anything else.<\\/div><div><br><\\/div><div>A mobile application or app is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch. Mobile applications often stand in contrast to desktop applications which are designed to run on desktop computers, and web applications which run in mobile web browsers rather than directly on the mobile device.<\\/div>\",\"mobile_app_buttons\":{\"htQgcSjzjLJlGRyY\":{\"title\":\"Download from Play Store\",\"link\":\"https:\\/\\/play.google.com\\/store\\/games\",\"icon\":\"\\/store\\/1\\/default_images\\/google-play.png\",\"color\":\"primary\"}}}'),
(65, 48, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/ads_modal.png\",\"title\":\"Sales Campaign\",\"description\":\"We have a sales campaign on our promoted courses and products. You can purchase 150 products at a discounted price up to 50% discount.\",\"button1\":{\"title\":\"View Courses\",\"link\":\"\\/classes\"},\"button2\":{\"title\":\"View Products\",\"link\":\"\\/products\"}}'),
(66, 52, 'en', '{\"show_guarantee_text\":\"1\",\"guarantee_text\":\"5 Days money back guarantee\",\"user_avatar_style\":\"ui_avatar\",\"default_user_avatar\":\"\\/store\\/1\\/default_images\\/default_profile.jpg\",\"platform_phone_and_email_position\":\"footer\"}'),
(67, 47, 'en', '{\"webinar_reminder_schedule\":\"1\",\"meeting_reminder_schedule\":\"1\",\"subscribe_reminder_schedule\":\"48\"}'),
(68, 61, 'en', '{\"offline_banks_status\":\"0\"}'),
(69, 62, 'en', '{\"status\":\"0\",\"allow_sending_gift_for_courses\":\"1\",\"allow_sending_gift_for_bundles\":\"1\",\"allow_sending_gift_for_products\":\"1\"}'),
(70, 63, 'en', '{\"status\":\"0\",\"unlock_registration_bonus_instantly\":\"0\",\"unlock_registration_bonus_with_referral\":\"0\",\"number_of_referred_users\":null,\"enable_referred_users_purchase\":\"0\",\"purchase_amount_for_unlocking_bonus\":null,\"registration_bonus_amount\":\"50\",\"bonus_wallet\":\"balance_wallet\"}'),
(71, 57, 'en', '{\"enable_statistics\":\"1\",\"display_default_statistics\":\"1\"}'),
(72, 56, 'en', '{\"currency\":\"USD\",\"currency_position\":\"left\",\"currency_separator\":\"dot\",\"currency_decimal\":\"2\",\"multi_currency\":\"0\"}'),
(73, 53, 'en', '{\"login_device_limit\":\"0\",\"number_of_allowed_devices\":\"10\",\"admin_panel_url\":\"admin\"}'),
(74, 54, 'en', '{\"status\":\"0\",\"disable_course_access_when_user_have_an_overdue_installment\":\"0\",\"disable_all_courses_access_when_user_have_an_overdue_installment\":\"0\",\"disable_instalments_when_the_user_have_an_overdue_installment\":\"1\",\"allow_cancel_verification\":\"1\",\"display_installment_button\":\"1\",\"overdue_interval_days\":\"3\",\"installment_plans_position\":\"top_of_page\",\"reminder_before_overdue_days\":\"3\",\"reminder_after_overdue_days\":\"2\"}'),
(75, 58, 'en', '{\"title\":\"We are under maintenance!\",\"image\":\"\\/store\\/1\\/default_images\\/maintenance.png\",\"description\":\"We are working on the platform; It won\'t take a long time. We will try to back as soon as possible.\",\"maintenance_button\":{\"title\":\"Sample Button\",\"link\":\"\\/\"},\"end_date\":1740094200}'),
(76, 64, 'en', '{\"term_image\":\"\\/store\\/1\\/default_images\\/registration bonus\\/banner.png\",\"items\":{\"DnrPr\":{\"icon\":\"\\/store\\/1\\/default_images\\/registration bonus\\/step1.svg\",\"title\":\"Sign up\",\"description\":\"Create an account on platform and get $50\"},\"eNMTB\":{\"icon\":\"\\/store\\/1\\/default_images\\/registration bonus\\/step2.svg\",\"title\":\"Refer your friends\",\"description\":\"Refer at least 5 users to the system using your affiliate URL\"},\"fdIUc\":{\"icon\":\"\\/store\\/1\\/default_images\\/registration bonus\\/step3.svg\",\"title\":\"Reach purchase target\",\"description\":\"Each referred user should purchase $100 on the platform\"},\"oeMZr\":{\"icon\":\"\\/store\\/1\\/default_images\\/registration bonus\\/step4.svg\",\"title\":\"Unlock your bonus\",\"description\":\"Your bonus will be unlocked! Enjoy spending...\"}}}'),
(77, 55, 'en', '{\"terms_description\":\"<p>Welcome to our website! To ensure the best possible experience for all users, please review and agree to the following terms and rules before using our installment feature:<\\/p><p>Installment Payment Plan: Our website offers an installment payment plan for select courses. By selecting the installment payment option, you agree to pay the full course fee in multiple installments. Each installment payment will be automatically deducted from the payment method you provided on the scheduled dates until the full payment is completed.<\\/p><p>Payment Plan Fees: Our installment payment plan may include a small processing fee for each installment payment. The total processing fee will be disclosed to you before you select the installment payment option.<\\/p><p>Late Payment: If a payment is not received on the scheduled date, a late payment fee may be added to the next scheduled payment.<\\/p><p>Refunds: Once an installment payment is made, it is non-refundable. However, if you wish to cancel your enrollment in the course, you may be eligible for a partial refund according to our Refund Policy.<\\/p><p>Default: If you default on a payment or fail to complete the full payment plan, your access to the course will be revoked, and you may be subject to additional fees and collection efforts.<\\/p><p>Privacy: Your personal and payment information will be kept secure and confidential. We use industry-standard security measures to protect your information.<\\/p><p>Changes to Terms and Rules: We reserve the right to modify these terms and rules at any time. Any changes will be posted on our website and will become effective immediately upon posting.<\\/p><p>By using our installment payment plan, you agree to these terms and rules. If you have any questions or concerns, please contact our support team.<\\/p>\"}'),
(78, 65, 'en', '{\"status\":\"0\",\"active_for_admin_panel\":\"0\",\"active_for_organization_panel\":\"0\",\"active_for_instructor_panel\":\"0\",\"secret_key\":null,\"activate_text_service_type\":\"1\",\"text_service_type\":\"gpt-3.5-turbo\",\"number_of_text_generated_per_request\":\"1\",\"max_tokens\":\"500\",\"activate_image_service_type\":\"1\",\"number_of_images_generated_per_request\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `percent` int(10) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `from_date` int(10) UNSIGNED NOT NULL,
  `to_date` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `usable_count` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `infinite_use` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `usable_count`, `days`, `price`, `icon`, `is_popular`, `infinite_use`, `created_at`) VALUES
(3, 100, 15, 20.00, '/store/1/default_images/subscribe_packages/bronze.png', 0, 0, 1635441672),
(4, 1000, 30, 100.00, '/store/1/default_images/subscribe_packages/gold.png', 1, 0, 1635442074),
(5, 400, 30, 50.00, '/store/1/default_images/subscribe_packages/silver.png', 0, 0, 1635442132);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_reminds`
--

CREATE TABLE `subscribe_reminds` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_translations`
--

CREATE TABLE `subscribe_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_translations`
--

INSERT INTO `subscribe_translations` (`id`, `subscribe_id`, `locale`, `title`, `description`) VALUES
(1, 3, 'en', 'Bronze', 'Suggested for personal usage'),
(2, 4, 'en', 'Gold', 'Suggested for big businesses'),
(3, 5, 'en', 'Silver', 'Suggested for small businesses'),
(4, 3, 'ar', 'برونزية', 'اقترح للاستخدام الشخصي'),
(5, 3, 'es', 'Bronce', 'Sugerido para uso personal'),
(6, 4, 'es', 'Oro', 'Sugerido para grandes empresas'),
(7, 4, 'ar', 'ذهب', 'مقترح للشركات الكبيرة'),
(8, 5, 'ar', 'فضة', 'اقترح للشركات الصغيرة'),
(9, 5, 'es', 'Plata', 'Sugerido para pequeñas empresas');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_uses`
--

CREATE TABLE `subscribe_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `installment_order_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('open','close','replied','supporter_replied') NOT NULL DEFAULT 'open',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_conversations`
--

CREATE TABLE `support_conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `support_id` int(10) UNSIGNED NOT NULL,
  `supporter_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

CREATE TABLE `support_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `created_at`) VALUES
(2, 1635445554),
(3, 1635445486),
(4, 1635445505);

-- --------------------------------------------------------

--
-- Table structure for table `support_department_translations`
--

CREATE TABLE `support_department_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_department_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_department_translations`
--

INSERT INTO `support_department_translations` (`id`, `support_department_id`, `locale`, `title`) VALUES
(1, 2, 'en', 'Financial'),
(2, 3, 'en', 'Content'),
(3, 4, 'en', 'Marketing'),
(4, 4, 'ar', 'تسويق'),
(5, 4, 'es', 'Márketing'),
(6, 3, 'es', 'Contenido'),
(7, 3, 'ar', 'المحتوى'),
(8, 2, 'ar', 'الأمور المالية'),
(9, 2, 'es', 'Financiera');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `upcoming_course_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `webinar_id`, `bundle_id`, `upcoming_course_id`) VALUES
(2, '10', NULL, 1, NULL),
(3, '5', 2025, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `rate` varchar(5) NOT NULL DEFAULT '0',
  `status` enum('active','disable') NOT NULL DEFAULT 'disable',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_avatar`, `rate`, `status`, `created_at`) VALUES
(2, '/store/1/logoblanc.png', '5', 'active', 1606841889),
(5, '/store/1/logoblanc.png', '5', 'active', 1606841946),
(6, '/store/1/logoblanc.png', '5', 'active', 1606842000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_bio` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `locale`, `user_name`, `user_bio`, `comment`) VALUES
(1, 2, 'en', 'Ryan Newman', 'Data Analyst at Microsoft', '\"We\'ve used Rocket LMS for the last 2  years. Thanks for the great service.\"'),
(4, 5, 'en', 'Charles Dale', 'Computer Engineer at Oracle', '\"I am so pleased with this product. I couldn\'t have asked for more than this.\"'),
(5, 6, 'en', 'David Patterson', 'Network Technician at Cisco', '\"Rocket LMS impressed me on multiple           levels.\"'),
(6, 2, 'ar', 'عبد الجبار الخليل', 'معلم سنة اولى', '\"لقد استخدمنا CASPEDUCATION خلال العامين الماضيين. شكرًا على الخدمة الرائعة.\"'),
(7, 2, 'es', 'Ryan Newman', 'Analista de datos en Microsoft', '\"Hemos utilizado Rocket LMS durante los últimos 2 años. Gracias por el gran servicio\"'),
(12, 5, 'es', 'Charles Dale', 'Ingeniera informatica en oracle', '\"Estoy muy satisfecho con este producto. No podría haber pedido más que esto\"'),
(13, 5, 'ar', 'رفعت اليونس', 'ولي تلميذ', '\"أنا مسرور جدًا بهذا المنتج. لم أستطع طلب أكثر من هذا.\"'),
(14, 6, 'es', 'David Patterson', 'Técnico de redes en Cisco', '\"Rocket LMS me impresionó en varios niveles\"'),
(15, 6, 'ar', 'احمد المنصوري', 'مدير مدرسة الامل', '\"لقد أبهرني CASPEDUCATION على مستويات متعددة.\"');

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons`
--

CREATE TABLE `text_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `study_time` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') NOT NULL DEFAULT 'free',
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT 0,
  `access_after_day` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons_attachments`
--

CREATE TABLE `text_lessons_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lesson_translations`
--

CREATE TABLE `text_lesson_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` int(10) UNSIGNED DEFAULT NULL,
  `end_date` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `creator_id`, `webinar_id`, `bundle_id`, `start_date`, `end_date`, `discount`, `capacity`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1059, NULL, 1, 1704067200, 1704067200, 1, NULL, NULL, 1705265356, NULL, NULL),
(2, 1059, 2025, NULL, 1707868800, 1709164800, 10, 5, NULL, 1705517827, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_translations`
--

CREATE TABLE `ticket_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_translations`
--

INSERT INTO `ticket_translations` (`id`, `ticket_id`, `locale`, `title`) VALUES
(1, 1, 'ar', 'course bundle 1'),
(2, 2, 'ar', 'kjkjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_users`
--

CREATE TABLE `ticket_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trend_categories`
--

CREATE TABLE `trend_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(32) NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `trend_categories`
--

INSERT INTO `trend_categories` (`id`, `category_id`, `icon`, `color`, `created_at`) VALUES
(1, 612, '/store/1/295174836_380192987579776_7777804687797229851_n.jpg', '#1816d1', 1705267934);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_courses`
--

CREATE TABLE `upcoming_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'when assigned a course',
  `type` enum('webinar','course','text_lesson') NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `image_cover` varchar(255) NOT NULL,
  `video_demo` varchar(255) DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') DEFAULT NULL,
  `publish_date` bigint(20) UNSIGNED DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `points` int(10) UNSIGNED DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `price` double(15,2) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `sections` int(10) UNSIGNED DEFAULT NULL,
  `parts` int(10) UNSIGNED DEFAULT NULL,
  `course_progress` int(10) UNSIGNED DEFAULT NULL,
  `support` tinyint(1) NOT NULL DEFAULT 0,
  `certificate` tinyint(1) NOT NULL DEFAULT 0,
  `include_quizzes` tinyint(1) NOT NULL DEFAULT 0,
  `downloadable` tinyint(1) NOT NULL DEFAULT 0,
  `forum` tinyint(1) NOT NULL DEFAULT 0,
  `message_for_reviewer` text DEFAULT NULL,
  `status` enum('active','pending','is_draft','inactive') NOT NULL DEFAULT 'is_draft',
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_course_filter_option`
--

CREATE TABLE `upcoming_course_filter_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `upcoming_course_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_course_followers`
--

CREATE TABLE `upcoming_course_followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `upcoming_course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_course_reports`
--

CREATE TABLE `upcoming_course_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `upcoming_course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_course_translations`
--

CREATE TABLE `upcoming_course_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upcoming_course_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(128) DEFAULT NULL,
  `role_name` varchar(64) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(11) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bio` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `logged_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `financial_approval` tinyint(1) NOT NULL DEFAULT 0,
  `installment_approval` tinyint(1) DEFAULT 0,
  `enable_installments` tinyint(1) DEFAULT 1,
  `disable_cashback` tinyint(1) DEFAULT 0,
  `enable_registration_bonus` tinyint(1) NOT NULL DEFAULT 0,
  `registration_bonus_amount` double(15,2) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_settings` varchar(255) DEFAULT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `location` point DEFAULT NULL,
  `level_of_training` bit(3) DEFAULT NULL,
  `meeting_type` enum('all','in_person','online') NOT NULL DEFAULT 'all',
  `status` enum('active','pending','inactive') NOT NULL DEFAULT 'active',
  `access_content` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ai_content` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `public_message` tinyint(1) NOT NULL DEFAULT 0,
  `identity_scan` varchar(128) DEFAULT NULL,
  `certificate` varchar(128) DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `affiliate` tinyint(1) NOT NULL DEFAULT 1,
  `can_create_store` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Despite disabling the store feature in the settings, we can enable this feature for that user through the edit page of a user and turning on the store toggle.',
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `ban_start_at` int(10) UNSIGNED DEFAULT NULL,
  `ban_end_at` int(10) UNSIGNED DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT 0,
  `offline_message` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `logged_count`, `verified`, `financial_approval`, `installment_approval`, `enable_installments`, `disable_cashback`, `enable_registration_bonus`, `registration_bonus_amount`, `avatar`, `avatar_settings`, `cover_img`, `headline`, `about`, `address`, `country_id`, `province_id`, `city_id`, `district_id`, `location`, `level_of_training`, `meeting_type`, `status`, `access_content`, `enable_ai_content`, `language`, `currency`, `timezone`, `newsletter`, `public_message`, `identity_scan`, `certificate`, `commission`, `affiliate`, `can_create_store`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 2, NULL, '00000000', 'admin@demo.com', 'Senior software developer', '$2y$10$XJQdTWs24JRg/4XDCjYJruASbci07fyyohGsURFZGE1xJxwyDnrJ.', NULL, NULL, 'n81fz9YAPZ8EdhS0YnDYAbEhuHzE45KDFhNdJKKHaqkdd8HXtNH3WmaVA13n', 5, 1, 0, 0, 1, 0, 0, NULL, '/store/1/avatar2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, 'AR', 'USD', 'America/New_York', 0, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(1052, 'محمد قحطان', 'teacher', 4, NULL, NULL, 'mohamed@casp.education', NULL, '$2y$10$9SHG/uWTym0imbNWFNHU7.YboPfHjsGarb8QlVkaMSz1bDDFcB6DG', NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, '{\"color\":\"000000\",\"background\":\"40c4ff\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'Africa/Abidjan', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1703028391, NULL, NULL),
(1057, 'dargouthi rania', 'user', 1, NULL, NULL, 'rania.dargouthi@isimg.tn', NULL, '$2y$10$6bzhArbu7Fx6gKTA1Z58.O249WBsawqPb9Rt2Xu1b4ymK96DMaDLK', NULL, NULL, 'WdhD50RNIRN7fnE8vT3cb6bPTEXds0LZrThDoMemULlXbWhaYbrCLlIBZRoJ', 1, 0, 0, 0, 1, 0, 0, NULL, '/store/1057/avatar/65a42725c2871.png', '{\"color\":\"000000\",\"background\":\"18ffff\"}', '/store/1057/loginn (1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'America/New_York', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1704627953, NULL, NULL),
(1058, 'Achref Babba', 'user', 1, NULL, NULL, 'achrefbabba2@gmail.com', NULL, '$2y$10$Ph9kPxRMKfUqi3.jHEpb.ulG3NuI/6LA3PI.Ckk3tI3HBhKs.ig2m', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '{\"color\":\"FFFFFF\",\"background\":\"0277bd\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'Africa/Tunis', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1705150217, NULL, NULL),
(1059, 'rania CASPecole', 'organization', 3, NULL, NULL, 'chebbi.rania99@gmail.com', NULL, '$2y$10$YYt4/3hUvGVABV5yYFnvOuOn.bVg/yLbBJ65ePYPSCaVByJRVPzd2', NULL, NULL, 'sWOsxr8CF0a0S3rEuH1w2tC42dbcTFpjYnep9RkoxqZ3uFDIskv0sTaNVJEH', 2, 0, 0, 0, 1, 0, 0, NULL, '/store/1059/avatar/65a4367727349.png', '{\"color\":\"000000\",\"background\":\"aeea00\"}', '/store/1059/school (1).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'America/Eirunepe', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1705260104, NULL, NULL),
(1061, 'jaafar', 'user', 1, NULL, NULL, 'centrecasp.ca@gmail.com', NULL, '$2y$10$JuCXl06t6kMNuORBR6iMvuQOpR/lPMZOgO9oHGPNcUIE5PCvI9rJ6', NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, NULL, NULL, '{\"color\":\"000000\",\"background\":\"8c9eff\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'America/Eirunepe', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1705757638, NULL, NULL),
(1063, 'Diana Rossenga', 'user', 1, NULL, NULL, 'dianarossenga@gmail.com', NULL, '$2y$10$Own8zG1GDujmO1sSPItyBekpx6xBZATjhTLXevzcM8SZZEVDzli.K', NULL, NULL, 'PR80JuBtoL2DmLmvM2u01mBV4KQ949wG3NozFAO0CVHBm3Ds9xms2XMfxpvm', 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'Antarctica/Mawson', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1707495109, NULL, NULL),
(1066, 'ECOLE PRIVE', 'organization', 3, NULL, NULL, 'jihed.gouay@gmail.com', NULL, '$2y$10$4ptTQLngLEk9sb78nXTucu3pZLpXI20hbtqNHdc9yMSuR4tH32Lwa', NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, NULL, NULL, '{\"color\":\"000000\",\"background\":\"304ffe\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 0, NULL, NULL, 'America/Eirunepe', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1708462635, NULL, NULL),
(1067, 'GUQdsavFLZYAlVoE', 'organization', 3, NULL, NULL, 'randy45hamptongkj@outlook.com', NULL, '$2y$10$l4A/6eMbzs7FLHIC8IbB3uhuSFep9rQinOpx.nVDE0Fyslf1fu.6C', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1709276074, NULL, NULL),
(1068, 'ThwZbIFJ', 'organization', 3, NULL, NULL, 'hamptonelfreda8291@gmail.com', NULL, '$2y$10$QIl25ghweFgfyPtFwRaC5eePHv3cqimwECTnXzi9KRhMc5WZOLySi', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1709811805, NULL, NULL),
(1069, 'CRqwczeghPiKQ', 'organization', 3, NULL, NULL, 'dahlnoble168@gmail.com', NULL, '$2y$10$38vg/aUosAWAX52SVWki1uBwsWURFBIwAHYWBrwpyih0IQSzN4UEW', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1711276556, NULL, NULL),
(1070, 'UnmatReekDrarma', 'user', 1, NULL, NULL, 'UnmatReekDrarma@softbox.site', NULL, '$2y$10$vxoyU8N81VvKVJBD9AXLnOPyoIYD7YM/0XD4b73qslTlj70oILnyS', NULL, NULL, 'oPlPl4FBFxL4hpKRo5tF9FTwXKsTfT9yMBf3FVvUCuNAKfGdhrrjtQUSY9pl', 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'Europe/Vienna', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1711461531, NULL, NULL),
(1071, 'fqOvEYIgPiNZAd', 'organization', 3, NULL, NULL, 'james8s_craiggm@outlook.com', NULL, '$2y$10$.Q6OgmpqLaM1L7T3BTvgTO1HcpbDeHY/5EulnTEtRaNeTGl4vEVAe', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1711691438, NULL, NULL),
(1072, 'vGJPfXLFNOnRIq', 'organization', 3, NULL, NULL, 'tmorrisiv1994@gmail.com', NULL, '$2y$10$qfjKqNP/YvsjkEgLHoHmQumDrmAsxVSz7gvPRMR.eLA/lJQL.ol62', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1712165851, NULL, NULL),
(1073, 'Eddy Diot', 'user', 1, NULL, NULL, 'tup.gb.fr@gmail.com', NULL, '$2y$10$q2zFpy5gd9FIE2D8GKjaheD9HjxsHPffhREtyq4cphbY4dq32IPL.', NULL, NULL, 'CWXTsX08nlKXiX69spbqftFJBfBU936BA5QCjzvvCxeAN53ILbiuQ7ZMBzDR', 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'Australia/Lindeman', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1712657796, NULL, NULL),
(1074, 'TzWPKQSiusXf', 'organization', 3, NULL, NULL, 'jukes_justin1997@yahoo.com', NULL, '$2y$10$v1dd30CLNGjRKdCAA6Mu7uII1A7hwjLNpmD1IerxhGH9.FIHlKsve', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1713057628, NULL, NULL),
(1075, 'VArUCxXBQhw', 'organization', 3, NULL, NULL, 'antonia98allmang3r@outlook.com', NULL, '$2y$10$gVcvELKTWjNPPPL93tGfDuPvI2yU/wYxvRaXBCgHUfn8L3St8AzM2', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1713194113, NULL, NULL),
(1076, 'VukyPwfrLOJBIiN', 'organization', 3, NULL, NULL, 'shaquanaahs@outlook.com', NULL, '$2y$10$1nBUPOKikgB23tsZYn7DLuNgZQkvJktv5s3YGqp0rZEANMtHGanoC', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1713583490, NULL, NULL),
(1077, 'vQdoDpZJPzki', 'organization', 3, NULL, NULL, 'belreif901@gmail.com', NULL, '$2y$10$dBrRJG93UNCYUoIoAXqF0ui.4tfYGuYt9UL9GOJ6INEs9xbBd67r.', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', 1, 0, NULL, NULL, 'UTC', 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1713818526, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE `users_badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_cookie_security`
--

CREATE TABLE `users_cookie_security` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('all','customize') NOT NULL,
  `settings` text DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_cookie_security`
--

INSERT INTO `users_cookie_security` (`id`, `user_id`, `type`, `settings`, `created_at`) VALUES
(2, 1, 'all', NULL, 1655624844);

-- --------------------------------------------------------

--
-- Table structure for table `users_manual_purchase`
--

CREATE TABLE `users_manual_purchase` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `access` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `name`, `value`) VALUES
(1, 1059, 'education', 'master'),
(2, 1059, 'experience', 'caspe education  groupe');

-- --------------------------------------------------------

--
-- Table structure for table `users_occupations`
--

CREATE TABLE `users_occupations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_occupations`
--

INSERT INTO `users_occupations` (`id`, `user_id`, `category_id`) VALUES
(1, 1059, 612);

-- --------------------------------------------------------

--
-- Table structure for table `users_registration_packages`
--

CREATE TABLE `users_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_zoom_api`
--

CREATE TABLE `users_zoom_api` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jwt_token` text DEFAULT NULL,
  `api_key` text DEFAULT NULL,
  `api_secret` text DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_banks`
--

CREATE TABLE `user_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_banks`
--

INSERT INTO `user_banks` (`id`, `logo`, `created_at`) VALUES
(4, '/store/1/default_images/payment gateways/paypal.png', 1678874235),
(5, '/store/1/default_images/payment gateways/stripe.png', 1679090196);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_specifications`
--

CREATE TABLE `user_bank_specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_bank_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bank_specifications`
--

INSERT INTO `user_bank_specifications` (`id`, `user_bank_id`) VALUES
(10, 4),
(11, 4),
(12, 5),
(13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_specification_translations`
--

CREATE TABLE `user_bank_specification_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_bank_specification_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bank_specification_translations`
--

INSERT INTO `user_bank_specification_translations` (`id`, `user_bank_specification_id`, `locale`, `name`) VALUES
(15, 10, 'en', 'Account Holder'),
(16, 11, 'en', 'Email'),
(17, 12, 'en', 'Account Holder'),
(18, 13, 'en', 'Account ID');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_translations`
--

CREATE TABLE `user_bank_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_bank_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bank_translations`
--

INSERT INTO `user_bank_translations` (`id`, `user_bank_id`, `locale`, `title`) VALUES
(6, 4, 'en', 'Paypal'),
(7, 5, 'en', 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `user_form_fields`
--

CREATE TABLE `user_form_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `become_instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `form_field_id` int(10) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_selected_banks`
--

CREATE TABLE `user_selected_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_bank_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_selected_bank_specifications`
--

CREATE TABLE `user_selected_bank_specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_selected_bank_id` int(10) UNSIGNED NOT NULL,
  `user_bank_specification_id` int(10) UNSIGNED NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` char(16) DEFAULT NULL,
  `email` char(64) DEFAULT NULL,
  `code` char(6) NOT NULL,
  `verified_at` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `mobile`, `email`, `code`, `verified_at`, `expired_at`, `created_at`) VALUES
(95, 1057, NULL, 'rania.dargouthi@isimg.tn', '16875', 1704628017, 1704628067, 1704627953),
(96, 1058, NULL, 'achrefbabba2@gmail.com', '84751', 1705150232, 1705150282, 1705150217),
(97, 1059, NULL, 'chebbi.rania99@gmail.com', '49526', 1705260136, 1705260186, 1705260105),
(99, 1061, NULL, 'centrecasp.ca@gmail.com', '71453', 1705757672, 1705757722, 1705757638),
(101, 1063, NULL, 'dianarossenga@gmail.com', '57994', NULL, 1707498709, 1707495109),
(104, 1066, NULL, 'jihed.gouay@gmail.com', '64622', 1708462661, 1708462711, 1708462635),
(105, 1067, NULL, 'randy45hamptongkj@outlook.com', '72185', NULL, 1709279674, 1709276074),
(106, 1068, NULL, 'hamptonelfreda8291@gmail.com', '33753', NULL, 1709815405, 1709811805),
(107, 1069, NULL, 'dahlnoble168@gmail.com', '92715', NULL, 1711280156, 1711276556),
(108, 1070, NULL, 'UnmatReekDrarma@softbox.site', '78345', NULL, 1711465131, 1711461531),
(109, 1071, NULL, 'james8s_craiggm@outlook.com', '13764', NULL, 1711695038, 1711691438),
(110, 1072, NULL, 'tmorrisiv1994@gmail.com', '22858', NULL, 1712169451, 1712165851),
(111, 1073, NULL, 'tup.gb.fr@gmail.com', '48392', NULL, 1712661396, 1712657796),
(112, 1074, NULL, 'jukes_justin1997@yahoo.com', '13291', NULL, 1713061228, 1713057628),
(113, 1075, NULL, 'antonia98allmang3r@outlook.com', '17329', NULL, 1713197713, 1713194113),
(114, 1076, NULL, 'shaquanaahs@outlook.com', '97560', NULL, 1713587090, 1713583490),
(115, 1077, NULL, 'belreif901@gmail.com', '93869', NULL, 1713822126, 1713818526);

-- --------------------------------------------------------

--
-- Table structure for table `waitlists`
--

CREATE TABLE `waitlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','course','text_lesson') NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `image_cover` varchar(255) NOT NULL,
  `video_demo` varchar(255) DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `price` double(15,2) UNSIGNED DEFAULT NULL,
  `organization_price` double(15,2) UNSIGNED DEFAULT NULL,
  `support` tinyint(1) DEFAULT 0,
  `certificate` tinyint(1) NOT NULL DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `partner_instructor` tinyint(1) DEFAULT 0,
  `subscribe` tinyint(1) DEFAULT 0,
  `forum` tinyint(1) NOT NULL DEFAULT 0,
  `enable_waitlist` tinyint(1) NOT NULL DEFAULT 0,
  `access_days` int(10) UNSIGNED DEFAULT NULL COMMENT 'Number of days to access the course',
  `points` int(11) DEFAULT NULL,
  `message_for_reviewer` text DEFAULT NULL,
  `status` enum('active','pending','is_draft','inactive') NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `slug`, `start_date`, `duration`, `timezone`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `capacity`, `price`, `organization_price`, `support`, `certificate`, `downloadable`, `partner_instructor`, `subscribe`, `forum`, `enable_waitlist`, `access_days`, `points`, `message_for_reviewer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2023, 1052, 1052, 612, 'text_lesson', 0, 'نحو-عربي', NULL, 12, 'America/New_York', '/store/1/arabic-language.png', '/store/1/اللغة-العربية.jpg', NULL, NULL, 2, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 5, NULL, 'active', 1703028613, 1703028630, NULL),
(2024, 1059, 1059, 612, 'webinar', 0, '1-er-course', 1704085200, 1, 'America/Eirunepe', '/store/1059/school.png', '/store/1059/school (2).png', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'is_draft', 1705264144, 1705264230, NULL),
(2025, 1059, 1059, 612, 'text_lesson', 0, 'course-ecole', NULL, 5, 'America/Eirunepe', '/store/1059/Green Illustrated Welcome Back Students Instagram Story (1).png', '/store/1059/Green Illustrated Welcome Back Students Instagram Story.png', NULL, NULL, 10, 15.00, 10.00, 0, 1, 1, 0, 0, 0, 0, 10, NULL, 'thanks  course terminate', 'active', 1705264608, 1705517876, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignments`
--

CREATE TABLE `webinar_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED NOT NULL,
  `grade` int(10) UNSIGNED DEFAULT NULL,
  `pass_grade` int(10) UNSIGNED DEFAULT NULL,
  `deadline` int(10) UNSIGNED DEFAULT NULL,
  `attempts` int(10) UNSIGNED DEFAULT NULL,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT 0,
  `access_after_day` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_attachments`
--

CREATE TABLE `webinar_assignment_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `attach` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_history`
--

CREATE TABLE `webinar_assignment_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `grade` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('pending','passed','not_passed','not_submitted') NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_history_messages`
--

CREATE TABLE `webinar_assignment_history_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_history_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_translations`
--

CREATE TABLE `webinar_assignment_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `webinar_assignment_id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapters`
--

CREATE TABLE `webinar_chapters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `check_all_contents_pass` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_items`
--

CREATE TABLE `webinar_chapter_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` enum('file','session','text_lesson','quiz','assignment') NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_translations`
--

CREATE TABLE `webinar_chapter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webinar_chapter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_extra_descriptions`
--

CREATE TABLE `webinar_extra_descriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `upcoming_course_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('learning_materials','company_logos','requirements') NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_extra_description_translations`
--

CREATE TABLE `webinar_extra_description_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webinar_extra_description_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_filter_option`
--

CREATE TABLE `webinar_filter_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_partner_teacher`
--

CREATE TABLE `webinar_partner_teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reports`
--

CREATE TABLE `webinar_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reviews`
--

CREATE TABLE `webinar_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle_id` int(10) UNSIGNED DEFAULT NULL,
  `content_quality` int(10) UNSIGNED NOT NULL,
  `instructor_skills` int(10) UNSIGNED NOT NULL,
  `purchase_worth` int(10) UNSIGNED NOT NULL,
  `support_quality` int(10) UNSIGNED NOT NULL,
  `rates` char(10) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','active') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_translations`
--

CREATE TABLE `webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_translations`
--

INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(171, 2023, 'ar', 'نحو عربي', NULL, '<p>يشمل هذا الدرس العديد من ,,,,,</p>'),
(172, 2024, 'ar', '1 er course', NULL, '<p>notre 1 er cours dans  rania Caspe ecole</p>'),
(173, 2025, 'ar', 'course ecole', NULL, '<p>course pou ecole</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `webinar_id` (`webinar_id`) USING BTREE,
  ADD KEY `meeting_time_id` (`meeting_time_id`) USING BTREE,
  ADD KEY `subscribe_id` (`subscribe_id`) USING BTREE,
  ADD KEY `promotion_id` (`promotion_id`) USING BTREE,
  ADD KEY `accounting_installment_payment_id_foreign` (`installment_payment_id`);

--
-- Indexes for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertising_banners_translations_advertising_banner_id_foreign` (`advertising_banner_id`),
  ADD KEY `advertising_banners_translations_locale_index` (`locale`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliates_affiliate_user_id_foreign` (`affiliate_user_id`),
  ADD KEY `affiliates_referred_user_id_foreign` (`referred_user_id`);

--
-- Indexes for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliates_codes_code_unique` (`code`),
  ADD KEY `affiliates_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agora_history_session_id_foreign` (`session_id`);

--
-- Indexes for table `ai_contents`
--
ALTER TABLE `ai_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_contents_user_id_foreign` (`user_id`),
  ADD KEY `ai_contents_service_id_foreign` (`service_id`);

--
-- Indexes for table `ai_content_templates`
--
ALTER TABLE `ai_content_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_content_template_translations`
--
ALTER TABLE `ai_content_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_content_template_id_trans` (`ai_content_template_id`),
  ADD KEY `ai_content_template_translations_locale_index` (`locale`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `badges_type_index` (`type`) USING BTREE;

--
-- Indexes for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badge_translations_badge_id_foreign` (`badge_id`),
  ADD KEY `badge_translations_locale_index` (`locale`);

--
-- Indexes for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `become_instructors_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `slug` (`slug`) USING BTREE;

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_courses`
--
ALTER TABLE `book_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundles_creator_id_foreign` (`creator_id`),
  ADD KEY `bundles_teacher_id_foreign` (`teacher_id`),
  ADD KEY `bundles_category_id_foreign` (`category_id`),
  ADD KEY `bundles_slug_index` (`slug`);

--
-- Indexes for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_filter_option_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_filter_option_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_translations_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_translations_locale_index` (`locale`);

--
-- Indexes for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_webinars_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_webinars_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cart_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `cart_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `cart_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `cart_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `cart_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `cart_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `cart_special_offer_id_foreign` (`special_offer_id`),
  ADD KEY `cart_product_order_id_foreign` (`product_order_id`),
  ADD KEY `cart_product_discount_id_foreign` (`product_discount_id`),
  ADD KEY `cart_bundle_id_foreign` (`bundle_id`),
  ADD KEY `cart_installment_payment_id_foreign` (`installment_payment_id`),
  ADD KEY `cart_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `cashback_rules`
--
ALTER TABLE `cashback_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashback_rule_specification_items`
--
ALTER TABLE `cashback_rule_specification_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cashback_rule_specification_items_cashback_rule_id_foreign` (`cashback_rule_id`),
  ADD KEY `cashback_rule_specification_items_category_id_foreign` (`category_id`),
  ADD KEY `cashback_rule_specification_items_instructor_id_foreign` (`instructor_id`),
  ADD KEY `cashback_rule_specification_items_seller_id_foreign` (`seller_id`),
  ADD KEY `cashback_rule_specification_items_webinar_id_foreign` (`webinar_id`),
  ADD KEY `cashback_rule_specification_items_product_id_foreign` (`product_id`),
  ADD KEY `cashback_rule_specification_items_bundle_id_foreign` (`bundle_id`),
  ADD KEY `cashback_rule_specification_items_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `rules_registration_package_id` (`registration_package_id`);

--
-- Indexes for table `cashback_rule_translations`
--
ALTER TABLE `cashback_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cashback_rule_translations_cashback_rule_id_foreign` (`cashback_rule_id`),
  ADD KEY `cashback_rule_translations_locale_index` (`locale`);

--
-- Indexes for table `cashback_rule_users_groups`
--
ALTER TABLE `cashback_rule_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cashback_rule_users_groups_cashback_rule_id_foreign` (`cashback_rule_id`),
  ADD KEY `cashback_rule_users_groups_group_id_foreign` (`group_id`),
  ADD KEY `cashback_rule_users_groups_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`) USING BTREE;

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `category_translations_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_translations_locale_index` (`locale`) USING BTREE;

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `certificates_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `certificates_quiz_result_id_foreign` (`quiz_result_id`) USING BTREE,
  ADD KEY `certificates_student_id_foreign` (`student_id`) USING BTREE,
  ADD KEY `certificates_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_template_id` (`certificate_template_id`),
  ADD KEY `certificate_template_translations_locale_index` (`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `comments_review_id_foreign` (`review_id`) USING BTREE,
  ADD KEY `comments_reply_id_foreign` (`reply_id`) USING BTREE,
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_bundle_id_foreign` (`bundle_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `comments_upcoming_course_id_foreign` (`upcoming_course_id`);

--
-- Indexes for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_reports_comment_id_foreign` (`comment_id`) USING BTREE,
  ADD KEY `comments_reports_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `course_forums`
--
ALTER TABLE `course_forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_forums_webinar_id_foreign` (`webinar_id`),
  ADD KEY `course_forums_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_forum_answers_user_id_foreign` (`user_id`),
  ADD KEY `course_forum_answers_forum_id_foreign` (`forum_id`);

--
-- Indexes for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_learning_user_id_foreign` (`user_id`),
  ADD KEY `course_learning_text_lesson_id_foreign` (`text_lesson_id`),
  ADD KEY `course_learning_file_id_foreign` (`file_id`),
  ADD KEY `course_learning_session_id_foreign` (`session_id`);

--
-- Indexes for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_noticeboards_creator_id_foreign` (`creator_id`),
  ADD KEY `course_noticeboards_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_noticeboard_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delete_account_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `discounts_code_unique` (`code`),
  ADD KEY `discounts_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `discount_bundles`
--
ALTER TABLE `discount_bundles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_bundles_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_bundles_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_categories_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_courses_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_groups_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `discount_users_discount_id_foreign` (`discount_id`) USING BTREE,
  ADD KEY `discount_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `faqs_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `faqs_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `faqs_bundle_id_foreign` (`bundle_id`),
  ADD KEY `faqs_upcoming_course_id_foreign` (`upcoming_course_id`);

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_translations_faq_id_foreign` (`faq_id`),
  ADD KEY `faq_translations_locale_index` (`locale`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `favorites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `favorites_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `favorites_bundle_id_foreign` (`bundle_id`),
  ADD KEY `favorites_upcoming_course_id_foreign` (`upcoming_course_id`);

--
-- Indexes for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `feature_webinars_webinar_id_index` (`webinar_id`) USING BTREE;

--
-- Indexes for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_webinar_translations_feature_webinar_id_foreign` (`feature_webinar_id`),
  ADD KEY `feature_webinar_translations_locale_index` (`locale`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `files_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `files_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `files_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_translations_file_id_foreign` (`file_id`),
  ADD KEY `file_translations_locale_index` (`locale`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filters_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filter_options_filter_id_foreign` (`filter_id`) USING BTREE;

--
-- Indexes for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_option_translations_filter_option_id_foreign` (`filter_option_id`),
  ADD KEY `filter_option_translations_locale_index` (`locale`);

--
-- Indexes for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_translations_filter_id_foreign` (`filter_id`),
  ADD KEY `filter_translations_locale_index` (`locale`);

--
-- Indexes for table `floating_bars`
--
ALTER TABLE `floating_bars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floating_bar_translations`
--
ALTER TABLE `floating_bar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floating_bar_translations_floating_bar_id_foreign` (`floating_bar_id`),
  ADD KEY `floating_bar_translations_locale_index` (`locale`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `follows_follower_foreign` (`follower`) USING BTREE,
  ADD KEY `follows_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forms_url_unique` (`url`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_fields_form_id_foreign` (`form_id`);

--
-- Indexes for table `form_field_options`
--
ALTER TABLE `form_field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_field_options_form_field_id_foreign` (`form_field_id`);

--
-- Indexes for table `form_field_option_translations`
--
ALTER TABLE `form_field_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_field_option_id_trans` (`form_field_option_id`),
  ADD KEY `form_field_option_translations_locale_index` (`locale`);

--
-- Indexes for table `form_field_translations`
--
ALTER TABLE `form_field_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_field_translations_form_field_id_foreign` (`form_field_id`),
  ADD KEY `form_field_translations_locale_index` (`locale`);

--
-- Indexes for table `form_roles_users_groups`
--
ALTER TABLE `form_roles_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_roles_users_groups_form_id_foreign` (`form_id`),
  ADD KEY `form_roles_users_groups_role_id_foreign` (`role_id`),
  ADD KEY `form_roles_users_groups_user_id_foreign` (`user_id`),
  ADD KEY `form_roles_users_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `form_submissions`
--
ALTER TABLE `form_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_submissions_user_id_foreign` (`user_id`),
  ADD KEY `form_submissions_form_id_foreign` (`form_id`);

--
-- Indexes for table `form_submission_items`
--
ALTER TABLE `form_submission_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_submission_items_submission_id_foreign` (`submission_id`),
  ADD KEY `form_submission_items_form_field_id_foreign` (`form_field_id`);

--
-- Indexes for table `form_translations`
--
ALTER TABLE `form_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_translations_form_id_foreign` (`form_id`),
  ADD KEY `form_translations_locale_index` (`locale`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forums_slug_unique` (`slug`),
  ADD KEY `forums_role_id_foreign` (`role_id`),
  ADD KEY `forums_group_id_foreign` (`group_id`);

--
-- Indexes for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_featured_topics_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_recommended_topics`
--
ALTER TABLE `forum_recommended_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_recommended_topic_items_recommended_topic_id_foreign` (`recommended_topic_id`),
  ADD KEY `forum_recommended_topic_items_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_topics_slug_unique` (`slug`),
  ADD KEY `forum_topics_creator_id_foreign` (`creator_id`),
  ADD KEY `forum_topics_forum_id_foreign` (`forum_id`);

--
-- Indexes for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_attachments_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_attachments_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_bookmarks_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_likes_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_likes_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_likes_topic_post_id_foreign` (`topic_post_id`);

--
-- Indexes for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_posts_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_posts_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_posts_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_reports_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_reports_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_reports_topic_post_id_foreign` (`topic_post_id`);

--
-- Indexes for table `forum_translations`
--
ALTER TABLE `forum_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_translations_forum_id_foreign` (`forum_id`),
  ADD KEY `forum_translations_locale_index` (`locale`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gifts_user_id_foreign` (`user_id`),
  ADD KEY `gifts_webinar_id_foreign` (`webinar_id`),
  ADD KEY `gifts_bundle_id_foreign` (`bundle_id`),
  ADD KEY `gifts_product_id_foreign` (`product_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groups_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_registration_packages_group_id_foreign` (`group_id`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `group_users_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `group_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `home_page_statistics`
--
ALTER TABLE `home_page_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_statistic_translations`
--
ALTER TABLE `home_page_statistic_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_page_statistic_id` (`home_page_statistic_id`),
  ADD KEY `home_page_statistic_translations_locale_index` (`locale`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sections_name_index` (`name`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installment_orders`
--
ALTER TABLE `installment_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_orders_installment_id_foreign` (`installment_id`),
  ADD KEY `installment_orders_user_id_foreign` (`user_id`),
  ADD KEY `installment_orders_webinar_id_foreign` (`webinar_id`),
  ADD KEY `installment_orders_product_id_foreign` (`product_id`),
  ADD KEY `installment_orders_bundle_id_foreign` (`bundle_id`),
  ADD KEY `installment_orders_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `installment_orders_registration_package_id_foreign` (`registration_package_id`),
  ADD KEY `installment_product_order_id` (`product_order_id`);

--
-- Indexes for table `installment_order_attachments`
--
ALTER TABLE `installment_order_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_order_id_attachment` (`installment_order_id`);

--
-- Indexes for table `installment_order_payments`
--
ALTER TABLE `installment_order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_order_id` (`installment_order_id`),
  ADD KEY `installment_order_payments_sale_id_foreign` (`sale_id`),
  ADD KEY `installment_order_payments_selected_installment_step_id_foreign` (`selected_installment_step_id`);

--
-- Indexes for table `installment_reminders`
--
ALTER TABLE `installment_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `installment_specification_items`
--
ALTER TABLE `installment_specification_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_specification_items_installment_id_foreign` (`installment_id`),
  ADD KEY `installment_specification_items_category_id_foreign` (`category_id`),
  ADD KEY `installment_specification_items_instructor_id_foreign` (`instructor_id`),
  ADD KEY `installment_specification_items_seller_id_foreign` (`seller_id`),
  ADD KEY `installment_specification_items_webinar_id_foreign` (`webinar_id`),
  ADD KEY `installment_specification_items_product_id_foreign` (`product_id`),
  ADD KEY `installment_specification_items_bundle_id_foreign` (`bundle_id`),
  ADD KEY `installment_specification_items_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `installment_specification_items_registration_package_id_foreign` (`registration_package_id`);

--
-- Indexes for table `installment_steps`
--
ALTER TABLE `installment_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_steps_installment_id_foreign` (`installment_id`);

--
-- Indexes for table `installment_step_translations`
--
ALTER TABLE `installment_step_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_step_translations_installment_step_id_foreign` (`installment_step_id`),
  ADD KEY `installment_step_translations_locale_index` (`locale`);

--
-- Indexes for table `installment_translations`
--
ALTER TABLE `installment_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_translations_installment_id_foreign` (`installment_id`),
  ADD KEY `installment_translations_locale_index` (`locale`);

--
-- Indexes for table `installment_user_groups`
--
ALTER TABLE `installment_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installment_user_groups_installment_id_foreign` (`installment_id`),
  ADD KEY `installment_user_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `jazzcash_transactions`
--
ALTER TABLE `jazzcash_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meetings_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meeting_times_meeting_id_foreign` (`meeting_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_buttons_role_id_foreign` (`role_id`);

--
-- Indexes for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_button_translations_navbar_button_id_foreign` (`navbar_button_id`),
  ADD KEY `navbar_button_translations_locale_index` (`locale`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_organ_id_foreign` (`organ_id`),
  ADD KEY `noticeboards_user_id_foreign` (`user_id`),
  ADD KEY `noticeboards_instructor_id_foreign` (`instructor_id`),
  ADD KEY `noticeboards_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `notifications_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `webinar_id` (`webinar_id`);

--
-- Indexes for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_status_notification_id_foreign` (`notification_id`) USING BTREE;

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `offline_banks`
--
ALTER TABLE `offline_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_bank_specifications`
--
ALTER TABLE `offline_bank_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_bank_specifications_offline_bank_id_foreign` (`offline_bank_id`);

--
-- Indexes for table `offline_bank_specification_translations`
--
ALTER TABLE `offline_bank_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_bank_specification_id` (`offline_bank_specification_id`),
  ADD KEY `locale` (`locale`) USING BTREE;

--
-- Indexes for table `offline_bank_translations`
--
ALTER TABLE `offline_bank_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_bank_translations_offline_bank_id_foreign` (`offline_bank_id`),
  ADD KEY `offline_bank_translations_locale_index` (`locale`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `offline_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `offline_payments_offline_bank_id_foreign` (`offline_bank_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_items_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `order_items_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `order_items_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `order_items_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `order_items_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `order_items_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_link_unique` (`link`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_translations_page_id_foreign` (`page_id`),
  ADD KEY `page_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD UNIQUE KEY `payku_payments_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `payku_transactions`
--
ALTER TABLE `payku_transactions`
  ADD UNIQUE KEY `payku_transactions_id_unique` (`id`),
  ADD UNIQUE KEY `payku_transactions_order_unique` (`order`);

--
-- Indexes for table `payment_channels`
--
ALTER TABLE `payment_channels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `payouts_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `payout_user_selected_bank_id` (`user_selected_bank_id`) USING BTREE;

--
-- Indexes for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`) USING BTREE,
  ADD KEY `payu_transactions_status_index` (`status`) USING BTREE,
  ADD KEY `payu_transactions_verified_at_index` (`verified_at`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_role_id_index` (`role_id`) USING BTREE,
  ADD KEY `permissions_section_id_index` (`section_id`) USING BTREE;

--
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `prerequisites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `prerequisite_id` (`prerequisite_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_creator_id_foreign` (`creator_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_type_index` (`type`),
  ADD KEY `products_slug_index` (`slug`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`),
  ADD KEY `product_category_translations_locale_index` (`locale`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_discounts_creator_id_foreign` (`creator_id`),
  ADD KEY `product_discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_faqs_product_id_foreign` (`product_id`),
  ADD KEY `product_faqs_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_faq_id` (`product_faq_id`),
  ADD KEY `product_faq_translations_locale_index` (`locale`);

--
-- Indexes for table `product_files`
--
ALTER TABLE `product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_product_id` (`product_id`),
  ADD KEY `file_creator_id` (`creator_id`);

--
-- Indexes for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_file_id` (`product_file_id`),
  ADD KEY `product_file_translations_locale_index` (`locale`);

--
-- Indexes for table `product_filters`
--
ALTER TABLE `product_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filters_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_options_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_option_id` (`product_filter_option_id`),
  ADD KEY `product_filter_option_translations_locale_index` (`locale`);

--
-- Indexes for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_id` (`product_filter_id`),
  ADD KEY `product_filter_translations_locale_index` (`locale`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_product_id` (`product_id`),
  ADD KEY `media_creator_id` (`creator_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_installment_order_id_foreign` (`installment_order_id`),
  ADD KEY `product_orders_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_creator_id_foreign` (`creator_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_filter_options_product_id_foreign` (`product_id`),
  ADD KEY `product_selected_filter_options_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_specifications_creator_id_foreign` (`creator_id`),
  ADD KEY `product_selected_specifications_product_id_foreign` (`product_id`),
  ADD KEY `product_selected_specifications_product_specification_id_foreign` (`product_specification_id`);

--
-- Indexes for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selected_specification_id` (`selected_specification_id`),
  ADD KEY `specification_multi_value_id` (`specification_multi_value_id`);

--
-- Indexes for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_specification_id_translations` (`product_selected_specification_id`),
  ADD KEY `product_selected_specification_translations_locale_index` (`locale`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_categories_specification_id_foreign` (`specification_id`),
  ADD KEY `product_specification_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_multi_values_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_multi_value_id` (`product_specification_multi_value_id`),
  ADD KEY `product_specification_multi_value_translations_locale_index` (`locale`);

--
-- Indexes for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_id` (`product_specification_id`),
  ADD KEY `product_specification_translations_locale_index` (`locale`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_translations_locale_index` (`locale`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_translations_promotion_id_foreign` (`promotion_id`),
  ADD KEY `promotion_translations_locale_index` (`locale`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `purchases_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `purchases_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `quizzes_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `quizzes_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `quizzes_new`
--
ALTER TABLE `quizzes_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indexes for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_questions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_question_id_foreign` (`question_id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_questions_answer_id` (`quizzes_questions_answer_id`),
  ADD KEY `quizzes_questions_answer_translations_locale_index` (`locale`);

--
-- Indexes for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_results_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_results_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quizzes_serie`
--
ALTER TABLE `quizzes_serie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_question_translations_quiz_question_id_foreign` (`quizzes_question_id`),
  ADD KEY `quiz_question_translations_locale_index` (`locale`);

--
-- Indexes for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_translations_quiz_id_foreign` (`quiz_id`),
  ADD KEY `quiz_translations_locale_index` (`locale`);

--
-- Indexes for table `quiz_types`
--
ALTER TABLE `quiz_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `rating_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `rating_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `rating_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`),
  ADD KEY `regions_province_id_foreign` (`province_id`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

--
-- Indexes for table `registration_packages`
--
ALTER TABLE `registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_packages_role_index` (`role`);

--
-- Indexes for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_package` (`registration_package_id`),
  ADD KEY `registration_packages_translations_locale_index` (`locale`);

--
-- Indexes for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `reserve_meetings_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  ADD KEY `reserve_meetings_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `reserve_meetings_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_accounting_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sales_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `sales_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sales_meeting_id_foreign` (`meeting_id`) USING BTREE,
  ADD KEY `sales_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `sales_buyer_id_foreign` (`buyer_id`) USING BTREE,
  ADD KEY `sales_seller_id_foreign` (`seller_id`) USING BTREE,
  ADD KEY `sales_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `sales_installment_payment_id_foreign` (`installment_payment_id`);

--
-- Indexes for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_status_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `selected_installments`
--
ALTER TABLE `selected_installments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selected_installments_user_id_foreign` (`user_id`),
  ADD KEY `selected_installments_installment_id_foreign` (`installment_id`),
  ADD KEY `selected_installments_installment_order_id_foreign` (`installment_order_id`);

--
-- Indexes for table `selected_installment_steps`
--
ALTER TABLE `selected_installment_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selected_installment_steps_selected_installment_id_foreign` (`selected_installment_id`),
  ADD KEY `selected_installment_steps_installment_step_id_foreign` (`installment_step_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sessions_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `sessions_chapter_id_foreign` (`chapter_id`),
  ADD KEY `sessions_reserve_meeting_id_foreign` (`reserve_meeting_id`);

--
-- Indexes for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_reminds_session_id_foreign` (`session_id`),
  ADD KEY `session_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_translations_session_id_foreign` (`session_id`),
  ADD KEY `session_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translations_setting_id_foreign` (`setting_id`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `special_offers_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `special_offers_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `special_offers_bundle_id_foreign` (`bundle_id`),
  ADD KEY `special_offers_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `special_offers_registration_package_id_foreign` (`registration_package_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_reminds_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `subscribe_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_translations_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `subscribe_translations_locale_index` (`locale`);

--
-- Indexes for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `subscribe_uses_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `subscribe_uses_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `subscribe_uses_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `subscribe_uses_sale_id_foreign` (`sale_id`) USING BTREE,
  ADD KEY `subscribe_uses_bundle_id_foreign` (`bundle_id`),
  ADD KEY `subscribe_uses_installment_order_id_foreign` (`installment_order_id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `supports_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `supports_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `supports_department_id_foreign` (`department_id`) USING BTREE;

--
-- Indexes for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `support_conversations_support_id_foreign` (`support_id`) USING BTREE,
  ADD KEY `support_conversations_sender_id_foreign` (`sender_id`) USING BTREE,
  ADD KEY `support_conversations_supporter_id_foreign` (`supporter_id`) USING BTREE;

--
-- Indexes for table `support_departments`
--
ALTER TABLE `support_departments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_department_id` (`support_department_id`),
  ADD KEY `support_department_translations_locale_index` (`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tags_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tags_bundle_id_foreign` (`bundle_id`),
  ADD KEY `tags_upcoming_course_id_foreign` (`upcoming_course_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_translations_testimonial_id_foreign` (`testimonial_id`),
  ADD KEY `testimonial_translations_locale_index` (`locale`);

--
-- Indexes for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `text_lessons_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `text_lessons_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_attachments_text_lesson_id_foreign` (`text_lesson_id`) USING BTREE,
  ADD KEY `text_lessons_attachments_file_id_foreign` (`file_id`) USING BTREE;

--
-- Indexes for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text_lesson_id` (`text_lesson_id`),
  ADD KEY `text_lesson_translations_locale_index` (`locale`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tickets_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tickets_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `tickets_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_translations_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_translations_locale_index` (`locale`);

--
-- Indexes for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_users_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `ticket_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trend_categories_category_id_index` (`category_id`) USING BTREE;

--
-- Indexes for table `upcoming_courses`
--
ALTER TABLE `upcoming_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upcoming_courses_slug_unique` (`slug`),
  ADD KEY `upcoming_courses_creator_id_foreign` (`creator_id`),
  ADD KEY `upcoming_courses_teacher_id_foreign` (`teacher_id`),
  ADD KEY `upcoming_courses_category_id_foreign` (`category_id`),
  ADD KEY `upcoming_courses_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `upcoming_course_filter_option`
--
ALTER TABLE `upcoming_course_filter_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upcoming_course_filter_option_upcoming_course_id_foreign` (`upcoming_course_id`),
  ADD KEY `upcoming_course_filter_option_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `upcoming_course_followers`
--
ALTER TABLE `upcoming_course_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upcoming_course_followers_upcoming_course_id_foreign` (`upcoming_course_id`),
  ADD KEY `upcoming_course_followers_user_id_foreign` (`user_id`);

--
-- Indexes for table `upcoming_course_reports`
--
ALTER TABLE `upcoming_course_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upcoming_course_reports_upcoming_course_id_foreign` (`upcoming_course_id`),
  ADD KEY `upcoming_course_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `upcoming_course_translations`
--
ALTER TABLE `upcoming_course_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upcoming_course_translations_upcoming_course_id_foreign` (`upcoming_course_id`),
  ADD KEY `upcoming_course_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_province_id_foreign` (`province_id`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_district_id_foreign` (`district_id`);

--
-- Indexes for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_badges_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_badges_badge_id_foreign` (`badge_id`) USING BTREE;

--
-- Indexes for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_cookie_security_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_manual_purchase`
--
ALTER TABLE `users_manual_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metas_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_occupations_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_occupations_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_registration_packages_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_zoom_api_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_banks`
--
ALTER TABLE `user_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bank_specifications`
--
ALTER TABLE `user_bank_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_specifications_user_bank_id_foreign` (`user_bank_id`);

--
-- Indexes for table `user_bank_specification_translations`
--
ALTER TABLE `user_bank_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_specification_id` (`user_bank_specification_id`),
  ADD KEY `user_bank_specification_translations_locale_index` (`locale`);

--
-- Indexes for table `user_bank_translations`
--
ALTER TABLE `user_bank_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_translations_user_bank_id_foreign` (`user_bank_id`),
  ADD KEY `user_bank_translations_locale_index` (`locale`);

--
-- Indexes for table `user_form_fields`
--
ALTER TABLE `user_form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_form_fields_user_id_foreign` (`user_id`),
  ADD KEY `user_form_fields_become_instructor_id_foreign` (`become_instructor_id`),
  ADD KEY `user_form_fields_form_field_id_foreign` (`form_field_id`);

--
-- Indexes for table `user_selected_banks`
--
ALTER TABLE `user_selected_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_selected_banks_user_bank_id_foreign` (`user_bank_id`),
  ADD KEY `user_selected_banks_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_selected_bank_specifications`
--
ALTER TABLE `user_selected_bank_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_selected_bank_id_specifications` (`user_selected_bank_id`),
  ADD KEY `user_bank_specification_id_specifications` (`user_bank_specification_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `verifications_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `waitlists`
--
ALTER TABLE `waitlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waitlists_webinar_id_foreign` (`webinar_id`),
  ADD KEY `waitlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  ADD KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  ADD KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `webinars_slug_index` (`slug`) USING BTREE,
  ADD KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignments_creator_id_foreign` (`creator_id`),
  ADD KEY `webinar_assignments_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_assignments_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_attachments_assignment_id_foreign` (`assignment_id`);

--
-- Indexes for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_history_instructor_id_foreign` (`instructor_id`),
  ADD KEY `webinar_assignment_history_student_id_foreign` (`student_id`),
  ADD KEY `webinar_assignment_history_assignment_id_foreign` (`assignment_id`);

--
-- Indexes for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_history_id` (`assignment_history_id`);

--
-- Indexes for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_id_translate_foreign` (`webinar_assignment_id`),
  ADD KEY `webinar_assignment_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapters_user_id_foreign` (`user_id`),
  ADD KEY `webinar_chapters_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapter_items_chapter_id_foreign` (`chapter_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapter_id` (`webinar_chapter_id`),
  ADD KEY `webinar_chapter_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_extra_descriptions_creator_id_foreign` (`creator_id`),
  ADD KEY `webinar_extra_descriptions_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_extra_descriptions_upcoming_course_id_foreign` (`upcoming_course_id`);

--
-- Indexes for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_extra_description_id_foreign` (`webinar_extra_description_id`),
  ADD KEY `webinar_extra_description_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_filter_option_filter_option_id_foreign` (`filter_option_id`) USING BTREE,
  ADD KEY `webinar_filter_option_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_teacher_id_foreign` (`teacher_id`) USING BTREE;

--
-- Indexes for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reports_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reviews_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_reviews_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `webinar_reviews_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_translations_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=837;

--
-- AUTO_INCREMENT for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agora_history`
--
ALTER TABLE `agora_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_contents`
--
ALTER TABLE `ai_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_content_templates`
--
ALTER TABLE `ai_content_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ai_content_template_translations`
--
ALTER TABLE `ai_content_template_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `badge_translations`
--
ALTER TABLE `badge_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `become_instructors`
--
ALTER TABLE `become_instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_courses`
--
ALTER TABLE `book_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashback_rules`
--
ALTER TABLE `cashback_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cashback_rule_specification_items`
--
ALTER TABLE `cashback_rule_specification_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashback_rule_translations`
--
ALTER TABLE `cashback_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cashback_rule_users_groups`
--
ALTER TABLE `cashback_rule_users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_reports`
--
ALTER TABLE `comments_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forums`
--
ALTER TABLE `course_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_learning`
--
ALTER TABLE `course_learning`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_bundles`
--
ALTER TABLE `discount_bundles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_categories`
--
ALTER TABLE `discount_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_courses`
--
ALTER TABLE `discount_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_groups`
--
ALTER TABLE `discount_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_users`
--
ALTER TABLE `discount_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_translations`
--
ALTER TABLE `file_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter_translations`
--
ALTER TABLE `filter_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floating_bars`
--
ALTER TABLE `floating_bars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `floating_bar_translations`
--
ALTER TABLE `floating_bar_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `form_field_options`
--
ALTER TABLE `form_field_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_field_option_translations`
--
ALTER TABLE `form_field_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_field_translations`
--
ALTER TABLE `form_field_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `form_roles_users_groups`
--
ALTER TABLE `form_roles_users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `form_submissions`
--
ALTER TABLE `form_submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_submission_items`
--
ALTER TABLE `form_submission_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_translations`
--
ALTER TABLE `form_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_recommended_topics`
--
ALTER TABLE `forum_recommended_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_translations`
--
ALTER TABLE `forum_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_statistics`
--
ALTER TABLE `home_page_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_page_statistic_translations`
--
ALTER TABLE `home_page_statistic_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `installment_orders`
--
ALTER TABLE `installment_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_order_attachments`
--
ALTER TABLE `installment_order_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_order_payments`
--
ALTER TABLE `installment_order_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_reminders`
--
ALTER TABLE `installment_reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_specification_items`
--
ALTER TABLE `installment_specification_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_steps`
--
ALTER TABLE `installment_steps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `installment_step_translations`
--
ALTER TABLE `installment_step_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `installment_translations`
--
ALTER TABLE `installment_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `installment_user_groups`
--
ALTER TABLE `installment_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jazzcash_transactions`
--
ALTER TABLE `jazzcash_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting_times`
--
ALTER TABLE `meeting_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2264;

--
-- AUTO_INCREMENT for table `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `offline_banks`
--
ALTER TABLE `offline_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offline_bank_specifications`
--
ALTER TABLE `offline_bank_specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `offline_bank_specification_translations`
--
ALTER TABLE `offline_bank_specification_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offline_bank_translations`
--
ALTER TABLE `offline_bank_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_channels`
--
ALTER TABLE `payment_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16887;

--
-- AUTO_INCREMENT for table `prerequisites`
--
ALTER TABLE `prerequisites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_faqs`
--
ALTER TABLE `product_faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_files`
--
ALTER TABLE `product_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_filters`
--
ALTER TABLE `product_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `quizzes_new`
--
ALTER TABLE `quizzes_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quizzes_serie`
--
ALTER TABLE `quizzes_serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_types`
--
ALTER TABLE `quiz_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `registration_packages`
--
ALTER TABLE `registration_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `sales_log`
--
ALTER TABLE `sales_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3057;

--
-- AUTO_INCREMENT for table `selected_installments`
--
ALTER TABLE `selected_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selected_installment_steps`
--
ALTER TABLE `selected_installment_steps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_reminds`
--
ALTER TABLE `session_reminds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_translations`
--
ALTER TABLE `session_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_conversations`
--
ALTER TABLE `support_conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_departments`
--
ALTER TABLE `support_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `text_lessons`
--
ALTER TABLE `text_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_users`
--
ALTER TABLE `ticket_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trend_categories`
--
ALTER TABLE `trend_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_courses`
--
ALTER TABLE `upcoming_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_course_filter_option`
--
ALTER TABLE `upcoming_course_filter_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_course_followers`
--
ALTER TABLE `upcoming_course_followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_course_reports`
--
ALTER TABLE `upcoming_course_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_course_translations`
--
ALTER TABLE `upcoming_course_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;

--
-- AUTO_INCREMENT for table `users_badges`
--
ALTER TABLE `users_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_manual_purchase`
--
ALTER TABLE `users_manual_purchase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_occupations`
--
ALTER TABLE `users_occupations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_banks`
--
ALTER TABLE `user_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_bank_specifications`
--
ALTER TABLE `user_bank_specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_bank_specification_translations`
--
ALTER TABLE `user_bank_specification_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_bank_translations`
--
ALTER TABLE `user_bank_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_form_fields`
--
ALTER TABLE `user_form_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_selected_banks`
--
ALTER TABLE `user_selected_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_selected_bank_specifications`
--
ALTER TABLE `user_selected_bank_specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `waitlists`
--
ALTER TABLE `waitlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2026;

--
-- AUTO_INCREMENT for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounting`
--
ALTER TABLE `accounting`
  ADD CONSTRAINT `accounting_installment_payment_id_foreign` FOREIGN KEY (`installment_payment_id`) REFERENCES `installment_order_payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD CONSTRAINT `advertising_banners_translations_advertising_banner_id_foreign` FOREIGN KEY (`advertising_banner_id`) REFERENCES `advertising_banners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD CONSTRAINT `affiliates_affiliate_user_id_foreign` FOREIGN KEY (`affiliate_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affiliates_referred_user_id_foreign` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD CONSTRAINT `affiliates_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD CONSTRAINT `agora_history_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_contents`
--
ALTER TABLE `ai_contents`
  ADD CONSTRAINT `ai_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `ai_content_templates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_content_template_translations`
--
ALTER TABLE `ai_content_template_translations`
  ADD CONSTRAINT `ai_content_template_id_trans` FOREIGN KEY (`ai_content_template_id`) REFERENCES `ai_content_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD CONSTRAINT `badge_translations_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD CONSTRAINT `become_instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD CONSTRAINT `blog_translations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundles`
--
ALTER TABLE `bundles`
  ADD CONSTRAINT `bundles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundles_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundles_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  ADD CONSTRAINT `bundle_filter_option_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundle_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  ADD CONSTRAINT `bundle_translations_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  ADD CONSTRAINT `bundle_webinars_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundle_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_gift_id_foreign` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_installment_payment_id_foreign` FOREIGN KEY (`installment_payment_id`) REFERENCES `installment_order_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_product_discount_id_foreign` FOREIGN KEY (`product_discount_id`) REFERENCES `product_discounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_special_offer_id_foreign` FOREIGN KEY (`special_offer_id`) REFERENCES `special_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cashback_rule_specification_items`
--
ALTER TABLE `cashback_rule_specification_items`
  ADD CONSTRAINT `cashback_rule_specification_items_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_cashback_rule_id_foreign` FOREIGN KEY (`cashback_rule_id`) REFERENCES `cashback_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_specification_items_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rules_registration_package_id` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cashback_rule_translations`
--
ALTER TABLE `cashback_rule_translations`
  ADD CONSTRAINT `cashback_rule_translations_cashback_rule_id_foreign` FOREIGN KEY (`cashback_rule_id`) REFERENCES `cashback_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cashback_rule_users_groups`
--
ALTER TABLE `cashback_rule_users_groups`
  ADD CONSTRAINT `cashback_rule_users_groups_cashback_rule_id_foreign` FOREIGN KEY (`cashback_rule_id`) REFERENCES `cashback_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_users_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashback_rule_users_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD CONSTRAINT `certificate_template_id` FOREIGN KEY (`certificate_template_id`) REFERENCES `certificates_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `webinar_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD CONSTRAINT `comments_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_forums`
--
ALTER TABLE `course_forums`
  ADD CONSTRAINT `course_forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_forums_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  ADD CONSTRAINT `course_forum_answers_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `course_forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_forum_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD CONSTRAINT `course_learning_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  ADD CONSTRAINT `course_noticeboards_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_noticeboards_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  ADD CONSTRAINT `course_noticeboard_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `course_noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  ADD CONSTRAINT `delete_account_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_bundles`
--
ALTER TABLE `discount_bundles`
  ADD CONSTRAINT `discount_bundles_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `discount_bundles_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD CONSTRAINT `discount_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_categories_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD CONSTRAINT `discount_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `discount_courses_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD CONSTRAINT `discount_groups_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `discount_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD CONSTRAINT `discount_users_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `discount_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `faqs_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `faqs_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_faq_id_foreign` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `favorites_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `favorites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD CONSTRAINT `feature_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD CONSTRAINT `feature_webinar_translations_feature_webinar_id_foreign` FOREIGN KEY (`feature_webinar_id`) REFERENCES `feature_webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `files_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `files_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD CONSTRAINT `file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD CONSTRAINT `filter_option_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD CONSTRAINT `filter_translations_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `floating_bar_translations`
--
ALTER TABLE `floating_bar_translations`
  ADD CONSTRAINT `floating_bar_translations_floating_bar_id_foreign` FOREIGN KEY (`floating_bar_id`) REFERENCES `floating_bars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_foreign` FOREIGN KEY (`follower`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD CONSTRAINT `form_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_field_options`
--
ALTER TABLE `form_field_options`
  ADD CONSTRAINT `form_field_options_form_field_id_foreign` FOREIGN KEY (`form_field_id`) REFERENCES `form_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_field_option_translations`
--
ALTER TABLE `form_field_option_translations`
  ADD CONSTRAINT `form_field_option_id_trans` FOREIGN KEY (`form_field_option_id`) REFERENCES `form_field_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_field_translations`
--
ALTER TABLE `form_field_translations`
  ADD CONSTRAINT `form_field_translations_form_field_id_foreign` FOREIGN KEY (`form_field_id`) REFERENCES `form_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_roles_users_groups`
--
ALTER TABLE `form_roles_users_groups`
  ADD CONSTRAINT `form_roles_users_groups_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `form_roles_users_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `form_roles_users_groups_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `form_roles_users_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_submissions`
--
ALTER TABLE `form_submissions`
  ADD CONSTRAINT `form_submissions_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `form_submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_submission_items`
--
ALTER TABLE `form_submission_items`
  ADD CONSTRAINT `form_submission_items_form_field_id_foreign` FOREIGN KEY (`form_field_id`) REFERENCES `form_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `form_submission_items_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `form_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_translations`
--
ALTER TABLE `form_translations`
  ADD CONSTRAINT `form_translations_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forums_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  ADD CONSTRAINT `forum_featured_topics_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  ADD CONSTRAINT `forum_recommended_topic_items_recommended_topic_id_foreign` FOREIGN KEY (`recommended_topic_id`) REFERENCES `forum_recommended_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_recommended_topic_items_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD CONSTRAINT `forum_topics_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topics_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  ADD CONSTRAINT `forum_topic_attachments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_attachments_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  ADD CONSTRAINT `forum_topic_bookmarks_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  ADD CONSTRAINT `forum_topic_likes_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_likes_topic_post_id_foreign` FOREIGN KEY (`topic_post_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  ADD CONSTRAINT `forum_topic_posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  ADD CONSTRAINT `forum_topic_reports_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_reports_topic_post_id_foreign` FOREIGN KEY (`topic_post_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `forum_topic_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `forum_translations`
--
ALTER TABLE `forum_translations`
  ADD CONSTRAINT `forum_translations_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `gifts`
--
ALTER TABLE `gifts`
  ADD CONSTRAINT `gifts_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `gifts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `gifts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `gifts_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD CONSTRAINT `groups_registration_packages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `group_users`
--
ALTER TABLE `group_users`
  ADD CONSTRAINT `group_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `group_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `home_page_statistic_translations`
--
ALTER TABLE `home_page_statistic_translations`
  ADD CONSTRAINT `home_page_statistic_id` FOREIGN KEY (`home_page_statistic_id`) REFERENCES `home_page_statistics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_orders`
--
ALTER TABLE `installment_orders`
  ADD CONSTRAINT `installment_orders_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_registration_package_id_foreign` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_orders_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_product_order_id` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_order_attachments`
--
ALTER TABLE `installment_order_attachments`
  ADD CONSTRAINT `installment_order_id_attachment` FOREIGN KEY (`installment_order_id`) REFERENCES `installment_orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_order_payments`
--
ALTER TABLE `installment_order_payments`
  ADD CONSTRAINT `installment_order_id` FOREIGN KEY (`installment_order_id`) REFERENCES `installment_orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_order_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_order_payments_selected_installment_step_id_foreign` FOREIGN KEY (`selected_installment_step_id`) REFERENCES `selected_installment_steps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `installment_reminders`
--
ALTER TABLE `installment_reminders`
  ADD CONSTRAINT `installment_reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_specification_items`
--
ALTER TABLE `installment_specification_items`
  ADD CONSTRAINT `installment_specification_items_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_registration_package_id_foreign` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_specification_items_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_steps`
--
ALTER TABLE `installment_steps`
  ADD CONSTRAINT `installment_steps_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_step_translations`
--
ALTER TABLE `installment_step_translations`
  ADD CONSTRAINT `installment_step_translations_installment_step_id_foreign` FOREIGN KEY (`installment_step_id`) REFERENCES `installment_steps` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_translations`
--
ALTER TABLE `installment_translations`
  ADD CONSTRAINT `installment_translations_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `installment_user_groups`
--
ALTER TABLE `installment_user_groups`
  ADD CONSTRAINT `installment_user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `installment_user_groups_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD CONSTRAINT `meeting_times_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  ADD CONSTRAINT `navbar_buttons_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  ADD CONSTRAINT `navbar_button_translations_navbar_button_id_foreign` FOREIGN KEY (`navbar_button_id`) REFERENCES `navbar_buttons` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `noticeboards_organ_id_foreign` FOREIGN KEY (`organ_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `noticeboards_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD CONSTRAINT `noticeboards_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `noticeboards` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD CONSTRAINT `notifications_status_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offline_bank_specifications`
--
ALTER TABLE `offline_bank_specifications`
  ADD CONSTRAINT `offline_bank_specifications_offline_bank_id_foreign` FOREIGN KEY (`offline_bank_id`) REFERENCES `offline_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offline_bank_specification_translations`
--
ALTER TABLE `offline_bank_specification_translations`
  ADD CONSTRAINT `offline_bank_specification_id` FOREIGN KEY (`offline_bank_specification_id`) REFERENCES `offline_bank_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offline_bank_translations`
--
ALTER TABLE `offline_bank_translations`
  ADD CONSTRAINT `offline_bank_translations_offline_bank_id_foreign` FOREIGN KEY (`offline_bank_id`) REFERENCES `offline_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_offline_bank_id_foreign` FOREIGN KEY (`offline_bank_id`) REFERENCES `offline_banks` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_gift_id_foreign` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD CONSTRAINT `payku_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `payku_transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payout_user_selected_bank_id` FOREIGN KEY (`user_selected_bank_id`) REFERENCES `user_selected_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `permissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisite_id` FOREIGN KEY (`prerequisite_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `prerequisites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  ADD CONSTRAINT `product_category_id` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD CONSTRAINT `product_discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD CONSTRAINT `product_faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_faqs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  ADD CONSTRAINT `product_faq_id` FOREIGN KEY (`product_faq_id`) REFERENCES `product_faqs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_files`
--
ALTER TABLE `product_files`
  ADD CONSTRAINT `file_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `file_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  ADD CONSTRAINT `product_file_id` FOREIGN KEY (`product_file_id`) REFERENCES `product_files` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_filters`
--
ALTER TABLE `product_filters`
  ADD CONSTRAINT `product_filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  ADD CONSTRAINT `product_filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `product_filters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  ADD CONSTRAINT `product_filter_option_id` FOREIGN KEY (`product_filter_option_id`) REFERENCES `product_filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  ADD CONSTRAINT `product_filter_id` FOREIGN KEY (`product_filter_id`) REFERENCES `product_filters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_media`
--
ALTER TABLE `product_media`
  ADD CONSTRAINT `media_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `media_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_gift_id_foreign` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_orders_installment_order_id_foreign` FOREIGN KEY (`installment_order_id`) REFERENCES `installment_orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  ADD CONSTRAINT `product_selected_filter_options_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `product_filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_selected_filter_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  ADD CONSTRAINT `product_selected_specifications_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_selected_specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_selected_specifications_product_specification_id_foreign` FOREIGN KEY (`product_specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  ADD CONSTRAINT `selected_specification_id` FOREIGN KEY (`selected_specification_id`) REFERENCES `product_selected_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `specification_multi_value_id` FOREIGN KEY (`specification_multi_value_id`) REFERENCES `product_specification_multi_values` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  ADD CONSTRAINT `product_selected_specification_id_translations` FOREIGN KEY (`product_selected_specification_id`) REFERENCES `product_selected_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  ADD CONSTRAINT `product_specification_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_specification_categories_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  ADD CONSTRAINT `product_specification_multi_values_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  ADD CONSTRAINT `product_specification_multi_value_id` FOREIGN KEY (`product_specification_multi_value_id`) REFERENCES `product_specification_multi_values` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  ADD CONSTRAINT `product_specification_id` FOREIGN KEY (`product_specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD CONSTRAINT `promotion_translations_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchases_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `quizzes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `quizzes_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_new`
--
ALTER TABLE `quizzes_new`
  ADD CONSTRAINT `quizzes_new_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `quizzes_serie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `quizzes_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `quizzes_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD CONSTRAINT `quizzes_questions_answer_id` FOREIGN KEY (`quizzes_questions_answer_id`) REFERENCES `quizzes_questions_answers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `quizzes_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD CONSTRAINT `quiz_question_translations_quiz_question_id_foreign` FOREIGN KEY (`quizzes_question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD CONSTRAINT `quiz_translations_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rating_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `regions_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD CONSTRAINT `registration_package` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD CONSTRAINT `reserve_meetings_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserve_meetings_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserve_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD CONSTRAINT `rewards_accounting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_installment_payment_id_foreign` FOREIGN KEY (`installment_payment_id`) REFERENCES `installment_order_payments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD CONSTRAINT `sales_status_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `selected_installments`
--
ALTER TABLE `selected_installments`
  ADD CONSTRAINT `selected_installments_installment_id_foreign` FOREIGN KEY (`installment_id`) REFERENCES `installments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `selected_installments_installment_order_id_foreign` FOREIGN KEY (`installment_order_id`) REFERENCES `installment_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `selected_installments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `selected_installment_steps`
--
ALTER TABLE `selected_installment_steps`
  ADD CONSTRAINT `selected_installment_steps_installment_step_id_foreign` FOREIGN KEY (`installment_step_id`) REFERENCES `installment_steps` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `selected_installment_steps_selected_installment_id_foreign` FOREIGN KEY (`selected_installment_id`) REFERENCES `selected_installments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sessions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sessions_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sessions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD CONSTRAINT `session_reminds_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `session_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD CONSTRAINT `session_translations_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `special_offers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `special_offers_registration_package_id_foreign` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `special_offers_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `special_offers_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  ADD CONSTRAINT `subscribe_reminds_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD CONSTRAINT `subscribe_translations_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD CONSTRAINT `subscribe_uses_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_uses_installment_order_id_foreign` FOREIGN KEY (`installment_order_id`) REFERENCES `installment_orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_uses_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_uses_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscribe_uses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `supports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD CONSTRAINT `support_conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `support_conversations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD CONSTRAINT `support_department_id` FOREIGN KEY (`support_department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tags_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tags_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD CONSTRAINT `testimonial_translations_testimonial_id_foreign` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD CONSTRAINT `text_lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `text_lessons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `text_lessons_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD CONSTRAINT `text_lessons_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `text_lessons_attachments_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD CONSTRAINT `text_lesson_id` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD CONSTRAINT `ticket_translations_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD CONSTRAINT `ticket_users_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD CONSTRAINT `trend_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `upcoming_courses`
--
ALTER TABLE `upcoming_courses`
  ADD CONSTRAINT `upcoming_courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_courses_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_courses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `upcoming_course_filter_option`
--
ALTER TABLE `upcoming_course_filter_option`
  ADD CONSTRAINT `upcoming_course_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_course_filter_option_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `upcoming_course_followers`
--
ALTER TABLE `upcoming_course_followers`
  ADD CONSTRAINT `upcoming_course_followers_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_course_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `upcoming_course_reports`
--
ALTER TABLE `upcoming_course_reports`
  ADD CONSTRAINT `upcoming_course_reports_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `upcoming_course_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `upcoming_course_translations`
--
ALTER TABLE `upcoming_course_translations`
  ADD CONSTRAINT `upcoming_course_translations_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `users_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  ADD CONSTRAINT `users_cookie_security_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD CONSTRAINT `users_metas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD CONSTRAINT `users_occupations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_occupations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD CONSTRAINT `users_registration_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD CONSTRAINT `users_zoom_api_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_bank_specifications`
--
ALTER TABLE `user_bank_specifications`
  ADD CONSTRAINT `user_bank_specifications_user_bank_id_foreign` FOREIGN KEY (`user_bank_id`) REFERENCES `user_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_bank_specification_translations`
--
ALTER TABLE `user_bank_specification_translations`
  ADD CONSTRAINT `user_bank_specification_id` FOREIGN KEY (`user_bank_specification_id`) REFERENCES `user_bank_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_bank_translations`
--
ALTER TABLE `user_bank_translations`
  ADD CONSTRAINT `user_bank_translations_user_bank_id_foreign` FOREIGN KEY (`user_bank_id`) REFERENCES `user_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_form_fields`
--
ALTER TABLE `user_form_fields`
  ADD CONSTRAINT `user_form_fields_become_instructor_id_foreign` FOREIGN KEY (`become_instructor_id`) REFERENCES `become_instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_form_fields_form_field_id_foreign` FOREIGN KEY (`form_field_id`) REFERENCES `form_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_form_fields_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_selected_banks`
--
ALTER TABLE `user_selected_banks`
  ADD CONSTRAINT `user_selected_banks_user_bank_id_foreign` FOREIGN KEY (`user_bank_id`) REFERENCES `user_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_selected_banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_selected_bank_specifications`
--
ALTER TABLE `user_selected_bank_specifications`
  ADD CONSTRAINT `user_bank_specification_id_specifications` FOREIGN KEY (`user_bank_specification_id`) REFERENCES `user_bank_specifications` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_selected_bank_id_specifications` FOREIGN KEY (`user_selected_bank_id`) REFERENCES `user_selected_banks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `waitlists`
--
ALTER TABLE `waitlists`
  ADD CONSTRAINT `waitlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `waitlists_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinars`
--
ALTER TABLE `webinars`
  ADD CONSTRAINT `webinars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinars_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinars_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  ADD CONSTRAINT `webinar_assignments_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_assignments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_assignments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  ADD CONSTRAINT `webinar_assignment_attachments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  ADD CONSTRAINT `webinar_assignment_history_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_assignment_history_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_assignment_history_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  ADD CONSTRAINT `webinar_assignment_history_id` FOREIGN KEY (`assignment_history_id`) REFERENCES `webinar_assignment_history` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  ADD CONSTRAINT `webinar_assignment_id_translate_foreign` FOREIGN KEY (`webinar_assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD CONSTRAINT `webinar_chapters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_chapters_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_chapter_items_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD CONSTRAINT `webinar_chapter_id` FOREIGN KEY (`webinar_chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  ADD CONSTRAINT `webinar_extra_descriptions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_extra_descriptions_upcoming_course_id_foreign` FOREIGN KEY (`upcoming_course_id`) REFERENCES `upcoming_courses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_extra_descriptions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  ADD CONSTRAINT `webinar_extra_description_id_foreign` FOREIGN KEY (`webinar_extra_description_id`) REFERENCES `webinar_extra_descriptions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD CONSTRAINT `webinar_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_filter_option_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD CONSTRAINT `webinar_partner_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_partner_teacher_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD CONSTRAINT `webinar_reports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD CONSTRAINT `webinar_reviews_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `webinar_reviews_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD CONSTRAINT `webinar_translations_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
