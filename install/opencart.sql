-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 09:41 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tt_safira`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 222, 3513, ''),
(2, 2, 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 222, 3516, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_advertise_google_target`
--

DROP TABLE IF EXISTS `oc_advertise_google_target`;
CREATE TABLE IF NOT EXISTS `oc_advertise_google_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'tze0omEWsqgFBC4dMalKJpzFYxeetqh3dl3h5FHQ26LDSKPiRnaLDQbYy4tefnN1nDPZ8VYpbJuAH8Ig6DA6QpuGDOnBj26Ke5GyBH6nNDb41SGiU0dGfF9m0SFIVc493n6l9zmwNTVHxm56ItlwS0k0ptRCLmvNb4sZ0qZZzRDef1dncnyneMh6XnhHvS9bXjLsciBjzFnpPihW0L7pLWrt6Lqwsy5Mj8Vjllb5hchSqtEB93R1BvA9D9zkUnBQ', 1, '2019-01-08 16:46:10', '2019-01-08 16:46:10'),
(2, 'Default', 'gguaUE6OS5OycLI6h5DdRhsYNpvFkw07VIDDvDIRKZEQxpfaINPVtWh3kAmdpfPn81wZMRXN3LToYOs0qD9EBmEmHPj7hTsukx4xkbeRNglkpj3oqIbygriVoOJggG5Rm1DAmOAlZpzFWJG31ZXPIZ0erOyr0k8nPYyKHZqTNcXHwaCycykM0tXJ17SktZQ1D1hZJ0xhEOs9VA9KCQ7Bi0rMoYqWk3oLoqpB66NH3sdnzK58OaNkaa34YO5EfhXa', 1, '2019-01-29 06:25:52', '2019-01-29 06:25:52'),
(3, 'Default', '0HxklT5cADEr89rJ2MY4fmLUehs4ZGxn4L3Z75n6mcwOb53OeevVxHLk2AIwCaFfSaS9YdDiGFQGGZxjeFFA0s3JDGGGfGEv1s1ajwQHad7HzpaGueR8iN3CDccAFBiMa5gUy7F3j8ayih0ih8LybejFWCFLRQO9Xo461jK3tPInvLwuEztm6TlGv5UdYBgd98pCP5Fe0Uoiua6nUDW25h1ldQMcvtgegHgzcUrfNmm5Xsc4kvYGr4HPDCJT8FSp', 1, '2019-02-26 09:23:55', '2019-02-26 09:23:55'),
(4, 'Default', 'JJbwWi3gaHCPPpIChSHCdmmoRbphdLOzcfXQ6aD2Qvxpu1qm379kkLnVfMXZ6GGxidWKsqfnFe1vAl2NCvN0SjKyqD4IB1zg8yktWcTQTKhPTFXWBzCtePyUgzPo9uzRBSR7CpegOR3QlcYT5ti7idNPo3VmheVv7EEi3kQfgrKLlvNNt5jUZj1BJGDeXjTf8szBcycWrhjGXLZVJh4JYB7PFcxQxRZWM4TrX9zHjMg8mi93kZMH0W3RcwsYquNm', 1, '2019-03-09 08:51:11', '2019-03-09 08:51:11'),
(5, 'Default', 'E7mhXEvgHzvIqwlzhbGSmBI83Z9nHebkHOGrViYbo14TxMgKmeksotHAFNqzxAr5COSWjSXRKjhJjzGcsFyWzMZXksVOvtBxDLXSwZFhuyqfEJyGSZvTJEmcwUciAc1FhF6GBSfb3xySb9sqXt0dnhlMG4FtdlbCyPX4Yy4eUYQrmhLypLDvB2iFy9isckS5aPJLXMKTRA4z97RDWEWYRnNFZrlqkRSwIJbrg9MnUE1cQIfl5HBYUObsgQQ9YI1b', 1, '2019-03-22 01:54:09', '2019-03-22 01:54:09'),
(6, 'Default', 'rvIneYSyCtsTqHUXJNPnOuTryE8mPFZI81549F0eiWdhczLCVBeUNrwfgx3pX4WoUAuHXGSN2GX2kuM0XFR1RDqUsUZ3SVMzBsLYkG077XmayG2P0FcFMXWtg4IqGWwpA52dHRbNKjEZoFP7m1wKFLqGZroqFgUKWlnMlaMuDnPidxruyOmp26rfApwLedYTMqU9twiXN8BCVZODjDf6vS5gPkPWprkFHVVQjHuNngh2tPzvg6DQFiSBtnkfNcvR', 1, '2019-05-03 01:37:52', '2019-05-03 01:37:52'),
(7, 'Default', 'ldlfaz3njNbV3oSJ9nlLRJcugF5TL5zjv2GtBXDWQGZs9Wh8j4Kgnkg9DlDrc0MJCjbOoaVs439lCZDVCQoi1CLika97S7BBnacPOPwORH61pZKOWf2gnzfNQOyXVKoUNRGFTQA7qtNvqHDT8HifH9uIG0JPcIRkRDQYCB2RZYkx7kxXReUx1Ju28iOKRVBaARREaaBFs8dsvlFODXNemuh3mArCdbE6frgVxWbdDbyCOPBDEYHrTZTSGa8X51C1', 1, '2020-01-22 02:18:35', '2020-01-22 02:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, '0a1b20ee0113172d7dccfc9ffd', '127.0.0.1', '2019-01-23 15:49:06', '2019-01-23 15:49:06'),
(2, 3, '4301416b277eaab80a21ea1339', '127.0.0.1', '2019-03-05 09:08:12', '2019-03-05 09:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(11, 6, 'test 8'),
(10, 6, 'test 7'),
(9, 6, 'test 6'),
(8, 6, 'test 5'),
(7, 6, 'test 4'),
(6, 6, 'test 3'),
(5, 6, 'test 2'),
(4, 6, 'test 1'),
(2, 6, 'No. of Cores'),
(1, 6, 'Description'),
(3, 6, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(6, 6, 'Processor'),
(5, 6, 'Motherboard'),
(4, 6, 'Technical'),
(3, 6, 'Memory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'BrandSlider', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(113, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(114, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(124, 7, 3, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(127, 7, 4, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(128, 6, 4, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(188, 8, 5, 'br5', '#', 'catalog/brandslider/br1.png', 0),
(187, 8, 5, 'br4', '#', 'catalog/brandslider/br2.png', 0),
(138, 7, 4, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(186, 8, 5, 'br3', '#', 'catalog/brandslider/br3.png', 0),
(185, 8, 5, 'br2', '#', 'catalog/brandslider/br4.png', 0),
(184, 8, 5, 'br1', '#', 'catalog/brandslider/br5.png', 0),
(157, 7, 5, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(158, 6, 5, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(159, 7, 5, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(183, 8, 1, 'br7', '#', 'catalog/brandslider/br4.jpg', 0),
(182, 8, 1, 'br6', '#', 'catalog/brandslider/br2.jpg', 0),
(181, 8, 1, 'br5', '#', 'catalog/brandslider/br5.jpg', 0),
(180, 8, 1, 'br4', '#', 'catalog/brandslider/br4.jpg', 0),
(179, 8, 1, 'br3', '#', 'catalog/brandslider/br3.jpg', 0),
(178, 8, 1, 'br2', '#', 'catalog/brandslider/br2.jpg', 0),
(177, 8, 1, 'br1', '#', 'catalog/brandslider/br1.jpg', 0),
(189, 7, 6, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(190, 6, 6, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(191, 7, 6, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(192, 8, 6, 'br7', '#', 'catalog/brandslider/br4.jpg', 0),
(193, 8, 6, 'br6', '#', 'catalog/brandslider/br2.jpg', 0),
(194, 8, 6, 'br5', '#', 'catalog/brandslider/br5.jpg', 0),
(195, 8, 6, 'br4', '#', 'catalog/brandslider/br4.jpg', 0),
(196, 8, 6, 'br3', '#', 'catalog/brandslider/br3.jpg', 0),
(197, 8, 6, 'br2', '#', 'catalog/brandslider/br2.jpg', 0),
(198, 8, 6, 'br1', '#', 'catalog/brandslider/br1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(6, 0, 1, '24ddd23fe8860eb55c8da71caa', 116, 0, '[]', 2, '2019-05-10 16:41:14'),
(7, 0, 1, '24ddd23fe8860eb55c8da71caa', 44, 0, '[]', 1, '2019-05-10 16:59:49'),
(8, 0, 1, '24ddd23fe8860eb55c8da71caa', 40, 0, '[]', 1, '2019-05-15 10:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  `alternative_image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `secondary_image`, `alternative_image`, `is_featured`) VALUES
(20, 'catalog/PopularCate/popular7.jpg', 18, 1, 1, 1, 1, '2009-01-05 21:49:43', '2019-05-22 15:48:01', 'catalog/PopularCate/popular7.jpg', '', 0),
(18, 'catalog/PopularCate/popular1.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2019-05-28 08:49:05', 'catalog/f-cate/fruits.jpg', '', 1),
(30, '', 0, 1, 0, 1, 1, '2009-02-02 13:11:59', '2019-05-06 09:49:05', 'catalog/f-cate/bakery.jpg', '', 1),
(32, '', 0, 1, 0, 1, 1, '2009-02-03 14:17:34', '2019-05-06 09:46:46', 'catalog/f-cate/food.jpg', '', 1),
(79, '', 0, 1, 1, 0, 1, '2018-04-26 21:42:20', '2019-05-06 09:50:01', 'catalog/f-cate/juice.jpg', '', 1),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2019-05-22 15:45:03', '', '', 0),
(69, 'catalog/PopularCate/popular4.jpg', 0, 1, 1, 0, 1, '2018-04-26 21:31:42', '2019-05-06 09:48:09', 'catalog/f-cate/crackers.jpg', '', 1),
(60, 'catalog/PopularCate/popular3.jpg', 0, 1, 1, 0, 1, '2018-04-26 21:08:27', '2019-05-06 09:45:23', 'catalog/f-cate/fresh.jpg', '', 1),
(80, '', 0, 1, 1, 0, 1, '2018-04-27 15:38:39', '2019-05-06 09:46:20', 'catalog/f-cate/dairy.jpg', '', 1),
(95, '', 46, 0, 1, 0, 1, '2018-05-24 14:56:08', '2019-05-22 15:45:13', '', '', 0),
(211, '', 80, 0, 1, 0, 1, '2019-03-18 10:28:53', '2019-05-22 15:44:19', NULL, NULL, 0),
(212, '', 80, 0, 1, 0, 1, '2019-03-18 10:29:17', '2019-05-22 15:44:31', NULL, NULL, 0),
(213, '', 80, 0, 1, 0, 1, '2019-03-18 10:30:06', '2019-05-22 15:44:41', NULL, NULL, 0),
(214, '', 80, 0, 1, 0, 1, '2019-03-18 10:30:37', '2019-05-22 15:44:52', NULL, NULL, 0),
(215, '', 32, 0, 1, 0, 1, '2019-03-18 10:35:45', '2019-05-22 15:41:48', NULL, NULL, 0),
(216, '', 32, 0, 1, 0, 1, '2019-03-18 10:36:25', '2019-05-22 15:41:38', NULL, NULL, 0),
(217, '', 32, 0, 1, 0, 1, '2019-03-18 10:37:04', '2019-05-22 15:42:05', NULL, NULL, 0),
(218, '', 32, 0, 1, 0, 1, '2019-03-18 10:37:41', '2019-05-22 15:41:30', NULL, NULL, 0),
(248, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2019-04-01 09:12:15', '2019-05-06 09:53:14', 'catalog/f-cate/knives.jpg', '', 1),
(346, '', 0, 1, 1, 0, 1, '2019-05-06 10:48:02', '2019-05-06 11:06:33', NULL, NULL, 0),
(347, '', 0, 1, 1, 0, 1, '2019-05-06 11:08:52', '2019-05-06 11:08:52', NULL, NULL, 0),
(348, '', 0, 1, 1, 0, 1, '2019-05-06 11:31:43', '2019-05-06 13:15:29', NULL, NULL, 0),
(303, '', 46, 0, 1, 0, 1, '2019-04-06 09:58:39', '2019-05-22 15:45:40', NULL, NULL, 0),
(304, '', 46, 0, 1, 0, 1, '2019-04-06 09:59:06', '2019-05-22 15:45:48', NULL, NULL, 0),
(305, '', 46, 0, 1, 0, 1, '2019-04-06 09:59:25', '2019-05-22 15:45:57', NULL, NULL, 0),
(306, '', 46, 0, 1, 0, 1, '2019-04-06 09:59:45', '2019-05-22 15:46:13', NULL, NULL, 0),
(307, '', 46, 0, 1, 0, 1, '2019-04-06 10:02:51', '2019-05-22 15:47:12', NULL, NULL, 0),
(309, '', 46, 0, 1, 0, 1, '2019-04-06 10:05:30', '2019-05-22 15:45:21', NULL, NULL, 0),
(310, '', 46, 0, 1, 0, 1, '2019-04-06 10:05:56', '2019-05-22 15:45:29', NULL, NULL, 0),
(311, '', 20, 0, 1, 0, 1, '2019-04-06 10:08:50', '2019-05-22 15:49:41', NULL, NULL, 0),
(312, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:10', '2019-05-22 15:49:51', NULL, NULL, 0),
(313, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:27', '2019-05-22 15:50:19', NULL, NULL, 0),
(314, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:44', '2019-05-22 15:50:51', NULL, NULL, 0),
(315, '', 20, 0, 1, 0, 1, '2019-04-06 10:10:02', '2019-05-22 15:51:01', NULL, NULL, 0),
(316, '', 20, 0, 1, 0, 1, '2019-04-06 10:10:19', '2019-05-22 15:51:12', NULL, NULL, 0),
(317, '', 20, 0, 1, 0, 1, '2019-04-06 10:10:36', '2019-05-22 15:51:19', NULL, NULL, 0),
(349, '', 0, 1, 1, 0, 1, '2019-05-28 08:54:19', '2019-05-28 08:54:19', NULL, NULL, 0),
(319, '', 20, 0, 1, 0, 1, '2019-04-06 10:18:14', '2019-05-22 15:49:30', NULL, NULL, 0),
(320, '', 60, 0, 1, 0, 1, '2019-04-06 10:33:43', '2019-05-21 10:00:39', NULL, NULL, 0),
(321, '', 60, 0, 1, 0, 1, '2019-04-06 10:34:17', '2019-05-21 10:03:20', NULL, NULL, 0),
(322, '', 320, 0, 1, 0, 1, '2019-04-06 10:36:35', '2019-05-21 10:01:12', NULL, NULL, 0),
(323, '', 320, 0, 1, 0, 1, '2019-04-06 10:37:01', '2019-05-21 10:00:50', NULL, NULL, 0),
(324, '', 320, 0, 1, 0, 1, '2019-04-06 10:39:23', '2019-05-21 10:01:01', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(218, 6, 'Ceiling Lamps', '', 'Ceiling Lamps', '', ''),
(217, 6, 'Wall Lamps', '', 'Wall Lamps', '', ''),
(349, 6, 'Fast food', '', 'Fast food', '', ''),
(95, 6, 'Avocado', '', 'Avocado', '', ''),
(211, 6, 'Bookshelves', '', 'Bookshelves', '', ''),
(212, 6, 'Cabinets', '', 'Cabinets', '', ''),
(213, 6, 'Sideboards', '', 'Sideboards', '', ''),
(214, 6, 'TV Cabinets', '', 'TV Cabinets', '', ''),
(215, 6, 'Table Lamps', '', 'Table Lamps', '', ''),
(216, 6, 'Floor Lamps', '', 'Floor Lamps', '', ''),
(18, 1, 'Vegetables', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Vegetables', '', ''),
(60, 6, 'Fruits', '', 'Fruits', '', ''),
(46, 6, 'Fruits', '', 'Fruits', '', ''),
(80, 6, 'Salads', '', 'Salads', '', ''),
(69, 6, 'Fresh Meat', '&lt;p&gt;Headphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. &lt;/p&gt;', 'Fresh Meat', '', ''),
(30, 6, 'Milk', '', 'Milk', '', ''),
(79, 6, 'Oil &amp; Vinegars ', '', 'Oil &amp; Vinegars ', '', ''),
(346, 1, 'Butter &amp; Eggs', '', 'Butter &amp; Eggs', '', ''),
(347, 1, 'Bread', '', 'Bread', '', ''),
(348, 1, 'Jam &amp; Honey', '', 'Jam &amp; Honey', '', ''),
(32, 1, 'Fish &amp; Seafood', '', 'Fish &amp; Seafood', '', ''),
(20, 1, 'Vegetables', '&lt;p&gt;A computer monitor is an output device which displays information in pictorial form. A monitor usually comprises the display device, circuitry, casing, and power supply. The display device in modern monitors is typically a thin film transistor liquid crystal display (TFT-LCD) with LED backlighting having replaced cold-cathode fluorescent lamp (CCFL) backlighting. Older monitors used a cathode ray tube (CRT). Monitors are connected to the computer via VGA, Digital Visual Interface (DVI), HDMI, DisplayPort, Thunderbolt, low-voltage differential signaling (LVDS) or other proprietary connectors and signals.&lt;/p&gt;', 'Vegetables', 'Example of category description', ''),
(346, 6, 'Butter &amp; Eggs', '', 'Butter &amp; Eggs', '', ''),
(347, 6, 'Bread', '', 'Bread', '', ''),
(348, 6, 'Jam &amp; Honey', '', 'Jam &amp; Honey', '', ''),
(32, 6, 'Fish &amp; Seafood', '', 'Fish &amp; Seafood', '', ''),
(20, 6, 'Vegetables', '&lt;p&gt;A computer monitor is an output device which displays information in pictorial form. A monitor usually comprises the display device, circuitry, casing, and power supply. The display device in modern monitors is typically a thin film transistor liquid crystal display (TFT-LCD) with LED backlighting having replaced cold-cathode fluorescent lamp (CCFL) backlighting. Older monitors used a cathode ray tube (CRT). Monitors are connected to the computer via VGA, Digital Visual Interface (DVI), HDMI, DisplayPort, Thunderbolt, low-voltage differential signaling (LVDS) or other proprietary connectors and signals.&lt;/p&gt;', 'Vegetables', 'Example of category description', ''),
(79, 1, 'Oil &amp; Vinegars ', '', 'Oil &amp; Vinegars ', '', ''),
(30, 1, 'Milk', '', 'Milk', '', ''),
(60, 1, 'Fruits', '', 'Fruits', '', ''),
(46, 1, 'Fruits', '', 'Fruits', '', ''),
(80, 1, 'Salads', '', 'Salads', '', ''),
(69, 1, 'Fresh Meat', '&lt;p&gt;Headphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. &lt;/p&gt;', 'Fresh Meat', '', ''),
(349, 1, 'Fast food', '', 'Fast food', '', ''),
(95, 1, 'Avocado', '', 'Avocado', '', ''),
(211, 1, 'Bookshelves', '', 'Bookshelves', '', ''),
(212, 1, 'Cabinets', '', 'Cabinets', '', ''),
(213, 1, 'Sideboards', '', 'Sideboards', '', ''),
(214, 1, 'TV Cabinets', '', 'TV Cabinets', '', ''),
(215, 1, 'Table Lamps', '', 'Table Lamps', '', ''),
(216, 1, 'Floor Lamps', '', 'Floor Lamps', '', ''),
(217, 1, 'Wall Lamps', '', 'Wall Lamps', '', ''),
(218, 1, 'Ceiling Lamps', '', 'Ceiling Lamps', '', ''),
(248, 1, 'Frozen Food', '', 'Frozen Food', '', ''),
(303, 1, 'Coconut*', '', 'Coconut*', '', ''),
(304, 1, 'Coffee', '', 'Coffee', '', ''),
(305, 1, 'Cucumber', '', 'Cucumber', '', ''),
(306, 1, 'Eggplant', '', 'Eggplant', '', ''),
(307, 1, 'Squash', '', 'Squash', '', ''),
(309, 1, 'Banana', '', 'Banana', '', ''),
(310, 1, 'Blueberries', '', 'Blueberries', '', ''),
(311, 1, 'Beets', '', 'Beets', '', ''),
(312, 1, 'Cabbage', '', 'Cabbage', '', ''),
(313, 1, 'Carrots', '', 'Carrots', '', ''),
(314, 1, 'Kale', '', 'Kale', '', ''),
(315, 1, 'Onions', '', 'Onions', '', ''),
(316, 1, 'Potatoes', '', 'Potatoes', '', ''),
(317, 1, 'Spinach', '', 'Spinach', '', ''),
(319, 1, 'Arugula', '', 'Arugula', '', ''),
(320, 1, 'Beef', '', 'Beef', '', ''),
(321, 1, 'Pork', '', 'Pork', '', ''),
(322, 1, 'With potato', '', 'With potato', '', ''),
(323, 1, 'With apple', '', 'With apple', '', ''),
(324, 1, 'With peas', '', 'With peas', '', ''),
(18, 6, 'Vegetables', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Vegetables', '', ''),
(248, 6, 'Frozen Food', '', 'Frozen Food', '', ''),
(303, 6, 'Coconut*', '', 'Coconut*', '', ''),
(304, 6, 'Coffee', '', 'Coffee', '', ''),
(305, 6, 'Cucumber', '', 'Cucumber', '', ''),
(306, 6, 'Eggplant', '', 'Eggplant', '', ''),
(307, 6, 'Squash', '', 'Squash', '', ''),
(309, 6, 'Banana', '', 'Banana', '', ''),
(310, 6, 'Blueberries', '', 'Blueberries', '', ''),
(311, 6, 'Beets', '', 'Beets', '', ''),
(312, 6, 'Cabbage', '', 'Cabbage', '', ''),
(313, 6, 'Carrots', '', 'Carrots', '', ''),
(314, 6, 'Kale', '', 'Kale', '', ''),
(315, 6, 'Onions', '', 'Onions', '', ''),
(316, 6, 'Potatoes', '', 'Potatoes', '', ''),
(317, 6, 'Spinach', '', 'Spinach', '', ''),
(319, 6, 'Arugula', '', 'Arugula', '', ''),
(320, 6, 'Beef', '', 'Beef', '', ''),
(321, 6, 'Pork', '', 'Pork', '', ''),
(322, 6, 'With potato', '', 'With potato', '', ''),
(323, 6, 'With apple', '', 'With apple', '', ''),
(324, 6, 'With peas', '', 'With peas', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(20, 13),
(20, 14),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(46, 8),
(46, 9),
(46, 10),
(46, 11),
(46, 12),
(46, 13),
(46, 14),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(60, 7),
(60, 8),
(60, 9),
(60, 10),
(60, 11),
(60, 12),
(60, 13),
(60, 14),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(69, 6),
(69, 7),
(69, 8),
(69, 9),
(69, 10),
(69, 11),
(69, 12),
(69, 13),
(69, 14),
(80, 1),
(80, 2),
(80, 3),
(80, 4),
(80, 5),
(80, 6),
(80, 7),
(80, 8),
(80, 9),
(80, 10),
(80, 11),
(80, 12),
(80, 13),
(80, 14),
(248, 1),
(248, 2),
(248, 3),
(248, 4),
(248, 7),
(248, 8),
(248, 11),
(248, 13),
(248, 21),
(346, 1),
(346, 2),
(346, 3),
(346, 4),
(346, 5),
(346, 6),
(346, 7),
(346, 8),
(346, 9),
(346, 10),
(346, 11),
(346, 12),
(346, 13),
(346, 14),
(346, 15),
(346, 16),
(346, 17),
(346, 18),
(346, 19),
(346, 20),
(346, 21),
(347, 1),
(347, 2),
(347, 3),
(347, 4),
(347, 5),
(347, 6),
(347, 7),
(347, 8),
(347, 9),
(347, 10),
(347, 11),
(347, 12),
(347, 13),
(347, 14),
(347, 15),
(347, 16),
(347, 17),
(347, 18),
(347, 19),
(347, 20),
(347, 21),
(348, 1),
(348, 2),
(348, 3),
(348, 4),
(348, 5),
(348, 6),
(348, 7),
(348, 8),
(348, 9),
(348, 10),
(348, 11),
(348, 12),
(348, 13),
(348, 14),
(348, 15),
(348, 16),
(348, 17),
(348, 18),
(348, 19),
(348, 20),
(348, 21);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(20, 18, 0),
(30, 30, 0),
(32, 32, 0),
(60, 60, 0),
(20, 20, 1),
(18, 18, 0),
(46, 46, 1),
(46, 18, 0),
(79, 79, 0),
(69, 69, 0),
(80, 80, 0),
(95, 18, 0),
(95, 46, 1),
(95, 95, 2),
(211, 211, 1),
(211, 80, 0),
(212, 212, 1),
(212, 80, 0),
(213, 213, 1),
(213, 80, 0),
(214, 214, 1),
(214, 80, 0),
(215, 215, 1),
(215, 32, 0),
(216, 216, 1),
(216, 32, 0),
(217, 217, 1),
(217, 32, 0),
(218, 218, 1),
(218, 32, 0),
(248, 248, 0),
(346, 346, 0),
(347, 347, 0),
(348, 348, 0),
(303, 46, 1),
(303, 18, 0),
(303, 303, 2),
(304, 46, 1),
(304, 18, 0),
(304, 304, 2),
(305, 46, 1),
(305, 18, 0),
(305, 305, 2),
(306, 46, 1),
(306, 18, 0),
(306, 306, 2),
(307, 46, 1),
(307, 18, 0),
(307, 307, 2),
(309, 46, 1),
(309, 18, 0),
(309, 309, 2),
(310, 46, 1),
(310, 18, 0),
(310, 310, 2),
(311, 20, 1),
(311, 18, 0),
(311, 311, 2),
(312, 20, 1),
(312, 18, 0),
(312, 312, 2),
(313, 20, 1),
(313, 18, 0),
(313, 313, 2),
(314, 20, 1),
(314, 18, 0),
(314, 314, 2),
(315, 20, 1),
(315, 18, 0),
(315, 315, 2),
(316, 20, 1),
(316, 18, 0),
(316, 316, 2),
(317, 20, 1),
(317, 18, 0),
(317, 317, 2),
(349, 349, 0),
(319, 20, 1),
(319, 18, 0),
(319, 319, 2),
(320, 60, 0),
(320, 320, 1),
(321, 60, 0),
(321, 321, 1),
(322, 320, 1),
(322, 60, 0),
(322, 322, 2),
(323, 320, 1),
(323, 60, 0),
(323, 323, 2),
(324, 320, 1),
(324, 60, 0),
(324, 324, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_google_product_category`
--

DROP TABLE IF EXISTS `oc_category_to_google_product_category`;
CREATE TABLE IF NOT EXISTS `oc_category_to_google_product_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(69, 0, 0),
(30, 3, 0),
(32, 0, 0),
(60, 0, 0),
(18, 0, 0),
(46, 2, 0),
(20, 1, 0),
(79, 2, 0),
(80, 0, 0),
(95, 2, 0),
(46, 0, 0),
(18, 3, 0),
(60, 1, 0),
(79, 3, 0),
(69, 1, 0),
(20, 3, 0),
(95, 0, 0),
(32, 1, 0),
(80, 1, 0),
(30, 2, 0),
(95, 3, 0),
(95, 1, 0),
(46, 3, 0),
(46, 1, 0),
(18, 1, 0),
(18, 2, 0),
(20, 2, 0),
(20, 0, 0),
(69, 2, 0),
(69, 3, 0),
(60, 2, 0),
(60, 3, 0),
(79, 1, 0),
(79, 0, 0),
(32, 2, 0),
(32, 3, 0),
(80, 2, 0),
(80, 3, 0),
(30, 1, 0),
(30, 0, 0),
(211, 1, 0),
(211, 3, 0),
(211, 2, 0),
(211, 0, 0),
(212, 1, 0),
(212, 3, 0),
(212, 2, 0),
(212, 0, 0),
(213, 1, 0),
(213, 3, 0),
(213, 2, 0),
(213, 0, 0),
(214, 1, 0),
(214, 3, 0),
(214, 2, 0),
(214, 0, 0),
(215, 1, 0),
(215, 3, 0),
(215, 2, 0),
(215, 0, 0),
(216, 1, 0),
(216, 3, 0),
(216, 2, 0),
(216, 0, 0),
(217, 1, 0),
(217, 3, 0),
(217, 2, 0),
(217, 0, 0),
(218, 1, 0),
(218, 3, 0),
(218, 2, 0),
(218, 0, 0),
(248, 3, 0),
(248, 2, 0),
(248, 1, 0),
(248, 0, 0),
(346, 0, 0),
(346, 1, 0),
(346, 2, 0),
(346, 3, 0),
(347, 3, 0),
(347, 2, 0),
(347, 1, 0),
(347, 0, 0),
(348, 0, 0),
(348, 1, 0),
(348, 2, 0),
(348, 3, 0),
(303, 1, 0),
(303, 3, 0),
(303, 2, 0),
(303, 0, 0),
(304, 1, 0),
(304, 3, 0),
(304, 2, 0),
(304, 0, 0),
(305, 1, 0),
(305, 3, 0),
(305, 2, 0),
(305, 0, 0),
(306, 1, 0),
(306, 3, 0),
(306, 2, 0),
(306, 0, 0),
(307, 1, 0),
(307, 3, 0),
(307, 2, 0),
(307, 0, 0),
(309, 1, 0),
(309, 3, 0),
(309, 2, 0),
(309, 0, 0),
(310, 1, 0),
(310, 3, 0),
(310, 2, 0),
(310, 0, 0),
(311, 1, 0),
(311, 3, 0),
(311, 2, 0),
(311, 0, 0),
(312, 1, 0),
(312, 3, 0),
(312, 2, 0),
(312, 0, 0),
(313, 1, 0),
(313, 3, 0),
(313, 2, 0),
(313, 0, 0),
(314, 1, 0),
(314, 3, 0),
(314, 2, 0),
(314, 0, 0),
(315, 1, 0),
(315, 3, 0),
(315, 2, 0),
(315, 0, 0),
(316, 1, 0),
(316, 3, 0),
(316, 2, 0),
(316, 0, 0),
(317, 1, 0),
(317, 3, 0),
(317, 2, 0),
(317, 0, 0),
(349, 2, 0),
(349, 1, 0),
(349, 3, 0),
(349, 0, 0),
(319, 1, 0),
(319, 3, 0),
(319, 2, 0),
(319, 0, 0),
(320, 0, 0),
(320, 2, 0),
(320, 3, 0),
(320, 1, 0),
(321, 0, 0),
(321, 2, 0),
(321, 3, 0),
(321, 1, 0),
(322, 1, 0),
(322, 3, 0),
(322, 2, 0),
(322, 0, 0),
(323, 1, 0),
(323, 3, 0),
(323, 2, 0),
(323, 0, 0),
(324, 1, 0),
(324, 3, 0),
(324, 2, 0),
(324, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(18, 1),
(18, 2),
(18, 3),
(20, 0),
(20, 1),
(20, 2),
(20, 3),
(30, 0),
(30, 1),
(30, 2),
(30, 3),
(32, 0),
(32, 1),
(32, 2),
(32, 3),
(46, 0),
(46, 1),
(46, 2),
(46, 3),
(60, 0),
(60, 1),
(60, 2),
(60, 3),
(69, 0),
(69, 1),
(69, 2),
(69, 3),
(79, 0),
(79, 1),
(79, 2),
(79, 3),
(80, 0),
(80, 1),
(80, 2),
(80, 3),
(95, 0),
(95, 1),
(95, 2),
(95, 3),
(211, 0),
(211, 1),
(211, 2),
(211, 3),
(212, 0),
(212, 1),
(212, 2),
(212, 3),
(213, 0),
(213, 1),
(213, 2),
(213, 3),
(214, 0),
(214, 1),
(214, 2),
(214, 3),
(215, 0),
(215, 1),
(215, 2),
(215, 3),
(216, 0),
(216, 1),
(216, 2),
(216, 3),
(217, 0),
(217, 1),
(217, 2),
(217, 3),
(218, 0),
(218, 1),
(218, 2),
(218, 3),
(248, 0),
(248, 1),
(248, 2),
(248, 3),
(303, 0),
(303, 1),
(303, 2),
(303, 3),
(304, 0),
(304, 1),
(304, 2),
(304, 3),
(305, 0),
(305, 1),
(305, 2),
(305, 3),
(306, 0),
(306, 1),
(306, 2),
(306, 3),
(307, 0),
(307, 1),
(307, 2),
(307, 3),
(309, 0),
(309, 1),
(309, 2),
(309, 3),
(310, 0),
(310, 1),
(310, 2),
(310, 3),
(311, 0),
(311, 1),
(311, 2),
(311, 3),
(312, 0),
(312, 1),
(312, 2),
(312, 3),
(313, 0),
(313, 1),
(313, 2),
(313, 3),
(314, 0),
(314, 1),
(314, 2),
(314, 3),
(315, 0),
(315, 1),
(315, 2),
(315, 3),
(316, 0),
(316, 1),
(316, 2),
(316, 3),
(317, 0),
(317, 1),
(317, 2),
(317, 3),
(319, 0),
(319, 1),
(319, 2),
(319, 3),
(320, 0),
(320, 1),
(320, 2),
(320, 3),
(321, 0),
(321, 1),
(321, 2),
(321, 3),
(322, 0),
(322, 1),
(322, 2),
(322, 3),
(323, 0),
(323, 1),
(323, 2),
(323, 3),
(324, 0),
(324, 1),
(324, 2),
(324, 3),
(346, 0),
(346, 1),
(346, 2),
(346, 3),
(347, 0),
(347, 1),
(347, 2),
(347, 3),
(348, 0),
(348, 1),
(348, 2),
(348, 3),
(349, 0),
(349, 1),
(349, 2),
(349, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.75136000, 1, '2019-02-28 08:40:09'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-03-05 03:18:59'),
(3, 'Euro', 'EUR', '', '€', '2', 0.87932000, 1, '2019-02-28 08:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '16fd984083ffd99e4b9f7b51ef34d295d99d0f35', 'rRBX0LySM', NULL, NULL, 0, 1, '', '127.0.0.1', 1, 0, '', '', '2019-01-22 14:42:55'),
(2, 1, 0, 1, 'plaza', 'themes', 'demo1@plazathemes.com', '1234567890', '', '4fa98021bf7414a7b7dfebdbb27dff35c10d04d7', 'YDS1QG0Q5', NULL, NULL, 0, 2, '', '127.0.0.1', 1, 0, '', '', '2019-05-03 12:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE IF NOT EXISTS `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 6, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2019-01-22 14:43:54'),
(2, 2, '127.0.0.1', '2019-05-03 13:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, '', '127.0.0.1', 5, '2019-01-21 09:15:15', '2019-03-01 15:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE IF NOT EXISTS `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'ptcontrolpanel'),
(44, 'module', 'ptlayoutbuilder'),
(45, 'module', 'ptmenu'),
(62, 'module', 'ptstaticblock'),
(47, 'module', 'ptslider'),
(48, 'module', 'ptblog'),
(50, 'module', 'ptnewsletter'),
(51, 'module', 'ptajaxlogin'),
(52, 'module', 'ptsearch'),
(63, 'module', 'ptproducts'),
(56, 'module', 'html'),
(57, 'module', 'pttweet'),
(59, 'module', 'pttestimonial');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(33, 0, 'ptcontrolpanel.ocmod.zip', '2019-03-20 10:39:14'),
(9, 0, 'ptsearch.ocmod.zip', '2019-01-09 19:15:31'),
(32, 0, 'ptthemecustom.ocmod.zip', '2019-03-15 09:09:33'),
(34, 0, 'ptthemecustom.ocmod.zip', '2019-05-09 16:19:28'),
(35, 0, 'ptthemecustom.ocmod.zip', '2019-05-09 16:48:55'),
(36, 0, 'ptthemecustom.ocmod.zip', '2019-05-10 08:53:05'),
(37, 0, 'ptthemecustom.ocmod.zip', '2019-05-10 08:54:28'),
(38, 0, 'ptthemecustom.ocmod.zip', '2019-05-13 14:39:59'),
(39, 0, 'ptthemecustom.ocmod.zip', '2019-05-14 11:21:55'),
(40, 0, 'ptthemecustom.ocmod.zip', '2019-05-14 11:23:22'),
(41, 0, 'ptthemecustom.ocmod.zip', '2019-05-14 16:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(14, 2, 0),
(13, 2, 0),
(12, 2, 0),
(11, 2, 0),
(10, 2, 0),
(9, 2, 0),
(8, 2, 0),
(7, 2, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, 'Apple'),
(2, 1, 1, 'Canon'),
(3, 1, 1, 'Hewlett-Packard'),
(4, 1, 1, 'HTC'),
(5, 1, 1, 'Palm'),
(6, 1, 1, 'Sony'),
(13, 1, 2, 'Blue'),
(12, 1, 2, 'Violet'),
(11, 1, 2, 'Red'),
(10, 1, 2, 'Green'),
(9, 1, 2, 'Gray'),
(8, 1, 2, 'White'),
(7, 1, 2, 'Black'),
(15, 1, 3, 'XS'),
(16, 1, 3, 'S'),
(17, 1, 3, 'L'),
(18, 1, 3, 'M'),
(19, 1, 3, 'XL'),
(20, 1, 3, 'XXL'),
(14, 1, 2, 'Orange'),
(21, 1, 2, 'Yellow'),
(18, 6, 3, 'M'),
(17, 6, 3, 'L'),
(16, 6, 3, 'S'),
(15, 6, 3, 'XS'),
(7, 6, 2, 'Black'),
(8, 6, 2, 'White'),
(9, 6, 2, 'Gray'),
(10, 6, 2, 'Green'),
(11, 6, 2, 'Red'),
(12, 6, 2, 'Violet'),
(13, 6, 2, 'Blue'),
(6, 6, 1, 'Sony'),
(5, 6, 1, 'Palm'),
(4, 6, 1, 'HTC'),
(3, 6, 1, 'Hewlett-Packard'),
(2, 6, 1, 'Canon'),
(1, 6, 1, 'Apple'),
(19, 6, 3, 'XL'),
(20, 6, 3, 'XXL'),
(14, 6, 2, 'Orange'),
(21, 6, 2, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Manufacturers'),
(2, 1, 'Color'),
(3, 1, 'Size'),
(2, 6, 'Color'),
(1, 6, 'Manufacturers'),
(3, 6, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(3, 6, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(5, 6, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(4, 6, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(6, 6, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(6, 0, 0),
(6, 1, 0),
(6, 2, 0),
(6, 3, 0),
(3, 0, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(5, 0, 0),
(5, 1, 0),
(5, 2, 0),
(5, 3, 0),
(4, 6, 0),
(4, 7, 0),
(6, 6, 0),
(6, 7, 0),
(3, 6, 0),
(3, 7, 0),
(5, 6, 0),
(5, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(3, 6),
(3, 7),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(4, 6),
(4, 7),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 6),
(5, 7),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(6, 'Germany', 'de-de', 'de', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Store 1 - Home Page Layout'),
(2, 'Store 1 - Product Page Layout'),
(3, 'Store 1 - Category Page Layout'),
(4, 'Store 1 - Default Page Layout'),
(6, 'Store 1 - Account Page Layout'),
(17, 'Store 2 - Blog Post Page Layout'),
(15, 'Store 1 - Mobile Layout'),
(16, 'Store 2 - Account Page Layout'),
(14, 'Store 1 - Blog Post Page Layout'),
(18, 'Store 2 - Home Page Layout'),
(19, 'Store 2 - Mobile Layout'),
(20, 'Store 2 - Product Page Layout'),
(21, 'Store 2 - Category Page Layout'),
(22, 'Store 2 - Default Page Layout'),
(23, 'Store 3 - Account Page Layout'),
(24, 'Store 3 - Blog Post Page Layout'),
(25, 'Store 3 - Category Page Layout'),
(26, 'Store 3 - Default Page Layout'),
(27, 'Store 3 - Home Page Layout'),
(28, 'Store 3 - Mobile Layout'),
(29, 'Store 3 - Product Page Layout'),
(30, 'Store 4 - Account Page Layout'),
(31, 'Store 4 - Blog Post Page Layout'),
(32, 'Store 4 - Category Page Layout'),
(33, 'Store 4 - Default Page Layout'),
(34, 'Store 4 - Home Page Layout'),
(35, 'Store 4 - Mobile Layout'),
(36, 'Store 4 - Product Page Layout');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1942 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1729, 4, 'ptnewsletter.42', 'position5', 0),
(1722, 3, 'ptstaticblock.175', 'position4', 0),
(1723, 3, 'ptnewsletter.42', 'position5', 0),
(1724, 3, 'ptstaticblock.174', 'position6', 0),
(1760, 16, 'ptstaticblock.174', 'position6', 0),
(1733, 15, 'ptstaticblock.175', 'position4', 0),
(1732, 15, 'ptmenu.35', 'position3', 0),
(1728, 4, 'ptstaticblock.175', 'position4', 0),
(1818, 23, 'ptstaticblock.175', 'position4', 0),
(1727, 4, 'ptmenu.35', 'position3', 0),
(1824, 24, 'ptmenu.107', 'position3', 0),
(1823, 24, 'ptmenu.106', 'position2', 0),
(1721, 3, 'ptmenu.35', 'position3', 0),
(1837, 26, 'ptmenu.107', 'position3', 0),
(1719, 3, 'ptmenu.88', 'position1', 0),
(1720, 3, 'ptmenu.33', 'position2', 0),
(1813, 27, 'ptnewsletter.42', 'position5', 0),
(1849, 29, 'ptstaticblock.175', 'position4', 0),
(1848, 29, 'ptmenu.107', 'position3', 0),
(1714, 14, 'ptstaticblock.175', 'position4', 0),
(1713, 14, 'ptmenu.35', 'position3', 0),
(1914, 33, 'ptstaticblock.174', 'position6', 0),
(1918, 35, 'ptnewsletter.42', 'position5', 0),
(1708, 6, 'ptnewsletter.42', 'position5', 0),
(1707, 6, 'ptstaticblock.175', 'position4', 0),
(1730, 4, 'ptstaticblock.174', 'position6', 0),
(1690, 1, 'ptstaticblock.175', 'position4', 0),
(1691, 1, 'ptnewsletter.42', 'position5', 0),
(1692, 1, 'ptstaticblock.174', 'position6', 0),
(1718, 3, 'ptstaticblock.176', 'column_left', 1),
(1740, 2, 'ptnewsletter.42', 'position5', 0),
(1709, 6, 'ptstaticblock.174', 'position6', 0),
(1710, 6, 'account', 'column_right', 1),
(1715, 14, 'ptnewsletter.42', 'position5', 0),
(1716, 14, 'ptstaticblock.174', 'position6', 0),
(1739, 2, 'ptstaticblock.175', 'position4', 0),
(1908, 32, 'ptstaticblock.174', 'position6', 0),
(1913, 33, 'ptnewsletter.42', 'position5', 0),
(1738, 2, 'ptmenu.35', 'position3', 0),
(1737, 2, 'ptmenu.33', 'position2', 0),
(1706, 6, 'ptmenu.35', 'position3', 0),
(1705, 6, 'ptmenu.33', 'position2', 0),
(1712, 14, 'ptmenu.33', 'position2', 0),
(1711, 14, 'ptmenu.88', 'position1', 0),
(1726, 4, 'ptmenu.33', 'position2', 0),
(1731, 15, 'ptlayoutbuilder.53', 'content_top', 0),
(1736, 2, 'ptmenu.88', 'position1', 0),
(1759, 16, 'ptnewsletter.42', 'position5', 0),
(1758, 16, 'ptstaticblock.175', 'position4', 0),
(1792, 21, 'ptstaticblock.175', 'position4', 0),
(1761, 16, 'account', 'column_right', 0),
(1755, 18, 'ptstaticblock.174', 'position6', 0),
(1780, 19, 'ptstaticblock.175', 'position4', 0),
(1689, 1, 'ptmenu.35', 'position3', 0),
(1688, 1, 'ptmenu.33', 'position2', 0),
(1880, 34, 'ptstaticblock.174', 'position6', 0),
(1941, 25, 'ptstaticblock.174', 'position6', 0),
(1879, 34, 'ptnewsletter.42', 'position5', 0),
(1843, 28, 'ptstaticblock.175', 'position4', 0),
(1842, 28, 'ptmenu.107', 'position3', 0),
(1687, 1, 'ptmenu.88', 'position1', 0),
(1884, 31, 'ptstaticblock.175', 'position4', 0),
(1907, 32, 'ptnewsletter.42', 'position5', 0),
(1912, 33, 'ptstaticblock.175', 'position4', 0),
(1878, 34, 'ptstaticblock.175', 'position4', 0),
(1877, 34, 'ptmenu.147', 'position3', 0),
(1917, 35, 'ptstaticblock.175', 'position4', 0),
(1916, 35, 'ptmenu.147', 'position3', 0),
(1923, 36, 'ptstaticblock.175', 'position4', 0),
(1757, 16, 'ptmenu.98', 'position3', 0),
(1765, 17, 'ptnewsletter.42', 'position5', 0),
(1764, 17, 'ptstaticblock.175', 'position4', 0),
(1793, 21, 'ptnewsletter.42', 'position5', 0),
(1791, 21, 'ptmenu.98', 'position3', 0),
(1790, 21, 'ptmenu.97', 'position2', 0),
(1775, 22, 'ptstaticblock.175', 'position4', 0),
(1774, 22, 'ptmenu.98', 'position3', 0),
(1754, 18, 'ptnewsletter.42', 'position5', 0),
(1779, 19, 'ptmenu.98', 'position3', 0),
(1800, 20, 'ptstaticblock.177', 'position10', 0),
(1799, 20, 'ptstaticblock.174', 'position6', 0),
(1816, 23, 'ptmenu.106', 'position2', 0),
(1817, 23, 'ptmenu.107', 'position3', 0),
(1940, 25, 'ptnewsletter.42', 'position5', 0),
(1836, 26, 'ptmenu.106', 'position2', 0),
(1812, 27, 'ptstaticblock.175', 'position4', 0),
(1841, 28, 'ptlayoutbuilder.68', 'content_top', 0),
(1890, 30, 'ptstaticblock.175', 'position4', 0),
(1889, 30, 'ptmenu.147', 'position3', 0),
(1888, 30, 'ptmenu.112', 'position2', 0),
(1883, 31, 'ptmenu.147', 'position3', 0),
(1882, 31, 'ptmenu.112', 'position2', 0),
(1881, 31, 'ptmenu.195', 'position1', 0),
(1906, 32, 'ptstaticblock.175', 'position4', 0),
(1905, 32, 'ptmenu.147', 'position3', 0),
(1911, 33, 'ptmenu.147', 'position3', 0),
(1910, 33, 'ptmenu.112', 'position2', 0),
(1909, 33, 'ptmenu.195', 'position1', 0),
(1876, 34, 'ptmenu.112', 'position2', 0),
(1875, 34, 'ptmenu.195', 'position1', 0),
(1874, 34, 'ptlayoutbuilder.69', 'content_top', 0),
(1915, 35, 'ptlayoutbuilder.71', 'content_top', 0),
(1922, 36, 'ptmenu.147', 'position3', 0),
(1921, 36, 'ptmenu.112', 'position2', 0),
(1920, 36, 'ptmenu.195', 'position1', 0),
(1686, 1, 'ptlayoutbuilder.32', 'content_top', 1),
(1725, 4, 'ptmenu.88', 'position1', 0),
(1717, 3, 'category', 'column_left', 0),
(1704, 6, 'ptmenu.88', 'position1', 0),
(1756, 16, 'ptmenu.97', 'position2', 0),
(1762, 17, 'ptmenu.97', 'position2', 0),
(1763, 17, 'ptmenu.98', 'position3', 0),
(1789, 21, 'ptstaticblock.176', 'column_left', 1),
(1773, 22, 'ptmenu.97', 'position2', 0),
(1753, 18, 'ptstaticblock.175', 'position4', 0),
(1778, 19, 'ptlayoutbuilder.62', 'content_top', 0),
(1797, 20, 'ptstaticblock.175', 'position4', 0),
(1798, 20, 'ptnewsletter.42', 'position5', 0),
(1847, 29, 'ptmenu.106', 'position2', 0),
(1846, 29, 'ptmenu.108', 'position1', 0),
(1811, 27, 'ptmenu.107', 'position3', 0),
(1835, 26, 'ptmenu.108', 'position1', 0),
(1938, 25, 'ptmenu.107', 'position3', 0),
(1939, 25, 'ptstaticblock.175', 'position4', 0),
(1822, 24, 'ptmenu.108', 'position1', 0),
(1815, 23, 'ptmenu.108', 'position1', 0),
(1810, 27, 'ptmenu.106', 'position2', 0),
(1937, 25, 'ptmenu.106', 'position2', 0),
(1936, 25, 'ptmenu.108', 'position1', 0),
(1935, 25, 'ptstaticblock.176', 'column_left', 1),
(1887, 30, 'ptmenu.195', 'position1', 0),
(1850, 29, 'ptnewsletter.42', 'position5', 0),
(1851, 29, 'ptstaticblock.174', 'position6', 0),
(1845, 28, 'ptstaticblock.174', 'position6', 0),
(1844, 28, 'ptnewsletter.42', 'position5', 0),
(1840, 26, 'ptstaticblock.174', 'position6', 0),
(1839, 26, 'ptnewsletter.42', 'position5', 0),
(1838, 26, 'ptstaticblock.175', 'position4', 0),
(1827, 24, 'ptstaticblock.174', 'position6', 0),
(1826, 24, 'ptnewsletter.42', 'position5', 0),
(1825, 24, 'ptstaticblock.175', 'position4', 0),
(1821, 23, 'account', 'column_right', 0),
(1820, 23, 'ptstaticblock.174', 'position6', 0),
(1819, 23, 'ptnewsletter.42', 'position5', 0),
(1814, 27, 'ptstaticblock.174', 'position6', 0),
(1809, 27, 'ptmenu.108', 'position1', 0),
(1808, 27, 'ptlayoutbuilder.63', 'content_top', 0),
(1794, 21, 'ptstaticblock.174', 'position6', 0),
(1796, 20, 'ptmenu.98', 'position3', 0),
(1795, 20, 'ptmenu.97', 'position2', 0),
(1782, 19, 'ptstaticblock.174', 'position6', 0),
(1781, 19, 'ptnewsletter.42', 'position5', 0),
(1934, 25, 'category', 'column_left', 0),
(1925, 36, 'ptstaticblock.174', 'position6', 0),
(1777, 22, 'ptstaticblock.174', 'position6', 0),
(1924, 36, 'ptnewsletter.42', 'position5', 0),
(1919, 35, 'ptstaticblock.174', 'position6', 0),
(1776, 22, 'ptnewsletter.42', 'position5', 0),
(1788, 21, 'category', 'column_left', 0),
(1904, 32, 'ptmenu.112', 'position2', 0),
(1893, 30, 'account', 'column_right', 0),
(1766, 17, 'ptstaticblock.174', 'position6', 0),
(1752, 18, 'ptmenu.98', 'position3', 0),
(1886, 31, 'ptstaticblock.174', 'position6', 0),
(1885, 31, 'ptnewsletter.42', 'position5', 0),
(1750, 18, 'ptlayoutbuilder.60', 'content_top', 0),
(1751, 18, 'ptmenu.97', 'position2', 0),
(1742, 2, 'ptstaticblock.177', 'position10', 0),
(1741, 2, 'ptstaticblock.174', 'position6', 0),
(1901, 32, 'category', 'column_left', 0),
(1902, 32, 'ptstaticblock.176', 'column_left', 1),
(1903, 32, 'ptmenu.195', 'position1', 0),
(1735, 15, 'ptstaticblock.174', 'position6', 0),
(1891, 30, 'ptnewsletter.42', 'position5', 0),
(1892, 30, 'ptstaticblock.174', 'position6', 0),
(1734, 15, 'ptnewsletter.42', 'position5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(425, 35, 3, 'plaza/responsive/mobile'),
(409, 27, 2, 'common/home'),
(414, 28, 2, 'plaza/responsive/mobile'),
(415, 29, 2, 'product/product'),
(421, 30, 3, 'account/%'),
(420, 31, 3, 'plaza/blog/post'),
(399, 18, 1, 'common/home'),
(424, 33, 3, ''),
(428, 25, 2, 'product/category'),
(413, 26, 2, ''),
(401, 17, 1, 'plaza/blog/post'),
(419, 34, 3, 'common/home'),
(423, 32, 3, 'product/category'),
(410, 23, 2, 'account/%'),
(411, 24, 2, 'plaza/blog/post'),
(400, 16, 1, 'account/%'),
(426, 36, 3, 'product/product'),
(403, 22, 1, ''),
(406, 21, 1, 'product/category'),
(407, 20, 1, 'product/product'),
(404, 19, 1, 'plaza/responsive/mobile'),
(392, 6, 0, 'account/%'),
(394, 3, 0, 'product/category'),
(397, 2, 0, 'product/product'),
(396, 15, 0, 'plaza/responsive/mobile'),
(395, 4, 0, ''),
(393, 14, 0, 'plaza/blog/post'),
(389, 1, 0, 'common/home');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(2, 6, 'Millimeter', 'mm'),
(1, 6, 'Centimeter', 'cm'),
(3, 6, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 6),
(5, 7),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 6),
(6, 7),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(7, 6),
(7, 7),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(8, 6),
(8, 7),
(9, 0),
(9, 1),
(9, 2),
(9, 3),
(9, 6),
(9, 7),
(10, 0),
(10, 1),
(10, 2),
(10, 3),
(10, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(9, 9, 'Plaza Ajax Search', 'plaza_ajax_search', 'Plaza Themes', '1.0', '', '<modification>\r\n    <name>Plaza Ajax Search</name>\r\n	<version>1.0</version>\r\n	<author>Plaza Themes</author>\r\n	<code>plaza_ajax_search</code>\r\n\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search ><![CDATA[$data[\'search\'] = $this->load->controller(\'common/search\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				$search_status = $this->config->get(\'module_ptsearch_status\');\r\n				if($search_status) {\r\n					$data[\'search\'] = $this->load->controller(\'extension/module/ptsearch\');\r\n					$data[\'search_status\'] = true;\r\n				} else {\r\n					$data[\'search\'] = $this->load->controller(\'common/search\');\r\n					$data[\'search_status\'] = false;\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2019-01-09 19:15:33');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(33, 33, 'Plaza Control Panel', 'plaza_control_panel', 'Plaza Themes', '18.12.27', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_control_panel</code>\r\n    <name>Plaza Control Panel</name>\r\n    <version>18.12.27</version>\r\n    <author>Plaza Themes</author>\r\n\r\n    <!-- Menu Left in Admin -->\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search ><![CDATA[$catalog = array();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $this->load->language(\'plaza/adminmenu\');\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/ptcontrolpanel\')) {\r\n                $data[\'menus\'][] = array(\r\n                    \'id\'       => \'plaza-dashboard\',\r\n                    \'icon\'     => \'fa-plaza\',\r\n                    \'name\'     => $this->language->get(\'text_theme_dashboard\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/ptcontrolpanel\', \'user_token=\' . $this->session->data[\'user_token\'], true)\r\n                );\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- PRODUCT CONFIGURATION -->\r\n    <file path=\"admin/controller/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search ><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n        $this->load->model(\'plaza/controlpanel\');\r\n        $this->model_plaza_controlpanel->setupRotateImage();\r\n        $this->model_plaza_controlpanel->setupColorSwatches();\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(\'catalog/product\');]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $this->load->language(\'plaza/rotateimage\');\r\n                $this->load->language(\'extension/module/ptcontrolpanel\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[\'sort_order\' => $product_image[\'sort_order\']]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'is_rotate\' => $product_image[\'is_rotate\'],\r\n                \'product_option_value_id\' => $product_image[\'product_option_value_id\'],\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/model/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\'\");]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    if(isset($product_image[\'product_option_value_id\']) && $product_image[\'product_option_value_id\']) {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\', product_option_value_id = \'\" . (int)$product_image[\'product_option_value_id\'] . \"\'\");\r\n                    } else {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\'\");\r\n                    }\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/view/template/catalog/product_form.twig\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-right\">{{ entry_sort_order }}</td>]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    <td class=\"text-center\">{{ entry_option }}</td>\r\n                    <td class=\"text-center\">{{ entry_rotate }}</td>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    <!-- Swatches Options -->\r\n                    <td class=\"text-center\">\r\n                      <select class=\"form-control image-opt\" id=\"product-image-option-{{ image_row }}\" data-row=\"{{ image_row }}\" style=\"margin-bottom: 10px;\">\r\n                        <option value=\"0\">{{ text_choose_option }}</option>\r\n                        {% for product_option in product_options %}\r\n                          {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                            <option value=\"{{ product_option.product_option_id }}\">{{ product_option.name }}</option>\r\n                          {% endif %}\r\n                        {% endfor %}\r\n                      </select>\r\n                      {% for product_option in product_options %}\r\n                        {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                        <select class=\"form-control image-opt-value\" id=\"product-image-option-{{ image_row }}-{{ product_option.product_option_id }}\" data-row=\"{{ image_row }}\" data-type=\"{{ product_option.product_option_id }}\">\r\n                          <option value=\"0\">{{ text_choose_value }}</option>\r\n                          {% for po_value in product_option.product_option_value %}\r\n                            {% if option_values[product_option.option_id] %}\r\n                              {% for option_value in option_values[product_option.option_id] %}\r\n                                {% if option_value.option_value_id == po_value.option_value_id %}\r\n                                  <option value=\"{{ po_value.product_option_value_id }}\" {% if product_image.product_option_value_id == po_value.product_option_value_id %} selected=\"selected\" {% endif %}>{{ option_value.name }}</option>\r\n                                {% endif %}\r\n                              {% endfor %}\r\n                            {% endif %}\r\n                          {% endfor %}\r\n                        </select>\r\n                        {% endif %}\r\n                      {% endfor %}\r\n                    </td>\r\n\r\n                    <!-- Rotate Image -->\r\n                    <td class=\"text-center\">\r\n                      <select name=\"product_image[{{ image_row }}][is_rotate]\" class=\"form-control rotate-select\">\r\n                        {% if product_image.is_rotate and (product_image.is_rotate == 1) %}\r\n                        <option value=\"1\" selected=\"selected\">Yes</option>\r\n                        <option value=\"0\">No</option>\r\n                        {% else %}\r\n                        <option value=\"1\">Yes</option>\r\n                        <option value=\"0\" selected=\"selected\">No</option>\r\n                        {% endif %}\r\n                      </select>\r\n                    </td>\r\n                    <!-- End -->\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[function addImage() {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    $(\'#tab-image tfoot td:first\').attr(\'colspan\', 4);\r\n\r\n                    // Swatches Options\r\n                    $(\'.image-opt-value\').hide();\r\n                    $(\'.image-opt-value\').each(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      $(this).find(\'option\').each(function () {\r\n                        if($(this).attr(\"selected\") == \'selected\') {\r\n                          var option_id = $(this).closest(\'.image-opt-value\').data(\'type\');\r\n                          $(\'#product-image-option-\' + row).find(\"option[value=\'\" + option_id + \"\']\").attr(\'selected\', \'selected\');\r\n                          $(this).closest(\'.image-opt-value\').attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                        }\r\n                      });\r\n                    });\r\n\r\n                    $(\'.image-opt\').change(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      var id_select = $(this).attr(\'id\');\r\n                      var product_option_id = $(this).val();\r\n                      $(\'#image-row\' + row).find(\'.image-opt-value\').removeAttr(\'name\').hide();\r\n                      $(\'#\' + id_select + \"-\" + product_option_id).attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                    });\r\n\r\n                    $(\'.rotate-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotate-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(\'#images tbody\').append(html);]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    // Swatches Options\r\n                    $(\'.image-opt\').change(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      var id_select = $(this).attr(\'id\');\r\n                      var product_option_id = $(this).val();\r\n                      $(\'#image-row\' + row).find(\'.image-opt-value\').removeAttr(\'name\').hide();\r\n                      $(\'#\' + id_select + \"-\" + product_option_id).attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                    });\r\n\r\n                    $(\'.rotate-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotate-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    // Swatches Options\r\n                    html += \'  <td class=\"text-center\">\';\r\n                    html += \'    <select class=\"form-control image-opt\" id=\"product-image-option-\' + image_row + \'\" data-row=\"\' + image_row + \'\" style=\"margin-bottom: 10px;\">\';\r\n                    html += \'       <option value=\"0\">{{ text_choose_option }}</option>\';\r\n                    {% for product_option in product_options %}\r\n                    {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                    html += \'       <option value=\"{{ product_option.product_option_id }}\">{{ product_option.name }}</option>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'    </select>\';\r\n                    {% for product_option in product_options %}\r\n                    {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                    html += \'    <select class=\"form-control image-opt-value\" id=\"product-image-option-\' + image_row + \'-{{ product_option.product_option_id }}\" data-row=\"\' + image_row + \'\" data-type=\"{{ product_option.product_option_id }}\" style=\"display: none;\">\';\r\n                    html += \'       <option value=\"0\">{{ text_choose_value }}</option>\';\r\n                    {% for po_value in product_option.product_option_value %}\r\n                    {% if option_values[product_option.option_id] %}\r\n                    {% for option_value in option_values[product_option.option_id] %}\r\n                    {% if option_value.option_value_id == po_value.option_value_id %}\r\n                    html += \'       <option value=\"{{ po_value.product_option_value_id }}\">{{ option_value.name }}</option>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'    </select>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'  </td>\';\r\n\r\n                    html += \' <td class=\"text-center\">\';\r\n                    html += \'   <select name=\"product_image[\' + image_row + \'][is_rotate]\" class=\"form-control rotate-select\">\';\r\n                    html += \'     <option value=\"1\">{{ text_yes }}</option>\';\r\n                    html += \'     <option value=\"0\" selected=\"selected\">{{ text_no }}</option>\';\r\n                    html += \'   </select>\';\r\n                    html += \' </td>\';\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/product/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $product_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Product Configuration */\r\n            $this->load->model(\'tool/image\');\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id])) {\r\n                $data[\'show_product_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id])) {\r\n                $data[\'show_product_button_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id])) {\r\n                $data[\'show_product_button_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id])) {\r\n                $data[\'show_product_button_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id])) {\r\n                $data[\'show_product_options\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_options\'] = 0;\r\n            }\r\n\r\n            /* Product Details */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_related\')[$store_id])) {\r\n                $data[\'show_product_related\'] = (int) $this->config->get(\'module_ptcontrolpanel_related\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_related\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_social\')[$store_id])) {\r\n                $data[\'show_product_social\'] = (int) $this->config->get(\'module_ptcontrolpanel_social\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_social\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tax\')[$store_id])) {\r\n                $data[\'show_product_tax\'] = (int) $this->config->get(\'module_ptcontrolpanel_tax\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tax\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tags\')[$store_id])) {\r\n                $data[\'show_product_tags\'] = (int) $this->config->get(\'module_ptcontrolpanel_tags\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tags\'] = 0;\r\n            }\r\n\r\n            $use_zoom = (int) $this->config->get(\'module_ptcontrolpanel_use_zoom\')[$store_id];\r\n\r\n            if($use_zoom) {\r\n                $data[\'use_zoom\'] = true;\r\n\r\n                if ($product_info[\'image\']) {\r\n                    $data[\'small_image\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\'));\r\n                } else {\r\n                    $data[\'small_image\'] = \'\';\r\n                }\r\n\r\n                $data[\'popup_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\')\r\n                );\r\n\r\n                $data[\'thumb_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')\r\n                );\r\n\r\n                $data[\'small_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\')\r\n                );\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id])) {\r\n                    $zoom_type = $this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id];\r\n                } else {\r\n                    $zoom_type = \'outer\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id])) {\r\n                    $zoom_space = $this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id];\r\n                } else {\r\n                    $zoom_space = \'0\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id])) {\r\n                    $zoom_title = (int) $this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id];\r\n                } else {\r\n                    $zoom_title = 0;\r\n                }\r\n\r\n                $data[\'product_zoom_settings\'] = array(\r\n                    \'type\' => $zoom_type,\r\n                    \'space\' => $zoom_space,\r\n                    \'title\' => $zoom_title\r\n                );\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/product/zoom.css\');\r\n                }\r\n\r\n                $this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n                $this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');\r\n                $this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n                $this->document->addStyle(\'catalog/view/javascript/plaza/cloudzoom/css/cloud-zoom.css\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/cloud-zoom.1.0.2.min.js\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/zoom.js\');\r\n            } else {\r\n                $data[\'use_zoom\'] = false;\r\n            }\r\n\r\n            $use_swatches = (int) $this->config->get(\'module_ptcontrolpanel_use_swatches\')[$store_id];\r\n\r\n            if($use_swatches) {\r\n                $data[\'use_swatches\'] = true;\r\n                $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_swatches_width\')[$store_id];\r\n                $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_swatches_height\')[$store_id];\r\n                $data[\'swatches_option\'] = $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id];\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/swatches/swatches.css\');\r\n                }\r\n\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            } else {\r\n                $data[\'use_swatches\'] = false;\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'images\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'product_option_value_id\' => $result[\'product_option_value_id\'],\r\n                    \'product_image_option\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')),\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$product_info[\'special\']) {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'plaza/catalog\');\r\n\r\n				$product_plaza_info = $this->model_plaza_catalog->getProduct($data[\'product_id\']);\r\n\r\n				if (isset($product_plaza_info[\'date_start\']) && $product_plaza_info[\'date_start\']) {\r\n					if($product_plaza_info[\'date_start\'] != \'0000-00-00\') {\r\n						$data[\'date_start\'] = $product_plaza_info[\'date_start\'];\r\n					} else {\r\n						$data[\'date_start\'] = false;\r\n					}\r\n					\r\n				} else {\r\n					$data[\'date_start\'] = false;\r\n				}\r\n\r\n				if(isset($product_plaza_info[\'date_end\']) &&  $product_plaza_info[\'date_end\']) {\r\n					if($product_plaza_info[\'date_end\'] != \'0000-00-00\') {\r\n						$data[\'date_end\'] = $product_plaza_info[\'date_end\'];\r\n					} else {\r\n						$data[\'date_end\'] = false;\r\n					}\r\n				} else {\r\n					$data[\'date_end\'] = false;\r\n				}\r\n\r\n				if($data[\'date_start\'] && $data[\'date_end\']) {\r\n					$this->document->addScript(\'catalog/view/javascript/plaza/countdown/countdown.js\');\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'special\'] = false;]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'date_start\'] = false;\r\n				$data[\'date_end\'] = false;\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <!-- CATEGORY CONFIGURATION -->\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $category_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Category Configuration */\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id])) {\r\n                $data[\'show_cate_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id])) {\r\n                $data[\'show_cate_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id])) {\r\n                $data[\'show_cate_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id])) {\r\n                $data[\'show_cate_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id])) {\r\n                $data[\'show_cate_prodes\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_prodes\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id])) {\r\n                $data[\'show_cate_label\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_label\'] = 0;\r\n            }\r\n\r\n            /* Category Settings */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id])) {\r\n                $data[\'show_cate_img\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_img\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id])) {\r\n                $data[\'show_cate_des\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_des\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id])) {\r\n                $data[\'show_cate_sub\'] = (int) $this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_sub\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n                $data[\'use_filter\'] = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n            } else {\r\n                $data[\'use_filter\'] = 0;\r\n            }\r\n\r\n            if (!empty($_SERVER[\'HTTPS\'])) {\r\n                // SSL connection\r\n                $common_url = str_replace(\'http://\', \'https://\', $this->config->get(\'config_url\'));\r\n            } else {\r\n                $common_url = $this->config->get(\'config_url\');\r\n            }\r\n\r\n            $data[\'pt_sorts\'] = array();\r\n\r\n            $data[\'pt_limits\'] = array();\r\n\r\n            if($data[\'use_filter\']) {\r\n                \r\n				\r\n				$this->document->addStyle(\'catalog/view/javascript/jquery/css/jquery-ui.css\');\r\n				if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/category/filter.css\');\r\n                }\r\n				$this->document->addScript(\'catalog/view/javascript/jquery/jquery-ui.js\');	\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/filter.js\');\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_default\'),\r\n                    \'value\' => \'p.sort_order-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.sort_order&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_asc\'),\r\n                    \'value\' => \'pd.name-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_desc\'),\r\n                    \'value\' => \'pd.name-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_asc\'),\r\n                    \'value\' => \'p.price-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_desc\'),\r\n                    \'value\' => \'p.price-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=DESC\' . $url\r\n                );\r\n\r\n                if ($this->config->get(\'config_review_status\')) {\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_desc\'),\r\n                        \'value\' => \'rating-DESC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=DESC\' . $url\r\n                    );\r\n\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_asc\'),\r\n                        \'value\' => \'rating-ASC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=ASC\' . $url\r\n                    );\r\n                }\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_asc\'),\r\n                    \'value\' => \'p.model-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_desc\'),\r\n                    \'value\' => \'p.model-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_limits\'] = array();\r\n\r\n                $limits = array_unique(array($this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_product_limit\'), 25, 50, 75, 100));\r\n\r\n                sort($limits);\r\n\r\n                foreach($limits as $value) {\r\n                    $data[\'pt_limits\'][] = array(\r\n                        \'text\'  => $value,\r\n                        \'value\' => $value,\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&limit=\' . $value\r\n                    );\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id])) {\r\n                    $data[\'loader_img\'] = $common_url . \'image/\' . $this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id];\r\n                } else {\r\n                    $data[\'loader_img\'] = $common_url . \'image/plaza/ajax-loader.gif\';;\r\n                }\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id])) {\r\n	            $data[\'use_quick_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id];\r\n	        } else {\r\n	            $data[\'use_quick_view\'] = 0;\r\n	        }\r\n\r\n	        if(isset($this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id])) {\r\n                $data[\'image_effect\'] = $this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id];\r\n            } else {\r\n                $data[\'image_effect\'] = false;\r\n            }\r\n\r\n            if($data[\'image_effect\'] == \'swatches\') {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id])) {\r\n                $data[\'use_advance_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id];\r\n            } else {\r\n                $data[\'use_advance_view\'] = 0;\r\n            }\r\n\r\n            if($data[\'use_advance_view\']) {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/grid.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id])) {\r\n                $data[\'advance_default_view\'] = $this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id];\r\n            } else {\r\n                $data[\'advance_default_view\'] = false;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id])) {\r\n                $data[\'product_p_row\'] = $this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id];\r\n            } else {\r\n                $data[\'product_p_row\'] = false;\r\n            }\r\n			$new_results = $this->model_catalog_product->getLatestProducts(10);\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if($data[\'image_effect\'] == \'hover\') {\r\n                    $this->load->model(\'plaza/rotateimage\');\r\n\r\n                    $product_rotate_image = $this->model_plaza_rotateimage->getProductRotateImage($result[\'product_id\']);\r\n\r\n                    if($product_rotate_image) {\r\n                        $rotate_image = $this->model_tool_image->resize($product_rotate_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n                    } else {\r\n                        $rotate_image = false;\r\n                    }\r\n                } else {\r\n                    $rotate_image = false;\r\n                }\r\n\r\n                $swatches_images = array();\r\n\r\n                $options = array();\r\n\r\n                if($data[\'image_effect\'] == \'swatches\') {\r\n                    $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_width\')[$store_id];\r\n                    $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_height\')[$store_id];\r\n\r\n                    $this->load->model(\'plaza/swatches\');\r\n\r\n                    $images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n\r\n                    $is_swatches = false;\r\n\r\n                    foreach ($images as $img) {\r\n                        if ($img[\'product_option_value_id\']) {\r\n                            $image_option_id = $this->model_plaza_swatches->getOptionIdByProductOptionValueId($img[\'product_option_value_id\']);\r\n\r\n                            if($image_option_id == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $is_swatches = true;\r\n\r\n                                $swatches_images[] = array(\r\n                                    \'product_option_value_id\' => $img[\'product_option_value_id\'],\r\n                                    \'image\' => $this->model_tool_image->resize($img[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'))\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n\r\n                    if($is_swatches) {\r\n                        foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                            if($option[\'option_id\'] == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $product_option_value_data = array();\r\n\r\n                                foreach ($option[\'product_option_value\'] as $option_value) {\r\n                                    if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                        $product_option_value_data[] = array(\r\n                                            \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                            \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                            \'name\'                    => $option_value[\'name\'],\r\n                                            \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], $data[\'icon_swatches_width\'], $data[\'icon_swatches_height\']),\r\n                                        );\r\n                                    }\r\n                                }\r\n\r\n                                $options[] = array(\r\n                                    \'product_option_id\'    => $option[\'product_option_id\'],\r\n                                    \'product_option_value\' => $product_option_value_data,\r\n                                    \'option_id\'            => $option[\'option_id\'],\r\n                                    \'name\'                 => $option[\'name\'],\r\n                                    \'type\'                 => $option[\'type\'],\r\n                                    \'value\'                => $option[\'value\'],\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n                }\r\n				$is_new = false;\r\n				if ($new_results) {\r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'options\' => $options,\r\n                    \'swatches_images\' => $swatches_images,\r\n                    \'rotate_image\' => $rotate_image,\r\n					\'is_new\'        => $is_new,\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$pagination = new Pagination();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $pt_pagination = new Pagination();\r\n            $pt_pagination->total = $product_total;\r\n            $pt_pagination->page = $page;\r\n            $pt_pagination->limit = $limit;\r\n            $pt_pagination->url = $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&page={page}\';\r\n\r\n            $data[\'pt_pagination\'] = $pt_pagination->render();\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'left\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'right\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[\'filter_manufacturer_id\'])) {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n        /* Price range */\r\n        if  (!empty($data[\'filter_price\'])) {\r\n            $min_price = $data[\'filter_price\'][\'min_price\'];\r\n            $max_price = $data[\'filter_price\'][\'max_price\'];\r\n            $sql_sl_special = \"(SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1)\";\r\n            $sql_sl_discount = \"(SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1)\";\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) >=\'\". $min_price .\"\'\" ;\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) <=\'\". $max_price .\"\'\";\r\n        }\r\n        /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Plaza THEME OPTION -->\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n        $data[\'store_id\'] = $this->config->get(\'config_store_id\');\r\n\r\n        /* General */\r\n		if(isset($this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']])) {\r\n            $data[\'header_layout\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_layout\'] = 1;\r\n        }\r\n		\r\n        /* Sticky Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']])) {\r\n            $data[\'sticky_header\'] = (int) $this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'sticky_header\'] = 0;\r\n        }\r\n\r\n        /* Scroll Top */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']])) {\r\n            $data[\'scroll_top\'] = (int) $this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'scroll_top\'] = 0;\r\n        }\r\n\r\n        /* Lazy Load */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']])) {\r\n            $data[\'lazy_load\'] = (int) $this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'lazy_load\'] = 0;\r\n        }\r\n\r\n        /* Catalog Mode */\r\n        /* Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']])) {\r\n            $data[\'header_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_cart\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']])) {\r\n            $data[\'header_currency\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_currency\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']])) {\r\n            $module_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $module_quick_view = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']])) {\r\n            $category_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $category_quick_view = 0;\r\n        }\r\n\r\n        if($module_quick_view || $category_quick_view) {\r\n        	$data[\'use_quick_view\'] = true;\r\n        } else {\r\n			$data[\'use_quick_view\'] = false;\r\n        }\r\n\r\n        /* Advance */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']])) {\r\n            $data[\'custom_js\'] = $this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'custom_js\'] = false;\r\n        }\r\n        	]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'header\'] = $this->load->controller(\'plaza/header\');\r\n            ]]></add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[class ControllerCommonHeader extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n        $detect = new Mobile_Detect;\r\n		if ( $detect->isTablet() ) {\r\n			return $this->load->view(\'common/header\', $data);\r\n		} else {\r\n			if( $detect->isMobile()){\r\n				return $this->load->view(\'plaza/page_section/header_mobile\', $data);\r\n			} else {\r\n				return $this->load->view(\'common/header\', $data);\r\n			}\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnLeft extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnRight extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_bottom.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentBottom extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_top.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentTop extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Layouts Position -->\r\n    <file path=\"admin/controller/design/layout.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'design/layout_form\', $data));]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                $this->load->language(\'design/layout\');\r\n\r\n                $this->response->setOutput($this->load->view(\'plaza/design/plaza_layout\', $data));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<!-- Fixed URL SEO -->\r\n	\r\n	<file path=\"catalog/controller/startup/seo_url.php\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($url[0] == \'information_id\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			if ($url[0] == \'post_id\') {\r\n				$this->request->get[\'post_id\'] = $url[1];\r\n			}	\r\n			if ($url[0] == \'post_list_id\') {\r\n				$this->request->get[\'post_list_id\'] = $url[1];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'post_list_id\' && $url[0] != \'post_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = $query->row[\'query\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($query->row[\'query\'] && $url[0] == \'ptblog\') {\r\n				$this->request->get[\'route\'] = \"plaza/blog\";\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				} elseif (isset($this->request->get[\'post_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/post\';\r\n				} elseif (isset($this->request->get[\'post_list_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/category\';\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (isset($data[\'route\'])) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($data[\'route\'] == \'plaza/blog\') {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'ptblog\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n						if ($query->num_rows && $query->row[\'keyword\']) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n							unset($data[$key]);\r\n						}\r\n					}\r\n				}\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (($data[\'route\'] == \'product/product\' && $key == \'product_id\') || (($data[\'route\'] == \'product/manufacturer/info\' || $data[\'route\'] == \'product/product\') && $key == \'manufacturer_id\') || ($data[\'route\'] == \'information/information\' && $key == \'information_id\')) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			foreach ($data as $key => $value) {\r\n			if (isset($data[\'route\'])) {\r\n				if($data[\'route\'] == \'plaza/blog/post\' && $key == \'post_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}\r\n\r\n				if($data[\'route\'] == \'plaza/blog/category\' && $key == \'post_list_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			} elseif ($key == \'route\') {\r\n			$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n			if ($query->num_rows && $query->row[\'keyword\']) {\r\n				$url .= \'/\' . $query->row[\'keyword\'];\r\n				unset($data[$key]);\r\n			} else if ($data[\'route\'] == \"common/home\") { \r\n			 $url .= \'/\'; \r\n			} 	\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2019-03-20 10:39:18');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(41, 41, 'Plaza Theme Custom', 'plaza_theme_custom', 'Plazathemes', '1.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_theme_custom</code>\r\n    <name>Plaza Theme Custom</name>\r\n    <version>1.0</version>\r\n    <author>Plazathemes</author>\r\n	<!-- Add position in header -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add position in footer -->\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n					$data[\'address\'] = $this->config->get(\'config_address\');\r\n					$data[\'text_address\'] = $this->language->get(\'text_address\');\r\n					$data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n					$data[\'text_phone\'] = $this->language->get(\'text_phone\');\r\n					$data[\'email\'] = $this->config->get(\'config_email\');\r\n					$data[\'text_email\'] = $this->language->get(\'text_email\');\r\n					$data[\'text_description_footer\'] = $this->language->get(\'text_description_footer\');\r\n					$data[\'text_signup_newsletter\'] = $this->language->get(\'text_signup_newsletter\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add class page in body tag -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add class page in body tag\r\n				if (isset($this->request->get[\'route\'])) {\r\n					if (isset($this->request->get[\'product_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'product_id\'];\r\n					} elseif (isset($this->request->get[\'path\'])) {\r\n						$class = \'-\' . $this->request->get[\'path\'];\r\n					} elseif (isset($this->request->get[\'manufacturer_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'manufacturer_id\'];\r\n					} elseif (isset($this->request->get[\'information_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'information_id\'];\r\n					} else {\r\n						$class = \'\';\r\n					}\r\n\r\n					$data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']) . $class;\r\n				} else {\r\n					$data[\'class\'] = \'common-home\';\r\n				}\r\n				// End Add class page in body tag\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Remove link swipe js,cs in carousel module default -->\r\n	<file path=\"catalog/controller/extension/module/carousel.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add span tag in category module default -->\r\n	<file path=\"catalog/controller/extension/module/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[\'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n	<!-- Add manufacturer to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- Add text_stock to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if ($result[\'quantity\'] <= 0) {\r\n					$stock = $result[\'stock_status\'];\r\n				} elseif ($this->config->get(\'config_stock_display\')) {\r\n					$stock = $result[\'quantity\'];\r\n				} else {\r\n					$stock = $this->language->get(\'text_instock\');\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					\'stock\'		=> $stock,\r\n					\'quantity\'      => (int) $result[\'quantity\'],\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<!-- Add manufacturer to related product -->\r\n		<operation>\r\n			<search><![CDATA[$rating,]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer to related product\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer to related product\r\n			]]></add>\r\n		</operation>\r\n		<!-- Add positon to product page -->\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				$data[\'text_description\'] = $this->language->get(\'text_description\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Fix text headding,empty -->\r\n	<file path=\"catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/affiliate/{login,register,success,}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/checkout/{cart,checkout,failure,success}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/product/{compare,manufacturer,search,special}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/{common,error}/{maintenance,not_found}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/{sitemap,contact}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 <file path=\"catalog/controller/account/{address,download,order,recurring,return,reward,transaction,wishlist}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n				$data[\'text_qty\'] = $this->language->get(\'text_qty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/extension/credit_card/{sagepay_direct,sagepay_server}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{category,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{compare,manufacturer,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/voucher.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'account/voucher\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_agree\'] = $this->language->get(\'text_agree\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'design/layout\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[protected function getForm() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$this->load->language(\'design/layout\');\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2019-05-14 16:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'BrandSlider', 'carousel', '{\"name\":\"BrandSlider\",\"banner_id\":\"8\",\"width\":\"185\",\"height\":\"60\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Store 1 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 1 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.36\",\"name\":\" Plaza Slider &gt; Home slideshow 1\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=9SpApmtJEv48JsiFR7oBxamRFnhbczHy&amp;module_id=36\"},{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=6BsrxDrNnGMESF3gWYjhKVGXAiaGqTiA&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=o8B2ydXITTWEBtrCdeoQ4YVjo6Xm23Vs\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.166\",\"name\":\" Plaza Static Block &gt; Banner Static Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=dMplcsuIkC23DIefvnhAd3fumpOglzfm&amp;module_id=166\"},{\"code\":\"ptproducts.167\",\"name\":\" Plaza Products  &gt; Tab Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=dMplcsuIkC23DIefvnhAd3fumpOglzfm&amp;module_id=167\"},{\"code\":\"ptstaticblock.168\",\"name\":\" Plaza Static Block &gt; Banner Center Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=hD3Kg55ckiwgcTOoP12FyDgKl7OSQ2FR&amp;module_id=168\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.169\",\"name\":\" Plaza Products  &gt; Onsale Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=hD3Kg55ckiwgcTOoP12FyDgKl7OSQ2FR&amp;module_id=169\"},{\"code\":\"ptstaticblock.170\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=170\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.171\",\"name\":\" Plaza Products  &gt; Best Sellers Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=171\"},{\"code\":\"ptproducts.172\",\"name\":\" Plaza Products  &gt; Mosview Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=172\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"home-blog\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=72\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.173\",\"name\":\" Plaza Products  &gt; Featured Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=173\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(168, 'Banner Center Home1', 'ptstaticblock', '{\"name\":\"Banner Center Home1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home1.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home1.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home1.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home1.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(169, 'Onsale Products Home1', 'ptproducts', '{\"name\":\"Onsale Products Home1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Deals Of The Weeks\",\"de-de\":\"Deals Of The Weeks\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"317\",\"slider_height\":\"317\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"7\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"products1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"special\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"169\"}'),
(88, 'Vertical Menu 01', 'ptmenu', '{\"name\":\"Vertical Menu 01\",\"status\":\"1\",\"menu\":\"4\",\"effect\":\"none\",\"menu_bg\":\"40A944\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"1.2rem\",\"menu_pd_right\":\"2rem\",\"menu_pd_bottom\":\"1.2rem\",\"menu_pd_left\":\"2rem\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"40A944\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"0.5rem\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"0.5rem\",\"item_pd_left\":\"0\",\"item_show\":\"9\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"222222\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"40A944\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"40A944\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"2.5rem\",\"mega_menu_pd_right\":\"3rem\",\"mega_menu_pd_bottom\":\"2.5rem\",\"mega_menu_pd_left\":\"3rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"40A944\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"7FBB35\",\"third_item_font_weight_hover\":\"400\"}'),
(33, 'Horizontal Menu 01', 'ptmenu', '{\"name\":\"Horizontal Menu 01\",\"status\":\"1\",\"menu\":\"1\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"222222\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"40A944\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"1.2rem\",\"item_pd_right\":\"0\",\"item_pd_bottom\":\"1.2rem\",\"item_pd_left\":\"0\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"222222\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"40A944\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"40A944\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"1.5rem\",\"mega_menu_pd_right\":\"4.5rem\",\"mega_menu_pd_bottom\":\"2.2rem\",\"mega_menu_pd_left\":\"4.5rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"40A944\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"7FBB35\",\"third_item_font_weight_hover\":\"400\"}'),
(46, 'Home slideshow 2', 'ptslider', '{\"name\":\"Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"1920\",\"height\":\"550\"}'),
(47, 'Home slideshow 3', 'ptslider', '{\"name\":\"Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"825\",\"height\":\"482\"}'),
(35, 'Mobile Menu 01', 'ptmenu', '{\"name\":\"Mobile Menu 01\",\"status\":\"1\",\"menu\":\"3\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"242424\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"uppercase\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"7FBB35\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"400\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"300\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"0px\",\"mega_menu_pd_right\":\"0px\",\"mega_menu_pd_bottom\":\"0px\",\"mega_menu_pd_left\":\"0px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"400\",\"second_item_font_color_hover\":\"7FBB35\",\"second_item_font_weight_hover\":\"400\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"7FBB35\",\"third_item_font_weight_hover\":\"400\"}'),
(36, 'Home slideshow 1', 'ptslider', '{\"name\":\"Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"1920\",\"height\":\"550\"}'),
(75, 'Testimonial', 'pttestimonial', '{\"name\":\"Testimonial\",\"status\":\"1\",\"width\":\"100\",\"height\":\"100\",\"auto\":\"0\",\"items\":\"1\",\"limit\":\"3\",\"speed\":\"500\",\"rows\":\"1\",\"navigation\":\"0\",\"pagination\":\"1\"}'),
(195, 'Vertical Menu 04', 'ptmenu', '{\"name\":\"Vertical Menu 04\",\"status\":\"1\",\"menu\":\"4\",\"effect\":\"none\",\"menu_bg\":\"CF1F1F\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"1.2rem\",\"menu_pd_right\":\"2rem\",\"menu_pd_bottom\":\"1.2rem\",\"menu_pd_left\":\"2rem\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"CF1F1F\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"0.6rem\",\"item_pd_right\":\"0rem\",\"item_pd_bottom\":\"0.5rem\",\"item_pd_left\":\"0rem\",\"item_show\":\"11\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"1E1E1E\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"CF1F1F\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"CF1F1F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"2.5rem\",\"mega_menu_pd_right\":\"3rem\",\"mega_menu_pd_bottom\":\"2.5rem\",\"mega_menu_pd_left\":\"3rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"CF1F1F\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"FFFFFF\",\"third_item_font_size\":\"1.3rem\",\"third_item_font_transform\":\"none\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FFFFFF\",\"third_item_font_weight_hover\":\"400\"}'),
(185, 'Tabs Categories Home3', 'ptproducts', '{\"name\":\"Tabs Categories Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Trending Products\",\"de-de\":\"Trending Products\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"7\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"categories1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Vegetables\",\"de-de\":\"Vegetables\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"18\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Fruits\",\"de-de\":\"Fruits\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"60\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Salads\",\"de-de\":\"Salads\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"80\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"185\"}'),
(186, 'Banner Center Home3', 'ptstaticblock', '{\"name\":\"Banner Center Home3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home3.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home3.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home3.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home3.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(42, 'Newsletter Subscribe', 'ptnewsletter', '{\"name\":\"Newsletter Subscribe\",\"status\":\"1\",\"popup\":\"0\"}'),
(43, 'Newsletter Popup', 'ptnewsletter', '{\"name\":\"Newsletter Popup\",\"status\":\"1\",\"popup\":\"1\"}'),
(194, 'Tabs Categories3 Home3', 'ptproducts', '{\"name\":\"Tabs Categories3 Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Fish &amp; Seafood\",\"de-de\":\"Fish &amp; Seafood\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"6\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"tabcategories2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Fish &amp; Seafood\",\"de-de\":\"\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"32\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"194\"}'),
(50, 'Home slideshow 4', 'ptslider', '{\"name\":\"Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"825\",\"height\":\"452\"}'),
(192, 'Tabs Categories1 Home3', 'ptproducts', '{\"name\":\"Tabs Categories1 Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Fruits\",\"de-de\":\"Fruits\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"6\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"tabcategories2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Fruits\",\"de-de\":\"\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"60\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"192\"}'),
(191, 'Banner Center2 Home3', 'ptstaticblock', '{\"name\":\"Banner Center2 Home3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center2&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home3.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center2&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home3.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(53, 'Store 1 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 1 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.56\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 1\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=2ljBM8pA4SWJ3vOYCXrq1V1swt90yusi&amp;module_id=56\"},{\"code\":\"ptstaticblock.166\",\"name\":\" Plaza Static Block &gt; Banner Static Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=166\"},{\"code\":\"ptproducts.167\",\"name\":\" Plaza Products  &gt; Tab Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=167\"},{\"code\":\"ptstaticblock.168\",\"name\":\" Plaza Static Block &gt; Banner Center Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=168\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.169\",\"name\":\" Plaza Products  &gt; Onsale Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=169\"},{\"code\":\"ptstaticblock.170\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home12\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=170\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.171\",\"name\":\" Plaza Products  &gt; Best Sellers Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=171\"},{\"code\":\"ptproducts.172\",\"name\":\" Plaza Products  &gt; Mosview Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=172\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"home-blog\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=72\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.173\",\"name\":\" Plaza Products  &gt; Featured Products Home1\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=173\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(182, 'Banner Center2 Home2', 'ptstaticblock', '{\"name\":\"Banner Center2 Home2\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center3&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block4-home2.jpg&quot; alt=&quot;block4&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center3&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block4-home2.jpg&quot; alt=&quot;block4&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(183, 'Featured Products Home2', 'ptproducts', '{\"name\":\"Featured Products Home2\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Featured Products\",\"de-de\":\"Featured Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"12\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"products3\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"28\",\"41\",\"40\",\"113\",\"48\",\"36\",\"97\",\"44\",\"98\",\"116\",\"134\",\"117\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"183\"}'),
(181, 'Best Sellers Home2', 'ptproducts', '{\"name\":\"Best Sellers Home2\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best Sellers\",\"de-de\":\"Best Sellers\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"1\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"9\",\"speed\":\"1000\",\"navigation\":\"0\",\"pagination\":\"1\",\"layout_type\":\"image\",\"product_layout_type\":\"list\",\"layout_classname\":\"products2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"350\",\"single_image_height\":\"432\",\"single_image\":\"catalog\\/ptblock\\/block4-home1.jpg\",\"single_image_link\":\"#\",\"module_id\":\"181\"}'),
(56, 'Mobile Home slideshow 1', 'ptslider', '{\"name\":\"Mobile Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"767\",\"height\":\"219\"}'),
(57, 'Mobile Home slideshow 2', 'ptslider', '{\"name\":\"Mobile Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"767\",\"height\":\"219\"}'),
(58, 'Mobile Home slideshow 3', 'ptslider', '{\"name\":\"Mobile Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"767\",\"height\":\"448\"}'),
(59, 'Mobile Home slideshow 4', 'ptslider', '{\"name\":\"Mobile Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"767\",\"height\":\"420\"}'),
(60, 'Store 2 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 2 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"slider-group full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"},{\"code\":\"ptslider.46\",\"name\":\" Plaza Slider &gt; Home slideshow 2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=CqhVckjgMW6FvzLDRsfUoCptGderUJus&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.178\",\"name\":\" Plaza Static Block &gt; Banner Static Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=CqhVckjgMW6FvzLDRsfUoCptGderUJus&amp;module_id=178\"},{\"code\":\"ptproducts.179\",\"name\":\" Plaza Products  &gt; Tab Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=CqhVckjgMW6FvzLDRsfUoCptGderUJus&amp;module_id=179\"},{\"code\":\"ptproducts.180\",\"name\":\" Plaza Products  &gt; Mosview Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=180\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.170\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home12\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=170\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.181\",\"name\":\" Plaza Products  &gt; Best Sellers Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=181\"},{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=72\"},{\"code\":\"ptstaticblock.182\",\"name\":\" Plaza Static Block &gt; Banner Center2 Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=182\"},{\"code\":\"ptproducts.183\",\"name\":\" Plaza Products  &gt; Featured Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=183\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(178, 'Banner Static Home2', 'ptstaticblock', '{\"name\":\"Banner Static Home2\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home2.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-5 col-sm-5 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home2.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-3 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row1&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home2.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row2&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home2.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home2.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-5 col-sm-5 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home2.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-3 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row1&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home2.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row2&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home2.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(62, 'Store 2 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 2 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.46\",\"name\":\" Plaza Slider &gt; Home slideshow 2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.178\",\"name\":\" Plaza Static Block &gt; Banner Static Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=178\"},{\"code\":\"ptproducts.179\",\"name\":\" Plaza Products  &gt; Tab Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=179\"},{\"code\":\"ptproducts.180\",\"name\":\" Plaza Products  &gt; Mosview Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=180\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.170\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home12\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=170\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.181\",\"name\":\" Plaza Products  &gt; Best Sellers Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=181\"},{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=72\"},{\"code\":\"ptstaticblock.182\",\"name\":\" Plaza Static Block &gt; Banner Center2 Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=182\"},{\"code\":\"ptproducts.183\",\"name\":\" Plaza Products  &gt; Featured Products Home2\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=183\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(63, 'Store 3 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 3 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"banner-home\",\"main_cols\":[{\"format\":\"3\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"}]},\"format\":\"12\"}]}]},{\"format\":\"9\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.47\",\"name\":\" Plaza Slider &gt; Home slideshow 3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=Urh1rwPwzjbGbAMg0NFNgwxi1gvgyoGI&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.184\",\"name\":\" Plaza Static Block &gt; Banner Static Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=Urh1rwPwzjbGbAMg0NFNgwxi1gvgyoGI&amp;module_id=184\"},{\"code\":\"ptproducts.185\",\"name\":\" Plaza Products  &gt; Tabs Categories Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=Urh1rwPwzjbGbAMg0NFNgwxi1gvgyoGI&amp;module_id=185\"},{\"code\":\"ptstaticblock.186\",\"name\":\" Plaza Static Block &gt; Banner Center Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=2xGPwiiI2F3A07KVYxwU9LYWzUtdsIBr&amp;module_id=186\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"home-moduls\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.187\",\"name\":\" Plaza Products  &gt; Onsale Products Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=187\"},{\"code\":\"ptstaticblock.188\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=188\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.189\",\"name\":\" Plaza Products  &gt; Best Sellers Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=189\"},{\"code\":\"ptproducts.190\",\"name\":\" Plaza Products  &gt; New Product Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=190\"}]},\"format\":\"8\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=72\"},{\"code\":\"ptstaticblock.191\",\"name\":\" Plaza Static Block &gt; Banner Center2 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=191\"}]},\"format\":\"12\"}]},{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.192\",\"name\":\" Plaza Products  &gt; Tabs Categories1 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=192\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.193\",\"name\":\" Plaza Products  &gt; Tabs Categories2 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=193\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.194\",\"name\":\" Plaza Products  &gt; Tabs Categories3 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=194\"}]},\"format\":\"4\"}]},{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}');
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(184, 'Banner Static Home3', 'ptstaticblock', '{\"name\":\"Banner Static Home3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home3.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home3.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home3.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home3.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home3.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home3.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home3.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home3.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(180, 'Mosview Products Home2', 'ptproducts', '{\"name\":\"Mosview Products Home2\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Mostview Products\",\"de-de\":\"Mostview Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"7\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"products1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"180\"}'),
(106, 'Horizontal Menu 03', 'ptmenu', '{\"name\":\"Horizontal Menu 03\",\"status\":\"1\",\"menu\":\"1\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"FC8A35\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"1.2rem\",\"item_pd_right\":\"0\",\"item_pd_bottom\":\"1.2rem\",\"item_pd_left\":\"0\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"222222\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"FC8A35\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"FC8A35\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"1.5rem\",\"mega_menu_pd_right\":\"4.5rem\",\"mega_menu_pd_bottom\":\"2.2rem\",\"mega_menu_pd_left\":\"4.5rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"FC8A35\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FDB913\",\"third_item_font_weight_hover\":\"400\"}'),
(68, 'Store 3 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 3 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.47\",\"name\":\" Plaza Slider &gt; Home slideshow 3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.184\",\"name\":\" Plaza Static Block &gt; Banner Static Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=184\"},{\"code\":\"ptproducts.185\",\"name\":\" Plaza Products  &gt; Tabs Categories Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=185\"},{\"code\":\"ptstaticblock.186\",\"name\":\" Plaza Static Block &gt; Banner Center Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=186\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"home-moduls\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.187\",\"name\":\" Plaza Products  &gt; Onsale Products Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=187\"},{\"code\":\"ptstaticblock.188\",\"name\":\" Plaza Static Block &gt; Banner Center1 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=188\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.189\",\"name\":\" Plaza Products  &gt; Best Sellers Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=189\"},{\"code\":\"ptproducts.190\",\"name\":\" Plaza Products  &gt; New Product Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=190\"}]},\"format\":\"8\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptblog.72\",\"name\":\" Plaza Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=72\"},{\"code\":\"ptstaticblock.191\",\"name\":\" Plaza Static Block &gt; Banner Center2 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=191\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.192\",\"name\":\" Plaza Products  &gt; Tabs Categories1 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=192\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.193\",\"name\":\" Plaza Products  &gt; Tabs Categories2 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=193\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.194\",\"name\":\" Plaza Products  &gt; Tabs Categories3 Home3\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=194\"}]},\"format\":\"4\"}]},{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(69, 'Store 4 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 4 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"banner-home\",\"main_cols\":[{\"format\":\"3\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"}]},\"format\":\"12\"}]}]},{\"format\":\"9\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.50\",\"name\":\" Plaza Slider &gt; Home slideshow 4\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=50\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Banner Static Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=A8e4z5ZDyrTCGvaEuWnWV0wxB4LYf2Jg&amp;module_id=196\"},{\"code\":\"ptstaticblock.197\",\"name\":\" Plaza Static Block &gt; Banner Static1 Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=A8e4z5ZDyrTCGvaEuWnWV0wxB4LYf2Jg&amp;module_id=197\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"3\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.198\",\"name\":\" Plaza Products  &gt; Featured Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=A8e4z5ZDyrTCGvaEuWnWV0wxB4LYf2Jg&amp;module_id=198\"},{\"code\":\"ptstaticblock.199\",\"name\":\" Plaza Static Block &gt; Banner Static2 Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=bN79cPZiYqBxjdVQ9gZ09hMxiNsBa8Y6&amp;module_id=199\"},{\"code\":\"ptproducts.200\",\"name\":\" Plaza Products  &gt; Onsale Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=bN79cPZiYqBxjdVQ9gZ09hMxiNsBa8Y6&amp;module_id=200\"},{\"code\":\"pttestimonial.75\",\"name\":\" Plaza Testimonial &gt; Testimonial\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=bN79cPZiYqBxjdVQ9gZ09hMxiNsBa8Y6&amp;module_id=75\"}]},\"format\":\"12\"}]}]},{\"format\":\"9\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.201\",\"name\":\" Plaza Products  &gt; Tab Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=f5nggAom0NQNihdUpQQhojQybOhJZjTL&amp;module_id=201\"},{\"code\":\"ptstaticblock.202\",\"name\":\" Plaza Static Block &gt; Banner Center Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=f5nggAom0NQNihdUpQQhojQybOhJZjTL&amp;module_id=202\"},{\"code\":\"ptproducts.203\",\"name\":\" Plaza Products  &gt; Best Sellers Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=f5nggAom0NQNihdUpQQhojQybOhJZjTL&amp;module_id=203\"},{\"code\":\"ptproducts.204\",\"name\":\" Plaza Products  &gt; Tabs Categories Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=f5nggAom0NQNihdUpQQhojQybOhJZjTL&amp;module_id=204\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=f5nggAom0NQNihdUpQQhojQybOhJZjTL&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(71, 'Store 4 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Store 4 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.59\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 4\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=59\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"3\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.198\",\"name\":\" Plaza Products  &gt; Featured Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=198\"},{\"code\":\"ptstaticblock.199\",\"name\":\" Plaza Static Block &gt; Banner Static2 Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=199\"},{\"code\":\"ptproducts.200\",\"name\":\" Plaza Products  &gt; Onsale Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=200\"},{\"code\":\"pttestimonial.75\",\"name\":\" Plaza Testimonial &gt; Testimonial\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=75\"}]},\"format\":\"12\"}]}]},{\"format\":\"9\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.201\",\"name\":\" Plaza Products  &gt; Tab Products Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=201\"},{\"code\":\"ptstaticblock.202\",\"name\":\" Plaza Static Block &gt; Banner Center Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=202\"},{\"code\":\"ptproducts.203\",\"name\":\" Plaza Products  &gt; Best Sellers Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=203\"},{\"code\":\"ptproducts.204\",\"name\":\" Plaza Products  &gt; Tabs Categories Home4\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=204\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/tt_safira1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(72, 'Blog', 'ptblog', '{\"name\":\"Blog\",\"status\":\"1\",\"list\":\"1\",\"width\":\"350\",\"height\":\"270\",\"auto\":\"0\",\"items\":\"3\",\"speed\":\"1000\",\"rows\":\"1\",\"navigation\":\"1\",\"pagination\":\"0\"}'),
(97, 'Horizontal Menu 02', 'ptmenu', '{\"name\":\"Horizontal Menu 02\",\"status\":\"1\",\"menu\":\"5\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"80B82D\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"1.2rem\",\"item_pd_right\":\"0\",\"item_pd_bottom\":\"1.2rem\",\"item_pd_left\":\"0\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"222222\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"80B82D\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"80B82D\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"1.5rem\",\"mega_menu_pd_right\":\"4.5rem\",\"mega_menu_pd_bottom\":\"2.2rem\",\"mega_menu_pd_left\":\"4.5rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"80B82D\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FEBD69\",\"third_item_font_weight_hover\":\"400\"}'),
(98, 'Mobile Menu 02', 'ptmenu', '{\"name\":\"Mobile Menu 02\",\"status\":\"1\",\"menu\":\"6\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"uppercase\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"80B82D\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"300\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"400\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"300\",\"mega_menu_pd_top\":\"0px\",\"mega_menu_pd_right\":\"0px\",\"mega_menu_pd_bottom\":\"0px\",\"mega_menu_pd_left\":\"0px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"400\",\"second_item_font_color_hover\":\"80B82D\",\"second_item_font_weight_hover\":\"400\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FEBD69\",\"third_item_font_weight_hover\":\"400\"}'),
(190, 'New Product Home3', 'ptproducts', '{\"name\":\"New Product Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"New Products\",\"de-de\":\"New Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"8\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"products3\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"latest\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"190\"}'),
(188, 'Banner Center1 Home3', 'ptstaticblock', '{\"name\":\"Banner Center1 Home3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center1&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home3.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center1&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home3.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(189, 'Best Sellers Home3', 'ptproducts', '{\"name\":\"Best Sellers Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best Sellers\",\"de-de\":\"Best Sellers\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"6\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"products2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"189\"}'),
(179, 'Tab Products Home2', 'ptproducts', '{\"name\":\"Tab Products Home2\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Trending Products\",\"de-de\":\"Trending Products\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"212\",\"slider_height\":\"212\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"7\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Vegetables\",\"de-de\":\"Vegetables\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"18\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Fruits\",\"de-de\":\"Fruits\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"60\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Salads\",\"de-de\":\"Salads\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"80\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"179\"}'),
(107, 'Mobile Menu 03', 'ptmenu', '{\"name\":\"Mobile Menu 03\",\"status\":\"1\",\"menu\":\"8\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"242424\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"FC8A35\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"300\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"300\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"300\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"300\",\"mega_menu_pd_top\":\"0px\",\"mega_menu_pd_right\":\"0px\",\"mega_menu_pd_bottom\":\"0px\",\"mega_menu_pd_left\":\"0px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"400\",\"second_item_font_color_hover\":\"FC8A35\",\"second_item_font_weight_hover\":\"400\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FDB913\",\"third_item_font_weight_hover\":\"400\"}'),
(108, 'Vertical Menu 03', 'ptmenu', '{\"name\":\"Vertical Menu 03\",\"status\":\"1\",\"menu\":\"4\",\"effect\":\"none\",\"menu_bg\":\"FC8A35\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"1.2rem\",\"menu_pd_right\":\"2rem\",\"menu_pd_bottom\":\"1.2rem\",\"menu_pd_left\":\"2rem\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"FC8A35\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"0.6rem\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"0.5rem\",\"item_pd_left\":\"0\",\"item_show\":\"11\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"1E1E1E\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"FC8A35\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"FC8A35\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"2.5rem\",\"mega_menu_pd_right\":\"3rem\",\"mega_menu_pd_bottom\":\"2.5rem\",\"mega_menu_pd_left\":\"3rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"FC8A35\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FF5E00\",\"third_item_font_weight_hover\":\"400\"}'),
(176, 'Banner Left', 'ptstaticblock', '{\"name\":\"Banner Left\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-left&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/banner-left.jpg&quot; alt=&quot;banner-left&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-left&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/banner-left.jpg&quot; alt=&quot;banner-left&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(112, 'Horizontal Menu 04', 'ptmenu', '{\"name\":\"Horizontal Menu 04\",\"status\":\"1\",\"menu\":\"10\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"222222\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"500\",\"item_font_color_hover\":\"CF1F1F\",\"item_font_weight_hover\":\"500\",\"item_pd_top\":\"1.2rem\",\"item_pd_right\":\"0\",\"item_pd_bottom\":\"1.2rem\",\"item_pd_left\":\"0\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"222222\",\"mega_sub_item_font_size\":\"1.5rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"500\",\"mega_sub_item_hover_font_color\":\"CF1F1F\",\"mega_sub_item_hover_font_weight\":\"500\",\"mega_sub_sub_item_font_color\":\"777777\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"CF1F1F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"1.5rem\",\"mega_menu_pd_right\":\"4.5rem\",\"mega_menu_pd_bottom\":\"2.2rem\",\"mega_menu_pd_left\":\"4.5rem\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.5rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"500\",\"second_item_font_color_hover\":\"CF1F1F\",\"second_item_font_weight_hover\":\"500\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FF5E00\",\"third_item_font_weight_hover\":\"400\"}'),
(175, 'Social', 'ptstaticblock', '{\"name\":\"Social\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;ul&gt;\\r\\n\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot;&gt;Twitter&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;https:\\/\\/plus.google.com\\/+PlazaThemesMagento\\/posts&quot; target=&quot;_blank&quot;&gt;Google +&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot;&gt;YouTube&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;https:\\/\\/www.facebook.com\\/plazathemes1&quot; target=&quot;_blank&quot;&gt;Facebook&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot; target=&quot;_blank&quot;&gt;Instagram&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n  &lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;ul&gt;\\r\\n\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot;&gt;Twitter&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;https:\\/\\/plus.google.com\\/+PlazaThemesMagento\\/posts&quot; target=&quot;_blank&quot;&gt;Google +&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot;&gt;YouTube&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;https:\\/\\/www.facebook.com\\/plazathemes1&quot; target=&quot;_blank&quot;&gt;Facebook&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot; target=&quot;_blank&quot;&gt;Instagram&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n  &lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(177, 'Banner Detal', 'ptstaticblock', '{\"name\":\"Banner Detal\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-detal&quot;&gt;\\r\\n\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-detal.jpg&quot; alt=&quot;detal&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Free Shipping Ships Today&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-detal.jpg&quot; alt=&quot;detal1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Easy Returns&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-detal.jpg&quot; alt=&quot;detal2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Lowest Price Guarantee&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-detal&quot;&gt;\\r\\n\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-detal.jpg&quot; alt=&quot;detal&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Free Shipping Ships Today&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-detal.jpg&quot; alt=&quot;detal1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Easy Returns&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-detal.jpg&quot; alt=&quot;detal2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t&lt;p&gt;Lowest Price Guarantee&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(174, 'Paypal', 'ptstaticblock', '{\"name\":\"Paypal\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-paypal&quot;&gt;\\r\\n\\t&lt;ul&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal.jpg&quot; alt=&quot;paypal&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal1.jpg&quot; alt=&quot;paypal1&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal2.jpg&quot; alt=&quot;paypal2&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal3.jpg&quot; alt=&quot;paypal3&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-paypal&quot;&gt;\\r\\n\\t&lt;ul&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal.jpg&quot; alt=&quot;paypal&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal1.jpg&quot; alt=&quot;paypal1&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal2.jpg&quot; alt=&quot;paypal2&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/paypal3.jpg&quot; alt=&quot;paypal3&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(173, 'Featured Products Home1', 'ptproducts', '{\"name\":\"Featured Products Home1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Featured Products\",\"de-de\":\"Featured Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"12\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"products4\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"28\",\"41\",\"40\",\"113\",\"48\",\"36\",\"97\",\"44\",\"98\",\"116\",\"134\",\"117\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"173\"}'),
(172, 'Mosview Products Home1', 'ptproducts', '{\"name\":\"Mosview Products Home1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Mostview Products\",\"de-de\":\"Mostview Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"212\",\"slider_height\":\"212\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"7\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"products3\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"172\"}'),
(187, 'Onsale Products Home3', 'ptproducts', '{\"name\":\"Onsale Products Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Deals Of The Weeks\",\"de-de\":\"Deals Of The Weeks\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"3\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"other\",\"layout_classname\":\"products1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"1\",\"show_quickview\":\"0\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"special\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"187\"}'),
(147, 'Mobile Menu 04', 'ptmenu', '{\"name\":\"Mobile Menu 04\",\"status\":\"1\",\"menu\":\"11\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"242424\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"222222\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"CF1F1F\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"300\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"300\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"300\",\"mega_menu_pd_top\":\"0\",\"mega_menu_pd_right\":\"0\",\"mega_menu_pd_bottom\":\"0\",\"mega_menu_pd_left\":\"0\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"222222\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"400\",\"second_item_font_color_hover\":\"CF1F1F\",\"second_item_font_weight_hover\":\"400\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"777777\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"FF5F00\",\"third_item_font_weight_hover\":\"400\"}');
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(201, 'Tab Products Home4', 'ptproducts', '{\"name\":\"Tab Products Home4\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Trending Products\",\"de-de\":\"Trending Products\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"8\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"tabproducts1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"New Products\",\"de-de\":\"New Products\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"latest\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"MostViewed Products\",\"de-de\":\"MostViewed Products\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"mostviewed\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"201\"}'),
(203, 'Best Sellers Home4', 'ptproducts', '{\"name\":\"Best Sellers Home4\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best Sellers\",\"de-de\":\"Best Sellers\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"160\",\"slider_height\":\"160\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"6\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"products3\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"203\"}'),
(202, 'Banner Center Home4', 'ptstaticblock', '{\"name\":\"Banner Center Home4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home4.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home4.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center&quot;&gt;\\r\\n\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home4.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home4.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(204, 'Tabs Categories Home4', 'ptproducts', '{\"name\":\"Tabs Categories Home4\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Our Products\",\"de-de\":\"Our Products\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"3\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"6\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"tabcategories1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Vegetables\",\"de-de\":\"Vegetables\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"18\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Fruits\",\"de-de\":\"Fruits\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"60\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Salads\",\"de-de\":\"Salads\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"80\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"204\"}'),
(197, 'Banner Static1 Home4', 'ptstaticblock', '{\"name\":\"Banner Static1 Home4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static1&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home2.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-5 col-sm-5 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home2.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-3 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row1&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home2.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row2&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home2.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static1&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home2.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-5 col-sm-5 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block1-home2.jpg&quot; alt=&quot;block1&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-3 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row1&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block2-home2.jpg&quot; alt=&quot;block2&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;row2&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home2.jpg&quot; alt=&quot;block3&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(198, 'Featured Products Home4', 'ptproducts', '{\"name\":\"Featured Products Home4\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Featured Products\",\"de-de\":\"Featured Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"90\",\"slider_height\":\"90\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"4\",\"s_tablet\":\"4\",\"mobile\":\"4\",\"s_mobile\":\"4\"},\"limit\":\"8\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"products1\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"28\",\"41\",\"40\",\"113\",\"48\",\"36\",\"97\",\"44\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"198\"}'),
(199, 'Banner Static2 Home4', 'ptstaticblock', '{\"name\":\"Banner Static2 Home4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static2&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home4.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static2&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/block-home4.jpg&quot; alt=&quot;block&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(200, 'Onsale Products Home4', 'ptproducts', '{\"name\":\"Onsale Products Home4\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Hot Deals\",\"de-de\":\"Hot Deals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"500\",\"slider_height\":\"500\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"3\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"products2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"special\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"200\"}'),
(196, 'Banner Static Home4', 'ptstaticblock', '{\"name\":\"Banner Static Home4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home4.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home4.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home4.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home4.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home4.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home4.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home4.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home4.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(170, 'Banner Center1 Home12', 'ptstaticblock', '{\"name\":\"Banner Center1 Home12\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center2&quot;&gt;\\r\\n\\t&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home1.jpg&quot; alt=&quot;block3&quot;&gt;\\r\\n\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t&lt;p&gt;Black Fridays !&lt;\\/p&gt;\\r\\n\\t\\t&lt;h2&gt;Sale 50% OFf&lt;span&gt;all vegetable products&lt;\\/span&gt;&lt;\\/h2&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;discover now&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-center2&quot;&gt;\\r\\n\\t&lt;img src=&quot;image\\/catalog\\/ptblock\\/block3-home1.jpg&quot; alt=&quot;block3&quot;&gt;\\r\\n\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t&lt;p&gt;Black Fridays !&lt;\\/p&gt;\\r\\n\\t\\t&lt;h2&gt;Sale 50% OFf&lt;span&gt;all vegetable products&lt;\\/span&gt;&lt;\\/h2&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot;&gt;discover now&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(171, 'Best Sellers Home1', 'ptproducts', '{\"name\":\"Best Sellers Home1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best Sellers\",\"de-de\":\"Best Sellers\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"1\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"9\",\"speed\":\"1000\",\"navigation\":\"0\",\"pagination\":\"1\",\"layout_type\":\"image\",\"product_layout_type\":\"list\",\"layout_classname\":\"products2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"350\",\"single_image_height\":\"432\",\"single_image\":\"catalog\\/ptblock\\/block4-home1.jpg\",\"single_image_link\":\"#\",\"module_id\":\"171\"}'),
(167, 'Tab Products Home1', 'ptproducts', '{\"name\":\"Tab Products Home1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Trending Products\",\"de-de\":\"Trending Products\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"Recently added our store\",\"de-de\":\"Recently added our store\"},\"slider_width\":\"212\",\"slider_height\":\"212\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"12\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Vegetables\",\"de-de\":\"Vegetables\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"18\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Fruits\",\"de-de\":\"Fruits\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"60\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Salads\",\"de-de\":\"Salads\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"80\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"167\"}'),
(166, 'Banner Static Home1', 'ptstaticblock', '{\"name\":\"Banner Static Home1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home1.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home1.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home1.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home1.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-static&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col1&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon-home1.jpg&quot; alt=&quot;icon&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Free Shipping&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Free shipping on all US order or order above $200&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon1-home1.jpg&quot; alt=&quot;icon1&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;Support 24\\/7&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Contact us 24 hours a day, 7 days a week&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon2-home1.jpg&quot; alt=&quot;icon2&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;30 Days Return&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;Simply return it within 30 days for an exchange&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col col4&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/icon3-home1.jpg&quot; alt=&quot;icon3&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-content&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;h2&gt;100% Payment Secure&lt;\\/h2&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;We ensure secure payment with PEV&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(193, 'Tabs Categories2 Home3', 'ptproducts', '{\"name\":\"Tabs Categories2 Home3\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Salads\",\"de-de\":\"Salads\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"120\",\"slider_height\":\"120\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"6\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"tabcategories2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"Salads\",\"de-de\":\"\"},\"title_image\":\"\",\"product_collection\":\"category\",\"category\":\"80\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"193\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 4),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(5, 1, 'Color Option'),
(10, 6, 'Date &amp; Time'),
(9, 6, 'Time'),
(7, 6, 'File'),
(8, 6, 'Date'),
(6, 6, 'Textarea'),
(4, 6, 'Text'),
(2, 6, 'Checkbox'),
(1, 6, 'Radio'),
(12, 6, 'Delivery Date'),
(11, 6, 'Size'),
(5, 6, 'Color Option');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(31, 1, '', 2),
(45, 2, '', 4),
(44, 2, '', 3),
(58, 5, 'catalog/color-option/Pink.jpg', 11),
(32, 1, '', 1),
(23, 2, '', 1),
(24, 2, '', 2),
(48, 11, '', 3),
(47, 11, '', 2),
(46, 11, '', 1),
(54, 5, 'catalog/color-option/LightSteelBlue.jpg', 10),
(53, 5, 'catalog/color-option/Blue.jpg', 9),
(52, 5, 'catalog/color-option/Brown.jpg', 8),
(51, 5, 'catalog/color-option/Gray.jpg', 7),
(50, 5, 'catalog/color-option/White.jpg', 6),
(49, 5, 'catalog/color-option/Green.jpg', 5),
(42, 5, 'catalog/color-option/Purple.jpg', 4),
(41, 5, 'catalog/color-option/Black.jpg', 3),
(55, 11, '', 4),
(56, 11, '', 5),
(57, 11, '', 6),
(40, 5, 'catalog/color-option/Orange.jpg', 2),
(39, 5, 'catalog/color-option/Red.jpg', 1),
(59, 5, 'catalog/color-option/DarkTan.jpg', 12),
(60, 5, 'catalog/color-option/Yellow.jpg', 13),
(61, 5, 'catalog/color-option/GreenYellow.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(31, 1, 1, 'Medium'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(32, 1, 1, 'Small'),
(58, 1, 5, 'Pink'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'M'),
(54, 1, 5, 'LightSteelBlue'),
(53, 1, 5, 'Blue'),
(52, 1, 5, 'Brown'),
(51, 1, 5, 'Gray'),
(47, 1, 11, 'S'),
(46, 1, 11, 'XS'),
(50, 1, 5, 'White'),
(49, 1, 5, 'Green'),
(42, 1, 5, 'Purple'),
(41, 1, 5, 'Black'),
(55, 1, 11, 'L'),
(56, 1, 11, 'XL'),
(57, 1, 11, 'XXL'),
(40, 1, 5, 'Orange'),
(39, 1, 5, 'Red'),
(59, 1, 5, 'DarkTan'),
(60, 1, 5, 'Yellow'),
(61, 1, 5, 'GreenYellow'),
(55, 6, 11, 'L'),
(41, 6, 5, 'Black'),
(42, 6, 5, 'Purple'),
(49, 6, 5, 'Green'),
(50, 6, 5, 'White'),
(46, 6, 11, 'XS'),
(47, 6, 11, 'S'),
(51, 6, 5, 'Gray'),
(52, 6, 5, 'Brown'),
(53, 6, 5, 'Blue'),
(54, 6, 5, 'LightSteelBlue'),
(48, 6, 11, 'M'),
(24, 6, 2, 'Checkbox 2'),
(23, 6, 2, 'Checkbox 1'),
(58, 6, 5, 'Pink'),
(32, 6, 1, 'Small'),
(44, 6, 2, 'Checkbox 3'),
(45, 6, 2, 'Checkbox 4'),
(31, 6, 1, 'Medium'),
(43, 6, 1, 'Large'),
(56, 6, 11, 'XL'),
(57, 6, 11, 'XXL'),
(40, 6, 5, 'Orange'),
(39, 6, 5, 'Red'),
(59, 6, 5, 'DarkTan'),
(60, 6, 5, 'Yellow'),
(61, 6, 5, 'GreenYellow');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2019-00', 2, 'Store 3', 'http://ocframe3.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '4513.1760', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2019-01-25 10:21:56', '2019-01-25 10:22:03'),
(2, 0, 'INV-2019-00', 3, 'Store 4', 'http://corano4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1592886.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-03-07 15:34:33', '2019-03-07 15:34:45'),
(3, 0, 'INV-2019-00', 3, 'Store 4', 'http://ostromi4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '3831.2000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-04-08 16:01:24', '2019-04-08 16:01:30'),
(4, 0, 'INV-2019-00', 3, 'Store 4', 'http://ostromi4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '590.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-04-08 16:21:05', '2019-04-08 16:21:10'),
(5, 0, 'INV-2019-00', 0, 'Safira1', 'http://tt_safira1.com/', 2, 1, 'plaza', 'themes', 'demo1@plazathemes.com', '1234567890', '', '', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Cash On Delivery', 'cod', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '950.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2019-05-09 10:24:27', '2019-05-09 10:25:29'),
(6, 0, 'INV-2019-00', 0, 'Safira1', 'http://tt_safira1.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '420.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2019-05-10 16:40:17', '2019-05-10 16:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2019-01-25 10:22:01'),
(2, 1, 1, 0, '', '2019-01-25 10:22:03'),
(3, 2, 1, 0, '', '2019-03-07 15:34:39'),
(4, 2, 1, 0, '', '2019-03-07 15:34:45'),
(5, 3, 1, 0, '', '2019-04-08 16:01:28'),
(6, 3, 1, 0, '', '2019-04-08 16:01:30'),
(7, 4, 1, 0, '', '2019-04-08 16:21:08'),
(8, 4, 1, 0, '', '2019-04-08 16:21:10'),
(9, 5, 1, 0, '', '2019-05-09 10:25:21'),
(10, 5, 1, 0, '', '2019-05-09 10:25:29'),
(11, 6, 1, 0, '', '2019-05-10 16:40:21'),
(12, 6, 1, 0, '', '2019-05-10 16:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 3, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(2, 1, 7, 224, 13, 'Size', 'S', 'select'),
(3, 2, 12, 217, 2, 'Color Option', 'Purple', 'select'),
(4, 2, 12, 223, 8, 'Checkbox', 'Checkbox 1', 'checkbox'),
(5, 2, 12, 208, 0, 'Text', 'test', 'text'),
(6, 2, 12, 218, 5, 'Radio', 'Small', 'radio'),
(7, 2, 12, 209, 0, 'Textarea', 'Textarea', 'textarea'),
(8, 2, 12, 222, 0, 'File', '588b8e0c252415d9b2afc08ec094fdc9f226be69', 'file'),
(9, 2, 12, 219, 0, 'Date', '2011-02-20', 'date'),
(10, 2, 12, 221, 0, 'Time', '22:25', 'time'),
(11, 2, 12, 220, 0, 'Date &amp; Time', '2011-02-20 22:25', 'datetime'),
(12, 3, 17, 316, 0, 'Delivery Date', '2011-04-22', 'date'),
(13, 3, 21, 317, 183, 'Color Option', 'Orange', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 48, 'iPod Classic 160GB 7th Generation', 'product 20', 1, '100.0000', '100.0000', '22.0000', 0),
(2, 1, 34, 'Apple iPod shuffle 2 GB Black (3rd Generation)', 'Product 7', 1, '100.0000', '100.0000', '22.0000', 0),
(3, 1, 47, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'Product 21', 1, '100.0000', '100.0000', '22.0000', 300),
(4, 1, 29, 'Palm Treo Pro Unlocked Phone with 2 MP Camera', 'Product 2', 1, '279.9900', '279.9900', '57.9980', 0),
(5, 1, 33, 'Samsung SyncMaster 2443BW - LCD monitor - 24&quot; Series', 'Product 6', 1, '200.0000', '200.0000', '42.0000', 0),
(6, 1, 46, 'Sony Vaio VPCS125FG (Intel Core i3-350M 2.26GHz, 4GB RAM)', 'Product 19', 1, '800.0000', '800.0000', '162.0000', 0),
(7, 1, 35, 'ViewSonic VP3268-4K PRO 32&quot; 4K Monitor with 100% sRGB', 'Product 8', 1, '110.0000', '110.0000', '24.0000', 0),
(8, 1, 30, 'Canon EOS 5D 12.8 MP Digital SLR Camera', 'Product 3', 1, '80.0000', '80.0000', '18.0000', 200),
(9, 1, 49, 'SAMSUNG Galaxy Tab E 9.6&quot; 16GB Android 6.0', 'SAM1', 1, '199.9900', '199.9900', '41.9980', 1000),
(10, 1, 45, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Product 18', 1, '2000.0000', '2000.0000', '0.0000', 800),
(11, 1, 40, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'product 11', 1, '101.0000', '101.0000', '22.2000', 0),
(12, 2, 42, 'Apple Cinema 30-inch HD Flat-Panel Display', 'Product 15', 40, '100.0000', '4000.0000', '22.0000', 4000),
(13, 2, 41, 'iMac 4K 21.5-inch 2017 Mac Center', 'Product 14', 334, '90.0000', '30060.0000', '20.0000', 0),
(14, 2, 45, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Product 18', 555, '1900.0000', '1054500.0000', '0.0000', 444000),
(15, 2, 29, 'Palm Treo Pro Unlocked Phone with 2 MP Camera', 'Product 2', 244, '200.0000', '48800.0000', '42.0000', 0),
(16, 2, 46, 'Sony Vaio VPCS125FG (Intel Core i3-350M 2.26GHz, 4GB RAM)', 'Product 19', 455, '800.0000', '364000.0000', '162.0000', 0),
(17, 3, 128, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'Store456', 1, '100.0000', '100.0000', '22.0000', 300),
(18, 3, 129, 'HTC Touch HD Windows Mobile smartphone', 'Store456', 1, '100.0000', '100.0000', '22.0000', 400),
(19, 3, 130, 'iMac 4K 21.5-inch 2017 Mac Center', 'Store456', 1, '90.0000', '90.0000', '20.0000', 0),
(20, 3, 131, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'Store456', 1, '101.0000', '101.0000', '22.2000', 0),
(21, 3, 132, 'iPod Classic 160GB 7th Generation', 'Store456', 1, '100.0000', '100.0000', '22.0000', 0),
(22, 3, 133, 'iPod nano 8 GB 2nd Generation (Black)', 'Store456', 1, '100.0000', '100.0000', '22.0000', 0),
(23, 3, 134, 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', 'Store456', 1, '1000.0000', '1000.0000', '202.0000', 700),
(24, 3, 136, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Store456', 1, '1900.0000', '1900.0000', '0.0000', 800),
(25, 4, 130, 'iMac 4K 21.5-inch 2017 Mac Center', 'Store456', 1, '90.0000', '90.0000', '20.0000', 0),
(26, 4, 139, 'Samsung SyncMaster 2443BW - LCD monitor - 24&quot; Series', 'Store456', 1, '190.0000', '190.0000', '40.0000', 0),
(27, 4, 138, 'SAMSUNG Galaxy Tab E 9.6&quot; 16GB Android 6.0', 'Store456', 1, '200.0000', '200.0000', '42.0000', 1000),
(28, 5, 98, 'Mauris Vel Tellus', 'Store1', 1, '180.0000', '180.0000', '38.0000', 700),
(29, 5, 117, 'Quisque In Arcu', 'Store1', 1, '500.0000', '500.0000', '102.0000', 600),
(30, 5, 97, 'Letraset Sheets', 'Store1', 1, '100.0000', '100.0000', '22.0000', 0),
(31, 6, 44, 'Lorem Ipsum Lec', 'Store1', 1, '210.0000', '210.0000', '44.0000', 700),
(32, 6, 113, 'Donec Non Est', 'Store1', 1, '130.0000', '130.0000', '28.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE IF NOT EXISTS `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(14, 6, 'Expired'),
(15, 6, 'Processed'),
(16, 6, 'Voided'),
(1, 6, 'Pending'),
(13, 6, 'Chargeback'),
(12, 6, 'Reversed'),
(11, 6, 'Refunded'),
(10, 6, 'Failed'),
(9, 6, 'Canceled Reversal'),
(8, 6, 'Denied'),
(5, 6, 'Complete'),
(7, 6, 'Canceled'),
(3, 6, 'Shipped'),
(2, 6, 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '4070.9800', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '22.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '415.1960', 5),
(5, 1, 'total', 'Total', '4513.1760', 9),
(6, 2, 'sub_total', 'Sub-Total', '1501360.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '2148.0000', 5),
(9, 2, 'tax', 'VAT (20%)', '89373.0000', 5),
(10, 2, 'total', 'Total', '1592886.0000', 9),
(11, 3, 'sub_total', 'Sub-Total', '3491.0000', 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(13, 3, 'tax', 'Eco Tax (-2.00)', '16.0000', 5),
(14, 3, 'tax', 'VAT (20%)', '319.2000', 5),
(15, 3, 'total', 'Total', '3831.2000', 9),
(16, 4, 'sub_total', 'Sub-Total', '480.0000', 1),
(17, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 4, 'tax', 'Eco Tax (-2.00)', '8.0000', 5),
(19, 4, 'tax', 'VAT (20%)', '97.0000', 5),
(20, 4, 'total', 'Total', '590.0000', 9),
(21, 5, 'sub_total', 'Sub-Total', '780.0000', 1),
(22, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(23, 5, 'tax', 'Eco Tax (-2.00)', '8.0000', 5),
(24, 5, 'tax', 'VAT (20%)', '157.0000', 5),
(25, 5, 'total', 'Total', '950.0000', 9),
(26, 6, 'sub_total', 'Sub-Total', '340.0000', 1),
(27, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(28, 6, 'tax', 'Eco Tax (-2.00)', '6.0000', 5),
(29, 6, 'tax', 'VAT (20%)', '69.0000', 5),
(30, 6, 'total', 'Total', '420.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(36, 'Store1', '', '', '', '', '', '', '', 994, 6, 'catalog/products/1/6.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2019-08-30 16:26:06'),
(40, 'Store1', '', '', '', '', '', '', '', 969, 5, 'catalog/products/1/3.jpg', 8, 1, '360.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2019-05-14 15:59:13'),
(41, 'Store1', '', '', '', '', '', '', '', 643, 5, 'catalog/products/1/2.jpg', 8, 1, '300.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2019-08-30 16:23:33'),
(43, 'Store1', '', '', '', '', '', '', '', 927, 5, 'catalog/products/1/13.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2019-05-07 15:21:33'),
(44, 'Store1', '', '', '', '', '', '', '', 998, 5, 'catalog/products/1/8.jpg', 8, 1, '210.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2019-05-08 15:02:05'),
(48, 'Store1', 'test 1', '', '', '', '', '', 'test 2', 993, 5, 'catalog/products/1/5.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2019-08-30 16:25:03'),
(99, 'Store1', '', '', '', '', '', '', '', 927, 5, 'catalog/products/1/14.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-01 09:37:13', '2019-08-30 16:29:36'),
(98, 'Store1', '', '', '', '', '', '', '', 998, 5, 'catalog/products/1/9.jpg', 8, 1, '430.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-01 09:37:13', '2019-05-08 14:48:20'),
(97, 'Store1', '', '', '', '', '', '', '', 993, 6, 'catalog/products/1/7.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-01 09:37:13', '2019-08-30 16:26:37'),
(117, 'Store1', '', '', '', '', '', '', '', 926, 5, 'catalog/products/1/12.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-04 09:02:22', '2019-05-07 15:18:21'),
(116, 'Store1', '', '', '', '', '', '', '', 999, 5, 'catalog/products/1/10.jpg', 8, 1, '280.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-04 09:02:22', '2019-05-08 14:47:15'),
(113, 'Store1', '', '', '', '', '', '', '', 968, 5, 'catalog/products/1/4.jpg', 8, 1, '250.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2019-04-04 09:02:21', '2019-06-01 09:37:58'),
(28, 'Store1', '', '', '', '', '', '', '', 938, 7, 'catalog/products/1/1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2009-02-03 16:06:50', '2019-08-30 16:21:57'),
(134, 'Store1', '', '', '', '', '', '', '', 998, 5, 'catalog/products/1/11.jpg', 8, 1, '320.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2019-04-07 10:07:24', '2019-08-30 16:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_advertise_google`
--

DROP TABLE IF EXISTS `oc_product_advertise_google`;
CREATE TABLE IF NOT EXISTS `oc_product_advertise_google` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_advertise_google`
--

INSERT INTO `oc_product_advertise_google` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(10, 97, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 98, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 99, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 113, 1, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 116, 1, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 117, 1, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 134, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_advertise_google_status`
--

DROP TABLE IF EXISTS `oc_product_advertise_google_status`;
CREATE TABLE IF NOT EXISTS `oc_product_advertise_google_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_advertise_google_target`
--

DROP TABLE IF EXISTS `oc_product_advertise_google_target`;
CREATE TABLE IF NOT EXISTS `oc_product_advertise_google_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 5, '8gb'),
(43, 2, 5, '1'),
(99, 4, 5, '8gb'),
(99, 4, 1, '8gb'),
(117, 2, 5, '1'),
(43, 4, 1, '8gb'),
(43, 2, 1, '1'),
(99, 2, 1, '1'),
(99, 2, 5, '1'),
(117, 4, 1, '8gb'),
(117, 4, 5, '8gb'),
(117, 2, 1, '1'),
(99, 4, 6, '8gb'),
(43, 4, 6, '8gb'),
(43, 2, 6, '1'),
(99, 2, 6, '1'),
(117, 4, 6, '8gb'),
(117, 2, 6, '1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(117, 6, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Quisque In Arcu', '', ''),
(48, 1, 'Etiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Etiam Gravida', '', ''),
(40, 1, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Donec Ac Tempus', '', ''),
(113, 6, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Donec Non Est', '', ''),
(44, 1, 'Lorem Ipsum Lec', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Lorem Ipsum Lec', '', ''),
(98, 1, 'Mauris Vel Tellus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Mauris Vel Tellus', '', ''),
(99, 6, 'Tellus Arcu Non', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Tellus Arcu Non', '', ''),
(97, 6, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Letraset Sheets', '', ''),
(43, 6, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Ras Neque Metus', '', ''),
(116, 1, 'Nunc Neque Eros', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Nunc Neque Eros', '', ''),
(134, 1, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Proin Lectus Ipsum', '', ''),
(36, 6, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Fusce Aliquam', '', ''),
(28, 1, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Aliquam Consequat', '', ''),
(41, 6, 'Cas Meque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Cas Meque Metus', '', ''),
(41, 1, 'Cas Meque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Cas Meque Metus', '', ''),
(28, 6, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Aliquam Consequat', '', ''),
(134, 6, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Proin Lectus Ipsum', '', ''),
(36, 1, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Fusce Aliquam', '', ''),
(116, 6, 'Nunc Neque Eros', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Nunc Neque Eros', '', ''),
(43, 1, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Ras Neque Metus', '', ''),
(97, 1, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Letraset Sheets', '', ''),
(98, 6, 'Mauris Vel Tellus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Mauris Vel Tellus', '', ''),
(99, 1, 'Tellus Arcu Non', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Tellus Arcu Non', '', ''),
(44, 6, 'Lorem Ipsum Lec', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Lorem Ipsum Lec', '', ''),
(113, 1, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Donec Non Est', '', ''),
(40, 6, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Donec Ac Tempus', '', ''),
(117, 1, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Quisque In Arcu', '', ''),
(48, 6, 'Etiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', 'Plazathemes, Table, Woo, e-Commerce', 'Etiam Gravida', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=726 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17),
(28, 18),
(28, 19),
(28, 20),
(28, 21),
(36, 1),
(36, 2),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(36, 15),
(36, 16),
(36, 19),
(36, 21),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(40, 7),
(40, 8),
(40, 9),
(40, 10),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(40, 15),
(40, 16),
(40, 17),
(40, 18),
(40, 19),
(40, 20),
(40, 21),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(41, 8),
(41, 9),
(41, 10),
(41, 11),
(41, 12),
(41, 13),
(41, 14),
(41, 15),
(41, 16),
(41, 17),
(41, 18),
(41, 19),
(41, 20),
(41, 21),
(43, 1),
(43, 3),
(43, 4),
(43, 6),
(43, 7),
(43, 8),
(43, 10),
(43, 12),
(43, 13),
(43, 14),
(43, 15),
(43, 16),
(43, 17),
(43, 18),
(44, 1),
(44, 4),
(44, 6),
(44, 7),
(44, 8),
(44, 11),
(44, 12),
(44, 13),
(44, 15),
(44, 16),
(44, 17),
(44, 19),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(48, 7),
(48, 8),
(48, 9),
(48, 10),
(48, 11),
(48, 12),
(48, 13),
(48, 14),
(48, 15),
(48, 16),
(48, 17),
(48, 19),
(48, 20),
(48, 21),
(97, 1),
(97, 3),
(97, 6),
(97, 7),
(97, 10),
(97, 11),
(97, 12),
(97, 13),
(97, 14),
(97, 18),
(97, 19),
(98, 1),
(98, 3),
(98, 4),
(98, 5),
(98, 7),
(98, 8),
(98, 11),
(98, 12),
(98, 13),
(98, 14),
(98, 15),
(98, 16),
(98, 18),
(98, 19),
(98, 20),
(99, 1),
(99, 2),
(99, 3),
(99, 6),
(99, 7),
(99, 8),
(99, 9),
(99, 11),
(99, 12),
(99, 13),
(99, 14),
(99, 15),
(99, 16),
(99, 17),
(99, 18),
(99, 19),
(99, 20),
(113, 1),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(113, 6),
(113, 7),
(113, 8),
(113, 9),
(113, 10),
(113, 11),
(113, 12),
(113, 13),
(113, 14),
(113, 15),
(113, 16),
(113, 17),
(113, 18),
(113, 19),
(113, 20),
(113, 21),
(116, 1),
(116, 2),
(116, 3),
(116, 4),
(116, 6),
(116, 10),
(116, 11),
(116, 12),
(116, 13),
(116, 14),
(116, 16),
(116, 17),
(116, 19),
(117, 1),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(117, 6),
(117, 7),
(117, 8),
(117, 10),
(117, 11),
(117, 12),
(117, 13),
(117, 14),
(117, 15),
(117, 16),
(117, 17),
(117, 19),
(117, 20),
(134, 1),
(134, 2),
(134, 3),
(134, 4),
(134, 6),
(134, 9),
(134, 10),
(134, 11),
(134, 13),
(134, 14),
(134, 15),
(134, 16),
(134, 18),
(134, 19),
(134, 20);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `is_rotate` tinyint(1) DEFAULT '0',
  `product_option_value_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7299 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `is_rotate`, `product_option_value_id`) VALUES
(7178, 43, 'catalog/products/1/6.jpg', 0, 0, NULL),
(7177, 43, 'catalog/products/1/13.jpg', 0, 0, NULL),
(7176, 43, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7175, 43, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7260, 48, 'catalog/products/1/9.jpg', 0, 1, NULL),
(7259, 48, 'catalog/products/1/8.jpg', 0, 0, NULL),
(7258, 48, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7257, 48, 'catalog/products/1/4.jpg', 0, 0, NULL),
(7174, 43, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7249, 41, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7250, 41, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7251, 41, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7252, 41, 'catalog/products/1/14.jpg', 0, 0, NULL),
(7242, 28, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7241, 28, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7240, 28, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7239, 28, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7238, 28, 'catalog/products/1/4.jpg', 0, 0, NULL),
(7227, 40, 'catalog/products/1/8.jpg', 0, 0, NULL),
(7226, 40, 'catalog/products/1/1.jpg', 0, 1, NULL),
(7225, 40, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7223, 40, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7224, 40, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7265, 36, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7266, 36, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7267, 36, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7248, 41, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7218, 44, 'catalog/products/1/4.jpg', 0, 1, NULL),
(7219, 44, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7220, 44, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7221, 44, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7222, 44, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7268, 36, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7217, 98, 'catalog/products/1/1.jpg', 0, 1, NULL),
(7216, 98, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7215, 98, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7214, 98, 'catalog/products/1/5.jpg', 0, 0, NULL),
(7288, 99, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7287, 99, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7286, 99, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7285, 99, 'catalog/products/1/8.jpg', 0, 0, NULL),
(7284, 99, 'catalog/products/1/9.jpg', 0, 0, NULL),
(7213, 98, 'catalog/products/1/8.jpg', 0, 0, NULL),
(7278, 97, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7274, 97, 'catalog/products/1/9.jpg', 0, 0, NULL),
(7275, 97, 'catalog/products/1/3.jpg', 0, 0, NULL),
(7276, 97, 'catalog/products/1/1.jpg', 0, 1, NULL),
(7277, 97, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7173, 117, 'catalog/products/1/8.jpg', 0, 0, NULL),
(7172, 117, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7171, 117, 'catalog/products/1/5.jpg', 0, 0, NULL),
(7170, 117, 'catalog/products/1/13.jpg', 0, 0, NULL),
(7169, 117, 'catalog/products/1/1.jpg', 0, 0, NULL),
(7209, 116, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7210, 116, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7211, 116, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7212, 116, 'catalog/products/1/6.jpg', 0, 0, NULL),
(7228, 113, 'catalog/products/1/9.jpg', 0, 0, NULL),
(7229, 113, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7230, 113, 'catalog/products/1/11.jpg', 0, 0, NULL),
(7231, 113, 'catalog/products/1/10.jpg', 0, 0, NULL),
(7232, 113, 'catalog/products/1/1.jpg', 0, 1, NULL),
(7298, 134, 'catalog/products/1/12.jpg', 0, 0, NULL),
(7297, 134, 'catalog/products/1/5.jpg', 0, 0, NULL),
(7296, 134, 'catalog/products/1/4.jpg', 0, 0, NULL),
(7295, 134, 'catalog/products/1/7.jpg', 0, 0, NULL),
(7294, 134, 'catalog/products/1/8.jpg', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 36),
(28, 40),
(28, 41),
(28, 44),
(28, 48),
(28, 97),
(28, 99),
(28, 113),
(28, 134),
(36, 28),
(36, 36),
(36, 40),
(36, 41),
(36, 44),
(36, 48),
(36, 97),
(36, 98),
(36, 99),
(36, 113),
(36, 116),
(36, 134),
(40, 28),
(40, 36),
(40, 40),
(40, 41),
(40, 44),
(40, 48),
(40, 97),
(40, 99),
(40, 113),
(40, 134),
(41, 28),
(41, 36),
(41, 40),
(41, 41),
(41, 44),
(41, 48),
(41, 97),
(41, 98),
(41, 99),
(41, 113),
(41, 134),
(44, 28),
(44, 36),
(44, 40),
(44, 41),
(44, 48),
(44, 99),
(44, 113),
(44, 134),
(48, 28),
(48, 36),
(48, 40),
(48, 41),
(48, 44),
(48, 48),
(48, 97),
(48, 98),
(48, 99),
(48, 113),
(48, 134),
(97, 28),
(97, 36),
(97, 40),
(97, 41),
(97, 48),
(97, 99),
(97, 113),
(97, 116),
(97, 117),
(97, 134),
(98, 36),
(98, 41),
(98, 48),
(99, 28),
(99, 36),
(99, 40),
(99, 41),
(99, 44),
(99, 48),
(99, 97),
(99, 113),
(113, 28),
(113, 36),
(113, 40),
(113, 41),
(113, 44),
(113, 48),
(113, 97),
(113, 99),
(113, 113),
(113, 134),
(116, 36),
(116, 97),
(117, 97),
(134, 28),
(134, 36),
(134, 40),
(134, 41),
(134, 44),
(134, 48),
(134, 97),
(134, 113);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1040 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(1035, 28, 1, 400),
(1027, 43, 1, 600),
(1033, 44, 1, 700),
(1032, 98, 1, 700),
(1037, 99, 1, 600),
(1031, 116, 1, 700),
(1026, 117, 1, 600),
(1039, 134, 1, 700);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=856 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(853, 41, 1, 0, '20.0000', '2019-05-08', '2025-05-08'),
(851, 113, 1, 0, '130.0000', '2019-05-08', '2025-05-08'),
(848, 98, 1, 1, '180.0000', '2019-05-08', '2025-05-08'),
(850, 40, 1, 0, '120.0000', '2019-05-08', '2025-05-08'),
(847, 116, 1, 1, '100.0000', '2019-05-08', '2025-05-08'),
(849, 44, 1, 1, '80.0000', '2019-05-08', '2019-05-08'),
(855, 134, 1, 0, '100.0000', '2019-05-08', '2025-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 18),
(28, 20),
(28, 30),
(28, 32),
(28, 46),
(28, 69),
(28, 79),
(28, 80),
(28, 211),
(28, 212),
(28, 213),
(28, 214),
(28, 248),
(28, 320),
(28, 321),
(28, 346),
(28, 347),
(28, 348),
(36, 18),
(36, 20),
(36, 30),
(36, 32),
(36, 46),
(36, 60),
(36, 69),
(36, 79),
(36, 80),
(36, 211),
(36, 212),
(36, 213),
(36, 214),
(36, 248),
(36, 320),
(36, 321),
(36, 346),
(36, 347),
(36, 348),
(40, 18),
(40, 20),
(40, 30),
(40, 32),
(40, 46),
(40, 60),
(40, 69),
(40, 79),
(40, 80),
(40, 211),
(40, 212),
(40, 213),
(40, 214),
(40, 248),
(40, 320),
(40, 321),
(40, 346),
(40, 347),
(40, 348),
(41, 18),
(41, 20),
(41, 30),
(41, 32),
(41, 46),
(41, 60),
(41, 69),
(41, 79),
(41, 80),
(41, 211),
(41, 212),
(41, 213),
(41, 214),
(41, 248),
(41, 320),
(41, 321),
(41, 346),
(41, 347),
(41, 348),
(43, 18),
(43, 30),
(43, 32),
(43, 46),
(43, 60),
(43, 69),
(43, 79),
(43, 80),
(43, 211),
(43, 212),
(43, 213),
(43, 214),
(43, 248),
(43, 320),
(43, 321),
(43, 346),
(43, 347),
(43, 348),
(44, 18),
(44, 20),
(44, 30),
(44, 32),
(44, 46),
(44, 60),
(44, 69),
(44, 79),
(44, 80),
(44, 211),
(44, 212),
(44, 213),
(44, 214),
(44, 248),
(44, 320),
(44, 321),
(44, 346),
(44, 347),
(44, 348),
(48, 18),
(48, 20),
(48, 30),
(48, 32),
(48, 46),
(48, 60),
(48, 69),
(48, 79),
(48, 80),
(48, 211),
(48, 212),
(48, 213),
(48, 214),
(48, 248),
(48, 320),
(48, 321),
(48, 346),
(48, 347),
(48, 348),
(97, 18),
(97, 20),
(97, 30),
(97, 32),
(97, 46),
(97, 60),
(97, 69),
(97, 79),
(97, 80),
(97, 211),
(97, 212),
(97, 213),
(97, 214),
(97, 248),
(97, 320),
(97, 321),
(97, 346),
(97, 347),
(97, 348),
(98, 18),
(98, 20),
(98, 30),
(98, 32),
(98, 46),
(98, 60),
(98, 69),
(98, 79),
(98, 80),
(98, 211),
(98, 212),
(98, 213),
(98, 214),
(98, 248),
(98, 320),
(98, 321),
(98, 346),
(98, 347),
(98, 348),
(99, 18),
(99, 20),
(99, 30),
(99, 32),
(99, 46),
(99, 60),
(99, 69),
(99, 79),
(99, 80),
(99, 211),
(99, 212),
(99, 213),
(99, 214),
(99, 248),
(99, 320),
(99, 321),
(99, 346),
(99, 347),
(99, 348),
(113, 18),
(113, 20),
(113, 30),
(113, 32),
(113, 46),
(113, 60),
(113, 69),
(113, 79),
(113, 80),
(113, 211),
(113, 213),
(113, 214),
(113, 248),
(113, 320),
(113, 321),
(113, 346),
(113, 347),
(113, 348),
(116, 18),
(116, 20),
(116, 30),
(116, 32),
(116, 46),
(116, 60),
(116, 69),
(116, 79),
(116, 80),
(116, 211),
(116, 212),
(116, 213),
(116, 214),
(116, 248),
(116, 320),
(116, 321),
(116, 346),
(116, 347),
(116, 348),
(117, 18),
(117, 20),
(117, 30),
(117, 32),
(117, 46),
(117, 60),
(117, 69),
(117, 79),
(117, 80),
(117, 211),
(117, 212),
(117, 213),
(117, 214),
(117, 248),
(117, 320),
(117, 321),
(117, 346),
(117, 347),
(117, 348),
(134, 18),
(134, 20),
(134, 30),
(134, 32),
(134, 46),
(134, 60),
(134, 69),
(134, 79),
(134, 80),
(134, 211),
(134, 212),
(134, 213),
(134, 214),
(134, 248),
(134, 320),
(134, 321),
(134, 346),
(134, 347),
(134, 348);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(28, 1, 0),
(41, 0, 0),
(40, 2, 0),
(48, 2, 0),
(36, 1, 0),
(43, 3, 0),
(44, 3, 0),
(44, 2, 0),
(43, 2, 0),
(36, 0, 0),
(48, 3, 0),
(40, 3, 0),
(41, 1, 0),
(28, 0, 0),
(44, 1, 0),
(44, 0, 0),
(36, 2, 0),
(36, 3, 0),
(40, 1, 0),
(40, 0, 0),
(41, 2, 0),
(41, 3, 0),
(28, 2, 0),
(28, 3, 0),
(97, 0, 0),
(97, 1, 0),
(97, 2, 0),
(97, 3, 0),
(98, 3, 0),
(98, 2, 0),
(98, 1, 0),
(98, 0, 0),
(99, 3, 0),
(99, 2, 0),
(99, 1, 0),
(99, 0, 0),
(113, 2, 0),
(113, 1, 0),
(113, 3, 0),
(113, 0, 0),
(116, 0, 0),
(116, 1, 0),
(116, 2, 0),
(116, 3, 0),
(117, 2, 0),
(117, 3, 0),
(134, 0, 0),
(134, 1, 0),
(134, 2, 0),
(134, 3, 0),
(117, 1, 0),
(117, 0, 0),
(43, 1, 0),
(43, 0, 0),
(48, 1, 0),
(48, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(28, 1),
(28, 2),
(28, 3),
(36, 0),
(36, 1),
(36, 2),
(36, 3),
(40, 0),
(40, 1),
(40, 2),
(40, 3),
(41, 0),
(41, 1),
(41, 2),
(41, 3),
(43, 0),
(43, 1),
(43, 2),
(43, 3),
(44, 0),
(44, 1),
(44, 2),
(44, 3),
(48, 0),
(48, 1),
(48, 2),
(48, 3),
(97, 0),
(97, 1),
(97, 2),
(97, 3),
(98, 0),
(98, 1),
(98, 2),
(98, 3),
(99, 0),
(99, 1),
(99, 2),
(99, 3),
(113, 0),
(113, 1),
(113, 2),
(113, 3),
(116, 0),
(116, 1),
(116, 2),
(116, 3),
(117, 0),
(117, 1),
(117, 2),
(117, 3),
(134, 0),
(134, 1),
(134, 2),
(134, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu`
--

DROP TABLE IF EXISTS `oc_ptmegamenu`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu`
--

INSERT INTO `oc_ptmegamenu` (`menu_id`, `status`, `name`, `menu_type`) VALUES
(1, 1, 'Horizontal Menu 01', 'horizontal'),
(3, 1, 'Mobile Menu 01', 'mobile'),
(4, 1, 'Vertical Menu 01', 'vertical'),
(5, 1, 'Horizontal Menu 02', 'horizontal'),
(6, 1, 'Mobile Menu 02', 'mobile'),
(7, 1, 'Horizontal Menu 03', 'horizontal'),
(8, 1, 'Mobile Menu 03', 'mobile'),
(9, 1, 'Vertical Menu 04', 'vertical'),
(10, 1, 'Horizontal Menu 04', 'horizontal'),
(11, 1, 'Mobile Menu 04', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_sub_item`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_sub_item` (
  `sub_menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_menu_item_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sub_menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item_description`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_sub_item_description`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_sub_item_description` (
  `sub_menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_top_item`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_top_item` (
  `menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_title` tinyint(1) NOT NULL DEFAULT '0',
  `has_link` tinyint(1) NOT NULL DEFAULT '0',
  `has_child` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `item_align` varchar(255) NOT NULL,
  `sub_menu_type` varchar(255) NOT NULL,
  `sub_menu_content_type` varchar(255) NOT NULL,
  `sub_menu_content_columns` int(11) DEFAULT NULL,
  `sub_menu_content_width` varchar(100) DEFAULT NULL,
  `sub_menu_content` text,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item`
--

INSERT INTO `oc_ptmegamenu_top_item` (`menu_item_id`, `menu_id`, `status`, `has_title`, `has_link`, `has_child`, `category_id`, `position`, `name`, `link`, `icon`, `item_align`, `sub_menu_type`, `sub_menu_content_type`, `sub_menu_content_columns`, `sub_menu_content_width`, `sub_menu_content`) VALUES
(1, 1, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(11, 3, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(16, 3, 1, 1, 1, 1, 0, 6, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '', '[]'),
(17, 1, 1, 1, 1, 1, 0, 6, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 2, '100%', '{\"widget\":[{\"name\":{\"1\":\"Blog Page With Left Column\",\"5\":\"Blog Page With Left Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"0\"},{\"name\":{\"1\":\"Blog Page With Right Column\",\"5\":\"Blog Page With Right Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"1\"},{\"name\":{\"1\":\"Blog Page With Grid Style\",\"5\":\"Blog Page With Grid Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"2\"},{\"name\":{\"1\":\"Blog Page With List Style\",\"5\":\"Blog Page With List Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"3\"},{\"name\":{\"1\":\"Categories Post Page\",\"5\":\"Categories Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"4\"},{\"name\":{\"1\":\"Post Page\",\"5\":\"Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"5\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"5\"}]}'),
(24, 3, 1, 1, 1, 1, 18, 1, 'Vegetables', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Packaged Salads\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(25, 3, 1, 1, 1, 1, 60, 2, 'Fruits', 'index.php?route=product/category&amp;path=60', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(27, 3, 1, 1, 1, 0, 0, 4, 'About us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(29, 1, 1, 1, 1, 0, 0, 3, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(31, 3, 1, 1, 1, 0, 0, 3, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(32, 4, 1, 1, 1, 1, 18, 0, 'Vegetables', 'index.php?route=product/category&amp;path=18', 'catalog/icon-category/icon1.png', 'left', 'mega', 'category', 1, '65rem', '{\"widget\":[{\"name\":\"Fruits\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\"},{\"name\":\"Vegetables\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\"},{\"name\":{\"1\":\"\",\"5\":\"\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block static-ver-menu&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-ver-menu.jpg&quot; alt=&quot;img-ver-menu&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n\",\"5\":\"\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"6\",\"position\":\"2\"}]}'),
(33, 4, 1, 1, 1, 1, 60, 0, 'Fruits', 'index.php?route=product/category&amp;path=60', 'catalog/icon-category/icon2.png', 'left', 'flyout', 'category', 1, '60rem', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(34, 4, 1, 1, 1, 1, 80, 0, 'Salads', 'index.php?route=product/category&amp;path=80', 'catalog/icon-category/icon3.png', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(35, 4, 1, 1, 1, 0, 248, 0, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=248', 'catalog/icon-category/icon4.png', 'left', 'flyout', 'category', 1, '', '[]'),
(36, 4, 1, 1, 1, 0, 69, 0, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', 'catalog/icon-category/icon5.png', 'left', 'mega', 'category', 1, '', '[]'),
(37, 4, 1, 1, 1, 0, 346, 0, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', 'catalog/icon-category/icon6.png', 'left', 'flyout', 'category', 1, '', '[]'),
(38, 4, 1, 1, 1, 0, 30, 0, 'Milk', 'index.php?route=product/category&amp;path=30', 'catalog/icon-category/icon7.png', 'left', 'mega', 'category', 1, '', '[]'),
(39, 4, 1, 1, 1, 0, 79, 0, 'Oil &amp; Vinegars', 'index.php?route=product/category&amp;path=79', 'catalog/icon-category/icon8.png', 'left', 'mega', 'category', 1, '', '[]'),
(40, 4, 1, 1, 1, 0, 347, 0, 'Bread', 'index.php?route=product/category&amp;path=347', 'catalog/icon-category/icon9.png', 'left', 'flyout', 'category', 1, '', '[]'),
(41, 4, 1, 1, 1, 0, 348, 0, 'Jam &amp; Honey', 'index.php?route=product/category&amp;path=348', 'catalog/icon-category/icon10.png', 'left', 'flyout', 'category', 1, '', '[]'),
(42, 5, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(43, 5, 1, 1, 1, 1, 18, 0, 'Vegetables', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'category', 1, '60rem', '{\"category\":[{\"name\":\"Fruits\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"0\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Vegetables\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"1\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(44, 5, 1, 1, 1, 1, 60, 0, 'Fruits', 'index.php?route=product/category&amp;path=60', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(45, 5, 1, 1, 1, 1, 80, 0, 'Salads', 'index.php?route=product/category&amp;path=80', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(46, 5, 1, 1, 1, 1, 32, 0, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=32', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Ceiling Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"218\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Floor Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"216\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Table Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"215\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Wall Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"217\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(47, 5, 1, 1, 1, 0, 69, 0, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(48, 5, 1, 1, 1, 0, 346, 0, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', '', 'left', 'mega', 'category', 1, '', '[]'),
(49, 5, 1, 1, 1, 0, 30, 0, 'Milk', 'index.php?route=product/category&amp;path=30', '', 'left', 'mega', 'category', 1, '', '[]'),
(50, 6, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(51, 6, 1, 1, 1, 1, 18, 0, 'Vegetables', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Packaged Salads\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(52, 6, 1, 1, 1, 1, 60, 0, 'Fruits', 'index.php?route=product/category&amp;path=60', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(53, 6, 1, 1, 1, 1, 80, 0, 'Salads', 'index.php?route=product/category&amp;path=80', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(54, 6, 1, 1, 1, 1, 32, 0, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=32', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Ceiling Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"218\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Floor Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"216\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Table Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"215\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Wall Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"217\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(55, 6, 1, 1, 1, 0, 69, 0, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(56, 6, 1, 1, 1, 0, 346, 0, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', '', 'left', 'mega', 'category', 1, '', '[]'),
(57, 6, 1, 1, 1, 0, 30, 0, 'Milk', 'index.php?route=product/category&amp;path=30', '', 'left', 'mega', 'category', 1, '', '[]'),
(58, 7, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(59, 7, 1, 1, 1, 1, 260, 0, 'Power Tools', 'index.php?route=product/category&amp;path=260', '', 'left', 'mega', 'category', 1, '100%', '{\"category\":[{\"name\":\"Drills\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\",\"category_id\":\"268\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Nail Guns\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\",\"category_id\":\"287\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Sanders\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"2\",\"category_id\":\"281\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Saws\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"3\",\"category_id\":\"274\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(60, 7, 1, 1, 1, 0, 261, 0, 'Hand Tools', 'index.php?route=product/category&amp;path=261', '', 'left', 'mega', 'category', 1, '', '[]'),
(61, 7, 1, 1, 1, 0, 266, 0, 'Measuring Tools', 'index.php?route=product/category&amp;path=266', '', 'left', 'mega', 'category', 1, '', '[]'),
(62, 7, 1, 1, 1, 0, 0, 0, 'Contact us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(63, 7, 1, 1, 1, 1, 0, 0, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '100%', '{\"widget\":[{\"name\":{\"1\":\"Blog Page With Left Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"0\"},{\"name\":{\"1\":\"Blog Page With Right Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"1\"},{\"name\":{\"1\":\"Blog Page With Grid Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"2\"},{\"name\":{\"1\":\"Blog Page With List Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"3\"},{\"name\":{\"1\":\"Categories Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"4\"},{\"name\":{\"1\":\"Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"5\"}]}'),
(64, 8, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(65, 8, 1, 1, 1, 1, 18, 0, 'Vegetables', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(66, 8, 1, 1, 1, 1, 60, 0, 'Fruits', 'index.php?route=product/category&amp;path=60', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(67, 8, 1, 1, 1, 1, 80, 0, 'Salads', 'index.php?route=product/category&amp;path=80', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(68, 8, 1, 1, 1, 1, 32, 0, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=32', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Ceiling Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"218\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Floor Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"216\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Table Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"215\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Wall Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"217\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(69, 8, 1, 1, 1, 0, 69, 0, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(70, 8, 1, 1, 1, 0, 346, 0, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', '', 'left', 'mega', 'category', 1, '', '[]'),
(71, 8, 1, 1, 1, 0, 30, 0, 'Milk', 'index.php?route=product/category&amp;path=30', '', 'left', 'mega', 'category', 1, '', '[]'),
(72, 9, 1, 1, 1, 1, 292, 0, 'Compurter &amp; Laptop', 'index.php?route=product/category&amp;path=292', '', 'left', 'mega', 'widget', 1, '87.2rem', '{\"widget\":[{\"name\":\"Laptops\",\"category_id\":\"300\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\"},{\"name\":\"Desktop\",\"category_id\":\"301\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block static-ver-menu&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-ver-menu.jpg&quot; alt=&quot;img-ver-menu&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"6\",\"position\":\"2\"}]}'),
(73, 9, 1, 1, 1, 1, 293, 0, 'Mobile &amp; Tablets', 'index.php?route=product/category&amp;path=293', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Mobiles\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"59\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Tablets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"57\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(74, 9, 1, 1, 1, 0, 294, 0, 'Virtual Reality', 'index.php?route=product/category&amp;path=294', '', 'left', 'mega', 'category', 1, '', '[]'),
(75, 9, 1, 1, 1, 0, 295, 0, 'Cameras', 'index.php?route=product/category&amp;path=295', '', 'left', 'mega', 'category', 1, '', '[]'),
(76, 9, 1, 1, 1, 0, 296, 0, 'Headphones', 'index.php?route=product/category&amp;path=296', '', 'left', 'mega', 'category', 1, '', '[]'),
(77, 9, 1, 1, 1, 0, 297, 0, 'Video Games', 'index.php?route=product/category&amp;path=297', '', 'left', 'mega', 'category', 1, '', '[]'),
(78, 9, 1, 1, 1, 0, 298, 0, 'Tvs', 'index.php?route=product/category&amp;path=298', '', 'left', 'mega', 'category', 1, '', '[]'),
(79, 9, 1, 1, 1, 0, 299, 0, 'Smartwatch', 'index.php?route=product/category&amp;path=299', '', 'left', 'mega', 'category', 1, '', '[]'),
(82, 10, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(84, 10, 1, 1, 1, 0, 0, 3, 'Contact us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(85, 10, 1, 1, 1, 0, 0, 1, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(87, 11, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(89, 11, 1, 1, 1, 1, 18, 3, 'Vegetables', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Packaged Salads\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(90, 11, 1, 1, 1, 1, 60, 4, 'Fruits', 'index.php?route=product/category&amp;path=60', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Beef\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"320\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Pork\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"321\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(91, 11, 1, 1, 1, 1, 80, 5, 'Salads', 'index.php?route=product/category&amp;path=80', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(92, 11, 1, 1, 1, 1, 32, 6, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=32', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Ceiling Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"218\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Floor Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"216\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Table Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"215\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Wall Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"217\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(93, 11, 1, 1, 1, 0, 69, 7, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(94, 11, 1, 1, 1, 0, 346, 8, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', '', 'left', 'mega', 'category', 1, '', '[]'),
(95, 11, 1, 1, 1, 0, 30, 9, 'Milk', 'index.php?route=product/category&amp;path=30', '', 'left', 'mega', 'category', 1, '', '[]'),
(97, 11, 1, 1, 1, 0, 0, 10, 'Contact Us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(98, 11, 1, 1, 1, 0, 0, 11, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(99, 11, 1, 1, 1, 0, 0, 12, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '', '[]'),
(109, 4, 1, 1, 1, 0, 248, 0, 'Frozen Food', 'index.php?route=product/category&amp;path=248', 'catalog/icon-category/icon11.png', 'left', 'flyout', 'category', 1, '', '[]'),
(110, 3, 1, 1, 1, 1, 80, 0, 'Salads', 'index.php?route=product/category&amp;path=80', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Bookshelves\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"211\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"212\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Sideboards\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"213\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"TV Cabinets\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"214\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(111, 3, 1, 1, 1, 1, 32, 0, 'Fish &amp; Seafood', 'index.php?route=product/category&amp;path=32', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Ceiling Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"218\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Floor Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"216\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Table Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"215\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Wall Lamps\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"217\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(112, 3, 1, 1, 1, 0, 69, 0, 'Fresh Meat', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(113, 3, 1, 1, 1, 0, 346, 0, 'Butter &amp; Eggs', 'index.php?route=product/category&amp;path=346', '', 'left', 'mega', 'category', 1, '', '[]'),
(114, 3, 1, 1, 1, 0, 30, 0, 'Milk', 'index.php?route=product/category&amp;path=30', '', 'left', 'mega', 'category', 1, '', '[]'),
(115, 3, 1, 1, 1, 0, 79, 0, 'Oil &amp; Vinegars', 'index.php?route=product/category&amp;path=79', '', 'left', 'mega', 'category', 1, '', '[]'),
(116, 3, 1, 1, 1, 0, 347, 0, 'Bread', 'index.php?route=product/category&amp;path=347', '', 'left', 'mega', 'category', 1, '', '[]'),
(117, 3, 1, 1, 1, 0, 348, 0, 'Jam &amp; Honey', 'index.php?route=product/category&amp;path=348', '', 'left', 'mega', 'category', 1, '', '[]'),
(118, 3, 1, 1, 1, 0, 248, 0, 'Frozen Food', 'index.php?route=product/category&amp;path=248', '', 'left', 'mega', 'category', 1, '', '[]'),
(119, 4, 1, 1, 1, 0, 349, 0, 'Fast food', 'index.php?route=product/category&amp;path=349', 'catalog/icon-category/icon5.png', 'left', 'mega', 'category', 1, '', '[]'),
(120, 1, 1, 1, 1, 0, 0, 0, 'Contact Us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(121, 1, 1, 1, 1, 0, 0, 0, 'About Us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(122, 10, 1, 1, 1, 0, 0, 2, 'About Us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(123, 11, 1, 1, 1, 0, 79, 0, 'Oil &amp; Vinegars', 'index.php?route=product/category&amp;path=79', '', 'left', 'mega', 'category', 1, '', '[]'),
(124, 11, 1, 1, 1, 0, 347, 0, 'Bread', 'index.php?route=product/category&amp;path=347', '', 'left', 'mega', 'category', 1, '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item_description`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_top_item_description`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_top_item_description` (
  `menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item_description`
--

INSERT INTO `oc_ptmegamenu_top_item_description` (`menu_item_id`, `language_id`, `title`) VALUES
(1, 1, 'Home'),
(1, 6, 'Home'),
(6, 1, 'Home'),
(6, 6, 'Home'),
(11, 1, 'Home'),
(11, 6, 'Home'),
(16, 1, 'Blog'),
(16, 6, 'Blog'),
(17, 1, 'Blog'),
(17, 6, 'Blog'),
(20, 1, 'Shop'),
(20, 6, 'Shop'),
(21, 1, 'Accessories'),
(21, 6, 'Accessories'),
(22, 1, 'Contact us'),
(22, 6, 'Contact us'),
(23, 1, 'Blog'),
(23, 6, 'Blog'),
(24, 1, 'Vegetables'),
(24, 6, 'Vegetables'),
(25, 1, 'Fruits'),
(25, 6, 'Fruits'),
(27, 1, 'About us'),
(27, 6, 'About us'),
(29, 1, 'Specials'),
(29, 6, 'Specials'),
(31, 1, 'Specials'),
(31, 6, 'Specials'),
(32, 1, 'Vegetables'),
(32, 6, 'Vegetables'),
(33, 1, 'Fruits'),
(33, 6, 'Fruits'),
(34, 1, 'Salads'),
(34, 6, 'Salads'),
(35, 1, 'Fish &amp; Seafood'),
(35, 6, 'Fish &amp; Seafood'),
(36, 1, 'Fresh Meat'),
(36, 6, 'Fresh Meat'),
(37, 1, 'Butter &amp; Eggs'),
(37, 6, 'Butter &amp; Eggs'),
(38, 1, 'Milk'),
(38, 6, 'Milk'),
(39, 1, 'Oil &amp; Vinegars'),
(39, 6, 'Oil &amp; Vinegars'),
(40, 1, 'Bread'),
(40, 6, 'Bread'),
(41, 1, 'Jam &amp; Honey'),
(41, 6, 'Jam &amp; Honey'),
(42, 1, 'Home'),
(42, 6, 'Home'),
(43, 1, 'Vegetables'),
(43, 6, 'Vegetables'),
(44, 1, 'Fruits'),
(44, 6, 'Fruits'),
(45, 1, 'Salads'),
(45, 6, 'Salads'),
(46, 1, 'Fish &amp; Seafood'),
(46, 6, 'Fish &amp; Seafood'),
(47, 1, 'Fresh Meat'),
(47, 6, 'Fresh Meat'),
(48, 1, 'Butter &amp; Eggs'),
(48, 6, 'Butter &amp; Eggs'),
(49, 1, 'Milk'),
(49, 6, 'Milk'),
(50, 1, 'Home'),
(50, 6, 'Home'),
(51, 1, 'Vegetables'),
(51, 6, 'Vegetables'),
(52, 1, 'Fruits'),
(52, 6, 'Fruits'),
(53, 1, 'Salads'),
(53, 6, 'Salads'),
(54, 1, 'Fish &amp; Seafood'),
(54, 6, 'Fish &amp; Seafood'),
(55, 1, 'Fresh Meat'),
(55, 6, 'Fresh Meat'),
(56, 1, 'Butter &amp; Eggs'),
(56, 6, 'Butter &amp; Eggs'),
(57, 1, 'Milk'),
(57, 6, 'Milk'),
(58, 1, 'Home'),
(58, 6, 'Home'),
(59, 1, 'Power Tools'),
(59, 6, 'Power Tools'),
(60, 1, 'Hand Tools'),
(60, 6, 'Hand Tools'),
(61, 1, 'Measuring Tools'),
(61, 6, 'Measuring Tools'),
(62, 1, 'Contact us'),
(62, 6, 'Contact us'),
(63, 1, 'Blog'),
(63, 6, 'Blog'),
(64, 1, 'Home'),
(64, 6, 'Home'),
(65, 1, 'Vegetables'),
(65, 6, 'Vegetables'),
(66, 1, 'Fruits'),
(66, 6, 'Fruits'),
(67, 1, 'Salads'),
(67, 6, 'Salads'),
(68, 1, 'Fish &amp; Seafood'),
(68, 6, 'Fish &amp; Seafood'),
(69, 1, 'Fresh Meat'),
(69, 6, 'Fresh Meat'),
(70, 1, 'Butter &amp; Eggs'),
(70, 6, 'Butter &amp; Eggs'),
(71, 1, 'Milk'),
(71, 6, 'Milk'),
(72, 1, 'Compurter &amp; Laptop'),
(72, 6, 'Compurter &amp; Laptop'),
(73, 1, 'Mobile &amp; Tablets'),
(73, 6, 'Mobile &amp; Tablets'),
(74, 1, 'Virtual Reality'),
(74, 6, 'Virtual Reality'),
(75, 1, 'Cameras'),
(75, 6, 'Cameras'),
(76, 1, 'Headphones'),
(76, 6, 'Headphones'),
(77, 1, 'Video Games'),
(77, 6, 'Video Games'),
(78, 1, 'Tvs'),
(78, 6, 'Tvs'),
(79, 1, 'Smartwatch'),
(79, 6, 'Smartwatch'),
(82, 1, 'Home'),
(82, 6, 'Home'),
(84, 1, 'Contact us'),
(84, 6, 'Contact us'),
(85, 1, 'Specials'),
(85, 6, 'Specials'),
(87, 1, 'Home'),
(87, 6, 'Home'),
(89, 1, 'Vegetables'),
(89, 6, 'Vegetables'),
(90, 1, 'Fruits'),
(90, 6, 'Fruits'),
(91, 1, 'Salads'),
(91, 6, 'Salads'),
(92, 1, 'Fish &amp; Seafood'),
(92, 6, 'Fish &amp; Seafood'),
(93, 1, 'Fresh Meat'),
(93, 6, 'Fresh Meat'),
(94, 1, 'Butter &amp; Eggs'),
(94, 6, 'Butter &amp; Eggs'),
(95, 1, 'Milk'),
(95, 6, 'Milk'),
(97, 1, 'Contact Us'),
(97, 6, 'Contact Us'),
(98, 1, 'Specials'),
(98, 6, 'Specials'),
(99, 1, 'Blog'),
(99, 6, 'Blog'),
(100, 1, 'Home'),
(100, 6, 'Home'),
(101, 1, 'Compurter &amp; Laptop'),
(101, 6, 'Compurter &amp; Laptop'),
(102, 1, 'Mobile &amp; Tablets'),
(102, 6, 'Mobile &amp; Tablets'),
(103, 1, 'Headphones'),
(103, 6, 'Headphones'),
(104, 1, 'Shop'),
(104, 6, 'Shop'),
(105, 1, 'Video Games'),
(105, 6, 'Video Games'),
(106, 1, 'TVs'),
(106, 6, 'TVs'),
(108, 1, 'Blog'),
(108, 6, 'Blog'),
(109, 1, 'Frozen Food'),
(109, 6, 'Frozen Food'),
(110, 1, 'Salads'),
(110, 6, 'Salads'),
(111, 1, 'Fish &amp; Seafood'),
(111, 6, 'Fish &amp; Seafood'),
(112, 1, 'Fresh Meat'),
(112, 6, 'Fresh Meat'),
(113, 1, 'Butter &amp; Eggs'),
(113, 6, 'Butter &amp; Eggs'),
(114, 1, 'Milk'),
(114, 6, 'Milk'),
(115, 1, 'Oil &amp; Vinegars'),
(115, 6, 'Oil &amp; Vinegars'),
(116, 1, 'Bread'),
(116, 6, 'Bread'),
(117, 1, 'Jam &amp; Honey'),
(117, 6, 'Jam &amp; Honey'),
(118, 1, 'Frozen Food'),
(118, 6, 'Frozen Food'),
(119, 1, 'Fast food'),
(119, 6, 'Fast food'),
(120, 1, 'Contact Us'),
(120, 6, 'Contact Us'),
(121, 1, 'About Us'),
(121, 6, 'About Us'),
(122, 1, 'About Us'),
(122, 6, 'About Us'),
(123, 1, 'Oil &amp; Vinegars'),
(123, 6, 'Oil &amp; Vinegars'),
(124, 1, 'Bread'),
(124, 6, 'Bread');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptnewsletter_email`
--

DROP TABLE IF EXISTS `oc_ptnewsletter_email`;
CREATE TABLE IF NOT EXISTS `oc_ptnewsletter_email` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptnewsletter_email`
--

INSERT INTO `oc_ptnewsletter_email` (`newsletter_id`, `subscribe`, `mail`) VALUES
(1, 1, 'demo2@plazathemes.com'),
(2, 1, 'demo4@plazathemes.com'),
(3, 1, 'demo5@plazathemes.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost`
--

DROP TABLE IF EXISTS `oc_ptpost`;
CREATE TABLE IF NOT EXISTS `oc_ptpost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost`
--

INSERT INTO `oc_ptpost` (`post_id`, `status`, `sort_order`, `image`, `author`, `date_added`, `date_modified`) VALUES
(1, 1, 1, 'catalog/blog/blog3.jpg', 'Plaza Themes', '2019-01-18 14:52:58', '2020-01-31 09:37:44'),
(2, 1, 1, 'catalog/blog/blog1.jpg', 'Plaza Themes', '2019-01-18 14:58:13', '2019-05-09 11:20:08'),
(3, 1, 1, 'catalog/blog/blog2.jpg', 'Plaza Themes', '2019-01-18 15:38:18', '2019-05-09 11:23:27'),
(4, 1, 1, 'catalog/blog/blog2.jpg', 'Plaza Themes', '2019-01-18 15:41:48', '2019-05-09 11:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_comment`
--

DROP TABLE IF EXISTS `oc_ptpost_comment`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `reply_comment_id` int(11) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date_submitted` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_description`
--

DROP TABLE IF EXISTS `oc_ptpost_description`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_description` (
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_description`
--

INSERT INTO `oc_ptpost_description` (`post_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'People are Willing to Lie When It Comes to Money', '&lt;p&gt;As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it. Who you went to lunch with last week? TMZ is covering it. Who you’re sleeping with, or have ever slept with? The public is racing around trying to figure out the latest bit of celebrity gossip. When it comes to sexual history, that’s a hot issue. As far as celebrity lesbian sex stories go, it’s something the people want to know about! So keep reading to find out which of your favorite female celebrities have hooked up with another lady, and the details from the celebrities themselves, via The Frisky.&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;“X-Files” Gillian Anderson, according to The Frisky, had a relationship with a girl while in high school. She identifies as bisexual, or prefers no labels whatsoever.&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;“If I thought I was 100 percent gay, would it have been a different experience for me,” she said. &quot;Would it have been a bigger deal if shame had been attached to it and all those things that become huge life-altering issues for youngsters in that situation? It’s possible that my attitude around it came, one some level, from knowing that I still liked boys.&quot;&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;Apparently, Jane Pratt (current editor of xoJane, and founding editor of Jane Magazine and Sassy) and Drew Barrymore hooked up. Not many details were revealed, according to The Frisky, but Barrymore is bisexual, so it isn’t too surprising.&lt;/p&gt;', '&lt;p&gt;As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it. Who you went to lunch with last week? TMZ is covering it.&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money', 'As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it.', 'People are Willing to Lie When It Comes to Money'),
(1, 6, 'People are Willing to Lie When It Comes to Money', '&lt;p&gt;As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it. Who you went to lunch with last week? TMZ is covering it. Who you’re sleeping with, or have ever slept with? The public is racing around trying to figure out the latest bit of celebrity gossip. When it comes to sexual history, that’s a hot issue. As far as celebrity lesbian sex stories go, it’s something the people want to know about! So keep reading to find out which of your favorite female celebrities have hooked up with another lady, and the details from the celebrities themselves, via The Frisky.&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;“X-Files” Gillian Anderson, according to The Frisky, had a relationship with a girl while in high school. She identifies as bisexual, or prefers no labels whatsoever.&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;“If I thought I was 100 percent gay, would it have been a different experience for me,” she said. &quot;Would it have been a bigger deal if shame had been attached to it and all those things that become huge life-altering issues for youngsters in that situation? It’s possible that my attitude around it came, one some level, from knowing that I still liked boys.&quot;&lt;/p&gt;\r\n&lt;h4&gt;Celebrity lesbian sex stories.&lt;/h4&gt;\r\n&lt;p&gt;Apparently, Jane Pratt (current editor of xoJane, and founding editor of Jane Magazine and Sassy) and Drew Barrymore hooked up. Not many details were revealed, according to The Frisky, but Barrymore is bisexual, so it isn’t too surprising.&lt;/p&gt;', '&lt;p&gt;As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it. Who you went to lunch with last week? TMZ is covering it.&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money', 'As a celebrity, your life is pretty much always on display.. whether you want it to be or not. Where you buy your avocados? TMZ is covering it.', 'People are Willing to Lie When It Comes to Money'),
(2, 1, 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(2, 6, 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(3, 1, 'Children Left Home Alone For 4 Days In TV Experiment', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment.&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(3, 6, 'Children Left Home Alone For 4 Days In TV Experiment', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment.&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(4, 1, 'Lotto Winner Offering Up Money To Any Man That Will Date Her', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(4, 6, 'Lotto Winner Offering Up Money To Any Man That Will Date Her', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list`
--

DROP TABLE IF EXISTS `oc_ptpost_list`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list` (
  `post_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list`
--

INSERT INTO `oc_ptpost_list` (`post_list_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_description`
--

DROP TABLE IF EXISTS `oc_ptpost_list_description`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list_description` (
  `post_list_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`post_list_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_description`
--

INSERT INTO `oc_ptpost_list_description` (`post_list_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Vegetables', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Vegetables', 'Vegetables', 'Vegetables'),
(1, 6, 'Vegetables', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Vegetables', 'Vegetables', 'Vegetables'),
(2, 1, 'Fashion', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(2, 6, 'Fashion', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(3, 1, 'Furniture', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Furniture', 'Furniture', 'Furniture'),
(3, 6, 'Furniture', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Furniture', 'Furniture', 'Furniture'),
(4, 1, 'Digital', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Digital', 'Digital', 'Digital'),
(4, 6, 'Digital', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Digital', 'Digital', 'Digital');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_to_store`
--

DROP TABLE IF EXISTS `oc_ptpost_list_to_store`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list_to_store` (
  `post_list_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_to_store`
--

INSERT INTO `oc_ptpost_list_to_store` (`post_list_id`, `store_id`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(1, 0),
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_related_post`
--

DROP TABLE IF EXISTS `oc_ptpost_related_post`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_related_post` (
  `post_id` int(11) NOT NULL,
  `related_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_related_post`
--

INSERT INTO `oc_ptpost_related_post` (`post_id`, `related_post_id`) VALUES
(3, 2),
(2, 3),
(4, 2),
(2, 4),
(4, 3),
(3, 4),
(1, 2),
(2, 1),
(1, 3),
(3, 1),
(1, 4),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_list`
--

DROP TABLE IF EXISTS `oc_ptpost_to_list`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_to_list` (
  `post_list_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_list`
--

INSERT INTO `oc_ptpost_to_list` (`post_list_id`, `post_id`) VALUES
(2, 1),
(2, 4),
(3, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(4, 3),
(1, 2),
(1, 3),
(1, 1),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_store`
--

DROP TABLE IF EXISTS `oc_ptpost_to_store`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_store`
--

INSERT INTO `oc_ptpost_to_store` (`post_id`, `store_id`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(1, 0),
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider`
--

DROP TABLE IF EXISTS `oc_ptslider`;
CREATE TABLE IF NOT EXISTS `oc_ptslider` (
  `ptslider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL,
  PRIMARY KEY (`ptslider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider`
--

INSERT INTO `oc_ptslider` (`ptslider_id`, `name`, `status`, `auto`, `delay`, `hover`, `nextback`, `contrl`, `effect`) VALUES
(1, 'Home slideshow 1', 1, 0, 5000, 1, 0, 1, ''),
(2, 'Home slideshow 2', 1, 1, 5000, 1, 0, 1, ''),
(3, 'Home slideshow 3', 1, 0, 5000, 1, 0, 1, ''),
(4, 'Home slideshow 4', 1, 0, 5000, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image`
--

DROP TABLE IF EXISTS `oc_ptslider_image`;
CREATE TABLE IF NOT EXISTS `oc_ptslider_image` (
  `ptslider_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `ptslider_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `slider_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ptslider_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image`
--

INSERT INTO `oc_ptslider_image` (`ptslider_image_id`, `ptslider_id`, `link`, `type`, `slider_store`, `image`, `secondary_image`) VALUES
(175, 1, '#', 1, '0,0,0', 'catalog/slider/slider2-home1.jpg', NULL),
(176, 1, '#  ', 1, '0,0,0', 'catalog/slider/slider-home1.jpg', NULL),
(177, 1, '#  ', 1, '0,0,0', 'catalog/slider/slider1-home1.jpg', NULL),
(178, 2, '#', 1, '1,0,1,0', 'catalog/slider/slider2-home2.jpg', NULL),
(179, 2, '#   ', 1, '1,0,1,0', 'catalog/slider/slider-home2.jpg', NULL),
(180, 2, '#   ', 2, '1,0,1,0', 'catalog/slider/slider1-home2.jpg', NULL),
(181, 3, '#', 1, '2,0,2,0', 'catalog/slider/slider2-home3.jpg', NULL),
(182, 3, '#   ', 1, '2,0,2,0', 'catalog/slider/slider-home3.jpg', NULL),
(183, 3, '#   ', 2, '2,0,2,0', 'catalog/slider/slider1-home3.jpg', NULL),
(184, 4, '#', 1, '3,0,3,0', 'catalog/slider/slider2-home4.jpg', NULL),
(185, 4, '#   ', 1, '3,0,3,0', 'catalog/slider/slider-home4.jpg', NULL),
(186, 4, '#   ', 1, '3,0,3,0', 'catalog/slider/slider1-home4.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image_description`
--

DROP TABLE IF EXISTS `oc_ptslider_image_description`;
CREATE TABLE IF NOT EXISTS `oc_ptslider_image_description` (
  `ptslider_image_id` int(11) NOT NULL,
  `ptslider_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ptslider_image_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image_description`
--

INSERT INTO `oc_ptslider_image_description` (`ptslider_image_id`, `ptslider_id`, `language_id`, `title`, `sub_title`, `description`) VALUES
(175, 1, 1, 'Vegetables Big Sale', 'Fresh Farm Products', '10% certifled-organic mix of fruit and veggies. Perfect for weekly cooking and snacking!'),
(175, 1, 6, 'Vegetables Big Sale', 'Fresh Farm Products', '10% certifled-organic mix of fruit and veggies. Perfect for weekly cooking and snacking!'),
(176, 1, 1, 'Fresh Vegetables', 'Natural Farm Products', 'Widest range of farm-fresh Vegetables, Fruits &amp;amp; seasonal produce'),
(176, 1, 6, 'Fresh Vegetables', 'Natural Farm Products', 'Widest range of farm-fresh Vegetables, Fruits &amp;amp; seasonal produce'),
(177, 1, 1, 'Fresh Tomatoes', 'Natural Farm Products', 'Natural organic tomatoes make your health stronger. Put your information here'),
(177, 1, 6, 'Fresh Tomatoes', 'Natural Farm Products', 'Natural organic tomatoes make your health stronger. Put your information here'),
(178, 2, 1, 'Fresh Organic Food', 'Tomatoes, Onions &amp; Garlic', '100% certifled-organic mix of fruit and veggies. Perfect for weekly cooking and snacking!'),
(178, 2, 6, 'Fresh Organic Food', 'Tomatoes, Onions &amp; Garlic', '100% certifled-organic mix of fruit and veggies. Perfect for weekly cooking and snacking!'),
(179, 2, 1, 'Onions &amp; Shallots', 'Natural Farm Products', 'Widest range of farm-fresh Vegetables, Fruits &amp;amp; seasonal produce'),
(179, 2, 6, 'Onions &amp; Shallots', 'Natural Farm Products', 'Widest range of farm-fresh Vegetables, Fruits &amp;amp; seasonal produce'),
(180, 2, 1, 'Fresh Organic Food', 'Cabbage, Root Vegetables', 'From the safira farms to your table. Organic ingredients &amp;amp; healthy recipes'),
(180, 2, 6, 'Fresh Organic Food', 'Cabbage, Root Vegetables', 'From the safira farms to your table. Organic ingredients &amp;amp; healthy recipes'),
(181, 3, 1, 'Vegetables 100% Organic', '', 'Organic ingredients &amp;amp; healthy recipes'),
(181, 3, 6, 'Vegetables 100% Organic', '', 'Organic ingredients &amp;amp; healthy recipes'),
(182, 3, 1, 'Organic &amp; Fresh Lemon', '', 'Healthy fruits tropical paradise'),
(182, 3, 6, 'Organic &amp; Fresh Lemon', '', 'Healthy fruits tropical paradise'),
(183, 3, 1, 'Fresh Banana 100% Natural', '', 'Healthy fruits tropical paradise'),
(183, 3, 6, 'Fresh Banana 100% Natural', '', 'Healthy fruits tropical paradise'),
(184, 4, 1, 'Spring Sale 50% Off', '', 'Fresh Tomatoes Organic Shop'),
(184, 4, 6, 'Spring Sale 50% Off', '', 'Fresh Tomatoes Organic Shop'),
(185, 4, 1, 'Strawberry 100% Organic', '', 'Free Shipping for all Order of $99'),
(185, 4, 6, 'Strawberry 100% Organic', '', 'Free Shipping for all Order of $99'),
(186, 4, 1, 'Vegetables 100% Organic', '', 'Fresh vegetable natural farm products'),
(186, 4, 6, 'Vegetables 100% Organic', '', 'Fresh vegetable natural farm products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial`
--

DROP TABLE IF EXISTS `oc_pttestimonial`;
CREATE TABLE IF NOT EXISTS `oc_pttestimonial` (
  `pttestimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pttestimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial`
--

INSERT INTO `oc_pttestimonial` (`pttestimonial_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial_description`
--

DROP TABLE IF EXISTS `oc_pttestimonial_description`;
CREATE TABLE IF NOT EXISTS `oc_pttestimonial_description` (
  `pttestimonial_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`pttestimonial_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial_description`
--

INSERT INTO `oc_pttestimonial_description` (`pttestimonial_id`, `language_id`, `image`, `customer_name`, `content`) VALUES
(1, 0, 'catalog/testimonials/testimonial2.png', 'Lindsy Neloms', 'I\'m so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo\'s from the Netherlands!'),
(2, 0, 'catalog/testimonials/testimonial3.png', 'Rebecka Filson', 'I\'m so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo\'s from the Netherlands!'),
(3, 0, 'catalog/testimonials/testimonial1.png', 'Amber Laha', 'I\'m so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo\'s from the Netherlands!');

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent'),
(1, 4, 'Refunded'),
(2, 4, 'Credit Issued'),
(3, 4, 'Replacement Sent'),
(1, 5, 'Refunded'),
(2, 5, 'Credit Issued'),
(3, 5, 'Replacement Sent'),
(1, 6, 'Refunded'),
(2, 6, 'Credit Issued'),
(3, 6, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details'),
(1, 4, 'Dead On Arrival'),
(2, 4, 'Received Wrong Item'),
(3, 4, 'Order Error'),
(4, 4, 'Faulty, please supply details'),
(5, 4, 'Other, please supply details'),
(1, 5, 'Dead On Arrival'),
(2, 5, 'Received Wrong Item'),
(3, 5, 'Order Error'),
(4, 5, 'Faulty, please supply details'),
(5, 5, 'Other, please supply details'),
(1, 6, 'Dead On Arrival'),
(2, 6, 'Received Wrong Item'),
(3, 6, 'Order Error'),
(4, 6, 'Faulty, please supply details'),
(5, 6, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products'),
(1, 4, 'Pending'),
(3, 4, 'Complete'),
(2, 4, 'Awaiting Products'),
(1, 5, 'Pending'),
(3, 5, 'Complete'),
(2, 5, 'Awaiting Products'),
(1, 6, 'Pending'),
(3, 6, 'Complete'),
(2, 6, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(4, 28, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:23:32', '2019-02-11 08:37:24'),
(5, 41, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 1, 1, '2018-05-06 22:23:59', '2019-02-11 08:37:18'),
(6, 40, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:24:17', '2019-02-11 08:37:13'),
(7, 48, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:24:35', '2019-02-11 08:37:09'),
(8, 36, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:24:57', '2019-02-11 08:37:04'),
(11, 43, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:26:45', '2019-02-11 08:36:48'),
(12, 44, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:27:08', '2019-02-11 08:36:42'),
(58, 97, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:26:25', '2019-02-11 08:36:53'),
(59, 98, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:26:45', '2019-02-11 08:36:48'),
(60, 99, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:27:08', '2019-02-11 08:36:42'),
(74, 113, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:24:57', '2019-02-11 08:37:04'),
(77, 116, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:26:45', '2019-02-11 08:36:48'),
(78, 117, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:27:08', '2019-02-11 08:36:42'),
(95, 134, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:26:25', '2019-02-11 08:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE IF NOT EXISTS `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=3090 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(2680, 7, 1, 'manufacturer_id=8', 'apple'),
(2656, 7, 1, 'information_id=4', 'about_us'),
(3012, 3, 5, 'ptblog', 'blog'),
(2954, 2, 5, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2960, 0, 5, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2959, 3, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2953, 1, 5, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2951, 3, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2952, 0, 5, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2686, 7, 1, 'manufacturer_id=9', 'canon'),
(2698, 7, 1, 'manufacturer_id=5', 'htc'),
(2692, 7, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2704, 7, 1, 'manufacturer_id=6', 'palm'),
(2710, 7, 1, 'manufacturer_id=10', 'sony'),
(2662, 7, 1, 'information_id=6', 'delivery'),
(2668, 7, 1, 'information_id=3', 'privacy'),
(2674, 7, 1, 'information_id=5', 'terms'),
(2976, 0, 5, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(2975, 3, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(3011, 3, 1, 'ptblog', 'blog'),
(3009, 2, 1, 'ptblog', 'blog'),
(2991, 3, 1, 'post_list_id=1', 'vegetables-blog'),
(2990, 2, 1, 'post_list_id=1', 'vegetables-blog'),
(2655, 6, 1, 'information_id=4', 'about_us'),
(2654, 3, 1, 'information_id=4', 'about_us'),
(2653, 2, 1, 'information_id=4', 'about_us'),
(2661, 6, 1, 'information_id=6', 'delivery'),
(2660, 3, 1, 'information_id=6', 'delivery'),
(2659, 2, 1, 'information_id=6', 'delivery'),
(2667, 6, 1, 'information_id=3', 'privacy'),
(2666, 3, 1, 'information_id=3', 'privacy'),
(2665, 2, 1, 'information_id=3', 'privacy'),
(2673, 6, 1, 'information_id=5', 'terms'),
(2672, 3, 1, 'information_id=5', 'terms'),
(2671, 2, 1, 'information_id=5', 'terms'),
(3010, 2, 5, 'ptblog', 'blog'),
(1253, 3, 1, 'post_list_id=2', 'fashion-blog'),
(1252, 2, 1, 'post_list_id=2', 'fashion-blog'),
(1251, 1, 1, 'post_list_id=2', 'fashion-blog'),
(1250, 0, 1, 'post_list_id=2', 'fashion-blog'),
(1257, 3, 1, 'post_list_id=3', 'furniture-blog'),
(1256, 2, 1, 'post_list_id=3', 'furniture-blog'),
(1255, 1, 1, 'post_list_id=3', 'furniture-blog'),
(1254, 0, 1, 'post_list_id=3', 'furniture-blog'),
(1261, 3, 1, 'post_list_id=4', 'digital-blog'),
(1260, 2, 1, 'post_list_id=4', 'digital-blog'),
(1259, 1, 1, 'post_list_id=4', 'digital-blog'),
(1258, 0, 1, 'post_list_id=4', 'digital-blog'),
(1153, 0, 1, 'information/contact', 'information-contact'),
(1154, 0, 1, 'information/sitemap', 'information-sitemap'),
(1155, 0, 1, 'account/login', 'account-login'),
(1156, 0, 1, 'account/return/add', 'account-return-add'),
(1157, 0, 1, 'product/special', 'product-special'),
(1158, 0, 1, 'affiliate/login', 'affiliate-login'),
(1159, 0, 1, 'account/voucher', 'account-voucher'),
(1160, 0, 1, 'product/manufacturer', 'product-manufacturer'),
(1161, 0, 1, 'account/order', 'account-order'),
(2528, 6, 1, 'post_list_id=4', 'digital-blog'),
(2527, 6, 1, 'post_list_id=3', 'furniture-blog'),
(2526, 6, 1, 'post_list_id=2', 'fashion-blog'),
(2989, 1, 1, 'post_list_id=1', 'vegetables-blog'),
(2974, 2, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(2958, 2, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2950, 2, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(3088, 2, 6, 'post_id=1', ''),
(3089, 3, 6, 'post_id=1', ''),
(2658, 1, 1, 'information_id=6', 'delivery'),
(2670, 1, 1, 'information_id=5', 'terms'),
(2652, 1, 1, 'information_id=4', 'about_us'),
(2664, 1, 1, 'information_id=3', 'privacy'),
(2914, 3, 1, 'category_id=30', 'bakery'),
(2898, 3, 1, 'category_id=80', 'dairy-eggs'),
(2897, 2, 1, 'category_id=80', 'dairy-eggs'),
(2902, 3, 1, 'category_id=32', 'frozen-food'),
(2893, 2, 1, 'category_id=60', 'fresh-meat'),
(2894, 3, 1, 'category_id=60', 'fresh-meat'),
(2917, 2, 1, 'category_id=79', 'juice'),
(2918, 3, 1, 'category_id=79', 'juice'),
(2906, 3, 1, 'category_id=69', 'cookies-crackers'),
(2913, 2, 1, 'category_id=30', 'bakery'),
(3069, 1, 1, 'category_id=20', 'vegetables'),
(2963, 3, 5, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(3086, 0, 6, 'post_id=1', ''),
(3087, 1, 6, 'post_id=1', ''),
(3085, 3, 1, 'post_id=1', 'people-are-willing-to-lie-when-it-comes-to-money'),
(3037, 1, 1, 'category_id=211', 'bookshelves'),
(3036, 3, 1, 'category_id=211', 'bookshelves'),
(3041, 1, 1, 'category_id=212', 'cabinets'),
(3040, 3, 1, 'category_id=212', 'cabinets'),
(3045, 1, 1, 'category_id=213', 'sideboards-storage'),
(3044, 3, 1, 'category_id=213', 'sideboards-storage'),
(3048, 3, 1, 'category_id=214', 'tv-cabinets'),
(3049, 1, 1, 'category_id=214', 'tv-cabinets'),
(3029, 1, 1, 'category_id=215', 'table-lamps'),
(3028, 3, 1, 'category_id=215', 'table-lamps'),
(3025, 1, 1, 'category_id=216', 'floor-lamps'),
(3024, 3, 1, 'category_id=216', 'floor-lamps'),
(3033, 1, 1, 'category_id=217', 'wall-lamps'),
(3032, 3, 1, 'category_id=217', 'wall-lamps'),
(3021, 1, 1, 'category_id=218', 'ceiling-lamps'),
(2955, 3, 5, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2961, 1, 5, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2962, 2, 5, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(3053, 1, 1, 'category_id=46', 'fruits'),
(2901, 2, 1, 'category_id=32', 'frozen-food'),
(2905, 2, 1, 'category_id=69', 'cookies-crackers'),
(2924, 1, 1, 'category_id=248', 'knives'),
(3054, 0, 1, 'category_id=95', 'avocado'),
(3057, 0, 1, 'category_id=303', 'coconut'),
(3058, 0, 1, 'category_id=304', 'coffee'),
(3059, 0, 1, 'category_id=305', 'cucumber'),
(3060, 0, 1, 'category_id=306', 'eggplant'),
(3061, 0, 1, 'category_id=307', 'squash'),
(3055, 0, 1, 'category_id=309', 'banana'),
(3056, 0, 1, 'category_id=310', 'blueberries'),
(3071, 0, 1, 'category_id=311', 'beets'),
(3072, 0, 1, 'category_id=312', 'cabbage'),
(3073, 0, 1, 'category_id=313', 'carrots'),
(3074, 0, 1, 'category_id=314', 'kale'),
(3075, 0, 1, 'category_id=315', 'onions'),
(3076, 0, 1, 'category_id=316', 'potatoes'),
(3077, 0, 1, 'category_id=317', 'spinach'),
(3070, 0, 1, 'category_id=319', 'arugula'),
(3013, 0, 1, 'category_id=320', 'beef'),
(3017, 0, 1, 'category_id=321', 'pork'),
(3016, 0, 1, 'category_id=322', 'with-potato'),
(3014, 0, 1, 'category_id=323', 'with-apple'),
(3015, 0, 1, 'category_id=324', 'with-peas'),
(3068, 3, 1, 'category_id=20', 'vegetables'),
(3035, 2, 1, 'category_id=211', 'bookshelves'),
(3039, 2, 1, 'category_id=212', 'cabinets'),
(3043, 2, 1, 'category_id=213', 'sideboards-storage'),
(3047, 2, 1, 'category_id=214', 'tv-cabinets'),
(3027, 2, 1, 'category_id=215', 'table-lamps'),
(3023, 2, 1, 'category_id=216', 'floor-lamps'),
(3031, 2, 1, 'category_id=217', 'wall-lamps'),
(3020, 3, 1, 'category_id=218', 'ceiling-lamps'),
(2912, 1, 1, 'category_id=30', 'bakery'),
(2900, 1, 1, 'category_id=32', 'frozen-food'),
(3052, 3, 1, 'category_id=46', 'fruits'),
(2892, 1, 1, 'category_id=60', 'fresh-meat'),
(2904, 1, 1, 'category_id=69', 'cookies-crackers'),
(2916, 1, 1, 'category_id=79', 'juice'),
(2896, 1, 1, 'category_id=80', 'dairy-eggs'),
(3078, 0, 1, 'category_id=18', 'fruits-vegetables'),
(3079, 3, 1, 'category_id=18', 'fruits-vegetables'),
(3080, 1, 1, 'category_id=18', 'fruits-vegetables'),
(3081, 2, 1, 'category_id=18', 'fruits-vegetables'),
(3066, 0, 1, 'category_id=20', 'vegetables'),
(3067, 2, 1, 'category_id=20', 'vegetables'),
(3034, 0, 1, 'category_id=211', 'bookshelves'),
(3038, 0, 1, 'category_id=212', 'cabinets'),
(3042, 0, 1, 'category_id=213', 'sideboards-storage'),
(3046, 0, 1, 'category_id=214', 'tv-cabinets'),
(3026, 0, 1, 'category_id=215', 'table-lamps'),
(3022, 0, 1, 'category_id=216', 'floor-lamps'),
(3030, 0, 1, 'category_id=217', 'wall-lamps'),
(3018, 0, 1, 'category_id=218', 'ceiling-lamps'),
(3019, 2, 1, 'category_id=218', 'ceiling-lamps'),
(2911, 0, 1, 'category_id=30', 'bakery'),
(2899, 0, 1, 'category_id=32', 'frozen-food'),
(3050, 0, 1, 'category_id=46', 'fruits'),
(3051, 2, 1, 'category_id=46', 'fruits'),
(2891, 0, 1, 'category_id=60', 'fresh-meat'),
(2903, 0, 1, 'category_id=69', 'cookies-crackers'),
(2915, 0, 1, 'category_id=79', 'juice'),
(2895, 0, 1, 'category_id=80', 'dairy-eggs'),
(3084, 2, 1, 'post_id=1', 'people-are-willing-to-lie-when-it-comes-to-money'),
(3008, 1, 5, 'ptblog', 'blog'),
(2663, 0, 1, 'information_id=3', 'privacy'),
(2651, 0, 1, 'information_id=4', 'about_us'),
(2669, 0, 1, 'information_id=5', 'terms'),
(2657, 0, 1, 'information_id=6', 'delivery'),
(3083, 1, 1, 'post_id=1', 'people-are-willing-to-lie-when-it-comes-to-money'),
(2949, 1, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2957, 1, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2973, 1, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(2988, 0, 1, 'post_list_id=1', 'vegetables-blog'),
(2559, 7, 1, 'post_list_id=2', 'fashion-blog'),
(2560, 7, 1, 'post_list_id=3', 'furniture-blog'),
(2561, 7, 1, 'post_list_id=4', 'digital-blog'),
(2977, 1, 5, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(2978, 2, 5, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(2979, 3, 5, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(3007, 1, 1, 'ptblog', 'blog'),
(3006, 0, 5, 'ptblog', 'blog'),
(3005, 0, 1, 'ptblog', 'blog'),
(2581, 1, 1, 'account/login', 'account-login'),
(2582, 1, 1, 'account/order', 'account-order'),
(2583, 1, 1, 'account/return/add', 'account-return-add'),
(2584, 1, 1, 'account/voucher', 'account-voucher'),
(2585, 1, 1, 'affiliate/login', 'affiliate-login'),
(2586, 1, 1, 'information/contact', 'information-contact'),
(2587, 1, 1, 'information/sitemap', 'information-sitemap'),
(2709, 6, 1, 'manufacturer_id=10', 'sony'),
(2697, 6, 1, 'manufacturer_id=5', 'htc'),
(2703, 6, 1, 'manufacturer_id=6', 'palm'),
(2691, 6, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2679, 6, 1, 'manufacturer_id=8', 'apple'),
(2685, 6, 1, 'manufacturer_id=9', 'canon'),
(2594, 1, 1, 'product/manufacturer', 'product-manufacturer'),
(2595, 2, 1, 'account/login', 'account-login'),
(2596, 2, 1, 'account/order', 'account-order'),
(2597, 2, 1, 'account/return/add', 'account-return-add'),
(2598, 2, 1, 'account/voucher', 'account-voucher'),
(2599, 2, 1, 'affiliate/login', 'affiliate-login'),
(2600, 2, 1, 'information/contact', 'information-contact'),
(2601, 2, 1, 'information/sitemap', 'information-sitemap'),
(2708, 3, 1, 'manufacturer_id=10', 'sony'),
(2696, 3, 1, 'manufacturer_id=5', 'htc'),
(2702, 3, 1, 'manufacturer_id=6', 'palm'),
(2690, 3, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2678, 3, 1, 'manufacturer_id=8', 'apple'),
(2684, 3, 1, 'manufacturer_id=9', 'canon'),
(2608, 2, 1, 'product/manufacturer', 'product-manufacturer'),
(2609, 3, 1, 'account/login', 'account-login'),
(2610, 3, 1, 'account/order', 'account-order'),
(2611, 3, 1, 'account/return/add', 'account-return-add'),
(2612, 3, 1, 'account/voucher', 'account-voucher'),
(2613, 3, 1, 'affiliate/login', 'affiliate-login'),
(2614, 3, 1, 'information/contact', 'information-contact'),
(2615, 3, 1, 'information/sitemap', 'information-sitemap'),
(2707, 2, 1, 'manufacturer_id=10', 'sony'),
(2695, 2, 1, 'manufacturer_id=5', 'htc'),
(2701, 2, 1, 'manufacturer_id=6', 'palm'),
(2689, 2, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2677, 2, 1, 'manufacturer_id=8', 'apple'),
(2683, 2, 1, 'manufacturer_id=9', 'canon'),
(2622, 3, 1, 'product/manufacturer', 'product-manufacturer'),
(2623, 6, 1, 'account/login', 'account-login'),
(2624, 6, 1, 'account/order', 'account-order'),
(2625, 6, 1, 'account/return/add', 'account-return-add'),
(2626, 6, 1, 'account/voucher', 'account-voucher'),
(2627, 6, 1, 'affiliate/login', 'affiliate-login'),
(2628, 6, 1, 'information/contact', 'information-contact'),
(2629, 6, 1, 'information/sitemap', 'information-sitemap'),
(2706, 1, 1, 'manufacturer_id=10', 'sony'),
(2694, 1, 1, 'manufacturer_id=5', 'htc'),
(2700, 1, 1, 'manufacturer_id=6', 'palm'),
(2688, 1, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2676, 1, 1, 'manufacturer_id=8', 'apple'),
(2682, 1, 1, 'manufacturer_id=9', 'canon'),
(2636, 6, 1, 'product/manufacturer', 'product-manufacturer'),
(2637, 7, 1, 'account/login', 'account-login'),
(2638, 7, 1, 'account/order', 'account-order'),
(2639, 7, 1, 'account/return/add', 'account-return-add'),
(2640, 7, 1, 'account/voucher', 'account-voucher'),
(2641, 7, 1, 'affiliate/login', 'affiliate-login'),
(2642, 7, 1, 'information/contact', 'information-contact'),
(2643, 7, 1, 'information/sitemap', 'information-sitemap'),
(2705, 0, 1, 'manufacturer_id=10', 'sony'),
(2693, 0, 1, 'manufacturer_id=5', 'htc'),
(2699, 0, 1, 'manufacturer_id=6', 'palm'),
(2687, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(2675, 0, 1, 'manufacturer_id=8', 'apple'),
(2681, 0, 1, 'manufacturer_id=9', 'canon'),
(2650, 7, 1, 'product/manufacturer', 'product-manufacturer'),
(2972, 0, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(3082, 0, 1, 'post_id=1', 'people-are-willing-to-lie-when-it-comes-to-money'),
(2956, 0, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(2948, 0, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(2992, 0, 5, 'post_list_id=1', 'vegetables-blog'),
(2993, 1, 5, 'post_list_id=1', 'vegetables-blog'),
(2994, 2, 5, 'post_list_id=1', 'vegetables-blog'),
(2995, 3, 5, 'post_list_id=1', 'vegetables-blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE IF NOT EXISTS `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('00626dd671f3be09114406b948', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"vP6VGTqMlvyaGfEJsiXTqhvhACiSx11c\"}', '2019-03-08 15:49:21'),
('00a4c1bd7dbb584fd2bb988560', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-30 08:25:34'),
('00d34f3fb3b641a734c936567b', '{\"user_id\":\"1\",\"user_token\":\"u0kl6udPw6jKIRAe9CYronfx2aKeeQ5U\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 09:58:14'),
('01813ecc4ac08de6b400d449cf', '{\"user_id\":\"1\",\"user_token\":\"Sg7jGVcIh6Bntu1cVBUDxkOLWWkk6gbd\"}', '2019-03-18 14:40:00'),
('0183eddcda1fe70b6dce5a6cad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 03:08:17'),
('018b0c0079b0cec546c745c523', '{\"language\":\"de-de\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oXpImNv2EYuMIinyBSRewgYlGjpMYeB8\"}', '2019-02-14 04:51:40'),
('0219b4aa9adc38d03256763288', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-25 04:26:06'),
('02ddc403c3ed0a8f5139d2589d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 07:47:49'),
('02ebe19f335a7aacaa68406701', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 10:25:54'),
('02fb917e3ad215b1a69f7d6639', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:56:53'),
('0393c024a6d9b8217ac5b076b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 04:37:28'),
('04bb848d45f005aeee54df1ef4', '{\"user_id\":\"1\",\"user_token\":\"SqA1jJHHedH0fLTrEtTb87IY1qVZcwr2\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 10:26:25'),
('04eb0fa00a30ddc5ff8e7f53ca', '{\"user_id\":\"1\",\"user_token\":\"ZkvWyiIacVE21pb2ZgJPh21Iv56nyMy2\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 04:18:23'),
('0558f44c5c17b73fd8f31325ab', '{\"user_id\":\"1\",\"user_token\":\"rIpozi0pcLmC8I02sDKndt4roBOA8cID\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 10:16:58'),
('05b54f0686a7d585cb19faae0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:19:40'),
('066a05303e7229fa66e21b6b90', '{\"user_id\":\"1\",\"user_token\":\"8G3WTbDNTTrUz6qg0MKzDCzCTxzkB8bZ\"}', '2019-02-20 03:06:31'),
('0754edac3d18dbb442524ee146', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HkyckVucUiO0n3qJhbuTQ1Fq7VWKh10j\"}', '2019-02-18 04:04:36'),
('07bf847c3058b03edeb6d3bee5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-19 10:19:34'),
('07d8b14635082e7ef12241ce49', '{\"user_id\":\"1\",\"user_token\":\"Sps1kLrJl8aUT9xmxtX5LN2u90rPECrJ\"}', '2019-04-07 09:09:21'),
('0893a205c64e758d1ce5e50057', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:33:53'),
('09c0fcdf14cd440d2850b7caba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-24 15:22:03'),
('09c95a8e475195b144349f13fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 02:53:09'),
('0a1b20ee0113172d7dccfc9ffd', '{\"api_id\":\"1\"}', '2019-01-23 09:13:06'),
('0a38698fd62dd7b86726e3e0f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"v56YXgUlmLOQYyELgtKmv3p2L5UB23xW\",\"install\":\"XLt5wb7Wz8\"}', '2019-01-15 10:22:05'),
('0c425e6c0a81604faff2634eeb', '{\"user_id\":\"1\",\"user_token\":\"MENpPBnxRzpTQO77xCzHy566GNgJq92C\"}', '2019-03-17 08:54:55'),
('0f54767f8e5a963e7e3fecd7fc', '{\"user_id\":\"1\",\"user_token\":\"GOFJyoA4miHZ0YYR5B6257ohGHgf1H3M\"}', '2019-01-26 14:28:51'),
('0f828e921dbcbe32c8d974e9f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 09:47:30'),
('0fe6f19fb5d5428dcdb55c120c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 04:12:06'),
('104fd3a342061ca48bf4972eae', '{\"user_id\":\"1\",\"user_token\":\"jbi2BBXYdHCIBcEqcVbCvx6tgmtRynDd\"}', '2019-06-01 05:25:01'),
('10d50eec23c7d632970e823255', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-30 03:39:03'),
('112eee5cf81a3140794ed7d3fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 14:13:59'),
('1181e38ea43bc663c622c87675', '{\"language\":\"de-de\",\"currency\":\"USD\"}', '2019-02-15 03:52:59'),
('123fdb3956cfab36452832423e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-31 04:08:43'),
('12fd23b0b3834465c77f66e235', 'false', '2019-03-01 01:56:27'),
('136e68988139bff42928bc66ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 06:48:14'),
('146df4c161930d901d58377e72', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YsuYNFbTbVGpm3wW6uVMMFnKfltS5lcP\"}', '2020-01-22 04:28:24'),
('1541ddcb0a232a13b1dcb75930', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 09:51:52'),
('17f693e227efb211b267fe5453', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 09:49:17'),
('189e14e5fcf97c70abe1f6038a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dViK31oGTcVJe5xEe1GtfPWFbh9Mw8UV\"}', '2019-03-06 03:56:25'),
('18bd8a591a5e9c136dee4caf56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RWTiYtWmDWkJG6JOvoHnKtA7smVOVD9F\",\"install\":\"Hg0QVq3834\",\"compare\":[\"32\",\"34\"],\"wishlist\":[\"32\"]}', '2019-01-16 10:24:11'),
('1927ea2d4bb6837d30375a40b2', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"X6qbVh5soqu7ey9gYHz498r9cpAcDjQT\"}', '2019-04-12 16:15:22'),
('19715c6c8efe72bd6d20dcab71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-14 04:52:58'),
('1a28a7ad9a44dcf569d787cec7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"6hfwglO6ltwnsdn39h4ZeTBHGGXjvmxp\",\"wishlist\":[\"97\"]}', '2019-08-31 05:02:22'),
('1ada4530ad9a986458a38fbf3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:37:29'),
('1b26a1e6b890fc9b16b63e436e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:41:46'),
('1c1291c69f9bffefc3ed8f37af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EzZ8kiXkU8YpUvCFUA0zAangx2Im1iRx\"}', '2019-03-24 15:49:36'),
('1cc52c70809a01925a5b607a67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 08:00:07'),
('1cd7d63ac5875c1c9b18d41a25', '{\"user_id\":\"1\",\"user_token\":\"M2pdkEh7ABTvDuBYQNSL91XvWUoSpoqv\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-22 02:15:31'),
('1d24d748f1445ff84e281810a1', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"jXduVi4SVO9wnkqP1ZsDkcpqTGTDU3zP\",\"install\":\"aSkrZtqIYs\"}', '2019-01-19 10:12:25'),
('1dbc71d2b15dc6ba3bb18e153e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XQQrSwsziJoy23FsRGlJIbAkYCvQxYHP\"}', '2020-01-31 08:46:57'),
('1df7f4d0f8e622ad655083e0bb', '{\"user_id\":\"1\",\"user_token\":\"4xli1UY5HPaHAl3YDDK8wtMIuqnFtwQ0\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 10:24:04'),
('1e8da69b12090f6ba3fabbf908', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"6BsrxDrNnGMESF3gWYjhKVGXAiaGqTiA\",\"install\":\"8hVtN2OPMb\",\"customer_id\":\"1\",\"shipping_address\":false,\"compare\":[\"47\"]}', '2019-01-22 10:04:59'),
('1f168328649ea87d81b92d384d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-01 15:51:36'),
('1fa3e4cc211e47537c6eb984e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"He3jIyCgpMyHEY4WerltGrLZ1EtUAipw\"}', '2019-03-26 10:15:19'),
('2008227a758defd171c302be43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 07:40:05'),
('204fdf38d92fdb756f97d32a1c', 'false', '2019-02-27 02:04:17'),
('206c90a9c56880d3322b9a45a3', '{\"user_id\":\"1\",\"user_token\":\"BmKIRQxNNjrvIh1Y6yYFW0YqhuQ3QVqU\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-03 10:23:15'),
('20a1dad14e84e5b852f9ea7e93', 'false', '2019-03-04 02:03:14'),
('20accf0bbb5ead65e99965bf54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 14:39:13'),
('20ec0f342bbbd61bfd4d903909', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-03 14:12:07'),
('214911d7146abb378c0ff8dd75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-24 15:19:01'),
('235b103e9c590b3ae7cb87672e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 03:46:54'),
('23958e109be96c58de594557d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qPMWwOf9OiAhEaMfgmq1K4v2Erz4W8v0\",\"install\":\"Qif4XKg7qN\"}', '2019-03-20 04:34:13'),
('2398a71555ce01084c7eb71cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jqWOv59wPISNugJZ8xRjLiezAk4rec7L\"}', '2019-04-10 15:01:37'),
('23dbaee27a9e1b1edd741be7cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-01 09:59:46'),
('24c8625cac74b8767300888c94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 08:51:22'),
('24ddd23fe8860eb55c8da71caa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 10:25:49'),
('25137b5f9874fa833f03372420', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-13 07:48:54'),
('269220d79278fb2601c6117319', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KrTCTwariKF6xKbAiYDdSkizDMHhTTlI\"}', '2019-01-29 09:57:34'),
('26a182186b9372bb1c4f2da8a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 04:46:58'),
('26a7a784e42b1149d5f9c70ff4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-09 03:45:38'),
('26e210a0fcb317374996a7ecd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 06:50:23'),
('273e7bb12dff074b150ca2bc08', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dho2pelqQNuzkb899qMCabX8ge7HpGwf\"}', '2019-01-31 04:48:11'),
('27992296f8ca3854a42d343083', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 09:22:26'),
('27e2364103503bdb672dea2889', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-21 10:03:33'),
('280795319cf72ee4fdb3fc9579', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8hV7nNx366QuHrfgl8PTR2MBMB9hAnqw\"}', '2019-03-12 09:42:20'),
('2820b428dfe53a4860acf07c3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 10:09:23'),
('28253554fced8edea000f5e493', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7gIvBjVCQWYe4KGSQwgWG6cr6vYPhkgc\"}', '2019-03-10 04:22:44'),
('2832c13afe4e56a2fbb8aec5a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5DLnvDsaztvmxmJjbC7j5c5bj5Tyvzt3\"}', '2019-05-04 09:53:38'),
('28a4860e8d82ad4286c86a0734', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 09:33:09'),
('29b6cfe87fd798c7a56463e021', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 04:59:12'),
('29fe5d1d3d86b902e0e59eb2b5', 'false', '2019-03-11 02:16:10'),
('2a3736dd3a1b6a9a3904077efa', '{\"user_id\":\"1\",\"user_token\":\"hmm1sZH9twj4BM4OXKCDKKy8MkYqTMpz\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:50:40'),
('2a43d3dd0bf447b4b26811d59a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 04:40:00'),
('2a6e13ed935b7be404004f95d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:03:54'),
('2d79f257c46dab22f48d31d103', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 07:29:09'),
('2da7630a49371142c171da9abd', '{\"user_id\":\"1\",\"user_token\":\"HpjusgEsF8Hnot6Tp84nrDdeuk4yiI46\"}', '2019-04-09 07:09:40'),
('2dc000baaae64475d9a6e79acc', '{\"user_id\":\"1\",\"user_token\":\"MGpTuZgmEErdo2NW9cTgBobLiEzVIoXX\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 04:27:14'),
('2dd77093925524f42699eb8729', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-03 02:12:16'),
('2e013e9fb5c252a1aa9398d6b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-17 04:06:59'),
('2e7d2df1507966002ca27aee86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 09:19:09'),
('2e8e419d857ed99801dc36febb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 07:53:07'),
('2f48829fcd883ff60e10f4c996', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tZWblNyZLlSjubQVIs5jdZHA7k2rAap8\"}', '2019-01-11 16:00:05'),
('308768724f599dc705e3541890', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 06:36:59'),
('30d1a7b2b5d55c7eec1870f199', 'false', '2019-05-15 01:56:23'),
('310662d8cc50d9fc9b1993262a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-17 15:21:49'),
('327fa44f2d4b564e1842413a1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-31 08:05:33'),
('32eb9d20b8b8cf6a5ff56b3555', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:30:57'),
('3367bbdfec6b82e5a56cd2a36b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 04:33:20'),
('348561539335dab22441aedb62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 08:17:39'),
('35f359fcceddfb2e4a69ddca91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-10 03:23:10'),
('365e82d1dcb0e92e63af419353', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:03:05'),
('36715cb46e9f7a53a44aa8ef7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 07:23:06'),
('36d28741271150213799178038', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 03:17:53'),
('3832be1e63e1f6ba5884220573', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 04:37:28'),
('38635be88e7b33a5c3b7866c25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gs5wk1E9KJ3Elob2VkV589HlWS6BXXz0\",\"customer_id\":\"2\",\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"plaza\",\"lastname\":\"themes\",\"company\":\"\",\"address_1\":\"plaza\",\"address_2\":\"\",\"postcode\":\"plaza\",\"city\":\"plaza\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"plaza\",\"lastname\":\"themes\",\"company\":\"\",\"address_1\":\"plaza\",\"address_2\":\"\",\"postcode\":\"plaza\",\"city\":\"plaza\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"install\":\"fWB0VaowdT\"}', '2019-05-09 10:18:03'),
('386a736ee7a6ac91b440c05029', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 02:06:37'),
('38b1ec305c7d0b778fdf0dc320', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 04:01:03'),
('38c88f5df56001580a84d5cd6a', '{\"user_id\":\"1\",\"user_token\":\"DVKq1pxtXZcWS9kIGjUE0mdgB9vRFffy\"}', '2019-01-10 15:56:34'),
('392509ca8d040663247970e35e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 09:29:59'),
('3977b8a94882fabf521a168f71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 09:54:17'),
('39bc091ca3779acdb2e456e74f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-09 03:41:26'),
('3a3928d6f3f8325d7c19dad6a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 14:13:58'),
('3a5b8496d32f036b4fb1494f20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:33:37'),
('3a83ff960c05452a012e471862', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"2ljBM8pA4SWJ3vOYCXrq1V1swt90yusi\",\"install\":\"xGH4SRJ6S7\"}', '2019-01-21 09:52:19'),
('3b082734a2ab243c61a69e5a70', '{\"user_id\":\"1\",\"user_token\":\"e7Uw371wg0IZAWruump3G98XH9kl4ZnF\",\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[],\"install\":\"5yfKZVzn1H\"}', '2019-03-15 09:54:57'),
('3b8411034ae98de3c79c4a800b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 10:24:09'),
('3b97d4ce33fabbf3e567fbe833', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 02:50:33'),
('3bcb31116dbcc8819fdbb52e73', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HmJExVMPI5Im6RjF1CwT2vmPRKruixYB\"}', '2019-03-11 10:16:54'),
('3bd98bb8a0668f64c9b94a6278', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 04:42:19'),
('3c6b89843b54312435fa93fb28', '{\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2019-01-15 08:32:40'),
('3c6fcba27e7e375735ae79c595', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 14:13:56'),
('3ca7986cb14b20ccec3a256b2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 04:52:05'),
('3d1042894a8c39ce6e4b88807b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 04:29:57'),
('3d3180ba9559f163c4a6ad50a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KF5Cxk4eajCHCdYiSjD6JTbHrZ6Fhv0O\"}', '2019-03-23 04:53:01'),
('3d457301e64a36d59c3b336bb4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 04:16:48'),
('3d81fba3618356ce96aee3612e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-01 10:22:12'),
('3df144b6c2037f38ba882687ed', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-19 09:00:27'),
('3ea018211f39335f27fa69a646', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:10:05'),
('3ed8ec652c60441e1bfe30d562', '{\"user_id\":\"1\",\"user_token\":\"O5VIPH2YT177htZZrQ0YBGZ6oooefDEl\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-13 07:53:41'),
('3f1e6b96f21892bdca0ba54550', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:03:13'),
('3fa6dc9f43228b0cbcce8d389d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 10:22:17'),
('3fe6ceca4d8193cec201b5a280', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"r2U3c3IR1vOmXggQZ1RVBXh2RjCaOg7A\",\"install\":\"4oBbkMBlxy\"}', '2019-01-11 06:29:20'),
('40164d095ea089544067e384f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 04:45:17'),
('408011ea5db6bb63fca1270474', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 14:40:55'),
('42c9eaa116e6c4f03f32de436e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"msCtBzHV1Z6Go2PmV0VAVZSzKth8duTr\"}', '2019-04-01 10:05:30'),
('4301416b277eaab80a21ea1339', '{\"api_id\":\"3\"}', '2019-03-05 02:32:12'),
('43c52f7b5cb84e8f68d573243f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Urh1rwPwzjbGbAMg0NFNgwxi1gvgyoGI\"}', '2019-05-28 03:39:08'),
('43d76559860b018cdd1247ee84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:33:04'),
('43e1c4079f335822c2c56125cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"afqCy4yxl07CkAZfZkxPPUTnzfF28ugk\",\"install\":\"uplbrfEjD8\"}', '2019-03-14 07:20:47'),
('44d7f592b210ca4e5ee1bbe37c', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-24 09:32:43'),
('45358b78a6bff69a8bbb5b5a41', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"6fefIAhZoz3emyEDK4gyP0Ko3dGrYKKS\"}', '2019-03-06 09:59:43'),
('454cfbd85968b1e9cbdbe2bff8', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-24 15:20:11'),
('45d117d32e9bcafa88cc14bd94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 08:27:20'),
('460f4cc7b794f0899d7bb7616c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oTzR1ooBQhmrAlK0Xh33LQJ17AEbpoWG\"}', '2019-02-27 04:16:59'),
('466516ac34196ec47d4e911d2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 04:48:05'),
('46f9296ed9d65576e733a3d8cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-27 06:17:56'),
('46fd2aa0b11e45127392c94733', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 17:31:27'),
('47ee72bd29914797d07b807627', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:48:16'),
('47fdea85e7f06bd7e9f062025c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 04:44:11'),
('481b2f34e602c5efa60d1d41cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-25 09:53:12'),
('483f03ff5559b1ea4140a1f6c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rwZsB66GgGFeOgmKGX0N8FmYksa6PcmK\"}', '2019-04-09 04:52:31'),
('48cf4649a6a4bdc55ab1faef0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-22 08:41:42'),
('497788fd4ca7d6628de7725983', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 14:55:41'),
('49f8400c75413d6c98d59f0fc8', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"L6nyVzUmXjmJ2XnxTqpSfNmGw2f56Jdz\",\"wishlist\":[\"47\"],\"compare\":[\"47\",\"46\"]}', '2019-01-21 04:50:50'),
('49f86f89719215d5db8d7545d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"v0tD99chPauBhdjC7Tn9Yu6iqxLDOaEL\",\"install\":\"9EWu5sWEay\"}', '2019-01-09 15:39:42'),
('4a6b86b70ee983f89ae1f64f10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9te79tCcSLVF4SfEBRo2kQasZTLxKswI\"}', '2019-03-26 15:23:20'),
('4abf05a48b14b880bdc1daae15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jDnhlOvGnmXraohask10GJsg9kW9e4sl\"}', '2019-05-16 08:08:24'),
('4af6be84498da330592892621f', '{\"user_id\":\"1\",\"user_token\":\"oHBLyU4gg5T7Qbw50dYWzoGf73ToIsZI\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 03:55:09'),
('4be8d0a98fac339a2bdf9c08b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"125\"]}', '2019-04-26 07:16:09'),
('4cca7ee5363ee666c9c4eb9d91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aL5wjISyRAQjKoJgCBvkmg6VpcrrDwPi\"}', '2019-05-06 10:24:12'),
('4d8d1370aef7451bd92c57556f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 01:42:04'),
('4db957a3db4b4e745152175c4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-14 04:52:45'),
('4dc194824dbacda9f38b2f28cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FZknnt1EO24n3iY5DqTyrM1orqAu0JCF\",\"install\":\"uBIbfheSlU\"}', '2019-05-13 10:20:41'),
('4dc8361c2dac57046ce1cea234', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 08:51:12'),
('4edf74b29a96b6a7493a44687c', 'false', '2019-05-27 02:46:39'),
('501eef7cd003990397d66f6b35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 09:14:01'),
('507c9da3979bc6b949bda60728', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 09:14:06'),
('50e3b534c05e2c4669b38bd6b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 15:08:05'),
('5147c94a942ef9fbc6371dbd24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 10:16:10'),
('515e23046e59b68f46929217c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 15:01:27'),
('5243cdd0fae9d1b6a439624c28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qok10CJTMrsxclkiwJCxKy5rsTnhgZsd\",\"compare\":[\"30\",\"28\"],\"wishlist\":[\"30\"],\"install\":\"lyynbe2pBr\"}', '2019-03-01 10:01:31'),
('52e77d5ce6b8d23c803ab44833', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 16:18:04'),
('539f3bd7c88cb64d5aa5d13609', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RCIHFqz4Voj7CPCE1wjUNJHESHaeMUKv\"}', '2019-01-18 10:07:44'),
('544f95e1e1b28a7d362b0d4ce9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"124\"]}', '2019-04-11 07:23:11'),
('55497fcd0ffb43399806b79cce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 03:10:48'),
('55f20a499ca2b50bebc5c99a96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 04:27:26'),
('560961c526bc38af113454bd85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-28 04:16:35'),
('56789d7747bfafdb0db5cdcf08', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QDGBxUHyqCfT9gSE8kWMNuqN1jDgOAAu\"}', '2019-08-30 10:07:36'),
('57bd17784af49fab80a18514b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hD3Kg55ckiwgcTOoP12FyDgKl7OSQ2FR\"}', '2019-05-08 10:19:27'),
('57ede5bfa23c3dadad035a1904', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 15:22:15'),
('581b664ea427d5fdd5367a4b5d', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"dmRFcirXShZblGV5b6P0zPJKnJeXLa9F\"}', '2019-03-09 03:46:39'),
('581bfbb0113223ea005df69324', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 10:18:12'),
('5842e222fc1c67c6e10dd23faa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-26 09:21:20'),
('585431c8571acba4df04a1c362', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oEimhcAtS7upMxPeaFOLfQJmYQgLZJ1w\"}', '2019-01-10 04:53:17'),
('58f85944deff79277f6dc28f33', '{\"user_id\":\"1\",\"user_token\":\"YyT5Kk4uMVmuXdXJtasTqkC82hmsl7O9\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 09:52:01'),
('592c009090ec4ae61907adf879', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 04:48:17'),
('599417012b7f704c4f998d2249', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 07:48:11'),
('59f71295bdebe89bf248ed8bf1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:56:52'),
('5a7a7584d5ae87e598f69c16fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WoJBMkvT5VCPrhAf1xGLgyBMGXMy2fpX\"}', '2019-03-25 10:12:04'),
('5ba8116b6319b5bc744565578f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 08:52:37'),
('5c370d8656dcc4ac39a9bd4c0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 15:53:53'),
('5c9af6d8cb1d34528ce3de17b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"o8B2ydXITTWEBtrCdeoQ4YVjo6Xm23Vs\",\"install\":\"0PtJHCpKbg\"}', '2019-01-09 04:46:55'),
('5cbae69965dac332d3c79c7cc2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-30 04:20:19'),
('5cbf5d6a7aa24b75815dfd9d8a', '{\"user_id\":\"1\",\"user_token\":\"Zoi0T336XT6kXuLI1sh0x2eUuEE9UBzp\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 09:59:40'),
('5cc600a5fcb31b048411c87fa4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2019-06-01 05:16:57'),
('5cfb5568a57701ee1dff37511e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"a8466CsL9pHauWX11EEa5vKAo63tS4d4\",\"customer_id\":\"1\",\"shipping_address\":false}', '2019-01-23 09:13:52'),
('5d35bdd6f6bfee906511d2ceb0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dMplcsuIkC23DIefvnhAd3fumpOglzfm\"}', '2019-05-07 09:53:17'),
('5d798413c3d5fbddb78d59ae3d', '{\"user_id\":\"1\",\"user_token\":\"jSOTSpSm1qNQJoYByg1t7OnsgLh4LobI\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 10:17:23'),
('5dc32fbd2a44a597a1f444c7f8', '{\"user_id\":\"1\",\"user_token\":\"hpwmafNRPEmjK3ZoWIlOSFMrQLiMQh1x\"}', '2019-01-26 04:59:15'),
('5e3f23121ed6f276ed4937dac3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-14 04:53:19'),
('5f576d777e471e6743ddc891e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cAgatVzGUEXhnN0Ii6xe9U3dEaRDNQ9Z\"}', '2019-03-04 10:17:03'),
('5f61c7200414105f2e1118bd42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 04:39:37'),
('5fe695047ed32240d29fbbba15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:56:52'),
('6003eab645783462dd447284aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 04:37:17'),
('60d35301deedcbef6abdf02c1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 09:21:27'),
('6158477db9747d7519a3bb34e4', 'false', '2019-02-28 01:56:46'),
('62c7f9bcdb1d16cb8785b5b3d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-02 15:27:46'),
('6386c121a4e444edc6a6c8318d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 02:50:06'),
('63b1892e54cbf6e943b0527ab5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:29:28'),
('65dfa4887668ef021990fa9718', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 02:17:17'),
('6668f189a0c4a6574b10ceff5d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2XhHl8a4F3IDp7kgaoZiNSB2JeDgr0PK\"}', '2020-01-31 03:20:38'),
('66862c89bde9b5f0c1adef5d28', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"bZkpTkzlDTg6sJbFIoFKtF881cHFn7Tt\",\"install\":\"645G17uA7X\"}', '2019-01-09 10:15:55'),
('674812bc4046d96dd7dd386fc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 01:57:48'),
('68d1b830e0aa2c078cc77f4add', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 10:16:05'),
('6a36a9184aa7072d3220d7fb95', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3gfnFhtuEZSzNjRWrJG0yhsaeesZX0E3\"}', '2019-05-03 09:41:35'),
('6af7bab86ed40112c6caf54484', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:56:14'),
('6bba6b0c93afef6988f5ea1a44', 'false', '2019-05-10 01:45:47'),
('6c20b52dcef2fc1735c7ad8575', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 02:19:53'),
('6cb483986034af274528fb046b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 04:43:40'),
('6cd75ea012c2f417b26bbaafa1', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"compare\":[\"42\"]}', '2019-03-05 04:49:09'),
('6d825bf70f2757ac54bd19e8b8', 'false', '2019-03-02 02:04:15'),
('6dc6ca9aea45c8487f7a39a426', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 18:07:20'),
('6debcffd36f37eed2ce6170732', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 04:53:24'),
('6e1ed57a5161fb5b2429033f5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 07:57:10'),
('6e47b51196f3362f16e3cf8ff2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 07:28:59'),
('6ea329a934daddcfe98eea3d42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:38:01'),
('6ea60ab9259fd1907be87b1a06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:30:52'),
('6efd7dedef2da583f2ff7268ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-25 08:35:35'),
('6fe0181012bfe3ca0cde97dd36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 07:17:28'),
('710b6bbc3fa97f0d5755bb2027', '{\"user_id\":\"1\",\"user_token\":\"Ec6pl7jKOj57UtCIJXxKT6L8i66z2gz1\"}', '2019-04-02 15:25:00'),
('7120c5f5d17d1fde91248a3e3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 02:54:25'),
('7226053bf91fd3707dcc2be57f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 09:31:06'),
('7308ff44c4f0b9000bff799bae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-23 08:37:38'),
('73100da19f8fec5a9d4a55acd0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Nt4azbHi5QfPN8ismZMnAZ04NNF6ecqv\",\"compare\":[\"28\"]}', '2019-02-28 15:08:18'),
('7346b609b249594428264300f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 03:07:59'),
('735d77b23ef6bb27a533cfcaa2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 15:55:23'),
('73ef1d5ef79c896572de259fc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-21 07:53:40'),
('74750974710168ff0820e72a0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 07:57:10'),
('74ecf5f61b60011312f731b736', 'false', '2019-05-17 01:59:27'),
('7634a149c9102fcc734de6986c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 07:29:10'),
('7745d26fea288432ce8738d249', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 07:22:38'),
('7749882cb15690232d049b064d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B0eom5clnUPzRJ71q7kog2DhjeDTwWi1\",\"wishlist\":[\"42\"],\"compare\":[\"42\"]}', '2019-01-14 04:49:47'),
('778ab0d1c98711257f3f19bf7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 03:17:49'),
('7818358ecdc148c05865775c3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YBtr0nactFUDgrId8Eu7JPkU0y5YGrsh\"}', '2019-03-30 15:05:07'),
('781bb81d66e703674823890204', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"crLZGQsN0SE14wv3fcOMXYVpwABDuyqm\"}', '2019-03-09 14:54:52'),
('781c9248eea3b3bd0e85acfd96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-17 04:06:01'),
('78294875f7985c7ab3e0735f91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SRLiXH4Jo0shgidHc9fFT6Fcm9ZhWI9W\"}', '2019-03-25 15:58:19'),
('787f251dddf42a578b80f02061', 'false', '2019-03-09 14:47:55'),
('78eb9b356c3369196671821e66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 09:57:24'),
('795a9a59c616c4a3bbc5dfc9f0', '{\"user_id\":\"1\",\"user_token\":\"fnlMEaWtfHCWo5dgJku0VYdcaYnViLnw\"}', '2019-02-12 02:49:17'),
('7a5a8ea18faca16eae8636803a', '{\"user_id\":\"1\",\"user_token\":\"cxOztRBk2O0TFkBzEsjk0SECNyB1OIco\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 03:14:10'),
('7b178db012a345e67e1939e3d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gOw2bgHqUxC1eZAWONWl7HyVpeRy3KtN\"}', '2019-03-28 15:18:21'),
('7bb38ed01a99b7673d7f47932f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 09:20:35'),
('7c953cb890144fd427837bff4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 02:49:14'),
('7cb40a1b766c1c74e50850509a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:32:02'),
('7cc09278c3f45a5411d162eb25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 02:50:34'),
('7d6172849fb6ba23e3ccdff5d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-01-25 04:54:53'),
('7d8fe59750b263c76165012b83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gqTwBzuAzRnlseLAiTR9X0GI21yhrMBX\"}', '2019-01-08 10:14:13'),
('7e07bc2c45170b81fed55bd49d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vZlfqy1O2YcF1r4NwOa10MowOhibih7L\"}', '2019-03-29 10:14:37'),
('7e32f218d4f3a846e606c58e05', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"l4jsTtIVICVW6EcLJNDmUXZ3EkeOLXOr\"}', '2019-05-15 10:54:41'),
('7ec7f2d0cb097a69d828ec4f34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 09:15:31'),
('7f3acfd59770f8b34373e6bcf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 10:20:01'),
('7f4f9ffc333dd9242075d81aec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 07:02:40'),
('7f8f6943904b7e270dbf5fdef2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 07:28:59'),
('7fb93b9c9315121994f725ac65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9R28xlC2EyVhlIHzm16SqejRNGqVY1X1\"}', '2019-03-11 09:13:47'),
('8214f732aa65300983a9e18d51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 06:57:24'),
('833eea6c6202bbafea52cc21b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 03:08:07'),
('8369d64a639872ec7603c20112', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 03:17:30'),
('83d7cc0120efd69640f271c0a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 14:55:53'),
('84334cd685c8254bf4b0b15330', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"k7mpUyoytZIwby3VtNUNB1B1P10OLQ4x\",\"compare\":[\"34\",\"32\"],\"wishlist\":[\"32\",\"41\"]}', '2019-01-16 04:54:47'),
('84810e68a8c5cdc0c656d4d9a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 09:18:43'),
('85c63d038805d3d7f330cb13c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 04:19:43'),
('85d7b8433fb20fc691acfbbe7f', '{\"user_id\":\"1\",\"user_token\":\"fuoRP4KAS6prupLAKBd3zFpEukTLOhVS\"}', '2019-03-06 14:28:50'),
('860f1cb9f3f6bb178a93fd08e1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"icsl0L0RRUzgp9VxEpJGW5GVfUydxLI0\",\"install\":\"7IKw5NtUNU\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-05-10 10:27:33'),
('86ca841c0e9cf7f7bf6220b339', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-01 08:46:43'),
('871a5b1d3993cf722af2a88f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-30 07:56:18'),
('872260aebe66992ac3e10189e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 08:50:00'),
('87c096f06ee8dfc2ad759231df', '{\"user_id\":\"1\",\"user_token\":\"nr7AgSpSJmnUtXT9TChA5JiLNXE7NKLt\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"wCce4LUXcM\"}', '2019-02-26 09:38:18'),
('8a2857f6170549b5aa337190ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8AEkogSDPB4ijvu7j9oIIimu9OkjvoYw\"}', '2019-03-29 15:18:45'),
('8a3316a33ec51879f2e02e5c29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-13 04:30:02'),
('8bc4075c3da135c4dcab3e7e33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 09:15:51'),
('8d2527347d897292afd37d2963', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 08:14:28'),
('8d649bd9070f4d01757e89d8ce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YVUBUAeubM6KUCRRqWi07H6jwVEXPuR5\"}', '2019-04-11 16:15:13'),
('8e44c0aa8184c892ce522a4519', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"O7Dnv0STrXQPEQg74thr4lyhivwDEHk7\"}', '2019-03-12 15:59:04'),
('8e7d64b851d136fe2433f455e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TDfThAyQhdOq8nuEvn758vDyKbGzudor\"}', '2019-03-28 03:21:35'),
('8ed95cbb6d4f135e623b27f04e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9ZbGyts4AQtoDOijjlxDjaSOovgNn0IG\"}', '2019-03-27 15:39:40'),
('8f205a22ace3c1749104c18759', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 01:56:24'),
('90661d33cedef392fbe574b3ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 03:20:26'),
('91fb068ebb4d2f2908aa960d1c', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-18 09:41:40'),
('9219ae9f6617bc25d29225c993', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rqiofNkUiBzXxooQ9imeV38CdVgml6ZT\",\"compare\":[\"44\"]}', '2019-01-17 04:26:05'),
('9269e0d6a4d56ed5ad648fec33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-31 03:06:52'),
('9292f4a60e2e54c6075cb732f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-13 07:23:22'),
('92d47d67eca762ec0fc00eef94', 'false', '2019-05-21 01:53:26'),
('938447f1031140173493d1668d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 16:46:54'),
('93e884c6a589aea7187c1fc13b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 10:06:50'),
('942bf4b0cb34103f0212cee852', 'false', '2019-03-28 07:50:07'),
('9484cc3c324a2c55601b10d308', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9aGWcH9ulNWjOr269V7TGjSxNA69L1Bf\",\"install\":\"ulNQciovlQ\"}', '2019-05-14 10:12:15'),
('94c17c965ddcfe134fdeda14b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:11:58'),
('954438d7cfd54927abca1458d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 14:28:59'),
('958d4393f3f9c572cc9b36147f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 03:32:49'),
('958dd9729acf52aa31d732f729', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nN81EosY14WJhwV6DR9Mc6D4Nz6c6I8u\"}', '2019-01-12 04:13:54'),
('9725f0d3a8691266bed0815bb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 08:21:28'),
('979b641886a8af7a4578e91c75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:36:17'),
('98f51fa7b32d1c062242cf37b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"UWr0gGEYPo4C52egLj9unQcDUeXnNH1X\"}', '2019-02-26 10:23:24'),
('99be5a5cda42c34322cc4f7bc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 03:07:59'),
('9a034d42998ae889b2ebf27e24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5kM5PYpiDCtbn7osCJUvsMjMXFDmvOoK\"}', '2019-03-21 09:13:37'),
('9a336181b44a384172a16c98e7', '{\"user_id\":\"1\",\"user_token\":\"A8e4z5ZDyrTCGvaEuWnWV0wxB4LYf2Jg\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 09:55:20'),
('9ac79c99b431c6ed8572451386', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 07:59:22'),
('9c351fa0532177af9cc8c23022', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 09:58:41'),
('9c924da271a818386cfe9c60b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 08:32:11'),
('9d2dcbb59a2195a276b21231ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-14 03:37:04'),
('9d904d8c11ee216128882bc33d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"krtt8H4nrJ0sQMf5lWBLdE4rtrp2Qznc\"}', '2019-03-13 06:56:58'),
('9db44e847240e54e12750e6e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-15 03:53:09'),
('9e71faebd0ede84e2db644a46e', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"gUgVJqWl8Hg7uulvVPUYoRljmS2ZidGf\",\"install\":\"f6Cpn5yfKd\"}', '2019-01-09 07:20:54'),
('9edede208ab868b65a5b26e7b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 01:58:45'),
('9f61f72b90c644c32e77c35bec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hS1Y61VvWk9I26UKcjBxKMKoWq8RDn7V\"}', '2019-05-20 03:37:30'),
('9fc2fa277da297b2742dffc7de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LVUK1gxrxqjuHxn9K601lbxHYxxvyuHQ\"}', '2019-09-12 02:31:01'),
('a00b72ac1128092ca964cebf44', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QdF32zsaB88AxAJzyTwCsAls2JblL5aZ\"}', '2019-03-22 14:48:13'),
('a00f53cf00cd610de32ef4abd9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"t3lOrnlQ0bUd5clRdwvOx6bHL2pWTJw8\"}', '2020-01-30 03:30:00'),
('a03de52f7f31a3661d7c4d2a6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 04:50:46'),
('a0854e5f2a8381f5aca1c0928b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 07:31:57'),
('a09e77de9eb643f56e3a3f21f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 02:44:55'),
('a0df910e61842da07b9687e174', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-30 08:25:48'),
('a11c959705cd0e9eff3aef19d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:03:06'),
('a1b7c39cad59fcf75455d60a58', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bVPXu7WXDoC8pzc1fnVNoBMKfNcfigPh\"}', '2019-03-22 10:17:09'),
('a1cf2dce760ed176b7cb40e390', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:05:31'),
('a1efe5fcde7cd20d2bcf0878e9', '{\"user_id\":\"1\",\"user_token\":\"WKyZgDBQNYGG1zQyLmi1uCKMknex22M7\"}', '2019-03-31 14:07:20'),
('a22dfc5ad276f1811c8eff9347', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 03:12:17'),
('a22f1dc2076c6035dcd6a4cf77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 03:10:09'),
('a350896b6ab6783c82d46af90f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 01:43:32'),
('a4389133f4a442b36d825d861d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 14:17:54'),
('a48b9e128642d022bb8cd12b24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"VjlwfoM6nvpJwzr5lXp6i5dvCCmN6Nn0\"}', '2019-03-23 11:06:39'),
('a4f83a343b37c874198506dcf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-26 02:16:00'),
('a50d03f8d57aeed3f3bbdd3e12', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tFrwlXHkYisBLcijXPKEA2FapsJ32Z2x\"}', '2019-03-27 09:07:18'),
('a659b82686dba7fa2a60cd7f3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2019-05-23 09:58:51'),
('a6fd6b935980cfbadf4a6d19c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-30 08:25:57'),
('a7497ae64b82a242e23e2ec9ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 01:48:06'),
('a79979c618784d6a2ce71f6f39', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2OataQqHdazuXjnMphhLkHkZYrwgp9YY\"}', '2019-09-10 03:24:43'),
('a843fa3f531301f6b804afd84f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"N7EpNl5ApJYGddWMFs44kk58NtdkmPrY\"}', '2019-02-21 10:16:03'),
('a961efa4a42a0d2ead2eef1637', 'false', '2019-09-12 02:04:52'),
('a9da758206938705641fc5df77', 'false', '2019-05-06 01:55:12'),
('a9e949250ddbef11134791bb49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IZGtgEs8HDSCfOEtfl3nPyKDXuc8SUe7\"}', '2019-02-22 09:10:44'),
('aa09a86457388f246ae9a4b11d', '{\"user_id\":\"1\",\"user_token\":\"P5iR2lu5iv5mCXf0C9FHDPExeeoylqo6\"}', '2019-03-18 02:18:39'),
('aa178ff03a1c4a2414ba5122d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 02:06:15'),
('aa181a82f309fb881f078c4b61', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HAYkhj3xYynAiKNdTIxy5kVzmxlVYSVg\"}', '2019-01-18 04:52:47'),
('aa4996cdf89ce9508d5bd883df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 16:43:16'),
('aa82fcd3bc27c8539beef2856b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 04:51:22'),
('ab0e5f8a43b9f956c223bbf79c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 03:17:12'),
('ab2a005a6be77c835a91ad2234', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 06:27:17'),
('ab7f84bbe94a15bdf792f22243', '{\"user_id\":\"1\",\"user_token\":\"88u60OWLRoBTXH6Is3rpI9SEEgwEGjIs\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 10:18:47'),
('ab85ede0a25935f9fa908951c0', '{\"user_id\":\"1\",\"user_token\":\"2xGPwiiI2F3A07KVYxwU9LYWzUtdsIBr\"}', '2019-05-29 10:00:08'),
('abf369edf2909e6ac2bd26edc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-24 14:42:14'),
('ac1ca5d832fc4d9897d1740b0e', '{\"language\":\"de-de\",\"currency\":\"USD\"}', '2019-02-15 09:07:12'),
('ac799c2edffe465d664667038a', 'false', '2019-02-26 14:02:15'),
('ad418760e82dc435c1b637d920', '{\"user_id\":\"1\",\"user_token\":\"EHHjruXfWFuqFkDKqTdN4eAHqqLGFZ1H\"}', '2019-02-21 15:56:52'),
('ad4a17030e11032d8ba7f9d6ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 18:03:13'),
('ad95bb0fac9a16a9da3853114b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-30 03:34:14'),
('ae4bf32c3ff443cae016e76f2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 03:53:30'),
('ae7ff77abae620a239f182c3e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cGxdO3SFosj24XcEt2xRw652u0hsDoiz\"}', '2019-01-12 10:19:05'),
('aec528d0c68b2bd625e863c57f', 'false', '2019-01-21 02:20:00'),
('aff2991d927fba1f3585f29066', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-18 04:03:50'),
('b1165b5e90f5b0a435177612e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-06 09:59:51'),
('b12f8fbfd489aa799ffaa6d20c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"q69EZKCAoqt8CpKHbMAZhjUIMs1a5ap2\"}', '2019-02-12 08:39:12'),
('b14ade93ca5fdcfabd98c24b28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:03:06'),
('b1f266fd92ec5cbddc64eafa68', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"vTLDsjxjNV3oIK27uNBFRI7e81VqckKg\",\"wishlist\":[\"36\"]}', '2019-04-12 10:23:06'),
('b25552fb7736362ce3f948d0ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 10:09:09'),
('b287ff7670c12532c158a6b531', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"dLckU8gxJnh7zdhrPoNBbnMmcbOC01E7\",\"install\":\"qkHhOAE2Gt\"}', '2019-01-14 10:13:01'),
('b2946b030ba8000f68c84bbafb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-30 01:37:59'),
('b2e7df3aa06e9a456e6069e812', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 17:40:28'),
('b3207949642ebfbb386c2937c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 10:16:54'),
('b35cbef4361e3115171c1f1c81', 'false', '2019-05-09 01:48:51'),
('b3cd2142b4ddcd9465297d2759', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-19 10:20:29'),
('b4009465073f3a6ed7fc63eead', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 02:26:01'),
('b4687b69c4727f318ec22cc90c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-09 03:40:15'),
('b4a8e084eb56f1c9e458ccfa57', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"UUNemK2I56wEhm2nRVp3OmzBJBSzlU8m\"}', '2019-03-08 04:51:14'),
('b4e2a67d4bd7ea8beda8acba33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 10:09:45'),
('b4f294221d61cba6487b44dacb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 03:30:35'),
('b555e0962ecbfed8067bb5037e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-27 03:09:55');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('b5727d1c764994ba2e76f3ae5c', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"58aG5JM4Xr3ehHgAEN4gnY8Z01VZloJP\"}', '2019-04-26 07:43:24'),
('b6906f23c65e3eb796fa4ae1a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 10:09:27'),
('b6f2090cbf85c934c68829ad74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 04:51:30'),
('b705aaae71f5be46a70f2c4e36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-12 15:13:54'),
('b734d2ae0bc3666072a4708349', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-18 10:20:05'),
('b77848f915395e4c9d2aec69e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-02 15:27:34'),
('b7f12c45cbdeee2b10424723fc', '{\"user_id\":\"1\",\"user_token\":\"FbFEr8te6lfsWUfZdqArL9pAOOY9cWmK\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 05:10:06'),
('b82c0da8ac73fe093cf508e70d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 04:39:04'),
('b83599b231a2fe8bc73aa1370f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 07:06:34'),
('b842cc9818a4e75b78fb8146b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-19 09:34:11'),
('b9157ed84e5745dd7205305452', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SspDb9B9tjuR6FLitRFOnj4cen9utXmT\"}', '2019-04-11 09:05:02'),
('b93a3264168f8b201cb258bd4b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ehrcWlDSmHhVP6ii1D3g5u5kfIyAJtjS\"}', '2019-02-28 08:33:54'),
('b956d6228215434651df4ed970', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 06:50:03'),
('b9def173e5738e4b25d22a3cd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 07:28:15'),
('b9ed9bcc160ec88b50f5d149be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 09:18:09'),
('bae2de687abf593db9249b7df9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 05:25:07'),
('baf3dfc4bf00384111a335ec48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 09:32:49'),
('bb546211995e90ecf8f41e930a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 02:16:07'),
('bbd1df5add4396454414f8586b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 03:02:53'),
('bc2f9bdf70db7b81e7a9d5868e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"brrpesoDjPFk9Hlendy5PrnWD3RLxArF\"}', '2019-03-28 10:15:12'),
('bc93c45f2b537de62806c4f756', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 08:14:00'),
('bd63d7af2fd1fe197b09862d9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"44exGX932nYs2lGtMDekYQ5VsOi9SWI3\"}', '2019-09-30 06:56:45'),
('bdc872126f548b0ce9f4494f31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 04:46:58'),
('be005d7d91e9ed0152e3e99c12', '{\"user_id\":\"1\",\"user_token\":\"9SpApmtJEv48JsiFR7oBxamRFnhbczHy\",\"install\":\"U1pL3YYdOH\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-24 09:22:28'),
('be37437d3fc72e36c03c9737bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 16:27:04'),
('bf4a8365ac86a3389139f85934', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"JzV0jtRBzGE6Wb7RudX3KfKmbvie0jGH\",\"wishlist\":[\"41\"]}', '2019-09-02 18:08:24'),
('c01969e4339e66fe2ea675ca26', '{\"user_id\":\"1\",\"user_token\":\"DZ1LuyNXcep7FUs547OfZmyCdCTIH5m1\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 08:07:41'),
('c06768399f67e9322328ea88ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:01:30'),
('c0d8779f388705ca4c120defc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:28:34'),
('c16ec10fc07813a835cfc0f367', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-24 10:14:31'),
('c2331ec74f017a4c034e2b3f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 09:17:23'),
('c258b3d9361e49bd5a41cf0cd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-17 10:03:09'),
('c2b37100145ae70aba7ec43631', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:27:52'),
('c3144b3cf2ab14bdb97b7e2f75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:24:49'),
('c33bd75666f69885363c2e0206', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CKdAqWZhPWGmWda92tNEZJrjqvH0RgCT\"}', '2019-02-26 15:30:56'),
('c3ed26296f1baf4262da4457be', 'false', '2019-01-17 02:03:12'),
('c4230dbe304accbc3a12326fef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-02 14:31:09'),
('c4309ed57876badcfb5d92e1ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wfu1r09L1LzG1vVz5C4fkD55om2lTmiZ\"}', '2019-01-11 10:07:31'),
('c49c8967de9b0d5f1a8cb9592a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 05:00:01'),
('c4a1a719e51b9647f8ebca0ce1', '{\"language\":\"de-de\",\"currency\":\"USD\"}', '2019-02-14 07:22:53'),
('c611f62a61b9d8af8a869d9663', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-31 08:11:06'),
('c694880fc03b6390dc34453b0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 04:54:39'),
('c7eff982c4be32e426d671e2d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 16:20:27'),
('c9c1fb0199a6e68d447db99547', '{\"user_id\":\"1\",\"user_token\":\"YZalrn9RXLsUMiH9tuxtqLo6HRsqYnWU\",\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-21 15:02:22'),
('ca847ff8cebd6cc7ffa22bd80b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"6ZsLYWqZYttmzGtLV7OZ3C4iJT7hs5dX\"}', '2019-02-27 09:58:07'),
('cb0b107c4a954eaa7a4546f361', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"V5s5F9c0LnseqZxuNwhuL8Q2DJ5NOh7G\"}', '2019-03-02 02:46:22'),
('cb35560706c938367459fa335e', 'false', '2019-02-28 13:59:59'),
('cb71eaf537e5f0a014d9032d67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 08:55:10'),
('cb96ecb20f2f25a5e5968e766e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 04:03:14'),
('cbf84b3947e00433f0a26b41b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 02:55:02'),
('cccb8d7a44d07a13abe856b035', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 02:10:06'),
('cf5b76f4fbb3b293b8879da9b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 04:37:38'),
('cf6a3ca468f9e872a2eb118ade', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 07:13:58'),
('cfa12adc1dc7a9d411f7e951bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 08:49:59'),
('cfbd03d7e38545d9342fa267c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 02:56:14'),
('d01fa1b5f2b5a6bf52210984ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-30 06:56:45'),
('d13353b75f40c1fb3353d9f027', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 04:35:13'),
('d217738a1b317702c6b77ed641', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 04:01:51'),
('d21e32cdd9ec647cf30c1bcb64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PfgATWW313LUf4aFPax4ZD5Oox53YODL\"}', '2019-03-21 09:24:55'),
('d3491089b71ee3748a2d8a1bf1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:26:37'),
('d38ed3e3048081c3a0077c7b9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 02:56:14'),
('d3dc86f90109adfdbe0313e5dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-02 10:18:02'),
('d450a6301876c72925a77e6e2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 14:36:18'),
('d4d0a1209793f13a70b1db8e64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"60\",\"51\",\"61\",\"54\"],\"wishlist\":[\"60\",\"61\",\"54\"],\"user_id\":\"1\",\"user_token\":\"QXNglyKyHODPVs7EdsUpr8qKR3hqq75c\"}', '2019-01-10 10:17:38'),
('d4f3a449699363c356fdcc3009', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"b3P9x71RwP5W2MxjQnEHqZwAr9wcLWRs\"}', '2019-03-21 09:45:20'),
('d512ca707dce6f2a082b4da3c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 03:08:22'),
('d51317ba4e323fc7f02af6c9c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-10 03:11:05'),
('d53abfbea165d1645584f86c19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 04:21:26'),
('d54bb3bed326465aee1be6fe22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:52:39'),
('d54f43e6baec77e0df6969cc5e', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"wAz7EiDBCYdwAFk72CocGgEgRilAMcsv\"}', '2019-04-13 05:03:07'),
('d579fbc3d6ab48b17071440e15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 08:10:09'),
('d6571ee43bb160f12699926b8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-02 04:32:33'),
('d6afa6e045117505639d74b001', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-03 04:14:49'),
('d833ac922eae2dfb876757038d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-26 09:20:50'),
('d84ca3b6020496f6bdeaff4c74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CqhVckjgMW6FvzLDRsfUoCptGderUJus\"}', '2019-05-21 08:55:30'),
('d85d74296daa4e7f6d8cce6a9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-31 05:06:24'),
('d8b6f03a2e896363066499d6d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 08:19:39'),
('d92840788e65500ffe44668770', '{\"user_id\":\"1\",\"user_token\":\"LlufWRIpodVvA9AnsO0QJuCd9UdAyraL\"}', '2019-05-18 01:55:30'),
('d9c6807f628ec0db1b649c4203', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 04:46:57'),
('da7c7c0e04e7031eb6fcdd0841', '{\"user_id\":\"1\",\"user_token\":\"f5nggAom0NQNihdUpQQhojQybOhJZjTL\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 09:08:16'),
('dad4eb3bd8e0fdbf6d97dccf6d', '{\"language\":\"de-de\",\"currency\":\"USD\"}', '2019-02-17 10:37:11'),
('db64c8ec1ab59f6ee44e9cd09f', 'false', '2019-03-16 01:56:09'),
('db78c8eca0218871632435f336', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-04-22 07:50:00'),
('db8cc29182a7909a80fce02fec', '{\"user_id\":\"1\",\"user_token\":\"pLQx8C3vRVPNs80NoYELABRQMRALOgoF\"}', '2019-03-20 09:03:01'),
('db9f0dce145a74f703dbb430a8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rVe6h8Wa5MgyIkzwkHAMVWeO66LcHc0T\"}', '2019-01-25 03:38:37'),
('dbe5f49c2e61d5192738657ef3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 03:10:57'),
('dc5407a38df80972a73e5c389e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 08:19:12'),
('dc5c049121a9133c6ff34ceba0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-04-08 10:17:16'),
('dd1982a06958ab0fd5a69bb4ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 02:53:37'),
('deb348fe66ecd4809ee587fccf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-20 02:41:07'),
('df4636cae33e36d78333d74a69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-02 16:53:16'),
('dfa94e73926e55060e7a6b7aaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 08:02:26'),
('e02d2947b1649eed2d11ac75f3', '{\"user_id\":\"1\",\"user_token\":\"eWXetwvFNrARSkbJ6GKOl38xrQt3oG04\"}', '2019-04-07 13:55:57'),
('e075c9b383d8541867f1a1d744', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 03:19:54'),
('e0e74a074c85e54816b9f65eee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-18 02:55:05'),
('e1123a5ae80a65ffa1ac260ba2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CZf2LXzl9KAMVV66h28fzS6xcnh7FGR4\"}', '2019-03-08 07:06:39'),
('e16127dfbf8d4cf9a578af61d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-31 08:19:20'),
('e19d0bdb83522aeeeafae377d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 09:42:53'),
('e25dbccaa6d1adf68caab5cec8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 07:40:11'),
('e2649a636cc4f76e45ddf12545', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"solzkTNJL3gxhukHEo49VBgKiItkHh1p\"}', '2019-03-16 04:04:02'),
('e51b53064cf9ee026e1e24ca1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 03:54:43'),
('e5268be4bc476cf8d150ee98db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 08:44:05'),
('e56f6adfe295e56ce889f63c6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 10:03:49'),
('e5875924fd2990f461b3789ec9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 06:51:12'),
('e61229e5646bffe67d070c6b6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-08 06:50:07'),
('e6a787ef2bd32e67515d2c44ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Ls18Fi7O4LYpfWhdOLVHOwZKTZz4X4ET\"}', '2019-05-27 10:22:17'),
('e6c34451dfcc8642316b7d00c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-21 16:09:00'),
('e6dd2a3da390af6fc6452943c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 04:03:03'),
('e7098fed0ee39429c444c75282', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 09:35:36'),
('e7130d43b8a47fd1750b97c94c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"N21E1RIJnYDHwnHKxjNfc7V8RH7TLjI3\",\"install\":\"y9ObciRCoM\"}', '2019-01-31 08:38:48'),
('e75b3aced5e4ebe85040f3c547', '{\"user_id\":\"1\",\"user_token\":\"bSE6Y0oBxBUqH6qOsylpaxhg1DDLYiop\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-11 08:45:30'),
('e76fe88a3f9475053353e5019e', '{\"user_id\":\"1\",\"user_token\":\"37ObYDpBFyuRSQeE1xS7zfq7shCG1vQo\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-10 15:24:01'),
('e781c52792056fbb1aa811b86d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XJabycUpLK8fVUtNqugpnTXUUGEmWHV2\"}', '2019-03-30 15:03:44'),
('e7c37add40330c0d339792ab2b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2KXK0IFWUtaES9r5FfnDfqHcsgIlIrtU\"}', '2019-03-18 09:45:49'),
('e83eee9b6f72592864164eb900', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-31 03:21:17'),
('e95587f2d0572ec04010358652', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 09:28:23'),
('e960f18204cec871928736422d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-11 09:18:27'),
('e9db92fa22dba7498b05b7e113', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-14 04:37:26'),
('ea17b0f76e005db65c07be0702', '{\"user_id\":\"1\",\"user_token\":\"0tuuQOJfVuuYxGOOQ6I6y6Thck8p080F\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 09:18:24'),
('ea7183b5ad6301fbfbdc0da397', '{\"user_id\":\"1\",\"user_token\":\"ca2AUfMi12QZJ0qp4lcHITnCNmr8sPiw\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-02 10:15:52'),
('eb6c8aae8f8253d844a93d01a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 14:28:42'),
('ebd00f2abf651fb3ca6bdda374', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 07:57:09'),
('ec1f6cbf87b50688813f6e1e8c', '{\"user_id\":\"1\",\"user_token\":\"UZiYRYNQpo6qdaw3Zb8jDLqeFkZ6mBYf\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 04:16:02'),
('ee38f2c2f1b1c855f3be1159a2', '{\"user_id\":\"1\",\"user_token\":\"yOH6Ttag6USDz1g8INLOezTjleFdbFR6\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-19 04:47:57'),
('ef712eb5b382cf6d20aa83fb6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 01:52:20'),
('ef898d1ffac73efd8172c4ea2c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1DDN3Yn7slMNMbPOEEHil2ZZJnJPhiz3\",\"wishlist\":[\"47\"],\"compare\":[\"47\"]}', '2019-01-17 10:07:22'),
('f0424b0348e0df3091c5571014', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ApMyvK8tpkY59bV4qyXH7T2MTLJheA8o\"}', '2019-03-29 04:48:42'),
('f1d1ccbcc2d3fb43a83c533aba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-03-07 09:21:02'),
('f1eba99ea08d164f69b9064b58', '{\"user_id\":\"1\",\"user_token\":\"5QccePFESBYhuUkuTkjQaR7eMG2c4u6g\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-05 09:39:02'),
('f2b5bfe46d39e843e81ddabbd8', '{\"user_id\":\"1\",\"user_token\":\"Iq2lrEvPaUMWhwXpPDanOMYZ2JKhpXbI\"}', '2019-02-20 07:14:18'),
('f33d36767408e925430ae7bf0a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mb4hqOv9V8TavgBbyaPt3PEL2wc7wuaz\"}', '2019-05-17 09:46:55'),
('f3830d763db8cf5cecdda89c16', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"2oQyHFiCNHFOKmpw6UyzScIg2K5wGMtt\"}', '2019-03-08 09:13:54'),
('f4571628996488ad32bf304d90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"JyQUcsh1MiD4srwobTk89YTYGycyGJdV\"}', '2019-03-14 15:08:36'),
('f4d0ef6331bc397a7480503db7', '{\"user_id\":\"1\",\"user_token\":\"bN79cPZiYqBxjdVQ9gZ09hMxiNsBa8Y6\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 09:19:23'),
('f4e39a40b7b1153ffe8f475e61', 'false', '2019-05-13 03:53:25'),
('f64bd5fa14a4abe737ebee6582', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 03:53:26'),
('f823a715e7db0a2426fd5df7dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-26 14:51:55'),
('f8b94ac28998418b507a2040cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-30 04:20:12'),
('f8bb00c0b9ef624ebb6942876d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 06:56:32'),
('f915ef3e5e4380bb6df999c21c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-31 04:09:19'),
('fce9099c3aead921ce0eeff2d9', '{\"user_id\":\"1\",\"user_token\":\"QHnfcfbpPnp55DAZIV77JasghWOPfNm5\",\"language\":\"en-gb\",\"currency\":\"USD\",\"success\":\"Success: You have modified blog page settings!\"}', '2019-01-25 09:43:30'),
('fd2f1572f6de7014c495b5541e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 02:29:43'),
('fdd7cbc74addd4353e97f813a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-26 09:20:57'),
('fdea12e142dbbbc3a8ce92e0d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QbcBzZBYtAt0EFfUSbfqvmbi6Nu4CKIX\"}', '2019-03-09 09:54:00'),
('fe04088ef01caacdff390343bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-30 03:42:17'),
('fff1d812c302b48779216fc60b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19717 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(19521, 1, 'config', 'config_customer_price', '0', 0),
(16948, 0, 'module_ptblog', 'module_ptblog_post_layout', 'full', 0),
(16947, 0, 'module_ptblog', 'module_ptblog_post_related_limit', '5', 0),
(16946, 0, 'module_ptblog', 'module_ptblog_post_related', '1', 0),
(16945, 0, 'module_ptblog', 'module_ptblog_post_height', '540', 0),
(16944, 0, 'module_ptblog', 'module_ptblog_post_width', '700', 0),
(16941, 0, 'module_ptblog', 'module_ptblog_category_latest_post', '1', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(19558, 2, 'config', 'config_account_id', '0', 0),
(19520, 1, 'config', 'config_customer_group_id', '1', 0),
(17008, 1, 'theme_default', 'theme_default_image_location_height', '50', 0),
(16661, 0, 'config', 'config_meta_title', 'Safira 1 - Responsive Opencart Theme', 0),
(16662, 0, 'config', 'config_meta_description', 'Safira1', 0),
(16663, 0, 'config', 'config_meta_keyword', '', 0),
(16664, 0, 'config', 'config_theme', 'default', 0),
(16665, 0, 'config', 'config_layout_id', '4', 0),
(16666, 0, 'config', 'config_name', 'Safira1', 0),
(16667, 0, 'config', 'config_owner', 'Safira1', 0),
(16668, 0, 'config', 'config_address', '4710-4890 Breckinridge USA', 0),
(16669, 0, 'config', 'config_geocode', '41.6078817,-93.6958388', 0),
(16934, 0, 'module_ptblog', 'module_ptblog_meta_title', 'Blog', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(16002, 3, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(19557, 2, 'config', 'config_customer_price', '0', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(207, 0, 'developer', 'developer_sass', '0', 0),
(206, 0, 'developer', 'developer_theme', '0', 0),
(16942, 0, 'module_ptblog', 'module_ptblog_category_latest_post_limit', '5', 0),
(213, 0, 'module_ptajaxlogin', 'module_ptajaxlogin_status', '1', 0),
(214, 0, 'module_ptajaxlogin', 'module_ptajaxlogin_loader_img', 'plaza/ajax-loader.gif', 0),
(215, 0, 'module_ptsearch', 'module_ptsearch_status', '1', 0),
(216, 0, 'module_ptsearch', 'module_ptsearch_ajax', '1', 0),
(217, 0, 'module_ptsearch', 'module_ptsearch_show_img', '1', 0),
(218, 0, 'module_ptsearch', 'module_ptsearch_show_price', '1', 0),
(16736, 0, 'config', 'config_compression', '4', 0),
(16737, 0, 'config', 'config_secure', '0', 0),
(16738, 0, 'config', 'config_password', '1', 0),
(16739, 0, 'config', 'config_shared', '0', 0),
(19364, 0, 'config', 'config_encryption', 'OA8dlrhOtS1PQ6vxLyJ5idQcG6fG82nk4wP8DC4tmLRoAwTfHfUOMY1Ch4Fk4jUNR2wNRTREWPz8JwV0Ru49OHw3IkYI9peS9WgrVW07NCeAHnOpkY5gS0c7iURifwTdJWjtMkzY0GeBUlkSYieQ9bK6kNUfWN1LaSIWQpZ67pTPtcKmY1MhAE2YeKQ8nF8rA8qbCcuGZsyBOo2hQYWoEcbjCFIozER6K64PgvWwDWTMVlGOT7aZQYYdh47EbsDv21BhvAKtw1oS8hQv4so2y9CDi8VSno69AKlmZqppNaj0xC3ov9KzpB0mk0VhMW9fl1r826FBZiE4ag1jdUckPtQHIqTMdh0LvoTJBBEtdhNZvxmzhKPYQVDBauqPCmZ3I2uLk8MKnB38hGiUuhNKoVtLVPV34ibRlircxGWvSSsME4t2uHDBkKWSS94zTdQ29iltfqlIDfRRvRprLSZ6JS7wAO4k9WyV0Jp4UhBM2UwdY8PcC0qHiSe1ij089EVWTH97ItLCUvLdo0rh57jwyVpkwiANgO0vOMnLtBOSWPLQ0aAw6HtbuX0DLys9qu5yz4SEVWJD54XjF8AB6z9SdNqSeI3rp6UaSPP5Xpw7JoHo5dBZAQrsQdK5MI1NA0hGUtsi4THtkjO2AxtAg2IllNIesYFwooGJYxKqtlH6BAKspYZGkIHQcAQ6MJENP9RXlLUZvswgo4lyDmFl60NjudwKnFZmB4lzCzhwIC8gCKdoFPG5gjCOcIS1rfmZ0KLn7q9SYPl8wLMztqWiUurOOc5hlr9At5FVTtMMu8F3pOnguStGE5x8mGiDg9PA6fBbU6PhMo31VKYJa7xgQKB56XkD5sNKBnyk91xZwkAxhRA3mNrJccsofIxLtkCDZSvWH16A8Z1gqhUoN2Alqe8vgJ5XmjtcukcGFQv7gmtcMuvRx4o2nYB8x0WOvWsvvWyGZaOAQzLvv1OFiJWllYjRT8SxCMiPEvhdyBj3Pjnt7oqQ5HyYumFGohw5dJtnPuuo', 0),
(16741, 0, 'config', 'config_file_max_size', '300000', 0),
(16742, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(16743, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(16940, 0, 'module_ptblog', 'module_ptblog_category_post_limit', '10', 0),
(19556, 2, 'config', 'config_customer_group_id', '1', 0),
(17007, 1, 'theme_default', 'theme_default_image_location_width', '268', 0),
(17006, 1, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(19519, 1, 'config', 'config_tax_customer', '', 0),
(16003, 3, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(16004, 3, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(16005, 3, 'theme_default', 'theme_default_image_location_width', '268', 0),
(16006, 3, 'theme_default', 'theme_default_image_location_height', '50', 0),
(16939, 0, 'module_ptblog', 'module_ptblog_category_height', '270', 0),
(16937, 0, 'module_ptblog', 'module_ptblog_seo_url', '{\"1\":\"blog\",\"5\":\"blog\"}', 1),
(16938, 0, 'module_ptblog', 'module_ptblog_category_width', '350', 0),
(19555, 2, 'config', 'config_tax_customer', '', 0),
(19518, 1, 'config', 'config_tax_default', '', 0),
(19517, 1, 'config', 'config_tax', '0', 0),
(19516, 1, 'config', 'config_currency', 'USD', 0),
(19515, 1, 'config', 'config_language', 'en-gb', 0),
(15976, 2, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(15977, 2, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(15978, 2, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(15979, 2, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(15980, 2, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(15981, 2, 'theme_default', 'theme_default_image_location_width', '268', 0),
(15982, 2, 'theme_default', 'theme_default_image_location_height', '50', 0),
(17005, 1, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(19514, 1, 'config', 'config_zone_id', '3516', 0),
(19554, 2, 'config', 'config_tax_default', '', 0),
(19553, 2, 'config', 'config_tax', '0', 0),
(19513, 1, 'config', 'config_country_id', '222', 0),
(19512, 1, 'config', 'config_comment', 'Welcome to our online store!', 0),
(19511, 1, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(19510, 1, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(16935, 0, 'module_ptblog', 'module_ptblog_meta_description', 'Blog Description', 0),
(19552, 2, 'config', 'config_currency', 'USD', 0),
(19551, 2, 'config', 'config_language', 'en-gb', 0),
(19550, 2, 'config', 'config_zone_id', '3516', 0),
(19549, 2, 'config', 'config_country_id', '222', 0),
(19548, 2, 'config', 'config_comment', 'Welcome to our online store!', 0),
(19547, 2, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(16936, 0, 'module_ptblog', 'module_ptblog_meta_keyword', 'Blog Keyword', 0),
(19599, 3, 'config', 'config_stock_display', '0', 0),
(19598, 3, 'config', 'config_order_status_id', '7', 0),
(19597, 3, 'config', 'config_checkout_id', '0', 0),
(19596, 3, 'config', 'config_checkout_guest', '0', 0),
(19595, 3, 'config', 'config_cart_weight', '0', 0),
(19594, 3, 'config', 'config_account_id', '0', 0),
(16001, 3, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(15975, 2, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(15974, 2, 'theme_default', 'theme_default_image_related_height', '370', 0),
(17004, 1, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(17003, 1, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(17002, 1, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(17001, 1, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(17000, 1, 'theme_default', 'theme_default_image_related_height', '370', 0),
(16999, 1, 'theme_default', 'theme_default_image_related_width', '370', 0),
(16998, 1, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(16997, 1, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(16996, 1, 'theme_default', 'theme_default_image_product_height', '600', 0),
(16995, 1, 'theme_default', 'theme_default_image_product_width', '600', 0),
(16994, 1, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(16993, 1, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(16992, 1, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(15973, 2, 'theme_default', 'theme_default_image_related_width', '370', 0),
(15972, 2, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(15971, 2, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(15970, 2, 'theme_default', 'theme_default_image_product_height', '600', 0),
(15969, 2, 'theme_default', 'theme_default_image_product_width', '600', 0),
(15968, 2, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(15967, 2, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(16000, 3, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(15999, 3, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(15998, 3, 'theme_default', 'theme_default_image_related_height', '370', 0),
(15997, 3, 'theme_default', 'theme_default_image_related_width', '370', 0),
(15996, 3, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(15995, 3, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(15994, 3, 'theme_default', 'theme_default_image_product_height', '600', 0),
(1883, 4, 'theme_default', 'theme_default_directory', 'tt_ocframe5', 0),
(1884, 4, 'theme_default', 'theme_default_status', '1', 0),
(1885, 4, 'theme_default', 'theme_default_product_limit', '15', 0),
(1886, 4, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1887, 4, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1888, 4, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1889, 4, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(1890, 4, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(1891, 4, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1892, 4, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1893, 4, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1894, 4, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1895, 4, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1896, 4, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1897, 4, 'theme_default', 'theme_default_image_related_width', '80', 0),
(1898, 4, 'theme_default', 'theme_default_image_related_height', '80', 0),
(1899, 4, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1900, 4, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1901, 4, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1902, 4, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1903, 4, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1904, 4, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1905, 4, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1906, 4, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1907, 5, 'theme_default', 'theme_default_directory', 'tt_ocframe6', 0),
(1908, 5, 'theme_default', 'theme_default_status', '1', 0),
(1909, 5, 'theme_default', 'theme_default_product_limit', '15', 0),
(1910, 5, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1911, 5, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1912, 5, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1913, 5, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(1914, 5, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(1915, 5, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1916, 5, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1917, 5, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1918, 5, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1919, 5, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1920, 5, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1921, 5, 'theme_default', 'theme_default_image_related_width', '80', 0),
(1922, 5, 'theme_default', 'theme_default_image_related_height', '80', 0),
(1923, 5, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1924, 5, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1925, 5, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1926, 5, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1927, 5, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1928, 5, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1929, 5, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1930, 5, 'theme_default', 'theme_default_image_location_height', '50', 0),
(19509, 1, 'config', 'config_fax', '+88.2345.6789', 0),
(19546, 2, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(19593, 3, 'config', 'config_customer_price', '0', 0),
(16746, 0, 'config', 'config_error_filename', 'error.log', 0),
(16745, 0, 'config', 'config_error_log', '1', 0),
(16744, 0, 'config', 'config_error_display', '1', 0),
(16943, 0, 'module_ptblog', 'module_ptblog_category_post_content', 'grid', 0),
(19592, 3, 'config', 'config_customer_group_id', '1', 0),
(19585, 3, 'config', 'config_country_id', '222', 0),
(19586, 3, 'config', 'config_zone_id', '3516', 0),
(19587, 3, 'config', 'config_language', 'en-gb', 0),
(19588, 3, 'config', 'config_currency', 'USD', 0),
(19589, 3, 'config', 'config_tax', '0', 0),
(19590, 3, 'config', 'config_tax_default', '', 0),
(19591, 3, 'config', 'config_tax_customer', '', 0),
(16991, 1, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(15966, 2, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(15993, 3, 'theme_default', 'theme_default_image_product_width', '600', 0),
(15992, 3, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(16734, 0, 'config', 'config_seo_url', '1', 0),
(16735, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(16732, 0, 'config', 'config_mail_alert_email', '', 0),
(16733, 0, 'config', 'config_maintenance', '0', 0),
(11041, 0, 'module_pttweet', 'module_pttweet_access_token', '167448460-MuUwtTxWoehX4MKL8KrEbP6pkLnsQf0p3NKuiUGz', 0),
(11040, 0, 'module_pttweet', 'module_pttweet_consumer_secret', '9Wk7UwrlfkeR8BaKU1Nz7gS6Y3wQ2oMAuRTSPdwSpo', 0),
(11039, 0, 'module_pttweet', 'module_pttweet_consumer_key', 'qulMEXc9RpNgvdHniZsKCQ', 0),
(11038, 0, 'module_pttweet', 'module_pttweet_show_time', '1', 0),
(11037, 0, 'module_pttweet', 'module_pttweet_limit', '2', 0),
(11035, 0, 'module_pttweet', 'module_pttweet_status', '1', 0),
(11036, 0, 'module_pttweet', 'module_pttweet_id', 'plazathemes', 0),
(16933, 0, 'module_ptblog', 'module_ptblog_blog_post_content', 'grid', 0),
(16930, 0, 'module_ptblog', 'module_ptblog_blog_latest_post', '1', 0),
(16931, 0, 'module_ptblog', 'module_ptblog_blog_latest_post_limit', '5', 0),
(16932, 0, 'module_ptblog', 'module_ptblog_blog_layout', 'right', 0),
(16990, 1, 'theme_default', 'theme_default_image_category_height', '250', 0),
(19545, 2, 'config', 'config_fax', '+88.2345.6789', 0),
(19584, 3, 'config', 'config_comment', 'Welcome to our online store!', 0),
(16731, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(16730, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(15965, 2, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(15964, 2, 'theme_default', 'theme_default_image_category_height', '250', 0),
(15991, 3, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(15990, 3, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(16988, 1, 'theme_default', 'theme_default_product_description_length', '180', 0),
(16989, 1, 'theme_default', 'theme_default_image_category_width', '840', 0),
(15989, 3, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(15988, 3, 'theme_default', 'theme_default_image_category_height', '250', 0),
(16728, 0, 'config', 'config_mail_smtp_password', '', 0),
(16729, 0, 'config', 'config_mail_smtp_port', '25', 0),
(16727, 0, 'config', 'config_mail_smtp_username', '', 0),
(16726, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(16725, 0, 'config', 'config_mail_parameter', '', 0),
(16724, 0, 'config', 'config_mail_engine', 'mail', 0),
(16723, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(16722, 0, 'config', 'config_logo', 'catalog/logo/logo.png', 0),
(16720, 0, 'config', 'config_captcha', '', 0),
(16721, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(16929, 0, 'module_ptblog', 'module_ptblog_cates_list', '[\"1\"]', 1),
(16927, 0, 'module_ptblog', 'module_ptblog_blog_post_limit', '10', 0),
(16928, 0, 'module_ptblog', 'module_ptblog_cates_show', '1', 0),
(16926, 0, 'module_ptblog', 'module_ptblog_blog_height', '270', 0),
(16925, 0, 'module_ptblog', 'module_ptblog_blog_width', '350', 0),
(11042, 0, 'module_pttweet', 'module_pttweet_access_token_secret', 'DKVQipT6cdOpnRELDxlsC3Mf5Rf20TA2IdUU6dzaqg', 0),
(19508, 1, 'config', 'config_telephone', '1234567890', 0),
(19507, 1, 'config', 'config_email', 'demo@plazathemes.com', 0),
(19506, 1, 'config', 'config_geocode', '', 0),
(19505, 1, 'config', 'config_address', 'Address 2', 0),
(19543, 2, 'config', 'config_email', 'demo@plazathemes.com', 0),
(19544, 2, 'config', 'config_telephone', '1-1001-234-5678', 0),
(19542, 2, 'config', 'config_geocode', '', 0),
(19583, 3, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(19582, 3, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(19504, 1, 'config', 'config_owner', 'Store 2', 0),
(15963, 2, 'theme_default', 'theme_default_image_category_width', '840', 0),
(15962, 2, 'theme_default', 'theme_default_product_description_length', '180', 0),
(19541, 2, 'config', 'config_address', '4710-4890 Breckinridge USA', 0),
(15987, 3, 'theme_default', 'theme_default_image_category_width', '840', 0),
(19581, 3, 'config', 'config_fax', '+88.2345.6789', 0),
(19580, 3, 'config', 'config_telephone', '1234567890', 0),
(16719, 0, 'config', 'config_return_status_id', '2', 0),
(16717, 0, 'config', 'config_affiliate_id', '4', 0),
(16718, 0, 'config', 'config_return_id', '0', 0),
(16716, 0, 'config', 'config_affiliate_commission', '5', 0),
(16715, 0, 'config', 'config_affiliate_auto', '0', 0),
(16714, 0, 'config', 'config_affiliate_approval', '0', 0),
(16713, 0, 'config', 'config_affiliate_group_id', '1', 0),
(16712, 0, 'config', 'config_stock_checkout', '0', 0),
(19365, 0, 'config', 'config_api_id', '7', 0),
(16710, 0, 'config', 'config_stock_display', '0', 0),
(16711, 0, 'config', 'config_stock_warning', '0', 0),
(16708, 0, 'config', 'config_fraud_status_id', '7', 0),
(16707, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(16706, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(19503, 1, 'config', 'config_name', 'Store 2', 0),
(19502, 1, 'config', 'config_layout_id', '22', 0),
(19501, 1, 'config', 'config_theme', 'default', 0),
(19500, 1, 'config', 'config_meta_keyword', 'My Store', 0),
(19540, 2, 'config', 'config_owner', 'Store 3', 0),
(19539, 2, 'config', 'config_name', 'Store 3', 0),
(19538, 2, 'config', 'config_layout_id', '26', 0),
(19537, 2, 'config', 'config_theme', 'default', 0),
(19536, 2, 'config', 'config_meta_keyword', 'My Store', 0),
(19535, 2, 'config', 'config_meta_description', 'My Store', 0),
(19579, 3, 'config', 'config_email', 'demo@plazathemes.com', 0),
(19578, 3, 'config', 'config_geocode', '', 0),
(19363, 0, 'config', 'config_email', 'demo@plazathemes.com', 0),
(19577, 3, 'config', 'config_address', 'Address 4', 0),
(19576, 3, 'config', 'config_owner', 'Store 4', 0),
(19651, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(19716, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_custom_js', '[\"\",\"\",\"\",\"\"]', 1),
(19634, 0, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(19635, 0, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(19636, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(19637, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(19638, 0, 'theme_default', 'theme_default_image_product_width', '600', 0),
(19639, 0, 'theme_default', 'theme_default_image_product_height', '600', 0),
(19640, 0, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(19641, 0, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(19642, 0, 'theme_default', 'theme_default_image_related_width', '370', 0),
(19643, 0, 'theme_default', 'theme_default_image_related_height', '370', 0),
(19644, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(19645, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(19646, 0, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(19647, 0, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(19648, 0, 'theme_default', 'theme_default_image_cart_width', '83', 0),
(19649, 0, 'theme_default', 'theme_default_image_cart_height', '83', 0),
(19650, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(16705, 0, 'config', 'config_order_status_id', '1', 0),
(16704, 0, 'config', 'config_checkout_id', '5', 0),
(16692, 0, 'config', 'config_tax_customer', 'shipping', 0),
(19603, 3, 'config', 'config_secure', '0', 0),
(19601, 3, 'config', 'config_logo', 'catalog/logo/logo.png', 0),
(19602, 3, 'config', 'config_icon', 'catalog/cart.png', 0),
(19567, 2, 'config', 'config_secure', '0', 0),
(19600, 3, 'config', 'config_stock_checkout', '0', 0),
(19566, 2, 'config', 'config_icon', 'catalog/cart.png', 0),
(19564, 2, 'config', 'config_stock_checkout', '0', 0),
(19565, 2, 'config', 'config_logo', 'catalog/logo/logo.png', 0),
(19562, 2, 'config', 'config_order_status_id', '7', 0),
(19563, 2, 'config', 'config_stock_display', '0', 0),
(19575, 3, 'config', 'config_name', 'Store 4', 0),
(19632, 0, 'theme_default', 'theme_default_image_category_width', '840', 0),
(16987, 1, 'theme_default', 'theme_default_product_limit', '12', 0),
(15961, 2, 'theme_default', 'theme_default_product_limit', '12', 0),
(15960, 2, 'theme_default', 'theme_default_status', '1', 0),
(15986, 3, 'theme_default', 'theme_default_product_description_length', '180', 0),
(15985, 3, 'theme_default', 'theme_default_product_limit', '12', 0),
(15959, 2, 'theme_default', 'theme_default_directory', 'tt_safira3', 0),
(15984, 3, 'theme_default', 'theme_default_status', '1', 0),
(16986, 1, 'theme_default', 'theme_default_status', '1', 0),
(19499, 1, 'config', 'config_meta_description', 'My Store', 0),
(15983, 3, 'theme_default', 'theme_default_directory', 'tt_safira4', 0),
(19526, 1, 'config', 'config_order_status_id', '7', 0),
(19527, 1, 'config', 'config_stock_display', '0', 0),
(19528, 1, 'config', 'config_stock_checkout', '0', 0),
(19529, 1, 'config', 'config_logo', 'catalog/logo/logo2.png', 0),
(19530, 1, 'config', 'config_icon', 'catalog/cart.png', 0),
(19531, 1, 'config', 'config_secure', '0', 0),
(19559, 2, 'config', 'config_cart_weight', '0', 0),
(19560, 2, 'config', 'config_checkout_guest', '0', 0),
(19561, 2, 'config', 'config_checkout_id', '0', 0),
(19497, 1, 'config', 'config_ssl', '', 0),
(19498, 1, 'config', 'config_meta_title', 'Safira 2 - Responsive Opencart Theme', 0),
(19496, 1, 'config', 'config_url', 'http://safira2.com/', 0),
(19633, 0, 'theme_default', 'theme_default_image_category_height', '250', 0),
(19631, 0, 'theme_default', 'theme_default_product_description_length', '250', 0),
(16703, 0, 'config', 'config_checkout_guest', '1', 0),
(16702, 0, 'config', 'config_cart_weight', '1', 0),
(16701, 0, 'config', 'config_invoice_prefix', 'INV-2020-00', 0),
(16700, 0, 'config', 'config_account_id', '3', 0),
(16699, 0, 'config', 'config_login_attempts', '5', 0),
(16698, 0, 'config', 'config_customer_price', '0', 0),
(16697, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(16696, 0, 'config', 'config_customer_group_id', '1', 0),
(16695, 0, 'config', 'config_customer_search', '0', 0),
(16694, 0, 'config', 'config_customer_activity', '0', 0),
(16693, 0, 'config', 'config_customer_online', '0', 0),
(16685, 0, 'config', 'config_limit_admin', '20', 0),
(16686, 0, 'config', 'config_review_status', '1', 0),
(16687, 0, 'config', 'config_review_guest', '1', 0),
(16688, 0, 'config', 'config_voucher_min', '1', 0),
(16689, 0, 'config', 'config_voucher_max', '1000', 0),
(16690, 0, 'config', 'config_tax', '1', 0),
(16691, 0, 'config', 'config_tax_default', 'shipping', 0),
(16684, 0, 'config', 'config_product_count', '1', 0),
(16683, 0, 'config', 'config_weight_class_id', '1', 0),
(19715, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_custom_css', '[\"\",\"\",\"\",\"\"]', 1),
(19714, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_label', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19522, 1, 'config', 'config_account_id', '0', 0),
(19523, 1, 'config', 'config_cart_weight', '0', 0),
(19524, 1, 'config', 'config_checkout_guest', '0', 0),
(19525, 1, 'config', 'config_checkout_id', '0', 0),
(19712, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_compare', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19713, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_prodes', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19709, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_price', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19710, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19711, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_wishlist', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19708, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_options', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19707, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_compare', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19706, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_wishlist', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19704, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_price', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19705, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19703, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_currency', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19701, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_row', '[\"3\",\"3\",\"3\",\"3\"]', 1),
(19702, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(14709, 6, 'theme_default', 'theme_default_image_location_width', '268', 0),
(14707, 6, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(14708, 6, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(14706, 6, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(14704, 6, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(14705, 6, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(14702, 6, 'theme_default', 'theme_default_image_related_height', '370', 0),
(14703, 6, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(14701, 6, 'theme_default', 'theme_default_image_related_width', '370', 0),
(14700, 6, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(14699, 6, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(14698, 6, 'theme_default', 'theme_default_image_product_height', '600', 0),
(14697, 6, 'theme_default', 'theme_default_image_product_width', '600', 0),
(14696, 6, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(14695, 6, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(14694, 6, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(14693, 6, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(14692, 6, 'theme_default', 'theme_default_image_category_height', '250', 0),
(14691, 6, 'theme_default', 'theme_default_image_category_width', '840', 0),
(14827, 7, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(14828, 7, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(14826, 7, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(14824, 7, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(14825, 7, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(14822, 7, 'theme_default', 'theme_default_image_related_height', '370', 0),
(14823, 7, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(14821, 7, 'theme_default', 'theme_default_image_related_width', '370', 0),
(14820, 7, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(14819, 7, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(14818, 7, 'theme_default', 'theme_default_image_product_height', '600', 0),
(14817, 7, 'theme_default', 'theme_default_image_product_width', '600', 0),
(14816, 7, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(14815, 7, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(14814, 7, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(14813, 7, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(14812, 7, 'theme_default', 'theme_default_image_category_height', '250', 0),
(14811, 7, 'theme_default', 'theme_default_image_category_width', '840', 0),
(14689, 6, 'theme_default', 'theme_default_product_limit', '12', 0),
(14690, 6, 'theme_default', 'theme_default_product_description_length', '180', 0),
(14688, 6, 'theme_default', 'theme_default_status', '1', 0),
(14687, 6, 'theme_default', 'theme_default_directory', 'tt_ostromi5', 0),
(19700, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_default_view', '[\"grid\",\"grid\",\"grid\",\"grid\"]', 1),
(19697, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_swatches_width', '[\"12\",\"15\",\"15\",\"15\"]', 1),
(19699, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_advance_view', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19698, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_swatches_height', '[\"12\",\"15\",\"15\",\"15\"]', 1),
(16675, 0, 'config', 'config_comment', 'Welcome to our online store!', 0),
(16682, 0, 'config', 'config_length_class_id', '1', 0),
(16681, 0, 'config', 'config_currency_auto', '0', 0),
(16680, 0, 'config', 'config_currency', 'USD', 0),
(16679, 0, 'config', 'config_admin_language', 'en-gb', 0),
(16678, 0, 'config', 'config_language', 'en-gb', 0),
(16677, 0, 'config', 'config_zone_id', '3563', 0),
(14710, 6, 'theme_default', 'theme_default_image_location_height', '50', 0),
(16676, 0, 'config', 'config_country_id', '222', 0),
(16674, 0, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(16673, 0, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(14810, 7, 'theme_default', 'theme_default_product_description_length', '180', 0),
(14809, 7, 'theme_default', 'theme_default_product_limit', '12', 0),
(14808, 7, 'theme_default', 'theme_default_status', '1', 0),
(14807, 7, 'theme_default', 'theme_default_directory', 'tt_ostromi6', 0),
(14829, 7, 'theme_default', 'theme_default_image_location_width', '268', 0),
(14830, 7, 'theme_default', 'theme_default_image_location_height', '50', 0),
(16671, 0, 'config', 'config_telephone', '(08) 23 456 789', 0),
(16672, 0, 'config', 'config_fax', '+88.2345.6789', 0),
(16985, 1, 'theme_default', 'theme_default_directory', 'tt_safira2', 0),
(19630, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(19629, 0, 'theme_default', 'theme_default_status', '1', 0),
(19628, 0, 'theme_default', 'theme_default_directory', 'tt_safira1', 0),
(19696, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_img_effect', '[\"swatches\",\"swatches\",\"swatches\",\"swatches\"]', 1),
(19534, 2, 'config', 'config_meta_title', 'Safira 3 - Responsive Opencart Theme', 0),
(19533, 2, 'config', 'config_ssl', '', 0),
(19532, 2, 'config', 'config_url', 'http://safira3.com/', 0),
(19574, 3, 'config', 'config_layout_id', '33', 0),
(19573, 3, 'config', 'config_theme', 'default', 0),
(19572, 3, 'config', 'config_meta_keyword', 'My Store', 0),
(19571, 3, 'config', 'config_meta_description', 'My Store', 0),
(19570, 3, 'config', 'config_meta_title', 'Safira 4 - Responsive Opencart Theme', 0),
(19569, 3, 'config', 'config_ssl', '', 0),
(19568, 3, 'config', 'config_url', 'http://safira4.com/', 0),
(19695, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_quickview', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19694, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_filter_position', '[\"left\",\"left\",\"left\",\"left\"]', 1),
(19693, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_filter', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19692, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_sub_category', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19691, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_description', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19690, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_image', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19689, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_option', '[\"5\",\"5\",\"5\",\"5\"]', 1),
(19687, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_width', '[\"20\",\"20\",\"20\",\"20\"]', 1),
(19688, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_height', '[\"20\",\"20\",\"20\",\"20\"]', 1),
(19686, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_swatches', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19685, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_title', '[\"0\",\"0\",\"0\",\"0\"]', 1),
(19683, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_type', '[\"inner\",\"inner\",\"inner\",\"inner\"]', 1),
(19684, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_space', '[\"30\",\"30\",\"30\",\"30\"]', 1),
(19682, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_zoom', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19681, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_tags', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19680, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_tax', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19678, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_related', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19679, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_social', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19676, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_bg_color', '[\"222222\",\"222222\",\"222222\",\"222222\"]', 1),
(19677, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_bg_hover_color', '[\"40A944\",\"80B82D\",\"FC8A35\",\"CF1F1F\"]', 1),
(19673, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_link_hover_color', '[\"40A944\",\"80B82D\",\"FC8A35\",\"CF1F1F\"]', 1),
(19674, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_color', '[\"FFFFFF\",\"FFFFFF\",\"FFFFFF\",\"FFFFFF\"]', 1),
(19675, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_hover_color', '[\"FFFFFF\",\"FFFFFF\",\"FFFFFF\",\"FFFFFF\"]', 1),
(19672, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_link_color', '[\"777777\",\"777777\",\"777777\",\"777777\"]', 1),
(19669, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_link', '[\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\"]', 1),
(19671, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_color', '[\"222222\",\"222222\",\"222222\",\"222222\"]', 1),
(19670, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_weight', '[\"600\",\"600\",\"600\",\"600\"]', 1),
(19668, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_cate', '[\"sans-serif\",\"sans-serif\",\"sans-serif\",\"sans-serif\"]', 1),
(19667, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_name', '[\"Work Sans\",\"Work Sans\",\"Work Sans\",\"Work Sans\"]', 1),
(19665, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_color', '[\"555555\",\"555555\",\"555555\",\"555555\"]', 1),
(19666, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_id', '[\"961\",\"961\",\"961\",\"961\"]', 1),
(19664, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_weight', '[\"400\",\"400\",\"400\",\"400\"]', 1),
(19663, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_size', '[\"1.4rem\",\"1.4rem\",\"1.4rem\",\"1.4rem\"]', 1),
(19662, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_link', '[\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Work+Sans:100,200,300,regular,500,600,700,800,900&amp;subset=latin-ext,latin\"]', 1),
(19660, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_name', '[\"Work Sans\",\"Work Sans\",\"Work Sans\",\"Work Sans\"]', 1),
(19661, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_cate', '[\"sans-serif\",\"sans-serif\",\"sans-serif\",\"sans-serif\"]', 1),
(19658, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_loader_img', '[\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\"]', 1),
(19659, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_id', '[\"961\",\"961\",\"961\",\"961\"]', 1),
(19657, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_lazy_load', '[\"0\",\"0\",\"1\",\"0\"]', 1),
(19656, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_scroll_top', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19654, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_responsive_type', '[\"specified\",\"specified\",\"specified\",\"specified\"]', 1),
(19653, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_layout', '[\"1\",\"2\",\"3\",\"4\"]', 1),
(19655, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_sticky_header', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(19652, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_status', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE IF NOT EXISTS `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE IF NOT EXISTS `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '3206380.7520'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days'),
(7, 4, 'In Stock'),
(8, 4, 'Pre-Order'),
(5, 4, 'Out Of Stock'),
(6, 4, '2-3 Days'),
(7, 5, 'In Stock'),
(8, 5, 'Pre-Order'),
(5, 5, 'Out Of Stock'),
(6, 5, '2-3 Days'),
(7, 6, 'In Stock'),
(8, 6, 'Pre-Order'),
(5, 6, 'Out Of Stock'),
(6, 6, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_store`
--

INSERT INTO `oc_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(1, 'Store 2', 'http://safira2.com/', ''),
(2, 'Store 3', 'http://safira3.com/', ''),
(3, 'Store 4', 'http://safira4.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE IF NOT EXISTS `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE IF NOT EXISTS `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'test.txt', 'test.txt.TR0JgLKgkj3xFgETmL2PYJWeIiU2cWnX', '588b8e0c252415d9b2afc08ec094fdc9f226be69', '2019-03-07 15:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'ef5ea0dcc336bb25eb1c944898fe84f1b09df393', 'vjgNQBoO5', 'John', 'Doe', 'demo@plazathemes.com', '', '', '127.0.0.1', 1, '2020-01-22 02:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/api\",\"208\":\"marketplace\\/event\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"273\":\"plaza\\/testimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptstaticblock\",\"277\":\"extension\\/module\\/ptproducts\"},\"modify\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/event\",\"208\":\"marketplace\\/api\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"273\":\"plaza\\/testimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptstaticblock\",\"277\":\"extension\\/module\\/ptproducts\"}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(7, 6, 'Birthday'),
(6, 6, 'Christmas'),
(8, 6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(5, 6, 'Pound ', 'lb'),
(2, 6, 'Gram', 'g'),
(1, 6, 'Kilogram', 'kg'),
(6, 6, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
