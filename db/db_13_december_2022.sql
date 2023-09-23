-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2022 at 04:29 AM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kxzywecc_grailed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'backend/image/default-user.png',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'arobil@gmail.com', '2022-07-25 05:09:47', '$2y$10$vYXnG0QSADBouUBbxzPyxuRVQnZWlFZ8RXe1ORUOETi9A/1pl2fre', 'uploads/user/1666182388_634fecf4e5dbe.jpg', 'R4VCcTMB4xUgap1CL358k4ACwr7dQ2qhjLq31zPhprB8Z6MWXwbfkqi7q501', '2022-07-25 05:09:47', '2022-12-10 10:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_searches`
--

CREATE TABLE `admin_searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_category_id` bigint(255) UNSIGNED NOT NULL,
  `size_id` int(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_accept_offer` tinyint(4) DEFAULT 0,
  `is_smart_price` tinyint(4) DEFAULT 0,
  `smart_price` int(255) DEFAULT NULL,
  `min_price` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `show_phone` tinyint(1) NOT NULL DEFAULT 1,
  `phone_2` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` enum('active','sold','pending','declined') NOT NULL DEFAULT 'active',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `total_reports` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `drafted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `apartment` varchar(150) DEFAULT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `measure_scale` varchar(20) DEFAULT NULL,
  `measurements` text DEFAULT NULL,
  `shipping_region` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `slug`, `user_id`, `category_id`, `subcategory_id`, `child_category_id`, `size_id`, `color`, `condition`, `brand_id`, `price`, `is_accept_offer`, `is_smart_price`, `smart_price`, `min_price`, `description`, `phone`, `show_phone`, `phone_2`, `thumbnail`, `status`, `featured`, `popular`, `trending`, `total_reports`, `total_views`, `is_blocked`, `drafted_at`, `created_at`, `updated_at`, `address`, `apartment`, `state`, `city`, `postcode`, `country`, `long`, `lat`, `whatsapp`, `tags`, `measure_scale`, `measurements`, `shipping_region`) VALUES
(13, 'Hanes Men\'s Beefy Long Sleeve Three-Button Henley', 'hanes-mens-beefy-long-sleeve-three-button-henley', 4, 1, 2, 1, 2, '4', 'Gently Used', 0, 20.00, 0, 0, NULL, 15, 'About this Item\r\nHeavyweight cotton (Heathers are 60% cotton/40% polyester; Pebblestone is 75% cotton/25% polyester)\r\nHenley sports a three-button placket.\r\nFamously durable Beefy-T fabric.\r\nSoft, pure cotton feels terrific all day long.\r\nTraditional set-in sleeves for solids; raglan sleeves for colorblocks.\r\nHeavyweight and durable cotton jersey', '123456789', 0, '', 'uploads/addss_image/1666705207_6357e737d8210.jpg', 'sold', 0, 0, 0, 0, 93, 0, NULL, '2022-10-25 13:40:07', '2022-12-08 05:14:30', 'USA', 'USA', 'USA', 'USA', '2200', '1', 0, 0, '', NULL, NULL, NULL, NULL),
(14, 'About this Item Heavyweight cotton (Heathers are 60% cotton/40% polyester; Pebblestone is 75% cotton/25% polyester) Henley sports a three-button placket. Famously durable Beefy-T fabric. Soft, pure cotton feels terrific all day long. Traditional set-in sl', 'about-this-item-heavyweight-cotton-heathers-are-60-cotton40-polyester-pebblestone-is-75-cotton25-polyester-henley-sports-a-three-button-placket-famously-durable-beefy-t-fabric-soft-pure-cotton-feels-terrific-all-day-long-traditional-set-in-sleeves-for-sol', 4, 1, 3, 4, 5, '1', 'Used', 0, 25.00, 0, 0, NULL, 15, 'About this Item\r\nMale Model is 6’0” wearing a Size Medium. Female Model is 5’9” wearing size Small.\r\nEverSoft Ring Spun Cotton Provides Premium Softness Wash after Wash\r\nComfort waistband with inner exposed quick cord for adjustable waist\r\nDouble-needle stitching on the hems for added durability\r\nRelaxed banded bottom with Deep Pockets to keep Items secure', '123456785', 0, '', 'uploads/addss_image/1666705324_6357e7ac915a5.jpg', 'active', 0, 0, 0, 0, 27, 0, NULL, '2022-10-25 13:42:04', '2022-12-07 10:19:47', 'USA', 'USA', 'USA', 'USA', '2200', '2', 0, 0, '', NULL, NULL, NULL, NULL),
(15, 'test', 'test', 1, 1, 2, 2, 2, '3', 'Used', 5, 120.00, 0, 0, NULL, 111, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu egestas tellus. Maecenas consectetur libero non velit laoreet posuere. Nulla sit amet volutpat augue. Quisque malesuada vulputate ligula, non vehicula eros porttitor ut. Etiam mattis, leo vel ornare tincidunt, mi mauris aliquam magna, sit amet consectetur nibh tortor sed leo. In vel sollicitudin urna. Duis in lectus vel ipsum laoreet cursus ut sit amet orci. Aenean tincidunt elementum nunc, nec efficitur risus consectetur consequat.', NULL, 1, NULL, 'uploads/addss_image/1667104556_635dff2c8f8ed.jpg', 'pending', 0, 0, 0, 0, 4, 0, NULL, '2022-10-30 04:35:56', '2022-12-07 10:14:58', 'zinda park', 'sada', 'Gujarat', 'Gandhinagar', '1740', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 17, 1, 2, 2, 2, '2', 'new', NULL, 25.00, 0, 0, NULL, 22, 'Care Instructions: Machine Wash\r\nFit Type: Regular Fit\r\nRegular Fit Full Sleeve Polo is made of comfortable, Bio Washed cotton-poly pique fabric, a three-button placket, and ribbed Collar for a classic look.\r\nFabric Composition – Cotton 60% Poly 40% Blend, Bio Wash Pique Fabric.\r\nPattern - Solid Color Men’s Polo Tshirt, Rib Collar & Long Sleeve for Amazing Fit.; Classic \"American Crew\" Signature Polo with Logo Embroidery on Chest.\r\n“Made In India” by Socially Compliant MSME Factory. All Components Used to make this T-Shirt are Proudly \"Made in India\".\r\nCollar Style: Button Down; Material Type: Polycotton; Material Composition: 60% Cotton, 40% Polyester; Occasion Type: Casual', NULL, 1, NULL, 'uploads/addss_image/1667105269_635e01f547e4d.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 04:47:49', '2022-10-30 05:01:20', 'Bangalore', NULL, 'Gujarat', 'Gandhinagar', '2200', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 17, 1, 3, 6, 5, '2', 'new', 0, 25.00, 0, 0, NULL, 22, 'Care Instructions: Machine Wash\r\nFit Type: Regular Fit\r\nRegular Fit Full Sleeve Polo is made of comfortable, Bio Washed cotton-poly pique fabric, a three-button placket, and ribbed Collar for a classic look.\r\nFabric Composition – Cotton 60% Poly 40% Blend, Bio Wash Pique Fabric.\r\nPattern - Solid Color Men’s Polo Tshirt, Rib Collar & Long Sleeve for Amazing Fit.; Classic \"American Crew\" Signature Polo with Logo Embroidery on Chest.\r\n“Made In India” by Socially Compliant MSME Factory. All Components Used to make this T-Shirt are Proudly \"Made in India\".\r\nCollar Style: Button Down; Material Type: Polycotton; Material Composition: 60% Cotton, 40% Polyester; Occasion Type: Casual', NULL, 1, NULL, 'uploads/addss_image/1667105779_635e03f36f3d4.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 04:56:19', '2022-10-30 04:56:19', 'Bangalore', NULL, 'Gujarat', 'Gandhinagar', '2200', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 18, 1, 4, 8, 7, '2', 'new', 0, 25.00, 0, 0, NULL, 22, 'NAAAAAAAAAAAAA', NULL, 1, NULL, 'uploads/addss_image/1667108478_635e0e7eb9bd2.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 05:41:18', '2022-10-30 05:41:19', 'Bangalore', NULL, 'Gujarat', 'Gandhinagar', '2200', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 18, 1, 4, 8, 7, '2', 'new', 0, 25.00, 0, 0, NULL, 22, 'NAAAAAAAAAAAAA', NULL, 1, NULL, 'uploads/addss_image/1667108495_635e0e8fe8613.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 05:41:35', '2022-10-30 05:41:36', 'Bangalore', 'qaewdfr', 'Gujarat', 'Gandhinagar', '2200', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 18, 1, 4, 8, 7, '2', 'new', 0, 25.00, 0, 0, NULL, 22, 'NAAAAAAAAAAAAA', NULL, 1, NULL, 'uploads/addss_image/1667108496_635e0e90ec86d.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 05:41:36', '2022-10-30 05:41:36', 'Bangalore', 'qaewdfr', 'Gujarat', 'Gandhinagar', '2200', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 18, 1, 4, 8, 7, '2', 'new', 0, 25.00, 0, 0, NULL, 22, 'NAAAAAAAAAAAAA', NULL, 1, NULL, 'uploads/addss_image/1667108499_635e0e936bd1b.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 05:41:39', '2022-10-30 05:41:39', 'Bangalore', 'qaewdfr', 'Gujarat', 'Gandhinagar', '2200', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'AMERICAN CREW Full Sleeves Polo Collar T-Shirt for Men', 'american-crew-full-sleeves-polo-collar-t-shirt-for-men', 19, 1, 2, 2, 2, '2', 'Gently Used', 6, 20.00, 0, 0, NULL, 18, 'NAAA', NULL, 1, NULL, 'uploads/addss_image/1667128905_635e5e498cf3e.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-10-30 11:21:45', '2022-10-30 11:21:45', 'Bangalore', NULL, 'Gujarat', 'Gandhinagar', '2200', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'test item', 'test-item', 5, 1, 2, 1, 1, '1', 'Gently Used', 5, 120.00, 0, 0, NULL, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 1, NULL, 'uploads/adds_multiple/1667130200_635e63580c516.jpg', 'active', 0, 0, 0, 0, 16, 0, NULL, '2022-10-30 11:42:29', '2022-12-04 03:27:06', 'dhaka', 'dhaka', 'dhaka', 'dhaka', '12345678', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Nautica Men\'s Zip Up Windbreaker Bomber Jacket, Water and Wind Resistant', 'nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant', 20, 1, 4, 8, 14, '2', 'New', NULL, 30.00, 0, 0, NULL, 25, '90% Polyester, 10% Spandex\r\nImported\r\nZipper closure\r\nMachine Wash\r\nJACKET: This jacket is a must have! Fashioned with a stretchy blend, pockets and a zipper closure. Machine washable.\r\nCOMPOSITION: This high quality jacket is true to size and made from a stretchy blend designed for maximum comfort.\r\nWATER AND WIND RESISTANT: This jacket is water and wind resistant providing additional protection during inclement weather. With these features, you will stay dry, warm and comfortable all day!', NULL, 1, NULL, 'uploads/addss_image/1667196775_635f676799d2d.jpg', 'active', 0, 0, 0, 0, 32, 0, NULL, '2022-10-31 06:12:55', '2022-12-08 04:51:46', 'Dubai', NULL, 'USA', 'USA', '2200', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'as', 'as', 6, 1, 3, 4, 4, '1', 'Gently Used', 0, 99.00, 0, 0, NULL, 99, 'aaaaaa', NULL, 1, NULL, 'uploads/addss_image/1667316407_63613ab72ba8b.jpg', 'active', 0, 0, 0, 0, 38, 0, NULL, '2022-11-01 15:26:46', '2022-12-04 07:16:11', 'aa', '1', 'aaaa', 'aaa', '11111', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'as', 'as', 6, 1, 3, 4, 4, '1', 'Gently Used', 0, 99.00, 0, 0, NULL, 99, 'aaaaaa', NULL, 1, NULL, 'uploads/addss_image/1667316407_63613ab7dac30.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-11-01 15:26:47', '2022-11-01 15:26:47', 'aa', '1', 'aaaa', 'aaa', '11111', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Vintage Mickey Mouse MEMBER 70’s T-Shirt XL', 'vintage-mickey-mouse-member-70s-t-shirt-xl', 21, 1, 2, 1, 1, '1', 'Gently Used', 6, 120.00, 0, 0, NULL, 100, 'Size XL ( Chest  23.5 in. / Length 32.5 in. )  \r\n\r\nCondition 7/10\r\n\r\nPAYMENT : PAYPAL only\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 7-40 business days. Or maybe faster depending on the distance.\r\n\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667629637_6366024515cc5.jpg', 'active', 0, 0, 0, 0, 24, 0, NULL, '2022-11-05 06:27:16', '2022-11-23 06:07:06', 'dhaka', '123', 'dhaka', 'dhaka', '1234', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Vintage 90’s LETTERMAN JACKET LAKERS Magic Johnson 32', 'vintage-90s-letterman-jacket-lakers-magic-johnson-32', 21, 1, 3, 4, 4, '2', 'Gently Used', 5, 500.00, 0, 0, NULL, 480, 'Vintage 90’s LETTERMAN JACKET LOS ANGELES LAKERS Magic Johnson #32\r\n\r\nSize L-XL ( Chest 26.5 in. / Length 28 in. )  \r\n\r\nCondition 9.5/10 Very new, no flaws, beautiful and very rare. ( suitable for collection )\r\n\r\nPAYMENT : PAYPAL only\r\n\r\nSHIPPING : Thailand Thai Post\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 14-40 business days. Or maybe faster depending on the distance.\r\n\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667629738_636602aaa7577.jpg', 'active', 0, 0, 0, 0, 3, 0, NULL, '2022-11-05 06:28:58', '2022-12-04 03:21:52', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Vintage 90’s Stussy Pope Gold Is Still Dope RARE!! T-Shirt', 'vintage-90s-stussy-pope-gold-is-still-dope-rare-t-shirt', 21, 2, 13, 44, 35, '3', 'Gently Used', 5, 600.00, 0, 0, NULL, 500, 'Vintage Stussy 90’s Stussy Pope Gold Is Still Dope\r\n\r\nSize L ( W 22 / L 30 ) Inches\r\n\r\nCondition 7/10\r\n\r\nPAYMENT : PAYPAL only\r\nSHIPPING : Thailand Thai Post ( DHL EXPRESS + $15 )\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 10-30 business days. Or maybe faster depending on the distance. ( DHL EXPRESS 3-7 business days )\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667629850_6366031a6b376.jpg', 'active', 0, 0, 0, 0, 14, 0, NULL, '2022-11-05 06:30:50', '2022-11-12 13:44:46', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Vintage Naruto 2002 Shippuden Kakashi Story Anime T-Shirt XL', 'vintage-naruto-2002-shippuden-kakashi-story-anime-t-shirt-xl', 21, 2, 12, 46, 32, '3', 'Used', 1, 600.00, 0, 0, NULL, 120, 'Naruto 2002 Shippuden Kakashi Story Anime\r\n\r\nSize XL ( Chest 24 in. / Length 29 in. )  \r\n\r\nCondition 9/10\r\n\r\nPAYMENT : PAYPAL only\r\n\r\nSHIPPING : Thailand Thai Post\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 14-40 business days. Or maybe faster depending on the distance.\r\n\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667629904_6366035002638.jpg', 'active', 0, 0, 0, 0, 7, 0, NULL, '2022-11-05 06:31:43', '2022-11-23 06:01:35', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Vintage 90’s Rare NIRVANA SLIVER 1992 Giant Tag T-Shirt L', 'vintage-90s-rare-nirvana-sliver-1992-giant-tag-t-shirt-l', 21, 1, 4, 10, 7, '2', 'Gently Used', 4, 260.00, 0, 0, NULL, 180, 'Vintage 90’s Rare NIRVANA SLIVER 1992 Giant Tag\r\n\r\nSize L ( Chest 22.5 in. / Length 33.5 in. )  \r\n\r\nCondition 8/10\r\n\r\nPAYMENT : PAYPAL only\r\n\r\nSHIPPING : Thailand Thai Post\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 14-40 business days. Or maybe faster depending on the distance.\r\n\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667629979_6366039bbbaeb.jpg', 'active', 0, 0, 0, 0, 7, 0, NULL, '2022-11-05 06:32:59', '2022-11-27 14:20:49', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Vintage Nike ACG Techwear Jacket RARE 🔥🔥', 'vintage-nike-acg-techwear-jacket-rare', 21, 1, 5, 12, 8, '2', 'Gently Used', 5, 250.00, 0, 0, NULL, 100, 'Nike ACG Techwear Jacket Cheap\r\n\r\nSize L ( W 27 / L 33 ) Inches\r\n\r\nCondition 9.5/10 Old model, very rare, good condition, very beautiful. Vintage Thailand\r\n\r\nPAYMENT : PAYPAL only\r\nSHIPPING : Thailand Thai Post ( DHL EXPRESS + $15 )\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 10-30 business days. Or maybe faster depending on the distance. ( DHL EXPRESS 3-7 business days )\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667630161_63660451954ed.jpg', 'active', 0, 0, 0, 0, 17, 0, NULL, '2022-11-05 06:36:01', '2022-12-08 05:03:19', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Vintage 90’s STUSSY international Sweatshirt', 'vintage-90s-stussy-international-sweatshirt', 24, 1, 2, 1, 1, '1', 'Used', 5, 100.00, 0, 0, NULL, 80, 'Size L ( Chest 24 in. / Length 30 in. )  \r\n\r\nCondition 8/10\r\n\r\nPAYMENT : PAYPAL only\r\nSHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 7-40 business days. Or maybe faster depending on the distance.\r\n\r\n✅REFUNDS\r\n\"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions.\r\n\r\nPage : Closet8vintage', NULL, 1, NULL, 'uploads/addss_image/1667823830_6368f8d6ddbec.jpg', 'active', 0, 0, 0, 0, 17, 0, NULL, '2022-11-07 12:23:50', '2022-11-13 01:57:05', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Vintage 90’s Adidas Equipment Brown Logo T-Shirt 🟤🟤', 'vintage-90s-adidas-equipment-brown-logo-t-shirt', 24, 1, 2, 2, 2, '1', 'Gently Used', 5, 60.00, 0, 0, NULL, 50, '<p>Vintage 90’s Adidas Equipment Brown Logo Size L ( Chest 23.5 in. / Length 29 in. ) Condition 9/10 PAYMENT : PAYPAL only SHIPPING: Worldwide shipping with tracking number: Sending within 1-2 days after payment. And usually takes 7-40 business days. Or maybe faster depending on the distance. ✅REFUNDS \"No Refunds\" For Wrong Sizes So Please Check And Compare Measurements To Something You Own Before Bidding. Most Of My Items Are Vintage/Used Items, So Please Check Pictures And Ask Questions. Page : Closet8vintage</p>', NULL, 1, NULL, 'uploads/addss_image/1668232703_636f35ff89488.jpg', 'active', 1, 0, 0, 0, 25, 0, NULL, '2022-11-07 12:26:13', '2022-12-04 06:51:34', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '2', 0, 0, '', 'null', NULL, NULL, NULL),
(37, 'Puma t-shirt', 'puma-t-shirt', 25, 1, 2, 2, 2, '1', 'new', 1, 70.00, 0, 0, NULL, 50, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668245480_636f67e88b34f.jpg', 'active', 0, 0, 0, 0, 24, 0, NULL, '2022-11-12 09:31:19', '2022-11-29 05:00:10', 'street-11', 'Suite-12', 'New york', 'New york', '1234', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'champion vintage', 'champion-vintage', 25, 1, 2, 1, 1, '2', 'Gently Used', 6, 45.00, 0, 0, NULL, 20, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668246438_636f6ba6a36f7.jpg', 'active', 0, 0, 0, 0, 14, 0, NULL, '2022-11-12 09:47:17', '2022-12-03 14:13:58', 'street-1', 'suite-3', 'Newyork', 'Newyork', '1230', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'NIKE 1', 'nike-1', 25, 1, 2, 1, 3, '2', 'Gently Used', 5, 45.00, 0, 0, NULL, 30, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668246586_636f6c3a6ce5f.jpg', 'active', 0, 0, 0, 0, 5, 0, NULL, '2022-11-12 09:49:46', '2022-12-10 09:44:32', 'street-1', 'suite-3', 'Newyork', 'Newyork', '1340', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'NIKE', 'nike', 25, 1, 2, 1, 3, '2', 'Gently Used', 5, 45.00, 0, 0, NULL, 30, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668246586_636f6c3aacd31.jpg', 'active', 0, 0, 0, 0, 6, 0, NULL, '2022-11-12 09:49:46', '2022-11-13 04:15:58', 'street-1', 'suite-3', 'Newyork', 'Newyork', '1340', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Vintage', 'vintage', 25, 2, 8, 29, 19, '1', 'new', 6, 30.00, 0, 0, NULL, 25, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668248122_636f723ad5a73.jpg', 'active', 0, 0, 0, 0, 5, 0, NULL, '2022-11-12 10:15:22', '2022-11-28 14:23:25', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Japanese Vintage', 'japanese-vintage', 25, 2, 8, 29, 20, '4', 'new', 6, 35.00, 0, 0, NULL, 30, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668248223_636f729f53d42.jpg', 'active', 0, 0, 0, 0, 20, 0, NULL, '2022-11-12 10:17:03', '2022-11-28 14:23:32', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Lee Vintage', 'lee-vintage', 25, 2, 9, 38, 23, '3', 'new', 1, 67.00, 0, 0, NULL, 65, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668248401_636f735154556.jpg', 'active', 0, 0, 0, 0, 2, 0, NULL, '2022-11-12 10:20:01', '2022-12-03 10:58:26', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Lee Vintage yee', 'lee-vintage-yee', 25, 2, 9, 38, 25, '4', 'Gently Used', 4, 87.00, 0, 0, NULL, 67, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668248475_636f739b36db1.jpg', 'active', 0, 0, 0, 0, 11, 0, NULL, '2022-11-12 10:21:15', '2022-12-13 04:03:52', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Russian Belt bag', 'russian-belt-bag', 25, 2, 13, 42, 35, '5', 'Used', 2, 43.00, 0, 0, NULL, 40, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668250247_636f7a8708f42.jpg', 'active', 0, 0, 0, 0, 6, 0, NULL, '2022-11-12 10:50:46', '2022-12-07 02:47:24', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Mini Heels', 'mini-heels', 25, 2, 12, 46, 30, '1', 'Gently Used', 2, 33.00, 0, NULL, NULL, 31, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1668250339_636f7ae30d1f2.jpg', 'active', 0, 0, 0, 0, 6, 0, NULL, '2022-11-12 10:52:18', '2022-12-10 10:46:43', 'Dhaka, Mirpur', 'suite-3', 'dhaka', 'dhaka', '1213', '1', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\"}'),
(55, 'Ember Demi Trail Men\'s Hiking Shoes', 'ember-demi-trail-mens-hiking-shoes', 32, 1, 2, 1, 2, '1', 'Gently Used', 6, 100.00, 0, 0, NULL, 95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu egestas tellus. Maecenas consectetur libero non velit laoreet posuere. Nulla sit amet volutpat augue.', NULL, 1, NULL, 'uploads/addss_image/1668321741_637091cd08d9c.jpg', 'pending', 0, 0, 0, 0, 1, 0, NULL, '2022-11-13 06:42:20', '2022-11-16 09:14:06', 'mawna,sreepur', NULL, 'sreepur', 'Gazipur', '1740', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Ember Demi Trail Men\'s Hiking Shoes', 'ember-demi-trail-mens-hiking-shoes', 32, 1, 2, 2, 2, '3', 'Used', 4, 100.00, 0, 0, NULL, 70, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', NULL, 1, NULL, 'uploads/addss_image/1668322752_637095c0c1a6f.jpg', 'sold', 0, 0, 0, 0, 0, 0, NULL, '2022-11-13 06:59:12', '2022-11-16 09:14:02', 'mawna,sreepur', NULL, 'sreepur', 'Gazipur', '1740', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'NFL × Starter × Vintage', 'nfl-starter-vintage', 21, 1, 2, 1, 1, '2', 'Used', 6, 120.00, 1, 1, 80, 100, 'Payment : PAYPAL only\r\n✈️ Shipping: Worldwide shipping with tracking number: Ships within 1-3 days after payment. and generally takes 10-45 business days, or may be faster depending on the distance. Excluding holidays and festivals in each area\r\n☎️ Please leave your phone number when purchasing.\r\n✅ Refund\r\n\"No refunds\" for incorrect sizes. So please check and compare the measurements with what you own before bidding. Most of my items are vintage/secondhand. So please check the pictures and ask questions.\r\nPage : Bearryy.store\r\n\r\nThank you 😊', NULL, 1, NULL, 'uploads/adds_multiple/1668696487_637649a73b4ee.jpg', 'sold', 0, 0, 0, 0, 35, 0, NULL, '2022-11-17 04:05:45', '2022-12-05 00:22:09', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '⚡️QUICK SALE⚡️Dior by Hedi Slimane White \"Help Me\" Hoodie', 'quick-saledior-by-hedi-slimane-white-help-me-hoodie', 4, 1, 2, 1, 1, '1', 'Gently Used', 6, 500.00, 1, 1, 420, 450, '⚡️⚡️QUICK SALE SO SEND OFFERS\r\n9/10\r\nDior by Hedi Slimane White \"Help Me\" Hoodie\r\nSize XS, see measurements\r\n100% authentic\r\n\r\nTERMS AND CONDITIONS:\r\n\r\n- DON\'T OFFER IF YOU DO NOT PLAN ON PAYING OR ARE NOT PAYPAL READY\r\n- NO 60% OFFERS, MY PRICES ARE VERY REASONABLE SO DON\'T LOWBALL\r\n- NO TRADES, NO RETURNS and NO REFUNDS\r\n- Due to the quality differentiation between different monitors and due to different lighting conditions, the picture may not reflect the exact colour of the items.\r\n- Please pay attention to the measurements (usually in the last photo), as there might be differences due to the brand or model. We strive to give the most precise measurements to the best of our abilities considering different fabric types. Measurements are taken when laid flat with a + - 2cm error margin.', NULL, 1, NULL, 'uploads/addss_image/1668864523_6378da0b444c1.jpg', 'sold', 0, 0, 0, 0, 26, 0, NULL, '2022-11-19 13:28:42', '2022-12-08 05:14:39', 'dhaka, banani', 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', '1', NULL, NULL, NULL, NULL, 'in', '{\"Bust\":\"10\",\"Length\":\"20\",\"Shoulders\":\"30\",\"Waist\":\"15\"}', NULL),
(59, 'Ember Demi Trail Men\'s Hiking Shoes6', 'ember-demi-trail-mens-hiking-shoes6', 1, 1, 2, 1, 2, '2', 'Gently Used', 5, 23.00, 0, 0, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', NULL, 1, NULL, 'uploads/addss_image/1669185917_637dc17d932eb.jpg', 'pending', 0, 0, 0, 0, 4, 0, NULL, '2022-11-23 06:45:17', '2022-12-07 10:14:40', 'mawna,sreepur', NULL, 'sreepur', 'Gazipur', '1740', '2', NULL, NULL, NULL, NULL, 'cm', '{\"Bust\":null,\"Length\":null,\"Shoulders\":null,\"Waist\":null}', NULL),
(60, 'Log slave shirt for man', 'log-slave-shirt-for-man', 36, 1, 2, 1, 2, '3', 'Used', NULL, 250.00, 1, 0, 200, 120, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', NULL, 1, NULL, 'uploads/addss_image/1670045765_638ae045c8cdd.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-12-03 05:36:05', '2022-12-03 05:38:09', 'Janata Sarak', '307/4', 'Dhaka', 'Mirpur', '1203', '3', NULL, NULL, NULL, NULL, 'in', '{\"Bust\":\"25\",\"Length\":\"32\",\"Shoulders\":\"18\",\"Waist\":\"24\"}', '{\"United Kingdom\":\"25\",\"Asia\":\"20\",\"Europ\":\"40\"}'),
(62, 'fdsf', 'fdsf', 28, 1, 7, 26, 16, '1', 'Used', 3, 4344.00, 0, 0, NULL, NULL, 'cfsdafdsf', NULL, 1, NULL, 'uploads/addss_image/1670060766_638b1ade27bbd.jpg', 'pending', 0, 0, 0, 0, 1, 0, NULL, '2022-12-03 09:46:05', '2022-12-03 09:46:27', 'Dhaka', 'Dhaka', 'dhaka', 'dhaka', '65465', '2', NULL, NULL, NULL, NULL, 'in', '{\"Bust\":null,\"Length\":null,\"Sleeve Length\":null,\"Leg Opening\":null}', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(64, 'aaaaaa', 'aaaaaa', 6, 1, 3, 6, 4, '1', 'new', 5, 10.00, 0, 0, NULL, NULL, 'yuuuuu', NULL, 1, NULL, 'uploads/addss_image/1670124048_638c12106df75.jpg', 'pending', 0, 0, 0, 0, 8, 0, NULL, '2022-12-04 03:20:47', '2022-12-04 03:37:30', '11', NULL, '111', '11', '222212', '2', NULL, NULL, NULL, NULL, '', '[]', '{\"Asia\":\"35\"}'),
(65, 'Exclusive Polo t-shirt', 'exclusive-polo-t-shirt', 38, 1, 2, 2, 3, '2', 'New', 1, 75.00, 1, 0, 63, 70, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/addss_image/1670140910_638c53ee448f4.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-12-04 08:01:48', '2022-12-04 08:09:23', '854 Avocado Ave.', NULL, 'CA', 'Newport Beach', '92660', '226', NULL, NULL, NULL, NULL, 'in', '{\"Bust\":\"35\",\"Length\":\"29\",\"Shoulders\":\"8\",\"Waist\":\"37\"}', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(66, 'Japanese Gowns', 'japanese-gowns', 38, 2, 11, 36, 27, '5', 'New', 6, 65.00, 1, NULL, 55, 60, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, 1, NULL, 'uploads/adds_multiple/1670142412_638c59cc561a0.jpg', 'sold', 0, 0, 0, 0, 13, 0, NULL, '2022-12-04 08:19:06', '2022-12-08 00:01:35', '854 Avocado Ave.', NULL, 'CA', 'Newport Beach', '92660', '226', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(67, 'It has roots in a piece of classical Latin literature from 45 BC,', 'it-has-roots-in-a-piece-of-classical-latin-literature-from-45-bc', 27, 1, 6, 19, 12, '2', 'Gently Used', 6, 44.00, 1, 1, 22, 22, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, 1, NULL, 'uploads/addss_image/1670389585_63901f5163e88.jpeg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-12-07 05:06:25', '2022-12-07 05:06:25', 'a', NULL, 'a', 'a', 'a', '1', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(68, 'The generated Lorem Ipsum is therefore always free from repetition,', 'the-generated-lorem-ipsum-is-therefore-always-free-from-repetition', 27, 1, 6, 19, 11, '1', 'Gently Used', 5, 88.00, 1, 0, 53, 66, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, 1, NULL, 'uploads/addss_image/1670389979_639020dbef7df.jpg', 'pending', 0, 0, 0, 0, 1, 0, NULL, '2022-12-07 05:12:59', '2022-12-07 05:17:09', 'a', NULL, 'a', 'a', 'a', '1', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(69, 'Mana Informacija', 'mana-informacija', 27, 1, 5, 13, 9, '1', 'Used', 3, 34.00, 1, 0, 4334, 432, 'Mana InformacijaMana InformacijaMana InformacijaMana InformacijaMana InformacijaMana Informacija', NULL, 1, NULL, 'uploads/addss_image/1670407535_6390656f64adf.jpg', 'pending', 0, 0, 0, 0, 3, 0, NULL, '2022-12-07 10:05:34', '2022-12-07 10:14:04', 'a', NULL, 'a', 'a', 'a', '1', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}'),
(70, '45r3w4', '45r3w4', 27, 1, 6, 20, 11, '1', 'Used', 0, 3434.00, 1, 1, 43434, 34, '434', NULL, 1, NULL, 'uploads/addss_image/1670476840_639174281159e.jpg', 'pending', 0, 0, 0, 0, 0, 0, NULL, '2022-12-08 05:20:39', '2022-12-08 05:20:40', 'a', NULL, 'a', 'a', 'a', '1', NULL, NULL, NULL, NULL, '', '[]', '{\"United State\":\"50\",\"Canada\":\"55\",\"United Kingdom\":\"55\",\"Europe\":\"55\",\"Australia \\/ NZ\":\"40\",\"Asia\":\"35\",\"Other\":\"25\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ads_sizes`
--

CREATE TABLE `ads_sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `sub_category_id` int(255) NOT NULL,
  `child_category_id` int(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_sizes`
--

INSERT INTO `ads_sizes` (`id`, `size`, `category_id`, `sub_category_id`, `child_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Small', 1, 2, NULL, 1, '2022-10-19 07:00:28', '2022-10-19 07:00:28'),
(2, 'Medium', 1, 2, NULL, 1, '2022-10-19 07:00:44', '2022-10-19 07:00:44'),
(3, 'Large', 1, 2, NULL, 1, '2022-10-19 07:01:01', '2022-10-19 07:01:01'),
(4, 'Small', 1, 3, NULL, 1, '2022-10-19 08:10:32', '2022-10-19 08:10:32'),
(5, 'Medium', 1, 3, NULL, 1, '2022-10-19 08:10:42', '2022-10-19 08:10:42'),
(6, 'Large', 1, 3, NULL, 1, '2022-10-19 08:10:52', '2022-10-19 08:10:52'),
(7, 'Small', 1, 4, NULL, 1, '2022-10-19 08:11:17', '2022-10-19 08:11:17'),
(8, 'Small', 1, 5, NULL, 1, '2022-10-19 08:17:49', '2022-10-19 08:17:49'),
(9, 'Medium', 1, 5, NULL, 1, '2022-10-19 08:18:01', '2022-10-19 08:18:01'),
(10, 'Large', 1, 5, NULL, 1, '2022-10-19 08:18:12', '2022-10-19 08:18:12'),
(11, 'Small', 1, 6, NULL, 1, '2022-10-19 08:22:05', '2022-10-19 08:22:05'),
(12, 'Medium', 1, 6, NULL, 1, '2022-10-19 08:22:21', '2022-10-19 08:22:21'),
(13, 'Large', 1, 6, NULL, 1, '2022-10-19 08:22:54', '2022-10-19 08:22:54'),
(14, 'Medium', 1, 4, NULL, 1, '2022-10-19 08:23:09', '2022-10-19 08:23:09'),
(15, 'Large', 1, 4, NULL, 1, '2022-10-19 08:23:19', '2022-10-19 08:23:19'),
(16, 'Small', 1, 7, NULL, 1, '2022-10-19 08:23:38', '2022-10-19 08:23:38'),
(17, 'Medium', 1, 7, NULL, 1, '2022-10-19 08:23:50', '2022-10-19 08:23:50'),
(18, 'Large', 1, 7, NULL, 1, '2022-10-19 08:24:01', '2022-10-19 08:24:01'),
(19, 'Small', 2, 8, NULL, 1, '2022-10-19 08:33:28', '2022-10-19 08:33:28'),
(20, 'Medium', 2, 8, NULL, 1, '2022-10-19 08:33:49', '2022-10-19 08:33:49'),
(21, 'Large', 2, 8, NULL, 1, '2022-10-19 08:34:21', '2022-10-19 08:34:21'),
(22, 'Small', 2, 9, NULL, 1, '2022-10-19 08:34:39', '2022-10-19 08:34:39'),
(23, 'Medium', 2, 9, NULL, 1, '2022-10-19 08:34:49', '2022-10-19 08:34:49'),
(24, 'Medium', 2, 9, NULL, 1, '2022-10-19 08:35:00', '2022-10-19 08:35:00'),
(25, 'Large', 2, 9, NULL, 1, '2022-10-19 08:35:15', '2022-10-19 08:35:15'),
(26, 'Small', 2, 10, NULL, 1, '2022-10-19 08:35:27', '2022-10-19 08:35:27'),
(27, 'Small', 2, 11, NULL, 1, '2022-10-19 08:43:52', '2022-10-19 08:43:52'),
(28, 'Medium', 2, 11, NULL, 1, '2022-10-19 08:44:03', '2022-10-19 08:44:03'),
(29, 'Large', 2, 11, NULL, 1, '2022-10-19 08:44:28', '2022-10-19 08:44:28'),
(30, 'Small', 2, 12, NULL, 1, '2022-10-19 08:49:21', '2022-10-19 08:49:21'),
(31, 'Medium', 2, 12, NULL, 1, '2022-10-19 08:49:32', '2022-10-19 08:49:32'),
(32, 'Large', 2, 12, NULL, 1, '2022-10-19 08:49:45', '2022-10-19 08:49:45'),
(33, 'Small', 2, 13, NULL, 1, '2022-10-19 11:37:46', '2022-10-19 11:37:46'),
(34, 'Medium', 2, 13, NULL, 1, '2022-10-19 11:37:58', '2022-10-19 11:37:58'),
(35, 'Large', 2, 13, NULL, 1, '2022-10-19 11:38:12', '2022-10-19 11:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `ads_tags`
--

CREATE TABLE `ads_tags` (
  `id` int(11) NOT NULL,
  `ad_id` int(255) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_tags`
--

INSERT INTO `ads_tags` (`id`, `ad_id`, `tag_name`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'cotton', 1, '2022-10-19 07:08:25', '2022-10-19 07:08:25'),
(3, 2, 'Cotton', 1, '2022-10-19 08:13:16', '2022-10-19 08:13:16'),
(4, 3, 'Parasuite', 1, '2022-10-19 08:16:03', '2022-10-19 08:16:03'),
(5, 4, 'Leather', 1, '2022-10-19 08:19:55', '2022-10-19 08:19:55'),
(6, 5, 'streched', 1, '2022-10-19 08:27:41', '2022-10-19 08:27:41'),
(7, 6, 'Leather', 1, '2022-10-19 08:30:58', '2022-10-19 08:30:58'),
(8, 7, 'cotton', 1, '2022-10-19 08:38:18', '2022-10-19 08:38:18'),
(9, 8, 'well fabric', 1, '2022-10-19 08:46:03', '2022-10-19 08:46:03'),
(10, 9, 'leather', 1, '2022-10-19 11:40:42', '2022-10-19 11:40:42'),
(11, 10, 'Formal', 1, '2022-10-19 12:43:34', '2022-10-19 12:43:34'),
(12, 11, 'Good', 1, '2022-10-19 12:46:33', '2022-10-19 12:46:33'),
(13, 12, 'Bad', 1, '2022-10-25 12:38:51', '2022-10-25 12:38:51'),
(14, 13, 'Good', 1, '2022-10-25 13:40:14', '2022-10-25 13:40:14'),
(15, 14, 'Good', 1, '2022-10-25 13:42:05', '2022-10-25 13:42:05'),
(16, 15, 'test', 1, '2022-10-30 04:35:57', '2022-10-30 04:35:57'),
(17, 16, 'Best', 1, '2022-10-30 04:47:49', '2022-10-30 04:47:49'),
(18, 16, 'Cotton', 1, '2022-10-30 04:47:49', '2022-10-30 04:47:49'),
(19, 17, 'BEST', 1, '2022-10-30 04:56:19', '2022-10-30 04:56:19'),
(20, 21, 'NA', 1, '2022-10-30 05:41:39', '2022-10-30 05:41:39'),
(21, 22, 'Good', 1, '2022-10-30 11:21:45', '2022-10-30 11:21:45'),
(22, 22, 'Cotton', 1, '2022-10-30 11:21:45', '2022-10-30 11:21:45'),
(24, 23, 'test', 1, '2022-10-30 11:43:20', '2022-10-30 11:43:20'),
(25, 25, 'Good', 1, '2022-10-31 06:10:25', '2022-10-31 06:10:25'),
(27, 24, 'Good', 1, '2022-10-31 06:11:06', '2022-10-31 06:11:06'),
(36, 26, 'Good', 1, '2022-10-31 06:15:33', '2022-10-31 06:15:33'),
(37, 27, 'a', 1, '2022-11-01 15:26:47', '2022-11-01 15:26:47'),
(38, 28, 'a', 1, '2022-11-01 15:26:47', '2022-11-01 15:26:47'),
(39, 29, 'test', 1, '2022-11-05 06:27:17', '2022-11-05 06:27:17'),
(40, 29, 'test2', 1, '2022-11-05 06:27:17', '2022-11-05 06:27:17'),
(41, 30, 'test', 1, '2022-11-05 06:28:58', '2022-11-05 06:28:58'),
(42, 31, 'test', 1, '2022-11-05 06:30:50', '2022-11-05 06:30:50'),
(43, 32, 'test', 1, '2022-11-05 06:31:44', '2022-11-05 06:31:44'),
(44, 33, 'test', 1, '2022-11-05 06:32:59', '2022-11-05 06:32:59'),
(45, 34, 'test', 1, '2022-11-05 06:36:01', '2022-11-05 06:36:01'),
(46, 35, 'tshirt', 1, '2022-11-07 12:23:50', '2022-11-07 12:23:50'),
(47, 36, 'tshirt', 1, '2022-11-07 12:26:14', '2022-11-07 12:26:14'),
(48, 41, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(49, 40, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(50, 42, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(51, 43, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(52, 38, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(53, 37, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(54, 45, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(55, 39, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(56, 44, 't-shirt', 1, '2022-11-12 09:31:20', '2022-11-12 09:31:20'),
(57, 46, 't-shirt', 1, '2022-11-12 09:47:18', '2022-11-12 09:47:18'),
(59, 48, 't-shirt', 1, '2022-11-12 09:49:46', '2022-11-12 09:49:46'),
(60, 47, 't-shirt', 1, '2022-11-12 09:57:22', '2022-11-12 09:57:22'),
(61, 49, 'blouses', 1, '2022-11-12 10:15:22', '2022-11-12 10:15:22'),
(62, 50, 'blouses', 1, '2022-11-12 10:17:03', '2022-11-12 10:17:03'),
(63, 51, 'pant', 1, '2022-11-12 10:20:01', '2022-11-12 10:20:01'),
(64, 52, 'pant', 1, '2022-11-12 10:21:15', '2022-11-12 10:21:15'),
(65, 53, 'belt bag', 1, '2022-11-12 10:50:47', '2022-11-12 10:50:47'),
(67, 55, 'demin', 1, '2022-11-13 06:42:22', '2022-11-13 06:42:22'),
(68, 55, 'shose', 1, '2022-11-13 06:42:22', '2022-11-13 06:42:22'),
(69, 56, 'denim', 1, '2022-11-13 06:59:15', '2022-11-13 06:59:15'),
(70, 56, 'shose', 1, '2022-11-13 06:59:15', '2022-11-13 06:59:15'),
(75, 57, 'test', 1, '2022-11-17 14:48:07', '2022-11-17 14:48:07'),
(76, 58, 'test', 1, '2022-11-19 13:28:43', '2022-11-19 13:28:43'),
(77, 59, 'test', 1, '2022-11-23 06:45:19', '2022-11-23 06:45:19'),
(82, 60, 'best brand', 1, '2022-12-03 05:38:09', '2022-12-03 05:38:09'),
(83, 60, 'good finish', 1, '2022-12-03 05:38:09', '2022-12-03 05:38:09'),
(84, 60, 'black', 1, '2022-12-03 05:38:09', '2022-12-03 05:38:09'),
(85, 60, 'shirt', 1, '2022-12-03 05:38:09', '2022-12-03 05:38:09'),
(89, 61, 'new', 1, '2022-12-03 09:35:52', '2022-12-03 09:35:52'),
(90, 61, 'good', 1, '2022-12-03 09:35:52', '2022-12-03 09:35:52'),
(91, 61, 'product', 1, '2022-12-03 09:35:52', '2022-12-03 09:35:52'),
(92, 62, 'fdsf', 1, '2022-12-03 09:46:07', '2022-12-03 09:46:07'),
(93, 54, 'heels', 1, '2022-12-03 11:00:14', '2022-12-03 11:00:14'),
(109, 63, 'new', 1, '2022-12-03 12:47:15', '2022-12-03 12:47:15'),
(110, 63, 'old', 1, '2022-12-03 12:47:15', '2022-12-03 12:47:15'),
(111, 63, 'premium', 1, '2022-12-03 12:47:15', '2022-12-03 12:47:15'),
(112, 64, 'a', 1, '2022-12-04 03:20:48', '2022-12-04 03:20:48'),
(114, 65, 't-shirt', 1, '2022-12-04 08:09:23', '2022-12-04 08:09:23'),
(117, 66, 'gowns', 1, '2022-12-04 08:26:52', '2022-12-04 08:26:52'),
(118, 67, 'new', 1, '2022-12-07 05:06:27', '2022-12-07 05:06:27'),
(122, 68, 'Ipsum', 1, '2022-12-07 05:15:08', '2022-12-07 05:15:08'),
(123, 68, 'Lorem', 1, '2022-12-07 05:15:08', '2022-12-07 05:15:08'),
(124, 68, 'therefore', 1, '2022-12-07 05:15:08', '2022-12-07 05:15:08'),
(126, 69, 'fesdff', 1, '2022-12-07 10:09:04', '2022-12-07 10:09:04'),
(127, 70, 'fdsf', 1, '2022-12-08 05:20:45', '2022-12-08 05:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `ad_features`
--

CREATE TABLE `ad_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_features`
--

INSERT INTO `ad_features` (`id`, `ad_id`, `name`, `created_at`, `updated_at`) VALUES
(7, 4, 'Best quality', '2022-10-19 08:19:53', '2022-10-19 08:19:53'),
(9, 6, 'Good quality', '2022-10-19 08:30:58', '2022-10-19 08:30:58'),
(12, 8, 'Good quality', '2022-10-19 09:09:10', '2022-10-19 09:09:10'),
(13, 5, 'Good quality', '2022-10-19 09:09:21', '2022-10-19 09:09:21'),
(14, 7, 'Good quality', '2022-10-19 09:09:36', '2022-10-19 09:09:36'),
(15, 3, 'Best quality', '2022-10-19 09:09:57', '2022-10-19 09:09:57'),
(16, 1, 'Good quality', '2022-10-19 09:10:22', '2022-10-19 09:10:22'),
(17, 2, 'Best quality', '2022-10-19 09:10:36', '2022-10-19 09:10:36'),
(18, 9, 'Best quality', '2022-10-19 11:40:33', '2022-10-19 11:40:33'),
(19, 10, 'Best quality', '2022-10-19 12:43:30', '2022-10-19 12:43:30'),
(20, 11, 'Best quality', '2022-10-19 12:46:31', '2022-10-19 12:46:31'),
(21, 12, 'Best quality', '2022-10-25 12:38:51', '2022-10-25 12:38:51'),
(22, 12, 'Best quality', '2022-10-25 12:38:51', '2022-10-25 12:38:51'),
(23, 13, 'Good', '2022-10-25 13:40:08', '2022-10-25 13:40:08'),
(24, 14, 'Good', '2022-10-25 13:42:05', '2022-10-25 13:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `ad_galleries`
--

CREATE TABLE `ad_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_galleries`
--

INSERT INTO `ad_galleries` (`id`, `ad_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/adds_multiple/1666163185_634fa1f132472.jpg', '2022-10-19 07:06:25', '2022-10-19 07:06:25'),
(2, 1, 'uploads/adds_multiple/1666163185_634fa1f15a305.jpg', '2022-10-19 07:06:25', '2022-10-19 07:06:25'),
(3, 1, 'uploads/adds_multiple/1666163185_634fa1f169d81.jpg', '2022-10-19 07:06:25', '2022-10-19 07:06:25'),
(4, 1, 'uploads/adds_multiple/1666163185_634fa1f183595.jpg', '2022-10-19 07:06:25', '2022-10-19 07:06:25'),
(5, 1, 'uploads/adds_multiple/1666163185_634fa1f19ffb8.jpg', '2022-10-19 07:06:25', '2022-10-19 07:06:25'),
(6, 2, 'uploads/adds_multiple/1666167191_634fb1971076f.jpg', '2022-10-19 08:13:11', '2022-10-19 08:13:11'),
(7, 2, 'uploads/adds_multiple/1666167191_634fb1973a88b.jpg', '2022-10-19 08:13:11', '2022-10-19 08:13:11'),
(8, 2, 'uploads/adds_multiple/1666167191_634fb1975b119.jpg', '2022-10-19 08:13:11', '2022-10-19 08:13:11'),
(9, 3, 'uploads/adds_multiple/1666167361_634fb2413dcb1.jpg', '2022-10-19 08:16:01', '2022-10-19 08:16:01'),
(10, 3, 'uploads/adds_multiple/1666167361_634fb2416d888.jpg', '2022-10-19 08:16:01', '2022-10-19 08:16:01'),
(11, 3, 'uploads/adds_multiple/1666167361_634fb2419b3df.jpg', '2022-10-19 08:16:02', '2022-10-19 08:16:02'),
(12, 4, 'uploads/adds_multiple/1666167593_634fb32942958.jpg', '2022-10-19 08:19:53', '2022-10-19 08:19:53'),
(13, 4, 'uploads/adds_multiple/1666167593_634fb32956906.jpg', '2022-10-19 08:19:53', '2022-10-19 08:19:53'),
(14, 5, 'uploads/adds_multiple/1666168059_634fb4fb58771.jpg', '2022-10-19 08:27:39', '2022-10-19 08:27:39'),
(15, 5, 'uploads/adds_multiple/1666168059_634fb4fbb053e.jpg', '2022-10-19 08:27:39', '2022-10-19 08:27:39'),
(16, 5, 'uploads/adds_multiple/1666168059_634fb4fbc9dd1.jpg', '2022-10-19 08:27:39', '2022-10-19 08:27:39'),
(17, 6, 'uploads/adds_multiple/1666168257_634fb5c15f393.jpg', '2022-10-19 08:30:57', '2022-10-19 08:30:57'),
(18, 6, 'uploads/adds_multiple/1666168257_634fb5c17e011.jpg', '2022-10-19 08:30:58', '2022-10-19 08:30:58'),
(19, 6, 'uploads/adds_multiple/1666168258_634fb5c23d305.jpg', '2022-10-19 08:30:58', '2022-10-19 08:30:58'),
(20, 7, 'uploads/adds_multiple/1666168696_634fb77873298.jpg', '2022-10-19 08:38:16', '2022-10-19 08:38:16'),
(21, 7, 'uploads/adds_multiple/1666168696_634fb77890f5d.jpg', '2022-10-19 08:38:16', '2022-10-19 08:38:16'),
(22, 7, 'uploads/adds_multiple/1666168696_634fb778adfc9.jpg', '2022-10-19 08:38:16', '2022-10-19 08:38:16'),
(23, 8, 'uploads/adds_multiple/1666169162_634fb94a86c43.jpg', '2022-10-19 08:46:02', '2022-10-19 08:46:02'),
(24, 8, 'uploads/adds_multiple/1666169162_634fb94abb0bf.jpg', '2022-10-19 08:46:02', '2022-10-19 08:46:02'),
(25, 9, 'uploads/adds_multiple/1666179632_634fe230d87ad.jpg', '2022-10-19 11:40:32', '2022-10-19 11:40:32'),
(26, 9, 'uploads/adds_multiple/1666179633_634fe2310532c.jpg', '2022-10-19 11:40:33', '2022-10-19 11:40:33'),
(27, 9, 'uploads/adds_multiple/1666179633_634fe2312068a.jpg', '2022-10-19 11:40:33', '2022-10-19 11:40:33'),
(28, 10, 'uploads/adds_multiple/1666183409_634ff0f1cfcc5.jpg', '2022-10-19 12:43:29', '2022-10-19 12:43:29'),
(29, 10, 'uploads/adds_multiple/1666183410_634ff0f20137a.jpg', '2022-10-19 12:43:30', '2022-10-19 12:43:30'),
(30, 11, 'uploads/adds_multiple/1666183590_634ff1a6a50b0.jpg', '2022-10-19 12:46:30', '2022-10-19 12:46:30'),
(31, 11, 'uploads/adds_multiple/1666183590_634ff1a6dfef0.jpg', '2022-10-19 12:46:30', '2022-10-19 12:46:30'),
(32, 11, 'uploads/adds_multiple/1666183591_634ff1a7181ab.jpg', '2022-10-19 12:46:31', '2022-10-19 12:46:31'),
(33, 12, 'uploads/adds_multiple/1666701531_6357d8db231d5.jpg', '2022-10-25 12:38:51', '2022-10-25 12:38:51'),
(34, 13, 'uploads/adds_multiple/1666705208_6357e7384b19c.jpg', '2022-10-25 13:40:08', '2022-10-25 13:40:08'),
(35, 13, 'uploads/adds_multiple/1666705208_6357e73878cb4.jpg', '2022-10-25 13:40:08', '2022-10-25 13:40:08'),
(36, 14, 'uploads/adds_multiple/1666705324_6357e7acc5223.jpg', '2022-10-25 13:42:04', '2022-10-25 13:42:04'),
(37, 14, 'uploads/adds_multiple/1666705324_6357e7acf3ee7.jpg', '2022-10-25 13:42:05', '2022-10-25 13:42:05'),
(38, 15, 'uploads/adds_multiple/1667104556_635dff2cd482a.jpg', '2022-10-30 04:35:56', '2022-10-30 04:35:56'),
(39, 15, 'uploads/adds_multiple/1667104556_635dff2cf03f3.jpg', '2022-10-30 04:35:56', '2022-10-30 04:35:56'),
(40, 16, 'uploads/adds_multiple/1667105269_635e01f584f16.jpg', '2022-10-30 04:47:49', '2022-10-30 04:47:49'),
(41, 16, 'uploads/adds_multiple/1667105269_635e01f5a5239.jpg', '2022-10-30 04:47:49', '2022-10-30 04:47:49'),
(42, 17, 'uploads/adds_multiple/1667105779_635e03f3a7aae.jpg', '2022-10-30 04:56:19', '2022-10-30 04:56:19'),
(43, 17, 'uploads/adds_multiple/1667105779_635e03f3cf149.jpg', '2022-10-30 04:56:19', '2022-10-30 04:56:19'),
(44, 18, 'uploads/adds_multiple/1667108479_635e0e7f26464.jpg', '2022-10-30 05:41:19', '2022-10-30 05:41:19'),
(45, 18, 'uploads/adds_multiple/1667108479_635e0e7f53ef1.jpg', '2022-10-30 05:41:19', '2022-10-30 05:41:19'),
(46, 19, 'uploads/adds_multiple/1667108496_635e0e90b4600.jpg', '2022-10-30 05:41:36', '2022-10-30 05:41:36'),
(47, 19, 'uploads/adds_multiple/1667108496_635e0e90e8d61.jpg', '2022-10-30 05:41:36', '2022-10-30 05:41:36'),
(48, 20, 'uploads/adds_multiple/1667108497_635e0e9138ea5.jpg', '2022-10-30 05:41:37', '2022-10-30 05:41:37'),
(49, 20, 'uploads/adds_multiple/1667108497_635e0e916c570.jpg', '2022-10-30 05:41:37', '2022-10-30 05:41:37'),
(50, 21, 'uploads/adds_multiple/1667108499_635e0e93af8a5.jpg', '2022-10-30 05:41:39', '2022-10-30 05:41:39'),
(51, 21, 'uploads/adds_multiple/1667108499_635e0e93d2b07.jpg', '2022-10-30 05:41:39', '2022-10-30 05:41:39'),
(53, 23, 'uploads/adds_multiple/1667130200_635e6358de222.jpg', '2022-10-30 11:43:20', '2022-10-30 11:43:20'),
(54, 25, 'uploads/adds_multiple/1667196625_635f66d18f87c.jpg', '2022-10-31 06:10:25', '2022-10-31 06:10:25'),
(55, 24, 'uploads/adds_multiple/1667196625_635f66d1ba6dc.jpg', '2022-10-31 06:10:25', '2022-10-31 06:10:25'),
(67, 26, 'uploads/adds_multiple/1667196933_635f68050f8d5.jpg', '2022-10-31 06:15:33', '2022-10-31 06:15:33'),
(68, 26, 'uploads/adds_multiple/1667196933_635f680513a5e.jpg', '2022-10-31 06:15:33', '2022-10-31 06:15:33'),
(69, 55, 'uploads/adds_multiple/1668321741_637091cd26407.jpg', '2022-11-13 06:42:21', '2022-11-13 06:42:21'),
(70, 55, 'uploads/adds_multiple/1668321741_637091cd3b2b9.jpg', '2022-11-13 06:42:22', '2022-11-13 06:42:22'),
(71, 56, 'uploads/adds_multiple/1668322752_637095c0e08cc.jpg', '2022-11-13 06:59:14', '2022-11-13 06:59:14'),
(72, 56, 'uploads/adds_multiple/1668322754_637095c299751.jpg', '2022-11-13 06:59:14', '2022-11-13 06:59:14'),
(73, 56, 'uploads/adds_multiple/1668322754_637095c2b6259.jpg', '2022-11-13 06:59:14', '2022-11-13 06:59:14'),
(74, 56, 'uploads/adds_multiple/1668322754_637095c2ce2ea.jpg', '2022-11-13 06:59:15', '2022-11-13 06:59:15'),
(75, 57, 'uploads/adds_multiple/1668696487_637649a7813d0.jpg', '2022-11-17 14:48:07', '2022-11-17 14:48:07'),
(76, 57, 'uploads/adds_multiple/1668696487_637649a789cb6.jpg', '2022-11-17 14:48:07', '2022-11-17 14:48:07'),
(77, 57, 'uploads/adds_multiple/1668696487_637649a7be0d7.jpg', '2022-11-17 14:48:07', '2022-11-17 14:48:07'),
(78, 58, 'uploads/adds_multiple/1668864523_6378da0b6424c.jpg', '2022-11-19 13:28:43', '2022-11-19 13:28:43'),
(79, 58, 'uploads/adds_multiple/1668864523_6378da0bb7e08.jpg', '2022-11-19 13:28:43', '2022-11-19 13:28:43'),
(80, 59, 'uploads/adds_multiple/1669185918_637dc17e05bb3.jpg', '2022-11-23 06:45:18', '2022-11-23 06:45:18'),
(81, 59, 'uploads/adds_multiple/1669185918_637dc17e32282.jpg', '2022-11-23 06:45:18', '2022-11-23 06:45:18'),
(82, 59, 'uploads/adds_multiple/1669185919_637dc17f1612c.jpg', '2022-11-23 06:45:19', '2022-11-23 06:45:19'),
(83, 60, 'uploads/adds_multiple/1670045765_638ae045eae80.jpg', '2022-12-03 05:36:06', '2022-12-03 05:36:06'),
(84, 60, 'uploads/adds_multiple/1670045766_638ae0464b75e.jpg', '2022-12-03 05:36:06', '2022-12-03 05:36:06'),
(85, 61, 'uploads/adds_multiple/1670059710_638b16be8afe1.jpg', '2022-12-03 09:28:32', '2022-12-03 09:28:32'),
(86, 61, 'uploads/adds_multiple/1670059712_638b16c096764.jpg', '2022-12-03 09:28:32', '2022-12-03 09:28:32'),
(87, 61, 'uploads/adds_multiple/1670059712_638b16c0ad9c5.jpg', '2022-12-03 09:28:32', '2022-12-03 09:28:32'),
(88, 61, 'uploads/adds_multiple/1670059712_638b16c0c540e.jpg', '2022-12-03 09:28:33', '2022-12-03 09:28:33'),
(89, 61, 'uploads/adds_multiple/1670059713_638b16c12c8fc.jpg', '2022-12-03 09:28:33', '2022-12-03 09:28:33'),
(90, 61, 'uploads/adds_multiple/1670059713_638b16c147be8.jpg', '2022-12-03 09:28:33', '2022-12-03 09:28:33'),
(91, 61, 'uploads/adds_multiple/1670059713_638b16c16156e.jpg', '2022-12-03 09:28:33', '2022-12-03 09:28:33'),
(95, 62, 'uploads/adds_multiple/1670060766_638b1ade45435.jpg', '2022-12-03 09:46:06', '2022-12-03 09:46:06'),
(96, 62, 'uploads/adds_multiple/1670060766_638b1ade7b533.jpg', '2022-12-03 09:46:07', '2022-12-03 09:46:07'),
(97, 62, 'uploads/adds_multiple/1670060767_638b1adf608a1.jpg', '2022-12-03 09:46:07', '2022-12-03 09:46:07'),
(98, 63, 'uploads/adds_multiple/1670071341_638b442df1658.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(99, 63, 'uploads/adds_multiple/1670071342_638b442e23390.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(100, 63, 'uploads/adds_multiple/1670071342_638b442e44e9a.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(101, 63, 'uploads/adds_multiple/1670071342_638b442e6931c.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(102, 63, 'uploads/adds_multiple/1670071342_638b442e8357b.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(103, 63, 'uploads/adds_multiple/1670071342_638b442e9baf8.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(104, 63, 'uploads/adds_multiple/1670071342_638b442eb5738.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(105, 63, 'uploads/adds_multiple/1670071342_638b442ece775.jpg', '2022-12-03 12:42:22', '2022-12-03 12:42:22'),
(110, 63, 'uploads/adds_multiple/1670071343_638b442f9091c.jpg', '2022-12-03 12:42:23', '2022-12-03 12:42:23'),
(111, 63, 'uploads/adds_multiple/1670071343_638b442fabdab.jpg', '2022-12-03 12:42:23', '2022-12-03 12:42:23'),
(112, 63, 'uploads/adds_multiple/1670071343_638b442fe488a.jpg', '2022-12-03 12:42:23', '2022-12-03 12:42:23'),
(113, 63, 'uploads/adds_multiple/1670071344_638b443010d41.jpg', '2022-12-03 12:42:24', '2022-12-03 12:42:24'),
(114, 63, 'uploads/adds_multiple/1670071344_638b443039e10.jpg', '2022-12-03 12:42:24', '2022-12-03 12:42:24'),
(115, 63, 'uploads/adds_multiple/1670071344_638b443060bb7.jpeg', '2022-12-03 12:42:24', '2022-12-03 12:42:24'),
(116, 63, 'uploads/adds_multiple/1670071344_638b4430dc4b9.jpg', '2022-12-03 12:42:24', '2022-12-03 12:42:24'),
(117, 65, 'uploads/adds_multiple/1670141362_638c55b2cbcdb.jpg', '2022-12-04 08:09:23', '2022-12-04 08:09:23'),
(118, 66, 'uploads/adds_multiple/1670142384_638c59b0e3536.jpg', '2022-12-04 08:26:25', '2022-12-04 08:26:25'),
(119, 67, 'uploads/adds_multiple/1670389585_63901f51c29d4.jpg', '2022-12-07 05:06:27', '2022-12-07 05:06:27'),
(120, 67, 'uploads/adds_multiple/1670389587_63901f53618bd.jpg', '2022-12-07 05:06:27', '2022-12-07 05:06:27'),
(121, 68, 'uploads/adds_multiple/1670389980_639020dc4d3ef.jpg', '2022-12-07 05:13:00', '2022-12-07 05:13:00'),
(122, 68, 'uploads/adds_multiple/1670390106_6390215a35e98.jpeg', '2022-12-07 05:15:07', '2022-12-07 05:15:07'),
(123, 68, 'uploads/adds_multiple/1670390107_6390215b911bc.jpg', '2022-12-07 05:15:08', '2022-12-07 05:15:08'),
(124, 68, 'uploads/adds_multiple/1670390108_6390215ca02a8.jpg', '2022-12-07 05:15:08', '2022-12-07 05:15:08'),
(125, 69, 'uploads/adds_multiple/1670407535_6390656fbf60c.jpg', '2022-12-07 10:05:35', '2022-12-07 10:05:35'),
(126, 70, 'uploads/adds_multiple/1670476840_63917428328bc.jpg', '2022-12-08 05:20:40', '2022-12-08 05:20:40'),
(127, 70, 'uploads/adds_multiple/1670476840_6391742858a87.jpg', '2022-12-08 05:20:40', '2022-12-08 05:20:40'),
(128, 70, 'uploads/adds_multiple/1670476840_639174286f903.jpg', '2022-12-08 05:20:42', '2022-12-08 05:20:42'),
(129, 70, 'uploads/adds_multiple/1670476842_6391742a946ab.jpg', '2022-12-08 05:20:42', '2022-12-08 05:20:42'),
(130, 70, 'uploads/adds_multiple/1670476842_6391742aac418.jpg', '2022-12-08 05:20:42', '2022-12-08 05:20:42'),
(131, 70, 'uploads/adds_multiple/1670476842_6391742ac9ace.jpg', '2022-12-08 05:20:42', '2022-12-08 05:20:42'),
(132, 70, 'uploads/adds_multiple/1670476842_6391742ae34b7.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(133, 70, 'uploads/adds_multiple/1670476843_6391742b333eb.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(134, 70, 'uploads/adds_multiple/1670476843_6391742b4e9ba.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(135, 70, 'uploads/adds_multiple/1670476843_6391742b6a1d5.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(136, 70, 'uploads/adds_multiple/1670476843_6391742b81140.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(137, 70, 'uploads/adds_multiple/1670476843_6391742bbefed.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(138, 70, 'uploads/adds_multiple/1670476843_6391742bd9994.jpg', '2022-12-08 05:20:43', '2022-12-08 05:20:43'),
(139, 70, 'uploads/adds_multiple/1670476843_6391742bf3270.jpg', '2022-12-08 05:20:44', '2022-12-08 05:20:44'),
(140, 70, 'uploads/adds_multiple/1670476844_6391742c45028.jpeg', '2022-12-08 05:20:44', '2022-12-08 05:20:44'),
(141, 70, 'uploads/adds_multiple/1670476844_6391742cab0b6.jpg', '2022-12-08 05:20:44', '2022-12-08 05:20:44'),
(142, 70, 'uploads/adds_multiple/1670476845_6391742d01d1c.jpg', '2022-12-08 05:20:45', '2022-12-08 05:20:45'),
(143, 70, 'uploads/adds_multiple/1670476845_6391742d196cd.jpg', '2022-12-08 05:20:45', '2022-12-08 05:20:45'),
(144, 70, 'uploads/adds_multiple/1670476845_6391742d2f396.jpg', '2022-12-08 05:20:45', '2022-12-08 05:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` varchar(255) NOT NULL,
  `image` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `post_id`, `name`, `email`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'rabin', 'rabinmia@gmail.com', 'fdsafdsf', 1, '2022-11-12 12:16:40', '2022-11-12 12:16:40'),
(2, 2, 'rabin', 'rabinmia@gmail.com', 'sdfsdfdsfsdf', 1, '2022-11-12 12:16:54', '2022-11-12 12:16:54'),
(3, 2, 'rabin', 'rabinmia@gmail.com', 'aa', 1, '2022-11-12 12:17:01', '2022-11-12 12:17:01'),
(4, 1, 'mamunul_haque', 'mamunul_haque@gmail.com', 'test', 1, '2022-11-12 12:18:29', '2022-11-12 12:18:29'),
(5, 2, 'Mubarak', 'mubaraktech355@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 0, '2022-12-04 07:01:11', '2022-12-04 07:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Puma', 'puma', '2022-10-19 06:07:35', '2022-10-19 06:07:35'),
(2, 'Bata', 'bata', '2022-10-19 06:07:39', '2022-10-19 06:07:39'),
(3, 'Apex', 'apex', '2022-10-19 06:07:55', '2022-10-19 06:07:55'),
(4, 'Adidas', 'adidas', '2022-10-19 06:07:59', '2022-10-19 06:07:59'),
(5, 'Nike', 'nike', '2022-10-19 06:08:05', '2022-10-19 06:08:05'),
(6, 'La Coste', 'la-coste', '2022-10-19 06:08:11', '2022-10-19 06:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` longtext DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `icon`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MENSWEAR', 'uploads/category/o1vk0AGUf1u64PijVOYAZeKI7DOVww9vzIWcHEfi.jpg', 'menswear', 'fas fa-ad', 0, 1, '2022-10-19 06:09:06', '2022-10-19 06:09:06'),
(2, 'WOMENSWEAR', 'uploads/category/nGaKkDQs6RNcZKQyPBzAZ87Vkk8lkrbslO3X6vQE.jpg', 'womenswear', 'fas fa-audio-description', 0, 1, '2022-10-19 06:09:56', '2022-10-19 06:09:56'),
(3, 'SNEAKERS', 'uploads/category/s6n2UKdCn6DcuH8MbmYaYvPZUMNTK6xF1ftmPzlM.jpg', 'sneakers', 'fas fa-audio-description', 0, 1, '2022-10-19 06:12:59', '2022-10-19 06:12:59'),
(4, 'STAFF PICKS', 'uploads/category/WMg8hy9emucsZWrYNXDncvwww2tEcPY48rHnX6Di.jpg', 'staff-picks', 'fas fa-audio-description', 0, 1, '2022-10-19 06:13:46', '2022-10-19 06:13:46'),
(5, 'COLLECTIONS', 'uploads/category/pLyqePFCcETePfqaMxtl3o1Z0dAVW7e5nr3vha8q.jpg', 'collections', 'fas fa-audio-description', 0, 1, '2022-10-19 06:13:59', '2022-10-19 06:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `category_custom_field`
--

CREATE TABLE `category_custom_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'LONG SLEEVE T-SHIRTS', 'long-sleeve-t-shirts', 1, '2022-10-19 06:57:29', '2022-10-19 06:57:29'),
(2, 2, 'POLOS', 'polos', 1, '2022-10-19 06:57:50', '2022-10-19 06:57:50'),
(3, 2, 'SHIRTS (BUTTON UPS)', 'shirts-button-ups', 1, '2022-10-19 06:58:11', '2022-10-19 06:58:11'),
(4, 3, 'CASUAL PANTS', 'casual-pants', 1, '2022-10-19 08:00:41', '2022-10-19 08:00:41'),
(5, 3, 'CROPPED PANTS', 'cropped-pants', 1, '2022-10-19 08:00:53', '2022-10-19 08:00:53'),
(6, 3, 'DENIM', 'denim', 1, '2022-10-19 08:01:06', '2022-10-19 08:01:06'),
(7, 3, 'LEGGINS', 'leggins', 1, '2022-10-19 08:01:11', '2022-10-19 08:01:11'),
(8, 4, 'BOMBERS', 'bombers', 1, '2022-10-19 08:01:27', '2022-10-19 08:01:27'),
(9, 4, 'CLOAK CAPES', 'cloak-capes', 1, '2022-10-19 08:01:42', '2022-10-19 08:01:42'),
(10, 4, 'DENIM JACKETS', 'denim-jackets', 1, '2022-10-19 08:01:57', '2022-10-19 08:01:57'),
(11, 4, 'HEAVY COATS', 'heavy-coats', 1, '2022-10-19 08:02:05', '2022-10-19 08:02:05'),
(12, 5, 'BOOTS', 'boots', 1, '2022-10-19 08:02:18', '2022-10-19 08:02:18'),
(13, 5, 'CASUAL LEATHERS', 'casual-leathers', 1, '2022-10-19 08:02:26', '2022-10-19 08:02:26'),
(14, 5, 'FORMAL SHOES', 'formal-shoes', 1, '2022-10-19 08:02:38', '2022-10-19 08:02:38'),
(15, 3, 'HI-TOP SNEAKERS', 'hi-top-sneakers', 1, '2022-10-19 08:02:50', '2022-10-19 08:02:50'),
(16, 5, 'LOW-TOP SNEAKES', 'low-top-sneakes', 1, '2022-10-19 08:03:17', '2022-10-19 08:03:17'),
(17, 5, 'SANDALS', 'sandals', 1, '2022-10-19 08:03:24', '2022-10-19 08:03:24'),
(18, 6, 'BLAZERS', 'blazers', 1, '2022-10-19 08:03:38', '2022-10-19 08:03:38'),
(19, 6, 'FORMAL SHIRTING', 'formal-shirting', 1, '2022-10-19 08:03:56', '2022-10-19 08:03:56'),
(20, 6, 'FORMAL TROUSERS', 'formal-trousers', 1, '2022-10-19 08:04:04', '2022-10-19 08:04:04'),
(21, 6, 'SUITS', 'suits', 1, '2022-10-19 08:04:20', '2022-10-19 08:04:20'),
(22, 6, 'TUXEDOS', 'tuxedos', 1, '2022-10-19 08:04:27', '2022-10-19 08:04:27'),
(23, 6, 'VESTS', 'vests', 1, '2022-10-19 08:04:32', '2022-10-19 08:04:32'),
(24, 7, 'BAGS & LUGGAGE', 'bags-luggage', 1, '2022-10-19 08:05:10', '2022-10-19 08:05:10'),
(25, 7, 'GLASSES', 'glasses', 1, '2022-10-19 08:05:35', '2022-10-19 08:05:35'),
(26, 7, 'HATS', 'hats', 1, '2022-10-19 08:05:56', '2022-10-19 08:05:56'),
(27, 7, 'WALLETS', 'wallets', 1, '2022-10-19 08:06:01', '2022-10-19 08:06:01'),
(28, 7, 'SUNGLASSES', 'sunglasses', 1, '2022-10-19 08:06:19', '2022-10-19 08:06:19'),
(29, 8, 'BLOUSES', 'blouses', 1, '2022-10-19 08:06:54', '2022-10-19 08:06:54'),
(30, 8, 'BODY SUITS', 'body-suits', 1, '2022-10-19 08:07:05', '2022-10-19 08:07:05'),
(31, 8, 'BUTTON UPS', 'button-ups', 1, '2022-10-19 08:07:33', '2022-10-19 08:07:33'),
(32, 8, 'CROP TOPS', 'crop-tops', 1, '2022-10-19 08:07:39', '2022-10-19 08:07:39'),
(33, 11, 'MINI DRESSES', 'mini-dresses', 1, '2022-10-19 08:42:13', '2022-10-19 08:42:13'),
(34, 11, 'MAXI DRESSES', 'maxi-dresses', 1, '2022-10-19 08:42:27', '2022-10-19 08:42:27'),
(35, 11, 'MIDI DRESSES', 'midi-dresses', 1, '2022-10-19 08:42:42', '2022-10-19 08:42:42'),
(36, 11, 'GOWNS', 'gowns', 1, '2022-10-19 08:42:52', '2022-10-19 08:42:52'),
(37, 5, 'HEELS', 'heels', 1, '2022-10-19 08:48:49', '2022-10-19 08:48:49'),
(38, 9, 'JEANS', 'jeans', 1, '2022-10-19 11:24:04', '2022-10-19 11:24:04'),
(39, 9, 'JOGGERS', 'joggers', 1, '2022-10-19 11:24:12', '2022-10-19 11:24:12'),
(40, 9, 'JUMPSUITS', 'jumpsuits', 1, '2022-10-19 11:24:31', '2022-10-19 11:24:31'),
(41, 13, 'BACKPACKS', 'backpacks', 1, '2022-10-19 11:34:24', '2022-10-19 11:34:24'),
(42, 13, 'BELT BAGS', 'belt-bags', 1, '2022-10-19 11:34:43', '2022-10-19 11:34:43'),
(43, 13, 'MINI BAGS', 'mini-bags', 1, '2022-10-19 11:35:06', '2022-10-19 11:35:06'),
(44, 13, 'BUCKET BAGS', 'bucket-bags', 1, '2022-10-19 11:35:15', '2022-10-19 11:35:15'),
(45, 13, 'HOBO BAGS', 'hobo-bags', 1, '2022-10-19 11:35:29', '2022-10-19 11:35:29'),
(46, 12, 'HEELS', 'heels', 1, '2022-10-20 04:25:36', '2022-10-20 04:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_main_banner` varchar(255) DEFAULT NULL,
  `home_counter_background` varchar(255) DEFAULT NULL,
  `home_mobile_app_banner` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT NULL,
  `home_description` varchar(255) DEFAULT NULL,
  `download_app` varchar(255) DEFAULT NULL,
  `newsletter_content` varchar(255) DEFAULT NULL,
  `membership_content` varchar(255) DEFAULT NULL,
  `create_account` varchar(255) DEFAULT NULL,
  `post_ads` varchar(255) DEFAULT NULL,
  `start_earning` varchar(255) DEFAULT NULL,
  `terms_background` varchar(255) DEFAULT NULL,
  `terms_body` text DEFAULT NULL,
  `about_background` varchar(255) DEFAULT NULL,
  `about_video_thumb` varchar(255) DEFAULT NULL,
  `about_body` text DEFAULT NULL,
  `privacy_background` varchar(255) DEFAULT NULL,
  `privacy_body` text DEFAULT NULL,
  `contact_background` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `get_membership_background` varchar(255) DEFAULT NULL,
  `get_membership_image` varchar(255) DEFAULT NULL,
  `pricing_plan_background` varchar(255) DEFAULT NULL,
  `faq_background` varchar(255) DEFAULT NULL,
  `faq_content` varchar(255) DEFAULT NULL,
  `manage_ads_content` varchar(255) DEFAULT NULL,
  `chat_content` varchar(255) DEFAULT NULL,
  `verified_user_content` varchar(255) DEFAULT NULL,
  `dashboard_overview_background` varchar(255) DEFAULT NULL,
  `dashboard_post_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_my_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_plan_background` varchar(255) DEFAULT NULL,
  `dashboard_account_setting_background` varchar(255) DEFAULT NULL,
  `dashboard_favorite_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_messenger_background` varchar(255) DEFAULT NULL,
  `posting_rules_background` varchar(255) DEFAULT NULL,
  `posting_rules_body` text DEFAULT NULL,
  `blog_background` varchar(255) DEFAULT NULL,
  `ads_background` varchar(255) DEFAULT NULL,
  `coming_soon_title` varchar(255) DEFAULT NULL,
  `coming_soon_subtitle` varchar(255) DEFAULT NULL,
  `maintenance_title` varchar(255) DEFAULT NULL,
  `maintenance_subtitle` varchar(255) DEFAULT NULL,
  `e404_title` varchar(255) DEFAULT NULL,
  `e404_subtitle` varchar(255) DEFAULT NULL,
  `e404_image` varchar(255) DEFAULT NULL,
  `e500_title` varchar(255) DEFAULT NULL,
  `e500_subtitle` varchar(255) DEFAULT NULL,
  `e500_image` varchar(255) DEFAULT NULL,
  `e503_title` varchar(255) DEFAULT NULL,
  `e503_subtitle` varchar(255) DEFAULT NULL,
  `e503_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `home_main_banner`, `home_counter_background`, `home_mobile_app_banner`, `home_title`, `home_description`, `download_app`, `newsletter_content`, `membership_content`, `create_account`, `post_ads`, `start_earning`, `terms_background`, `terms_body`, `about_background`, `about_video_thumb`, `about_body`, `privacy_background`, `privacy_body`, `contact_background`, `contact_number`, `contact_email`, `contact_address`, `get_membership_background`, `get_membership_image`, `pricing_plan_background`, `faq_background`, `faq_content`, `manage_ads_content`, `chat_content`, `verified_user_content`, `dashboard_overview_background`, `dashboard_post_ads_background`, `dashboard_my_ads_background`, `dashboard_plan_background`, `dashboard_account_setting_background`, `dashboard_favorite_ads_background`, `dashboard_messenger_background`, `posting_rules_background`, `posting_rules_body`, `blog_background`, `ads_background`, `coming_soon_title`, `coming_soon_subtitle`, `maintenance_title`, `maintenance_subtitle`, `e404_title`, `e404_subtitle`, `e404_image`, `e500_title`, `e500_subtitle`, `e500_image`, `e503_title`, `e503_subtitle`, `e503_image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Buy, Sell And Find Just About Anythink.', 'Buy And Sell Everything From Used Cars To Mobile Phones And Computers, Or Search For Property And More All Over The World!', 'Sed Luctus Nibh At Consectetur Tempor. Proin Et Ipsum Tincidunt, Maximus Turpis Id, Mollis Lacus. Maecenas Nec Risus A Urna Sollicitudin Aliquet. Maecenas Pretium Tristique Sapien', 'Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis.', 'Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis Neque Auctor.', 'Vestibulum Ante Ipsum Primis In Faucibus Orci Luctus Et Ultrices Posuere Cubilia Curae. Donec Non Lorem Erat. Sed Vitae Vene.', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.', 'Vestibulum Quis Consectetur Est. Fusce Hendrerit Neque At Facilisis Facilisis. Praesent A Pretium Elit. Nulla Aliquam Puru.', NULL, '<p>Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp;</p>', NULL, 'https://youtu.be/s7wmiS2mSXY', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.', NULL, '<p>Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.</p>', NULL, '+88 01990572321', 'info@grailed.com', 'Dhaka, Bangladesh', NULL, NULL, NULL, NULL, 'Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Etiam Commodo Vel Ligula.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi<p>', NULL, NULL, NULL, NULL, NULL, NULL, 'Opps! Page Not Found!', 'We didn\'t find the page you are looking. Please back to home page.', 'frontend/images/bg/error.png', 'Opps! Page Not Found!', 'We didn\'t find the page you are looking. Please back to home page.', 'frontend/default_images/error-banner.png', 'Opps! Page Not Found!', 'We didn\'t find the page you are looking. Please back to home page.', 'frontend/default_images/error-banner.png', '2022-07-25 05:09:47', '2022-12-10 11:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 1, '2022-10-19 07:01:18', '2022-10-19 07:01:18'),
(2, 'Red', 1, '2022-10-19 07:03:06', '2022-10-19 07:03:06'),
(3, 'Green', 1, '2022-10-19 07:03:15', '2022-10-19 07:03:15'),
(4, 'White', 1, '2022-10-19 07:03:22', '2022-10-19 07:03:22'),
(5, 'Blue', 1, '2022-10-19 07:03:32', '2022-10-19 07:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject_id` int(255) NOT NULL,
  `reason_id` int(255) NOT NULL,
  `listing_url` varchar(255) NOT NULL,
  `screenshot` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_helps`
--

CREATE TABLE `contact_helps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_helps`
--

INSERT INTO `contact_helps` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Something I sold', '2022-11-12 07:14:33', '2022-11-12 07:14:33'),
(2, 'Something I purchased', '2022-11-12 07:14:33', '2022-11-12 07:14:33'),
(3, 'My account', '2022-11-12 07:14:33', '2022-11-12 07:14:33'),
(4, 'Something else', '2022-11-12 07:14:33', '2022-11-12 07:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `cookies`
--

CREATE TABLE `cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allow_cookies` tinyint(1) NOT NULL DEFAULT 1,
  `cookie_name` varchar(255) NOT NULL DEFAULT 'gdpr_cookie',
  `cookie_expiration` tinyint(4) NOT NULL DEFAULT 30,
  `force_consent` tinyint(1) NOT NULL DEFAULT 0,
  `darkmode` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) NOT NULL DEFAULT 'en',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `approve_button_text` varchar(255) NOT NULL,
  `decline_button_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookies`
--

INSERT INTO `cookies` (`id`, `allow_cookies`, `cookie_name`, `cookie_expiration`, `force_consent`, `darkmode`, `language`, `title`, `description`, `approve_button_text`, `decline_button_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'gdpr_cookie', 30, 0, 0, 'en', 'We use cookies!', 'Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type=\"button\" data-cc=\"c-settings\" class=\"cc-link\">Let me choose</button>', 'Allow all Cookies', 'Reject all Cookies', '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `symbol_position` varchar(255) NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `symbol_position`, `created_at`, `updated_at`) VALUES
(1, 'United State Dollar', 'USD', '$', 'left', '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('text','textarea','select','radio','file','url','number','date','checkbox','checkbox_multiple') NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `filterable` tinyint(1) NOT NULL DEFAULT 0,
  `listable` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT 'fas fa-cube',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_groups`
--

CREATE TABLE `custom_field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_category_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'How much does it cost to place an ad?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:23:53', '2022-10-19 09:29:00'),
(2, 3, 'How to protect my account?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:24:41', '2022-10-19 09:29:58'),
(3, 2, 'How owner will get his payment?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:25:28', '2022-10-19 09:29:44'),
(4, 1, 'How to buy some product?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:30:55', '2022-10-19 09:30:55'),
(5, 1, 'How to get my product?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:31:20', '2022-10-19 09:31:20'),
(6, 1, 'What if I don\'t receive a product?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:31:57', '2022-10-19 09:31:57'),
(7, 2, 'What if my product is stock-out?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:32:31', '2022-10-19 09:32:31'),
(8, 2, 'How to increase my product price?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:32:53', '2022-10-19 09:32:53'),
(9, 2, 'How to list my ad as a featured one?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:33:16', '2022-10-19 09:33:16'),
(10, 3, 'What if I don\'t receive my payment from grailed?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:33:47', '2022-10-19 09:33:47'),
(11, 3, 'Where to complain against frauds?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:34:03', '2022-10-19 09:34:03'),
(12, 3, 'How will you handle frauds?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:34:16', '2022-10-19 09:34:16'),
(13, 4, 'Is there any membership procedure?', 'It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-10-19 09:34:35', '2022-10-19 09:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `icon`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Buying', 'buying', 'fab fa-autoprefixer', 0, '2022-10-19 09:22:45', '2022-10-19 09:22:45'),
(2, 'Selling', 'selling', 'fas fa-award', 0, '2022-10-19 09:22:55', '2022-10-19 09:22:55'),
(3, 'Grailed Protection', 'grailed-protection', 'fas fa-bug', 0, '2022-10-19 09:23:16', '2022-10-19 09:23:16'),
(4, 'Grailed 101', 'grailed-101', 'fab fa-autoprefixer', 0, '2022-10-19 09:23:28', '2022-10-19 09:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `help_reasons`
--

CREATE TABLE `help_reasons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contact_helps_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help_reasons`
--

INSERT INTO `help_reasons` (`id`, `title`, `contact_helps_id`, `created_at`, `updated_at`) VALUES
(1, 'I’d like to receive my funds', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(2, 'My shipment is still in transit', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(3, 'My shipment is still in transit', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(4, 'I’d like to refund the buyer', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(5, 'The buyer has opened a claim', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(6, 'I refunded the buyer but haven’t received a fee refund', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(7, 'I need help getting/using my Grailed Label', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(8, 'Problem with tracking or delivery', 1, '2022-10-15 05:11:32', '2022-10-15 05:11:32'),
(9, 'My shipment is still in transit', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32'),
(10, 'I’d like to refund the buyer', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32'),
(11, 'The buyer has opened a claim', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32'),
(12, 'I refunded the buyer but haven’t received a fee refund', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32'),
(13, 'I need help getting/using my Grailed Label', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32'),
(14, 'Problem with tracking or delivery', 1, '2022-10-15 11:11:32', '2022-10-15 11:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `item_purchases`
--

CREATE TABLE `item_purchases` (
  `id` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `unit_price` float(14,2) NOT NULL DEFAULT 0.00,
  `units` int(11) DEFAULT 0,
  `total_price` float(14,2) NOT NULL,
  `total_dicount` float(14,2) DEFAULT 0.00,
  `grand_total` float(14,2) NOT NULL DEFAULT 0.00,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0=ordered but due, \r\n1= ordered and paid \r\n2= seller delivered \r\n3= buyer got the item \r\n4= buyer got the item and not accepted \r\n5 = buyer got the item and accepted ',
  `shiping_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(10) DEFAULT NULL,
  `admin_commission_percent` float(14,2) NOT NULL DEFAULT 0.00,
  `admin_commission` float(14,2) NOT NULL DEFAULT 0.00,
  `seller_amount` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_purchases`
--

INSERT INTO `item_purchases` (`id`, `ad_id`, `user_id`, `unit_price`, `units`, `total_price`, `total_dicount`, `grand_total`, `status`, `shiping_to`, `created_at`, `created_by`, `updated_at`, `updated_by`, `admin_commission_percent`, `admin_commission`, `seller_amount`) VALUES
(2, 1, 7, 75.00, 1, 75.00, 0.00, 75.00, 5, NULL, '2022-10-25 11:04:21', 2, '2022-10-25 11:11:54', 2, 5.50, 2.75, 72.25),
(3, 13, 7, 45.00, 1, 45.00, 0.00, 45.00, 1, NULL, '2022-10-25 13:43:47', 4, '2022-10-25 13:43:47', 4, 5.50, 1.10, 43.9),
(4, 14, 1, 50.00, 1, 50.00, 0.00, 50.00, 1, NULL, '2022-11-05 13:13:35', 4, '2022-11-05 13:13:35', 4, 5.50, 1.38, 48.62),
(5, 35, 22, 120.00, 1, 120.00, 0.00, 120.00, 5, NULL, '2022-11-07 12:58:32', 24, '2022-11-07 13:07:06', 24, 5.50, 5.50, 114.5),
(6, 13, 1, 20.00, 1, 20.00, 0.00, 20.00, 2, NULL, '2022-11-12 05:34:29', 4, '2022-11-12 05:41:39', 4, 5.50, 1.10, 18.9),
(7, 50, 31, 60.00, 1, 60.00, 0.00, 60.00, 5, NULL, '2022-11-12 11:02:08', 25, '2022-11-12 12:11:15', 25, 5.50, 1.92, 58.08),
(8, 31, 29, 625.00, 1, 625.00, 0.00, 625.00, 1, NULL, '2022-11-12 11:12:54', 21, '2022-11-12 11:12:54', 21, 5.50, 33.00, 592),
(9, 31, 29, 625.00, 1, 625.00, 0.00, 625.00, 1, NULL, '2022-11-12 11:15:51', 21, '2022-11-12 11:15:51', 21, 5.50, 33.00, 592),
(10, 52, 31, 112.00, 1, 112.00, 0.00, 112.00, 5, NULL, '2022-11-12 11:24:35', 25, '2022-11-12 12:13:52', 25, 5.50, 4.79, 107.21),
(11, 36, 1, 85.00, 1, 85.00, 0.00, 85.00, 1, NULL, '2022-11-12 11:27:08', 24, '2022-11-12 11:27:08', 24, 5.50, 3.30, 81.7),
(12, 53, 31, 68.00, 1, 68.00, 0.00, 68.00, 5, NULL, '2022-11-12 11:43:40', 25, '2022-11-12 12:15:18', 25, 5.50, 2.37, 65.63),
(13, 36, 1, 85.00, 1, 85.00, 0.00, 85.00, 1, NULL, '2022-11-12 11:47:24', 24, '2022-11-12 11:47:24', 24, 5.50, 3.30, 81.7),
(14, 35, 29, 125.00, 1, 125.00, 0.00, 125.00, 1, NULL, '2022-11-12 11:47:56', 24, '2022-11-12 11:47:56', 24, 5.50, 5.50, 119.5),
(15, 33, 29, 285.00, 1, 285.00, 0.00, 285.00, 1, NULL, '2022-11-12 11:51:48', 21, '2022-11-12 11:51:48', 21, 5.50, 14.30, 270.7),
(16, 32, 29, 625.00, 1, 625.00, 0.00, 625.00, 1, NULL, '2022-11-12 11:54:08', 21, '2022-11-12 11:54:08', 21, 5.50, 33.00, 592),
(17, 34, 29, 275.00, 1, 275.00, 0.00, 275.00, 1, NULL, '2022-11-12 11:56:37', 21, '2022-11-12 11:56:37', 21, 5.50, 13.75, 261.25),
(18, 46, 29, 70.00, 1, 70.00, 0.00, 70.00, 3, NULL, '2022-11-12 12:00:11', 25, '2022-11-12 12:16:17', 25, 5.50, 2.48, 67.52),
(19, 50, 31, 60.00, 1, 60.00, 0.00, 60.00, 5, NULL, '2022-11-12 12:03:32', 25, '2022-11-12 12:24:30', 25, 5.50, 1.92, 58.08),
(20, 26, 21, 55.00, 1, 55.00, 0.00, 55.00, 1, NULL, '2022-11-12 14:33:07', 20, '2022-11-12 14:33:07', 20, 5.50, 1.65, 53.35),
(21, 13, 1, 40.00, 1, 40.00, 0.00, 40.00, 5, '2', '2022-11-16 09:55:42', 4, '2022-11-16 09:56:49', 4, 5.50, 1.10, 38.9),
(22, 13, 1, 35.00, 1, 35.00, 0.00, 35.00, 5, '2', '2022-11-16 09:58:39', 4, '2022-11-16 09:59:38', 4, 5.50, 1.10, 33.9),
(23, 36, 1, 85.00, 1, 85.00, 0.00, 85.00, 1, '1', '2022-11-16 13:13:15', 24, '2022-11-16 13:13:15', 24, 5.50, 3.30, 81.7),
(24, 66, 31, 115.00, 1, 115.00, 0.00, 115.00, 4, 'United State', '2022-12-04 08:40:45', 38, '2022-12-04 09:44:57', 38, 5.50, 3.58, 111.42),
(25, 66, 31, 115.00, 1, 115.00, 0.00, 115.00, 5, 'United State', '2022-12-04 08:48:01', 38, '2022-12-04 09:44:43', 38, 5.50, 3.58, 111.42);

--
-- Triggers `item_purchases`
--
DELIMITER $$
CREATE TRIGGER `after_item_purchases_insert` AFTER INSERT ON `item_purchases` FOR EACH ROW begin

	declare var_total_seller_amount float default 0;
 	select sum(seller_amount) into var_total_seller_amount from item_purchases where user_id = new.user_id;

 	update users set total_seller_amount = var_total_seller_amount where id = new.user_id;
 	


end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_item_purchases_insert` BEFORE INSERT ON `item_purchases` FOR EACH ROW begin
 set new.seller_amount = new.grand_total-new.admin_commission;


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `direction` varchar(3) NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flag-icon-gb', 'ltr', '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `measurements_points`
--

CREATE TABLE `measurements_points` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `measurements_points`
--

INSERT INTO `measurements_points` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Bust', NULL, NULL, 1),
(2, 'Length', NULL, NULL, 1),
(3, 'Shoulders', NULL, NULL, 1),
(4, 'Waist', NULL, NULL, 1),
(5, 'Sleeve Length', NULL, NULL, 1),
(6, 'Hip', NULL, NULL, 1),
(7, 'Inseam_Length', NULL, NULL, 1),
(8, 'Leg Opening', NULL, NULL, 1),
(9, 'Front Rise', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messengers`
--

CREATE TABLE `messengers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messengers`
--

INSERT INTO `messengers` (`id`, `from_id`, `to_id`, `body`, `read`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '.', 0, '2022-09-25 03:08:13', '2022-09-25 03:08:13'),
(2, 1, 5, 'hi', 1, '2022-09-25 03:08:20', '2022-10-17 07:00:46'),
(3, 1, 5, 'hi', 1, '2022-09-25 03:08:35', '2022-10-17 07:00:46'),
(4, 1, 5, 'hi', 1, '2022-10-17 07:01:28', '2022-10-17 07:01:42'),
(5, 1, 5, 'hi', 1, '2022-10-17 07:05:31', '2022-10-17 07:13:55'),
(6, 1, 5, 'test', 1, '2022-10-17 07:13:42', '2022-10-17 07:13:55'),
(7, 5, 1, 'test', 1, '2022-10-17 07:14:02', '2022-11-12 11:48:58'),
(8, 7, 4, '.', 0, '2022-10-25 13:44:18', '2022-10-25 13:44:18'),
(9, 7, 4, 'Hii', 0, '2022-10-25 13:44:33', '2022-10-25 13:44:33'),
(10, 5, 6, '.', 0, '2022-11-05 06:59:52', '2022-11-05 06:59:52'),
(11, 5, 6, 'hello', 1, '2022-11-05 06:59:59', '2022-11-08 08:52:04'),
(12, 6, 5, 'hi', 0, '2022-11-08 08:52:11', '2022-11-08 08:52:11'),
(13, 6, 5, 'hi', 0, '2022-11-08 08:52:13', '2022-11-08 08:52:13');

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
(1, '2012_07_14_154223_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_12_184107_create_permission_tables', 1),
(5, '2020_12_20_161857_create_brands_table', 1),
(6, '2020_12_23_122556_create_contacts_table', 1),
(7, '2021_02_17_110211_create_testimonials_table', 1),
(8, '2021_02_18_112239_create_admins_table', 1),
(9, '2021_08_22_051131_create_categories_table', 1),
(10, '2021_08_22_051134_create_sub_categories_table', 1),
(11, '2021_08_22_051135_create_ads_table', 1),
(12, '2021_08_22_051198_create_post_categories_table', 1),
(13, '2021_08_22_051199_create_posts_table', 1),
(14, '2021_08_23_115402_create_settings_table', 1),
(15, '2021_08_25_061331_create_languages_table', 1),
(16, '2021_09_04_105120_create_blog_comments_table', 1),
(17, '2021_09_05_120235_create_ad_features_table', 1),
(18, '2021_09_05_120248_create_ad_galleries_table', 1),
(19, '2021_09_19_141812_create_plans_table', 1),
(20, '2021_11_13_114825_create_messengers_table', 1),
(21, '2021_11_15_112417_create_user_plans_table', 1),
(22, '2021_11_15_112949_create_transactions_table', 1),
(23, '2021_12_14_142236_create_emails_table', 1),
(24, '2021_12_15_161624_create_module_settings_table', 1),
(25, '2021_12_19_101413_create_cms_table', 1),
(26, '2021_12_19_152529_create_faq_categories_table', 1),
(27, '2021_12_21_105713_create_faqs_table', 1),
(28, '2022_01_25_131111_add_fields_to_settings_table', 1),
(29, '2022_01_26_091457_add_social_login_fields_to_users_table', 1),
(30, '2022_02_16_152704_add_loader_fields_to_settings_table', 1),
(31, '2022_03_05_125615_create_currencies_table', 1),
(32, '2022_03_08_110749_add_website_configuration_to_settings_table', 1),
(33, '2022_03_27_175435_create_orders_table', 1),
(34, '2022_03_28_093629_add_socialite_column_to_users_table', 1),
(35, '2022_03_29_100616_create_timezones_table', 1),
(36, '2022_03_29_121851_create_admin_searches_table', 1),
(37, '2022_03_30_082959_create_cookies_table', 1),
(38, '2022_03_30_114924_create_seos_table', 1),
(39, '2022_03_30_121200_create_database_backups_table', 1),
(40, '2022_04_25_132657_create_setup_guides_table', 1),
(41, '2022_04_28_134721_create_mobile_app_configs_table', 1),
(42, '2022_04_28_142433_create_mobile_app_sliders_table', 1),
(43, '2022_06_06_041744_add_field_to_users_table', 1),
(44, '2022_06_06_052533_create_notifications_table', 1),
(45, '2022_06_06_092421_create_themes_table', 1),
(46, '2022_06_08_053638_create_custom_field_groups_table', 1),
(47, '2022_06_08_060821_create_custom_fields_table', 1),
(48, '2022_06_08_061216_create_custom_field_values_table', 1),
(49, '2022_06_08_061928_create_category_custom_field_table', 1),
(50, '2022_06_08_091126_create_product_custom_fields_table', 1),
(51, '2022_06_14_051918_add_fields_to_user_plans_table', 1),
(52, '2022_06_14_095728_add_fields_to_plans_table', 1),
(53, '2022_06_18_031525_add_full_address_to_ads_table', 1),
(54, '2022_06_27_050337_add_map_to_settings_table', 1),
(55, '2022_07_03_030110_add_whatsapp_field_to_ads_table', 1),
(56, '2022_07_04_042533_create_jobs_table', 1),
(57, '2022_07_05_081552_create_reports_table', 1),
(58, '2022_07_05_112407_create_social_media_table', 1),
(59, '2022_07_14_151623_create_wishlists_table', 1),
(60, '2022_07_14_155901_create_reviews_table', 1),
(61, '2022_07_24_110337_create_user_device_token_tbale', 1),
(62, '2022_07_25_024244_add_push_notification_settings_table', 1),
(63, '2022_09_17_120551_childcategory', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_configs`
--

CREATE TABLE `mobile_app_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `android_download_url` varchar(255) DEFAULT NULL,
  `ios_download_url` varchar(255) DEFAULT NULL,
  `privacy_url` varchar(255) DEFAULT NULL,
  `support_url` varchar(255) DEFAULT NULL,
  `terms_and_condition_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_app_configs`
--

INSERT INTO `mobile_app_configs` (`id`, `android_download_url`, `ios_download_url`, `privacy_url`, `support_url`, `terms_and_condition_url`, `created_at`, `updated_at`) VALUES
(1, 'https://play.google.com/store/apps/details?id=com.app.appname', 'https://apps.apple.com/us/app/app-name/id1440990079', 'https://www.appname.com/privacy-policy', 'https://www.appname.com/support', 'https://www.appname.com/terms-and-conditions', '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_sliders`
--

CREATE TABLE `mobile_app_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `background` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_settings`
--

CREATE TABLE `module_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog` tinyint(1) NOT NULL DEFAULT 1,
  `newsletter` tinyint(1) NOT NULL DEFAULT 1,
  `language` tinyint(1) NOT NULL DEFAULT 1,
  `contact` tinyint(1) NOT NULL DEFAULT 1,
  `faq` tinyint(1) NOT NULL DEFAULT 1,
  `testimonial` tinyint(1) NOT NULL DEFAULT 1,
  `price_plan` tinyint(1) NOT NULL DEFAULT 1,
  `appearance` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_settings`
--

INSERT INTO `module_settings` (`id`, `blog`, `newsletter`, `language`, `contact`, `faq`, `testimonial`, `price_plan`, `appearance`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0046f997-950a-4e8e-a228-f959d35f5f2e', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/mens-regular-fit-bomber-jacket\"}', NULL, '2022-10-19 12:46:33', '2022-10-19 12:46:33'),
('01e60306-8eda-42d0-a319-dd3f7719633a', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 20, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant\"}', NULL, '2022-11-05 06:39:33', '2022-11-05 06:39:33'),
('020af7bb-7bc8-4442-81f0-c27dc8a2b5aa', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-23 06:51:30', '2022-11-23 06:51:30'),
('022c1c1b-628c-4a9e-8438-876e5f8ac87e', 'App\\Notifications\\AdDeleteNotification', 'App\\Models\\User', 20, '{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}', NULL, '2022-10-31 06:11:47', '2022-10-31 06:11:47'),
('026394c0-44ec-4e6f-b340-c5d2f9f4114f', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-10-25 10:58:44', '2022-10-25 10:58:44'),
('029f39ba-f6f1-4c36-abee-495700d82382', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 03:17:56', '2022-12-04 03:17:56'),
('02fa7ce9-03b5-40d7-96bb-030ea315c4d9', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 09:36:07', '2022-11-12 09:36:07'),
('061d9c4f-c788-4c35-b437-1d9b2f067187', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 11:03:36', '2022-11-12 11:03:36'),
('072ee71a-90b3-49db-86af-39e8bf91588e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-05 13:02:45', '2022-11-05 13:02:45'),
('07826374-c491-47fa-9553-d2c12024a13a', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-03 11:00:07', '2022-12-03 11:00:07'),
('088d4611-c5c6-4637-a9c3-9273bc3ec9b6', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 09:30:24', '2022-12-04 09:30:24'),
('098e3e14-2d2c-4a83-9816-d0adb078c03c', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 09:32:18', '2022-12-04 09:32:18'),
('0b085f17-9745-4582-9c6d-492e40367173', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 7, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-10-25 11:14:38', '2022-10-25 11:14:38'),
('0ba128a7-bce2-4f0e-8fce-f8158976188e', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test-item\"}', NULL, '2022-11-05 06:39:41', '2022-11-05 06:39:41'),
('0c1b4ced-42f0-41ef-8878-c8840993e4e0', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}', NULL, '2022-11-05 06:38:27', '2022-11-05 06:38:27'),
('0ca136ad-cee4-4eaf-9d84-8dbdfc868e0b', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 05:14:01', '2022-11-12 05:14:01'),
('10312018-1b2e-4e9b-9618-58d5b0b4bdc6', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-03 14:15:30', '2022-12-03 14:15:30'),
('10d98fd0-490d-4c77-a396-3ae6c60ee8af', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage-yee\"}', NULL, '2022-11-12 10:21:29', '2022-11-12 10:21:29'),
('11c3791f-5782-4ad9-ae06-aa358648f34c', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-rare-nirvana-sliver-1992-giant-tag-t-shirt-l\"}', NULL, '2022-11-05 06:38:27', '2022-11-05 06:38:27'),
('122618b9-aff8-4b31-afa8-e693041f02b7', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-25 11:10:47', '2022-10-25 11:10:47'),
('124aee8a-e98a-44c3-9f2c-bda280340803', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-vintage\"}', NULL, '2022-11-12 10:17:43', '2022-11-12 10:17:43'),
('12599e33-0c75-4606-a348-e0dc74866324', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-05 07:02:25', '2022-11-05 07:02:25'),
('1377e875-5a99-4178-9299-4cf7888280c9', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 13:12:40', '2022-11-12 13:12:40'),
('13dc489c-1672-4477-9271-8190cfa43f8d', 'App\\Notifications\\AdUpdateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just updated a ad\",\"type\":\"adupdate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/jugular-boys-dot-striped-full-sleeve-cotton-printed-t-shirt\"}', NULL, '2022-10-19 07:08:25', '2022-10-19 07:08:25'),
('14c74a4f-6cfd-4bf5-93bc-8d92b73c3fbb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 36, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-03 05:29:46', '2022-12-03 05:29:46'),
('14f61b24-05b7-4a38-aef9-76c388d6b1a0', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-30 11:40:48', '2022-10-30 11:40:48'),
('1544ddde-b058-4d6f-866b-e6018491b2eb', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-letterman-jacket-lakers-magic-johnson-32\"}', NULL, '2022-11-05 06:39:02', '2022-11-05 06:39:02'),
('17526860-0a10-418e-a364-c54147da6d4c', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 10:14:00', '2022-12-07 10:14:00'),
('19c7ca8e-c775-4ac0-82ea-f4431cd4a2d8', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-30 07:27:18', '2022-10-30 07:27:18'),
('1a9f1e0c-266b-44f9-b59d-efad7c43ac04', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-rare-nirvana-sliver-1992-giant-tag-t-shirt-l\"}', NULL, '2022-11-05 06:38:27', '2022-11-05 06:38:27'),
('1c949718-44c9-4817-8695-816a843454f4', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}', NULL, '2022-11-12 09:53:02', '2022-11-12 09:53:02'),
('1dc32b06-e2e2-412d-9a0b-9fa5754e8380', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-mickey-mouse-member-70s-t-shirt-xl\"}', NULL, '2022-11-05 06:39:12', '2022-11-05 06:39:12'),
('2122e1c8-b6e3-45cd-8d8e-67f2ea74f240', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 24, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-international-sweatshirt\"}', NULL, '2022-11-07 12:30:40', '2022-11-07 12:30:40'),
('213626c5-dbdd-4c6a-bc39-b695b2515849', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 11:46:05', '2022-11-12 11:46:05'),
('2527ace6-ec9f-46e2-a2e2-aee48b7f691d', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-30 04:15:33', '2022-10-30 04:15:33'),
('259b62ee-4960-4591-8738-62f01aaeb372', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/about-this-item-heavyweight-cotton-heathers-are-60-cotton40-polyester-pebblestone-is-75-cotton25-polyester-henley-sports-a-three-button-placket-famously-durable-beefy-t-fabric-soft-pure-cotton-feels-terrific-all-day-long-traditional-set-in-sleeves-for-sol\"}', NULL, '2022-10-25 13:42:05', '2022-10-25 13:42:05'),
('266c26c7-7065-48f7-be43-d58b9a264177', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-13 04:05:56', '2022-12-13 04:05:56'),
('26f5aef0-0223-4e7e-a7a8-cbab7d90c968', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-07 10:16:07', '2022-12-07 10:16:07'),
('28446b67-6d69-43a9-a7c1-5c8835a9571a', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}', NULL, '2022-11-12 09:57:58', '2022-11-12 09:57:58'),
('2923843c-e2c1-4fe5-ae77-2f66a5458b24', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-20 11:08:54', '2022-10-20 11:08:54'),
('29b8ad21-9abd-454e-b625-5f16cfdabc5f', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 09:41:21', '2022-12-04 09:41:21'),
('2cde3bae-5fca-4ea0-b2f9-bc9e8bd6961f', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 24, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-adidas-equipment-brown-logo-t-shirt\"}', NULL, '2022-11-07 12:30:28', '2022-11-07 12:30:28'),
('2e0f19a1-2951-4df1-86b1-4427318d7f7e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-09 13:23:11', '2022-11-09 13:23:11'),
('2ef68712-9331-456b-ae1e-9b1a2f6d114e', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 09:37:26', '2022-12-04 09:37:26'),
('2f8055a7-3f61-4a3f-851d-1c87d7248f91', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 10:54:31', '2022-11-12 10:54:31'),
('315a6694-3547-4e24-9eba-4fa03f2e8e69', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-09 12:36:44', '2022-11-09 12:36:44'),
('32d497da-7a7f-4014-ad28-01d4246b29e8', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 05:10:00', '2022-12-07 05:10:00'),
('33a606de-2423-4176-a646-d1d49100420d', 'App\\Notifications\\AdWishlistNotification', 'App\\Models\\User', 5, '{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/timberland-mens-leather-rfid-blocking-passcase-security-wallet\"}', NULL, '2022-10-20 10:32:17', '2022-10-20 10:32:17'),
('3425e8a0-7f57-467d-8733-6681f537bc70', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-27 08:42:54', '2022-11-27 08:42:54'),
('34a13e68-bf85-4385-8ba9-a692b2ffa7f3', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 09:33:07', '2022-12-04 09:33:07'),
('34b5f423-bb0d-4f62-ba54-195cba935580', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-26 05:24:48', '2022-11-26 05:24:48'),
('35f7d59d-24d2-4304-a128-bedd3af93e61', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-17 03:59:09', '2022-11-17 03:59:09'),
('3c8f2611-6ec1-4a8c-8e78-eb23a1c58884', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 22, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-07 12:39:46', '2022-11-07 12:39:46'),
('3d575227-cd24-4e6d-803b-6cbcd44e9884', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 13:18:36', '2022-11-12 13:18:36'),
('3e31cc3b-0dc8-4893-ae63-5bfee7b88d03', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/champion-vintage\"}', NULL, '2022-11-12 09:53:03', '2022-11-12 09:53:03'),
('3ee43cda-7cf5-4011-8d79-c69e57de75b5', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage\"}', NULL, '2022-11-12 10:17:47', '2022-11-12 10:17:47'),
('3f84d779-cbef-4cfa-b2b5-4074be42ddd1', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-27 06:25:29', '2022-11-27 06:25:29'),
('414f5158-8339-4b05-9cc9-49966190088b', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/hanes-mens-beefy-long-sleeve-three-button-henley\"}', NULL, '2022-10-25 13:40:14', '2022-10-25 13:40:14'),
('41df9fc7-04a1-48a9-992c-9722e4a90b03', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-16 09:37:12', '2022-11-16 09:37:12'),
('4492b129-6264-4820-8feb-4413271a9fb4', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-27 04:08:01', '2022-10-27 04:08:01'),
('449789bf-e1ce-419c-8be5-b20656f633a7', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 14:32:18', '2022-11-12 14:32:18'),
('45974a54-23aa-46e1-85ab-2d4148fe9970', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-05 06:57:52', '2022-11-05 06:57:52'),
('48e23bda-9141-41f2-83e2-89ef364e56f7', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage\"}', NULL, '2022-11-12 10:21:37', '2022-11-12 10:21:37'),
('49e07f36-7117-430e-81ec-d65bf7a3cc0e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 13:19:11', '2022-11-12 13:19:11'),
('4b6b6f56-57cf-4419-8bb5-db244b2ce476', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 09:37:24', '2022-11-16 09:37:24'),
('4b828c9b-1d2b-4ae0-aed6-f88cbdf42238', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 22, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-07 13:16:50', '2022-11-07 13:16:50'),
('4c30339c-a1ef-4c8d-9f71-9472dd6868e5', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 08:36:10', '2022-12-04 08:36:10'),
('4d472c74-f1c4-43ff-92eb-847331f3c0a4', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-23 06:39:26', '2022-11-23 06:39:26'),
('50bdcf31-f5fe-4c94-bd67-89fb875419d9', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 11:16:15', '2022-11-12 11:16:15'),
('513b44ac-5efd-42f1-8581-42cd531a948d', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-13 04:15:57', '2022-11-13 04:15:57'),
('51d90744-156b-42f8-b8c1-bdbf165b83e4', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-13 09:22:01', '2022-11-13 09:22:01'),
('53ca3720-9949-433e-b8e2-37059c6b39d3', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-vintage\"}', NULL, '2022-11-12 10:17:42', '2022-11-12 10:17:42'),
('5408fc40-e879-4f3a-8008-49558611f0a7', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 6, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/as\"}', NULL, '2022-11-05 06:39:19', '2022-11-05 06:39:19'),
('56262803-80cd-4383-867d-92979d5eafdc', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-19 13:08:35', '2022-11-19 13:08:35'),
('57b13771-f585-462f-b027-2d385ed5ee66', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 09:39:32', '2022-12-04 09:39:32'),
('5a655c6d-f99b-4eb1-b3fd-37d10e4829c3', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-mickey-mouse-member-70s-t-shirt-xl\"}', NULL, '2022-11-05 06:39:11', '2022-11-05 06:39:11'),
('5b11accf-4ffa-4b63-9fa2-489ef6eec9bb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 09:56:05', '2022-12-07 09:56:05'),
('5f11e2c9-8298-4f80-a43c-89c833d539b6', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 24, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-07 12:29:28', '2022-11-07 12:29:28'),
('5f995f90-d7a8-42a8-b5e0-9d2c6cf63fb4', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 11:20:11', '2022-11-12 11:20:11'),
('5ff9dd5f-0225-416c-997c-9955747c58f2', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}', NULL, '2022-11-05 06:38:27', '2022-11-05 06:38:27'),
('6164e6e5-4b3d-4720-82d2-ee2222c0a452', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-27 08:43:53', '2022-11-27 08:43:53'),
('638d6e1b-1eed-4b12-a12b-f62dfcb8fdbb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-30 08:31:49', '2022-11-30 08:31:49'),
('650766f5-dcb2-4c8a-9e7b-b36b519be4af', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-30 11:30:26', '2022-11-30 11:30:26'),
('6548b4e1-bb8e-4a28-84f9-e776f8a180f9', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 32, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-13 07:20:59', '2022-11-13 07:20:59'),
('68658bb9-bf7f-4676-8c8f-9aaaab115165', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-08 05:19:13', '2022-12-08 05:19:13'),
('6a63cc85-07c1-412e-9bfc-70333e81f904', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/j-kara-womens-34-scallop-beaded-pop-over-gown\"}', NULL, '2022-10-19 08:46:03', '2022-10-19 08:46:03'),
('6a7ee06f-92c5-454f-8984-b7bfbd2feef7', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/puma-t-shirt\"}', NULL, '2022-11-12 09:34:51', '2022-11-12 09:34:51'),
('6b214832-9e2a-47f8-bd5b-a78775b227fa', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-05 08:10:40', '2022-12-05 08:10:40'),
('6d820263-8d18-4213-8bb3-14e320b363e4', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 08:37:02', '2022-12-04 08:37:02'),
('6da0007c-a797-4c85-b35a-3126680eb002', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 32, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-16 09:14:14', '2022-11-16 09:14:14'),
('6ece8e9d-a610-41e8-8203-c0c4a6edddcd', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 03:16:08', '2022-12-04 03:16:08'),
('6f08ac1b-f440-4c62-9027-950c405bc4d0', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 10:06:52', '2022-11-12 10:06:52'),
('6f911eb6-15fa-42ef-9202-ffea130c8449', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/russian-belt-bag\"}', NULL, '2022-11-12 10:53:31', '2022-11-12 10:53:31'),
('709823a7-d98a-4cbd-a971-6bf670d7df57', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nfl-starter-vintage\"}', NULL, '2022-11-17 04:07:32', '2022-11-17 04:07:32'),
('7138ced3-a525-4d67-bd1c-441ac9a08d5c', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 05:14:01', '2022-11-12 05:14:01'),
('715fb741-b713-4b0d-ac5b-8125d4eb4887', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-01 15:22:48', '2022-11-01 15:22:48'),
('723249d0-05b3-4771-abb9-f3f7c684d020', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 5, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test-item\"}', NULL, '2022-11-05 06:39:40', '2022-11-05 06:39:40'),
('743cea88-6ca5-4dec-aea4-dacafaa87a0e', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/dress\"}', NULL, '2022-10-25 12:38:51', '2022-10-25 12:38:51'),
('79abe669-6584-4666-a630-ed18d701e2e3', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 09:39:57', '2022-12-04 09:39:57'),
('7a53301f-d313-42a5-a8c8-c4670752b6fc', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}', NULL, '2022-11-12 09:57:58', '2022-11-12 09:57:58'),
('7a6d4a35-a54d-468e-abdc-bf2c9a107f98', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-29 06:43:11', '2022-10-29 06:43:11'),
('7c562f6f-dfc7-40f7-affc-50549536d773', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 11:59:37', '2022-11-12 11:59:37'),
('7deadb24-74f6-4ba7-8625-49cf9f19c37b', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-13 06:39:27', '2022-11-13 06:39:27'),
('7e4def13-0519-4a6b-b3c3-3d2cbf95f69a', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 11:12:26', '2022-11-12 11:12:26'),
('7eda2b32-ef6f-4488-9aa1-dfaac25062ca', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 05:41:22', '2022-11-12 05:41:22'),
('8023a74e-34eb-4956-8da7-cfd606835359', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-05 12:52:15', '2022-11-05 12:52:15'),
('8027bc9e-7f0d-4a86-92e2-867830a148af', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/champion-vintage\"}', NULL, '2022-11-12 09:53:04', '2022-11-12 09:53:04'),
('8420efb2-2b5f-4f90-aaee-2d55f3a7484b', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 11:02:55', '2022-11-12 11:02:55'),
('852ed4a0-920a-4e2e-a8c4-4db2b7cc7563', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-19 13:32:19', '2022-11-19 13:32:19'),
('85ecbdc8-938e-45af-b6b8-456abdf57a46', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-naruto-2002-shippuden-kakashi-story-anime-t-shirt-xl\"}', NULL, '2022-11-05 06:38:46', '2022-11-05 06:38:46'),
('866d04a8-0239-4b18-8256-6e6d439f6cf9', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/timberland-mens-leather-rfid-blocking-passcase-security-wallet\"}', NULL, '2022-10-19 08:30:58', '2022-10-19 08:30:58'),
('87151864-2a2a-43b8-9406-3276e6c6bc91', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 22, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-05 06:57:42', '2022-11-05 06:57:42'),
('8719796f-719d-4e53-80aa-85cae256af2d', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-27 08:36:58', '2022-11-27 08:36:58'),
('89483a0c-f9e6-41a6-b321-dc45cfb32b1e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 09:38:17', '2022-11-16 09:38:17'),
('8b2ae0fa-49b3-452e-a0c7-f7319af1c984', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-29 05:00:09', '2022-11-29 05:00:09'),
('8b3362a7-ab28-4c9c-af48-c59d152b8241', 'App\\Notifications\\AdWishlistNotification', 'App\\Models\\User', 1, '{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}', NULL, '2022-11-23 06:42:12', '2022-11-23 06:42:12'),
('8c7de296-8f75-489c-899d-97f22e8f8d23', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-16 09:12:45', '2022-11-16 09:12:45'),
('8d76e3c1-d23c-45e3-b4ce-3a7ef52dd331', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 10:06:15', '2022-11-12 10:06:15'),
('8f67a01a-7673-462c-84dd-e0f170d7cf79', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-19 13:21:06', '2022-11-19 13:21:06'),
('8f9661ff-bc5a-4cb4-9ed8-2f64e225e1dc', 'App\\Notifications\\AdWishlistNotification', 'App\\Models\\User', 5, '{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/wrangler-womens-34-sleeves-smocked-shoulder-knit-top\"}', NULL, '2022-10-23 07:54:09', '2022-10-23 07:54:09'),
('8fc9525b-1035-4f42-bad7-be8bcae41ab7', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-23 07:53:32', '2022-10-23 07:53:32'),
('93929f9f-69f0-4680-adc1-984d5f646a55', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 3, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/allons-y-lets-go-full-sleeve-solid-men-women-bomber-jacket\"}', NULL, '2022-10-19 08:16:03', '2022-10-19 08:16:03'),
('93efea02-ca2d-4cda-b99e-dab028f73c65', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-22 07:57:05', '2022-10-22 07:57:05'),
('9572985c-befe-4874-9b19-1902c19ffb16', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}', NULL, '2022-11-12 09:53:01', '2022-11-12 09:53:01'),
('9a0cfb42-54df-4daa-90f8-f22e69ec402b', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/symbol-mens-regular-casual-trousers\"}', NULL, '2022-10-19 12:43:34', '2022-10-19 12:43:34'),
('9e60eb0a-c09c-4336-a532-b71c5aef7d96', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 12:38:30', '2022-11-12 12:38:30'),
('9fe0ec4f-d08f-4aa3-9292-a55a770bf213', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-27 08:36:37', '2022-11-27 08:36:37'),
('a026524c-8fd6-4ed2-8dfe-12ab387fc76b', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 12:05:00', '2022-11-12 12:05:00'),
('a2bbbfb3-2f60-4c0f-9332-5dfac4d7680a', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-28 14:21:21', '2022-11-28 14:21:21'),
('a3ee5ea5-490a-4555-9953-d81d14b08f2f', 'App\\Notifications\\AdDeleteNotification', 'App\\Models\\User', 20, '{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}', NULL, '2022-10-31 06:11:54', '2022-10-31 06:11:54'),
('a444a5c4-009e-4f55-82ac-f9f28d9110d9', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-12-04 09:29:50', '2022-12-04 09:29:50'),
('a4479423-4032-4a22-ba99-3540a6c8c2cb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-27 06:27:03', '2022-11-27 06:27:03'),
('a449c1f1-e1f0-4c55-a353-1afe371e5524', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 23, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-07 11:19:15', '2022-11-07 11:19:15'),
('a6618676-7260-4f31-a408-5d8db1b47ad7', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-01 14:18:50', '2022-12-01 14:18:50'),
('a689dd2a-1125-4f45-a0e3-2b1933a1355c', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 10:14:00', '2022-12-07 10:14:00'),
('a7f99ffa-c02d-4798-acad-0ea139cd26fb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-05 13:27:54', '2022-11-05 13:27:54'),
('a8613bfa-937c-4564-b867-3b32d0ba96ff', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/mini-heels\"}', NULL, '2022-11-12 10:53:17', '2022-11-12 10:53:17'),
('a8aa0350-888b-419f-9c1c-db8b6c348d64', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 38, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-gowns\"}', NULL, '2022-12-04 08:35:12', '2022-12-04 08:35:12'),
('a93a1ec6-4817-45eb-814b-acd355928bf6', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 12:00:03', '2022-11-12 12:00:03'),
('a9586e5a-5c66-4dd9-a406-138c0816b347', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 4, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/quick-saledior-by-hedi-slimane-white-help-me-hoodie\"}', NULL, '2022-11-19 13:29:44', '2022-11-19 13:29:44'),
('a98623a4-6bdb-45ff-b5b2-2cdd0c2cb364', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-13 01:47:45', '2022-11-13 01:47:45'),
('a98a125f-623b-4596-8652-8e392d4993c2', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 09:38:56', '2022-12-04 09:38:56'),
('aae7782e-b5a4-4533-bfa2-2a64aa878570', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 10:06:40', '2022-12-07 10:06:40'),
('ac5efa78-9cc3-4ff4-995d-2aa93c29bc85', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 09:14:25', '2022-11-16 09:14:25'),
('ad87f37b-c9bd-459a-9a2b-ebcaaf938a4f', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 09:11:59', '2022-11-16 09:11:59'),
('b1b7c710-4f3a-45aa-8438-2b6efb136883', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/large-capacity-womens-bag-generation-backpack\"}', NULL, '2022-10-19 11:40:42', '2022-10-19 11:40:42'),
('b1c4ada7-2a8f-4425-9e65-2f6df1c1a03c', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 36, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-28 12:12:35', '2022-11-28 12:12:35'),
('b63ac22d-c7a5-4a5c-943a-ecb0c003f121', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-letterman-jacket-lakers-magic-johnson-32\"}', NULL, '2022-11-05 06:39:01', '2022-11-05 06:39:01'),
('b67e12e6-b1af-4eb8-9d97-458958c09de2', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-04 09:41:50', '2022-12-04 09:41:50'),
('b97688cf-f3fc-44b9-8fdd-9d78b4b67c2a', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 24, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-adidas-equipment-brown-logo-t-shirt\"}', NULL, '2022-11-07 12:30:28', '2022-11-07 12:30:28'),
('b9f27418-54c5-40e2-828f-0344fda3cb91', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 13:16:18', '2022-11-12 13:16:18'),
('ba728f53-9596-4058-8067-c6bfca903edf', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-30 04:22:35', '2022-10-30 04:22:35'),
('bd664770-063a-4608-9308-af99a11eef73', 'App\\Notifications\\AdDeleteNotification', 'App\\Models\\User', 37, '{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}', NULL, '2022-12-03 12:48:41', '2022-12-03 12:48:41'),
('bd807928-884d-4618-9b11-3b4493384c63', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-12 10:26:12', '2022-11-12 10:26:12'),
('beb0b7d9-6918-4527-a425-b00b06b4c307', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-08 08:50:33', '2022-11-08 08:50:33'),
('c27873b0-737d-435a-ae85-116ac0ba07a7', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/quick-saledior-by-hedi-slimane-white-help-me-hoodie\"}', NULL, '2022-11-19 13:29:44', '2022-11-19 13:29:44'),
('c2d84c0a-3b67-44bb-8e5c-4cc16b897cfd', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-14 06:01:36', '2022-11-14 06:01:36'),
('c2e55a42-bcf4-4b75-a99c-83cc21f544e6', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nfl-starter-vintage\"}', NULL, '2022-11-17 04:07:32', '2022-11-17 04:07:32'),
('c30487d5-a03b-4cba-bfea-9e59bc9f44f2', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage\"}', NULL, '2022-11-12 10:17:48', '2022-11-12 10:17:48'),
('c31e738d-2edb-4d91-8790-224b47cd90e8', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 3, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/kenneth-cole-leather-slip-on-loafers-for-men\"}', NULL, '2022-10-19 08:19:55', '2022-10-19 08:19:55'),
('c59ce47a-00e1-400c-922a-87ebbb28b09c', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-10-22 08:16:32', '2022-10-22 08:16:32'),
('c728cd3b-9a88-4af9-8389-c10ad2c6444e', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-naruto-2002-shippuden-kakashi-story-anime-t-shirt-xl\"}', NULL, '2022-11-05 06:38:46', '2022-11-05 06:38:46'),
('c8aa4a39-d002-4a5f-a1e2-b08638fa38f4', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-pope-gold-is-still-dope-rare-t-shirt\"}', NULL, '2022-11-05 06:38:53', '2022-11-05 06:38:53'),
('c9838686-f1a1-4403-986b-113c28b3f5c6', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 10:16:27', '2022-12-07 10:16:27'),
('cb24c638-c85c-4ce4-8f80-e570ad759364', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-19 13:12:52', '2022-11-19 13:12:52'),
('cbd5a314-d752-4f01-b420-527b1b21efb8', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 11:26:54', '2022-11-12 11:26:54'),
('ce66e824-ed83-4a12-9e4a-12d4a57d1a6e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-25 13:37:57', '2022-10-25 13:37:57'),
('cf79c638-1e71-442a-a7a3-03b4fbb8405f', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 7, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-25 13:42:59', '2022-10-25 13:42:59'),
('d0469460-c5f8-4df0-b393-9f922e2dc695', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 21, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-pope-gold-is-still-dope-rare-t-shirt\"}', NULL, '2022-11-05 06:38:52', '2022-11-05 06:38:52'),
('d0d055ae-bdf3-430c-a7e6-c4ebdf0a382a', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-08 04:41:49', '2022-12-08 04:41:49'),
('d1d7e77b-8113-439d-a844-7cbb04da1bd6', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/puma-t-shirt\"}', NULL, '2022-11-12 09:34:50', '2022-11-12 09:34:50'),
('d7c80585-a803-499d-8052-a9cfae112a75', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage\"}', NULL, '2022-11-12 10:21:37', '2022-11-12 10:21:37'),
('da39c00f-32b2-4919-b3c3-d27e3239b4a9', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 24, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-07 12:29:49', '2022-11-07 12:29:49'),
('dcb4dcbc-5f38-4713-b814-b66fb93ebd49', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-23 07:25:08', '2022-10-23 07:25:08'),
('dcc21d49-0b1d-4c6d-9321-03a835e6063a', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/as\"}', NULL, '2022-11-05 06:39:20', '2022-11-05 06:39:20'),
('dd95c4b0-515f-4fe2-aaef-9c91defad854', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 12:10:42', '2022-11-12 12:10:42'),
('de03b569-3a20-474f-a917-97e938b75fc6', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 20, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant\"}', NULL, '2022-11-05 06:39:34', '2022-11-05 06:39:34'),
('df34046f-a460-4d72-9c87-83fad24353f6', 'App\\Notifications\\AdDeleteNotification', 'App\\Models\\User', 28, '{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}', NULL, '2022-12-03 09:41:41', '2022-12-03 09:41:41'),
('df715f1a-1b79-4930-a3f3-5e0862caa6c5', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/refulgent-mens-blazer-2-button\"}', NULL, '2022-10-19 08:27:41', '2022-10-19 08:27:41'),
('e018c2ce-c538-4103-aee3-04be2b3c9e47', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 05:41:22', '2022-11-12 05:41:22'),
('e0684659-af25-4bd7-9cce-1647a3d546a8', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 11:48:54', '2022-11-12 11:48:54'),
('e165ac8c-c3e5-4079-9e9f-f2ca2c9ea2ff', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 32, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 09:13:14', '2022-11-16 09:13:14'),
('e1833f54-3383-4e24-a667-83298697a7e7', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/mini-heels\"}', NULL, '2022-11-12 10:53:17', '2022-11-12 10:53:17'),
('e93b039c-d184-4910-b83a-886af0e03031', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 27, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-07 04:58:11', '2022-12-07 04:58:11'),
('e9b37550-6685-4199-a705-18a729b06445', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-12-03 10:59:29', '2022-12-03 10:59:29'),
('e9fa5335-c065-4c16-90b5-d775fa0d44aa', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 24, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-international-sweatshirt\"}', NULL, '2022-11-07 12:30:40', '2022-11-07 12:30:40'),
('ebe71937-731c-4951-a2d7-ea58f7792998', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-05 13:02:29', '2022-11-05 13:02:29'),
('ecb48ec6-6859-4d32-a11a-00c3146e43e8', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 23, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-09 05:02:52', '2022-11-09 05:02:52'),
('ee0d4a4f-6cb7-42d5-9561-59c889fdcd77', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/jugular-boys-dot-striped-full-sleeve-cotton-printed-t-shirt\"}', NULL, '2022-10-19 07:06:35', '2022-10-19 07:06:35'),
('ef3c7e83-c1fa-43c3-a138-7a2505c9a82a', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 6, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-06 07:11:36', '2022-11-06 07:11:36'),
('f00eac42-0042-45be-b7a0-ba11bb94ddc9', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 5, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-23 07:25:10', '2022-10-23 07:25:10'),
('f09b0ce8-7cfb-453d-8bb6-896c6efe9940', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage-yee\"}', NULL, '2022-11-12 10:21:30', '2022-11-12 10:21:30');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('f1d542c3-a5fd-448e-96c5-2ef8c1ad5966', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 3, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/symbol-mens-regular-track-pants\"}', NULL, '2022-10-19 08:13:16', '2022-10-19 08:13:16'),
('f21a2fae-bc1a-4e81-a14f-899f574e5407', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-09 05:03:03', '2022-11-09 05:03:03'),
('f32468ea-084d-4a26-a59d-9ad1b2e0130c', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 2, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/wrangler-womens-34-sleeves-smocked-shoulder-knit-top\"}', NULL, '2022-10-19 08:38:18', '2022-10-19 08:38:18'),
('f3267cc4-1cc3-42c1-a337-cc096e5e030e', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-16 13:12:11', '2022-11-16 13:12:11'),
('f6c24585-287f-4e4f-a748-36c634d50ff3', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 12:38:58', '2022-11-12 12:38:58'),
('f6ff2866-4d40-412e-ab72-59778852551f', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 31, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 11:22:51', '2022-11-12 11:22:51'),
('f7af11c7-e5a3-40d0-ac21-364c85d52fa7', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 7, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-10-25 11:03:52', '2022-10-25 11:03:52'),
('fb61191a-0b00-4d0b-a7d4-61710ae1d872', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 21, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-17 14:45:56', '2022-11-17 14:45:56'),
('fbeff087-81ca-4de9-afc9-b1cc06411ebb', 'App\\Notifications\\LoginNotification', 'App\\Models\\User', 25, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-11-12 12:06:41', '2022-11-12 12:06:41'),
('fbf1f878-d056-4234-8da4-ddf0cde45f63', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 25, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/russian-belt-bag\"}', NULL, '2022-11-12 10:53:31', '2022-11-12 10:53:31'),
('fcf5e98d-e01c-459d-9915-40c83a5dbd37', 'App\\Notifications\\AdWishlistNotification', 'App\\Models\\User', 1, '{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test\"}', NULL, '2022-11-23 06:49:28', '2022-11-23 06:49:28'),
('fdf279f7-2a18-446e-92a7-a7d60e04d770', 'App\\Notifications\\LogoutNotification', 'App\\Models\\User', 1, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-11-05 13:14:17', '2022-11-05 13:14:17'),
('fdfdb047-ba99-41d7-b08e-f6a4d4879983', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 38, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-gowns\"}', NULL, '2022-12-04 08:35:12', '2022-12-04 08:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `number` varchar(16) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT NULL COMMENT '1=Waiting for payment, 2=Already paid, 3=Expired',
  `snap_token` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$1/Kj364m2mfIcTV/O1XRzupKNDB9NWEPjYJxKdzFaFou6nLQjqav2', '2022-10-25 12:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(2, 'admin.create', 'admin', 'admin', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(3, 'admin.view', 'admin', 'admin', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(4, 'admin.edit', 'admin', 'admin', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(5, 'admin.delete', 'admin', 'admin', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(6, 'role.create', 'admin', 'role', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(7, 'role.view', 'admin', 'role', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(8, 'role.edit', 'admin', 'role', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(9, 'role.delete', 'admin', 'role', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(10, 'map.create', 'admin', 'map', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(11, 'map.view', 'admin', 'map', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(12, 'map.edit', 'admin', 'map', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(13, 'map.delete', 'admin', 'map', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(14, 'profile.view', 'admin', 'profile', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(15, 'profile.edit', 'admin', 'profile', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(16, 'setting.view', 'admin', 'settings', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(17, 'setting.update', 'admin', 'settings', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(18, 'ad.create', 'admin', 'ad', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(19, 'ad.view', 'admin', 'ad', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(20, 'ad.update', 'admin', 'ad', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(21, 'ad.delete', 'admin', 'ad', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(22, 'category.create', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(23, 'category.view', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(24, 'category.update', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(25, 'category.delete', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(26, 'subcategory.create', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(27, 'subcategory.view', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(28, 'subcategory.update', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(29, 'subcategory.delete', 'admin', 'category', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(30, 'custom-field.create', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(31, 'custom-field.view', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(32, 'custom-field.update', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(33, 'custom-field.delete', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(34, 'custom-field-group.create', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(35, 'custom-field-group.view', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(36, 'custom-field-group.update', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(37, 'custom-field-group.delete', 'admin', 'custom-field', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(38, 'newsletter.view', 'admin', 'newsletter', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(39, 'newsletter.mailsend', 'admin', 'newsletter', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(40, 'newsletter.delete', 'admin', 'newsletter', '2022-07-25 05:09:44', '2022-07-25 05:09:44'),
(41, 'brand.create', 'admin', 'brand', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(42, 'brand.view', 'admin', 'brand', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(43, 'brand.update', 'admin', 'brand', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(44, 'brand.delete', 'admin', 'brand', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(45, 'plan.create', 'admin', 'plan', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(46, 'plan.view', 'admin', 'plan', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(47, 'plan.update', 'admin', 'plan', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(48, 'plan.delete', 'admin', 'plan', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(49, 'postcategory.create', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(50, 'postcategory.view', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(51, 'postcategory.update', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(52, 'postcategory.delete', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(53, 'post.create', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(54, 'post.view', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(55, 'post.update', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(56, 'post.delete', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(57, 'tag.create', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(58, 'tag.view', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(59, 'tag.update', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(60, 'tag.delete', 'admin', 'Blog', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(61, 'testimonial.create', 'admin', 'testimonial', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(62, 'testimonial.view', 'admin', 'testimonial', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(63, 'testimonial.update', 'admin', 'testimonial', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(64, 'testimonial.delete', 'admin', 'testimonial', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(65, 'faqcategory.create', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(66, 'faqcategory.view', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(67, 'faqcategory.update', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(68, 'faqcategory.delete', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(69, 'faq.create', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(70, 'faq.view', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(71, 'faq.update', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(72, 'faq.delete', 'admin', 'faq', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(73, 'customer.view', 'admin', 'others', '2022-07-25 05:09:45', '2022-07-25 05:09:45'),
(74, 'contact.view', 'admin', 'others', '2022-07-25 05:09:45', '2022-07-25 05:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `ad_limit` int(11) NOT NULL,
  `featured_limit` int(11) NOT NULL,
  `badge` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interval` enum('monthly','yearly','custom_date') DEFAULT NULL,
  `custom_interval_days` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `author_id`, `title`, `slug`, `image`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Welcome to our sales!', 'welcome-to-our-sales', 'uploads/post/IsORGKNfZlbBFdGT0rnvKYzQ3aGTcAYgnlyllc3K.jpg', 'From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music', '<p>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p><br>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p><br>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p>&nbsp;</p>', '2022-10-19 07:14:50', '2022-10-19 07:22:21'),
(2, 1, 1, 'Our Creation', 'our-creation', 'uploads/post/95o9ZSC2CwNx7K301EAY3ziTZOkGKUkFrkI0JeT7.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2022-10-19 07:25:48', '2022-10-19 07:30:00'),
(3, 1, 1, 'Justify', 'justify', 'uploads/post/gGLL9f5ZX0rhLm5doOFdAeHJH7de2bJV0GM6veba.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2022-10-19 07:26:17', '2022-10-19 07:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'BigCommerce', 'bigcommerce', 'uploads/post/category\\tVqjy6eftoCMN1uWzOBsJ4qrMEI8tYBXamqf6D2a.png', '2022-09-20 07:26:12', '2022-09-20 07:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_custom_fields`
--

CREATE TABLE `product_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_group_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recent_view_ads`
--

CREATE TABLE `recent_view_ads` (
  `id` int(11) NOT NULL,
  `session_id` varchar(155) NOT NULL COMMENT 'session or user_id',
  `ad_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recent_view_ads`
--

INSERT INTO `recent_view_ads` (`id`, `session_id`, `ad_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 1, '2022-10-19 07:06:24', 2, '2022-10-19 07:06:35', 2),
(2, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 1, '2022-10-19 07:06:24', 2, '2022-10-19 07:11:16', 2),
(3, 'aBRlnThYjpEavarQepagu5C5FeeNba8t7hCW2ZOf', 1, '2022-10-19 07:06:24', 2, '2022-10-19 07:50:51', 2),
(4, 'aBRlnThYjpEavarQepagu5C5FeeNba8t7hCW2ZOf', 1, '2022-10-19 07:06:24', 2, '2022-10-19 07:54:51', 2),
(5, 'aBRlnThYjpEavarQepagu5C5FeeNba8t7hCW2ZOf', 4, '2022-10-19 08:19:53', 3, '2022-10-19 08:19:55', 3),
(6, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 5, '2022-10-19 08:27:39', 2, '2022-10-19 08:27:41', 2),
(7, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 6, '2022-10-19 08:30:57', 2, '2022-10-19 08:30:58', 2),
(8, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 7, '2022-10-19 08:38:15', 2, '2022-10-19 08:38:18', 2),
(9, 'sScBKCExnoqOmT3JslIkm55i0jZYI6ZF0Q0y8OXA', 8, '2022-10-19 08:46:02', 2, '2022-10-19 08:46:03', 2),
(10, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 8, '2022-10-19 08:46:02', 2, '2022-10-19 09:09:10', 2),
(11, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 8, '2022-10-19 08:46:02', 2, '2022-10-19 11:20:50', 2),
(12, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 7, '2022-10-19 08:38:15', 2, '2022-10-19 09:09:36', 2),
(13, 'z8OUDz3fqt9rX4g4NMyKdwPRwu61NLDeYIT2nP7T', 5, '2022-10-19 08:27:39', 2, '2022-10-19 09:09:21', 2),
(14, 'z8OUDz3fqt9rX4g4NMyKdwPRwu61NLDeYIT2nP7T', 9, '2022-10-19 11:40:31', 2, '2022-10-19 11:40:42', 2),
(15, 'Z1l6U7VuSS0IVpQoUoaypXaQN56AcJVFAcuA8dSC', 9, '2022-10-19 11:40:31', 2, '2022-10-19 11:49:09', 2),
(16, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 7, '2022-10-19 08:38:15', 2, '2022-10-19 11:32:32', 2),
(17, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 1, '2022-10-19 07:06:24', 2, '2022-10-19 09:10:22', 2),
(18, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 5, '2022-10-19 08:27:39', 2, '2022-10-19 11:46:24', 2),
(19, 's14ORZVJKUV1uf4y7UM5sdCKmzYxQRN4Fpuy57am', 5, '2022-10-19 08:27:39', 2, '2022-10-19 12:36:56', 2),
(20, '4tWupithKQGct6ago0b1abi2MIbuGLcxjqgEmx3S', 1, '2022-10-19 07:06:24', 2, '2022-10-19 12:36:29', 2),
(21, '4tWupithKQGct6ago0b1abi2MIbuGLcxjqgEmx3S', 1, '2022-10-19 07:06:24', 2, '2022-10-19 12:50:13', 2),
(22, 'z8OUDz3fqt9rX4g4NMyKdwPRwu61NLDeYIT2nP7T', 9, '2022-10-19 11:40:31', 2, '2022-10-19 12:29:36', 2),
(23, 'z8OUDz3fqt9rX4g4NMyKdwPRwu61NLDeYIT2nP7T', 11, '2022-10-19 12:46:29', 2, '2022-10-19 12:46:33', 2),
(24, 'L22wy1P2SSJWtfOySt48Jfxnfqn9cKbDnX2B53hl', 11, '2022-10-19 12:46:29', 2, '2022-10-19 13:19:15', 2),
(25, 'ODueI3XWEcypsnZU3tVQ2o0b4ZHRqON4OqFEoEMw', 6, '2022-10-19 08:30:57', 2, '2022-10-19 08:31:04', 2),
(26, 'CVYz8eNPlMEbGx4fkfAWIdcmiLUqqeKeKO4a9t2Z', 5, '2022-10-19 08:27:39', 2, '2022-10-19 12:40:15', 2),
(27, 'CVYz8eNPlMEbGx4fkfAWIdcmiLUqqeKeKO4a9t2Z', 7, '2022-10-19 08:38:15', 2, '2022-10-19 12:36:24', 2),
(28, 'CVYz8eNPlMEbGx4fkfAWIdcmiLUqqeKeKO4a9t2Z', 11, '2022-10-19 12:46:29', 2, '2022-10-19 18:26:42', 2),
(29, 'R9LtFXWfpn2WXKJPuQEkuCZsJO2fDRS54HAs1XLe', 6, '2022-10-19 08:30:57', 2, '2022-10-20 04:22:51', 2),
(30, 'yojt7tQFOVcayDSzTk6L0QR6tnTD3IJCQbiXG4wz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 10:26:46', 2),
(31, 'LzVqD1u2h5ofgB4YUMV0rGv8g756VRwbSWUqW5xV', 1, '2022-10-19 07:06:24', 2, '2022-10-19 12:50:40', 2),
(32, 'yojt7tQFOVcayDSzTk6L0QR6tnTD3IJCQbiXG4wz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 10:30:36', 2),
(33, 'yojt7tQFOVcayDSzTk6L0QR6tnTD3IJCQbiXG4wz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 10:32:41', 2),
(34, 'ZXOFTwc3OH235n3oq0nCYjVA7WKfpVMHNfygrZgK', 8, '2022-10-19 08:46:02', 2, '2022-10-19 11:21:09', 2),
(35, '8VVv8HpKMKYtTmYKPkMFHpagU0EKdkmbehFMBkoB', 8, '2022-10-19 08:46:02', 2, '2022-10-20 11:08:45', 2),
(36, 'yojt7tQFOVcayDSzTk6L0QR6tnTD3IJCQbiXG4wz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 10:32:47', 2),
(37, 'yojt7tQFOVcayDSzTk6L0QR6tnTD3IJCQbiXG4wz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 12:03:36', 2),
(38, '8VVv8HpKMKYtTmYKPkMFHpagU0EKdkmbehFMBkoB', 6, '2022-10-19 08:30:57', 2, '2022-10-20 12:05:58', 2),
(39, '4BHFmVRI5r9ua071kOmg2rVNs31hDXloL1Uzsfr8', 1, '2022-10-19 07:06:24', 2, '2022-10-20 10:31:33', 2),
(40, 'lm1EVipBqQdRk9fJj4TJvM53G3dc6DUYEzDLW6uz', 5, '2022-10-19 08:27:39', 2, '2022-10-20 05:33:35', 2),
(41, 'lm1EVipBqQdRk9fJj4TJvM53G3dc6DUYEzDLW6uz', 9, '2022-10-19 11:40:31', 2, '2022-10-19 13:18:54', 2),
(42, 'lm1EVipBqQdRk9fJj4TJvM53G3dc6DUYEzDLW6uz', 6, '2022-10-19 08:30:57', 2, '2022-10-20 12:08:58', 2),
(43, 'lm1EVipBqQdRk9fJj4TJvM53G3dc6DUYEzDLW6uz', 7, '2022-10-19 08:38:15', 2, '2022-10-20 05:33:49', 2),
(44, 'OJcPweZuuGWpjb1ngH39Mwrk54IobJMWEoWGmKLY', 11, '2022-10-19 12:46:29', 2, '2022-10-20 05:34:40', 2),
(45, 'OJcPweZuuGWpjb1ngH39Mwrk54IobJMWEoWGmKLY', 11, '2022-10-19 12:46:29', 2, '2022-10-21 15:22:32', 2),
(46, 'OJcPweZuuGWpjb1ngH39Mwrk54IobJMWEoWGmKLY', 6, '2022-10-19 08:30:57', 2, '2022-10-21 10:06:07', 2),
(47, 'G1UzthjMFlG5uToz64kjlsRkbVLNsmolA7YdBchQ', 8, '2022-10-19 08:46:02', 2, '2022-10-20 11:08:55', 2),
(48, 'RuWbg82VPzKZRwLH1ZUnZ0dzZkF4iqucpdo4Khoa', 1, '2022-10-19 07:06:24', 2, '2022-10-20 15:03:36', 2),
(49, 'RuWbg82VPzKZRwLH1ZUnZ0dzZkF4iqucpdo4Khoa', 8, '2022-10-19 08:46:02', 2, '2022-10-22 05:07:30', 2),
(50, '8jg3sH3O1nfzCODgepI4w31iCS69pVGT8c6TlXgu', 5, '2022-10-19 08:27:39', 2, '2022-10-21 09:16:15', 2),
(51, 'Hm1MAJEnZawLP6MUKIZDC92XVqgY4Ddobm3MBBp1', 7, '2022-10-19 08:38:15', 2, '2022-10-21 10:22:10', 2),
(52, 'Hm1MAJEnZawLP6MUKIZDC92XVqgY4Ddobm3MBBp1', 7, '2022-10-19 08:38:15', 2, '2022-10-22 07:58:37', 2),
(53, 'Hm1MAJEnZawLP6MUKIZDC92XVqgY4Ddobm3MBBp1', 6, '2022-10-19 08:30:57', 2, '2022-10-21 16:16:39', 2),
(54, 'mAlmLYJqTdBMmPGg1CnYlcyabtrw4k4mjqzqrjTi', 9, '2022-10-19 11:40:31', 2, '2022-10-21 09:48:58', 2),
(55, 'rzRcH8RPKCdyZQlXfujFixNHWWBLMyMQRjyy6VKb', 1, '2022-10-19 07:06:24', 2, '2022-10-22 06:34:46', 2),
(56, 'rzRcH8RPKCdyZQlXfujFixNHWWBLMyMQRjyy6VKb', 1, '2022-10-19 07:06:24', 2, '2022-10-22 16:28:17', 2),
(57, 'GvQaQ3cXA8AA9AaOw5EwdjNcjvCu61nX7TTKPAP1', 9, '2022-10-19 11:40:31', 2, '2022-10-22 14:17:33', 2),
(58, 'GvQaQ3cXA8AA9AaOw5EwdjNcjvCu61nX7TTKPAP1', 9, '2022-10-19 11:40:31', 2, '2022-10-23 03:58:43', 2),
(59, 'rMDhy0yeg7p6LFEl85lslsom8YnrYqbibOq5MQfh', 5, '2022-10-19 08:27:39', 2, '2022-10-22 07:49:27', 2),
(60, 'rMDhy0yeg7p6LFEl85lslsom8YnrYqbibOq5MQfh', 7, '2022-10-19 08:38:15', 2, '2022-10-22 07:58:50', 2),
(61, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 7, '2022-10-19 08:38:15', 2, '2022-10-23 07:24:53', 2),
(62, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 6, '2022-10-19 08:30:57', 2, '2022-10-22 08:06:24', 2),
(63, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 1, '2022-10-19 07:06:24', 2, '2022-10-22 16:28:18', 2),
(64, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 11, '2022-10-19 12:46:29', 2, '2022-10-21 15:23:00', 2),
(65, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 7, '2022-10-19 08:38:15', 2, '2022-10-23 07:25:10', 2),
(66, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 7, '2022-10-19 08:38:15', 2, '2022-10-23 07:40:59', 2),
(67, 'JziGNBTDkPs1ma9WgXAslmf6CLyECC7vq3kfXsxO', 9, '2022-10-19 11:40:31', 2, '2022-10-23 04:00:00', 2),
(68, 'GUNGxIAL7giAxxldBk2QVselETflkRxdLP4IqDGH', 6, '2022-10-19 08:30:57', 2, '2022-10-23 07:25:27', 2),
(69, 'GUNGxIAL7giAxxldBk2QVselETflkRxdLP4IqDGH', 8, '2022-10-19 08:46:02', 2, '2022-10-22 06:35:07', 2),
(70, 'GUNGxIAL7giAxxldBk2QVselETflkRxdLP4IqDGH', 5, '2022-10-19 08:27:39', 2, '2022-10-23 07:22:47', 2),
(71, 'GUNGxIAL7giAxxldBk2QVselETflkRxdLP4IqDGH', 7, '2022-10-19 08:38:15', 2, '2022-10-23 07:52:36', 2),
(72, 'w2Aaj7sWMcVE1tHTQy7yu14UvwGzv3WHXjPmvBIG', 1, '2022-10-19 07:06:24', 2, '2022-10-23 07:26:13', 2),
(73, 'bwYhB3K9wlsAFaLiZNubUSlUV6V7UyAs0gOwOmLa', 7, '2022-10-19 08:38:15', 2, '2022-10-23 08:02:29', 2),
(74, 'M75dXxY7Ax2a7N5oEedAxVpc8CEPxzpFqWU1b8l8', 1, '2022-10-19 07:06:24', 2, '2022-10-23 13:08:00', 2),
(75, 'M75dXxY7Ax2a7N5oEedAxVpc8CEPxzpFqWU1b8l8', 11, '2022-10-19 12:46:29', 2, '2022-10-23 07:26:25', 2),
(76, 'fxsMrAqav2sAqWHq3nzZSc1JtBmPpkWhHDN9K3Bp', 7, '2022-10-19 08:38:15', 2, '2022-10-24 12:12:59', 2),
(77, 'Sx12Az69D5SnLscjkZJZQLvb0nDt8MoPBFOzgxNv', 11, '2022-10-19 12:46:29', 2, '2022-10-25 04:37:09', 2),
(78, 'Sx12Az69D5SnLscjkZJZQLvb0nDt8MoPBFOzgxNv', 11, '2022-10-19 12:46:29', 2, '2022-10-25 10:58:08', 2),
(79, 'KO2HFiPFLYKqfC0r9AGMRJ3JjIOz9lxFArCDmiAS', 1, '2022-10-19 07:06:24', 2, '2022-10-25 04:36:26', 2),
(80, 'KO2HFiPFLYKqfC0r9AGMRJ3JjIOz9lxFArCDmiAS', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:04:00', 2),
(81, 'KO2HFiPFLYKqfC0r9AGMRJ3JjIOz9lxFArCDmiAS', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:04:24', 2),
(82, '0BrjTVVcdqCiZ6aR2uaIBz7cxk1tH1dEvMQbwgSV', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:04:41', 2),
(83, 'KO2HFiPFLYKqfC0r9AGMRJ3JjIOz9lxFArCDmiAS', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:05:23', 2),
(84, 'iO7AX1gFyBuPuImlJ6Dt0EtyW3Cp5iZpxxOcq9ku', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:11:31', 2),
(85, 'KO2HFiPFLYKqfC0r9AGMRJ3JjIOz9lxFArCDmiAS', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:12:48', 2),
(86, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:14:44', 2),
(87, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 7, '2022-10-19 08:38:15', 2, '2022-10-25 10:56:44', 2),
(88, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 11:37:24', 2),
(89, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 12:22:54', 2),
(90, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 10, '2022-10-19 12:43:28', 2, '2022-10-19 12:43:34', 2),
(91, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 10, '2022-10-19 12:43:28', 2, '2022-10-25 12:32:01', 2),
(92, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 12:23:37', 2),
(93, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 12:32:54', 2),
(94, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 6, '2022-10-19 08:30:57', 2, '2022-10-23 07:54:38', 2),
(95, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 8, '2022-10-19 08:46:02', 2, '2022-10-23 07:56:07', 2),
(96, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 7, '2022-10-19 08:38:15', 2, '2022-10-25 12:22:43', 2),
(97, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 7, '2022-10-19 08:38:15', 2, '2022-10-25 12:35:00', 2),
(98, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 11, '2022-10-19 12:46:29', 2, '2022-10-25 10:58:26', 2),
(99, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 12:33:28', 2),
(100, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 12, '2022-10-25 12:38:50', 2, '2022-10-25 12:38:51', 2),
(101, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 9, '2022-10-19 11:40:31', 2, '2022-10-23 07:53:17', 2),
(102, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 1, '2022-10-19 07:06:24', 2, '2022-10-25 12:37:47', 2),
(103, '7vfxnh9ayqxfVcyacTU3dJClBTbSkgmHqJW3VcL0', 12, '2022-10-25 12:38:50', 2, '2022-10-25 12:38:54', 2),
(104, 'GPqhIrIWx5kcu29NI15uoD2dfOd49h77T1eSMEZ9', 13, '2022-10-25 13:40:07', 4, '2022-10-25 13:40:14', 4),
(105, 'GPqhIrIWx5kcu29NI15uoD2dfOd49h77T1eSMEZ9', 13, '2022-10-25 13:40:07', 4, '2022-10-25 13:43:06', 4),
(106, 'ccYYcxZausBwoKsiR5TX2BIA1C5StjnzjrfxXpJK', 13, '2022-10-25 13:40:07', 4, '2022-10-25 13:43:49', 4),
(107, 'ccYYcxZausBwoKsiR5TX2BIA1C5StjnzjrfxXpJK', 13, '2022-10-25 13:40:07', 4, '2022-10-25 18:33:47', 4),
(108, 'ccYYcxZausBwoKsiR5TX2BIA1C5StjnzjrfxXpJK', 13, '2022-10-25 13:40:07', 4, '2022-10-25 18:34:07', 4),
(109, 'ccYYcxZausBwoKsiR5TX2BIA1C5StjnzjrfxXpJK', 13, '2022-10-25 13:40:07', 4, '2022-10-25 18:34:24', 4),
(110, 'et1PAEksIyErj66I8vPaNGjG76NA8T7qlx4rr8Xt', 13, '2022-10-25 13:40:07', 4, '2022-10-25 18:35:00', 4),
(111, 'et1PAEksIyErj66I8vPaNGjG76NA8T7qlx4rr8Xt', 13, '2022-10-25 13:40:07', 4, '2022-10-26 06:00:54', 4),
(112, 'DzWkuLHEzpKRKSgMa7h5qiTYYjJyVdkZx0xKmCch', 13, '2022-10-25 13:40:07', 4, '2022-10-26 06:01:43', 4),
(113, 'jb122bkQMRM48ZGnmtH7LDpCSBNpUNf47YykkmHD', 13, '2022-10-25 13:40:07', 4, '2022-10-26 17:49:53', 4),
(114, 'laB4cOKl5DLd4G21eWz6ByQUfJE0mkcIyXYHTtvK', 13, '2022-10-25 13:40:07', 4, '2022-10-27 05:50:31', 4),
(115, 'laB4cOKl5DLd4G21eWz6ByQUfJE0mkcIyXYHTtvK', 13, '2022-10-25 13:40:07', 4, '2022-10-27 18:56:35', 4),
(116, 'To6VfDB8phMrmU3L7DacSV16LhFAx03bse3PphpF', 14, '2022-10-25 13:42:04', 4, '2022-10-25 13:42:05', 4),
(117, 'Zd51eLeBjy7X0ruxaTTHe9jcw8re5GGjhBQymTJF', 15, '2022-10-30 04:35:56', 1, '2022-10-30 04:35:56', 1),
(118, 'Zd51eLeBjy7X0ruxaTTHe9jcw8re5GGjhBQymTJF', 15, '2022-10-30 04:35:56', 1, '2022-10-30 04:45:35', 1),
(119, '3rFnNzH5DhiAsukBKm8zHn0xQJJysWmj4xyJ62kM', 13, '2022-10-25 13:40:07', 4, '2022-10-27 18:56:57', 4),
(120, '8evEIoY811Dg6c0005SBD8It9Lk0kiPGpjy2lzse', 14, '2022-10-25 13:42:04', 4, '2022-10-29 20:52:47', 4),
(121, 'HS25Og08FNCyQfamOcI3sVVCCoks8kpvw2xGAEVV', 13, '2022-10-25 13:40:07', 4, '2022-10-30 12:47:03', 4),
(122, 'HS25Og08FNCyQfamOcI3sVVCCoks8kpvw2xGAEVV', 14, '2022-10-25 13:42:04', 4, '2022-11-01 15:20:03', 4),
(123, 'HS25Og08FNCyQfamOcI3sVVCCoks8kpvw2xGAEVV', 27, '2022-11-01 15:26:46', 6, '2022-11-01 15:26:47', 6),
(124, 'HS25Og08FNCyQfamOcI3sVVCCoks8kpvw2xGAEVV', 14, '2022-10-25 13:42:04', 4, '2022-11-01 15:27:20', 4),
(125, 'laMJJvq45brTv1hyTSUHiMXgqnfSfBmIPAlPGFs5', 13, '2022-10-25 13:40:07', 4, '2022-11-01 15:23:28', 4),
(126, 'SlorHCH9EtCLYGPK1dB5ee8FMDgNDaGx7biJxfOr', 13, '2022-10-25 13:40:07', 4, '2022-11-02 05:05:35', 4),
(127, 'fxaylS73ObtSTthjS3NEFwd5FT1dwplXntla26RE', 13, '2022-10-25 13:40:07', 4, '2022-11-03 04:42:45', 4),
(128, 'fxaylS73ObtSTthjS3NEFwd5FT1dwplXntla26RE', 13, '2022-10-25 13:40:07', 4, '2022-11-04 04:44:40', 4),
(129, 'xVHvHCo41pcsfeKA74pse6pm5yqxUCOKGcMwOqDz', 13, '2022-10-25 13:40:07', 4, '2022-11-04 05:33:37', 4),
(130, 'xVHvHCo41pcsfeKA74pse6pm5yqxUCOKGcMwOqDz', 13, '2022-10-25 13:40:07', 4, '2022-11-04 18:25:34', 4),
(131, 'DGzvBA1WWgJZxpekL7ZyMRbpxzpN9kVKnKiCYHIj', 14, '2022-10-25 13:42:04', 4, '2022-11-01 15:42:17', 4),
(132, 'DGzvBA1WWgJZxpekL7ZyMRbpxzpN9kVKnKiCYHIj', 13, '2022-10-25 13:40:07', 4, '2022-11-04 18:25:52', 4),
(133, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:27:17', 21),
(134, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 33, '2022-11-05 06:32:59', 21, '2022-11-05 06:38:25', 21),
(135, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 31, '2022-11-05 06:30:50', 21, '2022-11-05 06:38:52', 21),
(136, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 33, '2022-11-05 06:32:59', 21, '2022-11-05 06:40:21', 21),
(137, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:39:10', 21),
(138, 'LoOMtAaeqX9T0kM3okTfOeRYeFt4wYH7tUx2MJGV', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:49:44', 21),
(139, 'vwQFbG7JKmYLmCniWauFuJDvayHWTpAwcyEeA1jy', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:54:34', 21),
(140, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:54:41', 21),
(141, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:55:08', 21),
(142, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:55:57', 21),
(143, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:56:06', 21),
(144, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 27, '2022-11-01 15:26:46', 6, '2022-11-05 06:39:19', 6),
(145, 'okK241gmx8OoJczpIbKM7UbcNM0Xv9uELvswvYzq', 27, '2022-11-01 15:26:46', 6, '2022-11-05 06:56:41', 6),
(146, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 27, '2022-11-01 15:26:46', 6, '2022-11-05 06:56:45', 6),
(147, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 27, '2022-11-01 15:26:46', 6, '2022-11-05 06:57:57', 6),
(148, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 23, '2022-10-30 11:42:29', 5, '2022-11-05 06:39:40', 5),
(149, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 23, '2022-10-30 11:42:29', 5, '2022-11-05 07:00:14', 5),
(150, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 27, '2022-11-01 15:26:46', 6, '2022-11-05 06:58:03', 6),
(151, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 27, '2022-11-01 15:26:46', 6, '2022-11-05 07:00:50', 6),
(152, 'UI1zajziA3SnBhPv61kbebIpGC7T7sno7XWaHG6p', 26, '2022-10-31 06:12:55', 20, '2022-11-05 06:39:33', 20),
(153, '9gKCT15dediQBcVcXVmC9DmsVp1bAIWGwPek1zg4', 26, '2022-10-31 06:12:55', 20, '2022-11-05 07:02:43', 20),
(154, 'WcOTJ8eXS4SDs9EYqhMmOxtVv6BfoHdvZWnSKsei', 26, '2022-10-31 06:12:55', 20, '2022-11-05 10:34:48', 20),
(155, 'f4rxubr3MbMf0e3KnAz6GVVkU70h7scByXdN1emK', 23, '2022-10-30 11:42:29', 5, '2022-11-05 07:00:30', 5),
(156, 'f4rxubr3MbMf0e3KnAz6GVVkU70h7scByXdN1emK', 23, '2022-10-30 11:42:29', 5, '2022-11-05 12:52:22', 5),
(157, 'f4rxubr3MbMf0e3KnAz6GVVkU70h7scByXdN1emK', 23, '2022-10-30 11:42:29', 5, '2022-11-05 12:52:29', 5),
(158, 'f4rxubr3MbMf0e3KnAz6GVVkU70h7scByXdN1emK', 14, '2022-10-25 13:42:04', 4, '2022-11-05 06:04:17', 4),
(159, 'uNHiZWvBp2jExu6JF5opY9LtkT7yG9pvfjokLoMU', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:02:36', 4),
(160, 'uNHiZWvBp2jExu6JF5opY9LtkT7yG9pvfjokLoMU', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:02:45', 4),
(161, 'uNHiZWvBp2jExu6JF5opY9LtkT7yG9pvfjokLoMU', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:02:49', 4),
(162, 'uNHiZWvBp2jExu6JF5opY9LtkT7yG9pvfjokLoMU', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:08:53', 4),
(163, 'WcOTJ8eXS4SDs9EYqhMmOxtVv6BfoHdvZWnSKsei', 26, '2022-10-31 06:12:55', 20, '2022-11-05 12:52:22', 20),
(164, 'zGFZ802Qb2Mr86CzpIPXIFw3OcYbyVQ6TJrruTyB', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:09:01', 4),
(165, 'zGFZ802Qb2Mr86CzpIPXIFw3OcYbyVQ6TJrruTyB', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:10:53', 4),
(166, 'zGFZ802Qb2Mr86CzpIPXIFw3OcYbyVQ6TJrruTyB', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:12:41', 4),
(167, 'zGFZ802Qb2Mr86CzpIPXIFw3OcYbyVQ6TJrruTyB', 27, '2022-11-01 15:26:46', 6, '2022-11-05 07:00:54', 6),
(168, 'TmPX3SqpS21MG8EGcTsERXJfXxRHufRuDDpnfX1c', 26, '2022-10-31 06:12:55', 20, '2022-11-05 13:09:39', 20),
(169, 'TmPX3SqpS21MG8EGcTsERXJfXxRHufRuDDpnfX1c', 26, '2022-10-31 06:12:55', 20, '2022-11-05 13:27:55', 20),
(170, 'TmPX3SqpS21MG8EGcTsERXJfXxRHufRuDDpnfX1c', 29, '2022-11-05 06:27:16', 21, '2022-11-05 06:56:10', 21),
(171, 'TmPX3SqpS21MG8EGcTsERXJfXxRHufRuDDpnfX1c', 29, '2022-11-05 06:27:16', 21, '2022-11-05 13:28:30', 21),
(172, 'hl5d7wnFTmLRUrnCFjdi7akQDu8HMH6nOk5r1Bvb', 29, '2022-11-05 06:27:16', 21, '2022-11-05 13:28:35', 21),
(173, 'hl5d7wnFTmLRUrnCFjdi7akQDu8HMH6nOk5r1Bvb', 29, '2022-11-05 06:27:16', 21, '2022-11-06 04:18:37', 21),
(174, 'hl5d7wnFTmLRUrnCFjdi7akQDu8HMH6nOk5r1Bvb', 27, '2022-11-01 15:26:46', 6, '2022-11-05 13:14:30', 6),
(175, 'hl5d7wnFTmLRUrnCFjdi7akQDu8HMH6nOk5r1Bvb', 27, '2022-11-01 15:26:46', 6, '2022-11-06 04:20:03', 6),
(176, 'R3iC8D2YpIBhGqt0Mu2P7yfoUXob5KeaWjz2FxSJ', 27, '2022-11-01 15:26:46', 6, '2022-11-06 04:22:09', 6),
(177, 'R3iC8D2YpIBhGqt0Mu2P7yfoUXob5KeaWjz2FxSJ', 26, '2022-10-31 06:12:55', 20, '2022-11-05 13:28:01', 20),
(178, 'R3iC8D2YpIBhGqt0Mu2P7yfoUXob5KeaWjz2FxSJ', 27, '2022-11-01 15:26:46', 6, '2022-11-06 07:11:37', 6),
(179, 'GBJl0qzPqanRdWN3OFl5BYl0Xv8s2fuE9P0BhT1z', 36, '2022-11-07 12:26:13', 24, '2022-11-07 12:30:21', 24),
(180, 'GBJl0qzPqanRdWN3OFl5BYl0Xv8s2fuE9P0BhT1z', 36, '2022-11-07 12:26:13', 24, '2022-11-07 12:30:53', 24),
(181, 'GBJl0qzPqanRdWN3OFl5BYl0Xv8s2fuE9P0BhT1z', 36, '2022-11-07 12:26:13', 24, '2022-11-07 12:31:26', 24),
(182, 'GBJl0qzPqanRdWN3OFl5BYl0Xv8s2fuE9P0BhT1z', 36, '2022-11-07 12:26:13', 24, '2022-11-07 12:31:56', 24),
(183, 'hKUOdwVWvqi5yF3RO6KhNGhk2i1anxj2p1ThFmyH', 35, '2022-11-07 12:23:50', 24, '2022-11-07 12:30:39', 24),
(184, 'hKUOdwVWvqi5yF3RO6KhNGhk2i1anxj2p1ThFmyH', 35, '2022-11-07 12:23:50', 24, '2022-11-07 12:55:49', 24),
(185, 'hKUOdwVWvqi5yF3RO6KhNGhk2i1anxj2p1ThFmyH', 35, '2022-11-07 12:23:50', 24, '2022-11-07 12:58:37', 24),
(186, 'GBJl0qzPqanRdWN3OFl5BYl0Xv8s2fuE9P0BhT1z', 35, '2022-11-07 12:23:50', 24, '2022-11-07 12:59:20', 24),
(187, 'cXG0kM4oLLmBE2qYaP22ASU5ylUeztj6njjCEbxl', 36, '2022-11-07 12:26:13', 24, '2022-11-07 12:32:08', 24),
(188, 'cXG0kM4oLLmBE2qYaP22ASU5ylUeztj6njjCEbxl', 27, '2022-11-01 15:26:46', 6, '2022-11-06 07:12:29', 6),
(189, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 27, '2022-11-01 15:26:46', 6, '2022-11-08 08:39:18', 6),
(190, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 27, '2022-11-01 15:26:46', 6, '2022-11-08 08:51:28', 6),
(191, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 35, '2022-11-07 12:23:50', 24, '2022-11-07 13:08:40', 24),
(192, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 36, '2022-11-07 12:26:13', 24, '2022-11-08 08:38:58', 24),
(193, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 27, '2022-11-01 15:26:46', 6, '2022-11-08 08:52:48', 6),
(194, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 34, '2022-11-05 06:36:01', 21, '2022-11-05 06:38:18', 21),
(195, 'DpAKS5J3XY5KWXvX7RyvMwHbJnp227eadlvdqVUB', 35, '2022-11-07 12:23:50', 24, '2022-11-08 08:53:05', 24),
(196, 'XGvwBSVfHQDDKRNVlXy5DdKXJpl73IR6hvyAW1dk', 36, '2022-11-07 12:26:13', 24, '2022-11-08 09:22:54', 24),
(197, 'XGvwBSVfHQDDKRNVlXy5DdKXJpl73IR6hvyAW1dk', 34, '2022-11-05 06:36:01', 21, '2022-11-08 09:34:52', 21),
(198, 'XGvwBSVfHQDDKRNVlXy5DdKXJpl73IR6hvyAW1dk', 27, '2022-11-01 15:26:46', 6, '2022-11-08 09:26:38', 6),
(199, 'XGvwBSVfHQDDKRNVlXy5DdKXJpl73IR6hvyAW1dk', 26, '2022-10-31 06:12:55', 20, '2022-11-06 07:12:03', 20),
(200, 'ywR4iCHA9JkhcbTvIpQ9G7N9Er85qgmlNItlOU7N', 36, '2022-11-07 12:26:13', 24, '2022-11-09 00:43:51', 24),
(201, 'uVjfsNuopaeYxFb2FS4wxgnteFFdBN4LN3oOsGzv', 34, '2022-11-05 06:36:01', 21, '2022-11-09 00:57:36', 21),
(202, 'a22ZWmkLIpD2CVXLI7Fy93fZCnkPDiXDYtLYLENC', 33, '2022-11-05 06:32:59', 21, '2022-11-05 06:48:03', 21),
(203, 'uVjfsNuopaeYxFb2FS4wxgnteFFdBN4LN3oOsGzv', 35, '2022-11-07 12:23:50', 24, '2022-11-08 09:34:57', 24),
(204, 'uVjfsNuopaeYxFb2FS4wxgnteFFdBN4LN3oOsGzv', 35, '2022-11-07 12:23:50', 24, '2022-11-09 04:42:18', 24),
(205, 'uVjfsNuopaeYxFb2FS4wxgnteFFdBN4LN3oOsGzv', 35, '2022-11-07 12:23:50', 24, '2022-11-09 04:42:18', 24),
(206, 'jyBqFsxfPTWssGiipNjSac43kmmZsBmoaAZXvLZG', 34, '2022-11-05 06:36:01', 21, '2022-11-09 04:19:26', 21),
(207, 'gcdSm2JHfoOXfEN7Cz6BchrpKI9dScXGPtZzAucB', 34, '2022-11-05 06:36:01', 21, '2022-11-09 05:03:22', 21),
(208, 'gcdSm2JHfoOXfEN7Cz6BchrpKI9dScXGPtZzAucB', 35, '2022-11-07 12:23:50', 24, '2022-11-09 04:42:55', 24),
(209, '1kIAD8bxsroJkVaeX8uLjRCyVCGgM0YDs9U6hQWj', 35, '2022-11-07 12:23:50', 24, '2022-11-09 10:45:48', 24),
(210, '1kIAD8bxsroJkVaeX8uLjRCyVCGgM0YDs9U6hQWj', 13, '2022-10-25 13:40:07', 4, '2022-11-05 06:05:09', 4),
(211, '1kIAD8bxsroJkVaeX8uLjRCyVCGgM0YDs9U6hQWj', 13, '2022-10-25 13:40:07', 4, '2022-11-09 11:14:54', 4),
(212, '1kIAD8bxsroJkVaeX8uLjRCyVCGgM0YDs9U6hQWj', 35, '2022-11-07 12:23:50', 24, '2022-11-09 11:07:14', 24),
(213, 'QrtTsTKuOtc16wnh3T0c012zNFPdBDCtJKz1D0pA', 29, '2022-11-05 06:27:16', 21, '2022-11-06 04:19:32', 21),
(214, '1kIAD8bxsroJkVaeX8uLjRCyVCGgM0YDs9U6hQWj', 14, '2022-10-25 13:42:04', 4, '2022-11-05 13:13:40', 4),
(215, 'ZhIiDS9d5CKncjSKWmQdLRfOXAzNWQLzhjUQ5Bka', 13, '2022-10-25 13:40:07', 4, '2022-11-09 11:15:30', 4),
(216, 'ZhIiDS9d5CKncjSKWmQdLRfOXAzNWQLzhjUQ5Bka', 14, '2022-10-25 13:42:04', 4, '2022-11-09 11:59:02', 4),
(217, 'KcqjoO0fhEamAnCHHlYXdCbhmoNVzzUgkc0lQgO3', 14, '2022-10-25 13:42:04', 4, '2022-11-09 12:47:18', 4),
(218, 'ZhIiDS9d5CKncjSKWmQdLRfOXAzNWQLzhjUQ5Bka', 34, '2022-11-05 06:36:01', 21, '2022-11-09 10:44:15', 21),
(219, 'YuuLO3Qu8k9tAjblrzoEiY8E2CKKw2zlE8Ddr0wy', 34, '2022-11-05 06:36:01', 21, '2022-11-09 12:48:06', 21),
(220, 'YuuLO3Qu8k9tAjblrzoEiY8E2CKKw2zlE8Ddr0wy', 27, '2022-11-01 15:26:46', 6, '2022-11-09 00:58:20', 6),
(221, 'pj5b7pAgFLGiHemXr2l1PLsl52mnuoCdNhGix9sv', 35, '2022-11-07 12:23:50', 24, '2022-11-09 11:29:38', 24),
(222, 'pj5b7pAgFLGiHemXr2l1PLsl52mnuoCdNhGix9sv', 30, '2022-11-05 06:28:58', 21, '2022-11-05 06:39:00', 21),
(223, 'brbtyikmlFQoJTFgdqEW8qhZFeENRskHuGvtwrhV', 34, '2022-11-05 06:36:01', 21, '2022-11-09 12:48:32', 21),
(224, 'S4HMCyCPYpSIxSpRjdyMYOHceNeaCGD4X6I4NRvC', 36, '2022-11-07 12:26:13', 24, '2022-11-09 04:16:23', 24),
(225, '4q9T9AV3HedtIq6pPKpHFZwY3ymjP6LUJpzf9S5X', 27, '2022-11-01 15:26:46', 6, '2022-11-09 12:51:22', 6),
(226, '4q9T9AV3HedtIq6pPKpHFZwY3ymjP6LUJpzf9S5X', 29, '2022-11-05 06:27:16', 21, '2022-11-09 11:33:58', 21),
(227, '4q9T9AV3HedtIq6pPKpHFZwY3ymjP6LUJpzf9S5X', 27, '2022-11-01 15:26:46', 6, '2022-11-11 19:51:28', 6),
(228, 'yVR4vDEZn3bnUdyokDTLqAmYz661sN7ybPXdr9Ay', 29, '2022-11-05 06:27:16', 21, '2022-11-11 19:51:32', 21),
(229, '4rqlTMufaVDwC8KEItMfQ6yb0FkaPb1hj48OR7gJ', 29, '2022-11-05 06:27:16', 21, '2022-11-12 03:57:58', 21),
(230, 'yVR4vDEZn3bnUdyokDTLqAmYz661sN7ybPXdr9Ay', 29, '2022-11-05 06:27:16', 21, '2022-11-12 03:59:05', 21),
(231, 'udnd7NEPfChW49gOmXMaxy3X5wA0WKNWfYDMpnIP', 36, '2022-11-07 12:26:13', 24, '2022-11-10 08:40:24', 24),
(232, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 36, '2022-11-07 12:26:13', 24, '2022-11-12 05:25:56', 24),
(233, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 36, '2022-11-07 12:26:13', 24, '2022-11-12 05:29:10', 24),
(234, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-09 12:37:03', 4),
(235, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:29:55', 4),
(236, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:30:13', 4),
(237, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:33:56', 4),
(238, '5gUwn8W75xJxnaSPVMZOd4cQ8c7TD2VM8Yyx4waU', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:34:33', 4),
(239, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:35:26', 4),
(240, 'uIdkgy958XG3qLDTLbrI0ZmJZ5zwUXzwXlR4BHaV', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:36:23', 4),
(241, 'p6DxPLJOFloWFjDmbe6TzGaEWF9ZkCMh5isUKhlP', 32, '2022-11-05 06:31:43', 21, '2022-11-05 06:38:45', 21),
(242, 'p6DxPLJOFloWFjDmbe6TzGaEWF9ZkCMh5isUKhlP', 29, '2022-11-05 06:27:16', 21, '2022-11-12 03:59:29', 21),
(243, 'p6DxPLJOFloWFjDmbe6TzGaEWF9ZkCMh5isUKhlP', 35, '2022-11-07 12:23:50', 24, '2022-11-09 13:22:13', 24),
(244, 'p6DxPLJOFloWFjDmbe6TzGaEWF9ZkCMh5isUKhlP', 34, '2022-11-05 06:36:01', 21, '2022-11-09 13:23:37', 21),
(245, '1gqmC8O7yJJFWrYMKPq3rwDlXmkyNqcdeDduJs3r', 32, '2022-11-05 06:31:43', 21, '2022-11-12 07:22:24', 21),
(246, '1gqmC8O7yJJFWrYMKPq3rwDlXmkyNqcdeDduJs3r', 36, '2022-11-07 12:26:13', 24, '2022-11-12 05:58:24', 24),
(247, 'uxfEjPUoKGh5jb7toA4jhuBl7n9lQw3stSIj3AwI', 37, '2022-11-12 09:31:19', 25, '2022-11-12 09:34:42', 25),
(248, 'yrpyod7SbgX2JZhqjMiMjBrnjUKyOuxsYJWxabRb', 47, '2022-11-12 09:49:46', 25, '2022-11-12 09:57:22', 25),
(249, 'X0o0gz8Clzlx2dny9puD5vct6pS4p0MAQ33Vs1oE', 46, '2022-11-12 09:47:17', 25, '2022-11-12 09:53:03', 25),
(250, 'Ice6SpIZqcFca0SpBLsXzxcAyvVMifDywgwekhwX', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:28:57', 25),
(251, 'Mtbr8fBwsaZJPvCOhp7jWEfpRdzarXgbiDyIAn9j', 37, '2022-11-12 09:31:19', 25, '2022-11-12 10:03:52', 25),
(252, 'Mtbr8fBwsaZJPvCOhp7jWEfpRdzarXgbiDyIAn9j', 37, '2022-11-12 09:31:19', 25, '2022-11-12 10:30:34', 25),
(253, 'QYFIhSaKIH6hMNYAM2XstIjKafh1SRpxbbJxpiZV', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:30:00', 25),
(254, 'X0o0gz8Clzlx2dny9puD5vct6pS4p0MAQ33Vs1oE', 37, '2022-11-12 09:31:19', 25, '2022-11-12 10:31:10', 25),
(255, 'QYFIhSaKIH6hMNYAM2XstIjKafh1SRpxbbJxpiZV', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:45:32', 25),
(256, 'QYFIhSaKIH6hMNYAM2XstIjKafh1SRpxbbJxpiZV', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:48:49', 25),
(257, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:49:52', 25),
(258, 'nqQh8SKHIZH6XNQ7oPdrkCKeYrGhmCTw9WFkD8H2', 48, '2022-11-12 09:49:46', 25, '2022-11-12 09:57:49', 25),
(259, 'yrpyod7SbgX2JZhqjMiMjBrnjUKyOuxsYJWxabRb', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:53:34', 25),
(260, 'Ncv6JgUp3XheCNX7pk82W14x8QJw29m2uqzK0Uwe', 48, '2022-11-12 09:49:46', 25, '2022-11-12 10:56:29', 25),
(261, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:58:23', 25),
(262, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 48, '2022-11-12 09:49:46', 25, '2022-11-12 10:59:14', 25),
(263, 'nqQh8SKHIZH6XNQ7oPdrkCKeYrGhmCTw9WFkD8H2', 50, '2022-11-12 10:17:03', 25, '2022-11-12 10:17:34', 25),
(264, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 46, '2022-11-12 09:47:17', 25, '2022-11-12 10:59:14', 25),
(265, 'nqQh8SKHIZH6XNQ7oPdrkCKeYrGhmCTw9WFkD8H2', 50, '2022-11-12 10:17:03', 25, '2022-11-12 11:00:08', 25),
(266, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-05 06:47:56', 21),
(267, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:07:11', 21),
(268, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:07:55', 21),
(269, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:08:01', 21),
(270, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:08:02', 21),
(271, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:08:26', 21),
(272, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:08:35', 21),
(273, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:08:59', 21),
(274, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:13:22', 21),
(275, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:14:41', 21),
(276, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:14:49', 21),
(277, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:14:53', 21),
(278, 'pEbufccfTs7VC6Fb1dMdfymBFk4cfLkJWT8kyvqo', 52, '2022-11-12 10:21:15', 25, '2022-11-12 10:21:27', 25),
(279, 'pEbufccfTs7VC6Fb1dMdfymBFk4cfLkJWT8kyvqo', 52, '2022-11-12 10:21:15', 25, '2022-11-12 11:23:55', 25),
(280, 'pEbufccfTs7VC6Fb1dMdfymBFk4cfLkJWT8kyvqo', 52, '2022-11-12 10:21:15', 25, '2022-11-12 11:24:41', 25),
(281, 'RZmYWjnRWixvQ4ztAoNRBJI9q85P36uORUzapsuD', 36, '2022-11-07 12:26:13', 24, '2022-11-12 09:38:12', 24),
(282, '0cYzrxTBjTk8bntGq9AC8pBZx0oBr2OB0kbGmD3V', 36, '2022-11-07 12:26:13', 24, '2022-11-12 11:26:35', 24),
(283, '0cYzrxTBjTk8bntGq9AC8pBZx0oBr2OB0kbGmD3V', 36, '2022-11-07 12:26:13', 24, '2022-11-12 11:26:55', 24),
(284, 'pEbufccfTs7VC6Fb1dMdfymBFk4cfLkJWT8kyvqo', 53, '2022-11-12 10:50:46', 25, '2022-11-12 10:53:30', 25),
(285, 'pEbufccfTs7VC6Fb1dMdfymBFk4cfLkJWT8kyvqo', 53, '2022-11-12 10:50:46', 25, '2022-11-12 11:41:36', 25),
(286, '0cYzrxTBjTk8bntGq9AC8pBZx0oBr2OB0kbGmD3V', 36, '2022-11-07 12:26:13', 24, '2022-11-12 11:27:12', 24),
(287, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 37, '2022-11-12 09:31:19', 25, '2022-11-12 10:46:27', 25),
(288, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 35, '2022-11-07 12:23:50', 24, '2022-11-12 07:49:49', 24),
(289, '0cYzrxTBjTk8bntGq9AC8pBZx0oBr2OB0kbGmD3V', 36, '2022-11-07 12:26:13', 24, '2022-11-12 11:46:34', 24),
(290, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 35, '2022-11-07 12:23:50', 24, '2022-11-12 11:47:07', 24),
(291, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 33, '2022-11-05 06:32:59', 21, '2022-11-09 04:39:02', 21),
(292, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 33, '2022-11-05 06:32:59', 21, '2022-11-12 11:51:25', 21),
(293, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 32, '2022-11-05 06:31:43', 21, '2022-11-12 09:37:35', 21),
(294, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 32, '2022-11-05 06:31:43', 21, '2022-11-12 11:53:52', 21),
(295, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 32, '2022-11-05 06:31:43', 21, '2022-11-12 11:54:11', 21),
(296, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 34, '2022-11-05 06:36:01', 21, '2022-11-12 09:13:21', 21),
(297, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 34, '2022-11-05 06:36:01', 21, '2022-11-12 11:56:19', 21),
(298, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 32, '2022-11-05 06:31:43', 21, '2022-11-12 11:56:18', 21),
(299, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 46, '2022-11-12 09:47:17', 25, '2022-11-12 11:00:57', 25),
(300, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 46, '2022-11-12 09:47:17', 25, '2022-11-12 11:59:56', 25),
(301, 'KjNlDTnIZIJXq9sgzNjXifpYpn16kn21LvniIXrz', 50, '2022-11-12 10:17:03', 25, '2022-11-12 11:02:14', 25),
(302, 'KjNlDTnIZIJXq9sgzNjXifpYpn16kn21LvniIXrz', 50, '2022-11-12 10:17:03', 25, '2022-11-12 12:00:31', 25),
(303, 'KjNlDTnIZIJXq9sgzNjXifpYpn16kn21LvniIXrz', 50, '2022-11-12 10:17:03', 25, '2022-11-12 12:01:53', 25),
(304, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 49, '2022-11-12 10:15:22', 25, '2022-11-12 10:17:47', 25),
(305, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 49, '2022-11-12 10:15:22', 25, '2022-11-12 12:04:33', 25),
(306, 'tF2Pn3iHmeKHqc2BaElxBlrHuSGz79CLK4oenXTW', 49, '2022-11-12 10:15:22', 25, '2022-11-12 12:05:09', 25),
(307, 'Mtbr8fBwsaZJPvCOhp7jWEfpRdzarXgbiDyIAn9j', 54, '2022-11-12 10:52:18', 25, '2022-11-12 10:53:06', 25),
(308, 'mvrq2bViyotrPtq7dA3gXOCHELtASgi7k4CrhGep', 34, '2022-11-05 06:36:01', 21, '2022-11-12 11:56:42', 21),
(309, 'mvrq2bViyotrPtq7dA3gXOCHELtASgi7k4CrhGep', 29, '2022-11-05 06:27:16', 21, '2022-11-12 07:22:56', 21),
(310, 'mvrq2bViyotrPtq7dA3gXOCHELtASgi7k4CrhGep', 47, '2022-11-12 09:49:46', 25, '2022-11-12 10:08:38', 25),
(311, 'mvrq2bViyotrPtq7dA3gXOCHELtASgi7k4CrhGep', 47, '2022-11-12 09:49:46', 25, '2022-11-12 13:13:25', 25),
(312, '0cYzrxTBjTk8bntGq9AC8pBZx0oBr2OB0kbGmD3V', 31, '2022-11-05 06:30:50', 21, '2022-11-12 11:15:56', 21),
(313, 'z1MUVqb228Cs7j7nD6ENzlbLDLNi9JYI8NkYCiZo', 48, '2022-11-12 09:49:46', 25, '2022-11-12 10:59:30', 25),
(314, 'oI00cUXleNP82fB732zM1zCnUIaUyLa5BKpmZT94', 27, '2022-11-01 15:26:46', 6, '2022-11-11 19:52:10', 6),
(315, 'oI00cUXleNP82fB732zM1zCnUIaUyLa5BKpmZT94', 50, '2022-11-12 10:17:03', 25, '2022-11-12 12:03:37', 25),
(316, 'zTgHuxkdoX7heVeiqaht2V2sMJb057l5JvbGZPtE', 26, '2022-10-31 06:12:55', 20, '2022-11-09 00:58:31', 20),
(317, 'o0E2nXN2joDudNEIuBNw8gc5QkKbwhaTA1JoCMsw', 27, '2022-11-01 15:26:46', 6, '2022-11-12 14:30:43', 6),
(318, '0ypn987MXUAVxqk0GmBwSrN9tcIJXqHf9BJ6xOer', 26, '2022-10-31 06:12:55', 20, '2022-11-12 14:32:05', 20),
(319, '0ypn987MXUAVxqk0GmBwSrN9tcIJXqHf9BJ6xOer', 26, '2022-10-31 06:12:55', 20, '2022-11-12 14:32:19', 20),
(320, 'mJPuG6vjQ7zwBpvdaYebMsVntHQGqTlCcvB1WIfD', 37, '2022-11-12 09:31:19', 25, '2022-11-12 11:47:00', 25),
(321, 'mJPuG6vjQ7zwBpvdaYebMsVntHQGqTlCcvB1WIfD', 50, '2022-11-12 10:17:03', 25, '2022-11-12 14:31:11', 25),
(322, 'qqHC2EDaabaXg7OkgTWpcXkkeD8izk6XSCgAkagE', 50, '2022-11-12 10:17:03', 25, '2022-11-12 23:36:26', 25),
(323, 'mJPuG6vjQ7zwBpvdaYebMsVntHQGqTlCcvB1WIfD', 50, '2022-11-12 10:17:03', 25, '2022-11-12 23:41:16', 25),
(324, 'mJPuG6vjQ7zwBpvdaYebMsVntHQGqTlCcvB1WIfD', 37, '2022-11-12 09:31:19', 25, '2022-11-12 23:36:04', 25),
(325, 'mJPuG6vjQ7zwBpvdaYebMsVntHQGqTlCcvB1WIfD', 50, '2022-11-12 10:17:03', 25, '2022-11-12 23:44:26', 25),
(326, 'A2xXRc4izB0MYMvZHvbnI60aku4KLeJ2S5Llu4ut', 27, '2022-11-01 15:26:46', 6, '2022-11-12 14:32:09', 6),
(327, 'A2xXRc4izB0MYMvZHvbnI60aku4KLeJ2S5Llu4ut', 23, '2022-10-30 11:42:29', 5, '2022-11-05 12:52:34', 5),
(328, 'rwjwUUvZpj0vqOUAYSQPLjEZzYVbSBLow1kImMaC', 27, '2022-11-01 15:26:46', 6, '2022-11-13 01:48:07', 6),
(329, 'A2xXRc4izB0MYMvZHvbnI60aku4KLeJ2S5Llu4ut', 35, '2022-11-07 12:23:50', 24, '2022-11-12 11:48:29', 24),
(330, 'A2xXRc4izB0MYMvZHvbnI60aku4KLeJ2S5Llu4ut', 37, '2022-11-12 09:31:19', 25, '2022-11-13 01:44:35', 25),
(331, 'F4Bpmutsu4rtyoDKcWP6fTXyoLnGuIVK1jAmQKnR', 48, '2022-11-12 09:49:46', 25, '2022-11-12 13:53:12', 25),
(332, 'bcmtgWgM8NNVcDgRRwjST9VJynMbUx98I5pHZpff', 48, '2022-11-12 09:49:46', 25, '2022-11-13 04:14:50', 25),
(333, 'iNRZbJBT4XGyDxOGCeBYcvweVc83jBmqA7duJn2s', 36, '2022-11-07 12:26:13', 24, '2022-11-12 11:47:52', 24),
(334, '6vcI51pK5mfevk2u8X98cr4eaHBJiPzYsZRtKIfI', 36, '2022-11-07 12:26:13', 24, '2022-11-13 06:39:10', 24),
(335, 'ejnRQ2rkj044DaxyEPcuFu02RcTEXxGJM3dNsr91', 52, '2022-11-12 10:21:15', 25, '2022-11-12 11:25:14', 25),
(336, 'ejnRQ2rkj044DaxyEPcuFu02RcTEXxGJM3dNsr91', 52, '2022-11-12 10:21:15', 25, '2022-11-13 08:06:18', 25),
(337, 'ejnRQ2rkj044DaxyEPcuFu02RcTEXxGJM3dNsr91', 37, '2022-11-12 09:31:19', 25, '2022-11-13 01:57:08', 25),
(338, 'S4evGBaGYIoH54bDPxjk5lG4fAkd70hV68QRXHRS', 37, '2022-11-12 09:31:19', 25, '2022-11-13 09:11:08', 25),
(339, 'DLsZJUvpD6Q25vh8fVdaQzQxWJ6N04nZ2nMMptBn', 37, '2022-11-12 09:31:19', 25, '2022-11-13 09:22:03', 25),
(340, 'DLsZJUvpD6Q25vh8fVdaQzQxWJ6N04nZ2nMMptBn', 27, '2022-11-01 15:26:46', 6, '2022-11-13 01:52:03', 6),
(341, 'DLsZJUvpD6Q25vh8fVdaQzQxWJ6N04nZ2nMMptBn', 27, '2022-11-01 15:26:46', 6, '2022-11-14 05:59:58', 6),
(342, 'A7Xw3pLcvbXj0MU1WfiNBZhPdubch0FNNrxbzbKJ', 27, '2022-11-01 15:26:46', 6, '2022-11-14 06:00:23', 6),
(343, 'A7Xw3pLcvbXj0MU1WfiNBZhPdubch0FNNrxbzbKJ', 23, '2022-10-30 11:42:29', 5, '2022-11-13 01:48:40', 5),
(344, 'A7Xw3pLcvbXj0MU1WfiNBZhPdubch0FNNrxbzbKJ', 23, '2022-10-30 11:42:29', 5, '2022-11-14 06:08:01', 5),
(345, 'A7Xw3pLcvbXj0MU1WfiNBZhPdubch0FNNrxbzbKJ', 23, '2022-10-30 11:42:29', 5, '2022-11-14 06:11:54', 5),
(346, 'KddulcxeAz03Y15hscbJjSOTUxjv1Gzi8fWF0I9l', 52, '2022-11-12 10:21:15', 25, '2022-11-13 08:06:30', 25),
(347, 'KddulcxeAz03Y15hscbJjSOTUxjv1Gzi8fWF0I9l', 50, '2022-11-12 10:17:03', 25, '2022-11-13 01:45:37', 25),
(348, 'y8zYw7UUwTXtk8sPJ8aU7RgU0BWu20wcfTKPqJHV', 52, '2022-11-12 10:21:15', 25, '2022-11-14 08:23:32', 25),
(349, 'LYoxKwJyVNLVCEejZi46hf1CO7cIjLxHK0PTGzYZ', 50, '2022-11-12 10:17:03', 25, '2022-11-14 08:26:19', 25),
(350, 'Qmmt0vxvDbW2eLQJD8pi8DDLqNik3b0Tyd7AmwjT', 37, '2022-11-12 09:31:19', 25, '2022-11-14 05:59:55', 25),
(351, 'Qmmt0vxvDbW2eLQJD8pi8DDLqNik3b0Tyd7AmwjT', 50, '2022-11-12 10:17:03', 25, '2022-11-14 08:47:14', 25),
(352, 'WyiX3z9Rjs417vMeP7v9mkLOrvWTr5wKYLTSMSE3', 50, '2022-11-12 10:17:03', 25, '2022-11-15 03:01:53', 25),
(353, 'ee19KsT1N6ut6BxEWClt9McmY4sNbDFSrjk7naJJ', 27, '2022-11-01 15:26:46', 6, '2022-11-16 09:10:33', 6),
(354, 'bTtYCfOsJNYDU8mqxp50My2IwZgRzcwl8m6Qisuy', 27, '2022-11-01 15:26:46', 6, '2022-11-16 09:11:37', 6),
(355, 'RCHMtKhR1Vlx49gbJKMD1UYZbtQaCXRjnw2rikB6', 55, '2022-11-13 06:42:20', 32, '2022-11-13 06:42:21', 32),
(356, 'udg4DK22s0ZdHfieB3t8QzwUsFevKyWrFzoVIekz', 13, '2022-10-25 13:40:07', 4, '2022-11-12 05:36:30', 4),
(357, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:36:57', 4),
(358, 'puqRGzJtUGoiWSVnQBbO8VWPcWYXf9zKSY5f9xKA', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:38:23', 4),
(359, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:38:50', 4),
(360, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:55:03', 4),
(361, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:55:15', 4),
(362, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:56:49', 4),
(363, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:57:57', 4),
(364, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:58:07', 4),
(365, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 14, '2022-10-25 13:42:04', 4, '2022-11-09 12:47:31', 4),
(366, 'AkVL3t6OdmbRu8I0DaUcgc7hNbcf5v5XAbvyj8pd', 13, '2022-10-25 13:40:07', 4, '2022-11-16 09:59:38', 4),
(367, 'E52Tb9lPH9yzlTyZSxsm6j8g6YDOGskmbYarAWXM', 36, '2022-11-07 12:26:13', 24, '2022-11-13 06:39:28', 24),
(368, 'E52Tb9lPH9yzlTyZSxsm6j8g6YDOGskmbYarAWXM', 36, '2022-11-07 12:26:13', 24, '2022-11-16 13:12:50', 24),
(369, 'D3fPIqiPXCuLgYu42C99uKsWDnTMA65XWM11Uthh', 37, '2022-11-12 09:31:19', 25, '2022-11-15 03:01:42', 25),
(370, 'D3fPIqiPXCuLgYu42C99uKsWDnTMA65XWM11Uthh', 50, '2022-11-12 10:17:03', 25, '2022-11-15 03:04:20', 25),
(371, 'dsJGRmyTAObnvgzxlEXk3ZA4ePQAvgyYvtlEgCpm', 52, '2022-11-12 10:21:15', 25, '2022-11-14 08:29:22', 25),
(372, 'dsJGRmyTAObnvgzxlEXk3ZA4ePQAvgyYvtlEgCpm', 29, '2022-11-05 06:27:16', 21, '2022-11-12 13:13:04', 21),
(373, 'dsJGRmyTAObnvgzxlEXk3ZA4ePQAvgyYvtlEgCpm', 14, '2022-10-25 13:42:04', 4, '2022-11-16 10:07:18', 4),
(374, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 33, '2022-11-05 06:32:59', 21, '2022-11-12 11:51:54', 21),
(375, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 04:07:24', 21),
(376, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 04:07:40', 21),
(377, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 13, '2022-10-25 13:40:07', 4, '2022-11-16 10:07:23', 4),
(378, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 05:33:30', 21),
(379, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 05:33:48', 21),
(380, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 05:33:56', 21),
(381, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:05:36', 21),
(382, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:08:27', 21),
(383, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:08:30', 21),
(384, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:14:43', 21),
(385, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:17:18', 21),
(386, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:17:36', 21),
(387, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:17:39', 21),
(388, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:17:42', 21),
(389, 'p3nfuKc9ikvbQMvmM1Uz51RRmEEXP5VWVEOnIo4Y', 37, '2022-11-12 09:31:19', 25, '2022-11-17 00:49:36', 25),
(390, 'p3nfuKc9ikvbQMvmM1Uz51RRmEEXP5VWVEOnIo4Y', 37, '2022-11-12 09:31:19', 25, '2022-11-17 06:18:56', 25),
(391, 'AzAATkoCMXg3WrFBVwNDbKvjyCXVSauu7SnsP9H8', 36, '2022-11-07 12:26:13', 24, '2022-11-16 13:13:18', 24),
(392, 'AzAATkoCMXg3WrFBVwNDbKvjyCXVSauu7SnsP9H8', 37, '2022-11-12 09:31:19', 25, '2022-11-17 06:19:39', 25),
(393, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:17:45', 21),
(394, 'r2liw7If2OMd2IlO8hyAHVNZWD6d9ZGbroa4S9yt', 49, '2022-11-12 10:15:22', 25, '2022-11-12 12:06:58', 25),
(395, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 27, '2022-11-01 15:26:46', 6, '2022-11-16 09:12:00', 6),
(396, 'PjXecY5jTZwlW98AUqQIA8pA0jVbOg0d4OHJ3IfQ', 29, '2022-11-05 06:27:16', 21, '2022-11-17 03:57:11', 21),
(397, 'AzAATkoCMXg3WrFBVwNDbKvjyCXVSauu7SnsP9H8', 54, '2022-11-12 10:52:18', 25, '2022-11-12 12:34:49', 25),
(398, '0MIgTU42bjUUdODvsI1inFviIWWn9EQiU3sJ1fLT', 29, '2022-11-05 06:27:16', 21, '2022-11-17 06:41:46', 21),
(399, 'XvvfLAadM6OmnT6a6tX7be8SPyRTNLCzJ2hS3WPJ', 57, '2022-11-17 04:05:45', 21, '2022-11-17 06:40:52', 21),
(400, 'R0UBAUD9miewwWuZ21BVGORo8rCL8aNN0fWkIp9c', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:43:19', 21),
(401, 'VNlaSSmFdHiVxS9Moy0JpSjjAJVOtcu49MyEz3hP', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:43:39', 21),
(402, 'EFk5SsaYyA6wlLwnqkPWiBAgfDQec79BUTuvekSo', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:44:18', 21),
(403, 'WJf8wwl1CF79d7GQKHT0epEvb8yTZnCul2LYKHsh', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:44:47', 21),
(404, 'CL7hwGU9U8TPnZggfQAWAV98Lym7o0ztBotuDAGh', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:45:57', 21),
(405, 'rtXgXmyEd2Y4JXZiWvz1IOEUrxr04pKpF0eb12Yv', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:46:06', 21),
(406, 'rtXgXmyEd2Y4JXZiWvz1IOEUrxr04pKpF0eb12Yv', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:48:07', 21),
(407, 'EYnD8FLL05eiOLV9DdA8hAfTnSBPjHsl6byIjAvK', 57, '2022-11-17 04:05:45', 21, '2022-11-17 14:48:13', 21),
(408, 'EYnD8FLL05eiOLV9DdA8hAfTnSBPjHsl6byIjAvK', 57, '2022-11-17 04:05:45', 21, '2022-11-18 04:31:10', 21),
(409, 'inSecBaqIZQlaGv9Tnd79WDTa7OzUShNtpj4vgTm', 57, '2022-11-17 04:05:45', 21, '2022-11-18 04:33:12', 21),
(410, 'EYnD8FLL05eiOLV9DdA8hAfTnSBPjHsl6byIjAvK', 37, '2022-11-12 09:31:19', 25, '2022-11-17 06:40:47', 25),
(411, 'EYnD8FLL05eiOLV9DdA8hAfTnSBPjHsl6byIjAvK', 50, '2022-11-12 10:17:03', 25, '2022-11-17 00:49:46', 25),
(412, 'EYnD8FLL05eiOLV9DdA8hAfTnSBPjHsl6byIjAvK', 14, '2022-10-25 13:42:04', 4, '2022-11-17 03:58:45', 4),
(413, 'oJxO05q1654NrizYp0t64LGrcjegq1hwYvtoVucl', 37, '2022-11-12 09:31:19', 25, '2022-11-18 04:33:35', 25),
(414, 'a0NBnq1gwwuOKGaVoVEs6AdkSqF4fCFEbJJt5hvJ', 57, '2022-11-17 04:05:45', 21, '2022-11-18 04:33:23', 21),
(415, 'naL320n5Xh61tEp6eWatHBDlKDSm6D33U0qvWdAx', 13, '2022-10-25 13:40:07', 4, '2022-11-17 04:09:19', 4),
(416, 'naL320n5Xh61tEp6eWatHBDlKDSm6D33U0qvWdAx', 14, '2022-10-25 13:42:04', 4, '2022-11-18 04:34:11', 4),
(417, 'naL320n5Xh61tEp6eWatHBDlKDSm6D33U0qvWdAx', 23, '2022-10-30 11:42:29', 5, '2022-11-14 06:13:19', 5),
(418, 'Xm8YJxOqEcBqYpPYd7IC7R0zfHLNZT4oP9nv2C4T', 13, '2022-10-25 13:40:07', 4, '2022-11-19 04:30:35', 4),
(419, 'CBAMlGNygURUQblGcJe2zM3FyGESpym0sEFrtlOp', 13, '2022-10-25 13:40:07', 4, '2022-11-19 05:29:56', 4),
(420, '9US0c8K8uzsputfhGnEIasqlxXeMcL8ET4RynHCY', 13, '2022-10-25 13:40:07', 4, '2022-11-19 05:30:10', 4),
(421, 'WS1Gh3GhzENwiCJ9PeenQ1Js34JAKwa4KLzMO8Kb', 26, '2022-10-31 06:12:55', 20, '2022-11-12 14:33:12', 20),
(422, 'WS1Gh3GhzENwiCJ9PeenQ1Js34JAKwa4KLzMO8Kb', 13, '2022-10-25 13:40:07', 4, '2022-11-19 05:30:23', 4),
(423, 'QTpTjg7ETpgAs82KVGme6yHlQ0hK0VXtelpuwk6V', 13, '2022-10-25 13:40:07', 4, '2022-11-19 13:08:06', 4),
(424, '2ZnW06SlsAiffPJ93fcKUGJybvUIPRlmBwIzJzLi', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:29:36', 4),
(425, '2ZnW06SlsAiffPJ93fcKUGJybvUIPRlmBwIzJzLi', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:30:49', 4),
(426, 'QTpTjg7ETpgAs82KVGme6yHlQ0hK0VXtelpuwk6V', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:30:53', 4),
(427, 'QTpTjg7ETpgAs82KVGme6yHlQ0hK0VXtelpuwk6V', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:31:01', 4),
(428, 'QTpTjg7ETpgAs82KVGme6yHlQ0hK0VXtelpuwk6V', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:31:42', 4),
(429, 'QTpTjg7ETpgAs82KVGme6yHlQ0hK0VXtelpuwk6V', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:32:27', 4),
(430, 'Uez0WXYRhUagItzS6PLMVYxHgbKYN6HmiJIrunTc', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:32:30', 4),
(431, '4VghZoNaJ8JhDWjbqhVdIB3smuoB1EPwyTqNT7qF', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:33:04', 4),
(432, 'qg77jENaYsERYoYxJdsvFSLtqoxBQCJBLreslohU', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:33:04', 4),
(433, '3upKZ7lsvLuhSPLWysojOkDt7rz333ex6fiYzshl', 58, '2022-11-19 13:28:42', 4, '2022-11-19 13:42:27', 4),
(434, 'mfJowygNAdD6NXvrIgNjnvx4PazaX4w9CqN6MWSa', 58, '2022-11-19 13:28:42', 4, '2022-11-19 14:29:57', 4),
(435, 'xmZ5ghiBQwIGfa3rEXupeSO10RWC45DckmoksH5p', 58, '2022-11-19 13:28:42', 4, '2022-11-19 20:17:35', 4),
(436, 'x8UgnBr9d78JnegCFt6JHp7euXFQT4VVJ35bVtly', 58, '2022-11-19 13:28:42', 4, '2022-11-19 23:10:44', 4),
(437, 'FhtoAqlSrXyuVscUifwBpXI191o7U9In3XuLHFJx', 58, '2022-11-19 13:28:42', 4, '2022-11-20 02:13:02', 4),
(438, 'GOzhWnljHlampOQ9VuvkJE3gzdaQ4YVzIcS5xlyi', 58, '2022-11-19 13:28:42', 4, '2022-11-20 02:13:02', 4),
(439, '9NbSQ5tPL4xtrWLxbzcBQwCAWFGucNznmybwpmon', 58, '2022-11-19 13:28:42', 4, '2022-11-20 02:13:02', 4),
(440, 'YEXmNAXq08kL4JMmoHAU6CcHhdhCEyB5zFUApKgu', 58, '2022-11-19 13:28:42', 4, '2022-11-20 08:06:00', 4),
(441, '9NbSQ5tPL4xtrWLxbzcBQwCAWFGucNznmybwpmon', 13, '2022-10-25 13:40:07', 4, '2022-11-19 13:08:36', 4),
(442, 'c8qQNR7zy1tQudQWG6uZZgxEqJbP93S34PIMXTNb', 58, '2022-11-19 13:28:42', 4, '2022-11-20 08:06:15', 4),
(443, 'c8qQNR7zy1tQudQWG6uZZgxEqJbP93S34PIMXTNb', 58, '2022-11-19 13:28:42', 4, '2022-11-20 08:25:13', 4),
(444, 'c8qQNR7zy1tQudQWG6uZZgxEqJbP93S34PIMXTNb', 58, '2022-11-19 13:28:42', 4, '2022-11-20 08:30:34', 4),
(445, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 32, '2022-11-05 06:31:43', 21, '2022-11-12 11:58:40', 21),
(446, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 23, '2022-10-30 11:42:29', 5, '2022-11-19 04:30:45', 5),
(447, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 29, '2022-11-05 06:27:16', 21, '2022-11-17 07:01:44', 21),
(448, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 29, '2022-11-05 06:27:16', 21, '2022-11-23 06:05:36', 21),
(449, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 23, '2022-10-30 11:42:29', 5, '2022-11-23 06:01:54', 5),
(450, 'WtrmZf5HWuUuqcqXdzXfljMfellakLUD14vE5Vgy', 53, '2022-11-12 10:50:46', 25, '2022-11-12 11:44:03', 25),
(451, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 23, '2022-10-30 11:42:29', 5, '2022-11-23 06:07:11', 5),
(452, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 26, '2022-10-31 06:12:55', 20, '2022-11-19 13:07:33', 20),
(453, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 59, '2022-11-23 06:45:17', 1, '2022-11-23 06:45:17', 1),
(454, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 59, '2022-11-23 06:45:17', 1, '2022-11-23 06:45:30', 1),
(455, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 59, '2022-11-23 06:45:17', 1, '2022-11-23 06:46:04', 1),
(456, 'X0yQxTshgXxXRm5ba6n7574S1MEmauAM4ae1Nxoo', 15, '2022-10-30 04:35:56', 1, '2022-10-30 04:46:09', 1),
(457, 'SbOQV7swB1SCyG7aweOH8zOCU4pWx2zM3uoG5PiW', 37, '2022-11-12 09:31:19', 25, '2022-11-18 04:36:11', 25),
(458, 'SbOQV7swB1SCyG7aweOH8zOCU4pWx2zM3uoG5PiW', 50, '2022-11-12 10:17:03', 25, '2022-11-18 04:33:47', 25),
(459, 'IFUXccShNYo1d7BNFlh0aphr7oM2iX3FSs4JQsiL', 58, '2022-11-19 13:28:42', 4, '2022-11-20 08:42:55', 4),
(460, 'vyRmgWx3SaEp3bVI7L041xZXwXPbdQNDfLzPcNeM', 34, '2022-11-05 06:36:01', 21, '2022-11-12 12:53:07', 21),
(461, '9IuaLKHTAutrbQFfWiZDG6nO9LEHnoOG8An1HTNc', 34, '2022-11-05 06:36:01', 21, '2022-11-26 04:49:19', 21),
(462, 'WiLaO00en4d6ZuJDcEilb3qTi9hMX7jMxDoGa7aa', 34, '2022-11-05 06:36:01', 21, '2022-11-26 04:49:53', 21),
(463, 'WiLaO00en4d6ZuJDcEilb3qTi9hMX7jMxDoGa7aa', 23, '2022-10-30 11:42:29', 5, '2022-11-23 06:40:06', 5),
(464, 'WiLaO00en4d6ZuJDcEilb3qTi9hMX7jMxDoGa7aa', 34, '2022-11-05 06:36:01', 21, '2022-11-26 04:53:15', 21),
(465, 'vyRmgWx3SaEp3bVI7L041xZXwXPbdQNDfLzPcNeM', 13, '2022-10-25 13:40:07', 4, '2022-11-20 08:07:26', 4),
(466, 'vyRmgWx3SaEp3bVI7L041xZXwXPbdQNDfLzPcNeM', 58, '2022-11-19 13:28:42', 4, '2022-11-24 10:58:44', 4),
(467, 'vyRmgWx3SaEp3bVI7L041xZXwXPbdQNDfLzPcNeM', 53, '2022-11-12 10:50:46', 25, '2022-11-23 06:38:15', 25),
(468, 'vyRmgWx3SaEp3bVI7L041xZXwXPbdQNDfLzPcNeM', 13, '2022-10-25 13:40:07', 4, '2022-11-26 05:18:22', 4),
(469, 'FlukWxv9i513c62UmMSGCuFDyTyCwdRSvYfTZ9Rg', 13, '2022-10-25 13:40:07', 4, '2022-11-26 05:23:32', 4),
(470, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-23 06:40:17', 20),
(471, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 05:36:28', 20),
(472, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 05:42:40', 20);
INSERT INTO `recent_view_ads` (`id`, `session_id`, `ad_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(473, '2PzrhhIuRxobcS0Ih0kC6lw5UjmFIkHMGv8OTTOf', 26, '2022-10-31 06:12:55', 20, '2022-11-26 05:43:58', 20),
(474, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 05:52:05', 20),
(475, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 05:52:40', 20),
(476, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:09:25', 20),
(477, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:11:40', 20),
(478, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:11:56', 20),
(479, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:13:37', 20),
(480, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:14:14', 20),
(481, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:14:57', 20),
(482, 'bClwZLnIHqFHMrfgiumP8t50T47FbqCZaxliByJe', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:15:39', 20),
(483, 'FlsZQUWlyOXSM8xgKhUOt2FpmjvNxUBn2JLwdfDS', 26, '2022-10-31 06:12:55', 20, '2022-11-26 06:15:47', 20),
(484, 'FlsZQUWlyOXSM8xgKhUOt2FpmjvNxUBn2JLwdfDS', 26, '2022-10-31 06:12:55', 20, '2022-11-26 10:54:32', 20),
(485, 'bkFGlyz61ERPPpcaztBAHcJV0BwoqSsg9eWAMzEZ', 58, '2022-11-19 13:28:42', 4, '2022-11-26 05:22:08', 4),
(486, 'bkFGlyz61ERPPpcaztBAHcJV0BwoqSsg9eWAMzEZ', 13, '2022-10-25 13:40:07', 4, '2022-11-26 05:24:49', 4),
(487, 'bkFGlyz61ERPPpcaztBAHcJV0BwoqSsg9eWAMzEZ', 13, '2022-10-25 13:40:07', 4, '2022-11-26 12:34:27', 4),
(488, 'gm674BnHI90CTd9AtvkDVGcCjTYWNudL1lb224hq', 13, '2022-10-25 13:40:07', 4, '2022-11-26 12:34:33', 4),
(489, 'gm674BnHI90CTd9AtvkDVGcCjTYWNudL1lb224hq', 30, '2022-11-05 06:28:58', 21, '2022-11-09 13:22:30', 21),
(490, 'gm674BnHI90CTd9AtvkDVGcCjTYWNudL1lb224hq', 58, '2022-11-19 13:28:42', 4, '2022-11-26 12:33:57', 4),
(491, 'gm674BnHI90CTd9AtvkDVGcCjTYWNudL1lb224hq', 13, '2022-10-25 13:40:07', 4, '2022-11-27 05:05:15', 4),
(492, 'e8J5FX7LyWWPpxkFyPKcqjEc6lWoUAI4ACzCuroY', 13, '2022-10-25 13:40:07', 4, '2022-11-27 05:07:08', 4),
(493, 'e8J5FX7LyWWPpxkFyPKcqjEc6lWoUAI4ACzCuroY', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:42:28', 4),
(494, 'e8J5FX7LyWWPpxkFyPKcqjEc6lWoUAI4ACzCuroY', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:42:48', 4),
(495, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:42:59', 4),
(496, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:43:56', 4),
(497, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 54, '2022-11-12 10:52:18', 25, '2022-11-17 06:42:30', 25),
(498, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 50, '2022-11-12 10:17:03', 25, '2022-11-24 07:53:27', 25),
(499, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 53, '2022-11-12 10:50:46', 25, '2022-11-26 05:22:48', 25),
(500, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 14, '2022-10-25 13:42:04', 4, '2022-11-19 04:30:37', 4),
(501, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:46:17', 4),
(502, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 14, '2022-10-25 13:42:04', 4, '2022-11-27 08:53:17', 4),
(503, '4zkV4kEk6jEFsSPE88DQ6LDtRR6oZsjdVqHI1KW7', 13, '2022-10-25 13:40:07', 4, '2022-11-27 08:57:35', 4),
(504, 'wjgFnVUB77OOLAxnxY9N75RfQoGMB5IhLjYW5Zcy', 33, '2022-11-05 06:32:59', 21, '2022-11-17 04:00:51', 21),
(505, 'wjgFnVUB77OOLAxnxY9N75RfQoGMB5IhLjYW5Zcy', 13, '2022-10-25 13:40:07', 4, '2022-11-27 09:42:59', 4),
(506, 'wjgFnVUB77OOLAxnxY9N75RfQoGMB5IhLjYW5Zcy', 54, '2022-11-12 10:52:18', 25, '2022-11-27 08:50:19', 25),
(507, 'wjgFnVUB77OOLAxnxY9N75RfQoGMB5IhLjYW5Zcy', 37, '2022-11-12 09:31:19', 25, '2022-11-24 07:53:13', 25),
(508, 'wjgFnVUB77OOLAxnxY9N75RfQoGMB5IhLjYW5Zcy', 37, '2022-11-12 09:31:19', 25, '2022-11-27 14:31:51', 25),
(509, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 51, '2022-11-12 10:20:01', 25, '2022-11-12 10:21:36', 25),
(510, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 13, '2022-10-25 13:40:07', 4, '2022-11-27 14:29:06', 4),
(511, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 23, '2022-10-30 11:42:29', 5, '2022-11-26 04:55:11', 5),
(512, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 13, '2022-10-25 13:40:07', 4, '2022-11-28 08:57:27', 4),
(513, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 13, '2022-10-25 13:40:07', 4, '2022-11-28 09:04:31', 4),
(514, 'XjGA0msRpuvaeFWbU74b7pb79nIUgKT5RtWeoaoQ', 13, '2022-10-25 13:40:07', 4, '2022-11-28 09:10:28', 4),
(515, 'R5Jp1R2w1tBduhZOgVMKGHq8DH9w7STf8TX0eEgM', 50, '2022-11-12 10:17:03', 25, '2022-11-27 08:50:47', 25),
(516, 'R5Jp1R2w1tBduhZOgVMKGHq8DH9w7STf8TX0eEgM', 37, '2022-11-12 09:31:19', 25, '2022-11-27 14:32:15', 25),
(517, '5vJmbdLYLZzh0iVCqvzJwTToMGH72sS6Jaq9UVC5', 54, '2022-11-12 10:52:18', 25, '2022-11-27 14:31:37', 25),
(518, '5vJmbdLYLZzh0iVCqvzJwTToMGH72sS6Jaq9UVC5', 49, '2022-11-12 10:15:22', 25, '2022-11-17 06:41:20', 25),
(519, '5vJmbdLYLZzh0iVCqvzJwTToMGH72sS6Jaq9UVC5', 50, '2022-11-12 10:17:03', 25, '2022-11-28 10:25:07', 25),
(520, '5vJmbdLYLZzh0iVCqvzJwTToMGH72sS6Jaq9UVC5', 57, '2022-11-17 04:05:45', 21, '2022-11-19 03:39:35', 21),
(521, 'h2k1RCaQknm0GU2CwxY8vHgol9HqU66M5JXod7tQ', 37, '2022-11-12 09:31:19', 25, '2022-11-28 10:25:20', 25),
(522, 'n3CFOgnTo2CjDtfASBAdAtc7DOBxgcnQD33BMqQh', 37, '2022-11-12 09:31:19', 25, '2022-11-29 04:59:54', 25),
(523, '6WX6f9lmNcs0xKPeFvI5kpuZM3lQUGJfhLhjRSh3', 57, '2022-11-17 04:05:45', 21, '2022-11-28 14:24:06', 21),
(524, 'n3CFOgnTo2CjDtfASBAdAtc7DOBxgcnQD33BMqQh', 13, '2022-10-25 13:40:07', 4, '2022-11-28 09:24:44', 4),
(525, 'n3CFOgnTo2CjDtfASBAdAtc7DOBxgcnQD33BMqQh', 13, '2022-10-25 13:40:07', 4, '2022-11-29 06:21:45', 4),
(526, 'n3CFOgnTo2CjDtfASBAdAtc7DOBxgcnQD33BMqQh', 13, '2022-10-25 13:40:07', 4, '2022-11-29 06:21:56', 4),
(527, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 14, '2022-10-25 13:42:04', 4, '2022-11-27 09:42:05', 4),
(528, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 13, '2022-10-25 13:40:07', 4, '2022-11-29 06:23:01', 4),
(529, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 13, '2022-10-25 13:40:07', 4, '2022-11-29 15:52:12', 4),
(530, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 27, '2022-11-01 15:26:46', 6, '2022-11-17 06:41:46', 6),
(531, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 13, '2022-10-25 13:40:07', 4, '2022-11-29 15:52:25', 4),
(532, 'zIxDWUUmLRWN82bHw3CUkkJtNTpv5M9cnPmk7TSm', 13, '2022-10-25 13:40:07', 4, '2022-11-29 15:53:16', 4),
(533, 'W7mTT4AmAcPsBiAYlG7BFWcT37JoJhSNE6LxHzis', 52, '2022-11-12 10:21:15', 25, '2022-11-17 03:55:41', 25),
(534, '5IlQTsI2coSj35Bru6r5noRnUD7HMoDvlLHLpdMi', 36, '2022-11-07 12:26:13', 24, '2022-11-17 06:38:53', 24),
(535, '5IlQTsI2coSj35Bru6r5noRnUD7HMoDvlLHLpdMi', 52, '2022-11-12 10:21:15', 25, '2022-11-30 08:31:26', 25),
(536, 'hZZB6OJp15bZerq8ymo8DbeDeWhmkexAM8VVkMzs', 57, '2022-11-17 04:05:45', 21, '2022-11-29 06:21:34', 21),
(537, 'E251T9Keb7bSY0RXyZkssaM5f085PcYDbirfWMXR', 57, '2022-11-17 04:05:45', 21, '2022-11-30 11:28:32', 21),
(538, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 13, '2022-10-25 13:40:07', 4, '2022-11-29 15:53:17', 4),
(539, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 14, '2022-10-25 13:42:04', 4, '2022-11-29 15:51:51', 4),
(540, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 61, '2022-12-03 09:28:30', 28, '2022-12-03 09:28:30', 28),
(541, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 61, '2022-12-03 09:28:30', 28, '2022-12-03 09:28:50', 28),
(542, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 61, '2022-12-03 09:28:30', 28, '2022-12-03 09:29:20', 28),
(543, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 61, '2022-12-03 09:28:30', 28, '2022-12-03 09:35:52', 28),
(544, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 61, '2022-12-03 09:28:30', 28, '2022-12-03 09:36:31', 28),
(545, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 27, '2022-11-01 15:26:46', 6, '2022-11-29 15:52:49', 6),
(546, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 47, '2022-11-12 09:49:46', 25, '2022-11-12 13:14:52', 25),
(547, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 46, '2022-11-12 09:47:17', 25, '2022-11-12 12:00:20', 25),
(548, 'C4Yx4sndYOylDvxR8yH3cIp0uXqEwh43HetQIA0D', 62, '2022-12-03 09:46:05', 28, '2022-12-03 09:46:06', 28),
(549, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 57, '2022-11-17 04:05:45', 21, '2022-11-30 11:30:27', 21),
(550, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 57, '2022-11-17 04:05:45', 21, '2022-11-30 11:30:27', 21),
(551, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 57, '2022-11-17 04:05:45', 21, '2022-11-30 11:30:27', 21),
(552, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 57, '2022-11-17 04:05:45', 21, '2022-11-30 11:30:27', 21),
(553, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 51, '2022-11-12 10:20:01', 25, '2022-11-28 08:51:27', 25),
(554, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 13, '2022-10-25 13:40:07', 4, '2022-12-03 09:23:38', 4),
(555, 'K2IPrH8yZYt3jowkqVGMiiNj6w05Ex7dirI8YveJ', 27, '2022-11-01 15:26:46', 6, '2022-12-03 09:42:20', 6),
(556, 'JljEjjCODlLuGzK4eCxInpP6Sr4PUi9jFJYs9t5F', 27, '2022-11-01 15:26:46', 6, '2022-12-03 10:59:26', 6),
(557, 'EPAwzSsgMOloq42tJBGZZQG1ls5zo4axg9clkXZF', 63, '2022-12-03 12:42:21', 37, '2022-12-03 12:42:21', 37),
(558, 'EPAwzSsgMOloq42tJBGZZQG1ls5zo4axg9clkXZF', 13, '2022-10-25 13:40:07', 4, '2022-12-03 10:59:01', 4),
(559, 'EPAwzSsgMOloq42tJBGZZQG1ls5zo4axg9clkXZF', 26, '2022-10-31 06:12:55', 20, '2022-11-26 10:54:47', 20),
(560, 'bKlWFyBK99Sy4FkVzOayDmTbYe4CQlolQ6n2W3wb', 46, '2022-11-12 09:47:17', 25, '2022-12-03 09:42:49', 25),
(561, 'Xm6B3PY6wtpZF1xlzeuYSKaSvJ3XH8trqjRsWTUh', 46, '2022-11-12 09:47:17', 25, '2022-12-03 14:13:34', 25),
(562, 'Xm6B3PY6wtpZF1xlzeuYSKaSvJ3XH8trqjRsWTUh', 13, '2022-10-25 13:40:07', 4, '2022-12-03 12:50:59', 4),
(563, 'Xm6B3PY6wtpZF1xlzeuYSKaSvJ3XH8trqjRsWTUh', 58, '2022-11-19 13:28:42', 4, '2022-11-27 05:06:58', 4),
(564, 'BAr87wV22I0oP3pIV6QWi30WHBQ7zoDLvL0oFFNt', 13, '2022-10-25 13:40:07', 4, '2022-12-03 14:14:36', 4),
(565, 'x2LNk4olEPrxXgJSkUNhApH82lSeNTrvgXUa8Rly', 13, '2022-10-25 13:40:07', 4, '2022-12-03 14:15:36', 4),
(566, 'x2LNk4olEPrxXgJSkUNhApH82lSeNTrvgXUa8Rly', 14, '2022-10-25 13:42:04', 4, '2022-12-03 09:23:54', 4),
(567, 'x2LNk4olEPrxXgJSkUNhApH82lSeNTrvgXUa8Rly', 13, '2022-10-25 13:40:07', 4, '2022-12-04 03:13:29', 4),
(568, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:20:48', 6),
(569, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:20:56', 6),
(570, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 30, '2022-11-05 06:28:58', 21, '2022-11-27 05:06:39', 21),
(571, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 13, '2022-10-25 13:40:07', 4, '2022-12-04 03:14:03', 4),
(572, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 27, '2022-11-01 15:26:46', 6, '2022-12-03 11:00:22', 6),
(573, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 23, '2022-10-30 11:42:29', 5, '2022-11-28 09:04:21', 5),
(574, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 27, '2022-11-01 15:26:46', 6, '2022-12-04 03:26:24', 6),
(575, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:21:20', 6),
(576, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:27:15', 6),
(577, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:28:36', 6),
(578, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:28:59', 6),
(579, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:29:20', 6),
(580, 'roBvUPc1Zs0ItE2JNMEsQ33mR1JXDlLQ0r554wCG', 64, '2022-12-04 03:20:47', 6, '2022-12-04 03:29:52', 6),
(581, 'NVbQ2GUwk1G3Fh936f2QsXBnEZc4eFYPU5mT3Yqv', 26, '2022-10-31 06:12:55', 20, '2022-12-03 12:53:08', 20),
(582, 'NVbQ2GUwk1G3Fh936f2QsXBnEZc4eFYPU5mT3Yqv', 26, '2022-10-31 06:12:55', 20, '2022-12-04 06:37:31', 20),
(583, 'NVbQ2GUwk1G3Fh936f2QsXBnEZc4eFYPU5mT3Yqv', 36, '2022-11-07 12:26:13', 24, '2022-11-30 09:10:12', 24),
(584, 'nAfHjrCSE097OWv9TkL7maLTC14nWqAYMBScT91R', 27, '2022-11-01 15:26:46', 6, '2022-12-04 03:27:09', 6),
(585, 'yFOjUSYnNjgJZlNKfjGw0tWBqeeFwe9xl4yuu6oL', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:34:59', 38),
(586, 'yFOjUSYnNjgJZlNKfjGw0tWBqeeFwe9xl4yuu6oL', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:37:25', 38),
(587, 'yFOjUSYnNjgJZlNKfjGw0tWBqeeFwe9xl4yuu6oL', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:39:07', 38),
(588, 'yFOjUSYnNjgJZlNKfjGw0tWBqeeFwe9xl4yuu6oL', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:40:51', 38),
(589, 'yFOjUSYnNjgJZlNKfjGw0tWBqeeFwe9xl4yuu6oL', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:46:37', 38),
(590, 'Vb7FbZbcFPQAUyTL8aQE6V2EjLstcVt7roVjkTzI', 66, '2022-12-04 08:19:06', 38, '2022-12-04 08:53:32', 38),
(591, '2t8nFeqVvqq7dexx5aEmKTudPQ3vQeYBL87cCe5q', 13, '2022-10-25 13:40:07', 4, '2022-12-04 03:26:11', 4),
(592, '2t8nFeqVvqq7dexx5aEmKTudPQ3vQeYBL87cCe5q', 13, '2022-10-25 13:40:07', 4, '2022-12-05 00:21:32', 4),
(593, '2t8nFeqVvqq7dexx5aEmKTudPQ3vQeYBL87cCe5q', 57, '2022-11-17 04:05:45', 21, '2022-12-03 10:30:44', 21),
(594, '0RWnBmsnrlCjqQ8xG7GXEsfVKUhFdCk2JOy2i0PO', 66, '2022-12-04 08:19:06', 38, '2022-12-04 09:48:29', 38),
(595, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 53, '2022-11-12 10:50:46', 25, '2022-11-27 08:52:59', 25),
(596, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 66, '2022-12-04 08:19:06', 38, '2022-12-05 08:12:07', 38),
(597, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 66, '2022-12-04 08:19:06', 38, '2022-12-07 02:47:45', 38),
(598, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 66, '2022-12-04 08:19:06', 38, '2022-12-07 02:48:01', 38),
(599, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 66, '2022-12-04 08:19:06', 38, '2022-12-07 02:48:01', 38),
(600, '45Og2ik8Y2mtLbg68vtQIetqxckb65LlalkBW6mr', 66, '2022-12-04 08:19:06', 38, '2022-12-07 02:48:27', 38),
(601, 'r822GxZAeW0kIJ7F3EV7sUPy9Frz45pTsw3W7dyZ', 68, '2022-12-07 05:12:59', 27, '2022-12-07 05:15:08', 27),
(602, 'MZNRR3TlJTHd1fKBkzIv6iVxKgAN3f3rnkd9LUaN', 69, '2022-12-07 10:05:34', 27, '2022-12-07 10:09:04', 27),
(603, 'DP77i1lUr4QPQLKQ1YYPDEkn4ZJMtpVz3RaAvu2i', 69, '2022-12-07 10:05:34', 27, '2022-12-07 10:13:33', 27),
(604, 'DP77i1lUr4QPQLKQ1YYPDEkn4ZJMtpVz3RaAvu2i', 69, '2022-12-07 10:05:34', 27, '2022-12-07 10:14:01', 27),
(605, '2h86qfaMk0NhUtW8KN7Ra4uSjw2j8s0v5sGGL6Oe', 59, '2022-11-23 06:45:17', 1, '2022-11-23 06:46:10', 1),
(606, '2h86qfaMk0NhUtW8KN7Ra4uSjw2j8s0v5sGGL6Oe', 15, '2022-10-30 04:35:56', 1, '2022-11-23 06:48:51', 1),
(607, '2h86qfaMk0NhUtW8KN7Ra4uSjw2j8s0v5sGGL6Oe', 13, '2022-10-25 13:40:07', 4, '2022-12-05 00:21:50', 4),
(608, '5mUOWTgk1FsCStn0Af01Jx7kHIOJE1WXoCCbRWgJ', 14, '2022-10-25 13:42:04', 4, '2022-12-04 03:13:54', 4),
(609, '5mUOWTgk1FsCStn0Af01Jx7kHIOJE1WXoCCbRWgJ', 14, '2022-10-25 13:42:04', 4, '2022-12-07 10:16:45', 4),
(610, 'aoMYUnaQrEc6QZjZwevOrWnhy4omvu6CZo8t0ISC', 66, '2022-12-04 08:19:06', 38, '2022-12-07 02:50:00', 38),
(611, 'N5wo55OAYp4jYTveI1pGQxHACD2uWuWIMfTkuZ0r', 13, '2022-10-25 13:40:07', 4, '2022-12-07 10:15:52', 4),
(612, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 13, '2022-10-25 13:40:07', 4, '2022-12-08 04:41:33', 4),
(613, 'iokuw5JzTkutZdYAKUTTtIjTb13fXppHgEBGhGHq', 13, '2022-10-25 13:40:07', 4, '2022-12-08 04:41:50', 4),
(614, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 13, '2022-10-25 13:40:07', 4, '2022-12-08 04:41:50', 4),
(615, 'rpESmvW9ZEsxbfKnmGrqaRrlddGObAbDdCyoVP6E', 26, '2022-10-31 06:12:55', 20, '2022-12-04 06:45:41', 20),
(616, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 13, '2022-10-25 13:40:07', 4, '2022-12-08 04:47:31', 4),
(617, 'iokuw5JzTkutZdYAKUTTtIjTb13fXppHgEBGhGHq', 34, '2022-11-05 06:36:01', 21, '2022-11-26 05:17:27', 21),
(618, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 13, '2022-10-25 13:40:07', 4, '2022-12-08 04:58:47', 4),
(619, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 13, '2022-10-25 13:40:07', 4, '2022-12-08 05:14:13', 4),
(620, 'DDaNdLsRwWddq7SPxy4nZHwk8Pwq7ukCsf2ZunbF', 58, '2022-11-19 13:28:42', 4, '2022-12-03 14:14:49', 4),
(621, 'Qfb4nvGoGyRnQLOrFlJ46dwQo8TQdLG6IrK8JgFH', 47, '2022-11-12 09:49:46', 25, '2022-12-03 09:42:48', 25),
(622, 'Cdh6GO9XWZIf1GL0w6CDcFtLPsQft6MHRmpM223Y', 54, '2022-11-12 10:52:18', 25, '2022-12-03 11:00:14', 25),
(623, 'QjuzhXf0ieoTUT9MngoR3gayRTq2feYyRTwidth2', 52, '2022-11-12 10:21:15', 25, '2022-11-30 09:10:45', 25);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_from_id` bigint(20) UNSIGNED NOT NULL,
  `report_to_id` bigint(20) UNSIGNED NOT NULL,
  `commends` text NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_from_id`, `report_to_id`, `commends`, `reason`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Bad', 'inauthentic item', '2022-10-19 11:21:08', '2022-10-19 11:21:08'),
(2, 2, 2, 'NA', 'suspicious seller or potential scam', '2022-10-25 12:32:13', '2022-10-25 12:32:13'),
(3, 24, 24, 'Nothing', 'inauthentic item', '2022-11-07 12:31:25', '2022-11-07 12:31:25'),
(4, 1, 24, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'suspicious seller or potential scam', '2022-11-12 05:29:35', '2022-11-12 05:29:35'),
(5, 1, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inauthentic item', '2022-11-12 05:30:12', '2022-11-12 05:30:12'),
(6, 29, 25, 'sdfdf', 'dsfdf', '2022-11-12 12:05:45', '2022-11-12 12:05:45'),
(7, 29, 25, 'fdsf', 'dsf', '2022-11-12 12:07:57', '2022-11-12 12:07:57'),
(8, 28, 28, 'fdsfdsfsfdsf', 'inauthentic item', '2022-12-03 09:29:50', '2022-12-03 09:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `requested_products`
--

CREATE TABLE `requested_products` (
  `id` int(11) NOT NULL,
  `ads_id` int(255) NOT NULL,
  `request_to` int(255) NOT NULL,
  `request_form` int(255) NOT NULL,
  `offer_price` int(255) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requested_products`
--

INSERT INTO `requested_products` (`id`, `ads_id`, `request_to`, `request_form`, `offer_price`, `status`, `created_at`, `updated_at`) VALUES
(2, 13, 4, 1, 23, 1, '2022-11-16 09:57:40', '2022-11-16 09:57:57'),
(3, 57, 21, 33, 90, 0, '2022-11-17 06:17:09', '2022-11-17 06:17:09'),
(4, 58, 4, 21, 600, 0, '2022-11-19 13:31:36', '2022-11-19 13:31:36'),
(5, 13, 7, 36, 25, 0, '2022-11-28 09:05:17', '2022-11-28 09:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stars` int(11) NOT NULL,
  `item_id` int(255) NOT NULL,
  `order_id` int(225) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `fastShipper` tinyint(4) NOT NULL DEFAULT 0,
  `itemAsDescribed` tinyint(4) NOT NULL DEFAULT 0,
  `quickReplies` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `stars`, `item_id`, `order_id`, `comment`, `fastShipper`, `itemAsDescribed`, `quickReplies`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 0, NULL, 'Good Seller', 0, 0, 0, 1, '2022-10-22 07:59:51', '2022-10-22 07:59:51'),
(2, 2, 5, 0, NULL, 'Good', 0, 0, 0, 1, '2022-10-22 08:00:17', '2022-10-22 08:00:17'),
(3, 0, 4, 1, NULL, 'Best', 0, 0, 0, 1, '2022-10-25 11:12:16', '2022-10-25 11:12:16'),
(4, 0, 5, 35, NULL, 'Really good seller\r\n\r\nthanks a lot', 1, 1, 1, 1, '2022-11-07 13:07:32', '2022-11-07 13:07:32'),
(5, 0, 4, 35, NULL, 'You are perfect seller\r\n\r\nthanks', 1, 1, 0, 1, '2022-11-07 13:07:50', '2022-11-07 13:07:50'),
(6, 0, 4, 35, NULL, 'Nice Product\r\n\r\nthanks', 1, 0, 0, 1, '2022-11-07 13:16:07', '2022-11-07 13:16:07'),
(7, 0, 5, 50, NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 0, 0, 0, 1, '2022-11-12 12:12:10', '2022-11-12 12:12:10'),
(8, 0, 5, 52, NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 0, 0, 0, 1, '2022-11-12 12:14:10', '2022-11-12 12:14:10'),
(9, 0, 5, 53, NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 0, 0, 1, 1, '2022-11-12 12:15:41', '2022-11-12 12:15:41'),
(10, 0, 5, 53, NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 0, 1, 1, 1, '2022-11-12 12:17:11', '2022-11-12 12:17:11'),
(11, 0, 5, 50, NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 1, 0, 0, 1, '2022-11-12 12:24:52', '2022-11-12 12:24:52'),
(12, 0, 5, 50, NULL, 'good', 0, 0, 0, 1, '2022-11-12 13:17:21', '2022-11-12 13:17:21'),
(13, 1, 4, 13, 21, 'lorem im', 1, 1, 0, 1, '2022-11-16 09:57:06', '2022-11-16 09:57:06'),
(14, 1, 3, 13, 22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu egestas tellus. Maecenas consectetur libero non velit laoreet posuere. Nulla sit amet volutpat augue.', 1, 1, 0, 1, '2022-11-16 10:00:23', '2022-11-16 10:00:23'),
(15, 31, 5, 50, 19, 'Well Product', 1, 0, 0, 1, '2022-12-04 08:51:47', '2022-12-04 08:51:47'),
(16, 31, 5, 66, 25, 'Well Fabrics and design', 0, 1, 0, 1, '2022-12-04 09:46:38', '2022-12-04 09:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2022-07-25 05:09:44', '2022-07-25 05:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `page_slug`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Welcome To 2life.lv', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(2, 'about', 'About', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(3, 'contact', 'About', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(4, 'ads', 'Ads', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(5, 'blog', 'Blog', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(6, 'pricing', 'Pricing', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(7, 'login', 'Login', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(8, 'register', 'Register', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47'),
(9, 'faq', 'FAQ', '2life.lv - is a classifieds portal to by and sell anything.', 'backend/image/default.png', '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `white_logo` varchar(255) DEFAULT NULL,
  `favicon_image` varchar(255) DEFAULT NULL,
  `header_css` varchar(255) DEFAULT NULL,
  `header_script` varchar(255) DEFAULT NULL,
  `body_script` varchar(255) DEFAULT NULL,
  `free_featured_ad_limit` int(11) NOT NULL DEFAULT 3,
  `regular_ads_homepage` tinyint(1) NOT NULL DEFAULT 0,
  `featured_ads_homepage` tinyint(1) NOT NULL DEFAULT 1,
  `customer_email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `maximum_ad_image_limit` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `subscription_type` enum('one_time','recurring') NOT NULL DEFAULT 'one_time',
  `ads_admin_approval` tinyint(1) NOT NULL DEFAULT 0,
  `free_ad_limit` int(11) NOT NULL DEFAULT 5,
  `sidebar_color` varchar(255) DEFAULT NULL,
  `nav_color` varchar(255) DEFAULT NULL,
  `sidebar_txt_color` varchar(255) DEFAULT NULL,
  `nav_txt_color` varchar(255) DEFAULT NULL,
  `main_color` varchar(255) DEFAULT NULL,
  `accent_color` varchar(255) DEFAULT NULL,
  `frontend_primary_color` varchar(255) DEFAULT NULL,
  `frontend_secondary_color` varchar(255) DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_pixel` tinyint(1) NOT NULL DEFAULT 0,
  `google_analytics` tinyint(1) NOT NULL DEFAULT 0,
  `search_engine_indexing` tinyint(1) NOT NULL DEFAULT 1,
  `default_layout` tinyint(1) NOT NULL DEFAULT 1,
  `website_loader` tinyint(1) NOT NULL DEFAULT 1,
  `loader_image` varchar(255) DEFAULT NULL,
  `language_changing` tinyint(1) NOT NULL DEFAULT 1,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_status` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_type` enum('text','image') NOT NULL DEFAULT 'text',
  `watermark_text` varchar(255) NOT NULL DEFAULT '2life.lv',
  `watermark_image` varchar(255) NOT NULL DEFAULT 'frontend/images/logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_map` enum('google-map','map-box') NOT NULL DEFAULT 'google-map',
  `google_map_key` varchar(255) DEFAULT NULL,
  `map_box_key` varchar(255) DEFAULT NULL,
  `default_long` double NOT NULL DEFAULT -100,
  `default_lat` double NOT NULL DEFAULT 40,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 1,
  `server_key` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `auth_domain` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `storage_bucket` varchar(255) DEFAULT NULL,
  `messaging_sender_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `measurement_id` varchar(255) DEFAULT NULL,
  `deals_under_price` float NOT NULL DEFAULT 0,
  `admin_commission` float(14,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo_image`, `white_logo`, `favicon_image`, `header_css`, `header_script`, `body_script`, `free_featured_ad_limit`, `regular_ads_homepage`, `featured_ads_homepage`, `customer_email_verification`, `maximum_ad_image_limit`, `subscription_type`, `ads_admin_approval`, `free_ad_limit`, `sidebar_color`, `nav_color`, `sidebar_txt_color`, `nav_txt_color`, `main_color`, `accent_color`, `frontend_primary_color`, `frontend_secondary_color`, `dark_mode`, `facebook_pixel`, `google_analytics`, `search_engine_indexing`, `default_layout`, `website_loader`, `loader_image`, `language_changing`, `email_verification`, `watermark_status`, `watermark_type`, `watermark_text`, `watermark_image`, `created_at`, `updated_at`, `default_map`, `google_map_key`, `map_box_key`, `default_long`, `default_lat`, `push_notification_status`, `server_key`, `api_key`, `auth_domain`, `project_id`, `storage_bucket`, `messaging_sender_id`, `app_id`, `measurement_id`, `deals_under_price`, `admin_commission`) VALUES
(1, 'uploads/app/logo/jO0xRK6jzU4g4EsXyV3kKCEIYXQCC6CngU8fESpp.jpg', 'uploads/app/logo/0xLZCnNNJSFoCsudLHXSeh8xHRzFRdhLKFjyRf5B.png', 'uploads/app/logo/dtJ9pH0p3SO6HfQ7nCY3h5Q6iGCPH9rZTYy2Ybbs.png', NULL, NULL, NULL, 0, 0, 1, 0, 0, '', 0, 0, '#022446', '#0a243e', '#e0e9f2', '#e0e9f2', '#05c279', '#ffc107', '#05c279', '#ffc107', 0, 0, 0, 1, 1, 1, NULL, 1, 0, 1, 'text', '2life.lv', 'frontend/images/logo.png', '2022-07-25 05:09:45', '2022-12-10 10:45:54', 'google-map', 'AIzaSyA72zy8Wy4kFpom_brg28OqBOa8S0eXXGY', 'AIzaSyA72zy8Wy4kFpom_brg28OqBOa8S0eXXGY', 90.411270491741, 23.757853442383, 0, 'your-server-key', 'your-api-key', 'your-auth-domain', 'your-project-id', 'your-storage-bucket', 'your-messaging-sender-id', 'your-app-id', 'your-measurement-id', 550, 5.50);

-- --------------------------------------------------------

--
-- Table structure for table `setup_guides`
--

CREATE TABLE `setup_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `action_route` varchar(255) NOT NULL,
  `action_label` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_guides`
--

INSERT INTO `setup_guides` (`id`, `task_name`, `title`, `description`, `action_route`, `action_label`, `status`, `created_at`, `updated_at`) VALUES
(1, 'app_setting', 'App Information ', 'Add your app logo, name, description, owner and other information.', 'settings.general', 'Add App Information', 1, '2022-07-25 05:09:47', '2022-10-19 11:08:22'),
(2, 'smtp_setting', 'SMTP Configuration', 'Add your app logo, name, description, owner and other information.', 'settings.email', 'Add Mail Configuration', 1, '2022-07-25 05:09:47', '2022-09-17 03:13:45'),
(3, 'payment_setting', 'Enable Payment Method', 'Enable to payment methods to receive payments from your customer.', 'settings.payment', 'Add Payment', 1, '2022-07-25 05:09:47', '2022-11-05 13:12:31'),
(4, 'theme_setting', 'Customize Theme', 'Customize your theme to make your app look more attractive.', 'settings.theme', 'Customize Your App Now', 1, '2022-07-25 05:09:47', '2022-09-17 03:14:21'),
(5, 'map_setting', 'Map Configuration', 'Configure your map setting api to create ad in any location.', 'settings.system', 'Add Map API', 1, '2022-07-25 05:09:47', '2022-09-17 03:32:16'),
(6, 'pusher_setting', 'Pusher Configuration', 'Configure your pusher setting api for the chat application', 'settings.system', 'Add Pusher API', 0, '2022-07-25 05:09:47', '2022-07-25 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `shiping_locations`
--

CREATE TABLE `shiping_locations` (
  `id` int(11) NOT NULL,
  `iso` varchar(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `locations` varchar(255) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shiping_locations`
--

INSERT INTO `shiping_locations` (`id`, `iso`, `name`, `locations`, `iso3`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(44, 'CN', 'CHINA', 'China', 'CHN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(49, 'CG', 'CONGO', 'Congo', 'COG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(73, 'FR', 'FRANCE', 'France', 'FRA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(99, 'IN', 'INDIA', 'India', 'IND', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(131, 'ML', 'MALI', 'Mali', 'MLI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(155, 'NE', 'NIGER', 'Niger', 'NER', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(168, 'PE', 'PERU', 'Peru', 'PER', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(171, 'PL', 'POLAND', 'Poland', 'POL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55'),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 1, '2022-12-03 07:08:55', '2022-12-03 07:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `user_id`, `apartment`, `state`, `city`, `postcode`, `country`, `address`, `created_at`, `updated_at`) VALUES
(32, 25, 'dhaka', 'ANDHRA PRADESH', 'Chittoor', '1213', 1, 'dhaka, banani', '2022-12-01 14:40:49', '2022-12-01 14:40:49'),
(33, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:14', '2022-12-01 14:41:14'),
(34, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:17', '2022-12-01 14:41:17'),
(35, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:19', '2022-12-01 14:41:19'),
(36, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:20', '2022-12-01 14:41:20'),
(37, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:21', '2022-12-01 14:41:21'),
(38, 25, 'banani', 'ANDHRA PRADESH', 'East Godavari', '1234', 1, 'dhaka', '2022-12-01 14:41:22', '2022-12-01 14:41:22'),
(39, 36, 'Bashati Horizon', 'Dhaka', 'Banani', '1203', 3, 'Road 17', '2022-12-03 05:34:27', '2022-12-03 05:34:27'),
(40, 36, 'Bashati Horizon', 'Dhaka', 'Banani', '1203', 3, 'Road 17', '2022-12-03 05:34:31', '2022-12-03 05:34:31'),
(41, 36, 'Bashati Horizon', 'Dhaka', 'Banani', '1203', 3, 'Road 17', '2022-12-03 05:34:33', '2022-12-03 05:34:33'),
(42, 36, '307/4', 'Dhaka', 'Mirpur', '1203', 3, 'Janata Sarak', '2022-12-03 05:37:40', '2022-12-03 05:37:40'),
(43, 28, 'Dhaka', 'dhaka', 'dhaka', '65465', 2, 'Dhaka', '2022-12-03 09:27:11', '2022-12-03 09:27:11'),
(44, 28, 'Dhaka', 'dhaka', 'dhaka', '65465', 2, 'Dhaka', '2022-12-03 09:27:13', '2022-12-03 09:27:13'),
(45, 28, 'Dhaka', 'dhaka', 'dhaka', '65465', 2, 'Dhaka', '2022-12-03 09:27:15', '2022-12-03 09:27:15'),
(46, 28, 'Dhakfdsfs', 'dshakafdsf', 'dhakafsdf', '65465dsf', 2, 'Dhakafds', '2022-12-03 09:27:43', '2022-12-03 09:27:43'),
(47, 37, '2', 'dhaka', 'dhaka', '5255', 2, 'dhaka', '2022-12-03 12:40:57', '2022-12-03 12:40:57'),
(48, 37, '2', 'dhaka', 'dhaka', '5255', 2, 'dhaka', '2022-12-03 12:40:58', '2022-12-03 12:40:58'),
(49, 37, '2', 'dhaka', 'dhaka', '5255', 2, 'dhaka', '2022-12-03 12:41:11', '2022-12-03 12:41:11'),
(50, 6, NULL, '111', '11', '222212', 2, '11', '2022-12-04 03:20:39', '2022-12-04 03:20:39'),
(51, 38, NULL, 'CA', 'Newport Beach', '92660', 226, '854 Avocado Ave.', '2022-12-04 08:01:32', '2022-12-04 08:01:32'),
(52, 38, NULL, 'CA', 'Newport Beach', '92660', 226, '854 Avocado Ave.', '2022-12-04 08:01:34', '2022-12-04 08:01:34'),
(53, 38, NULL, 'CA', 'Newport Beach', '92660', 226, '854 Avocado Ave.', '2022-12-04 08:01:36', '2022-12-04 08:01:36'),
(54, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:34', '2022-12-07 05:05:34'),
(55, 27, NULL, 'a', 'a', 'a', 14, 'a', '2022-12-07 05:05:35', '2022-12-07 05:05:35'),
(56, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:36', '2022-12-07 05:05:36'),
(57, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:38', '2022-12-07 05:05:38'),
(58, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:39', '2022-12-07 05:05:39'),
(59, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:40', '2022-12-07 05:05:40'),
(60, 27, NULL, 'a', 'a', 'a', 1, 'a', '2022-12-07 05:05:41', '2022-12-07 05:05:41'),
(61, 27, 'er', 'rer', 'ere', 'rer', 48, 'fer', '2022-12-07 05:29:03', '2022-12-07 05:29:03'),
(62, 27, 'fe3r43ew4', 'a', 'a', 'a', 1, 'a', '2022-12-07 10:12:30', '2022-12-07 10:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seller_id` int(11) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_body` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `path`, `status`, `seller_id`, `content_title`, `content_body`, `updated_at`, `created_at`) VALUES
(1, 'uploads/slider/1666181646_634fea0eb5ba0.jpg', 1, 2, 'Yoyr Listings', 'Boosted by Grailed', '2022-10-19 12:14:06', '2022-10-19 12:14:06'),
(2, 'uploads/slider/1666181777_634fea9170752.jpg', 1, 0, 'Curated Collections', 'NYC Streetwear', '2022-10-19 12:16:17', '2022-10-19 12:16:17'),
(3, 'uploads/slider/1666181871_634feaefaa9e4.jpg', 1, 2, 'Your Listings', 'Boosted by Grailed', '2022-10-19 12:17:51', '2022-10-19 12:17:51'),
(4, 'uploads/slider/1666182004_634feb74b1e03.jpg', 1, 3, 'Discover Top sellers', 'Featured', '2022-10-19 12:20:04', '2022-10-19 12:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `social_media` enum('facebook','twitter','instagram','youtube','linkedin','pinterest','reddit','github','other') NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_show_home` int(1) NOT NULL DEFAULT 1,
  `thumb` varchar(155) DEFAULT NULL,
  `mesurement_point` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `is_show_home`, `thumb`, `mesurement_point`) VALUES
(2, 1, 'TOPS', 'tops', 1, '2022-10-19 06:18:32', '2022-11-19 13:23:18', 1, 'uploads/subcategory/1666161118_634f99de20e19.jpg', 'Bust,Length,Shoulders,Waist'),
(3, 1, 'BOTTOMS', 'bottoms', 1, '2022-10-19 06:19:51', '2022-10-19 06:30:37', 1, 'uploads/subcategory/1666161037_634f998d88733.jpg', NULL),
(4, 1, 'OUTERWEAR', 'outerwear', 1, '2022-10-19 06:21:22', '2022-10-19 06:28:44', 1, 'uploads/subcategory/1666160924_634f991c138c6.jpg', NULL),
(5, 1, 'FOOTWEAR', 'footwear', 1, '2022-10-19 06:22:26', '2022-10-19 06:24:47', 1, 'uploads/subcategory/1666160687_634f982fa038a.jpg', NULL),
(6, 1, 'TAILORING', 'tailoring', 1, '2022-10-19 06:33:38', '2022-10-19 06:36:01', 1, 'uploads/subcategory/1666161218_634f9a4290aa5.jpg', NULL),
(7, 1, 'ACCESSORIES', 'accessories', 1, '2022-10-19 06:35:10', '2022-11-19 13:23:49', 1, 'uploads/subcategory/1666161310_634f9a9e88ea2.jpg', 'Bust,Length,Sleeve Length,Leg Opening'),
(8, 2, 'TOPS', 'tops', 1, '2022-10-19 06:44:17', '2022-10-19 06:50:59', 1, 'uploads/subcategory/1666161857_634f9cc18b4f4.jpg', NULL),
(9, 2, 'BOTTOMS', 'bottoms', 1, '2022-10-19 06:44:38', '2022-10-19 06:51:14', 1, 'uploads/subcategory/1666161878_634f9cd61c163.jpg', NULL),
(10, 2, 'OUTERWEAR', 'outerwear', 1, '2022-10-19 06:44:55', '2022-10-19 06:50:36', 1, 'uploads/subcategory/1666161895_634f9ce7ec087.jpg', NULL),
(11, 2, 'DRESSES', 'dresses', 1, '2022-10-19 06:45:24', '2022-10-19 06:51:38', 1, 'uploads/subcategory/1666161924_634f9d04a566c.jpg', NULL),
(12, 2, 'FOOTWEAR', 'footwear', 1, '2022-10-19 06:46:36', '2022-10-19 06:50:08', 1, 'uploads/subcategory/1666161996_634f9d4cd64d4.jpg', NULL),
(13, 2, 'BAGS AND LUGGAGE', 'bags-and-luggage', 1, '2022-10-19 06:49:23', '2022-10-19 06:49:56', 1, 'uploads/subcategory/1666162163_634f9df36dc19.jpg', NULL),
(14, 2, 'JEWELRY', 'jewelry', 1, '2022-10-19 06:49:35', '2022-10-19 06:49:35', 0, 'uploads/subcategory/1666162175_634f9dff5d5f8.jpg', NULL),
(15, 1, 'Tops', 'tops', 1, '2022-11-19 13:17:54', '2022-11-19 13:17:54', 0, 'uploads/subcategory/1668863874_6378d7825c3fd.jpg', 'Bust,Length,Waist,Sleeve Length,Inseam_Length,Leg Opening');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `description`, `image`, `stars`, `created_at`, `updated_at`) VALUES
(1, 'Bottom Wear', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'uploads/testimonial/Iw4GrqIJPdx48iD2ZY7k9ryf3oUkH2FwhMiEBKJU.jpg', 3, '2022-11-12 06:34:40', '2022-11-12 06:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_page` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `value`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Bamako'),
(7, 'Africa/Bangui'),
(8, 'Africa/Banjul'),
(9, 'Africa/Bissau'),
(10, 'Africa/Blantyre'),
(11, 'Africa/Brazzaville'),
(12, 'Africa/Bujumbura'),
(13, 'Africa/Cairo'),
(14, 'Africa/Casablanca'),
(15, 'Africa/Ceuta'),
(16, 'Africa/Conakry'),
(17, 'Africa/Dakar'),
(18, 'Africa/Dar_es_Salaam'),
(19, 'Africa/Djibouti'),
(20, 'Africa/Douala'),
(21, 'Africa/El_Aaiun'),
(22, 'Africa/Freetown'),
(23, 'Africa/Gaborone'),
(24, 'Africa/Harare'),
(25, 'Africa/Johannesburg'),
(26, 'Africa/Juba'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Tripoli'),
(51, 'Africa/Tunis'),
(52, 'Africa/Windhoek'),
(53, 'America/Adak'),
(54, 'America/Anchorage'),
(55, 'America/Anguilla'),
(56, 'America/Antigua'),
(57, 'America/Araguaina'),
(58, 'America/Argentina/Buenos_Aires'),
(59, 'America/Argentina/Catamarca'),
(60, 'America/Argentina/Cordoba'),
(61, 'America/Argentina/Jujuy'),
(62, 'America/Argentina/La_Rioja'),
(63, 'America/Argentina/Mendoza'),
(64, 'America/Argentina/Rio_Gallegos'),
(65, 'America/Argentina/Salta'),
(66, 'America/Argentina/San_Juan'),
(67, 'America/Argentina/San_Luis'),
(68, 'America/Argentina/Tucuman'),
(69, 'America/Argentina/Ushuaia'),
(70, 'America/Aruba'),
(71, 'America/Asuncion'),
(72, 'America/Atikokan'),
(73, 'America/Bahia'),
(74, 'America/Bahia_Banderas'),
(75, 'America/Barbados'),
(76, 'America/Belem'),
(77, 'America/Belize'),
(78, 'America/Blanc-Sablon'),
(79, 'America/Boa_Vista'),
(80, 'America/Bogota'),
(81, 'America/Boise'),
(82, 'America/Cambridge_Bay'),
(83, 'America/Campo_Grande'),
(84, 'America/Cancun'),
(85, 'America/Caracas'),
(86, 'America/Cayenne'),
(87, 'America/Cayman'),
(88, 'America/Chicago'),
(89, 'America/Chihuahua'),
(90, 'America/Costa_Rica'),
(91, 'America/Creston'),
(92, 'America/Cuiaba'),
(93, 'America/Curacao'),
(94, 'America/Danmarkshavn'),
(95, 'America/Dawson'),
(96, 'America/Dawson_Creek'),
(97, 'America/Denver'),
(98, 'America/Detroit'),
(99, 'America/Dominica'),
(100, 'America/Edmonton'),
(101, 'America/Eirunepe'),
(102, 'America/El_Salvador'),
(103, 'America/Fort_Nelson'),
(104, 'America/Fortaleza'),
(105, 'America/Glace_Bay'),
(106, 'America/Goose_Bay'),
(107, 'America/Grand_Turk'),
(108, 'America/Grenada'),
(109, 'America/Guadeloupe'),
(110, 'America/Guatemala'),
(111, 'America/Guayaquil'),
(112, 'America/Guyana'),
(113, 'America/Halifax'),
(114, 'America/Havana'),
(115, 'America/Hermosillo'),
(116, 'America/Indiana/Indianapolis'),
(117, 'America/Indiana/Knox'),
(118, 'America/Indiana/Marengo'),
(119, 'America/Indiana/Petersburg'),
(120, 'America/Indiana/Tell_City'),
(121, 'America/Indiana/Vevay'),
(122, 'America/Indiana/Vincennes'),
(123, 'America/Indiana/Winamac'),
(124, 'America/Inuvik'),
(125, 'America/Iqaluit'),
(126, 'America/Jamaica'),
(127, 'America/Juneau'),
(128, 'America/Kentucky/Louisville'),
(129, 'America/Kentucky/Monticello'),
(130, 'America/Kralendijk'),
(131, 'America/La_Paz'),
(132, 'America/Lima'),
(133, 'America/Los_Angeles'),
(134, 'America/Lower_Princes'),
(135, 'America/Maceio'),
(136, 'America/Managua'),
(137, 'America/Manaus'),
(138, 'America/Marigot'),
(139, 'America/Martinique'),
(140, 'America/Matamoros'),
(141, 'America/Mazatlan'),
(142, 'America/Menominee'),
(143, 'America/Merida'),
(144, 'America/Metlakatla'),
(145, 'America/Mexico_City'),
(146, 'America/Miquelon'),
(147, 'America/Moncton'),
(148, 'America/Monterrey'),
(149, 'America/Montevideo'),
(150, 'America/Montserrat'),
(151, 'America/Nassau'),
(152, 'America/New_York'),
(153, 'America/Nipigon'),
(154, 'America/Nome'),
(155, 'America/Noronha'),
(156, 'America/North_Dakota/Beulah'),
(157, 'America/North_Dakota/Center'),
(158, 'America/North_Dakota/New_Salem'),
(159, 'America/Nuuk'),
(160, 'America/Ojinaga'),
(161, 'America/Panama'),
(162, 'America/Pangnirtung'),
(163, 'America/Paramaribo'),
(164, 'America/Phoenix'),
(165, 'America/Port-au-Prince'),
(166, 'America/Port_of_Spain'),
(167, 'America/Porto_Velho'),
(168, 'America/Puerto_Rico'),
(169, 'America/Punta_Arenas'),
(170, 'America/Rainy_River'),
(171, 'America/Rankin_Inlet'),
(172, 'America/Recife'),
(173, 'America/Regina'),
(174, 'America/Resolute'),
(175, 'America/Rio_Branco'),
(176, 'America/Santarem'),
(177, 'America/Santiago'),
(178, 'America/Santo_Domingo'),
(179, 'America/Sao_Paulo'),
(180, 'America/Scoresbysund'),
(181, 'America/Sitka'),
(182, 'America/St_Barthelemy'),
(183, 'America/St_Johns'),
(184, 'America/St_Kitts'),
(185, 'America/St_Lucia'),
(186, 'America/St_Thomas'),
(187, 'America/St_Vincent'),
(188, 'America/Swift_Current'),
(189, 'America/Tegucigalpa'),
(190, 'America/Thule'),
(191, 'America/Thunder_Bay'),
(192, 'America/Tijuana'),
(193, 'America/Toronto'),
(194, 'America/Tortola'),
(195, 'America/Vancouver'),
(196, 'America/Whitehorse'),
(197, 'America/Winnipeg'),
(198, 'America/Yakutat'),
(199, 'America/Yellowknife'),
(200, 'Antarctica/Casey'),
(201, 'Antarctica/Davis'),
(202, 'Antarctica/DumontDUrville'),
(203, 'Antarctica/Macquarie'),
(204, 'Antarctica/Mawson'),
(205, 'Antarctica/McMurdo'),
(206, 'Antarctica/Palmer'),
(207, 'Antarctica/Rothera'),
(208, 'Antarctica/Syowa'),
(209, 'Antarctica/Troll'),
(210, 'Antarctica/Vostok'),
(211, 'Arctic/Longyearbyen'),
(212, 'Asia/Aden'),
(213, 'Asia/Almaty'),
(214, 'Asia/Amman'),
(215, 'Asia/Anadyr'),
(216, 'Asia/Aqtau'),
(217, 'Asia/Aqtobe'),
(218, 'Asia/Ashgabat'),
(219, 'Asia/Atyrau'),
(220, 'Asia/Baghdad'),
(221, 'Asia/Bahrain'),
(222, 'Asia/Baku'),
(223, 'Asia/Bangkok'),
(224, 'Asia/Barnaul'),
(225, 'Asia/Beirut'),
(226, 'Asia/Bishkek'),
(227, 'Asia/Brunei'),
(228, 'Asia/Chita'),
(229, 'Asia/Choibalsan'),
(230, 'Asia/Colombo'),
(231, 'Asia/Damascus'),
(232, 'Asia/Dhaka'),
(233, 'Asia/Dili'),
(234, 'Asia/Dubai'),
(235, 'Asia/Dushanbe'),
(236, 'Asia/Famagusta'),
(237, 'Asia/Gaza'),
(238, 'Asia/Hebron'),
(239, 'Asia/Ho_Chi_Minh'),
(240, 'Asia/Hong_Kong'),
(241, 'Asia/Hovd'),
(242, 'Asia/Irkutsk'),
(243, 'Asia/Jakarta'),
(244, 'Asia/Jayapura'),
(245, 'Asia/Jerusalem'),
(246, 'Asia/Kabul'),
(247, 'Asia/Kamchatka'),
(248, 'Asia/Karachi'),
(249, 'Asia/Kathmandu'),
(250, 'Asia/Khandyga'),
(251, 'Asia/Kolkata'),
(252, 'Asia/Krasnoyarsk'),
(253, 'Asia/Kuala_Lumpur'),
(254, 'Asia/Kuching'),
(255, 'Asia/Kuwait'),
(256, 'Asia/Macau'),
(257, 'Asia/Magadan'),
(258, 'Asia/Makassar'),
(259, 'Asia/Manila'),
(260, 'Asia/Muscat'),
(261, 'Asia/Nicosia'),
(262, 'Asia/Novokuznetsk'),
(263, 'Asia/Novosibirsk'),
(264, 'Asia/Omsk'),
(265, 'Asia/Oral'),
(266, 'Asia/Phnom_Penh'),
(267, 'Asia/Pontianak'),
(268, 'Asia/Pyongyang'),
(269, 'Asia/Qatar'),
(270, 'Asia/Qostanay'),
(271, 'Asia/Qyzylorda'),
(272, 'Asia/Riyadh'),
(273, 'Asia/Sakhalin'),
(274, 'Asia/Samarkand'),
(275, 'Asia/Seoul'),
(276, 'Asia/Shanghai'),
(277, 'Asia/Singapore'),
(278, 'Asia/Srednekolymsk'),
(279, 'Asia/Taipei'),
(280, 'Asia/Tashkent'),
(281, 'Asia/Tbilisi'),
(282, 'Asia/Tehran'),
(283, 'Asia/Thimphu'),
(284, 'Asia/Tokyo'),
(285, 'Asia/Tomsk'),
(286, 'Asia/Ulaanbaatar'),
(287, 'Asia/Urumqi'),
(288, 'Asia/Ust-Nera'),
(289, 'Asia/Vientiane'),
(290, 'Asia/Vladivostok'),
(291, 'Asia/Yakutsk'),
(292, 'Asia/Yangon'),
(293, 'Asia/Yekaterinburg'),
(294, 'Asia/Yerevan'),
(295, 'Atlantic/Azores'),
(296, 'Atlantic/Bermuda'),
(297, 'Atlantic/Canary'),
(298, 'Atlantic/Cape_Verde'),
(299, 'Atlantic/Faroe'),
(300, 'Atlantic/Madeira'),
(301, 'Atlantic/Reykjavik'),
(302, 'Atlantic/South_Georgia'),
(303, 'Atlantic/St_Helena'),
(304, 'Atlantic/Stanley'),
(305, 'Australia/Adelaide'),
(306, 'Australia/Brisbane'),
(307, 'Australia/Broken_Hill'),
(308, 'Australia/Darwin'),
(309, 'Australia/Eucla'),
(310, 'Australia/Hobart'),
(311, 'Australia/Lindeman'),
(312, 'Australia/Lord_Howe'),
(313, 'Australia/Melbourne'),
(314, 'Australia/Perth'),
(315, 'Australia/Sydney'),
(316, 'Europe/Amsterdam'),
(317, 'Europe/Andorra'),
(318, 'Europe/Astrakhan'),
(319, 'Europe/Athens'),
(320, 'Europe/Belgrade'),
(321, 'Europe/Berlin'),
(322, 'Europe/Bratislava'),
(323, 'Europe/Brussels'),
(324, 'Europe/Bucharest'),
(325, 'Europe/Budapest'),
(326, 'Europe/Busingen'),
(327, 'Europe/Chisinau'),
(328, 'Europe/Copenhagen'),
(329, 'Europe/Dublin'),
(330, 'Europe/Gibraltar'),
(331, 'Europe/Guernsey'),
(332, 'Europe/Helsinki'),
(333, 'Europe/Isle_of_Man'),
(334, 'Europe/Istanbul'),
(335, 'Europe/Jersey'),
(336, 'Europe/Kaliningrad'),
(337, 'Europe/Kiev'),
(338, 'Europe/Kirov'),
(339, 'Europe/Lisbon'),
(340, 'Europe/Ljubljana'),
(341, 'Europe/London'),
(342, 'Europe/Luxembourg'),
(343, 'Europe/Madrid'),
(344, 'Europe/Malta'),
(345, 'Europe/Mariehamn'),
(346, 'Europe/Minsk'),
(347, 'Europe/Monaco'),
(348, 'Europe/Moscow'),
(349, 'Europe/Oslo'),
(350, 'Europe/Paris'),
(351, 'Europe/Podgorica'),
(352, 'Europe/Prague'),
(353, 'Europe/Riga'),
(354, 'Europe/Rome'),
(355, 'Europe/Samara'),
(356, 'Europe/San_Marino'),
(357, 'Europe/Sarajevo'),
(358, 'Europe/Saratov'),
(359, 'Europe/Simferopol'),
(360, 'Europe/Skopje'),
(361, 'Europe/Sofia'),
(362, 'Europe/Stockholm'),
(363, 'Europe/Tallinn'),
(364, 'Europe/Tirane'),
(365, 'Europe/Ulyanovsk'),
(366, 'Europe/Uzhgorod'),
(367, 'Europe/Vaduz'),
(368, 'Europe/Vatican'),
(369, 'Europe/Vienna'),
(370, 'Europe/Vilnius'),
(371, 'Europe/Volgograd'),
(372, 'Europe/Warsaw'),
(373, 'Europe/Zagreb'),
(374, 'Europe/Zaporozhye'),
(375, 'Europe/Zurich'),
(376, 'Indian/Antananarivo'),
(377, 'Indian/Chagos'),
(378, 'Indian/Christmas'),
(379, 'Indian/Cocos'),
(380, 'Indian/Comoro'),
(381, 'Indian/Kerguelen'),
(382, 'Indian/Mahe'),
(383, 'Indian/Maldives'),
(384, 'Indian/Mauritius'),
(385, 'Indian/Mayotte'),
(386, 'Indian/Reunion'),
(387, 'Pacific/Apia'),
(388, 'Pacific/Auckland'),
(389, 'Pacific/Bougainville'),
(390, 'Pacific/Chatham'),
(391, 'Pacific/Chuuk'),
(392, 'Pacific/Easter'),
(393, 'Pacific/Efate'),
(394, 'Pacific/Fakaofo'),
(395, 'Pacific/Fiji'),
(396, 'Pacific/Funafuti'),
(397, 'Pacific/Galapagos'),
(398, 'Pacific/Gambier'),
(399, 'Pacific/Guadalcanal'),
(400, 'Pacific/Guam'),
(401, 'Pacific/Honolulu'),
(402, 'Pacific/Kanton'),
(403, 'Pacific/Kiritimati'),
(404, 'Pacific/Kosrae'),
(405, 'Pacific/Kwajalein'),
(406, 'Pacific/Majuro'),
(407, 'Pacific/Marquesas'),
(408, 'Pacific/Midway'),
(409, 'Pacific/Nauru'),
(410, 'Pacific/Niue'),
(411, 'Pacific/Norfolk'),
(412, 'Pacific/Noumea'),
(413, 'Pacific/Pago_Pago'),
(414, 'Pacific/Palau'),
(415, 'Pacific/Pitcairn'),
(416, 'Pacific/Pohnpei'),
(417, 'Pacific/Port_Moresby'),
(418, 'Pacific/Rarotonga'),
(419, 'Pacific/Saipan'),
(420, 'Pacific/Tahiti'),
(421, 'Pacific/Tarawa'),
(422, 'Pacific/Tongatapu'),
(423, 'Pacific/Wake'),
(424, 'Pacific/Wallis'),
(425, 'UTC'),
(426, 'Africa/Abidjan'),
(427, 'Africa/Accra'),
(428, 'Africa/Addis_Ababa'),
(429, 'Africa/Algiers'),
(430, 'Africa/Asmara'),
(431, 'Africa/Bamako'),
(432, 'Africa/Bangui'),
(433, 'Africa/Banjul'),
(434, 'Africa/Bissau'),
(435, 'Africa/Blantyre'),
(436, 'Africa/Brazzaville'),
(437, 'Africa/Bujumbura'),
(438, 'Africa/Cairo'),
(439, 'Africa/Casablanca'),
(440, 'Africa/Ceuta'),
(441, 'Africa/Conakry'),
(442, 'Africa/Dakar'),
(443, 'Africa/Dar_es_Salaam'),
(444, 'Africa/Djibouti'),
(445, 'Africa/Douala'),
(446, 'Africa/El_Aaiun'),
(447, 'Africa/Freetown'),
(448, 'Africa/Gaborone'),
(449, 'Africa/Harare'),
(450, 'Africa/Johannesburg'),
(451, 'Africa/Juba'),
(452, 'Africa/Kampala'),
(453, 'Africa/Khartoum'),
(454, 'Africa/Kigali'),
(455, 'Africa/Kinshasa'),
(456, 'Africa/Lagos'),
(457, 'Africa/Libreville'),
(458, 'Africa/Lome'),
(459, 'Africa/Luanda'),
(460, 'Africa/Lubumbashi'),
(461, 'Africa/Lusaka'),
(462, 'Africa/Malabo'),
(463, 'Africa/Maputo'),
(464, 'Africa/Maseru'),
(465, 'Africa/Mbabane'),
(466, 'Africa/Mogadishu'),
(467, 'Africa/Monrovia'),
(468, 'Africa/Nairobi'),
(469, 'Africa/Ndjamena'),
(470, 'Africa/Niamey'),
(471, 'Africa/Nouakchott'),
(472, 'Africa/Ouagadougou'),
(473, 'Africa/Porto-Novo'),
(474, 'Africa/Sao_Tome'),
(475, 'Africa/Tripoli'),
(476, 'Africa/Tunis'),
(477, 'Africa/Windhoek'),
(478, 'America/Adak'),
(479, 'America/Anchorage'),
(480, 'America/Anguilla'),
(481, 'America/Antigua'),
(482, 'America/Araguaina'),
(483, 'America/Argentina/Buenos_Aires'),
(484, 'America/Argentina/Catamarca'),
(485, 'America/Argentina/Cordoba'),
(486, 'America/Argentina/Jujuy'),
(487, 'America/Argentina/La_Rioja'),
(488, 'America/Argentina/Mendoza'),
(489, 'America/Argentina/Rio_Gallegos'),
(490, 'America/Argentina/Salta'),
(491, 'America/Argentina/San_Juan'),
(492, 'America/Argentina/San_Luis'),
(493, 'America/Argentina/Tucuman'),
(494, 'America/Argentina/Ushuaia'),
(495, 'America/Aruba'),
(496, 'America/Asuncion'),
(497, 'America/Atikokan'),
(498, 'America/Bahia'),
(499, 'America/Bahia_Banderas'),
(500, 'America/Barbados'),
(501, 'America/Belem'),
(502, 'America/Belize'),
(503, 'America/Blanc-Sablon'),
(504, 'America/Boa_Vista'),
(505, 'America/Bogota'),
(506, 'America/Boise'),
(507, 'America/Cambridge_Bay'),
(508, 'America/Campo_Grande'),
(509, 'America/Cancun'),
(510, 'America/Caracas'),
(511, 'America/Cayenne'),
(512, 'America/Cayman'),
(513, 'America/Chicago'),
(514, 'America/Chihuahua'),
(515, 'America/Costa_Rica'),
(516, 'America/Creston'),
(517, 'America/Cuiaba'),
(518, 'America/Curacao'),
(519, 'America/Danmarkshavn'),
(520, 'America/Dawson'),
(521, 'America/Dawson_Creek'),
(522, 'America/Denver'),
(523, 'America/Detroit'),
(524, 'America/Dominica'),
(525, 'America/Edmonton'),
(526, 'America/Eirunepe'),
(527, 'America/El_Salvador'),
(528, 'America/Fort_Nelson'),
(529, 'America/Fortaleza'),
(530, 'America/Glace_Bay'),
(531, 'America/Goose_Bay'),
(532, 'America/Grand_Turk'),
(533, 'America/Grenada'),
(534, 'America/Guadeloupe'),
(535, 'America/Guatemala'),
(536, 'America/Guayaquil'),
(537, 'America/Guyana'),
(538, 'America/Halifax'),
(539, 'America/Havana'),
(540, 'America/Hermosillo'),
(541, 'America/Indiana/Indianapolis'),
(542, 'America/Indiana/Knox'),
(543, 'America/Indiana/Marengo'),
(544, 'America/Indiana/Petersburg'),
(545, 'America/Indiana/Tell_City'),
(546, 'America/Indiana/Vevay'),
(547, 'America/Indiana/Vincennes'),
(548, 'America/Indiana/Winamac'),
(549, 'America/Inuvik'),
(550, 'America/Iqaluit'),
(551, 'America/Jamaica'),
(552, 'America/Juneau'),
(553, 'America/Kentucky/Louisville'),
(554, 'America/Kentucky/Monticello'),
(555, 'America/Kralendijk'),
(556, 'America/La_Paz'),
(557, 'America/Lima'),
(558, 'America/Los_Angeles'),
(559, 'America/Lower_Princes'),
(560, 'America/Maceio'),
(561, 'America/Managua'),
(562, 'America/Manaus'),
(563, 'America/Marigot'),
(564, 'America/Martinique'),
(565, 'America/Matamoros'),
(566, 'America/Mazatlan'),
(567, 'America/Menominee'),
(568, 'America/Merida'),
(569, 'America/Metlakatla'),
(570, 'America/Mexico_City'),
(571, 'America/Miquelon'),
(572, 'America/Moncton'),
(573, 'America/Monterrey'),
(574, 'America/Montevideo'),
(575, 'America/Montserrat'),
(576, 'America/Nassau'),
(577, 'America/New_York'),
(578, 'America/Nipigon'),
(579, 'America/Nome'),
(580, 'America/Noronha'),
(581, 'America/North_Dakota/Beulah'),
(582, 'America/North_Dakota/Center'),
(583, 'America/North_Dakota/New_Salem'),
(584, 'America/Nuuk'),
(585, 'America/Ojinaga'),
(586, 'America/Panama'),
(587, 'America/Pangnirtung'),
(588, 'America/Paramaribo'),
(589, 'America/Phoenix'),
(590, 'America/Port-au-Prince'),
(591, 'America/Port_of_Spain'),
(592, 'America/Porto_Velho'),
(593, 'America/Puerto_Rico'),
(594, 'America/Punta_Arenas'),
(595, 'America/Rainy_River'),
(596, 'America/Rankin_Inlet'),
(597, 'America/Recife'),
(598, 'America/Regina'),
(599, 'America/Resolute'),
(600, 'America/Rio_Branco'),
(601, 'America/Santarem'),
(602, 'America/Santiago'),
(603, 'America/Santo_Domingo'),
(604, 'America/Sao_Paulo'),
(605, 'America/Scoresbysund'),
(606, 'America/Sitka'),
(607, 'America/St_Barthelemy'),
(608, 'America/St_Johns'),
(609, 'America/St_Kitts'),
(610, 'America/St_Lucia'),
(611, 'America/St_Thomas'),
(612, 'America/St_Vincent'),
(613, 'America/Swift_Current'),
(614, 'America/Tegucigalpa'),
(615, 'America/Thule'),
(616, 'America/Thunder_Bay'),
(617, 'America/Tijuana'),
(618, 'America/Toronto'),
(619, 'America/Tortola'),
(620, 'America/Vancouver'),
(621, 'America/Whitehorse'),
(622, 'America/Winnipeg'),
(623, 'America/Yakutat'),
(624, 'America/Yellowknife'),
(625, 'Antarctica/Casey'),
(626, 'Antarctica/Davis'),
(627, 'Antarctica/DumontDUrville'),
(628, 'Antarctica/Macquarie'),
(629, 'Antarctica/Mawson'),
(630, 'Antarctica/McMurdo'),
(631, 'Antarctica/Palmer'),
(632, 'Antarctica/Rothera'),
(633, 'Antarctica/Syowa'),
(634, 'Antarctica/Troll'),
(635, 'Antarctica/Vostok'),
(636, 'Arctic/Longyearbyen'),
(637, 'Asia/Aden'),
(638, 'Asia/Almaty'),
(639, 'Asia/Amman'),
(640, 'Asia/Anadyr'),
(641, 'Asia/Aqtau'),
(642, 'Asia/Aqtobe'),
(643, 'Asia/Ashgabat'),
(644, 'Asia/Atyrau'),
(645, 'Asia/Baghdad'),
(646, 'Asia/Bahrain'),
(647, 'Asia/Baku'),
(648, 'Asia/Bangkok'),
(649, 'Asia/Barnaul'),
(650, 'Asia/Beirut'),
(651, 'Asia/Bishkek'),
(652, 'Asia/Brunei'),
(653, 'Asia/Chita'),
(654, 'Asia/Choibalsan'),
(655, 'Asia/Colombo'),
(656, 'Asia/Damascus'),
(657, 'Asia/Dhaka'),
(658, 'Asia/Dili'),
(659, 'Asia/Dubai'),
(660, 'Asia/Dushanbe'),
(661, 'Asia/Famagusta'),
(662, 'Asia/Gaza'),
(663, 'Asia/Hebron'),
(664, 'Asia/Ho_Chi_Minh'),
(665, 'Asia/Hong_Kong'),
(666, 'Asia/Hovd'),
(667, 'Asia/Irkutsk'),
(668, 'Asia/Jakarta'),
(669, 'Asia/Jayapura'),
(670, 'Asia/Jerusalem'),
(671, 'Asia/Kabul'),
(672, 'Asia/Kamchatka'),
(673, 'Asia/Karachi'),
(674, 'Asia/Kathmandu'),
(675, 'Asia/Khandyga'),
(676, 'Asia/Kolkata'),
(677, 'Asia/Krasnoyarsk'),
(678, 'Asia/Kuala_Lumpur'),
(679, 'Asia/Kuching'),
(680, 'Asia/Kuwait'),
(681, 'Asia/Macau'),
(682, 'Asia/Magadan'),
(683, 'Asia/Makassar'),
(684, 'Asia/Manila'),
(685, 'Asia/Muscat'),
(686, 'Asia/Nicosia'),
(687, 'Asia/Novokuznetsk'),
(688, 'Asia/Novosibirsk'),
(689, 'Asia/Omsk'),
(690, 'Asia/Oral'),
(691, 'Asia/Phnom_Penh'),
(692, 'Asia/Pontianak'),
(693, 'Asia/Pyongyang'),
(694, 'Asia/Qatar'),
(695, 'Asia/Qostanay'),
(696, 'Asia/Qyzylorda'),
(697, 'Asia/Riyadh'),
(698, 'Asia/Sakhalin'),
(699, 'Asia/Samarkand'),
(700, 'Asia/Seoul'),
(701, 'Asia/Shanghai'),
(702, 'Asia/Singapore'),
(703, 'Asia/Srednekolymsk'),
(704, 'Asia/Taipei'),
(705, 'Asia/Tashkent'),
(706, 'Asia/Tbilisi'),
(707, 'Asia/Tehran'),
(708, 'Asia/Thimphu'),
(709, 'Asia/Tokyo'),
(710, 'Asia/Tomsk'),
(711, 'Asia/Ulaanbaatar'),
(712, 'Asia/Urumqi'),
(713, 'Asia/Ust-Nera'),
(714, 'Asia/Vientiane'),
(715, 'Asia/Vladivostok'),
(716, 'Asia/Yakutsk'),
(717, 'Asia/Yangon'),
(718, 'Asia/Yekaterinburg'),
(719, 'Asia/Yerevan'),
(720, 'Atlantic/Azores'),
(721, 'Atlantic/Bermuda'),
(722, 'Atlantic/Canary'),
(723, 'Atlantic/Cape_Verde'),
(724, 'Atlantic/Faroe'),
(725, 'Atlantic/Madeira'),
(726, 'Atlantic/Reykjavik'),
(727, 'Atlantic/South_Georgia'),
(728, 'Atlantic/St_Helena'),
(729, 'Atlantic/Stanley'),
(730, 'Australia/Adelaide'),
(731, 'Australia/Brisbane'),
(732, 'Australia/Broken_Hill'),
(733, 'Australia/Darwin'),
(734, 'Australia/Eucla'),
(735, 'Australia/Hobart'),
(736, 'Australia/Lindeman'),
(737, 'Australia/Lord_Howe'),
(738, 'Australia/Melbourne'),
(739, 'Australia/Perth'),
(740, 'Australia/Sydney'),
(741, 'Europe/Amsterdam'),
(742, 'Europe/Andorra'),
(743, 'Europe/Astrakhan'),
(744, 'Europe/Athens'),
(745, 'Europe/Belgrade'),
(746, 'Europe/Berlin'),
(747, 'Europe/Bratislava'),
(748, 'Europe/Brussels'),
(749, 'Europe/Bucharest'),
(750, 'Europe/Budapest'),
(751, 'Europe/Busingen'),
(752, 'Europe/Chisinau'),
(753, 'Europe/Copenhagen'),
(754, 'Europe/Dublin'),
(755, 'Europe/Gibraltar'),
(756, 'Europe/Guernsey'),
(757, 'Europe/Helsinki'),
(758, 'Europe/Isle_of_Man'),
(759, 'Europe/Istanbul'),
(760, 'Europe/Jersey'),
(761, 'Europe/Kaliningrad'),
(762, 'Europe/Kiev'),
(763, 'Europe/Kirov'),
(764, 'Europe/Lisbon'),
(765, 'Europe/Ljubljana'),
(766, 'Europe/London'),
(767, 'Europe/Luxembourg'),
(768, 'Europe/Madrid'),
(769, 'Europe/Malta'),
(770, 'Europe/Mariehamn'),
(771, 'Europe/Minsk'),
(772, 'Europe/Monaco'),
(773, 'Europe/Moscow'),
(774, 'Europe/Oslo'),
(775, 'Europe/Paris'),
(776, 'Europe/Podgorica'),
(777, 'Europe/Prague'),
(778, 'Europe/Riga'),
(779, 'Europe/Rome'),
(780, 'Europe/Samara'),
(781, 'Europe/San_Marino'),
(782, 'Europe/Sarajevo'),
(783, 'Europe/Saratov'),
(784, 'Europe/Simferopol'),
(785, 'Europe/Skopje'),
(786, 'Europe/Sofia'),
(787, 'Europe/Stockholm'),
(788, 'Europe/Tallinn'),
(789, 'Europe/Tirane'),
(790, 'Europe/Ulyanovsk'),
(791, 'Europe/Uzhgorod'),
(792, 'Europe/Vaduz'),
(793, 'Europe/Vatican'),
(794, 'Europe/Vienna'),
(795, 'Europe/Vilnius'),
(796, 'Europe/Volgograd'),
(797, 'Europe/Warsaw'),
(798, 'Europe/Zagreb'),
(799, 'Europe/Zaporozhye'),
(800, 'Europe/Zurich'),
(801, 'Indian/Antananarivo'),
(802, 'Indian/Chagos'),
(803, 'Indian/Christmas'),
(804, 'Indian/Cocos'),
(805, 'Indian/Comoro'),
(806, 'Indian/Kerguelen'),
(807, 'Indian/Mahe'),
(808, 'Indian/Maldives'),
(809, 'Indian/Mauritius'),
(810, 'Indian/Mayotte'),
(811, 'Indian/Reunion'),
(812, 'Pacific/Apia'),
(813, 'Pacific/Auckland'),
(814, 'Pacific/Bougainville'),
(815, 'Pacific/Chatham'),
(816, 'Pacific/Chuuk'),
(817, 'Pacific/Easter'),
(818, 'Pacific/Efate'),
(819, 'Pacific/Fakaofo'),
(820, 'Pacific/Fiji'),
(821, 'Pacific/Funafuti'),
(822, 'Pacific/Galapagos'),
(823, 'Pacific/Gambier'),
(824, 'Pacific/Guadalcanal'),
(825, 'Pacific/Guam'),
(826, 'Pacific/Honolulu'),
(827, 'Pacific/Kanton'),
(828, 'Pacific/Kiritimati'),
(829, 'Pacific/Kosrae'),
(830, 'Pacific/Kwajalein'),
(831, 'Pacific/Majuro'),
(832, 'Pacific/Marquesas'),
(833, 'Pacific/Midway'),
(834, 'Pacific/Nauru'),
(835, 'Pacific/Niue'),
(836, 'Pacific/Norfolk'),
(837, 'Pacific/Noumea'),
(838, 'Pacific/Pago_Pago'),
(839, 'Pacific/Palau'),
(840, 'Pacific/Pitcairn'),
(841, 'Pacific/Pohnpei'),
(842, 'Pacific/Port_Moresby'),
(843, 'Pacific/Rarotonga'),
(844, 'Pacific/Saipan'),
(845, 'Pacific/Tahiti'),
(846, 'Pacific/Tarawa'),
(847, 'Pacific/Tongatapu'),
(848, 'Pacific/Wake'),
(849, 'Pacific/Wallis'),
(850, 'UTC');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_provider` enum('flutterwave','mollie','midtrans','paypal','paystack','razorpay','sslcommerz','stripe','instamojo','offline') NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) NOT NULL,
  `item_id` int(255) NOT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `usd_amount` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_provider`, `user_id`, `amount`, `item_id`, `currency_symbol`, `usd_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '3', '1L442795D21280043', 'paypal', 7, '45', 13, '$', '45', 'COMPLETED', '2022-10-25 13:43:47', '2022-10-25 13:43:47'),
(2, '4', '9ET942107K338074S', 'paypal', 1, '50', 14, '$', '50', 'COMPLETED', '2022-11-05 13:13:35', '2022-11-05 13:13:35'),
(3, '5', '8ES16215YD881370E', 'paypal', 22, '120', 35, '$', '120', 'COMPLETED', '2022-11-07 12:58:32', '2022-11-07 12:58:32'),
(4, '6', '59H59797PX8614427', 'paypal', 1, '20', 13, '$', '20', 'COMPLETED', '2022-11-12 05:34:29', '2022-11-12 05:34:29'),
(5, '7', '6HP41802YG321954L', 'paypal', 31, '60', 50, '$', '60', 'COMPLETED', '2022-11-12 11:02:08', '2022-11-12 11:02:08'),
(6, '8', '0BV99492RJ704963S', 'paypal', 29, '625', 31, '$', '625', 'COMPLETED', '2022-11-12 11:12:54', '2022-11-12 11:12:54'),
(7, '9', '8W731019UD432043X', 'paypal', 29, '625', 31, '$', '625', 'COMPLETED', '2022-11-12 11:15:51', '2022-11-12 11:15:51'),
(8, '10', '3HY49340NK307622X', 'paypal', 31, '112', 52, '$', '112', 'COMPLETED', '2022-11-12 11:24:35', '2022-11-12 11:24:35'),
(9, '11', '74N51266D21209351', 'paypal', 1, '85', 36, '$', '85', 'COMPLETED', '2022-11-12 11:27:08', '2022-11-12 11:27:08'),
(10, '12', '0WV40914JF947262H', 'paypal', 31, '68', 53, '$', '68', 'COMPLETED', '2022-11-12 11:43:40', '2022-11-12 11:43:40'),
(11, '13', '41J725646A3314238', 'paypal', 1, '85', 36, '$', '85', 'COMPLETED', '2022-11-12 11:47:24', '2022-11-12 11:47:24'),
(12, '14', '6V042392EC0334355', 'paypal', 29, '125', 35, '$', '125', 'COMPLETED', '2022-11-12 11:47:56', '2022-11-12 11:47:56'),
(13, '15', '05X27140X6740894N', 'paypal', 29, '285', 33, '$', '285', 'COMPLETED', '2022-11-12 11:51:48', '2022-11-12 11:51:48'),
(14, '16', '3UC02604LF5404041', 'paypal', 29, '625', 32, '$', '625', 'COMPLETED', '2022-11-12 11:54:08', '2022-11-12 11:54:08'),
(15, '17', '29046127241988044', 'paypal', 29, '275', 34, '$', '275', 'COMPLETED', '2022-11-12 11:56:37', '2022-11-12 11:56:37'),
(16, '18', '92D28597R47246212', 'paypal', 29, '70', 46, '$', '70', 'COMPLETED', '2022-11-12 12:00:11', '2022-11-12 12:00:11'),
(17, '19', '6Y4155848T0757604', 'paypal', 31, '60', 50, '$', '60', 'COMPLETED', '2022-11-12 12:03:32', '2022-11-12 12:03:32'),
(18, '20', '5XT54602WX657064M', 'paypal', 21, '55', 26, '$', '55', 'COMPLETED', '2022-11-12 14:33:07', '2022-11-12 14:33:07'),
(19, '21', '2SM35661LD010372W', 'paypal', 1, '40', 13, '$', '40', 'COMPLETED', '2022-11-16 09:55:42', '2022-11-16 09:55:42'),
(20, '22', '791312306M335552K', 'paypal', 1, '35', 13, '$', '35', 'COMPLETED', '2022-11-16 09:58:39', '2022-11-16 09:58:39'),
(21, '23', '9F795539U4553364T', 'paypal', 1, '85', 36, '$', '85', 'COMPLETED', '2022-11-16 13:13:15', '2022-11-16 13:13:15'),
(22, '24', '1FK460459F903980R', 'paypal', 31, '115', 66, '$', '115', 'COMPLETED', '2022-12-04 08:40:45', '2022-12-04 08:40:45'),
(23, '25', '5YT90206XK154600N', 'paypal', 31, '115', 66, '$', '115', 'COMPLETED', '2022-12-04 08:48:01', '2022-12-04 08:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` int(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'backend/image/default-user.png',
  `token` varchar(255) DEFAULT NULL,
  `last_seen` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_type` varchar(255) NOT NULL DEFAULT 'email',
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `withdraw_request_amount` float NOT NULL DEFAULT 0,
  `total_seller_amount` float NOT NULL DEFAULT 0,
  `trusted_seller` tinyint(4) NOT NULL DEFAULT 0,
  `bio` text DEFAULT NULL,
  `quick_responder` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `location`, `email_verified_at`, `password`, `web`, `image`, `token`, `last_seen`, `remember_token`, `created_at`, `updated_at`, `auth_type`, `provider`, `provider_id`, `fcm_token`, `withdraw_request_amount`, `total_seller_amount`, `trusted_seller`, `bio`, `quick_responder`) VALUES
(1, 'mamunul_haque', 'mamunul_haque', 'mamunul_haque@gmail.com', NULL, NULL, NULL, '$2y$10$VZIZXPP96V4TgHVzfWMpYuv.BGwn9vngjeKaEYVx6hehxKToczgFa', NULL, 'backend/image/default-user.png', NULL, '2022-12-07 10:16:07', NULL, '2022-10-19 06:05:37', '2022-12-07 10:16:07', 'email', NULL, NULL, NULL, 0, 385.42, 1, NULL, 0),
(4, 'Mo', 'mo123', '36f1a29783@boxomail.live', NULL, NULL, NULL, '$2y$10$dcKQ4CzVXRJpeXnmayBHReASQf8XOIs.kmZClWGm8aJ99QEzIIPZK', NULL, 'backend/image/default-user.png', NULL, '2022-12-08 05:14:47', NULL, '2022-10-19 12:50:00', '2022-12-08 05:14:47', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(5, 'Rony', 'ronymia1122', 'ronymia11@gmail.com', NULL, NULL, NULL, '$2y$10$YdA.qC1H69hQeItWhL378OT6ysr8zG7MLZKx5JRKOVeLWVKdZetz.', NULL, 'backend/image/default-user.png', NULL, '2022-12-13 04:07:17', NULL, '2022-10-20 10:30:35', '2022-12-13 04:07:17', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(6, 'ryokuhu@tapi.re', 'ryokuhu', 'ryokuhu@tapi.re', NULL, 1, NULL, '$2y$10$0mLqc3UM.kvsUtB4q12SS.Lvqr/t7.u9DE0hc8bUC4J6Sh02rou/a', NULL, 'uploads/customer/1666425182_6353a15ef2f5d.jpg', NULL, '2022-12-04 03:37:30', NULL, '2022-10-22 07:49:20', '2022-12-04 03:37:30', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(7, 'ronaldo', 'ron123', '58c99e1444@inboxmail.life', NULL, NULL, NULL, '$2y$10$em90eumV5fPeHQ.pkL428O6ZqiGYhnfOk2v0grC6h7bg5Px2mJL86', NULL, 'backend/image/default-user.png', NULL, '2022-10-25 13:47:10', NULL, '2022-10-25 11:02:49', '2022-10-25 13:47:10', 'email', NULL, NULL, NULL, 116.15, 116.15, 0, NULL, 0),
(13, 'ANGCON HALDER', 'angconhalder304488', 'angcon26101999@gmail.com', NULL, NULL, NULL, NULL, NULL, 'backend/image/default-user.png', NULL, '2022-10-26 10:30:17', NULL, '2022-10-26 10:30:10', '2022-10-26 10:30:17', 'email', 'google', '105224341868981109587', NULL, 0, 0, 0, NULL, 0),
(14, 'Md Mridul Biswas', 'mdmridulbiswas408680', 'mdmridul6088@gmail.com', NULL, NULL, NULL, NULL, NULL, 'backend/image/default-user.png', NULL, '2022-10-29 08:15:01', NULL, '2022-10-29 06:42:26', '2022-10-29 08:15:01', 'email', 'google', '106302743302562938128', NULL, 0, 0, 0, NULL, 0),
(15, 'rohinga', 'rohu123', '5d4becb4ae@inboxmail.life', NULL, NULL, NULL, '$2y$10$D7blEMNT6fYc2hhjgs.8Xebm3VVfPOMD6PczJ3bzGCCbvzqhDFuRO', NULL, 'backend/image/default-user.png', NULL, '2022-10-29 08:13:08', NULL, '2022-10-29 07:55:38', '2022-10-29 08:13:08', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(17, 'ronaldoo', 'ronu123', '7b408e37e6@inboxmail.life', NULL, NULL, NULL, '$2y$10$pDl8OailA5cyrigB9hBVpu2QBYLGXQ41OhIb/b4VM8vzUkx2nTywi', NULL, 'backend/image/default-user.png', NULL, '2022-10-30 05:08:00', NULL, '2022-10-30 04:45:51', '2022-10-30 05:08:00', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(18, 'rona', 'rona123', '344ef98fff@inboxmail.life', NULL, NULL, NULL, '$2y$10$45Ibvy4oy4d5IoRii9AwieINBMfk6Eo6Tj/lphCwq.OrElFJtUPEC', NULL, 'backend/image/default-user.png', NULL, '2022-10-30 07:23:16', NULL, '2022-10-30 05:39:55', '2022-10-30 07:23:16', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(19, 'roma', 'roma123', 'ef7bc71983@inboxmail.life', NULL, NULL, NULL, '$2y$10$KRG1La6EfsZNI0lm4XxcXO8hrTulMkwBAVWLXqmnh.guvpxtmgTCS', NULL, 'backend/image/default-user.png', NULL, '2022-10-30 11:31:06', NULL, '2022-10-30 11:19:56', '2022-10-30 11:31:06', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(20, 'Rokeya', 'roku123', '3c49b62448@inboxmail.life', NULL, NULL, NULL, '$2y$10$/zuOGeGBS9vk2AILLOn/AOQaoDy3LGgdKSKAwofMesUYId4okCV5C', NULL, 'backend/image/default-user.png', NULL, '2022-10-31 06:15:34', NULL, '2022-10-31 06:08:45', '2022-10-31 06:15:34', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(21, 'Rony', 'ronymia', 'rony2211@gmail.com', NULL, 1, NULL, '$2y$10$Z2Bs2iWddu5I1BH4fCCKr.v95XAAkjUbtl0d9gTHp7v1AMaFPX8Gq', NULL, 'backend/image/default-user.png', NULL, '2022-11-26 05:24:49', NULL, '2022-11-05 06:20:54', '2022-11-26 05:24:49', 'email', NULL, NULL, NULL, 0, 53.35, 0, '<p>•✈️Worldwide Shipping 🛩 •🏦 PayPal only💳 •📩 Ask for more information via message.💌 •🤎Don\'t forget to come back and review.💙 •📲waiting for you to bid 📞</p>', 0),
(22, 'Razu', 'razu', 'razu@gmail.com', NULL, NULL, NULL, '$2y$10$7KEMsV44Tis.wUcL/VQFyeobrIL0L57MwutiygbKg2/fsL3UnOjlG', NULL, 'backend/image/default-user.png', NULL, '2022-11-07 13:16:48', NULL, '2022-11-05 06:55:06', '2022-11-07 13:16:48', 'email', NULL, NULL, NULL, 0, 114.5, 0, NULL, 0),
(23, 'Rony Mia', 'ronymia426160', 'ronymia111333@gmail.com', NULL, 1, NULL, '$2y$10$7KEMsV44Tis.wUcL/VQFyeobrIL0L57MwutiygbKg2/fsL3UnOjlG', NULL, 'uploads/customer/1667968896_636b2f804af46.jpg', NULL, '2022-11-09 05:02:50', NULL, '2022-11-07 11:18:29', '2022-11-09 05:02:50', 'email', 'facebook', '1843895085943521', NULL, 0, 0, 0, NULL, 0),
(24, 'Bearrystore', 'ronymia059901', 'ronymia.tech@gmail.com', NULL, 1, NULL, '$2y$10$7KEMsV44Tis.wUcL/VQFyeobrIL0L57MwutiygbKg2/fsL3UnOjlG', NULL, 'backend/image/default-user.png', NULL, '2022-11-07 14:13:57', NULL, '2022-11-07 11:29:33', '2022-11-07 14:13:57', 'email', 'google', '107403319867710670983', NULL, 0, 0, 0, NULL, 0),
(25, 'Bearrystore', 'Bearrystore', 'khiljimonstar355@gmail.com', NULL, 1, NULL, '$2y$10$Vbj.QS2t9IvIfXCWv9Gk2erogkR7Z9vkepE3UwIs919wr4VrJi2Pq', NULL, 'backend/image/default-user.png', NULL, '2022-12-03 11:01:51', NULL, '2022-11-12 09:20:12', '2022-12-03 11:01:51', 'email', NULL, NULL, NULL, 0, 0, 1, '<p>•✈️Worldwide Shipping 🛩</p><p>&nbsp;•🏦 PayPal only💳&nbsp;</p><p>•📩 Ask for more information via message.💌</p><p>&nbsp;•🤎Don\'t forget to come back and review.💙</p><p>&nbsp;•📲waiting for you to bid 📞</p>', 1),
(27, 'rabin', 'rabin', 'rabin@gmail.com', NULL, 3, NULL, '$2y$10$PJ8.YdvAG7tUPSRLSW.f/uVsKgGJnplFKDmSuxuzcSsnNMyp.a1Du', NULL, 'backend/image/default-user.png', NULL, '2022-12-08 05:20:46', NULL, '2022-11-12 09:23:34', '2022-12-08 05:20:46', 'email', NULL, NULL, NULL, 0, 0, 0, '<p>fdsfd</p>', 0),
(28, 'rabin', 'rabin12', 'rabinmia7578@gmail.com', NULL, NULL, NULL, '$2y$10$kTuiI04s5yXCumcOfKeMTe1IWfuNn/4o7qLcnwJfFK9WbH3wsh0uy', NULL, 'backend/image/default-user.png', NULL, '2022-12-03 09:57:34', NULL, '2022-11-12 10:28:32', '2022-12-03 09:57:34', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(29, 'rabin', 'rabin21', 'rabinmia@gmail.com', NULL, NULL, NULL, '$2y$10$71PECS5vYMsfoNdIKogtwuVFmNEdWG30xaHMrBsN/S4IeWTXKAUtK', NULL, 'backend/image/default-user.png', NULL, '2022-11-12 12:17:06', NULL, '2022-11-12 10:53:18', '2022-11-12 12:17:06', 'email', NULL, NULL, NULL, 2487.5, 2494.97, 0, NULL, 0),
(31, 'Mubarak', 'Mubarak', 'mubarakkha355@gmail.com', NULL, NULL, NULL, '$2y$10$QBqhsoc2lEysEvKt2cQ/Fua5o4RH2LJLQWoYTezxkqk6hPNXmmfdi', NULL, 'backend/image/default-user.png', NULL, '2022-12-05 08:12:36', NULL, '2022-11-12 10:56:10', '2022-12-05 08:12:36', 'email', NULL, NULL, NULL, 0, 511.84, 1, NULL, 1),
(32, 'Md Mridul', 'mdmridul608', 'mdmridul608@gmail.com', NULL, NULL, NULL, '$2y$10$AwTTy/GeYpdmweMJSOZJb.j08UFVqFanxXPS2XFDl7Bh4aFxqUrMS', NULL, 'backend/image/default-user.png', NULL, '2022-11-16 09:14:14', NULL, '2022-11-13 06:40:36', '2022-11-16 09:14:14', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(33, 'Razu', 'razu1', 'razu1@gmail.com', NULL, NULL, NULL, '$2y$10$4kOF1Yn7L1VoNm5AScaysu8HVzTEGLZ.HOGOC2aZWxsuEnM5IdFTq', NULL, 'backend/image/default-user.png', NULL, '2022-11-17 08:06:50', NULL, '2022-11-17 06:14:38', '2022-11-17 08:06:50', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(34, 'Hafiz', 'hafiz', 'hafiz@gmail.com', NULL, NULL, NULL, '$2y$10$rynNW453dFrlpANcDvdQ2.i6viozZwpnktlGF1QeduQmeoe7cUXrG', NULL, 'backend/image/default-user.png', NULL, '2022-11-17 14:49:42', NULL, '2022-11-17 14:46:32', '2022-11-17 14:49:42', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(35, 'Amer School', 'amerschool294666', 'ronymia2211@gmail.com', NULL, NULL, NULL, NULL, NULL, 'backend/image/default-user.png', NULL, '2022-11-19 13:33:04', NULL, '2022-11-19 13:32:54', '2022-11-19 13:33:04', 'email', 'google', '115542366643301739002', NULL, 0, 0, 0, NULL, 0),
(36, 'Mokaddes Hosain', 'mkds', 'mr.mokaddes@gmail.com', NULL, NULL, NULL, '$2y$10$cF/0s2.fb6fBNuGNrxbO2uGumOe9RLld8a0dDR3GYbspP6fEG0o3G', NULL, 'backend/image/default-user.png', NULL, '2022-12-03 05:49:34', NULL, '2022-11-28 08:50:58', '2022-12-03 05:49:34', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(37, 'rabin', 'rainn', 'rabin12@gmail.com', NULL, NULL, NULL, '$2y$10$PgUJ.L17yAkEk4uUV.Ssru/dstlQ68fP/mj7F4YvsHLeB0STbLLri', NULL, 'backend/image/default-user.png', NULL, '2022-12-03 12:54:23', NULL, '2022-12-03 12:37:21', '2022-12-03 12:54:23', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0),
(38, 'Mubarak Hossain', 'Mubarak355', 'mubaraktech355@gmail.com', NULL, NULL, NULL, '$2y$10$OYDqDm3HELLAq7/sxhD50.TYkNjQZano9bVc4OJLUZ3jwwNHkJlb2', NULL, 'backend/image/default-user.png', NULL, '2022-12-04 09:41:19', NULL, '2022-12-04 07:50:19', '2022-12-04 09:41:19', 'email', NULL, NULL, NULL, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_device_tokens`
--

CREATE TABLE `user_device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE `user_followers` (
  `id` int(255) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `follower_id` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `seller_id`, `follower_id`, `created_at`, `updated_at`) VALUES
(9, 20, 5, '2022-11-05 13:27:59', '2022-11-05 13:27:59'),
(10, 21, 5, '2022-11-05 13:28:34', '2022-11-05 13:28:34'),
(11, 20, 6, '2022-11-06 07:12:13', '2022-11-06 07:12:13'),
(12, 24, 24, '2022-11-07 12:32:07', '2022-11-07 12:32:07'),
(13, 24, 22, '2022-11-07 12:40:00', '2022-11-07 12:40:00'),
(14, 24, 6, '2022-11-08 08:50:43', '2022-11-08 08:50:43'),
(15, 4, 1, '2022-11-12 05:36:29', '2022-11-12 05:36:29'),
(16, 25, 31, '2022-11-12 11:25:13', '2022-11-12 11:25:13'),
(19, 25, 6, '2022-11-13 01:47:53', '2022-11-13 01:47:53'),
(20, 5, 6, '2022-11-13 01:48:49', '2022-11-13 01:48:49'),
(21, 21, 21, '2022-11-17 04:09:11', '2022-11-17 04:09:11'),
(22, 1, 1, '2022-11-23 06:46:03', '2022-11-23 06:46:03'),
(23, 4, 25, '2022-11-27 08:46:16', '2022-11-27 08:46:16'),
(24, 28, 28, '2022-12-03 09:29:19', '2022-12-03 09:29:19'),
(25, 38, 31, '2022-12-04 08:39:06', '2022-12-04 08:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ad_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `featured_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `badge` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_type` enum('one_time','recurring') NOT NULL DEFAULT 'one_time',
  `expired_date` date DEFAULT NULL,
  `current_plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_restored_plan_benefits` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `user_id`, `ad_limit`, `featured_limit`, `badge`, `created_at`, `updated_at`, `subscription_type`, `expired_date`, `current_plan_id`, `is_restored_plan_benefits`) VALUES
(1, 1, 3, 1, 0, '2022-10-19 06:05:37', '2022-10-19 06:05:37', 'recurring', NULL, NULL, 0),
(2, 2, 3, 1, 0, '2022-10-19 06:58:57', '2022-10-19 06:58:57', 'recurring', NULL, NULL, 0),
(3, 3, 3, 1, 0, '2022-10-19 07:54:33', '2022-10-19 07:54:33', 'recurring', NULL, NULL, 0),
(4, 4, 2, 1, 0, '2022-10-19 12:50:00', '2022-11-19 13:29:36', 'recurring', NULL, NULL, 0),
(5, 5, 2, 1, 0, '2022-10-20 10:30:35', '2022-11-05 06:39:40', 'recurring', NULL, NULL, 0),
(6, 6, 2, 1, 0, '2022-10-22 07:49:20', '2022-11-05 06:39:19', 'recurring', NULL, NULL, 0),
(7, 7, 3, 1, 0, '2022-10-25 11:02:49', '2022-10-25 11:02:49', 'recurring', NULL, NULL, 0),
(8, 13, 3, 1, 0, '2022-10-26 10:30:10', '2022-10-26 10:30:10', 'recurring', NULL, NULL, 0),
(9, 14, 3, 1, 0, '2022-10-29 06:42:26', '2022-10-29 06:42:26', 'recurring', NULL, NULL, 0),
(10, 15, 3, 1, 0, '2022-10-29 07:55:38', '2022-10-29 07:55:38', 'recurring', NULL, NULL, 0),
(11, 17, 3, 1, 0, '2022-10-30 04:45:51', '2022-10-30 04:45:51', 'recurring', NULL, NULL, 0),
(12, 18, 3, 1, 0, '2022-10-30 05:39:55', '2022-10-30 05:39:55', 'recurring', NULL, NULL, 0),
(13, 19, 3, 1, 0, '2022-10-30 11:19:56', '2022-10-30 11:19:56', 'recurring', NULL, NULL, 0),
(14, 20, 2, 1, 0, '2022-10-31 06:08:45', '2022-11-05 06:39:33', 'recurring', NULL, NULL, 0),
(15, 21, 0, 1, 0, '2022-11-05 06:20:54', '2022-11-05 06:38:45', 'recurring', NULL, NULL, 0),
(16, 22, 3, 1, 0, '2022-11-05 06:55:07', '2022-11-05 06:55:07', 'recurring', NULL, NULL, 0),
(17, 23, 3, 1, 0, '2022-11-07 11:18:29', '2022-11-07 11:18:29', 'recurring', NULL, NULL, 0),
(18, 24, 1, 1, 0, '2022-11-07 11:29:33', '2022-11-07 12:30:39', 'recurring', NULL, NULL, 0),
(19, 25, 0, 1, 0, '2022-11-12 09:20:12', '2022-11-12 09:53:03', 'recurring', NULL, NULL, 0),
(20, 27, 3, 1, 0, '2022-11-12 09:23:34', '2022-11-12 09:23:34', 'recurring', NULL, NULL, 0),
(21, 28, 3, 1, 0, '2022-11-12 10:28:32', '2022-11-12 10:28:32', 'recurring', NULL, NULL, 0),
(22, 29, 3, 1, 0, '2022-11-12 10:53:18', '2022-11-12 10:53:18', 'recurring', NULL, NULL, 0),
(23, 31, 3, 1, 0, '2022-11-12 10:56:10', '2022-11-12 10:56:10', 'recurring', NULL, NULL, 0),
(24, 32, 3, 1, 0, '2022-11-13 06:40:36', '2022-11-13 06:40:36', 'recurring', NULL, NULL, 0),
(25, 33, 3, 1, 0, '2022-11-17 06:14:38', '2022-11-17 06:14:38', 'recurring', NULL, NULL, 0),
(26, 34, 3, 1, 0, '2022-11-17 14:46:32', '2022-11-17 14:46:32', 'recurring', NULL, NULL, 0),
(27, 35, 3, 1, 0, '2022-11-19 13:32:54', '2022-11-19 13:32:54', 'recurring', NULL, NULL, 0),
(28, 36, 3, 1, 0, '2022-11-28 08:50:58', '2022-11-28 08:50:58', 'recurring', NULL, NULL, 0),
(29, 37, 3, 1, 0, '2022-12-03 12:37:21', '2022-12-03 12:37:21', 'recurring', NULL, NULL, 0),
(30, 38, 0, 0, 0, '2022-12-04 07:50:19', '2022-12-04 07:50:19', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `ad_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-10-19 07:06:59', '2022-10-19 07:06:59'),
(3, 6, 5, '2022-10-20 10:32:45', '2022-10-20 10:32:45'),
(4, 8, 1, '2022-10-20 11:12:15', '2022-10-20 11:12:15'),
(8, 9, 2, '2022-10-25 12:39:14', '2022-10-25 12:39:14'),
(9, 23, 5, '2022-11-05 07:00:25', '2022-11-05 07:00:25'),
(11, 36, 24, '2022-11-07 12:31:59', '2022-11-07 12:31:59'),
(12, 36, 22, '2022-11-07 12:39:52', '2022-11-07 12:39:52'),
(13, 35, 22, '2022-11-07 12:39:54', '2022-11-07 12:39:54'),
(17, 53, 31, '2022-11-12 11:42:12', '2022-11-12 11:42:12'),
(39, 35, 28, '2022-11-12 12:39:41', '2022-11-12 12:39:41'),
(40, 36, 28, '2022-11-12 12:39:42', '2022-11-12 12:39:42'),
(41, 37, 28, '2022-11-12 12:39:45', '2022-11-12 12:39:45'),
(42, 46, 28, '2022-11-12 12:39:46', '2022-11-12 12:39:46'),
(43, 32, 28, '2022-11-12 12:39:48', '2022-11-12 12:39:48'),
(44, 33, 28, '2022-11-12 12:39:50', '2022-11-12 12:39:50'),
(45, 34, 28, '2022-11-12 12:39:51', '2022-11-12 12:39:51'),
(46, 48, 28, '2022-11-12 12:40:00', '2022-11-12 12:40:00'),
(47, 47, 28, '2022-11-12 12:40:01', '2022-11-12 12:40:01'),
(48, 52, 28, '2022-11-12 12:40:06', '2022-11-12 12:40:06'),
(49, 51, 28, '2022-11-12 12:40:08', '2022-11-12 12:40:08'),
(50, 23, 6, '2022-11-13 01:48:39', '2022-11-13 01:48:39'),
(51, 57, 33, '2022-11-17 06:17:45', '2022-11-17 06:17:45'),
(54, 61, 28, '2022-12-03 09:41:05', '2022-12-03 09:41:05'),
(55, 26, 37, '2022-12-03 12:53:13', '2022-12-03 12:53:13'),
(56, 13, 6, '2022-12-03 14:15:40', '2022-12-03 14:15:40'),
(57, 14, 6, '2022-12-03 14:15:49', '2022-12-03 14:15:49'),
(58, 64, 6, '2022-12-04 03:26:32', '2022-12-04 03:26:32'),
(60, 68, 27, '2022-12-07 05:17:20', '2022-12-07 05:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` int(11) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `amount` float(14,2) NOT NULL DEFAULT 0.00,
  `withdraw_request_date` datetime NOT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL COMMENT '0=request,1=approved',
  `screenshoot` varchar(255) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `seller_id`, `amount`, `withdraw_request_date`, `approved_date`, `status`, `screenshoot`, `payment_by`, `created_at`, `updated_at`) VALUES
(1, 7, 116.15, '2022-10-25 13:44:51', '2022-10-25 13:45:30', '1', 'uploads/slider/1666705530_6357e87a75af6.png', 'Angcon', '2022-10-25 13:44:51', '2022-10-25 13:45:30'),
(2, 29, 1184.00, '2022-11-12 11:44:21', NULL, '0', '', '', '2022-11-12 11:44:21', '2022-11-12 11:44:21'),
(3, 29, 1303.50, '2022-11-12 11:48:46', NULL, '0', '', '', '2022-11-12 11:48:46', '2022-11-12 11:48:46');

--
-- Triggers `withdraw_requests`
--
DELIMITER $$
CREATE TRIGGER `after_withdraw_requests_insert` AFTER INSERT ON `withdraw_requests` FOR EACH ROW begin

	declare var_amount float default 0;
 	select sum(amount) into var_amount from withdraw_requests where seller_id = new.seller_id;

 	update users set withdraw_request_amount = var_amount where id = new.seller_id;
 	

end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_searches`
--
ALTER TABLE `admin_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`),
  ADD KEY `ads_category_id_foreign` (`category_id`),
  ADD KEY `ads_child_category_id_foreign` (`child_category_id`);

--
-- Indexes for table `ads_sizes`
--
ALTER TABLE `ads_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_tags`
--
ALTER TABLE `ads_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_features`
--
ALTER TABLE `ad_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_features_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_custom_field_category_id_foreign` (`category_id`),
  ADD KEY `category_custom_field_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_helps`
--
ALTER TABLE `contact_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`);

--
-- Indexes for table `custom_field_groups`
--
ALTER TABLE `custom_field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`);

--
-- Indexes for table `help_reasons`
--
ALTER TABLE `help_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_purchases`
--
ALTER TABLE `item_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD UNIQUE KEY `languages_icon_unique` (`icon`);

--
-- Indexes for table `measurements_points`
--
ALTER TABLE `measurements_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messengers`
--
ALTER TABLE `messengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_configs`
--
ALTER TABLE `mobile_app_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_sliders`
--
ALTER TABLE `mobile_app_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `module_settings`
--
ALTER TABLE `module_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_label_unique` (`label`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_custom_fields_ad_id_foreign` (`ad_id`),
  ADD KEY `product_custom_fields_custom_field_id_foreign` (`custom_field_id`),
  ADD KEY `product_custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`);

--
-- Indexes for table `recent_view_ads`
--
ALTER TABLE `recent_view_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_report_from_id_foreign` (`report_from_id`),
  ADD KEY `reports_report_to_id_foreign` (`report_to_id`);

--
-- Indexes for table `requested_products`
--
ALTER TABLE `requested_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_guides`
--
ALTER TABLE `setup_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiping_locations`
--
ALTER TABLE `shiping_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_web_unique` (`web`);

--
-- Indexes for table `user_device_tokens`
--
ALTER TABLE `user_device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_device_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_plans_user_id_foreign` (`user_id`),
  ADD KEY `user_plans_current_plan_id_foreign` (`current_plan_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_ad_id_foreign` (`ad_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_searches`
--
ALTER TABLE `admin_searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ads_sizes`
--
ALTER TABLE `ads_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ads_tags`
--
ALTER TABLE `ads_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `ad_features`
--
ALTER TABLE `ad_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_helps`
--
ALTER TABLE `contact_helps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cookies`
--
ALTER TABLE `cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_groups`
--
ALTER TABLE `custom_field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `help_reasons`
--
ALTER TABLE `help_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item_purchases`
--
ALTER TABLE `item_purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `measurements_points`
--
ALTER TABLE `measurements_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messengers`
--
ALTER TABLE `messengers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `mobile_app_configs`
--
ALTER TABLE `mobile_app_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mobile_app_sliders`
--
ALTER TABLE `mobile_app_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_settings`
--
ALTER TABLE `module_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recent_view_ads`
--
ALTER TABLE `recent_view_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=624;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requested_products`
--
ALTER TABLE `requested_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setup_guides`
--
ALTER TABLE `setup_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shiping_locations`
--
ALTER TABLE `shiping_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_device_tokens`
--
ALTER TABLE `user_device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
