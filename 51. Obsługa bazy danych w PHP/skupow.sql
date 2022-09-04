-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Maj 2022, 10:32
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `skupow`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firma`
--

CREATE TABLE `firma` (
  `IdFirmy` int(11) NOT NULL,
  `Nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `Miasto` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `Adres` varchar(80) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `firma`
--

INSERT INTO `firma` (`IdFirmy`, `Nazwa`, `Miasto`, `Adres`) VALUES
(1, 'Nowak&&Kowalski', 'Zgierz', 'ul. Potockiego 12'),
(2, 'Zdrowy owoc', 'Sopot', 'ul. Nowa 7'),
(3, 'Polskie sady', 'Pabianice', 'ul. Rudzka 25'),
(4, 'Czerwone Owoce', 'Katowice', 'ul. Pastewna 2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owoce`
--

CREATE TABLE `owoce` (
  `id_owoce` int(11) NOT NULL,
  `Nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `ilosc` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `IdFirmy` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `owoce`
--

INSERT INTO `owoce` (`id_owoce`, `Nazwa`, `ilosc`, `IdFirmy`) VALUES
(1, 'Apple', '10', '1'),
(2, 'Pear', '32', '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id_owoce` int(11) NOT NULL,
  `Data zamowienia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id_owoce`, `Data zamowienia`) VALUES
(1, '2018-04-28'),
(2, '2018-05-02');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`IdFirmy`);

--
-- Indeksy dla tabeli `owoce`
--
ALTER TABLE `owoce`
  ADD PRIMARY KEY (`id_owoce`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `firma`
--
ALTER TABLE `firma`
  MODIFY `IdFirmy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `owoce`
--
ALTER TABLE `owoce`
  MODIFY `id_owoce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
