-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 11:37 PM
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
-- Database: `pokemon_database2`
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
  `pokedex_numbers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `expansion_id`, `series_id`, `publisher_id`, `generation_id`, `release_date`, `artist_id`, `name`, `card_number`, `type_id`, `level`, `hp`, `evolves_from`, `evolves_to`, `rarity_id`, `info`, `pokedex_numbers`) VALUES
(1, 1, 'Base', 1, 1, '1999-01-09', 1, 'Alakazam', '1', 1, '42', 80, 'Kadabra', NULL, 1, 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5000.', '[65]'),
(11, 1, 'Base', 1, 1, '1999-01-09', 1, 'Blastoise', '2', 4, '52', 100, 'Wartortle', NULL, 1, 'A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.', '[9]'),
(12, 1, 'Base', 1, 1, '1999-01-09', 1, 'Chansey', '3', 7, '55', 120, NULL, 'Blissey', 1, 'A rare and elusive Pokémon that is said to bring happiness to those who manage to catch it.', '[113]'),
(14, 1, 'Base', 1, 1, '1999-01-09', 2, 'Charizard', '4', 3, '76', 120, 'Charmeleon', NULL, 1, 'Spits fire that is hot enough to melt boulders. Known to unintentionally cause forest fires.', '[6]'),
(15, 1, 'Base', 1, 1, '1999-01-09', 1, 'Clefairy', '5', 7, '14', 40, NULL, NULL, 4, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.', '[35]'),
(16, 1, 'Base', 1, 1, '1999-01-09', 2, 'Gyarados', '6', 4, '41', 100, 'Magikarp', NULL, 4, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', '[130]'),
(17, 1, 'Base', 1, 1, '1999-01-09', 1, 'Hitmonchan', '7', 6, '33', 70, NULL, NULL, 4, 'While seeming to do nothing, it fires punches in lightning-fast volleys that are impossible to see.', '[107]'),
(18, 1, 'Base', 1, 1, '1999-01-09', 1, 'Machamp', '8', 6, '67', 100, 'Machoke', NULL, 4, 'Using its amazing muscles, it throws powerful punches that can knock its victim clear over the horizon.', '[68]'),
(19, 1, 'Base', 1, 1, '1999-01-09', 3, 'Magneton', '9', 5, '28', 60, 'Magnemite', 'Magnezone', 4, 'Formed by several Magnemites linked together. It frequently appears when sunspots flare up.', '[82]'),
(20, 1, 'Base', 1, 1, '1999-01-09', 1, 'Mewtwo', '10', 1, '53', 60, NULL, NULL, 4, 'A scientist created this Pokémon after years of horrific gene-splicing and DNA engineering experiments.', '[150]'),
(21, 1, 'Base', 1, 1, '1999-01-09', 1, 'Nidoking', '11', 2, '23', 90, 'Nidorino', NULL, 4, 'Uses its powerful tail in battle to smash, constrict, then break its prey\'s bones.', '[34]'),
(22, 1, 'Base', 1, 1, '1999-01-09', 1, 'Ninetales', '12', 3, '32', 80, 'Vulpix', NULL, 4, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.', '[38]'),
(23, 1, 'Base', 1, 1, '1999-01-09', 1, 'Poliwrath', '13', 4, '48', 90, 'Poliwhirl', NULL, 4, 'An adept swimmer at both the front crawl and breaststroke. Easily overtakes the best human swimmers.', '[62]'),
(24, 1, 'Base', 1, 1, '1999-01-09', 1, 'Raichu', '14', 5, '40', 80, 'Pikachu', NULL, 4, 'Its long tail serves as a ground to protect itself from its own high-voltage power.', '[26]'),
(25, 1, 'Base', 1, 1, '1999-01-09', 2, 'Venusaur', '15', 2, '67', 100, 'Ivysaur', NULL, 4, 'This plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.', '[3]'),
(26, 1, 'Base', 1, 1, '1999-01-09', 5, 'Zapdos', '16', 5, '64', 90, NULL, NULL, 1, 'A legendary bird Pokémon said to appear from clouds while wielding enormous lightning bolts.', '[145]'),
(27, 1, 'Base', 1, 1, '1999-01-09', 1, 'Beedrill', '17', 2, '32', 80, 'Kakuna', NULL, 2, 'Flies at high speed and attacks using the large, venomous stingers on its forelegs and tail.', '[15]'),
(28, 1, 'Base', 1, 1, '1999-01-09', 2, 'Dragonair', '18', 7, '33', 80, 'Dratini', 'Dragonite', 2, 'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.', '[148]'),
(29, 1, 'Base', 1, 1, '1999-01-09', 3, 'Dugtrio', '19', 6, '36', 70, 'Diglett', NULL, 2, 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.', '[51]'),
(30, 1, 'Base', 1, 1, '1999-01-09', 5, 'Electabuzz', '20', 5, '35', 70, NULL, 'Electivire', 2, 'Normally found near power plants, it can wander away and cause major blackouts in cities.', '[125]'),
(31, 1, 'Base', 1, 1, '1999-01-09', 3, 'Electrode', '21', 5, '40', 80, 'Voltorb', NULL, 2, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]'),
(32, 1, 'Base', 1, 1, '1999-01-09', 1, 'Pidgeotto', '22', 7, '36', 60, 'Pidgey', 'Pidgeot', 2, 'Very protective of its sprawling territory, this Pokémon will fiercely peck at any intruder.', '[17]'),
(33, 1, 'Base', 1, 1, '1999-01-09', 1, 'Arcanine', '23', 3, '45', 100, 'Growlithe', NULL, 3, 'A Pokémon that has been long admired for its beauty. It runs gracefully, as if on wings.', '[59]'),
(34, 1, 'Base', 1, 1, '1999-01-09', 2, 'Charmeleon', '24', 3, '32', 80, 'Charmander', 'Charizard', 3, 'When it swings its burning tail, it raises the temperature to unbearably high levels.', '[5]'),
(35, 1, 'Base', 1, 1, '1999-01-09', 2, 'Dewgong', '25', 4, '42', 80, 'Seel', NULL, 3, 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.', '[87]'),
(36, 1, 'Base', 1, 1, '1999-01-09', 5, 'Dratini', '26', 7, '10', 40, NULL, 'Dragonair', 3, 'Long considered a mythical Pokémon until recently, when a small colony was found living underwater.', '[147]'),
(37, 1, 'Base', 1, 1, '1999-01-09', 1, 'Farfetch\'d', '27', 7, '20', 50, NULL, 'Sirfetch\'d', 3, 'The sprig of green onions it holds is its weapon. This sprig is used much like a metal sword.', '[83]'),
(38, 1, 'Base', 1, 1, '1999-01-09', 1, 'Growlithe', '28', 3, '18', 60, NULL, 'Arcanine', 3, 'Very protective of its territory. It will bark and bite to repel intruders from its space.', '[58]'),
(39, 1, 'Base', 1, 1, '1999-01-09', 3, 'Haunter', '29', 1, '22', 60, 'Gastly', 'Gengar', 3, 'Because of its ability to slip through block walls, it is said to be from another dimension.', '[93]'),
(40, 1, 'Base', 1, 1, '1999-01-09', 1, 'Ivysaur', '30', 2, '20', 60, 'Bulbasaur', 'Venusaur', 3, 'When the bulb on its back grows large, the Pokémon seems to lose the ability to stand on its hind legs.', '[2]'),
(41, 1, 'Base', 1, 1, '1999-01-09', 1, 'Jynx', '31', 1, '23', 70, NULL, NULL, 3, 'Merely by meditating, the Pokémon launches a powerful psychic energy attack.', '[124]'),
(42, 1, 'Base', 1, 1, '1999-01-09', 1, 'Kadabra', '32', 1, '38', 60, 'Abra', 'Alakazam', 3, 'It emits special alpha waves from its body that induce headaches even to those just nearby.', '[64]'),
(43, 1, 'Base', 1, 1, '1999-01-09', 3, 'Kakuna', '33', 2, '23', 80, 'Weedle', 'Beedrill', 3, 'Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.', '[14]'),
(44, 1, 'Base', 1, 1, '1999-01-09', 1, 'Machoke', '34', 6, '40', 80, 'Machop', 'Machamp', 3, 'Its muscular body is so powerful that it must wear a power-save belt to help regulate its motions.', '[67]'),
(45, 1, 'Base', 1, 1, '1999-01-09', 2, 'Magikarp', '35', 4, '8', 30, NULL, 'Gyarados', 3, 'In the distant past, it was stronger than its horribly weak descendants that exist today.', '[129]'),
(46, 1, 'Base', 1, 1, '1999-01-09', 2, 'Magmar', '36', 3, '24', 50, NULL, 'Magmortar', 3, 'Its body always burns with an orange glow that enables it to hide perfectly among flames.', '[126]'),
(47, 1, 'Base', 1, 1, '1999-01-09', 3, 'Nidorino', '37', 2, '25', 60, 'Nidoran ♂', 'Nidoking', 3, 'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.', '[33]'),
(48, 1, 'Base', 1, 1, '1999-01-09', 2, 'Poliwhirl', '38', 4, '28', 60, 'Poliwag', 'Poliwrath, Politoed', 3, 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.', '[61]'),
(49, 1, 'Base', 1, 1, '1999-01-09', 3, 'Porygon', '39', 7, '12', 30, NULL, 'Porygon2', 3, 'A Pokémon that consists entirely of programming code. Capable of moving freely in cyberspace.', '[137]'),
(50, 1, 'Base', 1, 1, '1999-01-09', 1, 'Raticate', '40', 7, '41', 60, 'Rattata', NULL, 3, 'It uses its whiskers to maintain its balance. It seems to slow down if they are cut off.', '[20]'),
(51, 1, 'Base', 1, 1, '1999-01-09', 1, 'Seel', '41', 4, '12', 60, NULL, 'Dewgong', 3, 'The protruding horn on its head is very hard. This horn is used for bashing through thick ice.', '[86]'),
(52, 1, 'Base', 1, 1, '1999-01-09', 2, 'Wartortle', '42', 4, '22', 70, 'Squirtle', 'Blastoise', 3, 'Often hides in water to stalk unweary prey. When swimming quickly, it moves its ears to maintain balance.', '[8]'),
(53, 1, 'Base', 1, 1, '1999-01-09', 2, 'Abra', '43', 1, '10', 30, NULL, 'Kadabra', 4, 'Using its ability to read minds, it will identify impending danger and teleport to safety.', '[63]'),
(54, 1, 'Base', 1, 1, '1999-01-09', 2, 'Bulbasaur', '44', 2, '13', 40, NULL, 'Ivysaur', 5, 'A strange seed was planted on its back at birth. Thus, a plant sprouted and now grows with this Pokémon.', '[1]'),
(55, 1, 'Base', 1, 1, '1999-01-09', 5, 'Caterpie', '45', 2, '13', 40, NULL, 'Metapod', 5, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.', '[10]'),
(56, 1, 'Base', 1, 1, '1999-01-09', 2, 'Charmander', '46', 3, '10', 50, NULL, 'Charmeleon', 5, 'Obviously prefers hot places. If it gets caught in the rain, steam is said to spout from the tip of its tail.', '[4]'),
(57, 1, 'Base', 1, 1, '1999-01-09', 3, 'Diglett', '47', 6, '8', 30, NULL, 'Dugtrio', 5, 'Lives about three feet underground, where it feeds on plant roots. It sometimes appears above ground.', '[50]'),
(58, 1, 'Base', 1, 1, '1999-01-09', 5, 'Doduo', '48', 7, '10', 50, NULL, 'Dodrio', 5, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.', '[84]'),
(59, 1, 'Base', 1, 1, '1999-01-09', 1, 'Drowzee', '49', 1, '10', 50, NULL, 'Hypno', 5, 'Puts enemies to sleep, then eats their dreams. Occasionally gets sick from eating bad dreams.', '[96]'),
(60, 1, 'Base', 1, 1, '1999-01-09', 3, 'Gastly', '50', 1, '8', 30, NULL, 'Haunter', 5, 'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.', '[92]'),
(61, 1, 'Base', 1, 1, '1999-01-09', 2, 'Koffing', '51', 2, '13', 50, NULL, 'Weezing', 5, 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.', '[109]'),
(62, 1, 'Base', 1, 1, '1999-01-09', 2, 'Machop', '52', 6, '20', 50, NULL, 'Machoke', 5, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.', '[66]'),
(63, 1, 'Base', 1, 1, '1999-01-09', 5, 'Magnemite', '53', 5, '13', 40, NULL, 'Magneton', 5, 'Uses anti-gravity to stay suspended. Appears without warning and uses attacks like Thunder Wave.', '[81]'),
(64, 1, 'Base', 1, 1, '1999-01-09', 1, 'Metapod', '54', 2, '21', 70, 'Caterpie', 'Butterfree', 5, 'It is vulnerable to attack because its shell is soft, exposing its weak and tender body.', '[11]'),
(65, 1, 'Base', 1, 1, '1999-01-09', 1, 'Nidoran ♂', '55', 2, '20', 40, NULL, 'Nidorino', 5, 'Stiffens its ears to sense danger. The larger, more powerful of its horns secretes venom.', '[32]'),
(66, 1, 'Base', 1, 1, '1999-01-09', 3, 'Onix', '56', 6, '12', 90, NULL, 'Steelix', 5, 'As it grows, the stone portions of its body harden to become similar to a diamond, though colored black.', '[95]'),
(67, 1, 'Base', 1, 1, '1999-01-09', 1, 'Pidgey', '57', 7, '8', 40, NULL, 'Pidgeotto', 5, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.', '[16]'),
(68, 1, 'Base', 1, 1, '1999-01-09', 2, 'Pikachu', '58', 5, '12', 40, NULL, 'Raichu', 5, 'When several of these Pokémon gather, their electricity can cause lightning storms.', '[25]'),
(69, 1, 'Base', 1, 1, '1999-01-09', 2, 'Poliwag', '59', 4, '13', 40, NULL, 'Poliwhirl', 5, 'Its newly grown legs prevent it from running. It appears to prefer swimming over trying to stand.', '[60]'),
(70, 1, 'Base', 1, 1, '1999-01-09', 2, 'Ponyta', '60', 3, '10', 40, NULL, 'Rapidash', 5, 'Its hooves are 10 times harder than diamonds. It can trample anything flat in moments.', '[77]'),
(71, 1, 'Base', 1, 1, '1999-01-09', 1, 'Rattata', '61', 7, '9', 30, NULL, 'Raticate', 5, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.', '[19]'),
(72, 1, 'Base', 1, 1, '1999-01-09', 1, 'Sandshrew', '62', 6, '12', 40, NULL, 'Sandslash', 5, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.', '[27]'),
(73, 1, 'Base', 1, 1, '1999-01-09', 2, 'Squirtle', '63', 7, '8', 40, NULL, 'Wartortle', 5, 'After birth, its back swells and hardens into a shell. It powerfully sprays foam from its mouth.', '[7]'),
(74, 1, 'Base', 1, 1, '1999-01-09', 3, 'Starmie', '64', 4, '28', 60, 'Staryu', NULL, 5, 'Its central core glows with the seven colors of the rainbow. Some people value this core as a gem.', '[121]'),
(75, 1, 'Base', 1, 1, '1999-01-09', 3, 'Staryu', '65', 4, '15', 40, NULL, 'Starmie', 5, 'An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.', '[120]'),
(76, 1, 'Base', 1, 1, '1999-01-09', 2, 'Tangela', '66', 2, '8', 50, NULL, 'Tangrowth', 5, 'Its whole body is swathed with wide vines that are similar to seaweed. These vines shake as it walks.', '[114]'),
(77, 1, 'Base', 1, 1, '1999-01-09', 3, 'Voltorb', '67', 1, '10', 40, NULL, 'Electrode', 5, 'Usually found in power plants. Easily mistaken for a Monster Ball, it has zapped many people.', '[100]'),
(78, 1, 'Base', 1, 1, '1999-01-09', 2, 'Vulpix', '68', 3, '11', 50, NULL, 'Ninetales', 5, 'At the time of birth, it has just one tail. Its tail splits from the tip as it grows older.', '[37]'),
(79, 1, 'Base', 1, 1, '1999-01-09', 5, 'Weedle', '69', 2, '12', 40, NULL, 'Kakuna', 5, 'Often found in forests, eating leaves. It has a sharp, venomous stinger on its head.', '[13]'),
(80, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Clefable', '1', 7, '34', 70, 'Clefairy', NULL, 3, 'A timid Fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.', '[36]'),
(81, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Electrode', '2', 5, '42', 90, 'Voltorb', NULL, 3, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]'),
(82, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Flareon', '3', 3, '28', 70, 'Eevee', NULL, 3, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', '[136]'),
(83, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Jolteon', '4', 5, '29', 70, 'Eevee', NULL, 3, 'It accumulates negative ions from the atmosphere to blast out 10,000-volt lightning bolts.', '[135]'),
(84, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Kangaskhan', '5', 7, '40', 90, NULL, NULL, 3, 'The infant rarely ventures out of its mother\'s protective pouch until it is three years old.', '[115]'),
(85, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Mr. Mime', '6', 1, '28', 40, 'Mime Jr.', NULL, 3, 'If interrupted while miming, it will slap around the enemy with its broad hands.', '[122]'),
(86, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Nidoqueen', '7', 2, '43', 90, 'Nidorina', NULL, 3, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.', '[31]'),
(87, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Pidgeot', '8', 7, '40', 80, 'Pidgeotto', NULL, 3, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.', '[18]'),
(88, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Pinsir', '9', 2, '24', 60, NULL, NULL, 3, 'If it fails to crush the victim in its pincers, it will swing its victim around and toss it hard.', '[127]'),
(89, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Scyther', '10', 2, '25', 70, NULL, 'Scizor', 3, 'With ninja-like agility and speed, it can create the illusion that there is more than one of it.', '[123]'),
(90, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Snorlax', '11', 7, '20', 90, 'Munchlax', NULL, 3, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', '[143]'),
(91, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Vaporeon', '12', 4, '42', 80, 'Eevee', NULL, 3, 'Lives close to water. Its long tail is ridged with a fin that is often mistaken for a mermaid\'s.', '[134]'),
(92, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Venomoth', '13', 2, '28', 70, 'Venonat', NULL, 3, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.', '[49]'),
(93, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Victreebel', '14', 2, '42', 80, 'Weepinbell', NULL, 3, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.', '[71]'),
(94, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Vileplume', '15', 2, '35', 80, 'Gloom', NULL, 3, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.', '[45]'),
(95, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Wigglytuff', '16', 7, '36', 80, 'Jigglypuff', NULL, 3, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', '[40]'),
(96, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Vileplume', '31', 2, '35', 80, 'Gloom', NULL, 4, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.', '[45]'),
(97, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Butterfree', '33', 2, '28', 70, 'Metapod', NULL, 3, 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.', '[12]'),
(98, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Exeggutor', '35', 2, '35', 80, 'Exeggcute', NULL, 3, 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.', '[103]'),
(99, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Gloom', '37', 2, '35', 60, 'Oddish', 'Vileplume', 3, 'The fluid that oozes from its mouth isn\'t drool; it is a nectar that is used to attract prey.', '[44]'),
(100, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Nidorina', '40', 2, '24', 70, 'Nidoran ♀', 'Nidoqueen', 3, 'The female\'s horn develops slowly. Prefers physical attacks such as clawing and biting.', '[30]'),
(101, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Parasect', '41', 2, '28', 60, 'Paras', NULL, 3, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.', '[47]'),
(102, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Persian', '42', 7, '25', 70, 'Meowth', NULL, 3, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.', '[53]'),
(103, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Primeape', '43', 7, '45', 70, 'Mankey', NULL, 3, 'Always furious and tenacious to boot. It will not abandon chasing its quarry until its quarry is caught.', '[57]'),
(104, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Rhydon', '45', 6, '48', 100, 'Rhyhorn', 'Rhyperior', 3, 'Protected by an armor-like hide, it is capable of living in molten lava of 3600 degrees.', '[112]'),
(105, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Seaking', '46', 4, '28', 70, 'Goldeen', NULL, 3, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.', '[119]'),
(106, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Tauros', '47', 5, '24', 60, NULL, NULL, 3, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.', '[128]'),
(107, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Weepinbell', '48', 5, '28', 70, 'Bellsprout', 'Victreebel', 3, 'It spits out poisonpowder to immobilize the enemy, and then finishes the enemy with a spray of acid.', '[70]'),
(108, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Bellsprout', '49', 5, '11', 40, NULL, 'Weepinbell', 2, 'A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.', '[69]'),
(109, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Eevee', '51', 5, '12', 50, NULL, NULL, 2, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from elemental stones.', '[133]'),
(110, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Goldeen', '53', 5, '12', 40, NULL, 'Seaking', 2, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname \"Water Queen.\"', '[118]'),
(111, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Jigglypuff', '54', 5, '14', 60, NULL, 'Wigglytuff', 2, 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.', '[39]'),
(126, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Clefable', '17', 7, '34', 70, 'Clefairy', NULL, 4, 'A timid Fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.', '[36]'),
(127, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Electrode', '18', 5, '42', 90, 'Voltorb', NULL, 4, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]'),
(128, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Flareon', '19', 3, '28', 70, 'Eevee', NULL, 4, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', '[136]'),
(129, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Jolteon', '20', 5, '29', 70, 'Eevee', NULL, 4, 'It accumulates negative ions from the atmosphere to blast out 10,000-volt lightning bolts.', '[135]'),
(130, 2, 'Jungle', 1, 1, '1999-06-16', 4, 'Kangaskhan', '21', 7, '40', 90, NULL, NULL, 4, 'The infant rarely ventures out of its mother\'s protective pouch until it is three years old.', '[115]'),
(131, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Mr. Mime', '22', 1, '28', 40, 'Mime Jr.', NULL, 4, 'If interrupted while miming, it will slap around the enemy with its broad hands.', '[122]'),
(132, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Nidoqueen', '23', 2, '43', 90, 'Nidorina', NULL, 4, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.', '[31]'),
(133, 2, 'Jungle', 1, 1, '1999-06-16', 5, 'Pidgeot', '24', 7, '40', 80, 'Pidgeotto', NULL, 4, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.', '[18]'),
(134, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Pinsir', '25', 2, '24', 60, NULL, NULL, 4, 'If it fails to crush the victim in its pincers, it will swing its victim around and toss it hard.', '[127]'),
(135, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Scyther', '26', 2, '25', 70, NULL, 'Scizor', 4, 'With ninja-like agility and speed, it can create the illusion that there is more than one of it.', '[123]'),
(136, 2, 'Jungle', 1, 1, '1999-06-16', 4, 'Snorlax', '27', 7, '20', 90, 'Munchlax', NULL, 4, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', '[143]'),
(137, 2, 'Jungle', 1, 1, '1999-06-16', 3, 'Vaporeon', '28', 4, '42', 80, 'Eevee', NULL, 4, 'Lives close to water. Its long tail is ridged with a fin that is often mistaken for a mermaid\'s.', '[134]'),
(138, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Venomoth', '29', 2, '28', 70, 'Venonat', NULL, 4, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.', '[49]'),
(139, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Victreebel', '30', 2, '42', 80, 'Weepinbell', NULL, 4, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.', '[71]'),
(140, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Cubone', '50', 6, '13', 40, NULL, 'Marowak', 2, 'Because it never removes its skull helmet, no one has ever seen this Pokémon\'s real face.', '[104]'),
(141, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Exeggcute', '52', 2, '14', 50, NULL, 'Exeggutor', 1, 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.', '[102]'),
(156, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Wigglytuff', '32', 7, '36', 80, 'Jigglypuff', NULL, 3, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', '[40]'),
(157, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Dodrio', '34', 7, '28', 70, 'Doduo', NULL, 2, 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.', '[85]'),
(158, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Fearow', '36', 7, '27', 70, 'Spearow', NULL, 2, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.', '[22]'),
(159, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Lickitung', '38', 7, '10', 90, NULL, 'Lickilicky', 2, 'Its tongue can be extended like a chameleon\'s. It leaves a stinging sensation when it licks enemies.', '[108]'),
(160, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Marowak', '39', 6, '26', 60, 'Cubone', NULL, 2, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to K.O. targets.', '[105]'),
(161, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Rapidash', '44', 3, '33', 70, 'Ponyta', NULL, 2, 'Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.', '[78]'),
(162, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Mankey', '55', 6, '7', 30, NULL, 'Primeape', 1, 'Extremely quick to anger. It could be docile one moment, then thrashing away the next.', '[56]'),
(163, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Meowth', '56', 7, '15', 50, NULL, 'Persian', 1, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.', '[52]'),
(164, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Nidoran â™€', '57', 2, '13', 60, NULL, 'Nidorina', 1, 'Although small, its venomous barbs make this Pokémon dangerous. The female has smaller horns.', '[29]'),
(165, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Oddish', '58', 2, '8', 50, NULL, 'Gloom', 1, 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.', '[43]'),
(166, 2, 'Jungle', 1, 1, '1999-06-16', 2, 'Paras', '59', 2, '8', 40, NULL, 'Parasect', 1, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.', '[46]'),
(167, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Pikachu', '60', 5, '14', 50, 'Pichu', 'Raichu', 1, 'When several of these Pokémon gather, their electricity can build and cause lightning storms.', '[25]'),
(168, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Rhyhorn', '61', 6, '18', 70, NULL, 'Rhydon', 1, 'Its massive bones are 1,000 times harder than human bones. It can easily knock a trailer flying.', '[111]'),
(169, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Spearow', '62', 7, '13', 50, NULL, 'Fearow', 1, 'Eats bugs in grassy areas. It has to flap its short wings at high speeds to stay airborne.', '[21]'),
(170, 2, 'Jungle', 1, 1, '1999-06-16', 1, 'Venonat', '63', 2, '12', 40, NULL, 'Venomoth', 1, 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.', '[48]'),
(210, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Aerodactyl', '1', 6, '28', 60, 'Mysterious Fossil', NULL, 4, 'A ferocious prehistoric Pokémon that goes for the enemy\'s throat with its serrated saw-like fangs.', '[142]'),
(211, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Articuno', '2', 4, '35', 70, NULL, NULL, 4, 'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.', '[144]'),
(212, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Ditto', '3', 7, '20', 50, NULL, NULL, 4, 'Capable of copying an enemy\'s genetic code to instantly transform itself into a duplicate of the enemy.', '[132]'),
(213, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Dragonite', '4', 7, '45', 100, 'Dragonair', NULL, 4, 'An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.', '[149]'),
(214, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Gengar', '5', 1, '38', 80, 'Haunter', NULL, 4, 'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.', '[94]'),
(215, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Haunter', '6', 1, '17', 50, 'Gastly', 'Gengar', 4, 'Because of its ability to slip through block walls, it is said to be from another dimension.', '[93]'),
(216, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Hitmonlee', '7', 6, '30', 60, NULL, NULL, 4, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.', '[106]'),
(217, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Hypno', '8', 1, '36', 90, 'Drowzee', NULL, 4, 'When it locks eyes with an enemy, it will use a mix of psi moves such as Hypnosis and Confusion.', '[97]'),
(218, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Kabutops', '9', 6, '30', 60, 'Kabuto', NULL, 4, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.', '[141]'),
(219, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Lapras', '10', 4, '12', 80, NULL, NULL, 4, 'A Pokémon that has been overhunted almost to extinction. It can ferry people across water.', '[131]'),
(220, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Magneton', '11', 5, '35', 80, 'Magnemite', 'Magnezone', 4, 'Formed by several Magnemites linked together. They frequently appear when sunspots flare up.', '[82]'),
(221, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Moltres', '12', 3, '35', 70, NULL, NULL, 4, 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.', '[146]'),
(222, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Muk', '13', 2, '34', 70, 'Grimer', NULL, 4, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.', '[89]'),
(223, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Raichu', '14', 5, '45', 90, 'Pikachu', NULL, 4, 'Its long tail serves as a ground to protect itself from its own high-voltage power.', '[26]'),
(224, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Zapdos', '15', 5, '40', 80, NULL, NULL, 4, 'A legendary thunderbird Pokémon whose anger is said to cause storms. Some say it has lived above the clouds for thousands of years.', '[145]'),
(225, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Aerodactyl', '16', 6, '28', 60, 'Mysterious Fossil', NULL, 3, 'A ferocious prehistoric Pokémon that goes for the enemy\'s throat with its serrated saw-like fangs.', '[142]'),
(226, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Articuno', '17', 4, '35', 70, NULL, NULL, 3, 'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.', '[144]'),
(227, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Ditto', '18', 7, '20', 50, NULL, NULL, 3, 'Capable of copying an enemy\'s genetic code to instantly transform itself into a duplicate of the enemy.', '[132]'),
(228, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Dragonite', '19', 7, '45', 100, 'Dragonair', NULL, 3, 'An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.', '[149]'),
(229, 3, 'Fossil', 1, 1, '1999-10-10', 3, 'Gengar', '20', 1, '38', 80, 'Haunter', NULL, 3, 'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.', '[94]'),
(230, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Haunter', '21', 1, '17', 50, 'Gastly', 'Gengar', 5, 'Because of its ability to slip through block walls, it is said to be from another dimension.', '[93]'),
(231, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Hitmonlee', '22', 6, '30', 60, NULL, NULL, 5, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.', '[106]'),
(232, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Hypno', '23', 1, '36', 90, 'Drowzee', NULL, 5, 'When it locks eyes with an enemy, it will use a mix of psi moves such as Hypnosis and Confusion.', '[97]'),
(233, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Kabutops', '24', 6, '30', 60, 'Kabuto', NULL, 5, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.', '[141]'),
(234, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Lapras', '25', 4, '31', 80, NULL, NULL, 5, 'A Pokémon that has been overhunted almost to extinction. It can ferry people across water.', '[131]'),
(235, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Magneton', '26', 5, '35', 80, 'Magnemite', 'Magnezone', 5, 'Formed by several Magnemites linked together. They frequently appear when sunspots flare up.', '[82]'),
(236, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Moltres', '27', 3, '35', 70, NULL, NULL, 5, 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.', '[146]'),
(237, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Muk', '28', 2, '34', 70, 'Grimer', NULL, 5, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.', '[89]'),
(238, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Raichu', '29', 5, '45', 90, 'Pikachu', NULL, 5, 'Its long tail serves as a ground to protect itself from its own high voltage power.', '[26]'),
(239, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Zapdos', '30', 5, '40', 80, NULL, NULL, 5, 'A legendary thunderbird Pokémon whose anger is said to cause storms. Some say it has lived above the clouds for thousands of years.', '[145]'),
(251, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Arbok', '31', 2, '27', 60, 'Ekans', NULL, 3, 'It is rumored that the ferocious warning markings on its belly differ from area to area.', '[24]'),
(252, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Cloyster', '32', 4, '25', 50, 'Shellder', NULL, 3, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.', '[91]'),
(253, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Gastly', '33', 1, '17', 50, NULL, 'Haunter', 3, 'A mysterious Pokémon. Some say it is a lifeform from another dimension, while others believe it is formed from smog.', '[92]'),
(254, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Golbat', '34', 2, '29', 60, 'Zubat', 'Crobat', 3, 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.', '[42]'),
(255, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Golduck', '35', 4, '27', 70, 'Psyduck', NULL, 3, 'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.', '[55]'),
(256, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Golem', '36', 6, '36', 80, 'Graveler', NULL, 3, 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.', '[76]'),
(257, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Graveler', '37', 6, '29', 60, 'Geodude', 'Golem', 3, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.', '[75]'),
(258, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Kingler', '38', 4, '27', 60, 'Krabby', NULL, 3, 'The large pincer has 10,000 horsepower of crushing power. However, its huge size makes it unwieldy to use.', '[99]'),
(259, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Magmar', '39', 3, '31', 70, 'Magby', 'Magmortar', 3, 'Found at the mouths of volcanoes and extremely hard to spot. There are very few instances of capturing this Pokémon.', '[126]'),
(260, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Omastar', '40', 4, '32', 70, 'Omanyte', NULL, 3, 'A prehistoric Pokémon that died out when its heavy shell made it impossible for it to catch prey.', '[139]'),
(261, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Sandslash', '41', 6, '33', 70, 'Sandshrew', NULL, 3, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.', '[28]'),
(262, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Seadra', '42', 4, '23', 60, 'Horsea', 'Kingdra', 3, 'Capable of swimming backward by rapidly flapping its wing-like pectoral fins and stout tail.', '[117]'),
(263, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Slowbro', '43', 1, '26', 60, 'Slowpoke', NULL, 3, 'The Shellder that is latched onto Slowpoke\'s tail is said to feed on the host\'s left-over scraps.', '[80]'),
(264, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Tentacruel', '44', 4, '21', 60, 'Tentacool', NULL, 3, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.', '[73]'),
(265, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Weezing', '45', 2, '27', 60, 'Koffing', NULL, 3, 'Where two kinds of poison gases meet, two Koffings can fuse into a Weezing over many years.', '[110]'),
(266, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Ekans', '46', 2, '10', 40, NULL, 'Arbok', 4, 'Moves silently and stealthily. Eats the eggs of birds such as Pidgey and Spearow whole.', '[23]'),
(267, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Geodude', '47', 6, '16', 50, NULL, 'Graveler', 4, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.', '[74]'),
(268, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Grimer', '48', 2, '17', 50, NULL, 'Muk', 4, 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.', '[88]'),
(269, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Horsea', '49', 4, '19', 40, NULL, 'Seadra', 4, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.', '[116]'),
(270, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Kabuto', '50', 6, '9', 30, 'Mysterious Fossil', 'Kabutops', 4, 'A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.', '[140]'),
(271, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Krabby', '51', 4, '20', 50, NULL, 'Kingler', 4, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.', '[98]'),
(272, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Golem', '36', 6, '36', 80, 'Graveler', NULL, 3, 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.', '[76]'),
(273, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Graveler', '37', 6, '29', 60, 'Geodude', 'Golem', 3, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.', '[75]'),
(274, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Kingler', '38', 4, '27', 60, 'Krabby', NULL, 3, 'The large pincer has 10,000 horsepower of crushing power. However, its huge size makes it unwieldy to use.', '[99]'),
(275, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Magmar', '39', 3, '31', 70, 'Magby', 'Magmortar', 3, 'Found at the mouths of volcanoes and extremely hard to spot. There are very few instances of capturing this Pokémon.', '[126]'),
(276, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Omastar', '40', 4, '32', 70, 'Omanyte', NULL, 3, 'A prehistoric Pokémon that died out when its heavy shell made it impossible for it to catch prey.', '[139]'),
(277, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Sandslash', '41', 6, '33', 70, 'Sandshrew', NULL, 3, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.', '[28]'),
(278, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Seadra', '42', 4, '23', 60, 'Horsea', 'Kingdra', 3, 'Capable of swimming backward by rapidly flapping its wing-like pectoral fins and stout tail.', '[117]'),
(279, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Slowbro', '43', 1, '26', 60, 'Slowpoke', NULL, 3, 'The Shellder that is latched onto Slowpoke\'s tail is said to feed on the host\'s left-over scraps.', '[80]'),
(280, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Tentacruel', '44', 4, '21', 60, 'Tentacool', NULL, 3, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.', '[73]'),
(281, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Weezing', '45', 2, '27', 60, 'Koffing', NULL, 3, 'Where two kinds of poison gases meet, two Koffings can fuse into a Weezing over many years.', '[110]'),
(282, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Ekans', '46', 2, '10', 40, NULL, 'Arbok', 4, 'Moves silently and stealthily. Eats the eggs of birds such as Pidgey and Spearow whole.', '[23]'),
(283, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Geodude', '47', 6, '16', 50, NULL, 'Graveler', 4, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.', '[74]'),
(284, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Grimer', '48', 2, '17', 50, NULL, 'Muk', 4, 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.', '[88]'),
(285, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Horsea', '49', 4, '19', 40, NULL, 'Seadra', 4, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.', '[116]'),
(286, 3, 'Fossil', 1, 1, '1999-10-10', 1, 'Kabuto', '50', 6, '9', 30, 'Mysterious Fossil', 'Kabutops', 4, 'A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.', '[140]'),
(287, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Krabby', '51', 4, '20', 50, NULL, 'Kingler', 4, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.', '[98]'),
(288, 3, 'Fossil', 1, 1, '1999-10-10', 2, 'Omanyte', '52', 6, '19', 40, 'Mysterious Fossil', 'Omastar', 4, 'Although long extinct, in rare cases, it can be genetically resurrected from fossils.', '[138]'),
(289, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Psyduck', '53', 4, '15', 50, NULL, 'Golduck', 4, 'While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.', '[54]'),
(290, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Shellder', '54', 4, '8', 30, NULL, 'Cloyster', 4, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.', '[90]'),
(291, 3, 'Fossil', 1, 1, '1999-10-10', 6, 'Slowpoke', '55', 3, '18', 50, NULL, 'Slowbro, Slowking', 4, 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.', '[79]'),
(292, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Tentacool', '56', 4, '10', 30, NULL, 'Tentacruel', 4, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.', '[72]'),
(293, 3, 'Fossil', 1, 1, '1999-10-10', 5, 'Zubat', '57', 6, '10', 40, NULL, 'Golbat', 4, 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.', '[41]'),
(319, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Alakazam', '1', 1, '42', 80, 'Kadabra', NULL, 1, 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5000.', '[65]'),
(320, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Blastoise', '2', 4, '52', 100, 'Wartortle', NULL, 1, 'A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.', '[9]'),
(321, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Chansey', '3', 7, '55', 120, NULL, 'Blissey', 1, 'A rare and elusive Pokémon that is said to bring happiness to those who manage to catch it.', '[113]'),
(322, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Charizard', '4', 3, '76', 120, 'Charmeleon', NULL, 1, 'Spits fire that is hot enough to melt boulders. Known to unintentionally cause forest fires.', '[6]'),
(323, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Clefable', '5', 7, '34', 70, 'Clefairy', NULL, 1, 'A timid Fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.', '[36]'),
(324, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Clefairy', '6', 7, '14', 40, NULL, 'Clefable', 1, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.', '[35]'),
(325, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Gyarados', '7', 4, '41', 100, 'Magikarp', NULL, 1, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', '[130]'),
(326, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Hitmonchan', '8', 6, '33', 70, NULL, NULL, 1, 'While seeming to do nothing, it fires punches in lightning-fast volleys that are impossible to see.', '[107]'),
(327, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Magneton', '9', 5, '28', 60, 'Magnemite', 'Magnezone', 1, 'Formed by several Magnemites linked together. It frequently appears when sunspots flare up.', '[82]'),
(328, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Mewtwo', '10', 1, '53', 60, NULL, NULL, 1, 'A scientist created this Pokémon after years of horrific gene-splicing and DNA engineering experiments.', '[150]'),
(329, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Nidoking', '11', 2, '23', 90, 'Nidorino', NULL, 1, 'Uses its powerful tail in battle to smash, constrict, then break its prey\'s bones.', '[34]'),
(330, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Nidoqueen', '12', 2, '43', 90, 'Nidorina', NULL, 1, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.', '[31]'),
(331, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Ninetales', '13', 3, '32', 80, 'Vulpix', NULL, 1, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.', '[38]'),
(332, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Pidgeot', '14', 7, '40', 80, 'Pidgeotto', NULL, 1, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.', '[18]'),
(333, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Poliwrath', '15', 4, '48', 90, 'Poliwhirl', NULL, 1, 'An adept swimmer at both the front crawl and breaststroke. Easily overtakes the best human swimmers.', '[62]'),
(334, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Raichu', '16', 5, '40', 80, 'Pikachu', NULL, 1, 'Its long tail serves as a ground to protect itself from its own high-voltage power.', '[26]'),
(335, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Scyther', '17', 2, '25', 70, NULL, 'Scizor', 1, 'With ninja-like agility and speed, it can create the illusion that there is more than one of it.', '[123]'),
(336, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Venusaur', '18', 2, '67', 100, 'Ivysaur', NULL, 1, 'This plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.', '[3]'),
(337, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Wigglytuff', '19', 7, '36', 80, 'Jigglypuff', NULL, 1, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', '[40]'),
(338, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Zapdos', '20', 5, '64', 90, NULL, NULL, 1, 'A legendary bird Pokémon said to appear from clouds while wielding enormous lightning bolts.', '[145]'),
(339, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Beedrill', '21', 2, '32', 80, 'Kakuna', NULL, 2, 'Flies at high speed and attacks using the large, venomous stingers on its forelegs and tail.', '[15]'),
(340, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Dragonair', '22', 7, '33', 80, 'Dratini', 'Dragonite', 2, 'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.', '[148]'),
(341, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Dugtrio', '23', 6, '36', 70, 'Diglett', NULL, 2, 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.', '[51]'),
(342, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Electabuzz', '24', 5, '35', 70, NULL, 'Electivire', 2, 'Normally found near power plants, it can wander away and cause major blackouts in cities.', '[125]'),
(343, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Electrode', '25', 5, '40', 80, 'Voltorb', NULL, 2, 'It stores electrical energy under very high pressure. It often explodes with little or no provocation.', '[101]'),
(344, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Kangaskhan', '26', 7, '40', 90, NULL, NULL, 2, 'The infant rarely ventures out of its mother\'s protective pouch until it is three years old.', '[115]'),
(345, 4, 'Base Set 2', 1, 1, '2000-02-24', 1, 'Mr. Mime', '27', 1, '28', 40, 'Mime Jr.', NULL, 2, 'If interrupted while miming, it will slap around the enemy with its broad hands.', '[122]'),
(346, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Pidgeotto', '28', 7, '36', 60, 'Pidgey', 'Pidgeot', 2, 'Very protective of its sprawling territory, this Pokémon will fiercely peck at any intruder.', '[17]'),
(347, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Pinsir', '29', 2, '24', 60, NULL, NULL, 2, 'If it fails to crush the victim in its pincers, it will swing its victim around and toss it hard.', '[127]'),
(348, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Snorlax', '30', 7, '20', 90, 'Munchlax', NULL, 2, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', '[143]'),
(349, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Venomoth', '31', 2, '28', 70, 'Venonat', NULL, 2, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.', '[49]'),
(350, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Victreebel', '32', 2, '42', 80, 'Weepinbell', NULL, 2, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.', '[71]'),
(351, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Arcanine', '33', 3, '45', 100, 'Growlithe', NULL, 3, 'A Pokémon that has been long admired for its beauty. It runs gracefully, as if on wings.', '[59]'),
(352, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Butterfree', '34', 2, '28', 70, 'Metapod', NULL, 3, 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.', '[12]'),
(353, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Charmeleon', '35', 3, '32', 80, 'Charmander', 'Charizard', 3, 'When it swings its burning tail, it raises the temperature to unbearably high levels.', '[5]'),
(354, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Dewgong', '36', 4, '42', 80, 'Seel', NULL, 3, 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.', '[87]'),
(355, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Dodrio', '37', 7, '28', 70, 'Doduo', NULL, 3, 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.', '[85]'),
(356, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Dratini', '38', 7, '10', 40, NULL, 'Dragonair', 3, 'Long considered a mythical Pokémon until recently, when a small colony was found living underwater.', '[147]'),
(357, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Exeggutor', '39', 2, '35', 80, 'Exeggcute', NULL, 3, 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.', '[103]'),
(358, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Farfetch\'d', '40', 7, '20', 50, NULL, 'Sirfetch\'d', 3, 'The sprig of green onions it holds is its weapon. This sprig is used much like a metal sword.', '[83]'),
(359, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Fearow', '41', 7, '27', 70, 'Spearow', NULL, 3, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.', '[22]'),
(360, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Growlithe', '42', 3, '18', 60, NULL, 'Arcanine', 3, 'Very protective of its territory. It will bark and bite to repel intruders from its space.', '[58]'),
(361, 4, 'Base Set 2', 1, 1, '2000-02-24', 1, 'Haunter', '43', 1, '22', 60, 'Gastly', 'Gengar', 3, 'Because of its ability to slip through block walls, it is said to be from another dimension.', '[93]'),
(362, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Ivysaur', '44', 2, '20', 60, 'Bulbasaur', 'Venusaur', 3, 'When the bulb on its back grows large, the Pokémon seems to lose the ability to stand on its hind legs.', '[2]'),
(363, 4, 'Base Set 2', 1, 1, '2000-02-24', 1, 'Jynx', '45', 1, '23', 70, NULL, NULL, 3, 'Merely by meditating, the Pokémon launches a powerful psychic energy attack.', '[124]');
INSERT INTO `card` (`card_id`, `expansion_id`, `series_id`, `publisher_id`, `generation_id`, `release_date`, `artist_id`, `name`, `card_number`, `type_id`, `level`, `hp`, `evolves_from`, `evolves_to`, `rarity_id`, `info`, `pokedex_numbers`) VALUES
(364, 4, 'Base Set 2', 1, 1, '2000-02-24', 1, 'Kadabra', '46', 1, '38', 60, 'Abra', 'Alakazam', 3, 'It emits special alpha waves from its body that induce headaches even to those just nearby.', '[64]'),
(365, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Kakuna', '47', 2, '23', 80, 'Weedle', 'Beedrill', 3, 'Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.', '[14]'),
(366, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Lickitung', '48', 7, '10', 90, NULL, 'Lickilicky', 3, 'Its tongue can be extended like a chameleon\'s. It leaves a stinging sensation when it licks enemies.', '[108]'),
(367, 4, 'Base Set 2', 1, 1, '2000-02-24', 6, 'Machoke', '49', 6, '40', 80, 'Machop', 'Machamp', 3, 'Its muscular body is so powerful that it must wear a power-save belt to help regulate its motions.', '[67]'),
(368, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Magikarp', '50', 4, '8', 30, NULL, 'Gyarados', 3, 'In the distant past, it was stronger than its horribly weak descendants that exist today.', '[129]'),
(369, 4, 'Base Set 2', 1, 1, '2000-02-24', 3, 'Magmar', '51', 3, '24', 50, NULL, 'Magmortar', 3, 'Its body always burns with an orange glow that enables it to hide perfectly among flames.', '[126]'),
(370, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Marowak', '52', 6, '26', 60, 'Cubone', NULL, 3, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to K.O. targets.', '[105]'),
(371, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Nidorina', '53', 2, '24', 70, 'Nidoran ♀', 'Nidoqueen', 3, 'The female\'s horn develops slowly. Prefers physical attacks such as clawing and biting.', '[30]'),
(372, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Nidorino', '54', 2, '25', 60, 'Nidoran ♂', 'Nidoking', 3, 'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.', '[33]'),
(373, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Parasect', '55', 2, '28', 60, 'Paras', NULL, 3, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.', '[47]'),
(374, 4, 'Base Set 2', 1, 1, '2000-02-24', 7, 'Persian', '56', 7, '25', 70, 'Meowth', NULL, 3, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.', '[53]'),
(375, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Poliwhirl', '57', 4, '28', 60, 'Poliwag', 'Poliwrath, Politoed', 3, 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.', '[61]'),
(376, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Raticate', '58', 7, '41', 60, 'Rattata', NULL, 3, 'It uses its whiskers to maintain its balance. It seems to slow down if they are cut off.', '[20]'),
(377, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Rhydon', '59', 6, '48', 100, 'Rhyhorn', 'Rhyperior', 3, 'Protected by an armor-like hide, it is capable of living in molten lava of 3600 degrees.', '[112]'),
(378, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Seaking', '60', 4, '28', 70, 'Goldeen', NULL, 3, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.', '[119]'),
(379, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Seel', '61', 4, '12', 60, NULL, 'Dewgong', 3, 'The protruding horn on its head is very hard. This horn is used for bashing through thick ice.', '[86]'),
(380, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Tauros', '62', 7, '24', 60, NULL, NULL, 3, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.', '[128]'),
(381, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Wartortle', '63', 4, '22', 70, 'Squirtle', 'Blastoise', 3, 'Often hides in water to stalk unwary prey. When swimming quickly, it moves its ears to maintain balance.', '[8]'),
(382, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Weepinbell', '64', 2, '28', 70, 'Bellsprout', 'Victreebel', 3, 'It spits out poisonpowder to immobilize the enemy, and then finishes the enemy with a spray of acid.', '[70]'),
(383, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Abra', '65', 1, '10', 30, NULL, 'Kadabra', 2, 'Using its ability to read minds, it will identify impending danger and teleport to safety.', '[63]'),
(384, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Bellsprout', '66', 2, '11', 40, NULL, 'Weepinbell', 2, 'A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.', '[69]'),
(385, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Bulbasaur', '67', 2, '13', 40, NULL, 'Ivysaur', 2, 'A strange seed was planted on its back at birth. Thus, a plant sprouted and now grows with this Pokémon.', '[1]'),
(386, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Caterpie', '68', 2, '13', 40, NULL, 'Metapod', 2, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.', '[10]'),
(387, 4, 'Base Set 2', 1, 1, '2000-02-24', 3, 'Charmander', '69', 3, '10', 50, NULL, 'Charmeleon', 2, 'Obviously prefers hot places. If it gets caught in the rain, steam is said to spout from the tip of its tail.', '[4]'),
(388, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Cubone', '70', 6, '13', 40, NULL, 'Marowak', 2, 'Because it never removes its skull helmet, no one has ever seen this Pokémon\'s real face.', '[104]'),
(389, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Diglett', '71', 6, '8', 30, NULL, 'Dugtrio', 2, 'Lives about three feet underground, where it feeds on plant roots. It sometimes appears above ground.', '[50]'),
(390, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Doduo', '72', 7, '10', 50, NULL, 'Dodrio', 2, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.', '[84]'),
(391, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Drowzee', '73', 1, '10', 50, NULL, 'Hypno', 2, 'Puts enemies to sleep, then eats their dreams. Occasionally gets sick from eating bad dreams.', '[96]'),
(392, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Exeggcute', '74', 2, '14', 50, NULL, 'Exeggutor', 2, 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.', '[102]'),
(393, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Gastly', '75', 1, '8', 30, NULL, 'Haunter', 2, 'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.', '[92]'),
(394, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Goldeen', '76', 4, '12', 40, NULL, 'Seaking', 2, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname \"Water Queen.\"', '[118]'),
(395, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Jigglypuff', '77', 7, '14', 60, NULL, 'Wigglytuff', 2, 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.', '[39]'),
(396, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Machop', '78', 6, '20', 50, NULL, 'Machoke', 2, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.', '[66]'),
(397, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Magnemite', '79', 5, '13', 40, NULL, 'Magneton', 2, 'Uses anti-gravity to stay suspended. Appears without warning and uses attacks like Thunder Wave.', '[81]'),
(398, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Meowth', '80', 7, '15', 50, NULL, 'Persian', 2, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.', '[52]'),
(399, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Metapod', '81', 2, '21', 70, 'Caterpie', 'Butterfree', 2, 'It is vulnerable to attack because its shell is soft, exposing its weak and tender body.', '[11]'),
(400, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Nidoran ♀', '82', 2, '13', 60, NULL, 'Nidorina', 2, 'Although small, its venomous barbs make this Pokémon dangerous. The female has smaller horns.', '[29]'),
(401, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Nidoran ♂', '83', 2, '20', 40, NULL, 'Nidorino', 2, 'Stiffens its ears to sense danger. The larger, more powerful of its horns secretes venom.', '[32]'),
(402, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Onix', '84', 6, '12', 90, NULL, 'Steelix', 2, 'As it grows, the stone portions of its body harden to become similar to a diamond, though colored black.', '[95]'),
(403, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Paras', '85', 2, '8', 40, NULL, 'Parasect', 2, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.', '[46]'),
(404, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Pidgey', '86', 7, '8', 40, NULL, 'Pidgeotto', 2, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.', '[16]'),
(405, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Pikachu', '87', 5, '12', 40, NULL, 'Raichu', 2, 'When several of these Pokémon gather, their electricity can cause lightning storms.', '[25]'),
(406, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Poliwag', '88', 4, '13', 40, NULL, 'Poliwhirl', 2, 'Its newly grown legs prevent it from running. It appears to prefer swimming over trying to stand.', '[60]'),
(407, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Rattata', '89', 7, '9', 30, NULL, 'Raticate', 2, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.', '[19]'),
(408, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Rhyhorn', '90', 6, '18', 70, NULL, 'Rhydon', 2, 'Its massive bones are 1,000 times harder than human bones. It can easily knock a trailer flying.', '[111]'),
(409, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Sandshrew', '91', 6, '12', 40, NULL, 'Sandslash', 2, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.', '[27]'),
(410, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Spearow', '92', 7, '13', 50, NULL, 'Fearow', 2, 'Eats bugs in grassy areas. It has to flap its short wings at high speeds to stay airborne.', '[21]'),
(411, 4, 'Base Set 2', 1, 1, '2000-02-24', 4, 'Squirtle', '93', 4, '8', 40, NULL, 'Wartortle', 2, 'After birth, its back swells and hardens into a shell. It powerfully sprays foam from its mouth.', '[7]'),
(412, 4, 'Base Set 2', 1, 1, '2000-02-24', 4, 'Starmie', '94', 4, '28', 60, 'Staryu', NULL, 2, 'Its central core glows with the seven colors of the rainbow. Some people value this core as a gem.', '[121]'),
(413, 4, 'Base Set 2', 1, 1, '2000-02-24', 4, 'Staryu', '95', 4, '15', 40, 'Starmie', NULL, 2, 'An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.', '[120]'),
(414, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Tangela', '96', 2, '8', 50, NULL, 'Tangrowth', 2, 'Its whole body is swathed with wide vines that are similar to seaweed. These vines shake as it walks.', '[114]'),
(415, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Venonat', '97', 2, '12', 40, NULL, 'Venomoth', 2, 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.', '[48]'),
(416, 4, 'Base Set 2', 1, 1, '2000-02-24', 5, 'Voltorb', '98', 5, '10', 40, NULL, 'Electrode', 2, 'Usually found in power plants. Easily mistaken for a Poké Ball, it has zapped many people.', '[100]'),
(417, 4, 'Base Set 2', 1, 1, '2000-02-24', 3, 'Vulpix', '99', 3, '11', 50, NULL, 'Ninetales', 2, 'At the time of birth, it has just one tail. Its tail splits from the tip as it grows older.', '[37]'),
(418, 4, 'Base Set 2', 1, 1, '2000-02-24', 2, 'Weedle', '100', 2, '12', 40, NULL, 'Kakuna', 2, 'Often found in forests, eating leaves. It has a sharp, venomous stinger on its head.', '[13]');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
