-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Haz 2018, 20:54:54
-- Sunucu sürümü: 10.1.32-MariaDB
-- PHP Sürümü: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_sayfalar`
--

CREATE TABLE `tbl_sayfalar` (
  `id` int(11) NOT NULL,
  `sayfabaslik` varchar(255) NOT NULL,
  `sayfaicerik` longtext NOT NULL,
  `ustid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tbl_sayfalar`
--

INSERT INTO `tbl_sayfalar` (`id`, `sayfabaslik`, `sayfaicerik`, `ustid`) VALUES
(2, 'ANASAYFA', '', 0),
(3, 'HAKKIMIZDA', 'lorem ipsummm', 0),
(4, 'HİZMETLERİMİZ', '', 0),
(5, 'REFERANSLARIMIZ', '', 0),
(6, 'GALERİ', '', 0),
(7, 'İLETİŞİM', '', 0),
(8, 'Misyon Vizyon', 'lorem ipsummm', 3),
(9, 'Misyon', 'lorem ipsummm', 8);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_sayfalar`
--
ALTER TABLE `tbl_sayfalar`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tbl_sayfalar` ADD FULLTEXT KEY `sayfabaslik` (`sayfabaslik`,`sayfaicerik`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_sayfalar`
--
ALTER TABLE `tbl_sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
