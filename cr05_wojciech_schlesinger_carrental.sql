-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Dez 2019 um 12:45
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr05_wojciech_schlesinger_carrental`
--
CREATE DATABASE IF NOT EXISTS `cr05_wojciech_schlesinger_carrental` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr05_wojciech_schlesinger_carrental`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `additionalcharges`
--

CREATE TABLE `additionalcharges` (
  `AdditionalChargesID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `additionalcharges`
--

INSERT INTO `additionalcharges` (`AdditionalChargesID`, `Amount`) VALUES
(1, 120),
(2, 30),
(3, 130),
(4, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`) VALUES
(1, 'John Doe'),
(5, 'Mary Doe'),
(6, 'Jack Johnson'),
(11, 'Alex Freeman'),
(12, 'Kate Allman'),
(13, 'Michelle Winter');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `invoice`
--

INSERT INTO `invoice` (`InvoiceID`, `Amount`) VALUES
(1, 110),
(2, 35),
(3, 90),
(4, 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rentalcar`
--

CREATE TABLE `rentalcar` (
  `RentalCarID` int(11) NOT NULL,
  `StartLocation` varchar(15) NOT NULL,
  `EndLocation` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rentalcar`
--

INSERT INTO `rentalcar` (`RentalCarID`, `StartLocation`, `EndLocation`) VALUES
(1, 'Wien', 'Eisenstadt'),
(2, 'Wien', 'Innsbruck'),
(3, 'Graz', 'Salzburg'),
(4, 'Salzburg', 'Wien');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rentalcompany`
--

CREATE TABLE `rentalcompany` (
  `CompanyID` int(11) NOT NULL,
  `CompanyName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rentalcompany`
--

INSERT INTO `rentalcompany` (`CompanyID`, `CompanyName`) VALUES
(1, 'RentACar'),
(2, 'ShareCar'),
(3, 'NoCab'),
(4, 'BestRent');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `ReservationID` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`ReservationID`, `Date`) VALUES
(1, '2019-12-27'),
(2, '2019-12-28'),
(3, '2019-12-27'),
(4, '2021-12-28'),
(5, '2019-12-31'),
(6, '2020-12-30');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `additionalcharges`
--
ALTER TABLE `additionalcharges`
  ADD PRIMARY KEY (`AdditionalChargesID`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceID`);

--
-- Indizes für die Tabelle `rentalcar`
--
ALTER TABLE `rentalcar`
  ADD PRIMARY KEY (`RentalCarID`);

--
-- Indizes für die Tabelle `rentalcompany`
--
ALTER TABLE `rentalcompany`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ReservationID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `additionalcharges`
--
ALTER TABLE `additionalcharges`
  MODIFY `AdditionalChargesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `invoice`
--
ALTER TABLE `invoice`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `rentalcar`
--
ALTER TABLE `rentalcar`
  MODIFY `RentalCarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `rentalcompany`
--
ALTER TABLE `rentalcompany`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
