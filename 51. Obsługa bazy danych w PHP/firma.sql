-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Mar 2022, 18:16
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
-- Baza danych: `firma`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pensje`
--

CREATE TABLE `pensje` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_os` int(2) NOT NULL,
  `pensja` int(6) NOT NULL,
  `od` date NOT NULL,
  `do` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pensje`
--

INSERT INTO `pensje` (`id`, `id_os`, `pensja`, `od`, `do`) VALUES
(1, 1, 1100, '1999-03-01', '1999-06-01'),
(2, 2, 1300, '1999-03-01', NULL),
(3, 3, 1500, '1999-03-01', '2000-05-31'),
(4, 3, 1800, '2000-06-01', NULL),
(5, 4, 1400, '1999-07-01', '2001-04-30'),
(6, 4, 1700, '2001-05-01', NULL),
(7, 5, 1800, '1999-10-01', '2001-09-30'),
(8, 5, 2000, '2001-10-01', NULL),
(9, 6, 1100, '1999-03-01', '2000-03-01'),
(10, 7, 2000, '1999-05-01', NULL),
(11, 8, 2100, '1999-08-01', NULL),
(13, 10, 2500, '2000-04-01', '2001-05-31'),
(14, 10, 3000, '2001-06-01', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `placowki`
--

CREATE TABLE `placowki` (
  `id_placowki` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `miasto` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `adres` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `placowki`
--

INSERT INTO `placowki` (`id_placowki`, `nazwa`, `miasto`, `adres`) VALUES
(1, 'H&M', 'Łódź', 'Sukienicza 14'),
(2, 'Omega', 'Łódź', 'Piotrkowska 79'),
(3, 'Komputroniks', 'Łódź', 'Rojna 10'),
(5, 'Milka', 'Łódź', 'Sukienicza 14'),
(6, 'C&A', 'Zgierz', 'Łódzka 15'),
(15, 'Lala', 'Sopot', 'Nowa 21'),
(16, 'Krokodyl', 'Szczecin', 'Wierzbowa 7');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(10) UNSIGNED NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL,
  `plec` char(1) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `data_zatrudnienia` date DEFAULT NULL,
  `zawod` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `pensja` decimal(10,0) DEFAULT NULL,
  `dodatek` decimal(10,0) DEFAULT NULL,
  `idplacowki` int(1) DEFAULT NULL,
  `idszefa` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `nazwisko`, `imie`, `pesel`, `plec`, `data_urodzenia`, `data_zatrudnienia`, `zawod`, `pensja`, `dodatek`, `idplacowki`, `idszefa`) VALUES
(1, 'Smith', 'Jan', '', 'M', '1971-01-22', '2003-05-15', 'informatyk', '3000', '0', 4, 0),
(2, 'Kowal', 'Małgorzata', '', 'K', '1969-02-12', '2000-02-01', 'sekretarka', '1700', '0', 2, 2),
(3, 'Anusz', 'Anna', '', 'K', '1974-08-22', '2003-05-15', 'prawnik', '3000', '0', 1, 90),
(4, 'Chiński', 'Marek', '', 'M', '1968-11-14', '2000-02-01', 'księgowy', '2200', '0', 2, 1),
(5, 'Mięta', 'Roman', '', 'M', '1963-03-17', '2000-05-07', 'grafik', '2000', '0', 3, 2),
(6, 'Gates', 'Karol', '', 'M', '1967-05-18', '2002-01-14', 'akwizytor', '1200', '0', 4, 2),
(7, 'Janasik', 'Anatol', '', 'M', '1968-01-21', '2001-10-15', 'menadżer', '3000', '0', 2, 2),
(8, 'Milion', 'Ewa', '', 'K', '1963-02-14', '2000-05-07', 'kasjer', '2800', '0', 6, 2),
(9, 'Bosman', 'Bogdan', '', 'M', '1980-01-01', '2006-04-01', 'portier', '1300', '0', 5, 10),
(10, 'Kildare', 'Dariusz', '', 'M', '1968-02-17', '2001-10-15', 'elektronik', '1400', '0', 5, 2),
(11, 'Holmes', 'Jakub', '', 'M', '1968-06-30', '2001-10-15', 'sprzedawca', '1700', '0', 2, 2),
(12, 'Kmicic', 'Jan', '', 'M', '1976-10-08', '2005-02-01', 'informatyk', '3000', '0', 1, 1),
(13, 'Potocki', 'Grzegorz', '', 'M', '1963-12-22', '2000-12-22', 'akwizytor', '1200', '0', 3, 10),
(14, 'Gigant', 'Grzegorz', '', 'M', '1976-11-16', '2005-02-01', 'elektronik', '1850', '0', 1, 10),
(15, 'Inny', 'Stefan', '', 'M', '1966-07-22', '2002-01-14', 'grafik', '2200', '0', 1, 4),
(16, 'Rzecki', 'Bogdan', '', 'M', '1968-01-22', '2001-10-15', 'informatyk', '3000', '0', 1, 1),
(17, 'Boss', 'Bohdan', '', 'M', '1966-03-26', '2002-01-14', 'księgowy', '1900', '0', 1, 10),
(18, 'Gates', 'Anna', '', 'K', '1970-04-07', '2004-09-03', 'menadżer', '3000', '0', 2, 2),
(19, 'Potocki', 'Stanisław', '', 'M', '1965-01-09', '2007-01-08', 'portier', '1300', '0', 2, 10),
(20, 'Mięta', 'Karol', '', 'M', '1965-04-05', '2006-01-19', 'kasjer', '2500', '0', 2, 0),
(21, 'Bosman', 'Janina', '', 'K', '1967-04-05', '2002-01-14', 'sekretarka', '2000', '0', 2, 0),
(22, 'Smith', 'Jan', '', 'M', '1965-04-25', '2006-01-19', 'sprzedawca', '1400', '0', 2, 2),
(23, 'Różny', 'Maria', '', 'K', '1965-05-22', '2005-08-20', 'sekretarka', '2000', '0', 3, 4),
(24, 'Potocki', 'Anna', '', 'K', '1965-01-13', '2007-01-08', 'kasjer', '2500', '0', 4, 0),
(25, 'Potocki', 'Karol', '', 'M', '1965-01-13', '2007-01-08', 'informatyk', '2500', '0', 4, 1),
(26, 'Milion', 'Roman', '', 'M', '1966-02-10', '2002-01-14', 'portier', '1200', '0', 4, 2),
(27, 'Mięta', 'Karol', '', 'M', '1970-05-07', '2004-09-03', 'menadżer', '3000', '0', 5, 0),
(28, 'Mięta', 'Anatol', '', 'M', '1970-05-07', '2004-09-03', 'księgowy', '1900', '0', 5, 0),
(29, 'Kowalska', 'Ewa', '', 'K', '1981-12-01', '2006-04-01', 'informatyk', '3000', '0', 5, 1),
(30, 'Kmicic', 'Bogdan', '', 'M', '1964-06-13', '2000-05-07', 'grafik', '2000', '0', 5, 1),
(31, 'Kopeć', 'Anna', '', 'K', '1970-10-15', '2003-05-15', 'elektronik', '1400', '0', 5, 90),
(32, 'Janasik', 'Iza', '', 'K', '1969-02-24', '2000-02-04', 'elektronik', '1850', '0', 5, 10),
(33, 'Inny', 'Jan', '', 'M', '1968-02-28', '2001-10-15', 'akwizytor', '1200', '0', 6, 10),
(34, 'Holmes', 'Adam', '', 'M', '1970-12-25', '2003-05-15', 'akwizytor', '1200', '0', 4, 2),
(35, 'Gigant', 'Grzegorz', '', 'M', '1968-02-25', '2001-10-15', 'księgowy', '1400', '0', 3, 4),
(36, 'Gates', 'Stefan', '', 'M', '1965-11-18', '2005-08-20', 'menadżer', '3000', '0', 2, 0),
(37, 'Gates', 'Stanisław', '', 'M', '1968-05-01', '2001-10-15', 'portier', '1200', '0', 1, 4),
(38, 'Chiński', 'Bohdan', '', 'M', '1969-04-05', '2000-02-01', 'kasjer', '2800', '0', 6, 2),
(39, 'Boss', 'Anna', '', 'K', '1965-04-25', '2006-01-19', 'sekretarka', '2000', '0', 2, 0),
(40, 'Bosman', 'Stanisław', '', 'M', '1969-09-17', '2004-09-17', 'sprzedawca', '1700', '0', 2, 10),
(41, 'Bosman', 'Karolina', '', 'K', '1970-09-29', '2004-09-03', 'sekretarka', '2000', '0', 2, 1),
(42, 'Aanausz', 'Jan', '', 'M', '1965-02-02', '2007-01-08', 'kasjer', '2500', '0', 2, 0),
(43, 'Kiel', 'Barbara', '', 'K', '1970-05-09', '2004-09-03', 'informatyk', '3000', '0', 4, 1),
(44, 'Gagatek', 'Zenon', '', 'M', '1967-03-12', '2002-01-14', 'portier', '1300', '0', 4, 0),
(45, 'Borowik', 'Michał', '', 'M', '1970-10-12', '2003-05-15', 'prezes', '3000', '0', 4, 2),
(46, 'Soski', 'Robert', '', 'M', '1968-07-26', '2000-02-04', 'księgowy', '1900', '0', 4, 0),
(47, 'Misiak', 'Jacek', '', 'M', '1967-08-30', '2002-01-14', 'informatyk', '2500', '0', 4, 0),
(48, 'Zysk', 'Maryla', '', 'K', '1965-11-04', '2005-08-20', 'grafik', '2200', '0', 4, 0),
(49, 'Robak', 'Jacek', '', 'M', '1967-02-07', '2002-01-14', 'elektronik', '1850', '0', 4, 10),
(50, 'Soplica', 'Jacek', '', 'M', '1963-01-01', '2005-02-01', 'elektronik', '1400', '0', 4, 10),
(51, 'Saweryn', 'Tomek', '', 'M', '1964-09-13', '2000-05-07', 'ekonom', '1200', '0', 4, 2),
(52, 'Boruta', 'Michał', '', 'M', '1964-12-21', '2007-01-08', 'magazynier', '1600', '0', 4, 10),
(53, 'Jasiak', 'Monika', '', 'K', '1968-08-03', '2000-02-04', 'sprzedawca', '1600', '0', 4, 10),
(54, 'Zysk', 'Anna', '', 'K', '1966-07-03', '2002-01-14', 'sekretarka', '1400', '0', 4, 1),
(55, 'Soplica', 'Jacek', '', 'M', '1965-05-19', '2005-08-20', 'kasjer', '2500', '0', 6, 0),
(56, 'Saweryn', 'Jacek', '', 'M', '1961-03-22', '2005-02-01', 'informatyk', '3000', '0', 6, 1),
(57, 'Robak', 'Marta', '', 'K', '1965-07-16', '2005-08-20', 'portier', '1300', '0', 6, 10),
(58, 'Kowalski', 'Michał', '', 'M', '1963-09-11', '2000-05-07', 'menadżer', '3000', '0', 6, 0),
(59, 'Jasiak', 'Morus', '', 'M', '1968-07-15', '2000-02-01', 'księgowy', '1900', '0', 6, 1),
(60, 'Grześkowiak', 'Szymon', '', 'M', '1969-05-14', '2004-09-03', 'ochroniarz', '1700', '0', 6, 2),
(61, 'Boruta', 'Tomek', '', 'M', '1965-12-25', '2005-08-20', 'ochroniarz', '1400', '0', 6, 10),
(62, 'Szumowski', 'Andrzej', '', 'M', '1955-11-26', '2001-02-01', 'akwizytor', '1200', '0', 6, 10),
(63, 'Karpowicz', 'Dorota', '', 'K', '1959-03-27', '2001-02-01', 'rzecznik', '3000', '0', 6, 90),
(64, 'Kilarski', 'Ewa', '', 'K', '1965-12-28', '2005-08-20', 'redaktor', '2000', '0', 6, 0),
(65, 'Waz', 'Fryderyk', '', 'M', '1963-02-26', '2000-05-07', 'księgowy', '2200', '0', 6, 1),
(66, 'Kostrzewski', 'Grzegor', '', 'M', '1960-10-30', '2004-02-01', 'elektryk', '1200', '0', 4, 10),
(67, 'Gigant', 'Grzegorz', '', 'M', '1970-10-05', '2004-09-03', 'konserwator', '1600', '0', 4, 10),
(68, 'Inny', 'Stefan', '', 'M', '1963-07-20', '2000-05-07', 'operator', '1000', '0', 4, 2),
(69, 'Różny', 'Stanisław', '', 'M', '1987-10-06', '2006-04-01', 'ochroniarz', '1500', '0', 3, 10),
(70, 'Boss', 'Bohdan', '', 'M', '1975-11-04', '2005-02-01', 'informatyk', '2500', '0', 3, 1),
(71, 'Gates', 'Anna', '', 'K', '1967-02-07', '2002-01-14', 'grafik', '2000', '0', 3, 1),
(72, 'Potocki', 'Stanisław', '', 'M', '1963-02-01', '2000-05-07', 'kasjer', '2800', '0', 3, 2),
(73, 'Mięta', 'Karol', '', 'M', '1964-11-09', '2007-01-08', 'księgowy', '1900', '0', 3, 0),
(74, 'Bosman', 'Jan', '', 'M', '1964-04-30', '2000-05-07', 'konserwator', '1000', '0', 3, 10),
(75, 'Inny', 'Anna', '', 'K', '1968-02-28', '2001-10-15', 'kierowca', '1800', '0', 1, 2),
(76, 'Homles', 'Barbara', '', 'K', '1970-12-25', '2003-05-15', 'sprzedawca', '1500', '0', 1, 1),
(77, 'Gigant', 'Bożena', '', 'K', '1968-02-25', '2001-10-15', 'sekretarka', '2000', '0', 1, 4),
(78, 'Gates', 'Grzegorz', '', 'M', '1979-09-29', '2006-04-01', 'techniczny', '1000', '0', 1, 10),
(79, 'Gatek', 'Jan', '', 'M', '1967-09-18', '2002-01-14', 'kasjer', '2500', '0', 1, 2),
(80, 'Chrust', 'Jan', '', 'M', '1969-05-14', '2004-09-03', 'kasjer', '2500', '0', 1, 2),
(81, 'Bastek', 'Janusz', '', 'M', '1962-05-01', '2005-02-01', 'informatyk', '3000', '0', 1, 1),
(82, 'Boran', 'Karol', '', 'M', '1962-11-18', '2005-02-01', 'porządkowy', '1000', '0', 1, 10),
(83, 'Baran', 'Michał', '', 'M', '1960-04-25', '2001-02-02', 'porządkowy', '1000', '0', 1, 90),
(84, 'Anusz', 'Stanisław', '', 'M', '1965-02-02', '2007-01-08', 'menadżer', '3000', '0', 1, 0),
(85, 'Kiel', 'Stanisław', '', 'M', '1971-05-10', '2003-05-15', 'menadżer', '3000', '0', 2, 1),
(86, 'Gagatek', 'Stefan', '', 'M', '1967-03-11', '2002-01-14', 'księgowy', '1900', '0', 3, 1),
(87, 'Borowik', 'Zenon', '', 'M', '1970-10-12', '2003-05-15', 'techniczny', '1300', '0', 2, 2),
(88, 'Kowalski', 'Marzena', '', 'K', '1963-02-01', '2005-02-01', 'kierowca', '1800', '0', 2, 10),
(89, 'Kaczan', 'Ewa', '', 'K', '1964-11-09', '2007-01-08', 'elektryk', '1200', '0', 2, 10),
(90, 'Wiss', 'Jan', '', 'M', '1964-04-30', '2000-05-07', 'malarz', '1200', '0', 3, 10),
(91, 'Wilk', 'Sabrina', '', 'K', '1957-12-13', '2001-02-01', 'pakowacz', '1000', '0', 4, 10),
(92, 'Paczka', 'Magdalena', '', 'K', '1973-03-16', '2003-05-15', 'informatyk', '3000', '0', 3, 10),
(93, 'Gałązka', 'Katarzyna', '', 'K', '1961-03-02', '2004-02-01', 'prezes', '4000', '0', 3, 0),
(94, 'Karpowicz', 'Mateusz', '', 'M', '1955-05-05', '2001-02-01', 'konserwator', '1600', '0', 3, 10),
(95, 'Mater', 'Krzysztof', '', 'M', '1960-09-07', '2001-02-02', 'pakowacz', '1000', '0', 3, 10),
(96, 'Kulak', 'Józef', '', 'M', '1954-07-21', '2001-02-02', 'porządkowy', '1200', '0', 3, 90),
(97, 'Busz', 'Stanisław', '', 'M', '1965-05-17', '2005-08-20', 'pakowacz', '1000', '0', 3, 2),
(98, 'Karpowicz', 'Anna', '', 'K', '1973-09-11', '2003-05-15', 'elektryk', '1300', '0', 3, 1),
(99, 'Kilarski', 'Barbara', '', 'K', '1968-07-15', '2000-02-01', 'informatyk', '2500', '0', 3, 1),
(100, 'Waz', 'Bohdan', '', 'M', '1959-05-14', '2001-02-01', 'kierowca', '1800', '0', 4, 10),
(101, 'Kurka', 'Grzegorz', '', 'M', '1965-11-21', '2005-08-20', 'asystent', '1200', '0', 4, 2),
(102, 'Jarek', 'Jan', '', 'M', '1955-01-27', '2001-02-01', 'techniczny', '1000', '0', 4, 10),
(103, 'Wanik', 'Kamil', '', 'M', '1960-03-27', '2001-02-01', 'informatyk', '3000', '0', 5, 1),
(104, 'Lisowski', 'Julian', '', 'M', '1964-12-28', '2007-01-08', 'prezes', '3000', '0', 6, 0),
(105, 'Łapa', 'Henryk', '', 'M', '1963-02-26', '2000-05-07', 'księgowy', '1900', '0', 3, 1),
(106, 'Miturski', 'Mateusz', '', 'M', '1960-10-30', '2004-02-01', 'informatyk', '2500', '0', 3, 2),
(107, 'Lysiak', 'Helena', '', 'K', '1970-10-05', '2004-09-03', 'sekretarka', '1500', '0', 3, 1),
(108, 'Wnuk', 'Jan', '', 'M', '1963-07-20', '2000-05-07', 'menadżer', '3000', '0', 2, 0),
(109, 'Mazurowski', 'Janusz', '', 'M', '1977-10-06', '2005-02-01', 'menadżer', '3000', '0', 2, 0),
(110, 'Bodek', 'Karol', '', 'M', '1965-11-05', '2005-08-20', 'informatyk', '3000', '0', 2, 1),
(111, 'Magierowicz', 'Stanisław', '', 'M', '1963-12-01', '2000-05-07', 'pakowacz', '1000', '0', 2, 10),
(112, 'Myślicki', 'Stanisław', '', 'M', '1962-11-08', '2005-02-01', 'porządkowy', '1000', '0', 2, 10),
(113, 'Rengifo', 'Stefan', '', 'M', '1984-04-30', '2006-04-01', 'grafik', '1700', '0', 1, 1),
(114, 'Golanczyk', 'Karol', '', 'M', '1959-03-27', '2001-02-01', 'techniczny', '1300', '0', 1, 10),
(115, 'Ludziejewski', 'Kamil', '', 'M', '1965-12-28', '2005-08-20', 'księgowy', '2200', '0', 2, 0),
(116, 'Iwaszko', 'Katarzyna', '', 'K', '1963-02-26', '2000-05-07', 'konserwator', '1600', '0', 4, 10),
(117, 'Muraszkowski', 'Michał', '', 'M', '1960-10-30', '2004-02-01', 'kierowca', '1800', '0', 6, 10),
(118, 'Grzegorczyk', 'Kazimierz', '', 'M', '1970-10-05', '2004-09-03', 'sprzedawca', '1500', '0', 4, 10),
(119, 'Abak', 'Karolina', '', 'K', '1957-10-06', '2001-02-01', 'grafik', '2200', '0', 3, 4),
(120, 'Bosman', 'Stefan', '', 'M', '1970-01-01', '2004-09-03', 'portier', '1300', '0', 3, 10),
(121, 'Boss', 'Stanisław', '', 'M', '1966-03-26', '2002-03-26', 'księgowy', '1400', '0', 5, 1),
(122, 'Kildare', 'Jan', '', 'M', '1968-02-27', '2001-10-15', 'elektronik', '1400', '0', 5, 4),
(123, 'Gigant', 'Jakub', '', 'M', '1966-11-16', '2002-01-14', 'elektronik', '1400', '0', 5, 2),
(124, 'Potocki', 'Grzegorz', '', 'M', '1963-12-22', '2000-05-07', 'akwizytor', '1200', '0', 5, 10),
(125, 'Homles', 'Grzegorz', '', 'M', '1968-06-30', '2001-10-15', 'sprzedawca', '1500', '0', 5, 2),
(126, 'Kmicic', 'Dariusz', '', 'M', '1986-10-08', '2006-04-01', 'informatyk', '2500', '0', 5, 1),
(127, 'Rogal', 'Bohdan', '', 'M', '1968-01-22', '2001-10-15', 'informatyk', '3000', '0', 6, 1),
(128, 'Inny', 'Bogdan', '', 'M', '1966-07-06', '2002-01-14', 'grafik', '2000', '0', 6, 1),
(129, 'Adaszynska', 'Barbara', '', 'K', '1973-01-03', '2003-05-15', 'sekretarka', '2000', '0', 6, 2),
(130, 'Cebula', 'Sebastian', '', 'M', '1975-11-02', '2005-02-01', 'informatyk', '3000', '0', 6, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pensje`
--
ALTER TABLE `pensje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `placowki`
--
ALTER TABLE `placowki`
  ADD PRIMARY KEY (`id_placowki`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pensje`
--
ALTER TABLE `pensje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `placowki`
--
ALTER TABLE `placowki`
  MODIFY `id_placowki` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
