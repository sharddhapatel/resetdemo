-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `districtid` int(11) NOT NULL,
  `district_title` varchar(100) NOT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`districtid`, `district_title`, `state_id`) VALUES
(36, 'Anantnag', 15),
(37, 'Bandipore', 15),
(38, 'Baramulla', 15),
(39, 'Budgam', 15),
(40, 'Doda', 15),
(41, 'Ganderbal', 15),
(42, 'Jammu', 15),
(43, 'Kargil', 15),
(44, 'Kathua', 15),
(45, 'Kishtwar', 15),
(46, 'Kulgam', 15),
(47, 'Kupwara', 15),
(48, 'Leh (Ladakh)', 15),
(49, 'Poonch', 15),
(50, 'Pulwama', 15),
(51, 'Rajouri', 15),
(52, 'Ramban', 15),
(53, 'Reasi', 15),
(54, 'Samba', 15),
(55, 'Shopian', 15),
(56, 'Srinagar', 15),
(57, 'Udhampur', 15),
(58, 'Bilaspur (Himachal Pradesh)', 14),
(59, 'Chamba', 14),
(60, 'Hamirpur (Himachal Pradesh)', 14),
(61, 'Kangra', 14),
(62, 'Kinnaur', 14),
(63, 'Kullu', 14),
(64, 'Lahul & Spiti', 14),
(65, 'Mandi', 14),
(66, 'Shimla', 14),
(67, 'Sirmaur', 14),
(68, 'Solan', 14),
(69, 'Una', 14),
(70, 'Amritsar', 28),
(71, 'Barnala', 28),
(72, 'Bathinda', 28),
(73, 'Faridkot', 28),
(74, 'Fatehgarh Sahib', 28),
(75, 'Firozpur', 28),
(76, 'Gurdaspur', 28),
(77, 'Hoshiarpur', 28),
(78, 'Jalandhar', 28),
(79, 'Kapurthala', 28),
(80, 'Ludhiana', 28),
(81, 'Mansa', 28),
(82, 'Moga', 28),
(83, 'Muktsar', 28),
(84, 'Patiala', 28),
(85, 'Rupnagar (Ropar)', 28),
(86, 'Sahibzada Ajit Singh Nagar (Mohali)', 28),
(87, 'Sangrur', 28),
(88, 'Shahid Bhagat Singh Nagar (Nawanshahr)', 28),
(89, 'Tarn Taran', 28),
(90, 'Chandigarh', 6),
(91, 'Almora', 34),
(92, 'Bageshwar', 34),
(93, 'Chamoli', 34),
(94, 'Champawat', 34),
(95, 'Dehradun', 34),
(96, 'Haridwar', 34),
(97, 'Nainital', 34),
(98, 'Pauri Garhwal', 34),
(99, 'Pithoragarh', 34),
(100, 'Rudraprayag', 34),
(101, 'Tehri Garhwal', 34),
(102, 'Udham Singh Nagar', 34),
(103, 'Uttarkashi', 34),
(104, 'Ambala', 13),
(105, 'Bhiwani', 13),
(106, 'Faridabad', 13),
(107, 'Fatehabad', 13),
(108, 'Gurgaon', 13),
(109, 'Hisar', 13),
(110, 'Jhajjar', 13),
(111, 'Jind', 13),
(112, 'Kaithal', 13),
(113, 'Karnal', 13),
(114, 'Kurukshetra', 13),
(115, 'Mahendragarh', 13),
(116, 'Mewat', 13),
(117, 'Palwal', 13),
(118, 'Panchkula', 13),
(119, 'Panipat', 13),
(120, 'Rewari', 13),
(121, 'Rohtak', 13),
(122, 'Sirsa', 13),
(123, 'Sonipat', 13),
(124, 'Yamuna Nagar', 13),
(125, 'Central Delhi', 10),
(126, 'East Delhi', 10),
(127, 'New Delhi', 10),
(128, 'North Delhi', 10),
(129, 'North East Delhi', 10),
(130, 'North West Delhi', 10),
(131, 'South Delhi', 10),
(132, 'South West Delhi', 10),
(133, 'West Delhi', 10),
(134, 'Ajmer', 29),
(135, 'Alwar', 29),
(136, 'Banswara', 29),
(137, 'Baran', 29),
(138, 'Barmer', 29),
(139, 'Bharatpur', 29),
(140, 'Bhilwara', 29),
(141, 'Bikaner', 29),
(142, 'Bundi', 29),
(143, 'Chittorgarh', 29),
(144, 'Churu', 29),
(145, 'Dausa', 29),
(146, 'Dholpur', 29),
(147, 'Dungarpur', 29),
(148, 'Ganganagar', 29),
(149, 'Hanumangarh', 29),
(150, 'Jaipur', 29),
(151, 'Jaisalmer', 29),
(152, 'Jalor', 29),
(153, 'Jhalawar', 29),
(154, 'Jhunjhunu', 29),
(155, 'Jodhpur', 29),
(156, 'Karauli', 29),
(157, 'Kota', 29),
(158, 'Nagaur', 29),
(159, 'Pali', 29),
(160, 'Pratapgarh (Rajasthan)', 29),
(161, 'Rajsamand', 29),
(162, 'Sawai Madhopur', 29),
(163, 'Sikar', 29),
(164, 'Sirohi', 29),
(165, 'Tonk', 29),
(166, 'Udaipur', 29),
(167, 'Agra', 33),
(168, 'Aligarh', 33),
(169, 'Allahabad', 33),
(170, 'Ambedkar Nagar', 33),
(171, 'Auraiya', 33),
(172, 'Azamgarh', 33),
(173, 'Bagpat', 33),
(174, 'Bahraich', 33),
(175, 'Ballia', 33),
(176, 'Balrampur', 33),
(177, 'Banda', 33),
(178, 'Barabanki', 33),
(179, 'Bareilly', 33),
(180, 'Basti', 33),
(181, 'Bijnor', 33),
(182, 'Budaun', 33),
(183, 'Bulandshahr', 33),
(184, 'Chandauli', 33),
(185, 'Chitrakoot', 33),
(186, 'Deoria', 33),
(187, 'Etah', 33),
(188, 'Etawah', 33),
(189, 'Faizabad', 33),
(190, 'Farrukhabad', 33),
(191, 'Fatehpur', 33),
(192, 'Firozabad', 33),
(193, 'Gautam Buddha Nagar', 33),
(194, 'Ghaziabad', 33),
(195, 'Ghazipur', 33),
(196, 'Gonda', 33),
(197, 'Gorakhpur', 33),
(198, 'Hamirpur', 33),
(199, 'Hardoi', 33),
(200, 'Hathras', 33),
(201, 'Jalaun', 33),
(202, 'Jaunpur', 33),
(203, 'Jhansi', 33),
(204, 'Jyotiba Phule Nagar', 33),
(205, 'Kannauj', 33),
(206, 'Kanpur Dehat', 33),
(207, 'Kanpur Nagar', 33),
(208, 'Kanshiram Nagar', 33),
(209, 'Kaushambi', 33),
(210, 'Kheri', 33),
(211, 'Kushinagar', 33),
(212, 'Lalitpur', 33),
(213, 'Lucknow', 33),
(214, 'Maharajganj', 33),
(215, 'Mahoba', 33),
(216, 'Mainpuri', 33),
(217, 'Mathura', 33),
(218, 'Mau', 33),
(219, 'Meerut', 33),
(220, 'Mirzapur', 33),
(221, 'Moradabad', 33),
(222, 'Muzaffarnagar', 33),
(223, 'Pilibhit', 33),
(224, 'Pratapgarh', 33),
(225, 'Rae Bareli', 33),
(226, 'Rampur', 33),
(227, 'Saharanpur', 33),
(228, 'Sant Kabir Nagar', 33),
(229, 'Sant Ravidas Nagar (Bhadohi)', 33),
(230, 'Shahjahanpur', 33),
(231, 'Shrawasti', 33),
(232, 'Siddharthnagar', 33),
(233, 'Sitapur', 33),
(234, 'Sonbhadra', 33),
(235, 'Sultanpur', 33),
(236, 'Unnao', 33),
(237, 'Varanasi', 33),
(238, 'Araria', 5),
(239, 'Arwal', 5),
(240, 'Aurangabad (Bihar)', 5),
(241, 'Banka', 5),
(242, 'Begusarai', 5),
(243, 'Bhagalpur', 5),
(244, 'Bhojpur', 5),
(245, 'Buxar', 5),
(246, 'Darbhanga', 5),
(247, 'East Champaran', 5),
(248, 'Gaya', 5),
(249, 'Gopalganj', 5),
(250, 'Jamui', 5),
(251, 'Jehanabad', 5),
(252, 'Kaimur (Bhabua)', 5),
(253, 'Katihar', 5),
(254, 'Khagaria', 5),
(255, 'Kishanganj', 5),
(256, 'Lakhisarai', 5),
(257, 'Madhepura', 5),
(258, 'Madhubani', 5),
(259, 'Munger', 5),
(260, 'Muzaffarpur', 5),
(261, 'Nalanda', 5),
(262, 'Nawada', 5),
(263, 'Patna', 5),
(264, 'Purnia', 5),
(265, 'Rohtas', 5),
(266, 'Saharsa', 5),
(267, 'Samastipur', 5),
(268, 'Saran', 5),
(269, 'Sheikhpura', 5),
(270, 'Sheohar', 5),
(271, 'Sitamarhi', 5),
(272, 'Siwan', 5),
(273, 'Supaul', 5),
(274, 'Vaishali', 5),
(275, 'West Champaran', 5),
(276, 'East Sikkim', 30),
(277, 'North Sikkim', 30),
(278, 'South Sikkim', 30),
(279, 'West Sikkim', 30),
(280, 'Anjaw', 3),
(281, 'Changlang', 3),
(282, 'Dibang Valley', 3),
(283, 'East Kameng', 3),
(284, 'East Siang', 3),
(285, 'Kurung Kumey', 3),
(286, 'Lohit', 3),
(287, 'Lower Dibang Valley', 3),
(288, 'Lower Subansiri', 3),
(289, 'Papum Pare', 3),
(290, 'Tawang', 3),
(291, 'Tirap', 3),
(292, 'Upper Siang', 3),
(293, 'Upper Subansiri', 3),
(294, 'West Kameng', 3),
(295, 'West Siang', 3),
(296, 'Dimapur', 25),
(297, 'Kiphire', 25),
(298, 'Kohima', 25),
(299, 'Longleng', 25),
(300, 'Mokokchung', 25),
(301, 'Mon', 25),
(302, 'Peren', 25),
(303, 'Phek', 25),
(304, 'Tuensang', 25),
(305, 'Wokha', 25),
(306, 'Zunheboto', 25),
(307, 'Bishnupur', 22),
(308, 'Chandel', 22),
(309, 'Churachandpur', 22),
(310, 'Imphal East', 22),
(311, 'Imphal West', 22),
(312, 'Senapati', 22),
(313, 'Tamenglong', 22),
(314, 'Thoubal', 22),
(315, 'Ukhrul', 22),
(316, 'Aizawl', 24),
(317, 'Champhai', 24),
(318, 'Kolasib', 24),
(319, 'Lawngtlai', 24),
(320, 'Lunglei', 24),
(321, 'Mamit', 24),
(322, 'Saiha', 24),
(323, 'Serchhip', 24),
(324, 'Dhalai', 32),
(325, 'North Tripura', 32),
(326, 'South Tripura', 32),
(327, 'West Tripura', 32),
(328, 'East Garo Hills', 23),
(329, 'East Khasi Hills', 23),
(330, 'Jaintia Hills', 23),
(331, 'Ri Bhoi', 23),
(332, 'South Garo Hills', 23),
(333, 'West Garo Hills', 23),
(334, 'West Khasi Hills', 23),
(335, 'Baksa', 4),
(336, 'Barpeta', 4),
(337, 'Bongaigaon', 4),
(338, 'Cachar', 4),
(339, 'Chirang', 4),
(340, 'Darrang', 4),
(341, 'Dhemaji', 4),
(342, 'Dhubri', 4),
(343, 'Dibrugarh', 4),
(344, 'Dima Hasao (North Cachar Hills)', 4),
(345, 'Goalpara', 4),
(346, 'Golaghat', 4),
(347, 'Hailakandi', 4),
(348, 'Jorhat', 4),
(349, 'Kamrup', 4),
(350, 'Kamrup Metropolitan', 4),
(351, 'Karbi Anglong', 4),
(352, 'Karimganj', 4),
(353, 'Kokrajhar', 4),
(354, 'Lakhimpur', 4),
(355, 'Morigaon', 4),
(356, 'Nagaon', 4),
(357, 'Nalbari', 4),
(358, 'Sivasagar', 4),
(359, 'Sonitpur', 4),
(360, 'Tinsukia', 4),
(361, 'Udalguri', 4),
(362, 'Bankura', 35),
(363, 'Bardhaman', 35),
(364, 'Birbhum', 35),
(365, 'Cooch Behar', 35),
(366, 'Dakshin Dinajpur (South Dinajpur)', 35),
(367, 'Darjiling', 35),
(368, 'Hooghly', 35),
(369, 'Howrah', 35),
(370, 'Jalpaiguri', 35),
(371, 'Kolkata', 35),
(372, 'Maldah', 35),
(373, 'Murshidabad', 35),
(374, 'Nadia', 35),
(375, 'North 24 Parganas', 35),
(376, 'Paschim Medinipur (West Midnapore)', 35),
(377, 'Purba Medinipur (East Midnapore)', 35),
(378, 'Puruliya', 35),
(379, 'South 24 Parganas', 35),
(380, 'Uttar Dinajpur (North Dinajpur)', 35),
(381, 'Bokaro', 16),
(382, 'Chatra', 16),
(383, 'Deoghar', 16),
(384, 'Dhanbad', 16),
(385, 'Dumka', 16),
(386, 'East Singhbhum', 16),
(387, 'Garhwa', 16),
(388, 'Giridih', 16),
(389, 'Godda', 16),
(390, 'Gumla', 16),
(391, 'Hazaribagh', 16),
(392, 'Jamtara', 16),
(393, 'Khunti', 16),
(394, 'Koderma', 16),
(395, 'Latehar', 16),
(396, 'Lohardaga', 16),
(397, 'Pakur', 16),
(398, 'Palamu', 16),
(399, 'Ramgarh', 16),
(400, 'Ranchi', 16),
(401, 'Sahibganj', 16),
(402, 'Seraikela-Kharsawan', 16),
(403, 'Simdega', 16),
(404, 'West Singhbhum', 16),
(405, 'Angul', 26),
(406, 'Balangir', 26),
(407, 'Baleswar', 26),
(408, 'Bargarh', 26),
(409, 'Bhadrak', 26),
(410, 'Boudh', 26),
(411, 'Cuttack', 26),
(412, 'Debagarh', 26),
(413, 'Dhenkanal', 26),
(414, 'Gajapati', 26),
(415, 'Ganjam', 26),
(416, 'Jagatsinghapur', 26),
(417, 'Jajapur', 26),
(418, 'Jharsuguda', 26),
(419, 'Kalahandi', 26),
(420, 'Kandhamal', 26),
(421, 'Kendrapara', 26),
(422, 'Kendujhar', 26),
(423, 'Khordha', 26),
(424, 'Koraput', 26),
(425, 'Malkangiri', 26),
(426, 'Mayurbhanj', 26),
(427, 'Nabarangapur', 26),
(428, 'Nayagarh', 26),
(429, 'Nuapada', 26),
(430, 'Puri', 26),
(431, 'Rayagada', 26),
(432, 'Sambalpur', 26),
(433, 'Subarnapur (Sonapur)', 26),
(434, 'Sundergarh', 26),
(435, 'Bastar', 7),
(436, 'Bijapur (Chhattisgarh)', 7),
(437, 'Bilaspur (Chhattisgarh)', 7),
(438, 'Dakshin Bastar Dantewada', 7),
(439, 'Dhamtari', 7),
(440, 'Durg', 7),
(441, 'Janjgir-Champa', 7),
(442, 'Jashpur', 7),
(443, 'Kabirdham (Kawardha)', 7),
(444, 'Korba', 7),
(445, 'Koriya', 7),
(446, 'Mahasamund', 7),
(447, 'Narayanpur', 7),
(448, 'Raigarh (Chhattisgarh)', 7),
(449, 'Raipur', 7),
(450, 'Rajnandgaon', 7),
(451, 'Surguja', 7),
(452, 'Uttar Bastar Kanker', 7),
(453, 'Alirajpur', 20),
(454, 'Anuppur', 20),
(455, 'Ashok Nagar', 20),
(456, 'Balaghat', 20),
(457, 'Barwani', 20),
(458, 'Betul', 20),
(459, 'Bhind', 20),
(460, 'Bhopal', 20),
(461, 'Burhanpur', 20),
(462, 'Chhatarpur', 20),
(463, 'Chhindwara', 20),
(464, 'Damoh', 20),
(465, 'Datia', 20),
(466, 'Dewas', 20),
(467, 'Dhar', 20),
(468, 'Dindori', 20),
(469, 'Guna', 20),
(470, 'Gwalior', 20),
(471, 'Harda', 20),
(472, 'Hoshangabad', 20),
(473, 'Indore', 20),
(474, 'Jabalpur', 20),
(475, 'Jhabua', 20),
(476, 'Katni', 20),
(477, 'Khandwa (East Nimar)', 20),
(478, 'Khargone (West Nimar)', 20),
(479, 'Mandla', 20),
(480, 'Mandsaur', 20),
(481, 'Morena', 20),
(482, 'Narsinghpur', 20),
(483, 'Neemuch', 20),
(484, 'Panna', 20),
(485, 'Raisen', 20),
(486, 'Rajgarh', 20),
(487, 'Ratlam', 20),
(488, 'Rewa', 20),
(489, 'Sagar', 20),
(490, 'Satna', 20),
(491, 'Sehore', 20),
(492, 'Seoni', 20),
(493, 'Shahdol', 20),
(494, 'Shajapur', 20),
(495, 'Sheopur', 20),
(496, 'Shivpuri', 20),
(497, 'Sidhi', 20),
(498, 'Singrauli', 20),
(499, 'Tikamgarh', 20),
(500, 'Ujjain', 20),
(501, 'Umaria', 20),
(502, 'Vidisha', 20),
(503, 'Ahmedabad', 12),
(504, 'Amreli', 12),
(505, 'Anand', 12),
(506, 'Banaskantha', 12),
(507, 'Bharuch', 12),
(508, 'Bhavnagar', 12),
(509, 'Dahod', 12),
(510, 'Gandhi Nagar', 12),
(511, 'Jamnagar', 12),
(512, 'Junagadh', 12),
(513, 'Kachchh', 12),
(514, 'Kheda', 12),
(515, 'Mahesana', 12),
(516, 'Narmada', 12),
(517, 'Navsari', 12),
(518, 'Panch Mahals', 12),
(519, 'Patan', 12),
(520, 'Porbandar', 12),
(521, 'Rajkot', 12),
(522, 'Sabarkantha', 12),
(523, 'Surat', 12),
(524, 'Surendra Nagar', 12),
(525, 'Tapi', 12),
(526, 'The Dangs', 12),
(527, 'Vadodara', 12),
(528, 'Valsad', 12),
(529, 'Daman', 9),
(530, 'Diu', 9),
(531, 'Dadra & Nagar Haveli', 8),
(532, 'Ahmed Nagar', 21),
(533, 'Akola', 21),
(534, 'Amravati', 21),
(535, 'Aurangabad', 21),
(536, 'Beed', 21),
(537, 'Bhandara', 21),
(538, 'Buldhana', 21),
(539, 'Chandrapur', 21),
(540, 'Dhule', 21),
(541, 'Gadchiroli', 21),
(542, 'Gondia', 21),
(543, 'Hingoli', 21),
(544, 'Jalgaon', 21),
(545, 'Jalna', 21),
(546, 'Kolhapur', 21),
(547, 'Latur', 21),
(548, 'Mumbai', 21),
(549, 'Mumbai Suburban', 21),
(550, 'Nagpur', 21),
(551, 'Nanded', 21),
(552, 'Nandurbar', 21),
(553, 'Nashik', 21),
(554, 'Osmanabad', 21),
(555, 'Parbhani', 21),
(556, 'Pune', 21),
(557, 'Raigarh (Maharashtra)', 21),
(558, 'Ratnagiri', 21),
(559, 'Sangli', 21),
(560, 'Satara', 21),
(561, 'Sindhudurg', 21),
(562, 'Solapur', 21),
(563, 'Thane', 21),
(564, 'Wardha', 21),
(565, 'Washim', 21),
(566, 'Yavatmal', 21),
(567, 'Adilabad', 2),
(568, 'Anantapur', 2),
(569, 'Chittoor', 2),
(570, 'East Godavari', 2),
(571, 'Guntur', 2),
(572, 'Hyderabad', 2),
(573, 'Kadapa (Cuddapah)', 2),
(574, 'Karim Nagar', 2),
(575, 'Khammam', 2),
(576, 'Krishna', 2),
(577, 'Kurnool', 2),
(578, 'Mahbubnagar', 2),
(579, 'Medak', 2),
(580, 'Nalgonda', 2),
(581, 'Nellore', 2),
(582, 'Nizamabad', 2),
(583, 'Prakasam', 2),
(584, 'Rangareddy', 2),
(585, 'Srikakulam', 2),
(586, 'Visakhapatnam', 2),
(587, 'Vizianagaram', 2),
(588, 'Warangal', 2),
(589, 'West Godavari', 2),
(590, 'Bagalkot', 17),
(591, 'Bangalore', 17),
(592, 'Bangalore Rural', 17),
(593, 'Belgaum', 17),
(594, 'Bellary', 17),
(595, 'Bidar', 17),
(596, 'Bijapur (Karnataka)', 17),
(597, 'Chamrajnagar', 17),
(598, 'Chickmagalur', 17),
(599, 'Chikkaballapur', 17),
(600, 'Chitradurga', 17),
(601, 'Dakshina Kannada', 17),
(602, 'Davanagere', 17),
(603, 'Dharwad', 17),
(604, 'Gadag', 17),
(605, 'Gulbarga', 17),
(606, 'Hassan', 17),
(607, 'Haveri', 17),
(608, 'Kodagu', 17),
(609, 'Kolar', 17),
(610, 'Koppal', 17),
(611, 'Mandya', 17),
(612, 'Mysore', 17),
(613, 'Raichur', 17),
(614, 'Ramanagara', 17),
(615, 'Shimoga', 17),
(616, 'Tumkur', 17),
(617, 'Udupi', 17),
(618, 'Uttara Kannada', 17),
(619, 'Yadgir', 17),
(620, 'North Goa', 11),
(621, 'South Goa', 11),
(622, 'Lakshadweep', 19),
(623, 'Alappuzha', 18),
(624, 'Ernakulam', 18),
(625, 'Idukki', 18),
(626, 'Kannur', 18),
(627, 'Kasaragod', 18),
(628, 'Kollam', 18),
(629, 'Kottayam', 18),
(630, 'Kozhikode', 18),
(631, 'Malappuram', 18),
(632, 'Palakkad', 18),
(633, 'Pathanamthitta', 18),
(634, 'Thiruvananthapuram', 18),
(635, 'Thrissur', 18),
(636, 'Wayanad', 18),
(637, 'Ariyalur', 31),
(638, 'Chennai', 31),
(639, 'Coimbatore', 31),
(640, 'Cuddalore', 31),
(641, 'Dharmapuri', 31),
(642, 'Dindigul', 31),
(643, 'Erode', 31),
(644, 'Kanchipuram', 31),
(645, 'Kanyakumari', 31),
(646, 'Karur', 31),
(647, 'Krishnagiri', 31),
(648, 'Madurai', 31),
(649, 'Nagapattinam', 31),
(650, 'Namakkal', 31),
(651, 'Nilgiris', 31),
(652, 'Perambalur', 31),
(653, 'Pudukkottai', 31),
(654, 'Ramanathapuram', 31),
(655, 'Salem', 31),
(656, 'Sivaganga', 31),
(657, 'Thanjavur', 31),
(658, 'Theni', 31),
(659, 'Thoothukudi (Tuticorin)', 31),
(660, 'Tiruchirappalli', 31),
(661, 'Tirunelveli', 31),
(662, 'Tiruppur', 31),
(663, 'Tiruvallur', 31),
(664, 'Tiruvannamalai', 31),
(665, 'Tiruvarur', 31),
(666, 'Vellore', 31),
(667, 'Viluppuram', 31),
(668, 'Virudhunagar', 31),
(669, 'Karaikal', 27),
(670, 'Mahe', 27),
(671, 'Puducherry (Pondicherry)', 27),
(672, 'Yanam', 27),
(673, 'Nicobar', 1),
(674, 'North And Middle Andaman', 1),
(675, 'South Andaman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'patel@gmail.com', '7458', '2022-09-12 11:59:32', NULL),
(2, 'sharddha@gmail.com', '78965', '2022-09-12 12:00:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_15_060434_create_rejester_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rejester`
--

CREATE TABLE `rejester` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rejester`
--

INSERT INTO `rejester` (`id`, `fname`, `lname`, `email`, `password`, `stat`, `dist`, `message`, `phoneno`, `code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sharddha', 'patel', 'sharddha@gmail.com', '458', 'gujarat', 'surat', 'hello', '', '', NULL, NULL, NULL),
(2, 'reena', 'patel', 'patel@gmail.com', '789', '2', '568', 'dsfdsf', '', '', NULL, NULL, NULL),
(4, 'sharddha', 'bhadani', 'sharddhagarsondiya365@gmail.com', '2001', '2', '567', 'asdsw', '', '', '552511', NULL, '2022-09-17 01:34:26'),
(13, 'dhara', 'bhadani', 'senilvirani1@gmail.com', '963', '12', '523', 'trdydctrfty', '', '', NULL, NULL, NULL),
(14, 'reena', 'garsondiya', 'sfdgfdfgwqewe@gmail.com', '963', '12', '523', 'rfdtgy sxdcgtfgyhfc', '', '', NULL, NULL, NULL),
(15, 'dfdg', 'patel', 'eds@gmail.com', '1234', '2', '567', 'dfgrfgy', '', '', NULL, NULL, NULL),
(16, 'dhara', 'bhadani', 'dhara@gmail.com', '1983', '12', '503', 'zsdsrftg', '', '', NULL, NULL, NULL),
(17, 'sharddha', 'patel', 'sharddhagaxfgfrsondiya365@gmail.com', '789', '3', '294', 'how are you ?', '+91 8460600034', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_title`) VALUES
(1, 'Andaman & Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra & Nagar Haveli'),
(9, 'Daman & Diu'),
(10, 'Delhi'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu & Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry'),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Tripura'),
(33, 'Uttar Pradesh'),
(34, 'Uttarakhand'),
(35, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`districtid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rejester`
--
ALTER TABLE `rejester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rejester_email_unique` (`email`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `districtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6600;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rejester`
--
ALTER TABLE `rejester`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6600;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
