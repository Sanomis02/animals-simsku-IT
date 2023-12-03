-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: animals_mysql:3306
-- Generation Time: Dec 03, 2023 at 09:15 AM
-- Server version: 5.7.44
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animals`
--

-- --------------------------------------------------------

--
-- Table structure for table `Anketos`
--

CREATE TABLE `Anketos` (
  `id` int(10) NOT NULL,
  `gyvuno_amzius` int(3) NOT NULL,
  `ar_Rastas` tinyint(1) NOT NULL DEFAULT '0',
  `autorius_id` int(10) NOT NULL,
  `pagr_nuotraukos_id` int(10) DEFAULT NULL,
  `miestas` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rajonas` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatve` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gyvuno_vardas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lytis` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `apskritis` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `fk_Naudotojasid` int(10) NOT NULL,
  `fk_rusies_id` int(10) NOT NULL,
  `aprasymas` text COLLATE utf8_unicode_ci,
  `dingimo_data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Anketos`
--

INSERT INTO `Anketos` (`id`, `gyvuno_amzius`, `ar_Rastas`, `autorius_id`, `pagr_nuotraukos_id`, `miestas`, `rajonas`, `gatve`, `gyvuno_vardas`, `lytis`, `apskritis`, `fk_Naudotojasid`, `fk_rusies_id`, `aprasymas`, `dingimo_data`) VALUES
(1, 4, 0, 2, 1, 'Kaunas', NULL, 'Basanaviciaus 2', 'Micka', 'vyras', 'Kaunas', 3, 1, 'dėmė po kaklu', '2023-12-01 18:09:00'),
(2, 3, 0, 1, 3, 'Kaunas', NULL, 'Basanaviciaus 6', 'Pilkis', 'vyras', 'Kaunas', 2, 2, 'kanda atsargiai', '2023-12-01 18:09:00'),
(3, 8, 0, 3, 6, 'Kaunas', NULL, 'Basanaviciaus 10', 'Riteris', 'vyras', 'Marijampole', 2, 4, 'dėmė po krūtine', '2023-12-01 18:09:00'),
(4, 10, 0, 2, 7, 'Kaunas', NULL, 'Basanaviciaus 11', 'Smigius', 'vyras', 'Siauliai', 1, 3, 'ilgai miega', '2023-12-01 18:09:00'),
(5, 6, 0, 2, NULL, 'Kaunas', NULL, 'Basanaviciaus 11', 'Inkognito', 'vyras', 'Siauliai', 1, 3, 'mėgsta slėptis', '2023-12-01 18:09:00'),
(6, 7, 0, 2, 8, 'Kaunas', NULL, 'Basanaviciaus 17', 'Tešlė', 'moteris', 'klaipėda', 3, 6, 'Mėgsta valgyti', '2023-12-01 18:09:00'),
(7, 2, 0, 3, 11, 'Kaunas', NULL, 'Basanaviciaus 77', 'Pūkė', 'moteris', 'Panevezys', 2, 6, 'Labai smalsi mėgsta bendrauti', '2023-12-01 18:09:00'),
(8, 10, 0, 3, 16, 'Kaunas', 'Dainava', 'Pilies g. 78', 'pūkis', 'moteris', 'Kaunas', 3, 1, 'Dingo mano pūkis dūkis', '2023-10-18 10:53:00'),
(9, 7, 1, 3, 18, '', '', '', 's', 'vyras', 'Kaunas', 3, 6, '', '2023-12-02 11:07:00'),
(10, 2, 0, 3, 19, 'Ukmergė', 'Nemokšų geografų', 'Upėtakio g.', 'Terlius', 'vyras', 'Telsiai', 3, 1, 'Nežinau ką daryt', '2023-12-02 11:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `gyvunu_nuotraukos`
--

CREATE TABLE `gyvunu_nuotraukos` (
  `id` int(10) NOT NULL,
  `anketos_id` int(10) NOT NULL,
  `nuotraukos_pav` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kate_1_2023-11-08_18-52-36.jpg iš rūšies santraupos anketos id ir kėlimo datos bei laiko',
  `ar_rodyti` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gyvunu_nuotraukos`
--

INSERT INTO `gyvunu_nuotraukos` (`id`, `anketos_id`, `nuotraukos_pav`, `ar_rodyti`) VALUES
(1, 1, 'kate_1_2023-11-08_18-52-36.jpg', 1),
(2, 1, 'kate_1_2023-11-08_18-53-38.jpg', 1),
(3, 2, 'suo_2_2023-11-08_20-12-05.jpg', 1),
(4, 2, 'suo_2_2023-11-08_20-18-15.jpg', 1),
(5, 2, 'suo_2_2023-11-09_07-55-37.png', 1),
(6, 3, 'vezlys_3_2023-10-05_05-22-06.jpg', 1),
(7, 4, 'ziurkenas_4_2023-06-29_09-02-45.png', 1),
(8, 6, 'panda_6_2023-09-15_09-02-45.jpg', 1),
(9, 6, 'panda_6_2023-10-15_09-02-45.jpg', 1),
(10, 6, 'panda_6_2023-11-15_09-02-45.jpg', 1),
(11, 7, 'suo_7_2023-05-15_09-02-45.jpg', 1),
(12, 7, 'suo_7_2023-06-15_09-02-45.jpg', 1),
(13, 7, 'suo_7_2023-07-15_09-02-45.png', 1),
(14, 7, 'suo_7_2023-08-15_09-02-45.jpg', 1),
(15, 7, 'suo_7_2023-09-15_09-02-45.png', 1),
(16, 8, 'kate_8_2023-12-02_10-56-05.jpg', 1),
(17, 8, 'kate_8_2023-12-02_10-56-11.jpg', 1),
(18, 9, 'panda_9_2023-12-02_11-09-00.jpg', 1),
(19, 10, 'kate_10_2023-12-02_11-11-44.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Rusys`
--

CREATE TABLE `Rusys` (
  `id` int(10) NOT NULL,
  `pavadinimas` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `santraupa` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'santraupa mažosioms angl raidėms iki 12 simb, naudosim nuotraukos pavadinime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Rusys`
--

INSERT INTO `Rusys` (`id`, `pavadinimas`, `santraupa`) VALUES
(1, 'katė', 'kate'),
(2, 'šuo', 'suo'),
(3, 'Žiurkėnas', 'ziurkenas'),
(4, 'Vėžlys', 'vezlys'),
(5, 'Ožka', 'ozka'),
(6, 'Panda', 'panda'),
(7, 'Tigras', 'tigras'),
(8, 'Leopardas', 'Leopardas');

-- --------------------------------------------------------

--
-- Table structure for table `Skelbimai`
--

CREATE TABLE `Skelbimai` (
  `id` int(16) NOT NULL,
  `anketa_id` int(10) NOT NULL,
  `autorius_id` int(10) NOT NULL COMMENT 'pradubliuojam autorių iš anketos - jo daug kur reikės - rašant žinutes, kad būt greitesnis atrinkimas',
  `rusies_id` int(10) NOT NULL COMMENT 'pradubliuojam gyvuno rusi iš anketos - jos reiks skelbimu filtre - greitesnis atrinkimas',
  `ar_aktyvus` tinyint(1) NOT NULL DEFAULT '1',
  `skelbimo_data` datetime DEFAULT NULL COMMENT 'skelbimo data',
  `galiojimo_laikas` datetime DEFAULT NULL COMMENT 'data iki kurios galioja skelbimas',
  `perziuros_kiekis` int(24) NOT NULL,
  `aprasymas` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Skelbimai`
--

INSERT INTO `Skelbimai` (`id`, `anketa_id`, `autorius_id`, `rusies_id`, `ar_aktyvus`, `skelbimo_data`, `galiojimo_laikas`, `perziuros_kiekis`, `aprasymas`) VALUES
(1, 2, 1, 2, 1, '2023-12-01 18:09:00', '2024-11-20 17:39:00', 16, 'aprašymas 1-o skelbimo dingo neaiškionis aplinkybėmis atkelia iš anketos aprašymo - paskui galima papildyti skelbimą'),
(2, 3, 3, 4, 1, '2023-12-01 18:09:00', '2024-11-20 17:39:00', 1, 'aprašymas 2-o skelbimo dingo neaiškionis aplinkybėmis atkelia iš anketos aprašymo - paskui galima papildyti skelbimą'),
(3, 5, 2, 3, 1, '2023-12-01 18:09:00', '2024-11-20 17:39:00', 0, 'aprašymas 3-o skelbimo dingo neaiškionis aplinkybėmis atkelia iš anketos aprašymo - paskui galima papildyti skelbimą'),
(8, 6, 4, 6, 1, '2023-12-02 10:45:00', '2024-01-31 10:45:00', 0, 'bababa iš anketos: Mėgsta valgyti'),
(9, 8, 3, 1, 1, '2023-12-02 10:56:00', '2024-01-31 10:56:00', 0, 'Duosiu duonos ir druskos kas rasti šį nenaudėlį iš anketos: Dingo mano pūkis dūkis'),
(10, 6, 3, 6, 1, '2023-12-02 11:03:00', '2024-01-31 11:03:00', 2, 'Dar viena iš anketos: Mėgsta valgyti'),
(11, 1, 3, 1, 1, '2023-12-02 11:04:00', '2024-01-31 11:04:00', 5, 'Dar viena micka iš anketos: dėmė po kaklu'),
(12, 9, 3, 6, 1, '2023-12-02 11:09:00', '2024-01-31 11:09:00', 0, 'Skelbimasss iš anketos: ');

-- --------------------------------------------------------

--
-- Table structure for table `slim_tasks`
--

CREATE TABLE `slim_tasks` (
  `task_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slim_tasks`
--

INSERT INTO `slim_tasks` (`task_id`, `name`, `details`, `author`) VALUES
(1, 'vardas 1', 'detalės 1', 'autorius 1'),
(2, 'vardas 2', 'detalės 2', 'autorius 2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`) VALUES
(1, 'Useris 1', 'userio1@gmail.com', 'admin', 'passwordas1'),
(2, 'Useris 2', 'userio2@gmail.com', 'member', 'passwordas2'),
(3, 'Useris 3', 'userio3@gmail.com', 'guest', 'passwordas3');

-- --------------------------------------------------------

--
-- Table structure for table `Vartotojai`
--

CREATE TABLE `Vartotojai` (
  `id` int(10) NOT NULL,
  `ar_gali_skelbt` tinyint(1) NOT NULL,
  `vardas` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pastas` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slaptazodis` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prieiga` char(18) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Vartotojai`
--

INSERT INTO `Vartotojai` (`id`, `ar_gali_skelbt`, `vardas`, `pastas`, `slaptazodis`, `prieiga`) VALUES
(1, 1, 'vartotojo vardas_1', 'n1@com', '$6y$20$jHBbGNjQSmodP0m3UxEsHe1Fvgmf/N/dVmQHLHm4652RtqBFbHO5a', 'Neprisiregistraves'),
(2, 1, 'vartotojo vardas_2', 'k2@com', 'ZSE$10$jHBbGNjQSmodP0m3UxEsHe1Fvgmf/N/dVmQHLHm4652RtqBFbHO5a', 'Kontrolierius'),
(3, 1, 'vartotojo vardas_3', 'p3@com', '$9z512$jHBbGNjQSmodP0m3UxEsHe1Fvgmf/N/dVmQHLHm4652RtqBFberO5S', 'Prisiregistraves'),
(4, 1, 'vartotojo vardas_4', 'a4@com', 's6d46$jHBbGNjQSmodP0m3UxEsHe1Fvgmf/N/dVmQHLHm4652RtqBFbHO5a', 'Administratorius'),
(12, 0, 'administratorius_vardas', 'a@com', '$2y$10$vgo9INDvtw4SIvXCabSR6.nRAqacb1BCoCdj.2hqIwKFT6pfQeXKy', 'Administratorius'),
(13, 0, 'kontrolierius_vardas', 'k@com', '$2y$10$FZiNRdK0z8ons6IsP3.XFe9p6tQeRkFBjekFzq2WzEhSiykl1d32a', 'Kontrolierius'),
(14, 1, 'prisijunges_vardas', 'p@com', '$2y$10$jHBbGNjQSmodP0m3UxEsHe1Fvgmf/N/dVmQHLHm4652RtqBFbHO5a', 'Prisiregistraves'),
(15, 0, 'simsku', 'simsku2@ktu.edu', '$2y$10$naRpHdXeHvRKFAUMhTSa4.1bV6nuVYLbeZJGYlV38c1X6BpvAWK1K', 'Prisiregistraves');

-- --------------------------------------------------------

--
-- Table structure for table `Zinutes`
--

CREATE TABLE `Zinutes` (
  `id` int(16) NOT NULL,
  `autoriaus_id` int(10) NOT NULL,
  `skelbimo_id` int(16) NOT NULL,
  `zinutes_data` datetime NOT NULL COMMENT 'zinutes rasymo data ir laikas',
  `ar_uzblokuota` tinyint(1) NOT NULL DEFAULT '0',
  `turinys` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Zinutes`
--

INSERT INTO `Zinutes` (`id`, `autoriaus_id`, `skelbimo_id`, `zinutes_data`, `ar_uzblokuota`, `turinys`) VALUES
(1, 2, 2, '2023-12-01 18:09:00', 0, 'žinutė 1 radome šitą šunį  kaune Rusmeni7 32 aharer eerert dolores wetWETWETWE dolores SGDG dggrrggre tgres ghfdfh 5522 '),
(2, 3, 2, '2023-12-01 18:09:00', 0, 'žinutė 2 radome šitą šunį  kaune Rusmeni7 32 aharer eerert dolores wetWETWETWE dolores SGDG dggrrggre tgres ghfdfh 5522 '),
(3, 4, 2, '2023-12-01 18:09:00', 0, 'žinutė 3 radome šitą šunį  kaune Rusmeni7 32 aharer eerert dolores wetWETWETWE dolores SGDG dggrrggre tgres ghfdfh 5522 '),
(4, 3, 2, '2023-12-01 18:09:00', 0, 'žinutė 4 radome šitą šunį  kaune Rusmeni7 32 aharer eerert dolores wetWETWETWE dolores SGDG dggrrggre tgres ghfdfh 5522 '),
(5, 3, 11, '2023-12-02 11:17:00', 0, 'Čia nesamonė'),
(6, 3, 11, '2023-12-02 11:17:00', 0, 'Čia tu nesamonę, vartotojau_vardas 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Anketos`
--
ALTER TABLE `Anketos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagr_nuotraukos_id` (`pagr_nuotraukos_id`),
  ADD KEY `uzpildo` (`fk_Naudotojasid`),
  ADD KEY `gyvuno_rusis` (`fk_rusies_id`);

--
-- Indexes for table `gyvunu_nuotraukos`
--
ALTER TABLE `gyvunu_nuotraukos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nuotraukos_pavadinimas` (`nuotraukos_pav`),
  ADD KEY `susiejimas_anketos` (`anketos_id`);

--
-- Indexes for table `Rusys`
--
ALTER TABLE `Rusys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Skelbimai`
--
ALTER TABLE `Skelbimai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sudaro` (`anketa_id`),
  ADD KEY `uzpildo_autorius` (`autorius_id`),
  ADD KEY `gyvuno_rusis_filtrui` (`rusies_id`);

--
-- Indexes for table `slim_tasks`
--
ALTER TABLE `slim_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Vartotojai`
--
ALTER TABLE `Vartotojai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Zinutes`
--
ALTER TABLE `Zinutes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paraso` (`autoriaus_id`),
  ADD KEY `skelbiama` (`skelbimo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Anketos`
--
ALTER TABLE `Anketos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gyvunu_nuotraukos`
--
ALTER TABLE `gyvunu_nuotraukos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Rusys`
--
ALTER TABLE `Rusys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Skelbimai`
--
ALTER TABLE `Skelbimai`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slim_tasks`
--
ALTER TABLE `slim_tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Vartotojai`
--
ALTER TABLE `Vartotojai`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Zinutes`
--
ALTER TABLE `Zinutes`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Anketos`
--
ALTER TABLE `Anketos`
  ADD CONSTRAINT `gyvuno_rusis` FOREIGN KEY (`fk_rusies_id`) REFERENCES `Rusys` (`id`),
  ADD CONSTRAINT `pagrindine_nuotrauka` FOREIGN KEY (`pagr_nuotraukos_id`) REFERENCES `gyvunu_nuotraukos` (`id`),
  ADD CONSTRAINT `uzpildo` FOREIGN KEY (`fk_Naudotojasid`) REFERENCES `Vartotojai` (`id`);

--
-- Constraints for table `gyvunu_nuotraukos`
--
ALTER TABLE `gyvunu_nuotraukos`
  ADD CONSTRAINT `susiejimas_anketos` FOREIGN KEY (`anketos_id`) REFERENCES `Anketos` (`id`);

--
-- Constraints for table `Skelbimai`
--
ALTER TABLE `Skelbimai`
  ADD CONSTRAINT `gyvuno_rusis_filtrui` FOREIGN KEY (`rusies_id`) REFERENCES `Rusys` (`id`),
  ADD CONSTRAINT `sudaro` FOREIGN KEY (`anketa_id`) REFERENCES `Anketos` (`id`),
  ADD CONSTRAINT `uzpildo_autorius` FOREIGN KEY (`autorius_id`) REFERENCES `Vartotojai` (`id`);

--
-- Constraints for table `Zinutes`
--
ALTER TABLE `Zinutes`
  ADD CONSTRAINT `paraso` FOREIGN KEY (`autoriaus_id`) REFERENCES `Vartotojai` (`id`),
  ADD CONSTRAINT `skelbiama` FOREIGN KEY (`skelbimo_id`) REFERENCES `Skelbimai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
