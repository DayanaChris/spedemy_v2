-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2018 at 10:11 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `audio_name` varchar(120) NOT NULL,
  `original_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(220) NOT NULL,
  `category_image` varchar(120) NOT NULL,
  `category_image_title` varchar(225) NOT NULL,
  `template_num` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_image`, `category_image_title`, `template_num`, `created_by`) VALUES
(1, 'ALPHABETS', 'a2.png', '03339271514.png', 1, 1),
(2, 'NUMBERS', 'a5.png', '03339271515.png', 1, 1),
(3, 'COLORS', 'a3.png', '03339271516.png', 1, 1),
(5, 'EXPRESSION', 'a4.png', '03339271518.png', 1, 1),
(6, 'ACTION WORDS', 'a1.png', '03339271513.png', 1, 1),
(8, 'SHAPES', '111142201723.png', '111142191527.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'student', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(120) NOT NULL,
  `original_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `img_name`, `original_name`) VALUES
(226, 15, '09927004916.png', 'A.png'),
(227, 15, '09927004917.png', 'a2.png'),
(228, 15, '09927004919.png', 'B.png'),
(229, 15, '09927004920.png', 'C.png'),
(230, 15, '09927004921.png', 'D.png'),
(231, 15, '09927004922.png', 'E.png'),
(232, 15, '09927004923.png', 'e2.png'),
(233, 15, '09927004925.png', 'F.png'),
(234, 15, '09927004926.png', 'G.png'),
(235, 15, '09927014927.png', 'H.png'),
(236, 15, '09927014928.png', 'I.png'),
(237, 15, '09927014930.png', 'i2.png'),
(238, 15, '09927014931.png', 'J.png'),
(239, 15, '09927014932.png', 'K.png'),
(240, 15, '09927014933.png', 'L.png'),
(241, 15, '09927014935.png', 'M.png'),
(242, 15, '09927014936.png', 'N.png'),
(243, 15, '09927014937.png', 'O.png'),
(244, 15, '09927014938.png', 'o2.png'),
(245, 15, '09927014940.png', 'P.png'),
(246, 15, '09927014941.png', 'U.png'),
(247, 15, '09927014942.png', 'u2.png'),
(248, 15, '09927014943.png', 'V.png'),
(249, 15, '09927014944.png', 'W.png'),
(250, 15, '09927014946.png', 'X.png'),
(251, 15, '09927014947.png', 'Y.png'),
(252, 15, '09927014948.png', 'Z.png'),
(253, 15, '09927025217.png', 'armchair_p.png'),
(254, 15, '09927025219.png', 'ball_p.png'),
(255, 15, '09927035220.png', 'banana_p.png'),
(256, 15, '09927035221.png', 'alligator_p.png'),
(257, 15, '09927035222.png', 'angel_p.png'),
(258, 15, '09927035224.png', 'ant_p.png'),
(259, 15, '09927035225.png', 'apple_p.png'),
(260, 15, '09927035226.png', 'donkey_p.png'),
(261, 15, '09927035228.png', 'duck_p.png'),
(262, 15, '09927035230.png', 'egg_p.png'),
(263, 15, '09927035232.png', 'bird_p.png'),
(264, 15, '09927035234.png', 'boat_p.png'),
(265, 15, '09927035236.png', 'bread_p.png'),
(266, 15, '09927035238.png', 'carrot_p.png'),
(267, 15, '09927035240.png', 'cat_p.png'),
(268, 15, '09927035242.png', 'corn_p.png'),
(269, 15, '09927035244.png', 'cow_p.png'),
(270, 15, '09927035246.png', 'deer_p.png'),
(271, 15, '09927035248.png', 'dog_p.png'),
(272, 15, '09927035316.png', 'fence_p.png'),
(273, 15, '09927035318.png', 'fire_p.png'),
(274, 15, '09927035319.png', 'food_p.png'),
(275, 15, '09927035320.png', 'game p.png'),
(276, 15, '09927035321.png', 'eggplant_p.png'),
(277, 15, '09927035323.png', 'elephant_p.png'),
(278, 15, '09927035324.png', 'eyes_p.png'),
(279, 15, '09927035325.png', 'fan_p.png'),
(280, 15, '09927035326.png', 'jet_p.png'),
(281, 15, '09927035327.png', 'juice_p.png'),
(282, 15, '09927035328.png', 'giraffe p.png'),
(283, 15, '09927035330.png', 'goat p.png'),
(284, 15, '09927035331.png', 'grapes p.png'),
(285, 15, '09927035332.png', 'hat_p.png'),
(286, 15, '09927035333.png', 'hay_p.png'),
(287, 15, '09927035334.png', 'honey_p.png'),
(288, 15, '09927035335.png', 'house_p.png'),
(289, 15, '09927035336.png', 'ice_p.png'),
(290, 15, '09927035337.png', 'icecream_p.png'),
(291, 15, '09927035338.png', 'igloo_p.png'),
(292, 15, '09927035339.png', 'island_p.png'),
(293, 15, '09927035341.png', 'jacket_p.png'),
(294, 15, '09927035342.png', 'jam_p.png'),
(295, 15, '09927035343.png', 'jeep_p.png'),
(296, 15, '09927035344.png', 'leaf_p.png'),
(297, 15, '09927035345.png', 'lemon_p.png'),
(298, 15, '09927045346.png', 'lion_p.png'),
(299, 15, '09927045347.png', 'lunchbox_p.png'),
(300, 15, '09927045348.png', 'kanggaroo_p.png'),
(301, 15, '09927045350.png', 'keys_p.png'),
(302, 15, '09927045351.png', 'kite_p.png'),
(303, 15, '09927045352.png', 'koala_p.png'),
(304, 15, '09927045358.png', 'onion_p.png'),
(305, 15, '09927045359.png', 'orange_p.png'),
(306, 15, '09927045401.png', 'owl_p.png'),
(307, 15, '09927045402.png', 'mango_p.png'),
(308, 15, '09927045403.png', 'milk_p.png'),
(309, 15, '09927045404.png', 'mirror_p.png'),
(310, 15, '09927045405.png', 'moon_p.png'),
(311, 15, '09927045406.png', 'net_p.png'),
(312, 15, '09927045407.png', 'nose_p.png'),
(313, 15, '09927045408.png', 'nurse_p.png'),
(314, 15, '09927045409.png', 'nut_p.png'),
(315, 15, '09927045411.png', 'octopus_p.png'),
(316, 15, '09927045412.png', 'rose_p.png'),
(317, 15, '09927045413.png', 'pencil_p.png'),
(318, 15, '09927045414.png', 'pie_p.png'),
(319, 15, '09927045415.png', 'popcorn_p.png'),
(320, 15, '09927045416.png', 'pumpkin_p.png'),
(321, 15, '09927045417.png', 'quail_p.png'),
(322, 15, '09927045418.png', 'queen_p.png'),
(323, 15, '09927045419.png', 'quicksand_p.png'),
(324, 15, '09927045421.png', 'quiet_p.png'),
(325, 15, '09927045422.png', 'rabbit_p.png'),
(326, 15, '09927045423.png', 'rain_p.png'),
(327, 15, '09927045424.png', 'robot_p.png'),
(328, 15, '09927045425.png', 'unicycle_p.png'),
(329, 15, '09927045426.png', 'shirt_p.png'),
(330, 15, '09927045427.png', 'shoes_p.png'),
(331, 15, '09927045429.png', 'squirrel_p.png'),
(332, 15, '09927045430.png', 'sun_p.png'),
(333, 15, '09927045431.png', 'table_p.png'),
(334, 15, '09927045432.png', 'tiger_p.png'),
(335, 15, '09927045433.png', 'toys_p.png'),
(336, 15, '09927045434.png', 'unicycle_p.png'),
(337, 15, '09927045435.png', 'tree_p.png'),
(338, 15, '09927045436.png', 'UFO_p.png'),
(339, 15, '09927045437.png', 'umbrella_p.png'),
(340, 15, '09927045439.png', 'unicorn_p.png'),
(341, 15, '09927045440.png', 'window_p.png'),
(342, 15, '09927045441.png', 'van_p.png'),
(343, 15, '09927045442.png', 'vase_p.png'),
(344, 15, '09927045443.png', 'vegetables_p.png'),
(345, 15, '09927045444.png', 'violin_p.png'),
(346, 15, '09927045445.png', 'wagon_ p.png'),
(347, 15, '09927045446.png', 'whale_p.png'),
(348, 15, '09927045447.png', 'whistle_p.png'),
(349, 15, '09927045449.png', 'X-mas_p.png'),
(350, 15, '09927045450.png', 'xray_p.png'),
(351, 15, '09927045451.png', 'xylophone_p.png'),
(352, 15, '09927045452.png', 'yacht_p.png'),
(353, 15, '09927045453.png', 'yarn_p.png'),
(354, 15, '09927045454.png', 'yogurt_p.png'),
(355, 15, '09927045455.png', 'yoyo_p.png'),
(356, 15, '09927045456.png', 'zebra_p.png'),
(357, 15, '09927045457.png', 'zipper_p.png'),
(358, 15, '09927045459.png', 'zigzag_p.png'),
(359, 15, '09927353902.png', 'Q.png'),
(360, 15, '09927404657.png', 'R.png'),
(361, 15, '09927404658.png', 'S.png'),
(362, 15, '09927404659.png', 'T.png'),
(363, 15, '09927571110.png', '0.png'),
(364, 15, '09927571111.png', '1.png'),
(365, 15, '09927571112.png', '1_ball.png'),
(366, 15, '09927571113.png', '1_cookie.png'),
(367, 15, '09927571114.png', '1_elephant.png'),
(368, 15, '09927571116.png', '1_turtle.png'),
(369, 15, '09927571117.png', '2.png'),
(370, 15, '09927571118.png', '2_bells.png'),
(371, 15, '09927571119.png', '2_candy.png'),
(372, 15, '09927571120.png', '2_donuts.png'),
(373, 15, '09927571121.png', '2_fries.png'),
(374, 15, '09927571122.png', '3.png'),
(375, 15, '09927571123.png', '3_guitar.png'),
(376, 15, '09927571125.png', '3_hammer.png'),
(377, 15, '09927571126.png', '3_ice_cream.png'),
(378, 15, '09927571127.png', '3_jackets.png'),
(379, 15, '09927571128.png', '4.png'),
(380, 15, '09927571129.png', '4_kite.png'),
(381, 15, '09927571130.png', '4_milk.png'),
(382, 15, '09927571131.png', '4_paint.png'),
(383, 15, '09927601449.png', '0.png'),
(384, 15, '09927601450.png', '1.png'),
(385, 15, '09927601451.png', '2.png'),
(386, 15, '09927601452.png', '3.png'),
(387, 15, '09927601454.png', '4.png'),
(388, 15, '09927601455.png', '5.png'),
(389, 15, '09927601456.png', '6.png'),
(390, 15, '09927601457.png', '7.png'),
(391, 15, '09927601458.png', '8.png'),
(392, 15, '09927601459.png', '9.png'),
(393, 15, '09927601500.png', '10.png'),
(394, 15, '09927621817.png', 'two_word.png'),
(395, 15, '09927621819.png', 'zero_word.png'),
(396, 15, '09927621820.png', 'eight_word.png'),
(397, 15, '09927621821.png', 'five_word.png'),
(398, 15, '09927621822.png', 'four_word.png'),
(399, 15, '09927621823.png', 'nine_word.png'),
(400, 15, '09927621824.png', 'one_word.png'),
(401, 15, '09927621825.png', 'seven_word.png'),
(402, 15, '09927621826.png', 'six_word.png'),
(403, 15, '09927621827.png', 'ten_word.png'),
(404, 15, '09927621829.png', 'three_word.png'),
(405, 15, '09927753645.png', '9_rings.png'),
(406, 15, '09927753646.png', '10_starfish.png'),
(407, 15, '09927753648.png', '10_tent.png'),
(408, 15, '09927753649.png', '10_watches.png'),
(409, 15, '09927753650.png', '10_whales.png'),
(410, 15, '09927753651.png', '5_popcorn.png'),
(411, 15, '09927753652.png', '5_roses.png'),
(412, 15, '09927753653.png', '5_sanwiches.png'),
(413, 15, '09927753654.png', '5_umbrella.png'),
(414, 15, '09927753655.png', '6_unicycle.png'),
(415, 15, '09927753657.png', '6_worms.png'),
(416, 15, '09927753658.png', '6_xylophone.png'),
(417, 15, '09927753700.png', '6_yogurt.png'),
(418, 15, '09927753702.png', '7_apron.png'),
(419, 15, '09927753704.png', '7_chair.png'),
(420, 15, '09927753706.png', '7_drums.png'),
(421, 15, '09927753708.png', '7_zebra.png'),
(422, 15, '09927753710.png', '8_duck.png'),
(423, 15, '09927753712.png', '8_hamburger.png'),
(424, 15, '09927753714.png', '8_honey.png'),
(425, 15, '09927834840.png', '9_owl.png'),
(426, 15, '09927834841.png', '9_pies.png'),
(427, 15, '09927834842.png', '9_pumpkin.png'),
(428, 15, '09927910001.png', 'p_A.png'),
(429, 15, '09927910002.png', 'p_B.png'),
(430, 15, '09927910003.png', 'p_C.png'),
(431, 15, '09927910004.png', 'p_D.png'),
(432, 15, '09927910005.png', 'p_E.png'),
(433, 15, '09927910006.png', 'p_F.png'),
(434, 15, '09927910007.png', 'p_G.png'),
(435, 15, '09927910008.png', 'p_H.png'),
(436, 15, '09927910009.png', 'p_I.png'),
(437, 15, '09927910011.png', 'p_T.png'),
(438, 15, '09927910012.png', 'p_Z.png'),
(439, 15, '09927910013.png', 'p-J.png'),
(440, 15, '09927910014.png', 'p-K.png'),
(441, 15, '09927910015.png', 'p-L.png'),
(442, 15, '09927910016.png', 'p-M.png'),
(443, 15, '09927910017.png', 'p-N.png'),
(444, 15, '09927910018.png', 'p-O.png'),
(445, 15, '09927910019.png', 'p-P.png'),
(446, 15, '09927910021.png', 'p-Q.png'),
(447, 15, '09927910022.png', 'p-R.png'),
(448, 15, '09927920036.png', 'p-Y.png'),
(449, 15, '09927920037.png', 'p-S.png'),
(450, 15, '09927920038.png', 'p-U.png'),
(451, 15, '09927920039.png', 'p-V.png'),
(452, 15, '09927920040.png', 'p-W.png'),
(453, 15, '09927920042.png', 'p-X.png'),
(454, 15, '09927960736.png', 'ppr.png'),
(455, 15, '09927960737.png', 'qqr.png'),
(456, 15, '09927960738.png', 'Rr.png'),
(457, 15, '09927960739.png', 'Sr.png'),
(458, 15, '09927960740.png', 'Tr.png'),
(459, 15, '09927970741.png', 'Ur.png'),
(460, 15, '09927970742.png', 'Vr.png'),
(461, 15, '09927970744.png', 'Wr.png'),
(462, 15, '09927970745.png', 'Xr.png'),
(463, 15, '09927970746.png', 'Yr.png'),
(464, 15, '09927970747.png', 'Zr.png'),
(465, 15, '09927970759.png', 'llr.png'),
(466, 15, '09927970800.png', 'mmr.png'),
(467, 15, '09927970801.png', 'nnr.png'),
(468, 15, '09927970802.png', 'oor.png'),
(469, 15, '09927970803.png', 'ddr.png'),
(470, 15, '09927970804.png', 'eer.png'),
(471, 15, '09927970805.png', 'ffr.png'),
(472, 15, '09927970806.png', 'ggr.png'),
(473, 15, '09927970808.png', 'hhr.png'),
(474, 15, '09927970809.png', 'iir.png'),
(475, 15, '09927970810.png', 'jjr.png'),
(476, 15, '09927970811.png', 'kkr.png'),
(477, 15, '09927970812.png', 'bbr.png'),
(478, 15, '09927970813.png', 'ccr.png'),
(479, 15, '09927970814.png', 'aar.png'),
(480, 15, '09929220900.png', 'black.png'),
(481, 15, '09929220901.png', 'blue.png'),
(482, 15, '09929220902.png', 'brown.png'),
(483, 15, '09929220903.png', 'green.png'),
(484, 15, '09929220904.png', 'orange.png'),
(485, 15, '09929220905.png', 'pink.png'),
(486, 15, '09929220907.png', 'red.png'),
(487, 15, '09929230908.png', 'violet.png'),
(488, 15, '09929230909.png', 'white.png'),
(489, 15, '09929230910.png', 'yellow.png'),
(490, 15, '09929241106.png', 'black_book.png'),
(491, 15, '09929241107.png', 'black_eagle.png'),
(492, 15, '09929241108.png', 'black_hat.png'),
(493, 15, '09929241109.png', 'black_ink.png'),
(494, 15, '09929241110.png', 'blue.png'),
(495, 15, '09929241111.png', 'blue_dolphin.png'),
(496, 15, '09929241113.png', 'blue_fan.png'),
(497, 15, '09929241114.png', 'blue_jet.png'),
(498, 15, '09929241115.png', 'blue_umbrella.png'),
(499, 15, '09929241116.png', 'brown.png'),
(500, 15, '09929241117.png', 'brown_bear.png'),
(501, 15, '09929241118.png', 'brown_drawer.png'),
(502, 15, '09929241119.png', 'brown_kanggaroo.png'),
(503, 15, '09929241120.png', 'brown_log.png'),
(504, 15, '09929241122.png', 'COLOR_BLACK.png'),
(505, 15, '09929241123.png', 'COLOR_BLUE.png'),
(506, 15, '09929241124.png', 'COLOR_BROWN.png'),
(507, 15, '09929241125.png', 'COLOR_GREEN.png'),
(508, 15, '09929241126.png', 'COLOR_ORANGE.png'),
(509, 15, '09929241127.png', 'COLOR_PINK.png'),
(510, 15, '09929241149.png', 'pink_cottoncandy.png'),
(511, 15, '09929241150.png', 'pink_octopus.png'),
(512, 15, '09929241151.png', 'COLOR_RED.png'),
(513, 15, '09929241152.png', 'COLOR_VIOLET.png'),
(514, 15, '09929241154.png', 'COLOR_WHITE.png'),
(515, 15, '09929241155.png', 'COLOR_YELLOW.png'),
(516, 15, '09929241156.png', 'green.png'),
(517, 15, '09929241157.png', 'green_alligator.png'),
(518, 15, '09929241158.png', 'green_leaf.png'),
(519, 15, '09929241159.png', 'green_shirt.png'),
(520, 15, '09929251200.png', 'green_tree.png'),
(521, 15, '09929251201.png', 'orange.png'),
(522, 15, '09929251203.png', 'orange_ball.png'),
(523, 15, '09929251204.png', 'orange_butterfly.png'),
(524, 15, '09929251205.png', 'orange_carrot.png'),
(525, 15, '09929251206.png', 'orange_orange.png'),
(526, 15, '09929251208.png', 'pink.png'),
(527, 15, '09929251209.png', 'pink_apron.png'),
(528, 15, '09929251210.png', 'pink_bird.png'),
(529, 15, '09929251211.png', 'red_cap.png'),
(530, 15, '09929251212.png', 'red_crab.png'),
(531, 15, '09929251213.png', 'red_wagon.png'),
(532, 15, '09929251214.png', 'violet_shoes.png'),
(533, 15, '09929251216.png', 'violet_UFO.png'),
(534, 15, '09929251217.png', 'white.png'),
(535, 15, '09929251218.png', 'white_egg.png'),
(536, 15, '09929251219.png', 'white_goat.png'),
(537, 15, '09929251220.png', 'white_horse.png'),
(538, 15, '09929251221.png', 'white_swan.png'),
(539, 15, '09929251222.png', 'yellow.png'),
(540, 15, '09929251224.png', 'yellow_honey.png'),
(541, 15, '09929251225.png', 'yellow_lemon.png'),
(542, 15, '09929251226.png', 'yellow_taxi.png'),
(543, 15, '09929251227.png', 'yellow_banana.png'),
(544, 17, '101031680234.png', 'zzp.png'),
(545, 17, '101031680235.png', 'zzr.png'),
(546, 17, '101031680236.png', 'Z.png'),
(547, 18, '101031812204.png', 'a2.png'),
(548, 18, '101031822213.png', 'aar.png'),
(549, 18, '101031822215.png', 'aap.png'),
(550, 1, '111140572229.png', 'head.png'),
(551, 1, '111142191527.png', '03339271517.png'),
(552, 1, '111142201723.png', 'a6.png'),
(553, 1, '111142201724.png', 'circle.png'),
(554, 1, '111142201725.png', 'circle_ball.png'),
(555, 1, '111142201726.png', 'circle_coin.png'),
(556, 1, '111142201728.png', 'circle_cookie.png'),
(557, 1, '111142201729.png', 'circle_moon.png'),
(558, 1, '111142201730.png', 'circle_word.png'),
(559, 1, '111142201731.png', 'hexagon.png'),
(560, 1, '111142201732.png', 'hexagon_bee_hive_cells.png'),
(561, 1, '111142201733.png', 'hexagon_jewelry_box.png'),
(562, 1, '111142201734.png', 'hexagon_trampoline.png'),
(563, 1, '111142201735.png', 'hexagon_wooden_table.png'),
(564, 1, '111142201737.png', 'hexagon_word.png');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `user_id` int(120) NOT NULL,
  `cat_id` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `user_id`, `cat_id`) VALUES
(8, 15, 1),
(9, 15, 1),
(10, 15, 1),
(11, 15, 1),
(13, 15, 1),
(14, 15, 1),
(15, 15, 1),
(16, 15, 1),
(17, 15, 1),
(18, 15, 1),
(19, 15, 1),
(20, 15, 1),
(21, 15, 1),
(22, 15, 1),
(23, 15, 1),
(24, 15, 1),
(25, 15, 1),
(26, 15, 1),
(27, 15, 1),
(28, 15, 1),
(29, 15, 1),
(30, 15, 1),
(31, 15, 1),
(32, 15, 1),
(33, 15, 1),
(36, 15, 2),
(39, 15, 2),
(40, 15, 2),
(41, 15, 2),
(42, 15, 2),
(43, 15, 2),
(44, 15, 2),
(45, 15, 2),
(46, 15, 2),
(47, 15, 2),
(48, 15, 2),
(49, 15, 3),
(51, 15, 3),
(52, 15, 3),
(53, 15, 3),
(54, 15, 3),
(55, 15, 3),
(56, 15, 3),
(57, 15, 3),
(58, 15, 3),
(59, 15, 3),
(60, 17, 1),
(62, 1, 7),
(63, 1, 8),
(64, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_example`
--

CREATE TABLE `lesson_example` (
  `id` int(11) NOT NULL,
  `lesson_id` int(120) NOT NULL,
  `img_id` int(120) NOT NULL,
  `lesson_example_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_example`
--

INSERT INTO `lesson_example` (`id`, `lesson_id`, `img_id`, `lesson_example_name`) VALUES
(73, 8, 256, 'alligator'),
(74, 8, 257, 'angel'),
(75, 8, 258, 'ant'),
(76, 8, 259, 'apple'),
(77, 9, 254, 'ball'),
(78, 9, 263, 'bird'),
(79, 9, 264, 'boat'),
(80, 9, 265, 'bread'),
(81, 10, 266, 'carrot'),
(82, 10, 267, 'cat'),
(83, 10, 268, 'corn'),
(84, 10, 269, 'cow'),
(85, 11, 270, 'deer'),
(86, 11, 271, 'dog'),
(87, 11, 261, 'duck'),
(88, 11, 260, 'donkey'),
(93, 13, 262, 'egg'),
(94, 13, 276, 'eggplant'),
(95, 13, 277, 'elephant'),
(96, 13, 278, 'eyes'),
(97, 14, 279, 'fan'),
(98, 14, 272, 'fence'),
(99, 14, 273, 'fire'),
(100, 14, 274, 'food'),
(101, 15, 275, 'game'),
(102, 15, 282, 'giraffe'),
(103, 15, 283, 'goat'),
(104, 15, 284, 'grapes'),
(105, 16, 285, 'hat'),
(106, 16, 286, 'hay'),
(107, 16, 287, 'honey'),
(108, 16, 288, 'house'),
(109, 17, 289, 'ice'),
(110, 17, 290, 'ice cream'),
(111, 17, 291, 'igloo'),
(112, 17, 292, 'island'),
(113, 18, 293, 'jacket'),
(114, 18, 294, 'jam'),
(115, 18, 295, 'jeep'),
(116, 18, 280, 'jet'),
(117, 19, 300, 'kangaroo'),
(118, 19, 301, 'keys'),
(119, 19, 302, 'kite'),
(120, 19, 303, 'koala'),
(121, 20, 296, 'leaf'),
(122, 20, 297, 'lemon'),
(123, 20, 298, 'lion'),
(124, 20, 299, 'lunchbox'),
(125, 21, 307, 'mango'),
(126, 21, 308, 'milk'),
(127, 21, 309, 'mirror'),
(128, 21, 310, 'moon'),
(129, 22, 311, 'net'),
(130, 22, 312, 'nose'),
(131, 22, 313, 'nurse'),
(132, 22, 314, 'nut'),
(133, 23, 315, 'octopus'),
(134, 23, 304, 'onion'),
(135, 23, 305, 'orange'),
(136, 23, 306, 'owl'),
(137, 24, 317, 'pencil'),
(138, 24, 318, 'pie'),
(139, 24, 319, 'popcorn'),
(140, 24, 320, 'pumpkin'),
(141, 25, 321, 'quail'),
(142, 25, 322, 'queen'),
(143, 25, 323, 'quicksand'),
(144, 25, 324, 'quiet'),
(145, 26, 325, 'rabbit'),
(146, 26, 326, 'rain'),
(147, 26, 327, 'robot'),
(148, 26, 316, 'rose'),
(149, 27, 329, 'shirt'),
(150, 27, 330, 'shoes'),
(151, 27, 331, 'squirrel'),
(152, 27, 332, 'sun'),
(153, 28, 333, 'table'),
(154, 28, 334, 'tiger'),
(155, 28, 335, 'toys'),
(156, 28, 337, 'tree'),
(157, 29, 338, 'UFO'),
(158, 29, 339, 'umbrella'),
(159, 29, 340, 'unicorn'),
(160, 29, 336, 'unicycle'),
(161, 30, 342, 'van'),
(162, 30, 343, 'vase'),
(163, 30, 344, 'vegetable'),
(164, 30, 345, 'violin'),
(165, 31, 346, 'wagon'),
(166, 31, 347, 'whale'),
(167, 31, 348, 'whistle'),
(168, 31, 341, 'window'),
(169, 32, 349, 'X-mas'),
(170, 32, 350, 'X-ray'),
(171, 32, 351, 'xylophone'),
(172, 32, 0, ''),
(173, 33, 352, 'yacht'),
(174, 33, 353, 'yarn'),
(175, 33, 354, 'yogurt'),
(176, 33, 355, 'yoyo'),
(177, 34, 356, 'zebra'),
(178, 34, 358, 'zigzag'),
(179, 34, 357, 'zipper'),
(180, 34, 0, ''),
(185, 36, 395, 'zero'),
(186, 36, 0, ''),
(187, 36, 0, ''),
(188, 36, 0, ''),
(197, 39, 400, ''),
(198, 39, 367, '1 Elephant'),
(199, 39, 368, '1 Turtle'),
(200, 39, 365, '1 Ball '),
(201, 40, 394, ''),
(202, 40, 370, '2 Bell'),
(203, 40, 371, '2 Candy'),
(204, 40, 372, '2 Donut'),
(205, 41, 404, ''),
(206, 41, 375, '3 Guitar'),
(207, 41, 377, '3 Ice Cream'),
(208, 41, 378, '3 Jacket'),
(209, 42, 398, ''),
(210, 42, 380, '4 Kite'),
(211, 42, 381, '4 Milk'),
(212, 42, 382, '4 Paint'),
(213, 43, 397, ''),
(214, 43, 411, '5 Rose'),
(215, 43, 410, '5 Popcorn'),
(216, 43, 412, '5 Sandwich'),
(217, 44, 402, ''),
(218, 44, 414, '6 Unicycle'),
(219, 44, 417, '6 Yogurt'),
(220, 44, 416, '6 Xylophone'),
(221, 45, 401, ''),
(222, 45, 418, '7 Dress'),
(223, 45, 419, '7 Chairs'),
(224, 45, 420, '7 Drum'),
(225, 46, 396, ''),
(226, 46, 422, '8 Ducks'),
(227, 46, 423, '8 Hamburgers'),
(228, 46, 424, '8 Honey'),
(229, 47, 399, ''),
(230, 47, 405, '9 Rings'),
(231, 47, 427, '9 Pumpkins'),
(232, 47, 426, '9 Pies'),
(233, 48, 403, ''),
(234, 48, 407, '10 Tent'),
(235, 48, 408, '10 Watches'),
(236, 48, 406, '10 Starfish'),
(237, 49, 512, ''),
(238, 49, 531, 'wagon'),
(239, 49, 530, 'crab'),
(240, 49, 0, ''),
(245, 51, 508, ''),
(246, 51, 525, 'orange'),
(247, 51, 524, 'carrot'),
(248, 51, 0, ''),
(249, 52, 515, ''),
(250, 52, 543, 'banana'),
(251, 52, 542, 'taxi'),
(252, 52, 0, ''),
(253, 53, 507, ''),
(254, 53, 520, 'tree'),
(255, 53, 519, 't-shirt'),
(256, 53, 0, ''),
(257, 54, 505, ''),
(258, 54, 498, 'umbrella'),
(259, 54, 495, 'whale'),
(260, 54, 0, ''),
(261, 55, 513, ''),
(262, 55, 533, 'UFO'),
(263, 55, 532, 'shoes'),
(264, 55, 0, ''),
(265, 56, 509, ''),
(266, 56, 528, 'bird'),
(267, 56, 527, 'dress'),
(268, 56, 0, ''),
(269, 57, 506, ''),
(270, 57, 503, 'log'),
(271, 57, 502, 'kangaroo'),
(272, 57, 0, ''),
(273, 58, 504, ''),
(274, 58, 493, 'ink'),
(275, 58, 491, 'eagle'),
(276, 58, 0, ''),
(277, 59, 514, ''),
(278, 59, 537, 'horse'),
(279, 59, 536, 'goat'),
(280, 59, 0, ''),
(281, 60, 356, 'Zebra'),
(282, 60, 357, 'Zipper'),
(283, 60, 0, ''),
(284, 60, 0, ''),
(289, 62, 536, 'lanang '),
(290, 62, 541, 'uyanguren'),
(291, 62, 0, ''),
(292, 62, 0, ''),
(293, 63, 557, 'moon'),
(294, 63, 556, 'cookie'),
(295, 63, 555, 'coin'),
(296, 63, 554, 'ball'),
(297, 64, 541, 'Lemon'),
(298, 64, 0, ''),
(299, 64, 0, ''),
(300, 64, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_image`
--

CREATE TABLE `lesson_image` (
  `id` int(11) NOT NULL,
  `lesson_id` int(120) NOT NULL,
  `img_id` int(120) NOT NULL,
  `lesson_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_image`
--

INSERT INTO `lesson_image` (`id`, `lesson_id`, `img_id`, `lesson_name`) VALUES
(8, 8, 226, 'A'),
(9, 9, 228, 'B'),
(10, 10, 229, 'C'),
(11, 11, 230, 'D'),
(13, 13, 231, 'E'),
(14, 14, 233, 'F'),
(15, 15, 234, 'G'),
(16, 16, 235, 'H'),
(17, 17, 236, 'I'),
(18, 18, 238, 'J'),
(19, 19, 239, 'K'),
(20, 20, 240, 'L'),
(21, 21, 241, 'M'),
(22, 22, 242, 'N'),
(23, 23, 243, 'O'),
(24, 24, 245, 'P'),
(25, 25, 359, 'Q'),
(26, 26, 360, 'R'),
(27, 27, 361, 'S'),
(28, 28, 362, 'T'),
(29, 29, 246, 'U'),
(30, 30, 248, 'V'),
(31, 31, 249, 'W'),
(32, 32, 250, 'X'),
(33, 33, 251, 'Y'),
(34, 34, 252, 'Z'),
(36, 36, 383, '0'),
(39, 39, 384, '1'),
(40, 40, 385, '2 '),
(41, 41, 386, '3'),
(42, 42, 387, '4'),
(43, 43, 388, '5'),
(44, 44, 389, '6'),
(45, 45, 390, '7'),
(46, 46, 391, '8'),
(47, 47, 392, '9'),
(48, 48, 393, '10'),
(49, 49, 486, 'Red'),
(51, 51, 484, 'Orange'),
(52, 52, 489, 'Yellow'),
(53, 53, 483, 'Green'),
(54, 54, 481, 'Blue'),
(55, 55, 487, 'Violet'),
(56, 56, 485, 'Pink'),
(57, 57, 482, 'Brown'),
(58, 58, 480, 'Black'),
(59, 59, 488, 'White'),
(60, 60, 546, 'z'),
(62, 62, 542, 'davao'),
(63, 63, 553, 'Circle'),
(64, 64, 541, 'Lemon');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_manager`
--

CREATE TABLE `lesson_manager` (
  `id` int(11) NOT NULL,
  `lesson_image_id` int(120) NOT NULL,
  `lesson_example_id` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_manager`
--

INSERT INTO `lesson_manager` (`id`, `lesson_image_id`, `lesson_example_id`) VALUES
(19, 8, 76),
(20, 9, 80),
(21, 10, 84),
(22, 11, 88),
(24, 13, 96),
(25, 14, 100),
(26, 15, 104),
(27, 16, 108),
(28, 17, 112),
(29, 18, 116),
(30, 19, 120),
(31, 20, 124),
(32, 21, 128),
(33, 22, 132),
(34, 23, 136),
(35, 24, 140),
(36, 25, 144),
(37, 26, 148),
(38, 27, 152),
(39, 28, 156),
(40, 29, 160),
(41, 30, 164),
(42, 31, 168),
(43, 32, 172),
(44, 33, 176),
(45, 34, 180),
(47, 36, 188),
(50, 39, 200),
(51, 40, 204),
(52, 41, 208),
(53, 42, 212),
(54, 43, 216),
(55, 44, 220),
(56, 45, 224),
(57, 46, 228),
(58, 47, 232),
(59, 48, 236),
(60, 49, 240),
(62, 51, 248),
(63, 52, 252),
(64, 53, 256),
(65, 54, 260),
(66, 55, 264),
(67, 56, 268),
(68, 57, 272),
(69, 58, 276),
(70, 59, 280),
(71, 60, 284),
(73, 62, 292),
(74, 63, 296),
(75, 64, 300);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level_name` varchar(220) NOT NULL,
  `level_image` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level_name`, `level_image`, `created_by`) VALUES
(1, 'EASY', 'Easy.png', 1),
(2, 'MODERATE', 'moderate.png', 1),
(3, 'HARD', 'Difficult.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'beat@gmail.com', 1539227609);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `category_id`, `level_id`, `quiz_id`, `user_id`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(120) NOT NULL,
  `user_id` int(120) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `question_image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `template_num` int(11) NOT NULL,
  `background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `user_id`, `category_id`, `level_id`, `question`, `question_image`, `status`, `template_num`, `background`) VALUES
(2, 15, 1, 1, 'What is the match of the letter?', '09927910002.png', 0, 1, 'A56EAB'),
(3, 15, 1, 1, 'What is the match of the letter?', '09927910002.png', 0, 1, 'A56EAB'),
(4, 15, 1, 1, 'What is the match of the letter?', '09927910003.png', 0, 1, 'A56EAB'),
(5, 15, 1, 1, 'What is the match of the letter?', '09927910004.png', 0, 1, 'A56EAB'),
(6, 15, 1, 1, 'What is the match of the letter?', '09927910005.png', 0, 1, 'A56EAB'),
(7, 18, 1, 2, 'What starts with letter A?', '101031822213.png', 0, 2, '53A8AB'),
(14, 1, 1, 1, 'What is the match of the letter?', '09927910009.png', 0, 1, 'A56EAB'),
(18, 1, 1, 2, 'What starts with letter C?', '111140572229.png', 0, 2, 'A56EAB'),
(22, 1, 1, 2, 'What starts with letter D?', '111140572229.png', 0, 2, 'A56EAB'),
(23, 1, 1, 2, 'What starts with letter E?', '09927970804.png', 0, 3, 'A56EAB'),
(24, 1, 1, 2, 'What starts with letter B?', '09927970812.png', 0, 2, 'A56EAB'),
(25, 19, 1, 3, 'What is the 1st letter of the Alphabet?', '101031822215.png', 0, 3, 'A56EAB'),
(27, 1, 1, 3, 'What is the 2nd letter of the Alphabet?', '09927970812.png', 0, 3, 'AB4368'),
(29, 1, 1, 3, 'What is the 4th letter of the Alphabet?', '09927970803.png', 0, 3, 'B55CC2'),
(30, 1, 1, 3, 'What is the 3rd letter of the Alphabet?', '09927970813.png', 0, 3, 'A175AB'),
(31, 1, 1, 3, 'What is the 6th letter of the Alphabet?', '09927970805.png', 0, 3, '9D62AB'),
(32, 1, 1, 3, 'What is the 7th letter of the Alphabet?', '09927910007.png', 0, 3, '9077AB'),
(33, 1, 1, 3, 'What is the 8th letter of the Alphabet?', '09927910008.png', 0, 3, '866CAB'),
(34, 1, 1, 1, 'What starts with letter G?', '09927910007.png', 0, 1, 'A56EAB');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answer`
--

CREATE TABLE `quiz_answer` (
  `id` int(120) NOT NULL,
  `quiz_id` int(120) NOT NULL,
  `answer` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_answer`
--

INSERT INTO `quiz_answer` (`id`, `quiz_id`, `answer`) VALUES
(6, 21, '0'),
(7, 22, '0'),
(9, 24, '0');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_image`
--

CREATE TABLE `quiz_image` (
  `id` int(120) NOT NULL,
  `quiz_id` int(120) NOT NULL,
  `img_id` int(120) NOT NULL,
  `is_correct` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_image`
--

INSERT INTO `quiz_image` (`id`, `quiz_id`, `img_id`, `is_correct`) VALUES
(1, 1, 4, 1),
(2, 1, 12, 0),
(3, 1, 38, 0),
(4, 1, 42, 0),
(5, 2, 479, 1),
(6, 2, 463, 0),
(7, 2, 477, 0),
(8, 2, 474, 0),
(9, 3, 477, 1),
(10, 3, 454, 0),
(11, 3, 455, 0),
(12, 3, 456, 0),
(13, 4, 478, 1),
(14, 4, 461, 0),
(15, 4, 462, 0),
(16, 4, 463, 0),
(17, 5, 469, 1),
(18, 5, 470, 0),
(19, 5, 471, 0),
(20, 5, 472, 0),
(21, 6, 470, 1),
(22, 6, 471, 0),
(23, 6, 472, 0),
(24, 6, 474, 0),
(25, 7, 258, 1),
(26, 7, 540, 0),
(27, 7, 538, 0),
(28, 7, 535, 0),
(41, 14, 454, 0),
(42, 14, 474, 1),
(43, 14, 545, 0),
(44, 14, 548, 0),
(53, 17, 255, 1),
(54, 17, 330, 0),
(55, 17, 312, 0),
(56, 17, 318, 0),
(57, 18, 294, 0),
(58, 18, 354, 0),
(59, 18, 283, 0),
(60, 18, 266, 1),
(69, 21, 329, 0),
(70, 21, 343, 0),
(71, 21, 310, 1),
(72, 21, 353, 0),
(73, 22, 288, 0),
(74, 22, 275, 0),
(75, 22, 341, 0),
(76, 22, 271, 1),
(77, 23, 277, 1),
(78, 23, 271, 0),
(79, 23, 253, 0),
(80, 23, 284, 0),
(81, 24, 263, 1),
(82, 24, 355, 0),
(83, 24, 302, 0),
(84, 24, 0, 0),
(85, 25, 479, 1),
(86, 25, 545, 0),
(87, 25, 475, 0),
(88, 25, 0, 0),
(89, 26, 548, 1),
(90, 26, 545, 0),
(91, 26, 468, 0),
(92, 26, 470, 0),
(93, 27, 477, 1),
(94, 27, 548, 0),
(95, 27, 468, 0),
(96, 27, 467, 0),
(97, 28, 469, 1),
(98, 28, 470, 0),
(99, 28, 471, 0),
(100, 28, 475, 0),
(101, 29, 469, 1),
(102, 29, 466, 0),
(103, 29, 455, 0),
(104, 29, 463, 0),
(105, 30, 478, 1),
(106, 30, 461, 0),
(107, 30, 476, 0),
(108, 30, 0, 0),
(109, 31, 471, 1),
(110, 31, 475, 0),
(111, 31, 476, 0),
(112, 31, 467, 0),
(113, 32, 434, 1),
(114, 32, 453, 0),
(115, 32, 431, 0),
(116, 32, 0, 0),
(117, 33, 435, 1),
(118, 33, 428, 0),
(119, 33, 439, 0),
(120, 33, 432, 0),
(121, 34, 434, 1),
(122, 34, 442, 0),
(123, 34, 446, 0),
(124, 34, 453, 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `score` double(8,2) NOT NULL,
  `total_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `average_speed` double(8,2) NOT NULL,
  `accuracy` double(8,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `score`, `total_time`, `average_speed`, `accuracy`, `user_id`, `attempts`, `quiz_id`, `category_id`, `level_id`, `remarks`) VALUES
(1, 3.00, '28.095', 5.62, 60.00, 15, 2, 0, 1, 1, 'B'),
(2, 4.00, '14.194', 2.84, 80.00, 15, 1, 0, 1, 1, 'A'),
(3, 3.00, '14.338', 2.87, 60.00, 15, 1, 0, 1, 1, 'B'),
(4, 5.00, '51.537', 10.31, 100.00, 17, 0, 0, 1, 1, 'A'),
(5, 4.00, '65.287', 13.06, 80.00, 17, 1, 0, 1, 1, 'A'),
(6, 3.00, '62.106', 12.42, 60.00, 18, 5, 0, 1, 1, 'B'),
(7, 2.00, '46.196', 9.24, 40.00, 1, 9, 0, 1, 1, 'C'),
(8, 1.00, '2.66', 0.53, 20.00, 1, 0, 0, 1, 3, 'C'),
(9, 1.00, '2.663', 0.53, 20.00, 1, 0, 0, 1, 1, 'C'),
(10, 5.00, '27.093', 5.42, 100.00, 1, 0, 0, 1, 2, 'A'),
(11, 2.00, '21.904', 4.38, 40.00, 19, 8, 0, 1, 1, 'C'),
(12, 3.00, '24.391', 4.88, 60.00, 20, 4, 0, 1, 2, 'B'),
(13, 2.00, '23.174', 4.63, 40.00, 19, 4, 0, 1, 2, 'C'),
(14, 2.00, '16.983', 3.40, 40.00, 19, 2, 0, 1, 2, 'C'),
(15, 4.00, '93.688', 18.74, 80.00, 19, 2, 0, 1, 1, 'A'),
(16, 9.00, '3339.318', 667.86, 180.00, 19, 2, 0, 1, 2, 'A'),
(17, 4.00, '24.169', 4.83, 80.00, 19, 2, 0, 1, 3, 'A'),
(18, 3.00, '1299.947', 259.99, 60.00, 1, 3, 0, 1, 1, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1539231091, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(13, '::1', 'dianne@gmail.com', '$2y$08$BINXmDhuMwaibq8wA2CHFuzRv1ECvAoJxDJ1foBc91iIh2QMAjM1u', NULL, 'dianne@gmail.com', NULL, NULL, NULL, NULL, 1539040893, 1539040911, 1, 'dianne', 'calamba', 'uic', '09308621072'),
(14, '::1', 'a@gmail.com', '$2y$08$E.1WueWcTAppz68FkbBtH.J8gBuKZ1cnPQSW0FLrugEOrD5t/bJX2', NULL, 'a@gmail.com', NULL, NULL, NULL, NULL, 1539042085, NULL, 1, 'a', 'ae', 'uic', '12345678'),
(15, '::1', 'jerichojamesranara@gmail.com', '$2y$08$5SefV8dyXL/JVrnXQ.XWS.VpVjGm21Mbk4kF1LBEOhf1lW4pxC.G2', NULL, 'jerichojamesranara@gmail.com', NULL, NULL, NULL, NULL, 1539087639, 1539087656, 1, 'Jericho James', 'Ranara', 'University of the Immaculate Concepcion', '09288432437'),
(16, '::1', 'chippyandmia@gmail.com', '$2y$08$MElXukChPLMe55sEgjWVwe8YvOfq7WHL2rvJKWVWFVYWAaiwRBoCO', NULL, 'chippyandmia@gmail.com', NULL, NULL, NULL, NULL, 1539087947, 1539087959, 1, 'Jericho', 'Ranara', 'UIC', '09288432437'),
(17, '::1', 'teacherjoysagun@yahoo.com', '$2y$08$cnMuzxeqIaWA1ZQZejUA5eaN1vnF8UAQ6DDyMzx1vS.1UfJYWHyQy', NULL, 'teacherjoysagun@yahoo.com', NULL, NULL, NULL, NULL, 1539139964, 1539139985, 1, 'Arianne  Joy', 'Sagun', 'Little Kaye\'s', '09057743789'),
(18, '::1', 'lorymaecaser@gmail.com', '$2y$08$JTjp5nmFV.0qchszBcBa1udK4qzYKNXBV9XyzpTIYWFG05Eq45cQ2', NULL, 'lorymaecaser@gmail.com', NULL, NULL, NULL, NULL, 1539141499, 1539141526, 1, 'Lory Mae', 'Caser', 'Little kaye\'s', '09174344416'),
(19, '::1', 'jp@gmail.com', '$2y$08$YBR5BBXALvh5yp.Hh.5WpuENQNQYpwzJlFwSOCtlEePRmfgKYq8z2', NULL, 'jp@gmail.com', NULL, NULL, NULL, NULL, 1539224200, 1539224794, 1, 'John Paul', 'Espejo', 'UIC', ''),
(20, '::1', 'beat@gmail.com', '$2y$08$pZfVZNZre9OGa1hFpTadJege.wX98UHyVfQNtk7VYbZx1FbT00bi2', NULL, 'beat@gmail.com', NULL, NULL, NULL, NULL, 1539224390, 1539224812, 1, 'bea', 'tengson', 'uic', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(10, 1, 1),
(20, 13, 2),
(21, 14, 2),
(22, 15, 1),
(23, 16, 2),
(24, 17, 1),
(25, 18, 1),
(26, 19, 2),
(27, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vid_name` varchar(120) NOT NULL,
  `original_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `vid_name`, `original_name`) VALUES
(28, 1, '262633421250.mp4', 'videoplayback (1).mp4'),
(29, 1, '262633451652.mp4', 'cake.mp4'),
(30, 1, '262633542950.mp4', 'hahhaha.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_example`
--
ALTER TABLE `lesson_example`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_image`
--
ALTER TABLE `lesson_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_manager`
--
ALTER TABLE `lesson_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_image`
--
ALTER TABLE `quiz_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lesson_example`
--
ALTER TABLE `lesson_example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `lesson_image`
--
ALTER TABLE `lesson_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lesson_manager`
--
ALTER TABLE `lesson_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_image`
--
ALTER TABLE `quiz_image`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
