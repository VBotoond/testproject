-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 06. 15:03
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `websitedb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `advertisements`
--

INSERT INTO `advertisements` (`id`, `userid`, `title`) VALUES
(1, 1, 'Johnson\'s Bookstore'),
(2, 13, 'Acme Co. Product Launch'),
(3, 29, 'XYZ Corp. Summer Sale'),
(4, 3, 'Innovative Solutions Webinar'),
(5, 23, 'Global Enterprises Conference'),
(6, 18, 'Alpha Industries New Release'),
(7, 11, 'Beta Co. End-of-Year Clearance'),
(8, 6, 'Gamma Inc. Fall Collection'),
(9, 25, 'Delta Innovations Training Session'),
(10, 17, 'Epsilon Products Demo Day'),
(11, 9, 'Zeta Corp. Annual Meeting'),
(12, 19, 'Eta Industries Trade Show'),
(13, 16, 'Theta Co. Spring Sale'),
(14, 26, 'Iota Solutions Webinar'),
(15, 14, 'Kappa Enterprises Conference'),
(16, 28, 'Lambda Inc. New Release'),
(17, 2, 'Mu Industries End-of-Year Clearance'),
(18, 30, 'Nu Co. Fall Collection'),
(19, 8, 'Xi Innovations Training Session'),
(20, 21, 'Omicron Products Demo Day'),
(21, 4, 'Pi Corp. Annual Meeting'),
(22, 27, 'Rho Industries Trade Show'),
(23, 12, 'Sigma Co. Spring Sale'),
(24, 5, 'Tau Solutions Webinar'),
(25, 20, 'Upsilon Enterprises Conference'),
(26, 1, 'Phi Inc. New Release'),
(27, 15, 'Chi Industries End-of-Year Clearance'),
(28, 24, 'Psi Co. Fall Collection'),
(29, 10, 'Omega Innovations Training Session'),
(30, 7, 'Acme Co. Product Launch'),
(31, 29, 'XYZ Corp. Summer Sale'),
(32, 2, 'Innovative Solutions Webinar'),
(33, 18, 'Global Enterprises Conference'),
(34, 31, 'Alpha Industries New Release'),
(35, 11, 'Beta Co. End-of-Year Clearance'),
(36, 25, 'Gamma Inc. Fall Collection'),
(37, 13, 'Delta Innovations Training Session'),
(38, 4, 'Epsilon Products Demo Day'),
(39, 27, 'Zeta Corp. Annual Meeting'),
(40, 19, 'Eta Industries Trade Show'),
(41, 16, 'Theta Co. Spring Sale'),
(42, 23, 'Iota Solutions Webinar'),
(43, 8, 'Kappa Enterprises Conference'),
(44, 30, 'Lambda Inc. New Release'),
(45, 3, 'Mu Industries End-of-Year Clearance'),
(46, 17, 'Nu Co. Fall Collection'),
(47, 9, 'Xi Innovations Training Session'),
(48, 6, 'Omicron Products Demo Day'),
(49, 22, 'Pi Corp. Annual Meeting'),
(50, 12, 'Rho Industries Trade Show'),
(51, 5, 'Sigma Co. Spring Sale'),
(52, 26, 'Tau Solutions Webinar'),
(53, 20, 'Upsilon Enterprises Conference'),
(54, 14, 'Phi Inc. New Release'),
(55, 31, 'Chi Industries End-of-Year Clearance'),
(56, 24, 'Psi Co. Fall Collection'),
(57, 1, 'Omega Innovations Training Session');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Alan Johnson'),
(2, 'John Smith'),
(3, 'Jane Doe'),
(4, 'Mark Johnson'),
(5, 'Sarah Wilson'),
(6, 'Tom Davis'),
(7, 'Emily Brown'),
(8, 'Adam Lee'),
(9, 'Olivia Green'),
(10, 'Jack Anderson'),
(11, 'Natalie Taylor'),
(12, 'Kevin Martinez'),
(13, 'Avery Jones'),
(14, 'Derek Garcia'),
(15, 'Mia Collins'),
(16, 'Ethan White'),
(17, 'Lucy Allen'),
(18, 'Luke Turner'),
(19, 'Chloe Foster'),
(20, 'Oscar Hill'),
(21, 'Lily Peterson'),
(22, 'Isaac Wright'),
(23, 'Ava Cooper'),
(24, 'Noah Phillips'),
(25, 'Sophie Gray'),
(26, 'Leo Jackson'),
(27, 'Harper Wilson'),
(28, 'Logan Baker'),
(29, 'Bella Campbell'),
(30, 'Elijah Parker'),
(31, 'Aria Rogers');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
