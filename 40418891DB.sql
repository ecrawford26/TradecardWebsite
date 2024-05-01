-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 12:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `40418891db`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`) VALUES
(1, 'Ken Sugimori'),
(2, 'Mitsuhiro Arita'),
(3, 'Keiji Kinebuchi'),
(4, 'Tomoaki Imakuni'),
(5, 'Kagemaru Himeno'),
(6, 'Christopher Rush'),
(7, 'Benimaru Itoh'),
(8, 'Hiromichi Sugiyama'),
(9, 'Sumiyoshi Kizuki'),
(10, 'Kunihiko Yuyama'),
(11, 'Atsuko Nishida'),
(12, 'Hideki Kazama'),
(13, 'Shin-ichi Yoshida'),
(14, '\"Big Mama\" Tagawa'),
(15, 'Tomokazu Komiya'),
(16, 'Miki Tanaka'),
(17, 'Takumi Akabane'),
(18, 'Gakuji Nomoto'),
(19, 'Craig Turvey'),
(20, 'Hajime Kusajima'),
(21, 'Toshinao Aoki');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL,
  `expansion_id` int(11) DEFAULT NULL,
  `series_id` varchar(50) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `generation_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `card_number` varchar(20) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `evolves_from` varchar(100) DEFAULT NULL,
  `evolves_to` varchar(100) DEFAULT NULL,
  `rarity_id` int(11) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `pokedex_numbers` text DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `collection` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `expansion_id`, `series_id`, `publisher_id`, `generation_id`, `release_date`, `artist_id`, `name`, `card_number`, `type_id`, `level`, `hp`, `evolves_from`, `evolves_to`, `rarity_id`, `info`, `pokedex_numbers`, `url`, `collection`) VALUES
(1, 1, 'Base', 1, 1, '1999-01-09', 1, 'Alakazam', '1', 1, '42', 80, 'Kadabra', NULL, 1, 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5000.', '[65]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F1%2Fhigh.webp&w=750&q=100', 'Ethan\'s'),
(2, 1, 'Base', 1, 1, '1999-01-09', 1, 'Blastoise', '2', 4, '52', 100, 'Wartortle', NULL, 1, 'A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.', '[9]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F2%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(3, 1, 'Base', 1, 1, '1999-01-09', 1, 'Chansey', '3', 7, '55', 120, NULL, 'Blissey', 1, 'A rare and elusive Pokémon that is said to bring happiness to those who manage to catch it.', '[113]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F3%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(4, 1, 'Base', 1, 1, '1999-01-09', 2, 'Charizard', '4', 3, '76', 120, 'Charmeleon', NULL, 1, 'Spits fire that is hot enough to melt boulders. Known to unintentionally cause forest fires.', '[6]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F4%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(5, 1, 'Base', 1, 1, '1999-01-09', 1, 'Clefairy', '5', 7, '14', 40, NULL, NULL, 4, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.', '[35]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F5%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(6, 1, 'Base', 1, 1, '1999-01-09', 2, 'Gyarados', '6', 4, '41', 100, 'Magikarp', NULL, 4, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', '[130]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F6%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(7, 1, 'Base', 1, 1, '1999-01-09', 1, 'Hitmonchan', '7', 6, '33', 70, NULL, NULL, 4, 'While seeming to do nothing, it fires punches in lightning-fast volleys that are impossible to see.', '[107]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F7%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(8, 1, 'Base', 1, 1, '1999-01-09', 1, 'Machamp', '8', 6, '67', 100, 'Machoke', NULL, 4, 'Using its amazing muscles, it throws powerful punches that can knock its victim clear over the horizon.', '[68]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F8%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(9, 1, 'Base', 1, 1, '1999-01-09', 3, 'Magneton', '9', 5, '28', 60, 'Magnemite', 'Magnezone', 4, 'Formed by several Magnemites linked together. It frequently appears when sunspots flare up.', '[82]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F9%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(10, 1, 'Base', 1, 1, '1999-01-09', 1, 'Mewtwo', '10', 1, '53', 60, NULL, NULL, 4, 'A scientist created this Pokémon after years of horrific gene-splicing and DNA engineering experiments.', '[150]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F10%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(11, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Clefable', '1', 7, '34', 70, 'Clefairy', NULL, 3, 'A timid Fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.', '[36]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F1%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(12, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Electrode', '2', 5, '42', 90, 'Voltorb', NULL, 3, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F2%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(13, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Flareon', '3', 3, '28', 70, 'Eevee', NULL, 3, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', '[136]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F3%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(14, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Jolteon', '4', 5, '29', 70, 'Eevee', NULL, 3, 'It accumulates negative ions from the atmosphere to blast out 10,000-volt lightning bolts.', '[135]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F4%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(15, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Kangaskhan', '5', 7, '40', 90, NULL, NULL, 3, 'The infant rarely ventures out of its mother\'s protective pouch until it is three years old.', '[115]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F5%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(16, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Mr. Mime', '6', 1, '28', 40, 'Mime Jr.', NULL, 3, 'If interrupted while miming, it will slap around the enemy with its broad hands.', '[122]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F6%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(17, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Nidoqueen', '7', 2, '43', 90, 'Nidorina', NULL, 3, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.', '[31]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F7%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(18, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Pidgeot', '8', 7, '40', 80, 'Pidgeotto', NULL, 3, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.', '[18]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F8%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(19, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Pinsir', '9', 2, '24', 60, NULL, NULL, 3, 'If it fails to crush the victim in its pincers, it will swing its victim around and toss it hard.', '[127]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F9%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(20, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Scyther', '10', 2, '25', 70, NULL, 'Scizor', 3, 'With ninja-like agility and speed, it can create the illusion that there is more than one of it.', '[123]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase2%2F10%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(21, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Aerodactyl', '1', 6, '28', 60, 'Mysterious Fossil', NULL, 4, 'A ferocious prehistoric Pokémon that goes for the enemy\'s throat with its serrated saw-like fangs.', '[142]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F1%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(22, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Articuno', '2', 4, '35', 70, NULL, NULL, 4, 'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.', '[144]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F2%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(23, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Ditto', '3', 7, '20', 50, NULL, NULL, 4, 'Capable of copying an enemy\'s genetic code to instantly transform itself into a duplicate of the enemy.', '[132]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F3%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(24, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Dragonite', '4', 7, '45', 100, 'Dragonair', NULL, 4, 'An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.', '[149]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F4%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(25, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Gengar', '5', 1, '38', 80, 'Haunter', NULL, 4, 'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.', '[94]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F5%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(26, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Haunter', '6', 1, '17', 50, 'Gastly', 'Gengar', 4, 'Because of its ability to slip through block walls, it is said to be from another dimension.', '[93]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F6%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(27, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Hitmonlee', '7', 6, '30', 60, NULL, NULL, 4, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.', '[106]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F7%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(28, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Hypno', '8', 1, '36', 90, 'Drowzee', NULL, 4, 'When it locks eyes with an enemy, it will use a mix of psi moves such as Hypnosis and Confusion.', '[97]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F8%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(29, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Kabutops', '9', 6, '30', 60, 'Kabuto', NULL, 4, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.', '[141]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F9%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(30, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Lapras', '10', 4, '12', 80, NULL, NULL, 4, 'A Pokémon that has been overhunted almost to extinction. It can ferry people across water.', '[131]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase3%2F10%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(31, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Zapdos', '20', 5, '64', 90, NULL, NULL, 1, 'A legendary bird Pokémon said to appear from clouds while wielding enormous lightning bolts.', '[145]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F20%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(32, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Beedrill', '21', 2, '32', 80, 'Kakuna', NULL, 2, 'Flies at high speed and attacks using the large, venomous stingers on its forelegs and tail.', '[15]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F21%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(33, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Dragonair', '22', 7, '33', 80, 'Dratini', 'Dragonite', 2, 'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.', '[148]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F22%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(34, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Dugtrio', '23', 6, '36', 70, 'Diglett', NULL, 2, 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.', '[51]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F23%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(35, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Electabuzz', '24', 5, '35', 70, NULL, 'Electivire', 2, 'Normally found near power plants, it can wander away and cause major blackouts in cities.', '[125]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F24%2Fhigh.webp&w=1920&q=100', 'Ethan\'s'),
(36, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Electrode', '25', 5, '40', 80, 'Voltorb', NULL, 2, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F25%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(37, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Kangaskhan', '26', 7, '40', 90, NULL, NULL, 2, 'The infant rarely ventures out of its mother\'s protective pouch until it is three years old.', '[115]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F26%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(38, 4, 'Base Set 2', 1, 1, '2000-02-24', 1, 'Mr. Mime', '27', 1, '28', 40, 'Mime Jr.', NULL, 2, 'If interrupted while miming, it will slap around the enemy with its broad hands.', '[122]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F27%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(39, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Pidgeotto', '28', 7, '36', 60, 'Pidgey', 'Pidgeot', 2, 'Very protective of its sprawling territory, this Pokémon will fiercely peck at any intruder.', '[17]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F28%2Fhigh.webp&w=1920&q=100', 'John\'s'),
(40, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Pinsir', '29', 2, '24', 60, NULL, NULL, 2, 'If it fails to crush the victim in its pincers, it will swing its victim around and toss it hard.', '[127]', 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase4%2F29%2Fhigh.webp&w=1920&q=100', 'John\'s');

-- --------------------------------------------------------

--
-- Table structure for table `expansion`
--

CREATE TABLE `expansion` (
  `expansion_id` int(11) NOT NULL,
  `expansion_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expansion`
--

INSERT INTO `expansion` (`expansion_id`, `expansion_name`) VALUES
(1, 'Base'),
(2, 'Jungle'),
(3, 'Fossil'),
(4, 'Base Set 2');

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `generation_id` int(11) NOT NULL,
  `generation_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generation`
--

INSERT INTO `generation` (`generation_id`, `generation_name`) VALUES
(1, 'First');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(1, 'WOTC');

-- --------------------------------------------------------

--
-- Table structure for table `rarity`
--

CREATE TABLE `rarity` (
  `rarity_id` int(11) NOT NULL,
  `rarity_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rarity`
--

INSERT INTO `rarity` (`rarity_id`, `rarity_name`) VALUES
(1, 'Rare Holo'),
(2, 'Rare'),
(3, 'Uncommon'),
(4, 'Common'),
(5, 'Promo');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'Psychic'),
(2, 'Grass'),
(3, 'Fire'),
(4, 'Water'),
(5, 'Lightning'),
(6, 'Fighting'),
(7, 'Colorless');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `user_card_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `expansion_id` (`expansion_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `generation_id` (`generation_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `rarity_id` (`rarity_id`);

--
-- Indexes for table `expansion`
--
ALTER TABLE `expansion`
  ADD PRIMARY KEY (`expansion_id`);

--
-- Indexes for table `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`generation_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `rarity`
--
ALTER TABLE `rarity`
  ADD PRIMARY KEY (`rarity_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`user_card_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `card_id` (`card_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `expansion`
--
ALTER TABLE `expansion`
  MODIFY `expansion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `generation`
--
ALTER TABLE `generation`
  MODIFY `generation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rarity`
--
ALTER TABLE `rarity`
  MODIFY `rarity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `user_card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`expansion_id`) REFERENCES `expansion` (`expansion_id`),
  ADD CONSTRAINT `card_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `card_ibfk_3` FOREIGN KEY (`generation_id`) REFERENCES `generation` (`generation_id`),
  ADD CONSTRAINT `card_ibfk_4` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD CONSTRAINT `card_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `card_ibfk_6` FOREIGN KEY (`rarity_id`) REFERENCES `rarity` (`rarity_id`);

--
-- Constraints for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD CONSTRAINT `user_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_cards_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;