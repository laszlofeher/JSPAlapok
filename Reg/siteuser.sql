-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Feb 24. 19:27
-- Kiszolgáló verziója: 10.1.13-MariaDB
-- PHP verzió: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pwp`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `siteuser`
--

CREATE TABLE `siteuser` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `crd` datetime NOT NULL,
  `lud` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `siteuser`
--

INSERT INTO `siteuser` (`id`, `email`, `password`, `crd`, `lud`) VALUES
(1, 'flp@gmail.com', '28b438d589b5b242095034f0eb65cd51dbf6add9bf439ae176b26b667ae16cb6836491275877a36e31d8e75e9102534d676cf719aac2c5a288bb801bae488fb7', '2017-02-15 00:00:00', '2017-02-15 00:00:00'),
(2, 'hgjgh', 'hgjgf', '2017-02-18 10:24:42', '2017-02-18 10:24:42');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `siteuser`
--
ALTER TABLE `siteuser`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `siteuser`
--
ALTER TABLE `siteuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
