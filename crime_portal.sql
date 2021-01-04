-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 06:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(7, 2147483647, 'Kisumu County', 'Molestation', '2020-01-07', 'NTYUNDJD', 'Assigned', 'ChargeSheet Filed', '042-1006'),
(8, 30713583, 'Kisumu County', 'Theft', '2020-02-13', 'phone stealing', 'Assigned', 'ChargeSheet Filed', '042-1001'),
(9, 30713583, 'Baringo County', 'Missing Person', '2020-03-12', 'stephen mirikau  is missing ', 'Assigned', 'In Process', '030-1001'),
(10, 30713583, 'Baringo County', 'Theft', '2020-03-13', '@ baringo estate', 'Assigned', 'In Process', '030-1001');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Stephen Kiptoo', '030-1001', 'Missing Person', 'Baringo County', 'Kiptoo'),
('Kevin Oloo', '042-1001', 'Theft', 'Kisumu County', 'Oloo'),
('Kim Kiptoo', '042-1002', 'Robbery', 'Kisumu County', 'Kiptoo'),
('Brenda Nyambura', '042-1003', 'Pickpocket', 'Kisumu County', 'Nyambura'),
('Stephen Uhuru', '042-1004', 'Murder', 'Kisumu County', 'Uhuru'),
('Martin Kariuki', '042-1005', 'Rape', 'Kisumu County', 'Kariuki'),
('Brian Odhiambo', '042-1006', 'Molestation', 'Kisumu County', 'Odhiambo'),
('Wendy Aoko', '042-1007', 'Kidnapping', 'Kisumu County', 'Aoko'),
('Mildah Ayako', '042-1008', 'Missing Person', 'Kisumu County', 'Ayako');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('abdul@Marsabit', 'abdul', 'Marsabit County', 'abdul'),
('adhiambo@Migori', 'adhiambo', 'Migori County', 'adhiambo'),
('alex@Baringo', 'alex', 'Baringo County', 'alex'),
('alice@lamu', 'alice', 'lamu County', 'alice'),
('allan@Makueni', 'allan', 'Makueni County', 'allan'),
('amina@Wajir', 'amina', 'Wajir County', 'amina'),
('becky@Siaya', 'becky', 'Siaya County', 'becky'),
('brian@Tanariver', 'brian', 'Tanariver County', 'brian'),
('brighton@Vihiga', 'brighton', 'Vihiga County', 'brighton'),
('dorcus@Kwale', 'dorcus', 'Kwale County', 'dorcus'),
('elisha@Uasin Gishu', 'elisha', 'Uasin Gishu County', 'elisha'),
('eliud@Kisii', 'eliud', 'Kisii County', 'eliud'),
('esther@Tharaka-Nithi', 'esther', 'Tharaka-Nithi County', 'esther'),
('glado@Narok', 'glado', 'Narok County', 'glado'),
('grace@Kitui', 'grace', 'Kitui County', 'grace'),
('henry@Bomet', 'henry', 'Bomet County', 'henry'),
('ian@Trans-Nzoia', 'Trans-Nzoia', 'Trans-Nzoia County', 'ian'),
('james@Machakos', 'james', 'Machakos County', 'james'),
('joel@Taita-Taveta', 'joel', 'Taita-Taveta County', 'joel'),
('john@Mombasa', 'john', 'Mombasa County', 'john'),
('juma@Isiolo', 'juma', 'Isiolo County', 'juma'),
('kabogo@Kiambu', 'kabogo', 'Kiambu County', 'kabogo'),
('kate@Nakuru', 'kate', 'Nakuru County', 'kate'),
('kelly@Garissa', 'kelly', 'Garissa County', 'kelly'),
('kipto@Turkana', 'kipto', 'Turkana County', 'kipto'),
('laura@Bungoma', 'laura', 'Bungoma County', 'laura'),
('lemmy@Kericho', 'lemmy', 'Kericho County', 'lemmy'),
('lilian@Laikipia', 'lilian', 'Laikipia County', 'lilian'),
('liz@Busia', 'liz', 'Busia County', 'liz'),
('martin@Nyeri', 'martin', 'Nyeri County', 'martin'),
('mike@Nairobi', 'mike', 'Nairobi County', 'mike'),
('miles@Nyandarua', 'miles', 'Nyandarua County', 'miles'),
('moha@Mandera', 'moha', 'Mandera County', 'moha'),
('murume@Meru', 'murume', 'Meru County', 'murume'),
('nechesa@Nyamira', 'nechesa', 'Nyamira County', 'nechesa'),
('njeri@Muranga', 'njeri', 'Muranga County', 'njeri'),
('nyambura@Kirinyaga', 'nyambura', 'Kirinyaga County', 'nyambura'),
('ochieng@Homa Bay', 'ochieng', 'Homa Bay County', 'ochieng'),
('odera@Kakamega', 'odera', 'Kakamega County', 'odera'),
('odongo@Kisumu', 'odongo', 'Kisumu County', 'odongo'),
('pheobe@Embu', 'pheobe', 'Embu County', 'phoebe'),
('sam@Elgeyo-Marakwet', 'sam', 'Elgeyo-Marakwet County', 'sam'),
('sila@West-Pokot', 'sila', 'West-Pokot County', 'sila'),
('stephen@Kilifi', 'stephen', 'Kilifi County', 'stephen'),
('tom@Nandi', 'tom', 'Nandi County', 'tom'),
('wendy@Kajiado', 'wendy', 'Kajiado County', 'wendy'),
('wiseone@Samburu', 'wiseone', 'Samburu County', 'wiseone');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:06', 'Criminal Verified'),
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(1, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(1, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(1, '2018-12-17 10:32:26', 'Criminal Charged'),
(1, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(1, '2018-12-17 10:32:59', 'Criminal Verified'),
(8, '2020-02-15 20:58:01', 'Criminal Verified'),
(8, '2020-02-15 21:02:20', 'Criminal Verified'),
(8, '2020-02-15 21:02:45', 'Criminal Caught'),
(8, '2020-02-15 21:08:36', 'Criminal Charged'),
(8, '2020-02-15 21:08:56', 'criminal is  charged'),
(7, '2020-02-15 23:58:38', 'Criminal Verified'),
(7, '2020-02-16 00:02:45', 'Criminal Caught'),
(7, '2020-02-16 00:02:49', 'Criminal Interrogated'),
(7, '2020-02-16 00:02:53', 'Criminal Accepted the Crime'),
(7, '2020-02-16 00:02:57', 'Criminal Charged'),
(7, '2020-02-16 00:03:41', 'succeful mission'),
(10, '2020-03-29 15:53:47', 'Criminal Caught'),
(10, '2020-03-29 15:53:53', 'Criminal Verified'),
(10, '2020-03-29 15:54:01', 'Criminal Accepted the Crime');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` int(8) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('mike odongo', 'mikenrazy@gmail.com', '1993wepesi', '129,butere', 30713583, 'Male', 713974061),
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 2147483647, 'Male', 9854123654);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
