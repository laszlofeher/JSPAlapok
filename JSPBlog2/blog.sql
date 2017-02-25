-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Feb 25. 10:54
-- Kiszolgáló verziója: 10.1.13-MariaDB
-- PHP verzió: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogcategory`
--

CREATE TABLE `blogcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `blogcategory`
--

INSERT INTO `blogcategory` (`id`, `name`) VALUES
(1, 'Események');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogentry`
--

CREATE TABLE `blogentry` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `entry` text NOT NULL,
  `entrydate` date NOT NULL,
  `blogcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `blogentry`
--

INSERT INTO `blogentry` (`id`, `title`, `entry`, `entrydate`, `blogcategory_id`) VALUES
(1, 'Bejegyzés 1', '', '2017-02-01', 1),
(2, 'Bejegyzés 2', '', '2017-02-07', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `blogentry`
--
ALTER TABLE `blogentry`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT a táblához `blogentry`
--
ALTER TABLE `blogentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
