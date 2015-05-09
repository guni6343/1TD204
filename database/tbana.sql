-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 09, 2015 at 08:13 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tbana`
--

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safeName` text NOT NULL,
  `name` text NOT NULL,
  `color` varchar(7) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `pin_color` varchar(6) NOT NULL,
  `full_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `safeName`, `name`, `color`, `count`, `latitude`, `longitude`, `pin_color`, `full_name`) VALUES
(1, 'norsborg', 'Norsborg', '#ff0000', 413, 59.2439, 17.8131, 'E83938', 'Norsborg'),
(2, 'hallunda', 'Hallunda', '#ff0000', 311, 59.2433, 17.8253, 'E83938', 'Hallunda'),
(3, 'alby', 'Alby', '#ff0000', 399, 59.239, 17.8449, 'E83938', 'Alby'),
(4, 'fittja', 'Fittja', '#ff0000', 299, 59.2475, 17.861, 'E83938', 'Fittja'),
(5, 'masmo', 'Masmo', '#ff0000', 512, 59.2497, 17.8803, 'E83938', 'Masmo'),
(6, 'varby_gard', 'V&aringrby g&aringrd', '#ff0000', 295, 59.2646, 17.8843, 'E83938', 'Vårby gård'),
(7, 'varberg', 'V&aringrberg', '#ff0000', 279, 59.2758, 17.8896, 'E83938', 'Vårberg'),
(8, 'skarholmen', 'Sk&aumlrholmen', '#ff0000', 384, 59.2771, 17.9069, 'E83938', 'Skärholmen'),
(9, 'satra', 'S&aumltra', '#ff0000', 290, 59.2849, 17.9213, 'E83938', 'Sätra'),
(10, 'bredang', 'Bred&aumlng', '#ff0000', 428, 59.2948, 17.934, 'E83938', 'Bred&aumlng'),
(11, 'malarhojden', 'M&aumllarh&oumljden', '#ff0000', 361, 59.3011, 17.9574, 'E83938', 'M&aumllarh&oumljden'),
(12, 'axelsberg', 'Axelsberg', '#ff0000', 485, 59.3043, 17.9747, 'E83938', 'Axelsberg'),
(13, 'ornsberg', '&Oumlrnsberg', '#ff0000', 343, 59.3055, 17.989, 'E83938', '&Oumlrnsberg'),
(14, 'aspudden', 'Aspudden', '#ff0000', 474, 59.3064, 18.0014, 'E83938', 'Aspudden'),
(15, 'liljeholmen', 'Liljeholmen', '#ff0000', 532, 59.3108, 18.0231, 'E83938', 'Liljeholmen'),
(16, 'fruangen', 'Fru&aumlngen', '#ff0000', 263, 59.2861, 17.965, 'E83938', 'Fru&aumlngen'),
(17, 'vastertorp', 'V&aumlstertorp', '#ff0000', 258, 59.2911, 17.9667, 'E83938', 'V&aumlstertorp'),
(18, 'hagerstensasen', 'H&aumlgerstens&aringsen', '#ff0000', 218, 59.2954, 17.979, 'E83938', 'H&aumlgerstens&aringsen'),
(19, 'telefonplan', 'Telefonplan', '#ff0000', 322, 59.2983, 17.9972, 'E83938', 'Telefonplan'),
(20, 'midsommarkransen', 'Midsommarkransen', '#ff0000', 353, 59.3017, 18.0124, 'E83938', 'Midsommarkransen'),
(21, 'hornstull', 'Hornstull', '#ff0000', 425, 59.3158, 18.0342, 'E83938', 'Hornstull'),
(22, 'zinkensdamm', 'Zinkensdamm', '#ff0000', 536, 59.3178, 18.05, 'E83938', 'Zinkensdamm'),
(23, 'mariatorget', 'Mariatorget', '#ff0000', 538, 59.3169, 18.0633, 'E83938', 'Mariatorget'),
(24, 'slussen', 'Slussen', '#ffffff', 831, 59.3194, 18.0722, 'ffffff', 'Slussen'),
(25, 'gamla_stan', 'Gamla stan', '#ffffff', 926, 59.3228, 18.0675, 'ffffff', 'Gamla stan'),
(26, 'tcentralen', 'T-Centralen', '#ffffff', 1900, 59.3317, 18.0608, 'ffffff', 'T-Centralen'),
(27, 'ostermalmstorg', '&Oumlstermalmstorg', '#ff0000', 588, 59.335, 18.074, 'E83938', '&Oumlstermalmstorg'),
(28, 'karlaplan', 'Karlaplan', '#ff0000', 387, 59.3389, 18.0908, 'E83938', 'Karlaplan'),
(29, 'gardet', 'G&aumlrdet', '#ff0000', 397, 59.3472, 18.0986, 'E83938', 'G&aumlrdet'),
(30, 'ropsten', 'Ropsten', '#ff0000', 427, 59.3573, 18.1022, 'E83938', 'Ropsten'),
(31, 'stadion', 'Stadion', '#ff0000', 505, 59.3429, 18.0817, 'E83938', 'Stadion'),
(32, 'tekniska_hogskolan', 'Tekniska h&oumlgskolan', '#ff0000', 513, 59.3457, 18.0717, 'E83938', 'Tekniska h&oumlgskolan'),
(33, 'universitetet', 'Universitetet', '#ff0000', 563, 59.3657, 18.0547, 'E83938', 'Universitetet'),
(34, 'bergshamra', 'Bergshamra', '#ff0000', 367, 59.3815, 18.0365, 'E83938', 'Bergshamra'),
(35, 'danderyds_sjukhus', 'Danderyds sjukhus', '#ff0000', 333, 59.3922, 18.0417, 'E83938', 'Danderyds sjukhus'),
(36, 'hasselby_strand', 'H&aumlsselby strand', '#00ff00', 710, 59.3614, 17.8325, '48A347', 'Hässelby strand'),
(37, 'hasselby_gard', 'H&aumlsselby g&aringrd', '#00ff00', 386, 59.367, 17.8442, '48A347', 'Hässelby gård'),
(38, 'johannelund', 'Johannelund', '#00ff00', 347, 59.3678, 17.8578, '48A347', 'Johannelund'),
(39, 'vallingby', 'V&aumlllingby', '#00ff00', 377, 59.3639, 17.8706, '48A347', 'V&aumlllingby'),
(40, 'racksta', 'R&aringcksta', '#00ff00', 354, 59.3547, 17.8819, '48A347', 'R&aringcksta'),
(41, 'blackeberg', 'Blackeberg', '#00ff00', 385, 59.3483, 17.8825, '48A347', 'Blackeberg'),
(42, 'islandstorget', 'Islandstorget', '#00ff00', 393, 59.3458, 17.8943, '48A347', 'Islandstorget'),
(43, 'angbyplan', '&Aumlngbyplan', '#00ff00', 516, 59.3419, 17.9074, '48A347', '&Aumlngbyplan'),
(44, 'akeshov', '&Aringkeshov', '#00ff00', 421, 59.3421, 17.9239, '48A347', '&Aringkeshov'),
(45, 'brommaplan', 'Brommaplan', '#00ff00', 396, 59.3384, 17.9393, '48A347', 'Brommaplan'),
(46, 'abrahamsberg', 'Abrahamsberg', '#00ff00', 355, 59.3364, 17.9542, '48A347', 'Abrahamsberg'),
(47, 'stora_mossen', 'Stora mossen', '#00ff00', 368, 59.3347, 17.965, '48A347', 'Stora mossen'),
(48, 'alvik', 'Alvik', '#00ff00', 493, 59.3333, 17.9825, '48A347', 'Alvik'),
(49, 'kristineberg', 'Kristineberg', '#00ff00', 388, 59.3325, 18.0042, '48A347', 'Kristineberg'),
(50, 'thorildsplan', 'Thorildsplan', '#00ff00', 782, 59.3315, 18.0154, '48A347', 'Thorildsplan'),
(51, 'fridhemsplan', 'Fridhempsplan', '#ffffff', 995, 59.3325, 18.0306, 'ffffff', 'Fridhempsplan'),
(52, 'st_eriksplan', 'S:t Erikspan', '#00ff00', 419, 59.3397, 18.0369, '48A347', 'S:t Erikspan'),
(53, 'odenplan', 'Odenplan', '#00ff00', 528, 59.3428, 18.0489, '48A347', 'Odenplan'),
(54, 'radmansgatan', 'R&aringdmansgatan', '#00ff00', 411, 59.3403, 18.0586, '48A347', 'R&aringdmansgatan'),
(55, 'hotorget', 'H&oumltorget', '#00ff00', 647, 59.3354, 18.0633, '48A347', 'H&oumltorget'),
(56, 'medborgarplatsen', 'Medborgarplatsen', '#00ff00', 491, 59.3143, 18.0736, '48A347', 'Medborgarplatsen'),
(57, 'skanstull', 'Skanstull', '#00ff00', 473, 59.3078, 18.0761, '48A347', 'Skanstull'),
(58, 'gullmarsplan', 'Gullmarsplan', '#00ff00', 635, 59.2989, 18.0811, '48A347', 'Gullmarsplan'),
(59, 'globen', 'Globen', '#00ff00', 369, 59.2942, 18.0772, '48A347', 'Globen'),
(60, 'enskede_gard', 'Enskedeg&aringrd', '#00ff00', 243, 59.2889, 18.0706, '48A347', 'Enskedeg&aringrd'),
(61, 'sockenplan', 'Sockenplan', '#00ff00', 540, 59.2833, 18.0704, '48A347', 'Sockenplan'),
(62, 'svedmyra', 'Svedmyra', '#00ff00', 474, 59.2775, 18.0671, '48A347', 'Svedmyra'),
(63, 'stureby', 'Stureby', '#00ff00', 315, 59.2747, 18.0569, '48A347', 'Stureby'),
(64, 'bandhagen', 'Bandhagen', '#00ff00', 215, 59.2706, 18.0497, '48A347', 'Bandhagen'),
(65, 'hogdalen', 'H&oumlgdalen', '#00ff00', 236, 59.2633, 18.0425, '48A347', 'H&oumlgdalen'),
(66, 'ragsved', 'R&aringgsved', '#00ff00', 191, 59.2567, 18.0283, '48A347', 'R&aringgsved'),
(67, 'hagsatra', 'Hags&aumltra', '#00ff00', 241, 59.2626, 18.0133, '48A347', 'Hags&aumltra'),
(68, 'skarmarbrink', 'Sk&aumlrmarbrink', '#00ff00', 303, 0, 0, '48A347', 'Sk&aumlrmarbrink'),
(69, 'blasut', 'Bl&aringsut', '#00ff00', 357, 0, 0, '48A347', 'Bl&aringsut'),
(70, 'sandsborg', 'Sandsborg', '#00ff00', 302, 0, 0, '48A347', 'Sandsborg'),
(71, 'skogskyrkogarden', 'Skogskyrkog&aringrden', '#00ff00', 249, 0, 0, '48A347', 'Skogskyrkog&aringrden'),
(72, 'tallkrogen', 'Tallkrogen', '#00ff00', 204, 0, 0, '48A347', 'Tallkrogen'),
(73, 'gubbangen', 'Gubb&aumlngen', '#00ff00', 215, 0, 0, '48A347', 'Gubb&aumlngen'),
(74, 'hokarangen', 'H&oumlkar&aumlngen', '#00ff00', 334, 0, 0, '48A347', 'H&oumlkar&aumlngen'),
(75, 'farsta', 'Farsta', '#00ff00', 474, 0, 0, '48A347', 'Farsta'),
(76, 'farsta_strand', 'Farsta strand', '#00ff00', 333, 0, 0, '48A347', 'Farsta strand'),
(77, 'hammarbyhojden', 'Hammarbyh&oumljden', '#00ff00', 212, 0, 0, '48A347', 'Hammarbyh&oumljden'),
(78, 'bjorkhagen', 'Bj&oumlrkhagen', '#00ff00', 213, 0, 0, '48A347', 'Bj&oumlrkhagen'),
(79, 'karrtorp', 'K&aumlrrtorp', '#00ff00', 208, 0, 0, '48A347', 'K&aumlrrtorp'),
(80, 'bagarmossen', 'Bagarmossen', '#00ff00', 296, 0, 0, '48A347', 'Bagarmossen'),
(81, 'skarpnack', 'Skarpn&aumlck', '#00ff00', 381, 0, 0, '48A347', 'Skarpn&aumlck'),
(82, 'hjulsta', 'Hjulsta', '#0000ff', 377, 59.3964, 17.89, '4B5DAA', 'Hjulsta'),
(83, 'tensta', 'Tensta', '#0000ff', 463, 59.3939, 17.9019, '4B5DAA', 'Tensta'),
(84, 'rinkeby', 'Rinkeby', '#0000ff', 462, 59.3881, 17.9286, '4B5DAA', 'Rinkeby'),
(85, 'rissne', 'Rissne', '#0000ff', 358, 59.3758, 17.9397, '4B5DAA', 'Rissne'),
(86, 'duvbo', 'Duvbo', '#0000ff', 558, 59.3678, 17.9644, '4B5DAA', 'Duvbo'),
(87, 'sundbybergs_centrum', 'Sundbybergs centrum', '#0000ff', 697, 59.3608, 17.9706, '4B5DAA', 'Sundbybergs centrum'),
(88, 'vreten', 'Vreten', '#0000ff', 378, 59.3542, 17.9739, '4B5DAA', 'Vreten'),
(89, 'huvudsta', 'Huvudsta', '#0000ff', 447, 59.3494, 17.9856, '4B5DAA', 'Huvudsta'),
(90, 'akalla', 'Akalla', '#0000ff', 483, 59.4145, 17.9149, '4B5DAA', 'Akalla'),
(91, 'husby', 'Husby', '#0000ff', 335, 59.4094, 17.9269, '4B5DAA', 'Husby'),
(92, 'kista', 'Kista', '#0000ff', 394, 59.4037, 17.9415, '4B5DAA', 'Kista'),
(93, 'hallonbergen', 'Hallonbergen', '#0000ff', 669, 59.3754, 17.9693, '4B5DAA', 'Hallonbergen'),
(94, 'nackrosen', 'N&aumlckrosen', '#0000ff', 447, 59.3667, 17.9832, '4B5DAA', 'N&aumlckrosen'),
(95, 'solna_centrum', 'Solna centrum', '#0000ff', 662, 59.3587, 17.9989, '4B5DAA', 'Solna centrum'),
(96, 'vastra_skogen', 'V&aumlstra skogen', '#0000ff', 677, 59.3475, 18.0039, '4B5DAA', 'V&aumlstra skogen'),
(97, 'stadshagen', 'Stadshagen', '#0000ff', 714, 59.3372, 18.0178, '4B5DAA', 'Stadshagen'),
(98, 'radhuset', 'R&aringdhuset', '#0000ff', 898, 59.3303, 18.0419, '4B5DAA', 'R&aringdhuset'),
(99, 'kungstradgarden', 'Kungstr&aumldg&aringrden', '#0000ff', 856, 59.3308, 18.0733, '4B5DAA', 'Kungstr&aumldg&aringrden'),
(100, 'morby_centrum', 'M%C3%B6rby%20centrum', '#ff0000', 471, 59.3983, 18.0367, 'E83938', 'M&oumlrby centrum'),
(101, 't-bana.net', 't-bana.net', '', 23185, 0, 0, '', 't-bana.net');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
