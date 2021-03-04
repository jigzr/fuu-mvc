-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2021 at 11:02 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `yard_bio`
--

-- --------------------------------------------------------

--
-- Table structure for table `biologs`
--

CREATE TABLE `biologs` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `log` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `biologs`
--

INSERT INTO `biologs` (`id`, `member_id`, `log`) VALUES
(1, 4, '2021-03-04 00:56:33'),
(2, 4, '2021-03-04 00:58:48'),
(3, 1, '2021-03-04 00:59:23'),
(4, 1, '2021-03-04 01:01:12'),
(5, 4, '2021-03-04 01:01:16'),
(6, 4, '2021-03-04 01:05:00'),
(7, 4, '2021-03-04 01:05:27'),
(8, 4, '2021-03-04 01:05:49'),
(9, 4, '2021-03-04 01:06:03'),
(10, 4, '2021-03-04 01:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `registration_date` text,
  `status` text,
  `contact_number` text,
  `scheme` text,
  `date_start` text,
  `date_end` text,
  `schedule` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `address`, `registration_date`, `status`, `contact_number`, `scheme`, `date_start`, `date_end`, `schedule`) VALUES
(1, 'Jagolino, Kim Lloyd', '', '2021-03-05', 'Paid', '9453922580', '1 Month', '2020-12-19', '2021-01-18', '6:00-8:00'),
(2, 'Jagolino, Kurt Lyndon P.', 'Balabag, Pavia', '2020-12-13', 'Paid', '9195553953', '1 Month', '2020-12-19', '2021-01-18', '12:00-2:00'),
(3, 'Jagolino, Kent Lance P.', 'Balabag, Pavia', '2020-12-13', 'Paid', '9081535732', '1 Month', '2021-01-21', '2021-02-21', '12:00-2:00'),
(4, 'Rodriguez, Jingo M.', 'Balabag, Pavia', '2020-12-14', 'Partial (4k)', '9176551126', '1 Year', '2020-12-19', '2021-12-18', '6:00-8:00'),
(5, 'Rodriguez, Joss Gerald M.', 'Balabag, Pavia', '2020-12-14', 'Paid', '9178914936', '1 Month', '2021-01-26', '2021-02-26', '12:00-2:00'),
(6, 'Gallang, Joehirson Charles C.', 'San Jose, San Miguel', '2020-12-19', 'Paid', '9618027541', 'Walk In', '', '', ''),
(7, 'Nagrit, Francis ', 'Providence, Balabag, Pavia ', '2020-12-19', 'Paid', '9155046865', '1 Month', '2021-02-19', '2021-03-18', '2:00-4:00'),
(8, 'Cordero, Jate J.', 'Deca Home, Balabag, Sta Barbara', '2020-12-19', 'Paid', '9176540267', '1 Month', '2020-12-21', '2021-01-20', '12:00-2:00'),
(9, 'Jagolino, Felix ||| C.', 'Parc Regency, Pavia', '2020-12-19', 'Paid', '9612889005', '3 Months', '2020-12-19', '2021-03-18', '6:00-8:00'),
(10, 'Jose, James Carlo L.', 'Monticello Villa, Balabag, Pavia', '2020-12-19', 'Paid', '9519601427', 'Walk In', '', '', ''),
(11, 'Gumban, Bryan Jay B.', 'Purok IV, Pavia', '2020-12-19', 'Paid', '9183953156', 'Walk In', '', '', ''),
(12, 'Gumban, Persus Ray T.', 'Pavia', '2020-12-19', 'Paid', '9514254392', 'Walk In', '', '', ''),
(13, 'Gumban, Romeo Jr. T.', 'Pavia', '2020-12-19', 'Paid', '9475666522', 'Walk In', '', '', ''),
(14, 'Comoda, Edgar Kent L.', 'Sta. Barbara', '2020-12-19', 'Paid', '9171092909', 'Walk In', '', '', ''),
(15, 'Cardinal, Daniel', 'Aganan, Pavia', '2020-12-19', 'Paid', '9479400519', 'Walk In', '', '', ''),
(16, 'Ampunan, Victor Andres F.', 'Bolong Este, Sta. Barbara', '2020-12-19', 'Paid', '9983064584', '1 Month', '2021-01-27', '2021-02-27', '4:00-6:00'),
(17, 'Gregorio, John Joel C.', 'Providence, Balabag, Pavia', '2020-12-20', 'Paid ', '9190090672', 'Walk In', '', '', ''),
(18, 'Bacero, Mitsui Shane M.', 'Providence, Balabag, Pavia', '2020-12-20', 'Paid', '9129686766', '1 Month', '2021-01-11', '2021-02-10', ''),
(19, 'Camacho, Juan Paulo Y.', 'Providence, Pavia', '2020-12-22', 'Paid', '9190032491', '1 Month', '2020-12-22', '2021-01-21', '4:00-6:00'),
(20, 'Saga, Don Sirill Y.', 'Aganan, Pavia', '2020-12-23', 'Paid', '9453213803', 'Walk In', '', '', ''),
(21, 'Bugna, Kinneth Vincent C.', 'Ungka I, Pavia', '2020-12-23', 'Paid ', '9619913163', 'Walk In', '', '', ''),
(22, 'Sim, Seb', 'Pavia, Iloilo', '2020-12-23', 'Paid ', '-', 'Walk In', '', '', ''),
(23, 'Villahumosa, John Mark T.', 'San Jose, San Miguel', '2020-12-23', 'Paid ', '9103881124', 'Walk In', '', '', ''),
(24, 'Batan, Raphael Mark P.', 'Providence, Balabag, Pavia', '2020-12-26', 'Paid', '9171382407', 'Walk In', '', '', ''),
(25, 'Arana, Mikel M.', 'Providence, Balabag, Pavia', '2020-12-26', 'Paid ', '9054989238', 'Walk In', '', '', ''),
(26, 'Arana, Mitcel M.', 'Provicende, Balabag, Pavia ', '2020-12-26', 'Paid', '9287644549', 'Walk In', '', '', ''),
(27, 'Camacho, Rizalina Y.', 'Providence, Balabag, Pavia', '2020-12-26', 'Paid ', '9281816334', 'Walk In', '', '', ''),
(28, 'Camacho, Ma. Elaine', 'Providence, Balabag, Pavia', '2020-12-26', 'Paid', '9128476573', 'Walk In', '', '', ''),
(29, 'Mabilog, John Melchor L.', 'Molo, Iloilo ', '2020-12-26', 'Paid ', '-', 'Walk In', '', '', ''),
(30, 'Improgo, Rey L.', 'Balabag, Sta Barbara', '2020-12-27', 'Paid', '9477322900', '1 Month', '2021-01-28', '2021-02-28', '6:00-8:00'),
(31, 'Catigbe, Jenalyn T.', 'Pal-agon, Pavia', '2020-12-28', 'Paid ', '9129767108', 'Walk In', '', '', ''),
(32, 'Lao, Dan A.', 'Deca Homes, Pavia ', '2020-12-28', 'Paid ', '9637675807', '1 Month', '2021-01-29', '2021-03-01', '2:00-4:00'),
(33, 'Bacsid, Jeffrey', 'Balabag, Pavia', '2020-12-28', 'Paid', '9300329314', '1 Month', '2021-02-04', '2021-03-03', ''),
(34, 'Sougat, Ebony J.', 'Nasugban, Sta. Barbara', '2020-12-29', 'Paid', '9173109300', '1 Month', '2021-01-02', '2021-02-01', '6:00-8:00'),
(35, 'Peregtino, Robert Lee L.', 'Balabag, Pavia', '2020-12-29', 'Paid', '9074118348', '1 Month', '2021-01-25', '2021-02-25', ''),
(36, 'Escarmoso, Lorenz M.', 'Balabag, Pavia', '2020-12-30', 'Paid', '9060651692', '1 Month', '2020-12-30', '2021-01-29', '8:00-10:00'),
(37, 'Rodriguez Jr, Jose T.', 'Aganan, Pavia', '2020-12-30', 'Paid', '9176296097', '1 Month', '2020-12-30', '2021-01-29', '8:00-10:00'),
(38, 'Darwhaan, Jubelle L.', 'Purok 4, Pavia', '2020-12-31', 'Paid', '9060938061', 'Walk In', '', '', ''),
(39, 'Galbizo, Ashley S.', 'Purok 4, Pavia', '2020-12-31', 'Paid', '9971142195', 'Walk In', '', '', ''),
(40, 'Jamerlan, Rommel A.', 'Pandac, Pavia', '2021-01-02', 'Paid', '9196081527', '1 Month', '2021-02-05', '2021-03-05', ''),
(41, 'Procalla, Joseph T.', 'Parc Regency, Pavia', '2021-01-02', 'Paid', '9153114160', 'Walk In', '', '', ''),
(42, 'Gumban, John Rey', 'Pal-agon, Pavia', '2021-01-02', 'Paid', '9279274627', 'Walk In', '', '', ''),
(43, 'Diane, John Louise D.', 'Providence', '2021-01-02', 'Paid', '9392460647', '1 Month', '2021-02-05', '2021-03-05', ''),
(44, 'Villaprudente, Garry Lloyd L.', 'Monticello Villa, Balabag, Pavia', '2021-01-02', 'Paid', '9278270536', '3 Months w/ coach', '2021-01-02', '2021-04-01', '4:00-6:00'),
(45, 'Ibieza, Michael Jay L.', 'Monticello Villa, Balabag, Pavia', '2021-01-02', 'Paid', '9154104920', '3 Months w/ coach', '2021-01-02', '2021-04-01', '4:00-6:00'),
(46, 'Boncalon, Britz Ryan C.', 'Monticello Villa, Balabag, Pavia', '2021-01-02', 'Paid', '9178366625', '1 Month', '2021-01-02', '2021-02-01', ''),
(47, 'Jagolino, K-Jay L.', 'Pal-agon, Pavia', '2021-01-03', 'Paid', '9397929004', 'Walk-in', '', '', ''),
(48, 'Perez, Brian D.', 'Anilao, Pavia', '2021-01-03', 'Paid', '9982303234', '1 Month', '2021-01-03', '2021-02-02', ''),
(49, 'Gromio, Warlito Jr. I', 'Pal-agon, Pavia', '2021-01-03', 'Paid', '9273964681', 'Walk-in', '', '', ''),
(50, 'Diamante, Eric P.', 'Pandac, Pavia', '2021-01-03', 'Paid', '930103190', 'Walk-in', '', '', ''),
(51, 'Gumban, Paul Ericson R.', 'Purok 4, Pavia', '2021-01-03', 'Paid', '9091344816', 'Walk-in', '', '', ''),
(52, 'Fernandez, Karl U.', 'Lessandra heights, Jibao-an, Pavia', '2021-01-03', 'Paid', '9279147892', '1 Month', '2021-01-18', '2021-02-17', ''),
(53, 'Escaniel, Jorge Albert J.', 'Balabag, Pavia', '2021-01-04', 'Paid', '9638627798', '1 Month', '2021-01-04', '2021-02-03', ''),
(54, 'Sajonia, Jayson P.', 'Balabag, Pavia', '2021-01-04', 'Paid', '9953070878', 'Walk-in', '', '', ''),
(55, 'Sajonia, John Bryan P.', 'Balabag, Pavia', '2021-01-04', 'Paid', '9174604009', '1 Month', '2021-01-05', '2021-02-04', '6:00-8:00'),
(56, 'Artleda, Annaleoh L.', 'Payas, Cabatuan, Iloilo', '2021-01-04', 'Paid', '9273605345', '1 Month', '2021-01-04', '2021-02-03', '10:00-12:00'),
(57, 'Silao, Mark Anthony G.', 'Avida Village, Balabag, Pavia', '2021-01-04', 'Paid', '', '1 Month', '2021-01-05', '2021-02-04', '6:00-8:00'),
(58, 'Tangeres, Bryle G.', 'Monticello Villa, Balabag, Pavia', '2021-01-04', 'Paid', '9996576070', 'Walk-in', '', '', ''),
(59, 'Defensor, Justin Ray S.', 'Deca Homes, Pavia, Jibao-an', '2021-01-04', 'Paid', '9064792366', '1 Month', '2021-01-05', '2021-02-04', '4:00-6:00'),
(60, 'Defensor, Rhea Joy V.', 'Deca Homes, Pavia, Jibao-an', '2021-01-04', 'Paid', '9287094017', 'Walk-in', '', '', ''),
(61, 'Maquiling, Ellen Joy F.', 'Balabag, Pavia', '2021-01-04', 'Paid', '', 'Walk-in', '', '', ''),
(62, 'Vinegas, Marco M.', 'Monticello Villa, Balabag, Pavia', '2021-01-04', 'Paid', '92915664', '1 Month', '2021-01-04', '2021-02-03', '4:00-6:00'),
(63, 'Docena, Ritchie C.', 'Ungka I, Pavia', '2021-01-05', 'Paid', '9452903076', 'Walk-in', '', '', ''),
(64, 'Baines, Theodore', 'Balabag, Pavia', '2021-01-05', 'Paid', '', '1 Month', '2021-01-28', '2021-02-28', ''),
(65, 'Gorriceta, BG', 'Pavia', '2021-01-05', 'Paid', '', '1 Month', '2021-01-09', '2021-02-08', ''),
(66, 'Celestial, Vince P.', 'Ungka II, Pavia', '2021-01-05', 'Paid', '9173078261', '1 Month', '2021-01-05', '2021-02-04', ''),
(67, 'Silao, Sany Dae S.', 'Avida Village, Balabag, Pavia', '2021-01-06', 'Paid', '9499001303', '1 Month', '2021-01-06', '2021-02-05', '6:00-8:00'),
(68, 'Superable, Sheane C.', 'Parc Regency, Pavia', '2021-01-06', 'Paid', '9770248266', 'Walk-in', '', '', ''),
(69, 'Bolneo, Aljaylyn G.', 'Pal-agon, Pavia', '2021-01-08', 'Paid', '9264980629', '1 Month', '2021-02-13', '2021-03-12', '8:00-10:00'),
(70, 'Bolinas, Cherryl M.', 'Pal-agon, Pavia', '2021-01-08', 'Paid', '9121616009', '1 Month', '2021-02-11', '2021-03-10', '8:00-10:00'),
(71, 'Tortosa, Enrique J.', 'Balabag, Sta Barbara', '2021-01-08', 'Paid', '9469990815', '1 Month', '2021-01-08', '2021-02-07', ''),
(72, 'Sarabi, Xavier M.', 'Balabag, Sta Barbara', '2021-01-08', 'Paid', '9199645939', 'Walk-in', '', '', ''),
(73, 'Doctora, Rommar L.', 'Monticello Villa, Balabag, Pavia', '2021-01-08', 'Paid', '9454602032', '1 Month', '2021-02-13', '2021-03-12', ''),
(74, 'Gonzaga, Kent Mathew J.', 'Balabag, Pavia', '2021-01-08', 'Paid', '9390158797', 'Walk-in', '', '', ''),
(75, 'Patopaten, Janu G.', 'Balabag, Pavia', '2021-01-08', 'Paid', '9669446344', 'Walk-in', '', '', ''),
(76, 'Causing, Cesar Jr.', 'Deca Homes, Pavia', '2021-01-09', 'Paid', '9985324068', 'Walk-in', '', '', ''),
(77, 'Presaldo, Sante S.', 'Balabag, Pavia', '2021-01-09', 'Paid', '9126056124', 'Walk-in', '', '', ''),
(78, 'Jamerlan, Shawne P.', 'Amparo, Pavia', '2021-01-09', 'Paid', '', 'Walk-in', '', '', ''),
(79, 'Presaldo, Joanna F.', 'Amparo, Pavia', '2021-01-09', 'Paid', '9307023476', 'Walk-in', '', '', ''),
(80, 'Manale, Danilo H.', 'Ungka I, Pavia', '2021-01-10', 'Paid', '9455449930', 'Walk-in', '', '', ''),
(81, 'Janolino, Lourence B.', 'Pal-agon, Pavia', '2021-01-10', 'Paid', '9951570591', 'Walk-in', '', '', ''),
(82, 'Oyanib, Gemma', 'Pal-agon, Pavia', '2021-01-10', 'Paid', '9101272390', 'Walk-in', '', '', ''),
(83, 'Francisco, Vince Christoper B.', 'Carles, Iloilo', '2021-01-10', 'Paid', '9974765797', 'Walk-in', '', '', ''),
(84, 'Dangoy, James Charles', 'Angya, Balabag, Pavia', '2021-01-10', 'Paid', '9125403280', '1 Month', '2021-01-11', '2021-02-10', ''),
(85, 'Sornito, Jun Karl Z.', 'Providence, Pavia', '2021-01-11', 'Paid', '9171421003', '1 Month', '2021-02-15', '2021-03-15', ''),
(86, 'Singh, Davinder', 'Parc Regency, Pavia', '2021-01-11', 'Paid', '9150996911', '1 Month', '2021-02-16', '2021-03-16', ''),
(87, 'Velasco, Gean Fianco A.', 'Monticello Villa, Balabag, Pavia', '2021-01-12', 'Paid', '906332967', 'Walk-in', '', '', ''),
(88, 'Hitalia, Zim Francis J.', 'Balabag, Pavia', '2021-01-12', 'Paid', '9190927662', '1 Month', '2021-02-16', '2021-03-16', ''),
(89, 'Palabrica, Nina Jean H.', 'Balabag, Pavia', '2021-01-12', 'Paid', '9190025799', '1 Month', '2021-02-16', '2021-03-16', ''),
(90, 'Cajilig, Mark Arjon S.', 'Parc Regency, Pavia', '2021-01-13', 'Paid', '9178351290', '1 Month', '2021-01-13', '2021-02-12', ''),
(91, 'Landicho, Joy G.', 'Ilaya, Balabag, Pavia', '2021-01-13', 'Paid', '9668752430', '1 Month', '2021-02-16', '2021-03-16', ''),
(92, 'Zulueta, Nathaniel Dane G.', 'Providence, Balabag, Pavia', '2021-01-13', 'Paid', '9387014805', '1 Month', '2021-01-14', '2021-02-14', ''),
(93, 'Zulueta, Matthew G.', 'Providence, Balabag, Pavia', '2021-01-14', 'Paid', '9951953520', '1 Month', '2021-01-16', '2021-02-16', ''),
(94, 'Bangcaya, Nic S.', 'Deca Homes, Pandac, Pavia', '2021-01-14', 'Paid', '9150061669', '1 Month', '2021-01-16', '2021-02-16', ''),
(95, 'Bolinas, Irvin Y.', 'Deca Homes, Pandac, Pavia', '2021-01-15', 'Paid', '9153241198', '1 Month', '2021-01-15', '2021-02-14', ''),
(96, 'Villanueva, Dindo Rei', 'Pal-agon, Pavia', '2021-01-15', 'Paid', '', '1 Month', '2021-01-15', '2021-02-14', ''),
(97, 'Bolinas, Alan Rei', 'Pal-agon, Pavia', '2021-01-15', 'Paid', '9503051753', '1 Month', '2021-01-15', '2021-02-14', ''),
(98, 'Gapoy, Charles Winston N.', 'Sinapsapan, Jordan, Guimaras', '2021-01-15', 'Paid', '9162328609', 'Walk-in', '', '', ''),
(99, 'Celda, Christian L.', 'Parc Regency, Pavia', '2021-01-15', 'Paid', '9774021698', 'Walk-in', '', '', ''),
(100, 'Billones, Alfred Ryan A.', 'Deca Homes, Pavia', '2021-01-15', 'Paid', '9563166326', 'Monthly', '2021-01-23', '2021-02-22', ''),
(101, 'Ramos, Anna Lee S.', 'Balabag, Ilaya, Pavia', '2021-01-17', 'Paid', '9283078199', 'Walk-in', '', '', ''),
(102, 'Ocano, Jessa Joy J.', 'Pal-agon, Pavia', '2021-01-17', 'Paid', '9664936742', 'Walk-in', '', '', ''),
(103, 'Janolino, Jenifer G.', 'Pal-agon, Pavia', '2021-01-17', 'Paid', '', 'Walk-in', '', '', ''),
(104, 'Janolino, Hela B.', 'Pal-agon, Pavia', '2021-01-17', 'Paid', '', 'Walk-in', '', '', ''),
(105, 'Sumalde, Cedric John L.', 'Jibao-an, Sta. Barbara, Iloilo', '2021-01-18', 'Paid', '9477793533', 'Walk-in', '', '', ''),
(106, 'Solinap, Heinz Ernest A.', 'Providence, Pavia', '2021-01-18', 'Paid', '9514844193', '1 Month', '2021-01-18', '2021-02-17', ''),
(107, 'Evangelista, Daniel Jr.', 'Parc Regency, Pavia', '2021-01-19', 'Paid', '', '1 Month', '2021-01-19', '2021-02-18', ''),
(108, 'Olarita, Ron R', 'San Miguel', '2021-01-19', 'Paid', '9085113771', '1 Month', '2021-01-20', '2021-02-19', ''),
(109, 'Jaruda, Norman Paolo L.', 'Balabag, Pavia', '2021-01-19', 'Paid', '9770222370', '1 Month', '2021-01-19', '2021-02-18', ''),
(110, 'Palma, Chere E.', 'Parc Regency, Balabag, Pavia', '2021-01-20', 'Paid', '9151218466', 'Walk-in', '', '', ''),
(111, 'Paloma, Ray Manuel D.', 'Monticello Villas, Pavia', '2021-01-20', 'Paid', '9156046944', '1 Month', '2021-01-29', '2021-03-01', ''),
(112, 'Malaluan, Julie Andrew C.', 'Jibao-an, Sta. Barbara, Iloilo', '2021-01-20', 'Paid', '9510639344', '1 Month', '2021-01-20', '2021-02-19', ''),
(113, 'Tandug, Russell John S.', 'Avida Village, Balabag, Pavia', '2021-01-20', 'Paid', '9668826514', 'Walk-in', '', '', ''),
(114, 'Florendo, Kenneth John E.', 'Deca Homes, Sta. Barbara', '2021-01-21', 'Paid', '9389347799', '1 Month', '2021-01-21', '2021-02-20', ''),
(115, 'Antiola, Andrei G.', 'Villa Ledesma Subd., Balabag', '2021-01-21', 'Paid', '9086052073', '1 Month', '2021-01-21', '2021-02-20', ''),
(116, 'Singh, Prabhjot', 'Pavia', '2021-01-21', 'Paid', '9565577531', '1 Month', '2021-01-21', '2021-02-20', ''),
(117, 'Gonzales, Jan Aeronn D.', 'Monticello Villas, Balabag', '2021-01-21', 'Paid', '9275735306', 'Walk-in', '', '', ''),
(118, 'Gono, Edison A.', 'Monticello Villas, Pavia', '2021-01-21', 'Paid', '9457097262', 'Walk-in', '', '', ''),
(119, 'Acorlo, Jason James S.', 'Pal-agon, Pavia', '2021-01-22', 'Paid', '9126282238', 'Walk-in', '', '', ''),
(120, 'Salgado, Julius P.', 'Pal-agon, Pavia', '2021-01-22', 'Paid', '9087942945', 'Walk-in', '', '', ''),
(121, 'Larroza, Edgar', 'Ungka II, Pavia', '2021-01-23', 'Paid', '9483348152', '1 Month', '2021-01-25', '2021-02-25', ''),
(122, 'Lingco, Rex L.', 'Monticello Villas, Balabag', '2021-01-24', 'Paid', '9171677264', '3 Months', '2021-01-24', '2021-04-24', ''),
(123, 'Lahaylahay, Christoper L.', 'Hibao-an Sur, Mandurriao', '2021-01-24', 'Paid', '9497506129', 'Walk-in', '', '', ''),
(124, 'Dominguez, Evelyn S.', 'Providence, Pavia', '2021-01-25', 'Paid', '9171483883', '1 Month', '2021-01-25', '2021-02-25', ''),
(125, 'Bolinas, Neil Alfred I.', 'Deca Homes, Pandac, Balabag', '2021-01-25', 'Paid', '9984146106', '1 Month', '2021-01-28', '2021-02-27', ''),
(126, 'Romero, Mark Anthony', 'Ungka 2, Pavia', '2021-01-25', 'Paid', '9485846447', '1 Month', '2021-01-25', '2021-02-25', ''),
(127, 'Gallo, Archie D.', 'NHA Balabag, Pavia', '2021-01-25', 'Paid', '9464226017', 'Walk-in', '', '', ''),
(128, 'Ta-ajan, Rus-i Aluja P.', 'Deca Homes, Pandac, Pavia', '2021-01-26', 'Paid', '9281535758', '1 Month', '2021-01-26', '2021-02-26', ''),
(129, 'Baunta, Patrick D.', 'Parc Regency, Pavia', '2021-01-26', 'Paid', '9275035466', '1 Month', '2021-01-26', '2021-02-26', ''),
(130, 'Pilla, George L.', 'Providence Subd., Balabag', '2021-01-26', 'Paid', '9612733738', '1 Month', '2021-01-26', '2021-02-26', ''),
(131, 'Dejada, Peter France D.', 'Balabag, Pavia', '2021-01-26', 'Paid', '9380307522', 'Walk-in', '', '', ''),
(132, 'Diane, Marilou D.', 'Providence, Pavia', '2021-01-27', 'Paid', '9778177734', '1 Month', '2021-01-28', '2021-02-27', ''),
(133, 'Auman, Edu Joseph P.', 'Jaro, Iloilo City', '2021-01-27', 'Paid', '9394382013', 'Walk-in', '', '', ''),
(134, 'Salting, Kristoffer Lance R.', 'Par Regency, Pavia', '2021-01-27', 'Paid', '9159037332', 'Walk-in', '', '', ''),
(135, 'Flaviano, Reemie Joy S.', 'Bolong Este, Sta. Barbara', '2021-01-27', 'Paid', '9106135552', '1 Month', '2021-01-27', '2021-02-27', ''),
(136, 'Lawag, Norwen Jay B.', 'Aganan, Pavia', '2021-01-28', 'Paid', '9771373171', 'Walk-in', '', '', ''),
(137, 'Retugio, Custer R.', 'Balabag, Pavia', '2021-01-29', 'Paid', '9063368121', 'Walk-in', '', '', ''),
(138, 'Lloren, Ellie Rey S.', 'Monticello, Balabag', '2021-01-29', 'Paid', '9271667975', 'Walk-in', '', '', ''),
(139, 'Occeña, Cadell Mars', 'Deca Homes, Balabag', '2021-01-29', 'Paid', '', 'Walk-in', '', '', ''),
(140, 'Parcon, Ross I.', 'Tigbauan, Iloilo', '2021-01-29', 'Paid', '9452676184', '1 Month', '2021-02-01', '2021-03-01', ''),
(141, 'Soriano, Jan Kane D.', 'Balabag, Pavia', '2021-01-30', 'Paid', '9129516420', 'Walk-in', '', '', ''),
(142, 'Servano, Denver P.', 'Purok I, Pavia', '2021-01-30', 'Paid', '9125001830', 'Walk-in', '', '', ''),
(143, 'Terry, Marion S.', 'Deca 3, Pavia', '2021-01-30', 'Paid', '9192252438', 'Walk-in', '', '', ''),
(144, 'Caduco, Yan D', 'Cadagmayan, Sta. Barbara', '2021-01-30', 'Paid', '9103101826', 'Walk-in', '', '', ''),
(145, 'Llorico, Joseph Jan A.', 'Parc Regency, Pavia', '2021-02-01', 'Paid', '9661677141', '1 Month', '2021-02-01', '2021-03-01', ''),
(146, 'Adeva, John', 'Deca 2 Homes, Pavia', '2021-02-01', 'Paid', '9777845309', '1 Month', '2021-02-01', '2021-03-01', ''),
(147, 'Jagolino, Jan Josef H.', 'Pandac, Pavia', '2021-02-01', 'Paid', '9466024521', '1 Month', '2021-02-02', '2021-03-02', ''),
(148, 'Oliveros, Jay G.', 'Pandac, Pavia', '2021-02-01', 'Paid', '9977847823', '1 Month', '2021-02-02', '2021-03-02', ''),
(149, 'Jarildo, June Vincent O.', 'Providence, Pavia', '2021-02-01', 'Paid', '9054675329', '1 Month', '2021-02-01', '2021-03-01', ''),
(150, 'Sena, Reden F.', 'Monticello, Balabag', '2021-02-03', 'Paid', '9310590984', 'Walk-in', '', '', ''),
(151, 'Gallo, Monette Mae', 'Providence, Balabag', '2021-02-03', 'Paid', '9396205562', '1 Month', '2021-02-03', '2021-03-03', ''),
(152, 'Janolino, Jan Christian J.', 'Balabag, Pavia', '2021-02-04', 'Paid', '3203852', 'Walk-in', '', '', ''),
(153, 'Javellana, Jan Robert A.', 'Monticello Villas, Balabag', '2021-02-04', 'Paid', '9476999083', '1 Month', '2021-02-04', '2021-03-04', ''),
(154, 'Benedicto, Shayne Jayle B.', 'Providence, Balabag', '2021-02-04', 'Paid', '9165760218', 'Walk-in', '', '', ''),
(155, 'Jaro, Perpetua H.', 'Pandac, Pavia', '2021-02-04', 'Paid', '9304692739', 'Walk-in', '', '', ''),
(156, 'Guarnes, Melba H.', 'Parc Regency, Ungka II', '2021-02-04', 'Paid', '9291586686', 'Walk-in', '', '', ''),
(157, 'Subong, Loyda S.', 'Parc Regency, Ungka II', '2021-02-04', 'Paid', '9285983844', 'Walk-in', '', '', ''),
(158, 'Sumalde, Van L.', 'Jibao-an, Sta. Barbara, Iloilo', '2021-02-04', 'Paid', '9989350117', 'Walk-in', '', '', ''),
(159, 'Pacificar, Roniel', 'Providence, Balabag', '2021-02-05', 'Paid', '9285221969', '1 Month', '2021-02-05', '2021-03-05', ''),
(160, 'Chavez, Ruth S.', 'Providence, Balabag', '2021-02-05', 'Paid', '9381613083', '1 Month', '2021-02-05', '2021-03-05', ''),
(161, 'Sobrevega, Jason C.', 'Providence, Balabag', '2021-02-05', 'Paid', '9568421861', 'Walk-in', '', '', ''),
(162, 'Javellana, Sugar L.', 'Monticello, Balabag', '2021-02-06', 'Paid', '9475936376', 'Walk-in', '', '', ''),
(163, 'Jadulos, Angel Grace J.', 'Lapaz, Iloilo City', '2021-02-06', 'Paid', '9561344352', 'Walk-in', '', '', ''),
(164, 'Lagos, Christel M.', 'Pali, Mandurriao', '2021-02-06', 'Paid', '9179733321', 'Walk-in', '', '', ''),
(165, 'Sinco, Alpha Louise A.', 'Rizal, Lapuz, Iloilo City', '2021-02-06', 'Paid', '9668524532', 'Walk-in', '', '', ''),
(166, 'Durban, Carl Therence M.', 'Monticello, Balabag', '2021-02-06', 'Paid', '9662452813', 'Walk-in', '', '', ''),
(167, 'Isedema, Karl A.', 'Balabag', '2021-02-06', 'Paid', '9466849021', 'Walk-in', '', '', ''),
(168, 'Esurim, Daniel M.', 'Deca Homes, Pavia', '2021-02-06', 'Paid', '9307973227', 'Walk-in', '', '', ''),
(169, 'Chavez, Fermin III E.', 'Cabugao Norte, Pavia', '2021-02-08', '', '9630426658', '1 Month', '2021-02-08', '2021-03-08', ''),
(170, 'Apostol, Nora M.', 'Balabag, Pavia', '2021-02-08', '', '9508744037', 'Walk-in', '', '', ''),
(171, 'Ludas, Christine Faith', 'Balabag, Pavia', '2021-02-08', '', '9195457234', 'Walk-in', '', '', ''),
(172, 'Cababasay, Marie Dominique A.', 'Aganan, Pavia', '2021-02-08', '', '9171350515', '3 Months', '2021-02-08', '2021-05-07', ''),
(173, 'Esmao, JC Erryl Shayne C.', 'Providence, Balabag, Pavia', '2021-02-08', '', '9286211215', '1 Month', '2021-02-08', '2021-03-08', ''),
(174, 'Herbo, Rollen', 'Balabag, Pavia', '2021-02-08', '', '9275513153', 'Walk-in', '', '', ''),
(175, 'Suerte, Alvenn Jeremy C.', 'Balabag, Sta Barbara', '2021-02-09', '', '9773770530', 'Walk-in', '', '', ''),
(176, 'Presbitero, Ariel', 'Providence, Balabag, Pavia', '2021-02-09', '', '9755698398', '1 Month', '2021-02-09', '2021-03-08', ''),
(177, 'Yniego, Juliah Ira P', 'Monticello, Balabag', '2021-02-10', '', '9952744104', '1 Month', '2021-02-10', '2021-03-09', ''),
(178, 'Ciriaco, Ma. Verna Lauren A.', 'Providence, Balabag', '2021-02-10', '', '9664906393', 'Walk-in', '', '', ''),
(179, 'Galvez Kenneth', 'Deca Homes, Balabag', '2021-02-10', '', '9078911722', '1 Month', '2021-02-10', '2021-03-09', ''),
(180, 'Barou, Daren ', 'Cabugao Norte, Sta. Barbara', '2021-02-10', '', '9270535962', 'Walk-in', '', '', ''),
(181, 'Dadivas, Ristian', 'Deca Homes, Pandac', '2021-02-10', '', '9230841492', '1 Month', '2021-02-10', '2021-03-09', ''),
(182, 'Ortillano, Joshua J.', 'Pavia, Iloilo', '2021-02-11', '', '9127340254', '1 Month', '2021-02-11', '2021-03-10', ''),
(183, 'Provido, Jojo II Yu', 'Jaro, Iloilo City', '2021-02-11', '', '9153583163', 'Walk-in', '', '', ''),
(184, 'Baron, Alene Joy', 'Monticello, Balabag', '2021-02-11', '', '9510661904', '1 Month', '2021-02-11', '2021-03-10', ''),
(185, 'Cabrera, Dan Lee B.', 'Monticello, Balabag', '2021-02-11', '', '9386008286', 'Walk-in', '', '', ''),
(186, 'Celiz, Vengie A.', 'Aganan, Pavia', '2021-02-11', '', '9950988018', 'Walk-in', '', '', ''),
(187, 'Landicho, Wilfermina G.', 'Ilaya, Balabag, Pavia', '2021-02-12', '', '9611542079', 'Walk-in', '', '', ''),
(188, 'Gasendo, Paulo J.', 'Deca Homes, Pavia', '2021-02-12', '', '9157534243', 'Walk-in', '', '', ''),
(189, 'Sabidong, Joemarie S.', 'Balabag, Pavia', '2021-02-13', '', '9272704531', 'Walk-in', '', '', ''),
(190, 'Adolacion, Jeremiah', 'Balabag, Pavia', '2021-02-13', '', '9275513153', 'Walk-in', '', '', ''),
(191, 'Dadivas, Kissa C.', 'Monticello Villa, Balabag, Pavia', '2021-02-13', '', '9105608903', '1 Month', '2021-02-15', '2021-03-14', ''),
(192, 'Zaldivar, Paolo E.', 'Arevalo, Calaparan, Iloilo City', '2021-02-15', '', '9106136478', 'Walk-in', '', '', ''),
(193, 'Dilag, John Paul ', 'Sta. Barbara', '2021-02-15', '', '9204102747', 'Walk-in', '', '', ''),
(194, 'Refugio, Custer R.', 'Balabag, Pavia', '2021-02-16', '', '9063368121', 'Walk-in', '', '', ''),
(195, 'Refugio, Myer R.', 'Balabag, Pavia', '2021-02-16', '', '9270784169', 'Walk-in', '', '', ''),
(196, 'Refugio, Mattex R.', '', '', '', '', 'Walk-in', '', '', ''),
(197, 'Ledesma, Elver', 'Deca Homes', '', '', '', '1 Month', '2021-02-16', '2021-03-16', ''),
(198, 'Cajurao, Rissi Jan', 'Monticello Villas', '', '', '', '1 Month', '2021-02-16', '2021-03-16', ''),
(199, 'Palmares, Kent', 'Tagsing, Sta. Barbara', '', '', '', 'Walk-in', '', '', ''),
(200, 'Caldito, Romar M.', 'Pavia', '', '', '', 'Walk-in', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biologs`
--
ALTER TABLE `biologs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biologs`
--
ALTER TABLE `biologs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
