-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Oca 2019, 00:19:56
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eliff-project`
--
CREATE DATABASE IF NOT EXISTS `eliff-project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eliff-project`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `status`) VALUES
(1, 0, 'KAHVELER', 'kahve', 'türk kültürü', 'True'),
(2, 1, 'Dünya Kahveleri', 'global', 'genel kültürler', 'True'),
(3, 1, 'Türk Kahveleri', 'yerel, geleneksel', 'genel kültürler', 'True'),
(4, 0, 'LOKUM & ŞEKERLEME', 'tatlılar, şekerlemeler,çikolatalar', 'şekerleme', 'True'),
(5, 4, 'Lokum', 'Türk lokumu, Safranbolu', 'Türklere özgü', 'True'),
(6, 4, 'Şekerleme', 'Çikolata, Çekme Helva, Pişmaniye, Kastamonu', 'türk kültür', 'True'),
(7, 0, 'KAHVE ALETLERİ', 'kahve, cezve', 'kahve yaparken gerekli araçlar', 'True'),
(8, 0, 'KURUYEMİŞLER', 'çerez', 'çeşit çeşit kuruyemiş', 'True'),
(9, 0, 'MEYVE KURULARI', 'kahve yanı, osmanlı', 'kahvenin yanında servis edilir', 'True'),
(10, 7, 'Cimbali', 'espresso makinesi', 'espresso yapar', 'True'),
(11, 7, 'Kahve Öğütücü', 'Kahve Değirmeni', 'kahveyi öğütür', 'True'),
(12, 7, 'Türk Kahvesi Makinesi', 'Türk Kahvesi', 'Türk kahvesi yapar', 'True'),
(13, 8, 'Antep Fıstığı', 'Kuruyemiş', 'çerez', 'True'),
(14, 8, 'Fındık', 'kabuklu, kabuksuz', 'çerez', 'True'),
(15, 8, 'Karışık Kuruyemiş', 'karma', 'çerez', 'True'),
(16, 9, 'Kuru İncir', 'meyve kurusu', 'kuru meyve', 'True'),
(17, 9, 'Kuru Kayısı', 'meyve kurusu', 'kuru meyve', 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `product_id`, `image`) VALUES
(2, 5, 'test2.jpg'),
(3, 1, '1ec3feaf2eb9037a4ce70f66781aa575.jpeg'),
(4, 6, '702e527803e3c468524f592d451c04e0.jpeg'),
(5, 7, '6e85a7496b63269c76dd6578139c5243.png'),
(6, 7, 'fd6405e2a98e243f0d3348fbbad4bb45.jpeg'),
(7, 7, 'a7f5ce6f67753c5caa92e011e9742873.jpeg'),
(8, 8, '41f312eee302fb969d228296cdcaf58f.jpeg'),
(9, 8, '8c3f4cae63fb6deb94792f340a2460ae.jpeg'),
(10, 8, '99568f170ae25f5ff1b048dda17b66a5.jpeg'),
(11, 9, '6d8a2d01a71473bfe1168da20c5a1589.jpeg'),
(12, 9, 'c725ee14f5514f03de543e00294023d0.jpeg'),
(13, 9, '874fafdf994fb52b44a84cfe6d0bf501.jpeg'),
(14, 9, 'c46f6225fabf597ad65f62905b23db61.jpeg'),
(15, 9, '71cd2f717e0b7042c3bd32568961c986.jpeg'),
(16, 10, 'b3fe2d50a472155ad0e978b3130ab7de.jpeg'),
(17, 10, '7b2ec42cc662dd9aca6b18f830c71bda.jpeg'),
(18, 10, '5475b19b2f5cbd15768afa49c35474b9.jpeg'),
(19, 11, '3f7c06ddc08ced8c3e35fc4c7fd041a7.jpeg'),
(20, 11, '1af91843a668a1d237efb9cc883bdc92.jpeg'),
(21, 11, '3d8844a97f0c1229fcd8c9d1f36a3adb.jpeg'),
(22, 11, 'd30c22ecac776fa674955c55eb4c74dc.png'),
(23, 21, 'b86c455ca5fbf3aeaee76ce973680b24.jpeg'),
(24, 22, 'e3dcfa71920d946bfcfd605b735573cd.jpeg'),
(25, 22, '689a808bbf5e38e90f1687d2ef3eb3f5.jpeg'),
(26, 24, '280cc07a0e78f7aa3421bbaee2eee6c6.gif'),
(27, 78, '24def54275efbfa177b9407e46c2720d.jpeg'),
(28, 78, '209c6cf5cacc6d3cab172d249e894013.jpeg'),
(29, 78, 'a408108285d9796adf1d947a0ae6e056.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `comment`, `status`) VALUES
(1, 'elif ', 'eelif@mynet.com', 'test', 'test mesajı', 'pis müşteri', 'Okundu'),
(2, 'eliff', 'elif-crk.1907@hotmail.com', 'asa', 'çok memnun kaldım', NULL, NULL),
(3, 'ebru', 'ebru@hotmail.com', 'memnuniyet', 'kahveleriniz çok güzel', NULL, NULL),
(5, 'sefa', 'sdfghjkl@fghjk', 'şikayet', 'çok yavaşsınız', NULL, NULL),
(6, 'seda', 'sefakrkmaz@hotmail.com', 'şikayet 2', 'kahveleriniz bayat', NULL, NULL),
(7, 'hsss', 'aaa@sjsjsj', 'DDDD', 'HAVVADAA SDSSRTYFABN', NULL, NULL),
(8, 'elif', 'aaak@sss', 'sss', 'm-deneme1', NULL, 'Okundu'),
(9, 'gfjhg', 'guuy@xn--jujkasf-tfb', 'uuıkl', 'dfghjklş', NULL, 'Okundu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20190107122507'),
('20190112151103'),
('20190113174236');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `address`, `city`, `phone`, `shipinfo`, `status`, `note`, `updated_at`, `created_at`) VALUES
(1, 1, 120.5, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'İptal', '', '2019-01-14 22:57:30', NULL),
(2, 1, 120.5, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', 'asd', 'Kargoda', 'assss', '2019-01-14 22:48:05', NULL),
(3, 1, 120.5, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', 'sss', 'Kargoda', NULL, '2019-01-14 22:41:25', NULL),
(4, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', NULL, 'Onaylandı', NULL, '2019-01-22 20:44:02', NULL),
(5, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Tamamlandı', '', '2019-01-22 20:42:57', NULL),
(6, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Onaylandı', '', '2019-01-23 09:31:54', NULL),
(7, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Tamamlandı', '', '2019-01-22 20:44:53', NULL),
(8, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Onaylandı', '', '2019-01-23 09:32:04', NULL),
(9, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', NULL, 'Kargoda', NULL, '2019-01-22 20:45:09', NULL),
(10, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', NULL, 'Kargoda', NULL, '2019-01-22 20:45:10', NULL),
(11, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', NULL, 'Kargoda', NULL, '2019-01-22 20:45:11', NULL),
(12, 1, 0, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Onaylandı', '', '2019-01-22 20:43:47', NULL),
(13, 1, 60, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'İptal', '', '2019-01-14 22:50:53', NULL),
(14, 1, 657.4, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Karabük', '05555555555', '', 'Onaylandı', '', '2019-01-23 09:32:13', NULL),
(15, 1, 182.6, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Sinop', '05555555555', '', 'Onaylandı', '', '2019-01-23 10:29:30', NULL),
(16, 1, 129.8, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Sinop', '05555555555', '', 'Onaylandı', '', '2019-01-23 09:57:37', NULL),
(17, 1, 116.4, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Sinop', '05555555555', '', 'Onaylandı', '', '2019-01-23 10:28:31', NULL),
(18, 1, 10, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Sinop', '05555555555', '', 'İptal', '', '2019-01-23 10:31:49', NULL),
(19, 1, 58.2, 'elif crk', 'yüzüncüyıl mah. 1021.sok 9/3', 'Sinop', '05555555555', '', 'Onaylandı', '', '2019-01-23 10:35:45', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`) VALUES
(1, 3, 1, 7, 4, 2, 8, 'Türk Kahvesi Folyo 100 Gr', 'Ordered'),
(2, 3, 1, 9, 22.5, 3, 67.5, 'Türk Kahvesi 500 gr', 'Ordered'),
(3, 3, 1, 8, 5, 9, 45, 'Dibek Kahvesi Folyo 100 Gr', 'Ordered'),
(4, 13, 1, 2, 10, 1, 10, 'Pellegro – Kenya AA Limited', 'Ordered'),
(5, 13, 1, 3, 10, 1, 10, 'Pellegro – Guatemalan Finca La', 'Ordered'),
(6, 13, 1, 7, 4, 10, 40, 'Türk Kahvesi Folyo 100 Gr', 'Ordered'),
(7, 14, 1, 61, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(8, 14, 1, 7, 4, 15, 60, 'Türk Kahvesi Folyo 100 Gr', 'Ordered'),
(9, 14, 1, 1, 10, 6, 60, 'Pellegro – Mexican Stewarship', 'Ordered'),
(10, 14, 1, 22, 59.9, 8, 479.2, 'Çikolatalı Lokum 440 gr', 'Ordered'),
(11, 15, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(12, 15, 1, 7, 4, 1, 4, 'Türk Kahvesi Folyo 100 Gr', 'Ordered'),
(13, 15, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(14, 15, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(15, 15, 1, 69, 4, 1, 4, 'Türk Kahvesi Folyo 100 Gr', 'Ordered'),
(16, 16, 1, 72, 59.9, 1, 59.9, 'Çikolatalı Lokum 440 gr', 'Ordered'),
(17, 16, 1, 72, 59.9, 1, 59.9, 'Çikolatalı Lokum 440 gr', 'Ordered'),
(18, 16, 1, 77, 10, 1, 10, 'Çikolata Kaplı Çekme Helva', 'Ordered'),
(19, 17, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(20, 17, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered'),
(21, 18, 1, 77, 10, 1, 10, 'Çikolata Kaplı Çekme Helva', 'Ordered'),
(22, 19, 1, 76, 58.2, 1, 58.2, 'Lüks Kokteyl Karışık Kuruyemiş', 'Ordered');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `title`, `keywords`, `description`, `type`, `producer_id`, `amount`, `pprice`, `sprice`, `min`, `detail`, `image`, `brand_id`, `category_id`, `user_id`, `year`, `status`, `brand`) VALUES
(1, 'Pellegro – Mexican Stewarship', 'global', 'dünya kahvesi', NULL, NULL, 10, 5, 10, NULL, 'çok güzel kahve', '851fa69abb5333a86316cdd9d69219d8.png', NULL, 2, NULL, NULL, 'True', NULL),
(2, 'Pellegro – Kenya AA Limited', 'global', 'dünya kahvesi', NULL, NULL, 10, 5, 10, NULL, '<p>&nbsp;</p>', '8453590c6ae14aa466f154d3039e6ae5.png', NULL, 2, NULL, NULL, 'True', 'Pellegro'),
(3, 'Pellegro – Guatemalan Finca La', 'global', 'dünya kahvesi', NULL, NULL, 10, 5, 10, NULL, '<p>&nbsp;</p>', 'c3fa4429d9b4ef85c527a83c304ea2ec.png', NULL, 2, NULL, NULL, 'True', 'Pellegro'),
(4, 'Pellegro Aromalı Kahve-Hazelnut', 'global', 'dünya kahvesi', NULL, NULL, 10, 5, 10, NULL, '<p>&nbsp;</p>', 'ca66c836b5ef9ca0dc014b91e9127d9e.png', NULL, 2, NULL, NULL, 'True', 'Pellegro'),
(5, 'Pellegro Aromalı Kahve-French Vanillia', 'global', 'geleneksel', NULL, NULL, 10, 5, 10, NULL, '<p>&nbsp;</p>', '6bffa8440347bbc8d3ee035c303bcacb.png', NULL, 2, NULL, NULL, 'True', 'Pellegro'),
(6, 'Pellegro Aromalı Kahve-French Caramel Creame', 'global', 'dünya kahvesi', NULL, NULL, 10, 5, 10, NULL, '<p>&nbsp;</p>', '3c6bd5addd8edb5db54c7a844c98f6d5.png', NULL, 2, NULL, NULL, 'True', 'Pellegro'),
(7, 'Türk Kahvesi Folyo 100 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 22, 2, 4, NULL, 'Türk Kültürü\n', '86e59657fbac5c03b2e34790ffbbbeeb.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(8, 'Dibek Kahvesi Folyo 100 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 22, 3, 5, NULL, '<p>&nbsp;</p>', '62c3a42ac222c66ca47e1434af51f226.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(9, 'Türk Kahvesi 500 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 22, 15, 22.5, NULL, '<p>&nbsp;</p>', '5071d2c487722fb59dd24d2d785c97dd.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(10, 'Dibek Kahvesi Kutu 100 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 22, 5, 7, NULL, '<p>&nbsp;</p>', '7f900855a5fbd2db262b23e4ceb7c986.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(11, 'Türk Kahvesi Kutu 100 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 4, 6.5, NULL, '<p>&nbsp;</p>', 'ce7f3b98dff75e4ef9f6197fe860a309.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(12, 'Damla Sakızlı Türk Kahvesi Kutu 100 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 5, 7, NULL, '<p>&nbsp;</p>', 'e650ddfff8e497723012de97fde2e836.png', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(13, 'Dibek Kahvesi 500 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 10, 23, 30, NULL, '<p>&nbsp;</p>', '0ee9bd11e916298a246181ff29519072.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(14, 'Bitter Çikolata Aromalı Türk Kahvesi', 'türk kültürü', 'geleneksel', NULL, NULL, 10, 5.25, 7.5, NULL, '<p>&nbsp;</p>', '5bcee8c8268a733dd1f6994fd0641e38.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(20, 'Damla Sakızlı Türk Kahvesi 500 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 10, 23, 28.5, NULL, '<p>&nbsp;</p>', '30e22489da586f88a0f87d5d70f69a08.jpeg', NULL, 3, NULL, NULL, 'True', 'HACIBABA'),
(21, 'Yer Fıstıklı Lokum (Yeşil Kutu) 2000gr', 'türk kültürü', 'geleneksel', NULL, NULL, 13, 27, 34.99, NULL, NULL, 'yerfistikli-lokum-2000.jpg', NULL, 5, NULL, NULL, 'True', 'Hacı Şerif'),
(22, 'Çikolatalı Lokum 440 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 12, 48, 59.9, NULL, NULL, 'cikolatali-lokum-440.jpg', NULL, 5, NULL, NULL, 'True', 'Hacı Şerif'),
(23, 'Special Lokum 550 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 8, 43.9, 52.9, NULL, NULL, 'special-lokum-550.jpg', NULL, 5, NULL, NULL, 'True', 'Hacı Şerif'),
(24, 'Karışık Lokum 1000 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 9, 42, 49, NULL, NULL, 'karisik-lokum-2-1000.jpg', NULL, 5, NULL, NULL, 'True', 'Hacı Şerif'),
(25, 'Safranbolu Lokumu 270 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 10, 8.75, 13.75, NULL, NULL, 'safranbolu-lokumu-270.jpg', NULL, 5, NULL, NULL, 'True', 'Hacı Şerif'),
(26, 'Çekme Helva Sade 60 gr', 'türk kültürü', 'geleneksell', NULL, NULL, 13, 0.35, 0.95, NULL, '<p>&nbsp;</p>', '6d1f9823432703212c13a4c394f09adc.jpeg', NULL, 5, NULL, NULL, 'True', 'HACIBABA'),
(27, 'Kestane Şekeri 300 gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 13.5, 17.5, NULL, '<p>Bursa\'nın meşhur ünlü şekerlemesidir.</p>', '56a170d603b49f356abd1b729f0ecacd.jpeg', NULL, 6, NULL, NULL, 'True', 'HACIBABA'),
(28, 'Çekme Helva Antep Fıstıklı 280 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 4.5, 7, NULL, '<p>&nbsp;</p>', 'be01b119c62030720c1ba7fb845b03cb.jpeg', NULL, 6, NULL, NULL, 'True', 'HACIBABA'),
(29, 'Çekme Helva Sade 280 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 3.3, 4.5, NULL, '<p>&nbsp;</p>', 'fa1bff4c64e72a22de3c7943b7768e16.jpeg', NULL, 6, NULL, NULL, 'True', 'HACIBABA'),
(30, 'Çikolata Kaplı Çekme Helva', 'türk kültürü', 'geleneksel', NULL, NULL, 13, 8.5, 10, NULL, '<p>&nbsp;</p>', '7db8abb59f789e5310c52c8f80d96920.jpeg', NULL, 6, NULL, NULL, 'True', 'HACIBABA'),
(31, 'Çekme Helva Antep Fıstıklı 370 Gr', 'türk kültürü', 'geleneksel', NULL, NULL, 15, 6, 7.5, NULL, '<p>&nbsp;</p>', '22c194969c7aea81d4bafb59ae1025fb.jpeg', NULL, 6, NULL, NULL, 'True', 'HACIBABA'),
(32, 'Cimbali Espresso Kahve Makinası 3 Grup - M24 Premium Te', NULL, NULL, NULL, NULL, 5, 25000.999, 32000.999, NULL, NULL, 'cimbali-1.jpg', NULL, 10, NULL, NULL, 'True', 'Cimbali'),
(33, 'Cimbali Espresso Kahve Makinası 2 Grup - M24 Plus Te', NULL, NULL, NULL, NULL, 4, 22000.999, 28000.999, NULL, NULL, 'cimbali-2.jpg', NULL, 10, NULL, NULL, 'True', 'Cimbali'),
(34, 'Cimbali Magnum On Demand Otomatik Kahve Değirmeni', NULL, NULL, NULL, NULL, 9, 9000.499, 15000.999, NULL, NULL, 'cimbali-3.jpg', NULL, 10, NULL, NULL, 'True', 'Cimbali'),
(35, 'Cimbali Espresso Kahve Makinası S30 - CS10', NULL, NULL, NULL, NULL, 8, 62000, 80000.001, NULL, NULL, 'cimbali-4.jpg', NULL, 10, NULL, NULL, 'True', 'Cimbali'),
(36, 'Cimbali Espresso Kahve Makinası - M1 Milkps ', NULL, NULL, NULL, NULL, 7, 46500, 60899.999, NULL, NULL, 'cimbali-5.jpg', NULL, 10, NULL, NULL, 'True', 'Cimbali'),
(37, 'Handground Manuel Kahve Değirmeni - Siyah', NULL, NULL, NULL, NULL, 9, 654000.064, 88500, NULL, NULL, '1ea6f155cce476c0394f011b2e7372bd.jpeg', NULL, 11, NULL, NULL, 'True', 'Handground'),
(38, 'Rommelsbacher Otomatik Kahve Değirmeni', NULL, NULL, NULL, NULL, 8, 794, 1180.001, NULL, NULL, 'a87dcd364d7704323503aa58d9587e23.jpeg', NULL, 11, NULL, NULL, 'True', 'Rommelsbacher'),
(39, 'Hario Mini Mill Slim Plus - Kahve Öğütücü', NULL, NULL, NULL, NULL, 15, 229, 300, NULL, NULL, '1ab37afa7b2a3a2a4fd713bd27fd324e.jpeg', NULL, 11, NULL, NULL, 'True', 'Hario'),
(40, 'Delonghi KG49 Kahve ve Baharat Öğütücü', NULL, NULL, NULL, NULL, 25, 234, 249, NULL, NULL, '68d387eff9178145801550d37a9d35df.jpeg', NULL, 11, NULL, NULL, 'True', 'Delonghi'),
(41, 'Kaave Türk Kahve Makinası – Kahverengi', NULL, NULL, NULL, NULL, 26, 279, 302, NULL, NULL, 'fakir.jpg', NULL, 12, NULL, NULL, 'True', 'Fakir'),
(42, 'OK004-MC Okka Minio Türk Kahvesi Makinesi -  MERCAN', NULL, NULL, NULL, NULL, 18, 269, 319, NULL, NULL, 'okka1.jpg', NULL, 12, NULL, NULL, 'True', 'Arzum'),
(43, 'Okka OK005-K Grandio Türk Kahvesi Makinesi Eu 2 Pin  Krom', NULL, NULL, NULL, NULL, 22, 979, 1000.078, NULL, NULL, 'okka2.jpg', NULL, 12, NULL, NULL, 'True', 'Arzum'),
(44, 'K-3190P Telve Türk Kahve Makinesi', NULL, NULL, NULL, NULL, 23, 999, 1399, NULL, NULL, 'arçelik.jpg', NULL, 12, NULL, NULL, 'True', 'Arçelik'),
(45, 'AR3034 Mırra Türk Kahvesi Makinesi', NULL, NULL, NULL, NULL, 15, 186, 199, NULL, NULL, 'arzum2.jpg', NULL, 12, NULL, NULL, 'True', 'Arzum'),
(46, 'Bosch MKM6003 Kahve Öğütücü', NULL, NULL, NULL, NULL, 20, 147, 179, NULL, NULL, 'bosch.jpg', NULL, 11, NULL, NULL, 'True', 'Bosch'),
(47, 'Pakette Antep Fıstığı', NULL, NULL, NULL, NULL, 21, 18.5, 22, NULL, 'Antep Fıstığının Faydaları\r\nAntep Fıstığı, lezzeti kadar faydaları ile de mutfakların vazgeçilmezi olan bir besin kaynağıdır. Öncelikle Antep Fıstığı, şeker hastalarının bir numaralı yardımcısıdır. Kan şekerini düzenleyici etkisi ile büyük oranda rahatlık sağlar. Antep Fıstığı ayrıca demir açısından oldukça zengin bir beşindir. Kansızlık problemleri yaşayanları için ideal bir yardımcıdır. Antep fıstığı tüketmenin, iyi huylu kolestrol üzerinde de olumlu etkileri vardır. Bu tip kolesterolu yüksektir, bu sayede kötü kolestrol düşer. Ayrıca, hemen hemen tüm yemişlerde olduğu gibi enerji deposudur!\r\n\r\nAntep Fıstığı Çeşitleri\r\nHacıbaba Kuruyemiş, en lezzetli Antep Fıstığı çeşitlerini tüketicelere sunmaktadır. Sitemiz üzerinden sipariş edeceğiniz Antep Fıstığı türleri en kısa sürede evinize ulaşır. Antep Fıstığı seçeneklerimiz, en taze ve lezzetli hasattan elde edilmiştir. İster çerezlik olarak, isterseniz de tatlıların içerisinde kullanabilirsiniz. Son yıllarda Antep Fıstığı sütü de, hayvansal gıda tüketimini sınırlamak isteyenlerin favorileri arasında girmiştir. En lezzetli geleneksel ve modern tatlılarda Antep fıstığı kullanabilirsiniz. İsterseniz normal antep fıstığı paketinde hemen kullanıma hazır; isterseniz de vakumlu antep fıstığı paketinde uzun süre tazeliğini koruyacak şekilde hazırlanmış seçenekleri değerlendirebilirsiniz.', 'antep.png', NULL, 13, NULL, NULL, 'True', 'HACIBABA'),
(48, 'Antep Fıstığı (Vakumlu Paket)', NULL, NULL, NULL, NULL, 20, 22, 25.5, NULL, 'Antep Fıstığının Faydaları\r\nAntep Fıstığı, lezzeti kadar faydaları ile de mutfakların vazgeçilmezi olan bir besin kaynağıdır. Öncelikle Antep Fıstığı, şeker hastalarının bir numaralı yardımcısıdır. Kan şekerini düzenleyici etkisi ile büyük oranda rahatlık sağlar. Antep Fıstığı ayrıca demir açısından oldukça zengin bir beşindir. Kansızlık problemleri yaşayanları için ideal bir yardımcıdır. Antep fıstığı tüketmenin, iyi huylu kolestrol üzerinde de olumlu etkileri vardır. Bu tip kolesterolu yüksektir, bu sayede kötü kolestrol düşer. Ayrıca, hemen hemen tüm yemişlerde olduğu gibi enerji deposudur!\r\n\r\nAntep Fıstığı Çeşitleri\r\nHacıbaba Kuruyemiş, en lezzetli Antep Fıstığı çeşitlerini tüketicelere sunmaktadır. Sitemiz üzerinden sipariş edeceğiniz Antep Fıstığı türleri en kısa sürede evinize ulaşır. Antep Fıstığı seçeneklerimiz, en taze ve lezzetli hasattan elde edilmiştir. İster çerezlik olarak, isterseniz de tatlıların içerisinde kullanabilirsiniz. Son yıllarda Antep Fıstığı sütü de, hayvansal gıda tüketimini sınırlamak isteyenlerin favorileri arasında girmiştir. En lezzetli geleneksel ve modern tatlılarda Antep fıstığı kullanabilirsiniz. İsterseniz normal antep fıstığı paketinde hemen kullanıma hazır; isterseniz de vakumlu antep fıstığı paketinde uzun süre tazeliğini koruyacak şekilde hazırlanmış seçenekleri değerlendirebilirsiniz.', 'antep-vakum.jpg', NULL, 13, NULL, NULL, 'True', 'HACIBABA'),
(49, 'Pakette Siirt Fıstığı', NULL, NULL, NULL, NULL, 22, 14.75, 17, NULL, 'Antep Fıstığının Faydaları\r\nAntep Fıstığı, lezzeti kadar faydaları ile de mutfakların vazgeçilmezi olan bir besin kaynağıdır. Öncelikle Antep Fıstığı, şeker hastalarının bir numaralı yardımcısıdır. Kan şekerini düzenleyici etkisi ile büyük oranda rahatlık sağlar. Antep Fıstığı ayrıca demir açısından oldukça zengin bir beşindir. Kansızlık problemleri yaşayanları için ideal bir yardımcıdır. Antep fıstığı tüketmenin, iyi huylu kolestrol üzerinde de olumlu etkileri vardır. Bu tip kolesterolu yüksektir, bu sayede kötü kolestrol düşer. Ayrıca, hemen hemen tüm yemişlerde olduğu gibi enerji deposudur!\r\n\r\nAntep Fıstığı Çeşitleri\r\nHacıbaba Kuruyemiş, en lezzetli Antep Fıstığı çeşitlerini tüketicelere sunmaktadır. Sitemiz üzerinden sipariş edeceğiniz Antep Fıstığı türleri en kısa sürede evinize ulaşır. Antep Fıstığı seçeneklerimiz, en taze ve lezzetli hasattan elde edilmiştir. İster çerezlik olarak, isterseniz de tatlıların içerisinde kullanabilirsiniz. Son yıllarda Antep Fıstığı sütü de, hayvansal gıda tüketimini sınırlamak isteyenlerin favorileri arasında girmiştir. En lezzetli geleneksel ve modern tatlılarda Antep fıstığı kullanabilirsiniz. İsterseniz normal antep fıstığı paketinde hemen kullanıma hazır; isterseniz de vakumlu antep fıstığı paketinde uzun süre tazeliğini koruyacak şekilde hazırlanmış seçenekleri değerlendirebilirsiniz.\r\n\r\nSiirt Fıstığı Çeşitleri\r\nÜlkemize özgü lezzetlerden birisi olan Siirt Fıstığı da, Hacıbaba Kuruyemiş’in müşterilerine sunduğu tatlar arasında yer alıyor. Antep Fıstığı’na göre daha az yağlı ve daha buruk bir tadı olan Siirt Fıstığı, tiryakilerinin vazgeçemediği bir lezzet. Çok daha iridir ve çok daha farklı bir tada sahiptir. Yöresel olarak bittim şeklinde de adlandırılan bu değerli fıstık, iri menengüç ağaçlarına vurulan fıstık aşısından elde edilir. Eğer kuruyemiş seviyorsanız ve farklı bir lezzet arıyorsanız, Siirt Fıstığına mutlaka şans vermelisiniz. Atıştırmalık olarak harika bir seçenektir. Hacıbaba Kuruyemiş internet sitesi üzerinden Siirt fıstığı sipariş etmek mümkünüdür. Uzun süre tazeliğini korumasını isterseniz eğer, vakumlu Siirt fıstığı paketini almanızı öneririz. Eğer hemen tüketmeyi planlıyorsanız, normal pakette Siirt fıstığı seçeneklerimizi inceleyebilirsiniz.', 'siirt.png', NULL, 13, NULL, NULL, 'True', 'HACIBABA'),
(50, 'Siirt Fıstığı (Vakumlu Paket)', NULL, NULL, NULL, NULL, 23, 14.5, 15.99, NULL, 'Şam fıstığından biraz daha büyük yapıda olan Siirt fıstığı (vakumlu paket), çıtır lezzeti ve çabuk açılabilen yapısı ile hem miniklerin hem de ebeveynlerin damak tadına hitap ediyor.', 'siirt-vakum.jpg', NULL, 13, NULL, NULL, 'True', 'HACIBABA'),
(51, 'Kabuklu Antep Fıstığı Özel Seçilmiş Lüx Antep Fıstığı', NULL, NULL, NULL, NULL, 21, 17.5, 19.99, NULL, NULL, 'kabuklu.jpg', NULL, 13, NULL, NULL, 'True', 'Pakfın'),
(52, 'Kavrulmuş Fındık İçi', NULL, NULL, NULL, NULL, 23, 10.99, 12.75, NULL, 'İç haliyle satışa sunulan enfes kavrulmuş fındık, ara öğünlerde  ve diyet dönemlerinde tüketebileceğiniz son derece sağlıklı ve besleyici bir lezzet.', 'fındıkiçi.png', NULL, 14, NULL, NULL, 'True', 'HACIBABA'),
(53, 'Çiğ Fındık İçi 175 Gr (Vakumlu Paket)', NULL, NULL, NULL, NULL, 22, 9.75, 11, NULL, 'Ülkemiz, dünya fındık üretiminde bir numaradır. Karadeniz Bölgesi’nin iklim özellikleri, fındık yetiştiriciliği için ideal ortamı oluşturur. Fındığı aslında yetiştiği bölgenin insanına benzetmek yanlış olmaz! Dışarıdan gelen tehlikelere karşı kendini koruyan, ancak içinde müthiş bir lezzet yatan bu kuruyemiş her gün tüketilmelidir. Fındığın en çok tercih edilen türleri, en kalitelisi ve en uygun fiyatlısı; Hacıbaba Kuruyemiş güvencesi ile şimdi satışta.\n\nSağlık Deposu Fındık\nFındık, bulamaz bir enerji kaynağıdır. Vücudu harekete geçirir, zihni kuvvetlendirir. Beyinde ve bedende yaşanan yorgunlukla mücadele için birebirdir. Gün içerisinde kendinizi yorgun hissettiğinizde, paketlenmiş ve katkı maddeler içeren yapay şekerli vidalar yerine doğal bir enerji kaynağı olan fındığa yönelebilirsiniz.\n\nFındığın kalp sağlığı üzerinde oldukça fazla olumlu etkisi vardır Onun için kalp dostu kuruyemiş demek yanlış olmaz! Kötü kolestrol üzerinde düşürücü etkisi olduğu görülmektedir. Kalp ritmi konusunda sıkıntılar yaşayanlar için de, ritim düzenleyici özelliği ile tercih edilebilen bir kuruyemiştir. Bütün bu özelliklerinin yanısıra, kalp krizi riskine karşı da koruyucu bir kalkan görevi görmektedir. Kalbinizin dostu bu minik ve lezzetli mucizeyi mutfaklarınızdan eksik etmemelisiniz!\n\nKavrulmuş Fındık Çeşitleri\nHacıbaba Kuruyemiş, farklı damak tatlarına uygun fındık çeşitlerini sizlere sunuyor. Kavrulmuş fındık, çıtır çıtır bir lezzet arayanların bir numaralı tercihi durumunda. Kavrulmuş fındık çeşitlerini isterseniz normal pakette isterseniz vakumlu pakette alabilirsiniz. Kavrulmuş fındığı kahvaltı sofranıza ekleyebilirsiniz. Müsli ya da yoğurt ile tüketildiği zaman harika bir ara ogün alternatifi oluşturur. Ayrıca tatlıların içerisine de çok yakışır. Fındık ile yapacağınız keklerin tadına doyum olmaz. Sütlü tatlıların üzerini süslemek için tercih edebilirsiniz. Şerbetli tatlıların da içerisinde kullanabilirsiniz.\n\nEn Taze Çiğ Fındık\nHacıbaba Kuruyemiş üzerinden sadece kavrulmuş fındık değil aynı zamanda çiğ fındık da alabilirisiniz. Vakumlu paket içerisinde satılan çiğ fındık, uzun süre tazeliğini koruyarak lezzetinden hiçbir şey kaybetmez. Kuruyemişler, daha gevrek bir yapı elde etmek de dayanıklılığı arttırmak için kavrulmaktadır. Kavrulma işlemi, kimi zaman kuru kimi zaman ise yağlı olarak yapılır. Faydaları bakımından kavrulmuş ve çiğ kuruyemiş birbirleri ile benzerlik göstermektedir. damak tadınıza uygun olanı seçmek sizin elinizde!', 'çiğfındıkiçi.jpg', NULL, 14, NULL, NULL, 'True', 'HACIBABA'),
(54, 'Kavrulmuş Fındık İçi 175 Gr (Vakumlu Paket)', NULL, NULL, NULL, NULL, 22, 11.5, 14, NULL, 'v', 'kavrulmuşfındıkiçi.jpg', NULL, 14, NULL, NULL, 'True', 'HACIBABA'),
(55, 'Kavrulmuş Fındık - Ordu', NULL, NULL, NULL, NULL, 21, 32.99, 36.97, NULL, 'Ayrıntılar\n* Türkiye\'de üretilmiştir. % 100 Yerli Ürün\n\n* Kavrulmuş Ordu Fındığıdır. Jumbo boydur.\n\n* Cinsel güç arttırıcı etkisine sahiptir.\n\n* Kolestrol, kansızlık, kemik hastalıkları, varisler, akciğer hastalıkları gibi rahatsızlıklara karşı olumlu etki gösterebilir.\n\n* Koşulsuz iade edebilirsiniz. Detaylı bilgi almak için lütfen tıklayın.\n\n* Sağlığınız için Kilitli Kraft Ambalaj kullanıyoruz.', 'ordu.jpg', NULL, 14, NULL, NULL, 'True', 'HACIBABA'),
(56, 'Doğal Giresun Fındık İçi Kavrulmuş 500 Gr', NULL, NULL, NULL, NULL, 20, 35.75, 41, NULL, 'Ayrıntılar\nKaradeniz iklimi, fındık için en uygun ortamı oluşturur.Fındık, kışın çiçeklenen ve döllenen tek bitkidir.\n\n5 bin yıldır  bilinen,36˚-41˚ kuzey enlemlerinde ve kendine özgü iklim koşullarında yetişen fındık,Türkiye ağırlıklı olmak üzere İtalya, İspanya ve Amerika\'da yetiştirilir.Türkiye, yıllık dünya üretiminin ortalama % 70’ine sahiptir. Giresun ve Trabzon Beşikdüzü, Vakfıkebir, Çarşıbaşı ve Akçaabat ilçelerinde yetiştirilen Giresunfındığı tadı ve  yağ oranıyla dünyanın enlezzetli  fındığıdır. Fındık; çikolata,bisküvi, şekerleme, tatlı pasta, dondurma imalatında kullanılmaktadır. \n', 'giresun.jpg', NULL, 14, NULL, NULL, 'True', 'HACIBABA'),
(57, 'Kokteyl Ekstra (Vakumlu Paket)', NULL, NULL, NULL, NULL, 22, 17.5, 21.5, NULL, NULL, 'kokteyl.jpg', NULL, 15, NULL, NULL, 'True', 'HACIBABA'),
(58, 'Kokteyl Tropikal 200 Gr (Vakumlu Paket)', NULL, NULL, NULL, NULL, 21, 6.85, 8.5, NULL, 'Renkli kuru meyvelerle zenginleştirilen kokteyl tropikal lezzeti, vakumlu paketi sayesinde taptaze şekilde sofralarınıza kadar getiriliyor.\n\nKokteyl Tropikal (Vakumlu Paket) 200 Gr.', 'tropikal.jpg', NULL, 15, NULL, NULL, 'True', 'HACIBABA'),
(59, 'Kokteyl Lüks 175 Gr (Vakumlu Paket)', NULL, NULL, NULL, NULL, 22, 12.75, 15, NULL, NULL, 'kokteyl-luks.jpg', NULL, 15, NULL, NULL, 'True', 'HACIBABA'),
(60, 'Kokteyl Ekstra', NULL, NULL, NULL, NULL, 23, 21.5, 27, NULL, 'Taze şekilde beğeniye sunulan kokteyl ekstra içerisinde fıstık, kaju, kaplamalı fıstık ve Antep fıstığı gibi farklı çerez seçenekleri bulabilmeniz mümkün.', 'kokteyl-ekstra.png', NULL, 15, NULL, NULL, 'True', 'HACIBABA'),
(61, 'Lüks Kokteyl Karışık Kuruyemiş', NULL, NULL, NULL, NULL, 22, 49.89, 58.2, NULL, NULL, 'Luks-Kokteyl-Karisik-Kuruyemis-Kg-2fdd.png', NULL, 15, NULL, NULL, 'True', 'Özbeyoğlu Kuruyemiş'),
(62, 'Organik Kuru İncir (Vakumlu Paket)', NULL, NULL, NULL, NULL, 22, 9.75, 13.5, NULL, 'Yumuşak içi ve aromatik lezzeti ile öne çıkan damaklara layık bir yemiş daha kuruyemiş tabaklarınıza Hacıbaba Kuruyemiş farkı ile ekleniyor.\n\nAmbalajı sayesinde tazeliğini uzun süre boyunca koruyan organik kuru incir (vakumlu paket), ara öğünlerin yanı sıra tatlı tariflerinin de en güzel tamamlayıcısı.\n\nEnfes tada sahip olan inciri, elde tüketmek istiyorsanız ceviz eşliğinde güzel bir lezzet bütünlüğü oluşturabilirsiniz. Tercih ederseniz bayram ve düğün gibi özel günlerde sevdiklerinize kahve eşliğinde ikramda bulunabilirsiniz.', 'incir-organik.jpg', NULL, 16, NULL, NULL, 'True', 'HACIBABA'),
(63, 'Kuru Kayısı Gün Kurusu (Vakumlu Paket) 300 Gr', NULL, NULL, NULL, NULL, 22, 7.5, 11.5, NULL, 'Kayısının Bizim için Önemi\nKayısı, Doğu topraklarının dünyaya bir armağanıdır. Ülkemizde de uygun bir biçimde Malatya kentinde üretilmektedir. Türkiye, bu üretim ile geçtiğimiz yıllarda, dünya lideri olan Özbekistan’nın önüne geçmiştir. Bu iki ülke dışında İran ve İtalya da dünyadaki önemli kayısı üreticileri arasında yer almaktadır. Kayısı, hem tarım ekonomisinde hem de gastronomide, bütün dünyada önemli bir yere sahiptir.\n\nGünümüzde gelişen tarım teknolojileri ile bütün meyvelere yıl boyunca erişim mevcut. Bu durumun böyle olmadığı eski çağlarda, meyveler kurutularak saklanıyordu. Ayrıca göçebe toplumlarda da yeni gidilen yerde de özlenen yiyeceklere sahip olmak adine yiyeceklerin kurutulması tercih edilen bir yöntemdi. Kayısı da bu şekilde kurutularak tüketilen besinler arasında yer alıyor. Dünya kuru kayısı üretiminde ülkemiz bir numaralı ülke konumunda.\n\nKayısının Faydaları\nKayısının faydalarını daha iyi anlamak için içerisindeki besin değerlerine bakmak yeterli olacaktır. Öncelikle kayısı pek çok kuru meyvede olduğu gibi, önemli bir enerji kaynağıdır. İçerisinde yok denecek kadar az yağ bulunur, ancak karbonhidrat açısından zengindir. Kayısı, özellikle E vitamini açısından benzersiz bir meyvedir. E vitamini hücre yenilenmesinde önemli bir rol oynar. Bu nedenle güzellik endüstrisinde kayısı kendine geniş bir yer bulur. Ayrıca A vitamini, beta karoten, ve B grubu vitaminleri açısından da zengindir. Kayısının bir diğer özelliği de önemli bir merak kaynağı olmasıdır. Potasyum ve demir, bayisinin içerisindeki temel minerallerdir.\n\nHacıbaba Kuruyemiş, en lezzetli kayısı çeşitlerini müşterilerine sunuyor. Hem sülfür ile imza niteliğindeki sarı rengine kavuşmuş olan kuru kayısı şekerpare, hem de doğal yöntemler kullanılarak kurutulan ve köyü renk olan gün kurusu kayısı; müşterilerimize sunduğumuz kuru kayısı çeşitleri arasında yer alıyor. Her biri tek bir tık ile anında kapınızda!', 'kayisi-gunkurusu.jpg', NULL, 17, NULL, NULL, 'True', 'HACIBABA'),
(64, 'Kuru Kayısı Şekerpare', NULL, NULL, NULL, NULL, 22, 7.5, 11.5, NULL, NULL, 'kuru-kayisi-sekerpare.jpg', NULL, 17, NULL, NULL, 'True', 'HACIBABA'),
(65, 'Fırsat Ürün !', NULL, 'Bazı ürünlerde kaçırılmayacak fırsatlar !', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'okka-slider.jpg', NULL, NULL, NULL, NULL, 'Slider', NULL),
(66, NULL, NULL, 'Ücretsiz kargo imkanıyla keyifli bir alışveriş..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kargo.png', NULL, NULL, NULL, NULL, 'Slider', NULL),
(68, 'Pellegro – Mexican Stewarship', NULL, NULL, NULL, NULL, 10, 5, 10, NULL, NULL, '535392cec3c07a5322ffc79fc942fce3.png', NULL, 2, NULL, NULL, 'New', 'Pellegro'),
(69, 'Türk Kahvesi Folyo 100 Gr', NULL, NULL, NULL, NULL, 22, 2, 4, NULL, NULL, '86e59657fbac5c03b2e34790ffbbbeeb.jpeg', NULL, 3, NULL, NULL, 'New', 'HACIBABA'),
(70, 'OK004-MC Okka Minio Türk Kahvesi Makinesi -  MERCAN', NULL, NULL, NULL, NULL, 18, 269, 319, NULL, NULL, 'okka1.jpg', NULL, 12, NULL, NULL, 'New', 'Arzum'),
(71, 'Kabuklu Antep Fıstığı Özel Seçilmiş Lüx Antep Fıstığ', NULL, NULL, NULL, NULL, 21, 17.5, 19.99, NULL, NULL, 'kabuklu.jpg', NULL, 13, NULL, NULL, 'New', 'Pakfın'),
(72, 'Çikolatalı Lokum 440 gr', NULL, NULL, NULL, NULL, 12, 48, 59.9, NULL, NULL, 'cikolatali-lokum-440.jpg', NULL, 5, NULL, NULL, 'New', 'Hacı Şerif'),
(73, 'Bitter Çikolata Aromalı Türk Kahvesi', NULL, NULL, NULL, NULL, 10, 5.25, 7.5, NULL, NULL, '5bcee8c8268a733dd1f6994fd0641e38.jpeg', NULL, 3, NULL, NULL, 'New', 'HACIBABA'),
(74, 'Bosch MKM6003 Kahve Öğütücü', NULL, NULL, NULL, NULL, 20, 147, 179, NULL, NULL, 'bosch.jpg', NULL, 11, NULL, NULL, 'New', 'Bosch'),
(76, 'Lüks Kokteyl Karışık Kuruyemiş', NULL, NULL, NULL, NULL, 22, 49.89, 58.2, NULL, NULL, 'Luks-Kokteyl-Karisik-Kuruyemis-Kg-2fdd.png', NULL, 15, NULL, NULL, 'New', 'Özbeyoğlu Kuruyemiş'),
(77, 'Çikolata Kaplı Çekme Helva', NULL, NULL, NULL, NULL, 13, 8.5, 10, NULL, NULL, '7db8abb59f789e5310c52c8f80d96920.jpeg', NULL, 6, NULL, NULL, 'New', 'HACIBABA'),
(78, 'Dibek Kahvesi Folyo 100 Gr', NULL, 'İNDİRİMDE !', NULL, NULL, 22, 3, 5, NULL, NULL, '62c3a42ac222c66ca47e1434af51f226.jpeg', NULL, 3, NULL, NULL, 'Slider', 'HACIBABA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `company`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `aboutus`, `contact`, `referances`, `status`) VALUES
(1, 'Kahve Kutusu', 'Online kahve ve kahve araçları satışı yapan ve kahve kültürü hakkında bilgilendiren site', 'Kahve çeşitleri,Türk', 'Hacıbaba Kahvecisi', 'Nişantaş Mah.Dr.M.Hulusi Baybal Cad.H.Uluşahin İş', '05555555555', NULL, NULL, 'smtp.gmail.com', 'deneme@gmail.com', '123456789', 587, '<p>&nbsp;</p><h2>Tarihçe / Kilometre Taşları</h2><p>2016</p><h2>Türk ve Dünya Kahveleri Açılımı</h2><p>Türk kahvesi üretim kapasitesini arttırmak ve dünya kahvelerini üretmek için kavurma, işleme ve paketleme üzerine fabrikada modern bir altyapı kuruldu. “Hacıbaba Kurukahve” ve “Pellegro Coffee” markaları ile yerel ve ulusal piyasaya paketli ürünlerini sürmeye başladı.</p><p>2012</p><h2>Ulusal Marketler ve Standart Yönetim Sistemleri</h2><p>Fabrika’nın kurulması ile birlikte Tesco – Kipa tarafından yürütülen, BRC koşullarını içeren, gıda güvenliği ve perakendecilik denetimleri gerçekleşti ve başarı ile tamamlandı. Kalite kontrol, izlenebilirlik ve kaynak planlama gibi yönetim sistemleri kuruldu. Bugün Migros dahil birçok yerel ve ulusal marketlere kuruyemiş reyon işleticiliği ve toptan mal tedariği sağlanmaktadır.</p><p>2011</p><h2>Fabrika’ya Geçiş</h2><p>Ankara’nın Kahramankazan ilçesine bağlı Gimat Depolama ve Sanayi Sitesi‘nde 13.000 m2 kapalı alana sahip bir fabrika inşa edildi. Depolama, ayıklama, temizleme, işleme, kavurma ve paketleme gibi birçok aşamanın yer aldığı kuruyemiş ve kurutulmuş meyve üzerine entegre üretim tesisi kuruldu. Yönetim birimleri tek çatı altında toplandı.</p><p>2007</p><h2>Toptan Kuruyemişçilik: Kuruyemiş Borsası Açıldı</h2><p>Gimat Toptancılar Sitesi’nde (Ankara) “Kuruyemiş Borsası” markası ile rekabetçi ve dinamik bir toptan satış mağazası açıldı. Şehirler arası geniş bir satış ağı oluşturan bu şirket ulusal ölçekte satış yapmaya başladı. Ayrıca bir dönem Megacenter’da (İstanbul) şube açtı ve marmara bölgesi satışlarını bu noktadan gerçekleştirdi. Şu an satışlarını www.kuruyemisborsasi.com dijital platformundan sürdürmektedir.</p><p>2003</p><h2>Cafe-restoran Sektörüne Giriş : Kahveci Hacıbaba</h2><p>Bugün (2018) 15+ franchise bayiisi bulunan ve 700’ün üzerinde istihdam sağlayan “Kahveci Hacıbaba” konseptinin ilk şubesini Necatibey Caddesi’nde (Ankara) açtı. Şirketin kahve kültürüne olan tutkusu bu yıllardan başlamıştır. Halen bu gruba ürün ve hizmet sağlanmaktadır.</p><p>1997</p><h2>Şirket Yapısı ve İmalathane</h2><p>Anonim şirket yapısına geçen “Hacıbaba Kuruyemiş” merkez olarak Gimat Toptancılar Sitesi’nde (Ankara) kavurucu ve işleyici olarak kuruyemiş üretimine başladı. Kapasite artışı sonrası Gersan Sanayi Sitesi’ne, ardından Yıldırımlar Sanayi Sitesi’ne taşındı.</p><p>1993</p><h2>Şubeleşme ve İşletme Sistemi</h2><p>Özgün bir işletme sistemi kurdu. İlk şubesini açtıktan sonra istikrarla yayılmaya başladı. Franchising ile kendine bağlı perakende dükkan sayısını arttırmaya devam etti. Başarılı çalışanların iş yeri sahibi olarak kendi kuruyemiş mağazalarını açmalarına katkı sağladı.</p><p>1989</p><h2>Kuruluş : Küçük Bir Kuruyemişçi Dükkanı</h2><p>Etlik Ticaret Merkezi’nde (Ankara) 18 m2‘lik mütevazi bir perakende kuruyemiş dükkanı ile meslek hayatına atıldı. Kısa zamanda şehirde kalite ve güven sağlayan “Hacıbaba Kuruyemiş” için markalaşma serüveni başlamış oldu.</p><p>&nbsp;</p><p>&nbsp;</p>', '<div class=\"container section-title-container\" ><h3 class=\"section-title section-title-normal\"><b></b><span class=\"section-title-main\" >İletişim</span><b></b></h3></div><!-- .section-title -->\n<p><span class=\"h5\" style=\"color: #282828;\"><strong><b><i class=\"wp-svg-location location\"></i> Merkez Adres:</b> </strong></span></p>\n<p><span class=\"h5\" style=\"color: #282828;\">Saray Mahallesi, Gimat Depolama ve Sanayi Sitesi </span></p>\n<p><span class=\"h5\" style=\"color: #282828;\">107. Sokak No: 4, </span><span class=\"h5\" style=\"color: #282828;\">06980 Kahramankazan, Ankara / Türkiye</span></p>\n<p><span style=\"color: #282828;\"><strong><i class=\"wp-svg-phone phone\"></i></strong> <strong>Halkla İlişkiler:</strong></span> <a style=\"color: #76051b;\" href=\"tel:905302983894\">+90 (530) 298 38 94</a></p>\n<p><span style=\"color: #282828;\"><strong><i class=\"wp-svg-phone phone\"></i></strong> <strong>Çağrı Merkezi:</strong></span> <a style=\"color: #76051b;\" href=\"tel:03128020002\">+90 (312) 802 00 02</a></p>\n<p><span style=\"color: #282828;\"><strong><i class=\"wp-svg-print print\"></i></strong></span> <span style=\"color: #282828;\"><strong>Fax: </strong></span><a style=\"color: #76051b;\" href=\"tel:03128020003\">+90 (312) 802 00 03</a></p>\n<p><span style=\"color: #282828;\"><strong><i class=\"wp-svg-envelop envelop\"></i></strong></span> <strong><span style=\"color: #282828;\">Mail:</span></strong> <a style=\"color: #76051b;\" href=\"mailto:iletisim@hacibabakuruyemis.com\">iletisim@hacibabakuruyemis.com</a></p>\n<p><span style=\"color: #282828;\"><strong><i class=\"wp-svg-clock-2 clock-2\"></i></strong><b> Fabrika Çalışma Saatleri: </b></span></p>\n<p><span style=\"color: #282828;\">08:00 &#8211; 17:30 (Hafta İçi)* </span></p>\n<p><span style=\"color: #282828;\">08:00 &#8211; 17:30 (Cumartesi)**</span></p>\n<p>*Saatler şubelerimize göre değişiklik göstermektedir. Şubelerimizin açılış ve kapanış saatlerini “<a href=\"https://hacibabakuruyemis.com/subelerimiz/\">Şubelerimiz</a>” sayfasından bulabilirsiniz.</p>\n<p>**Cumartesi günü mesailerimiz iki haftada bir yapılmaktadır.</p>\n<p>&nbsp;</p>\n\n                    </div>', '<b><i><center><p>KAHVECİ HACIBABA</p></center>\n<center><p>COFFEE BRAND</p></center>\n<center><p>COFFEE HOUSE</p></center></b></i>', 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shopcart`
--

INSERT INTO `shopcart` (`id`, `userid`, `productid`, `quantity`) VALUES
(4, 11, 9, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `status`, `address`, `city`, `phone`) VALUES
(1, 'elif@gmail.com', 'ROLE_ADMIN', '$2y$10$26AHnS6K8m0hOhFGgtXCB.lhTPdIO97y8P1Rj4GubEF3miEhvIxgO', 'elif crk', 'True', 'yüzüncüyıl mah. 1021.sok 9/3 ', 'Sinop', '05555555555'),
(2, 'sefa@hotmail.com', 'ROLE_ADMIN', '$2y$12$xBex3B3n0LvvMza1YS5SZ.NJPqzGlRu6Fwe5ejXi1giRaTZ59MuqC', 'sefa krkmz', 'True', NULL, NULL, NULL),
(3, 'ebus@gmail.com', 'ROLE_POWER', '$2y$10$PiEgMdEma2PApsdZiH0g7eX0YIkh5OEqyz.6wLqCc7aA1ivIjPLvu', 'ebru', 'True', 'piyade mah.1977. sok. 18/12 ', 'Ankara', '05454545454'),
(9, 'karafatma@hotmail.com', 'ROLE_MEMBER', '$2y$10$O8h/QA5IVsQSPC/f0GCJPuH92isIuQEnVFMXogOutEzHE0WHyIQ2a', 'fatma kara', 'True', NULL, NULL, NULL),
(10, 'canan@hotmail.com', 'ROLE_USER', '$2y$10$Q7gjeb7g6TpSpYUHt2p33us6WI2Onp.nhV3I6Dt5wzt1NYxIYEe7q', 'canan', 'False', NULL, NULL, NULL),
(11, 'ali@gmailcom', 'ROLE_USER', '$2y$10$03qIHf3aK0MIxeBAhzniWeEWb0yUfyN7DgbNWyBwJ.TXi.1HCdzWS', 'ali crk', 'True', NULL, NULL, NULL),
(12, 'yuksel@gmail.com', 'ROLE_USER', '$2y$10$/o9iEwK6eIy5MeXZJXomiuzwNZ.0ZLbzH1Q7Su5kUmNG0HP0NnT9m', 'yüksel çelik', NULL, 'ekmek mah.', 'Batman', '05323533618');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Elif', 'elif.curuk@hotmail.com', 'asas', 'Admin', 'True', '2018-12-15 15:46:06', '2018-12-15 15:46:41'),
(2, 'Ebru', 'elif-crk.1907@hotmail.com', 'weqref', 'Kargocu', 'True', '2018-12-15 15:46:57', '2018-12-15 15:46:57');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
