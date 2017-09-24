-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 24. zář 2017, 23:41
-- Verze serveru: 10.1.21-MariaDB
-- Verze PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `oop`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `pms`
--

CREATE TABLE `pms` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `mid` text NOT NULL,
  `uid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `pms`
--

INSERT INTO `pms` (`id`, `content`, `mid`, `uid`) VALUES
(8, 'Ahoj jirko.', 'Jirka1', 'admin'),
(9, 'ahoj jirko', 'jirka1', 'admin'),
(10, 'ahoj jÃ¡!', 'mates123', 'admin'),
(11, 'zdarl yty pÄÃ­Å¡Ã­Ã­Å¡Ã­Å¡i', 'wolfinek', 'jirka1'),
(12, 'ahoj jÃ¡', 'admin', 'admin'),
(13, 'ahoj jÃ¡ znovu', 'admin', 'admin'),
(14, 'loremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsuml', 'admin', 'admin'),
(17, 'Aho jÃ¡ :)', 'admin', 'admin'),
(18, '/ban', 'jinambo', 'admin1'),
(19, '/ban', 'jinambo', 'admin1');

-- --------------------------------------------------------

--
-- Struktura tabulky `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `op` text NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `op`, `mid`, `date_posted`) VALUES
(42, 'Some title', 'Some content', 'admin', NULL, '2017-09-21 09:23:06'),
(65, 'Novej title', 'Novej content', 'admin', NULL, '2017-09-21 10:39:20'),
(66, '', 'Novej komentÃ¡Å™', 'admin', 65, '2017-09-21 10:39:38'),
(67, '', 'Tento formular stojÃ­ za velkou slepici moreno ahahah moje babka by udÄ›lala lepÅ¡Ã­ web hahaah\n\n- wolfÃ­k', 'admin', 65, '2017-09-21 10:41:36'),
(68, '', 'Tento web se mi docela lÃ­bÃ­ rÃ¡da bich se tu sznÃ¡myla s nÄ›jakÃ½m kluÄÃ­kem cheche <3 mucq \n', 'admin', 65, '2017-09-21 10:43:20'),
(69, '', 'ahojky,pusinky', 'jirka1', 65, '2017-09-21 10:45:08'),
(70, '', ':*', 'admin', 65, '2017-09-21 10:45:26'),
(71, '', 'jiÅ™Ã­ Äepela je mrtÄ› kokot... nemÃ¡te nÄ›kdo C#?', 'jirka1', 65, '2017-09-21 10:45:30'),
(72, '', 'karel gottu', 'jirka1', 65, '2017-09-21 10:45:46'),
(79, 'ahoj', 'test', 'jirka1', NULL, '2017-09-21 10:47:21'),
(80, '', 'piÅ¡tÄ› sem nic', 'jirka1', 79, '2017-09-21 10:47:35'),
(81, '', 'Ahoj\n\n', 'Jinambik', 65, '2017-09-21 10:49:20'),
(82, '', 'Ja jsem kokot', 'Jinambik', 65, '2017-09-21 10:49:27'),
(83, '', 'Muhahahahaha I ma the hackerman', 'Jinambik', 65, '2017-09-21 10:49:39'),
(84, '', 'nic', 'admin', 79, '2017-09-21 10:49:47'),
(85, '', 'NemÃ¡Å¡ nÄ›jakÃ½ CÅ hark ? \n', 'Jinambik', 65, '2017-09-21 10:50:04'),
(86, '', 'Ja jsme jiÅ™ik Å rytru', 'Jinambik', 65, '2017-09-21 10:50:13'),
(87, '', 'Heslo na admina je admin :P :D \n', 'Jinambik', 65, '2017-09-21 10:50:30'),
(88, '', 'Naser si PultÅ™e', 'Jinambik', 79, '2017-09-21 10:51:01'),
(89, '', 'nic', 'admin', 79, '2017-09-21 10:51:22'),
(91, '', 'Tak ne :D ', 'Jinambik', 65, '2017-09-21 10:52:51'),
(92, '', 'â”€â”€â”€â”€â–‘â–‘â–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–‘â–‘â”€â”€â”€\nâ”€â–‘â–‘â–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–’â–’â–’â–“â–“â–“â–“â–“â–“â–“â–“â–“â–“â–’â–’â–“â–“â”€â”€â”€â”€â”€â–‘â”€â”€â”€\nâ–‘â–‘â”€â”€â”€â”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â–“â–“â–“â–“â–’â–“â–“â–ˆâ–ˆâ–“â”€â”€â”€â”€â–‘â”€â”€\nâ–‘â”€â”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ–“â–’â–’â–‘â”€â”€â–‘â–’â–’â–‘â”€â”€â–‘â–‘â–‘â–‘â–‘â–‘â–‘â”€â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€â”€â–‘â”€\nâ–‘â”€â”€â”€â–ˆâ–ˆâ–‘â”€â”€â”€â–‘â–‘â–’â–‘â–‘â–‘â–‘â”€â”€â”€â–‘â”€â–‘â–‘â–’â–’â–“â–“â–’â–‘â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€â–‘â–‘\nâ”€â”€â”€â–“â–ˆâ”€â”€â”€â–’â–‘â”€â”€â”€â–’â–‘â”€â”€â”€â”€â–’â”€â”€â”€â”€â”€â”€â”€â–’â–’â–’â–‘â”€â”€â–‘â–ˆâ”€â”€â”€â”€â–‘\nâ”€â”€â”€â–ˆâ–’â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â”€â”€â”€â”€â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€â”€\nâ”€â”€â–ˆâ–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â–ˆâ–ˆâ–“â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â–‘â”€â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€\nâ”€â–ˆâ–ˆâ–’â–‘â”€â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–“â–ˆâ–“â–’â–ˆâ–’â”€â–“â–“â–“â–ˆâ–’â”€â–ˆâ–ˆâ–“â”€\nâ–“â–ˆâ”€â–‘â–“â–ˆâ–ˆâ–“â”€â”€â”€â”€â”€â”€â–ˆâ”€â”€â”€â”€â”€â–’â”€â”€â”€â–’â–ˆâ–“â–‘â–’â–ˆâ–ˆâ–ˆâ–“â–‘â–ˆâ–ˆâ”€â”€â–ˆâ–’\nâ–ˆâ–ˆâ”€â”€â–’â–‘â–’â–ˆâ–ˆâ–ˆâ–’â”€â”€â–ˆâ–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–’â–’â–’â”€â”€â–’â–ˆâ”€â”€â–ˆâ–ˆâ”€â–‘â–ˆ\nâ–‘â–ˆâ”€â–‘â”€â”€â–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ–“â”€â”€â”€â”€â”€â–“â–ˆâ–ˆâ–’â”€â”€â”€â”€â”€â–’â–ˆâ–ˆâ–’â–ˆâ–ˆâ–’â–“â–ˆâ”€â”€â–ˆ\nâ”€â–ˆâ–ˆâ–‘â”€â–ˆâ–ˆâ–‘â”€â”€â”€â–ˆâ–ˆâ–“â”€â”€â”€â–ˆâ–ˆâ–“â–‘â–ˆâ”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–ˆâ–‘â”€â–ˆâ–‘â”€â–ˆâ–ˆ\nâ”€â”€â–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â”€â–’â–ˆâ–ˆâ”€â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–“â–‘â”€â–ˆâ–ˆâ–’â–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ”€\nâ”€â”€â–ˆâ–“â”€â–ˆâ–“â–ˆâ–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–‘â–ˆâ”€â”€â–’â–ˆâ–ˆâ–ˆâ–’â–ˆâ–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ”€â”€\nâ”€â”€â–ˆâ–“â”€â–ˆâ–ˆâ–ˆâ–‘â–ˆâ–“â”€â”€â–ˆâ–’â”€â–‘â–ˆâ”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€\nâ”€â”€â–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â–ˆâ–ˆâ”€â”€â”€â”€â–“â–ˆâ”€â”€â”€â”€\nâ”€â”€â–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â–ˆâ”€â”€â–ˆâ–ˆâ–“â”€â”€â”€â”€â–‘â–ˆâ–‘â”€â”€â”€â–‘\nâ”€â”€â–ˆâ–“â”€â–‘â–ˆâ–ˆâ–“â–ˆâ”€â–ˆâ”€â–’â–ˆâ”€â”€â”€â–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â–ˆâ–ˆâ–’â”€â”€â”€â–‘â–‘\nâ”€â”€â–ˆâ–’â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–ˆâ–’â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â–‘â–’â–“â–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â–‘â”€\nâ”€â”€â–ˆâ–‘â”€â”€â”€â”€â”€â”€â–’â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–‘â–‘â”€â”€â–‘â–’â–‘â–“â–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â”€â”€â”€â–‘â”€\nâ”€â”€â–ˆâ”€â”€â–’â”€â–’â–’â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–’â–’â–‘â”€â”€â–“â–ˆâ–ˆâ–‘â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â”€â–‘\nâ”€â”€â–ˆâ”€â”€â–‘â–’â–’â–’â–’â–’â–‘â–‘â”€â–‘â”€â–‘â”€â–‘â”€â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â–‘â”€â”€â”€â”€â–‘\nâ”€â”€â–ˆâ–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–’â–’â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–‘â”€â”€â”€â–‘\nâ”€â”€â”€â–ˆâ–ˆâ–“â–‘â”€â”€â”€â”€â”€â”€â–’â–“â–ˆâ–ˆâ–ˆâ–ˆâ–“â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â–‘â”€â”€â”€â”€\nâ”€â”€â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–’â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–‘â”€â”€â”€\nâ”€â”€â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â–‘â”€â”€â”€\nâ”€â”€â–‘â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â–‘â”€â”€â”€\nâ”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â”€â”€â”€\nâ”€â”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â”€â”€â”€\nâ”€â”€â”€â–‘â–‘â”€â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â–“â–ˆâ–ˆâ”€â”€â”€â–‘â”€â”€â”€\nâ”€â”€â”€â–‘â–’â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â”€â–‘â–‘â”€â”€â”€\nâ”€â”€â–‘â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â–‘â–‘â”€â”€â”€â”€â”€\nâ”€â–‘â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–’â”€â”€â”€â”€â”€â–‘\nâ”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–’â”€â”€â”€â”€â”€â–‘\nâ–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â”€â–‘â–‘â”€â”€â”€â”€\nâ–‘â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â”€â–‘â–‘â”€â”€â”€\nâ”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â”€â–‘â–‘â”€â”€\nâ–‘â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â–‘â”€\nâ–‘â”€â”€â”€â”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â”€â–‘\nâ–’â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â–‘\nâ”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€\nâ”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€\nâ”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€\nâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€\nâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€\nâ”€â–“â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â–‘â–‘â–‘â–‘â–‘â–’â–’â”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–‘â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â”€â”€â”€â”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€\nâ”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–‘â–‘â”€â”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘\nâ–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â”€â”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â–‘â–‘\nâ–‘â”€â”€â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–‘â”€â”€â–‘â”€â”€â”€â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â”€â–‘â–‘â”€\nâ–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–“â”€â”€â–‘â”€â”€â”€â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–“â–ˆâ–ˆâ–ˆâ–ˆâ–’â”€â”€â”€â”€â–‘â–‘â”€â”€â”€\nâ–‘â–‘â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â”€â”€â”€â–‘â”€â”€â”€â–ˆâ–ˆâ–‘â”€â–“â”€â”€â”€â”€â”€â–‘â–‘â–‘â”€â”€â”€â”€\nâ”€â–‘â”€â”€â–’â–ˆâ–ˆâ–ˆâ–’â”€â–ˆâ–“â”€â”€â–‘â–‘â”€â”€â”€â–‘â–‘â”€â”€â”€â–’â–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â–‘â”€â”€â”€â”€â”€â”€â”€\nâ”€â–‘â–‘â”€â”€â”€â–‘â–ˆâ–‘â”€â–“â–ˆâ”€â”€â–‘â–‘â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â–ˆâ–ˆâ–ˆâ”€â”€â–‘â–‘â”€â”€â”€â”€â”€â”€â–‘â–‘\nâ”€â”€â–‘â”€â”€â”€â”€â–ˆâ–“â–ˆâ–ˆâ–ˆâ”€â”€â–‘â”€â”€â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â–‘â”€â”€â”€â–‘â”€â”€â”€â”€â–‘â–‘â–‘â”€â”€\nâ”€â”€â–‘â–‘â”€â”€â–ˆâ–’â”€â–ˆâ–ˆâ”€â”€â”€â–‘â”€â”€â”€â”€â”€â”€â”€â”€â–‘â”€â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â–‘â–‘â”€â”€â”€â”€\nâ”€â”€â–‘â”€â”€â–‘â–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–‘â–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â–‘â–‘â–‘â–‘â”€â”€â”€â”€â”€â–‘â”€â”€â”€â”€â”€\nâ”€â”€â–‘â–‘â”€â”€â–’â–‘â”€â”€â”€â”€â–‘â–‘â”€â”€â”€â”€â–’â–‘â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–‘â”€â”€â”€â”€â”€â”€\n', 'Jinambik', 65, '2017-09-21 10:53:27'),
(93, 'Ztratila jsem koÄiÄku (ZASE)', 'Ahoj lidi ztratila jsem koÄiÄku jak ste is uÅ¾ mohly pÅ™eÄÃ­st z nÃ¡zvu mucq hehe. ChtÄ›la bych udÄ›lat sraz koÄiÄÃ­ch majitelÅ¯ aby mi pomohly najÃ­t mojÃ­ koÄiÄku kterÃ¡ mi moc chybÃ½  smutnej smajlÃ­k. Bylo by to zhruba tak v pondÄ›lÃ­ a zaÄly bychom u mÄ› na zahradÄ› vÅ¡ichni koÄiÄÃ­ majitelÃ© se prosÃ­m podepiÅ¡te pod tento komentÃ¡Å™. \n\nDÄ›kuji panÃ­ koÄiÄkovÃ¡ mucq <3', 'PanÃ­ koÄiÄkovÃ¡', NULL, '2017-09-21 10:53:40'),
(94, '', 'â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â–ˆâ–ˆâ–ˆâ”€â”€â–’â”€â”€â”€â”€Ô¼Æ Æ›ÆŠ Æ³Æ Æ²Â´Æ¦ ÆÆ›Æ¬Æ¬Ð„Æ¦Æ³â”€â”€â”€â”€â–’â”€â”€â”€â–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ”€â”€â–ˆâ”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–“â–“â–“â–“â–“â–“â–“â–ˆâ”€â”€â–ˆâ–“â–“â”€â–“â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ”€â–“â–“â–“â–“â–“â–“â–ˆâ”€â”€â–ˆâ–“â–“â”€â–“â–“â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ”€â”€â–ˆâ”€â–“â–“â–“â–“â–“â–ˆâ”€â”€â–ˆâ–“â–“â”€â–“â–“â–“â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ”€â–“â–“â–“â–“â–ˆâ”€â”€â–ˆâ–“â–“â”€â–“â–“â–“â–“â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â–ˆâ”€â”€â–ˆâ”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\nâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆâ”€â”€â”€â”€â”€â–ˆâ–ˆâ–ˆâ–ˆ \n', 'Jinambik', 93, '2017-09-21 10:53:53'),
(95, '', 'krÃ¡sa', 'admin', 93, '2017-09-21 10:54:04'),
(96, '', '____________________\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶_______________Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶_______Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶___________Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶_____________Â¶Â¶Â¶\n_Â¶Â¶Â¶____Â¶Â¶Â¶Â¶Â¶Â¶____Â¶Â¶\n_Â¶Â¶____Â¶Â¶Â¶Â¶Â¶Â¶Â¶____Â¶Â¶\n_Â¶Â¶Â¶____Â¶Â¶Â¶Â¶Â¶_____Â¶Â¶\n_Â¶Â¶Â¶Â¶____________Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶__________Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶____Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n_Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶Â¶\n', 'Jinambik', 93, '2017-09-21 10:54:05'),
(97, '', '___â–ˆâ–ˆ__________â–ˆâ–ˆ\n___â–ˆâ–’â–ˆ________â–ˆâ–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆ____â–ˆâ–ˆâ–ˆâ–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–ˆâ–’â–’â–ˆâ–ˆ\n__â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n___â–ˆâ–’â–’â–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n__â–ˆâ–’â–’â–’â–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ______â–ˆ\n_â–ˆâ–ˆâ–’â–ˆâ–’â–’â–’â–’â–’â–ˆâ–’â–’â–ˆâ–ˆâ–ˆâ–ˆ__â–ˆâ–’â–ˆ\n_â–ˆâ–’â–ˆâ—â–ˆâ–’â–’â–’â–ˆâ—â–ˆâ–’â–’â–ˆâ–ˆâ–ˆ_â–ˆâ–’â–’â–ˆ\n_â–ˆâ–’â–’â–ˆâ–’â–’â–’â–’â–’â–ˆâ–’â–’â–’â–ˆâ–ˆ_â–ˆâ–’â–’â–ˆ\n__â–ˆâ–’â–’â–’=â–²=â–’â–’â–’â–’â–ˆâ–ˆâ–ˆ_â–ˆâ–ˆâ–’â–ˆ\n__â–ˆâ–ˆâ–’â–’â–ˆâ™¥â–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆ__â–ˆâ–ˆâ–’â–ˆ\n____â–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ____â–ˆâ–’â–ˆ\n______â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ________â–ˆâ–ˆâ–ˆ\n_______â–ˆâ–’â–’â–ˆâ–ˆâ–ˆâ–ˆ______â–ˆâ–ˆ\n_______â–ˆâ–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ__â–ˆâ–ˆ\n_______â–ˆâ–’â–ˆâ–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–ˆ\n_______â–ˆâ–’â–ˆâ–ˆâ–ˆâ–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\n_____â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n______â–ˆâ–’â–ˆâ–ˆâ–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ__\n', 'Jinambik', 93, '2017-09-21 10:54:34'),
(98, '', '___â–ˆâ–ˆ__________â–ˆâ–ˆ\n___â–ˆâ–’â–ˆ________â–ˆâ–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆ____â–ˆâ–ˆâ–ˆâ–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–ˆ\n__â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–ˆâ–’â–’â–ˆâ–ˆ\n__â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n___â–ˆâ–’â–’â–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n__â–ˆâ–’â–’â–’â–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ______â–ˆ\n_â–ˆâ–ˆâ–’â–ˆâ–’â–’â–’â–’â–’â–ˆâ–’â–’â–ˆâ–ˆâ–ˆâ–ˆ__â–ˆâ–’â–ˆ\n_â–ˆâ–’â–ˆâ—â–ˆâ–’â–’â–’â–ˆâ—â–ˆâ–’â–’â–ˆâ–ˆâ–ˆ_â–ˆâ–’â–’â–ˆ\n_â–ˆâ–’â–’â–ˆâ–’â–’â–’â–’â–’â–ˆâ–’â–’â–’â–ˆâ–ˆ_â–ˆâ–’â–’â–ˆ\n__â–ˆâ–’â–’â–’=â–²=â–’â–’â–’â–’â–ˆâ–ˆâ–ˆ_â–ˆâ–ˆâ–’â–ˆ\n__â–ˆâ–ˆâ–’â–’â–ˆâ™¥â–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆ__â–ˆâ–ˆâ–’â–ˆ\n____â–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ____â–ˆâ–’â–ˆ\n______â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ________â–ˆâ–ˆâ–ˆ\n_______â–ˆâ–’â–’â–ˆâ–ˆâ–ˆâ–ˆ______â–ˆâ–ˆ\n_______â–ˆâ–’â–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ__â–ˆâ–ˆ\n_______â–ˆâ–’â–ˆâ–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–’â–ˆ\n_______â–ˆâ–’â–ˆâ–ˆâ–ˆâ–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ\n_____â–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–’â–’â–’â–’â–ˆâ–ˆâ–ˆâ–ˆ\n______â–ˆâ–’â–ˆâ–ˆâ–ˆâ–’â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ__\n', 'Jinambik', 65, '2017-09-21 10:54:40'),
(99, '', 'â”€â”€â”€â”€â”€â–„â”€â”€â”€â–„\nâ”€â–„â–ˆâ–„â”€â–ˆâ–€â–ˆâ–€â–ˆâ”€â–„â–ˆâ–„\nâ–€â–€â–ˆâ–ˆâ–ˆâ–ˆâ–„â–ˆâ–„â–ˆâ–ˆâ–ˆâ–ˆâ–€â–€\nâ”€â”€â”€â”€â”€â–€â–ˆâ–€â–ˆâ–€\n', 'Jinambik', 65, '2017-09-21 10:55:07'),
(100, '', 'comment', 'PanÃ­ koÄiÄkovÃ¡', 42, '2017-09-21 10:57:12'),
(101, 'Jsem teplouÄkÃ½', 'ahojky, jsem teplouÄkÃ½', 'cepikcz', NULL, '2017-09-21 10:57:33'),
(102, '', 'jsem homo\n', 'cepikcz', 101, '2017-09-21 10:58:12'),
(103, '', 'jinambik e kokot, myslÃ­ si, Å¾e mÃ¡ dobrej CÅ¡arp', 'cepikcz', 65, '2017-09-21 10:58:52'),
(104, '', 'ale jÃ¡ mÃ¡m lepÅ¡Ã­ CÅ¡arp', 'cepikcz', 65, '2017-09-21 10:59:00'),
(105, '', 'a jsem teplouÄkÃ½', 'cepikcz', 65, '2017-09-21 10:59:13'),
(106, '', '#nohomo', 'admin', 101, '2017-09-21 11:00:21'),
(107, 'Taky jsem teplouÄkÃ½', 'vzruÅ¡uje mÄ›, kdyÅ¾ Pepik pije crazywolfinka. ', 'wolfinek', NULL, '2017-09-21 11:00:34'),
(108, '', '#nohomo', 'PanÃ­ koÄiÄkovÃ¡', 107, '2017-09-21 11:00:55'),
(109, '', 'mÃ¡m rÃ¡d kebab v zadku', 'wolfinek', 107, '2017-09-21 11:01:03'),
(110, 'ahoj', 'sdsdasd', 'admin', NULL, '2017-09-21 12:04:50'),
(111, '', 'koment', 'admin', 110, '2017-09-21 12:05:03'),
(112, 'nerozumÃ­m tomu', 'nechÃ¡opu jak fungujou ty procenta v uÄtu :(\nprosÃ­m o vysvÄ›tlenÃ­.', 'wolfinek', NULL, '2017-09-21 12:06:48'),
(113, '', '- wolfinekCZ\n', 'wolfinek', 112, '2017-09-21 12:07:05'),
(114, '', 'nechÃ¡pu*', 'admin', 112, '2017-09-21 12:07:09'),
(115, '', 'tom.pultr', 'wolfinek', 112, '2017-09-21 12:07:12'),
(116, '', 'sad', 'wolfinek', 112, '2017-09-21 12:07:17'),
(117, '', '', 'PanÃ­ koÄiÄkovÃ¡', 112, '2017-09-21 12:09:49'),
(118, '', '', 'PanÃ­ koÄiÄkovÃ¡', 112, '2017-09-21 12:09:53'),
(119, '', '', 'PanÃ­ koÄiÄkovÃ¡', 112, '2017-09-21 12:09:53'),
(120, '', 'Ale jo urÄitÄ› jo jen se nesmÃ­Å¡ tolik podceÅˆovat  mucq <3\n\nPanÃ­ koÄiÄkovÃ¡', 'PanÃ­ koÄiÄkovÃ¡', 112, '2017-09-21 12:10:36'),
(121, 'Tohle jsem opravdu jÃ¡. Jinambo.', 'OstatnÃ­ ÃºÄty s mojÃ­ pÅ™ezdÃ­vkou jsou fake. Zasranej Äepik s wolfinkem...', 'jinambo', NULL, '2017-09-21 12:12:18'),
(122, 'Pomoc prosÃ­m o vysvÄ›tlenÃ­', 'Dneska sem vydÄ›la jednoho klukla jak Å™Ã­kÃ¡ nÄ›co o sea Å¡ardu znÃ­ to jako sea shrak coÅ¾ znamenÃ¡ moÅ™skÃ½ Å¾ralok tak doufÃ¡m Å¾e mi to neseÅ¾ere koÄiÄku :(', 'PanÃ­ koÄiÄkovÃ¡', NULL, '2017-09-21 12:12:54'),
(123, '', 'Je to C# vole.', 'admin', 122, '2017-09-21 12:13:36'),
(124, '', 'KdyÅ¾ jsem u toho mÃ¡te nÄ›kdo nÄ›jakej cÃ­ Å¡arp na prodej?', 'jinambo', 122, '2017-09-21 12:14:42'),
(125, '', 'Ban', 'admin', 122, '2017-09-21 12:14:48'),
(126, '', 'Å¡Åˆupnul bych', 'jinambo', 122, '2017-09-21 12:14:56'),
(128, 'MatyÃ¡Å¡ neumÃ­ v CÅ¡hÃ¡rku!!!', 'DobrÃ½ den dneÅ¡Ã­m dnem 21.09.2017bych vÃ¡m chtÄ›l oznÃ¡mit Å¾e spoleÄnost Cshrakus vychodila svÃ©ho bnejleÅ¡Ã­ho studentÃ­ka v CÃ­Ã­Ã­Å arku a tedu studentÃ­Äek je straÅ¡nÄ› dobrÃ½, ale jeho schpntriodi o hlsafnednÄ› CÅ¡horttku byli vymazani z jahu pamÄ›ti', 'RealJinambo', NULL, '2017-09-21 12:18:35'),
(129, '', 'ok', 'admin', 128, '2017-09-21 12:19:47'),
(130, 'Muhahahahahhahhahaha', 'Muhahahahahahhahahahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhaha', 'HeÄkermen', NULL, '2017-09-21 12:21:30'),
(131, '', '\nMamch\'t na CÃ­pÅ¡arp', 'HeÄkermen', 122, '2017-09-21 12:23:49'),
(132, '', 'Muhahahahahahhahahahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhahaahahahahahhaha', 'admin', 130, '2017-09-21 12:24:44'),
(133, '', 'NenÃ­\n', 'HeÄkermen', 121, '2017-09-21 12:25:18'),
(134, '', '', 'HeÄkermen', 121, '2017-09-21 12:25:19'),
(135, '', 'Nejsou je to fake\n', 'HeÄkermen', 121, '2017-09-21 12:25:25'),
(136, '', 'Ja jsem pravÃ½ jinambo', 'HeÄkermen', 121, '2017-09-21 12:25:35'),
(137, '', '', 'HeÄkermen', 121, '2017-09-21 12:25:41'),
(138, '', '', 'HeÄkermen', 121, '2017-09-21 12:25:41'),
(139, '', '', 'HeÄkermen', 121, '2017-09-21 12:25:41'),
(170, '', '%%%', 'admin', 112, '2017-09-22 05:25:32'),
(171, '', '1', 'admin', 112, '2017-09-22 05:27:20'),
(172, '', '2', 'admin', 112, '2017-09-22 05:27:22'),
(173, '', '3', 'admin', 112, '2017-09-22 05:27:53'),
(174, '', '4', 'admin', 112, '2017-09-22 05:27:56'),
(175, '', '1', 'admin', 65, '2017-09-22 05:28:25'),
(176, '', '2', 'admin', 65, '2017-09-22 05:28:27'),
(177, '', '3', 'admin', 65, '2017-09-22 05:28:30'),
(178, '', '4', 'admin', 65, '2017-09-22 05:29:09'),
(179, '', '5', 'admin', 65, '2017-09-22 05:29:12'),
(180, '', '6', 'admin', 65, '2017-09-22 05:29:15'),
(184, '', 'test', 'admin', 130, '2017-09-22 05:30:17'),
(185, 'zdar', 'Äus, jak se mÃ¡te?', 'jirka1', NULL, '2017-09-22 05:57:20'),
(187, '', 'lit fam', 'admin', 185, '2017-09-22 06:47:46'),
(191, 'jsem buzerant', 'jsem teplej', 'wolfinek', NULL, '2017-09-22 08:21:39'),
(192, '', '.!.', 'admin', 191, '2017-09-22 08:32:15'),
(197, '', 'ok', 'admin', 191, '2017-09-22 10:24:07'),
(198, '', '/delete', 'mates123', 42, '2017-09-22 10:25:47'),
(199, '', '/ban', 'mates123', 42, '2017-09-22 10:25:54'),
(201, '', ':D', 'admin', 122, '2017-09-22 11:45:29'),
(207, '', 'test comment', 'admin', 79, '2017-09-22 14:45:23'),
(208, '', 'test comment #2', 'admin', 79, '2017-09-22 14:45:33'),
(209, 'Test post', 'Test content', 'admin', NULL, '2017-09-24 21:34:01');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` text NOT NULL,
  `pwd` text NOT NULL,
  `em` text NOT NULL,
  `BAN` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `uid`, `pwd`, `em`, `BAN`, `admin`) VALUES
(3, 'mates', '$2y$10$mfNfMV8uMEPgR2aLrmOFK.V0S2xDy2NcT84Cyyb1oerFnyir6/Mbe', 'email@email.com', 0, 0),
(4, 'admin', '$2y$10$tcs1gxve9T/6PLlXoNsX6OM6wXX6XUFUiJj9kpChiUpzrvn/bMjvS', 'updater19@gmail.com', 0, 1),
(5, 'mates123', '$2y$10$axTm6IKakINYLg/jxG0ha.sf3bU.IVvT4E6TZLW6t2p3vHVZq6WbK', 'mtxx@seznam.cz', 0, 0),
(6, 'user1', '$2y$10$IGwzJvvXRueOsmaZhDI6p.n0UsPb.Mx.Pn43h0iBfYvcxCspg8JxK', 'email1@mail.com', 0, 0),
(7, 'user2', '$2y$10$dKnIXKmqTC/fgXZXjMhxk.xtXrWHh7Q/BpO0CEcqWf8HR4yuzFDpi', 'email2@mail.com', 0, 0),
(8, 'user3', '$2y$10$aRSdzt/do.3Ww.ftTu2SEes2DhdmA9Zq0gL5kOzcNhEd0DsdMpeXW', 'email3@mail.com', 0, 0),
(9, 'jirka1', '$2y$10$hmND2mTX9IQkajuS/Tvq7OMaSsgq/lUV4V65M2xkZdVsEHv/PKWzO', 'jinambo@seznam.cz', 0, 1),
(10, 'Jinambik', '$2y$10$v5nEtIq.ZbFM1vjCbHsrceGOgFK4jcLnE4of9piJdqlAaO3t0tXge', 'Nasrat@gmail.com', 0, 0),
(11, 'PanÃ­ koÄiÄkovÃ¡', '$2y$10$Wkjd/feiHrm0PQnsVM0HyOyyw7v8p.6L5jwqQ92s.lF0ej62BOHCi', 'Kocickamucq@lul.cz', 0, 0),
(13, 'wolfinek', '$2y$10$Oke4gGV3vxMhSjrcTL5EpOoaLSmq.F6anmhv0DYywmGSMUyVGyQga', 'jarmila12@seznam.com', 1, 0),
(14, 'jinambo', '$2y$10$3B.GOoYmPB49JfZ18rQOuOMwyi5TmUFRuABJPl0nNk3QVjMk2U1tG', 'ukazkozy@gmail.com', 0, 0),
(15, 'RealJinambo', '$2y$10$EVhFUsJe/TmemGaxvrI6f.H4XWWVz1S1/o3fEPhCULFCRy/6.n.W.', 'Jsemrealjinambo@hacker.com', 0, 0),
(16, 'HeÄkermen', '$2y$10$9xCrplaZDss3tEaU1gWMUO9LbfWPWWh.ZyuuFSUR9CmLb14YoAmOW', 'test@hacker.com', 0, 0),
(24, 'admin1', '$2y$10$suRaWX7LqpXkrHjr8EwZcO9SE70VBqEIRYBmbzYY9qgPGSoH2pUua', 'updater20@gmail.com', 0, 0);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `pms`
--
ALTER TABLE `pms`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `pms`
--
ALTER TABLE `pms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pro tabulku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
