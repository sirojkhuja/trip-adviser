-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2021 at 09:41 AM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_answers`
--

CREATE TABLE `tb_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_value_id` int(11) NOT NULL,
  `next_question_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_answers`
--

INSERT INTO `tb_answers` (`id`, `question_id`, `answer_title`, `param_value_id`, `next_question_id`, `active`, `created_at`) VALUES
(1, 1, 'Для бизнеса', 1, 2, 1, '2021-10-31 09:59:24'),
(2, 1, 'Для лечения', 2, 2, 1, '2021-10-31 09:59:24'),
(3, 1, 'Религиозное путешествие', 3, 2, 1, '2021-10-31 09:59:24'),
(4, 1, 'Для учебы', 4, 2, 1, '2021-10-31 09:59:24'),
(5, 1, 'Для спорта', 5, 2, 1, '2021-10-31 09:59:24'),
(6, 1, 'Чтобы увидеть новые культуры', 6, 2, 1, '2021-10-31 09:59:24'),
(7, 1, 'Для отдыха', 7, 2, 1, '2021-11-21 18:15:36'),
(8, 2, 'Зима', 8, 3, 1, '2021-10-31 09:59:24'),
(9, 2, 'Весна', 9, 3, 1, '2021-10-31 09:59:24'),
(10, 2, 'Лето', 10, 3, 1, '2021-10-31 09:59:24'),
(11, 2, 'Осень', 11, 3, 1, '2021-10-31 09:59:24'),
(12, 3, 'Природа', 12, 4, 1, '2021-10-31 09:59:24'),
(13, 3, 'Исторические места', 13, 8, 1, '2021-10-31 09:59:24'),
(14, 3, 'Современные места', 14, 9, 1, '2021-10-31 09:59:24'),
(15, 4, 'Леса', 15, 10, 1, '2021-10-31 09:59:24'),
(16, 4, 'Водные места', 16, 5, 1, '2021-10-31 09:59:24'),
(17, 4, 'Горы', 17, 6, 1, '2021-10-31 09:59:24'),
(18, 4, 'Пустыня', 18, 10, 1, '2021-10-31 09:59:24'),
(19, 5, 'Океан', 19, 10, 1, '2021-10-31 09:59:24'),
(20, 5, 'Река', 20, 10, 1, '2021-10-31 09:59:24'),
(21, 5, 'Водопад', 21, 10, 1, '2021-10-31 09:59:24'),
(22, 5, 'Озеро', 22, 10, 1, '2021-10-31 09:59:24'),
(23, 5, 'Море', 23, 10, 1, '2021-10-31 09:59:24'),
(24, 6, 'Заниматься спортом', 24, 7, 1, '2021-10-31 09:59:24'),
(25, 6, 'Наслаждаться свежим воздухом', 25, 10, 1, '2021-10-31 09:59:24'),
(26, 6, 'Увидеть горную природу', 26, 10, 1, '2021-10-31 09:59:24'),
(27, 7, 'Альпинизм', 27, 10, 1, '2021-10-31 09:59:24'),
(28, 7, 'Горные лыжи', 28, 10, 1, '2021-10-31 09:59:24'),
(29, 7, 'Поход', 29, 10, 1, '2021-10-31 09:59:24'),
(30, 8, 'Исторические дворцы', 30, 10, 1, '2021-10-31 09:59:24'),
(31, 8, 'Музеи', 31, 10, 1, '2021-10-31 09:59:24'),
(32, 8, 'Исторические здания', 32, 10, 1, '2021-10-31 09:59:24'),
(33, 9, 'Небоскребы', 33, 10, 1, '2021-10-31 09:59:24'),
(34, 9, 'Необычно построенные здания', 34, 10, 1, '2021-10-31 09:59:24'),
(35, 9, 'Другие типы построек', 35, 10, 1, '2021-10-31 09:59:24'),
(36, 10, 'Дешевле', 36, 11, 1, '2021-10-31 09:59:24'),
(37, 10, 'Дорого, но хорошего качества', 37, 11, 1, '2021-10-31 09:59:24'),
(38, 10, 'Это не имеет значения', 38, 11, 1, '2021-10-31 09:59:24'),
(39, 11, 'Безопасность', 39, 0, 1, '2021-10-31 09:59:24'),
(40, 11, 'Цена', 40, 0, 1, '2021-10-31 09:59:24'),
(41, 11, 'Туристические достопримечательности', 41, 0, 1, '2021-10-31 09:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_attributes`
--

CREATE TABLE `tb_attributes` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_attributes`
--

INSERT INTO `tb_attributes` (`id`, `attribute_name`, `description`, `attribute_value`) VALUES
(1, 'climate', NULL, 'tropical'),
(2, 'climate', NULL, 'dry'),
(3, 'climate', NULL, 'moderate'),
(4, 'climate', NULL, 'continental'),
(5, 'climate', NULL, 'polar'),
(6, 'nature', NULL, 'forest'),
(7, 'nature', NULL, 'waterfall'),
(8, 'nature', NULL, 'beach'),
(9, 'nature', NULL, 'river'),
(10, 'nature', NULL, 'desert'),
(11, 'nature', NULL, 'jungle'),
(12, 'is_modern', NULL, 'yes'),
(13, 'is_modern', NULL, 'no'),
(14, 'is_historical', NULL, 'yes'),
(15, 'is_historical', NULL, 'no'),
(16, 'has_amusement_places', NULL, 'yes'),
(17, 'has_amusement_places', NULL, 'no'),
(18, 'is_english_common', NULL, 'yes'),
(19, 'is_english_common', NULL, 'no'),
(20, 'hotel_quality', NULL, 'excellent'),
(21, 'hotel_quality', NULL, 'moderate'),
(22, 'hotel_quality', NULL, 'poor'),
(23, 'cost_of_living', NULL, 'expensive'),
(24, 'cost_of_living', NULL, 'moderate'),
(25, 'cost_of_living', NULL, 'low');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cities`
--

CREATE TABLE `tb_cities` (
  `id` int(11) NOT NULL,
  `city_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `climate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_modern` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_historical` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_amusement_places` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_english_common` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_quality` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_of_living` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cities`
--

INSERT INTO `tb_cities` (`id`, `city_title`, `climate`, `nature`, `is_modern`, `is_historical`, `has_amusement_places`, `is_english_common`, `hotel_quality`, `cost_of_living`, `active`, `created_at`) VALUES
(1, 'New York', 'moderate', 'beach', 'yes', 'no', 'yes', 'yes', 'excellent', 'expensive', 1, '2021-12-13 07:56:44'),
(2, 'Tashkent', 'continental', 'river', 'yes', 'yes', 'yes', 'no', 'moderate', 'moderate', 1, '2021-12-13 07:56:44'),
(3, 'Moscow', 'polar', 'forest', 'yes', 'no', 'yes', 'no', 'excellent', 'moderate', 1, '2021-12-13 07:56:44'),
(4, 'Mumbai', 'tropical', 'jungle', 'yes', 'yes', 'no', 'yes', 'moderate', 'low', 1, '2021-12-13 07:56:44'),
(5, 'Kyoto', 'moderate', 'beach', 'yes', 'no', 'yes', 'no', 'excellent', 'expensive', 1, '2021-12-13 07:56:44'),
(6, 'Dubrovnik', 'polar', 'waterfall', 'yes', 'no', 'yes', 'no', 'moderate', 'moderate', 1, '2021-12-13 07:56:44'),
(7, 'Prague', 'moderate', 'forest', 'no', 'yes', 'yes', 'no', 'poor', 'low', 1, '2021-12-13 07:56:44'),
(8, 'Istanbul', 'continental', 'beach', 'yes', 'yes', 'no', 'no', 'moderate', 'moderate', 1, '2021-12-13 07:56:44'),
(9, 'Kuala Lumpur', 'tropical', 'waterfall', 'yes', 'yes', 'yes', 'yes', 'poor', 'moderate', 1, '2021-12-13 07:56:44'),
(10, 'Rome', 'continental', 'beach', 'yes', 'yes', 'yes', 'no', 'excellent', 'expensive', 1, '2021-12-13 07:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_params`
--

CREATE TABLE `tb_params` (
  `id` int(11) NOT NULL,
  `param_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_params`
--

INSERT INTO `tb_params` (`id`, `param_name`) VALUES
(1, 'tour_goal'),
(2, 'season'),
(3, 'to_see'),
(4, 'nature_type'),
(5, 'water_type'),
(6, 'mountain_activity'),
(7, 'sport_type'),
(8, 'building_type'),
(9, 'modern_building_types'),
(10, 'life_level'),
(11, 'priority');

-- --------------------------------------------------------

--
-- Table structure for table `tb_params_old`
--

CREATE TABLE `tb_params_old` (
  `id` int(11) NOT NULL,
  `tour_goal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `season` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_see` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `water_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_mountains` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sport_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modern_buildings` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_of_living` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `essential_characteristic` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_params_old`
--

INSERT INTO `tb_params_old` (`id`, `tour_goal`, `season`, `to_see`, `nature_type`, `water_type`, `in_mountains`, `sport_type`, `building_type`, `modern_buildings`, `cost_of_living`, `essential_characteristic`) VALUES
(1, 'Для бизнеса', 'Зима', 'Природа', 'Леса', 'Океан', 'Заниматься спортом', 'Альпинизм', 'Исторические дворцы', 'Небоскребы', 'Дешевле', 'Безопасность'),
(2, 'Для лечения', 'Весна', 'Исторические места', 'Водные места', 'Река', 'Наслаждаться свежим воздухом', 'Горные лыжи', 'Музеи', 'Необычно построенные здания', 'Дорого, но хорошего качества', 'Цена'),
(3, 'Религиозное путешествие', 'Лето', 'Современные места', 'Горы', 'Водопад', 'Увидеть горную природу', 'Поход', 'Исторические здания', 'Другие типы построек', 'Это не имеет значения', 'Туристические достопримечательности'),
(4, 'Для учебы', 'Осень', '', 'Пустыня', 'Озеро', '', '', '', '', '', ''),
(5, 'Для спорта', 'Это не имеет значения', '', '', 'Море', '', '', '', '', '', ''),
(6, 'Чтобы увидеть новые культуры', '', '', '', '', '', '', '', '', '', ''),
(7, 'Для отдыха', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_param_values`
--

CREATE TABLE `tb_param_values` (
  `id` int(11) NOT NULL,
  `param_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_param_values`
--

INSERT INTO `tb_param_values` (`id`, `param_value`, `description`, `param_id`) VALUES
(1, 'business', '', 1),
(2, 'treatment', '', 1),
(3, 'religious', '', 1),
(4, 'study', '', 1),
(5, 'sport', '', 1),
(6, 'new culture', '', 1),
(7, 'leasure', '', 1),
(8, 'winter', '', 2),
(9, 'spring', '', 2),
(10, 'summer', '', 2),
(11, 'autumn', '', 2),
(12, 'nature', '', 3),
(13, 'historical places', '', 3),
(14, 'modern places', '', 3),
(15, 'forests', '', 4),
(16, 'water places', '', 4),
(17, 'mountains', '', 4),
(18, 'deserts', '', 4),
(19, 'oceans', '', 5),
(20, 'rivers', '', 5),
(21, 'waterfalls', '', 5),
(22, 'lakes', '', 5),
(23, 'sea', '', 5),
(24, 'doing sports', '', 6),
(25, 'enjoy fresh air', '', 6),
(26, 'enjoy mountain nature', '', 6),
(27, 'climbing', '', 7),
(28, 'skiing', '', 7),
(29, 'walking', '', 7),
(30, 'historical palaces', '', 8),
(31, 'museums', '', 8),
(32, 'historical places', '', 8),
(33, 'skyscrapers', '', 9),
(34, 'unusual buildings', '', 9),
(35, 'other types', '', 9),
(36, 'cheap', '', 10),
(37, 'expensive', '', 10),
(38, 'does not matter', '', 10),
(39, 'safety', '', 11),
(40, 'prices', '', 11),
(41, 'touristic attractions', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_questions`
--

CREATE TABLE `tb_questions` (
  `id` int(11) NOT NULL,
  `question_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_questions`
--

INSERT INTO `tb_questions` (`id`, `question_title`, `param_id`, `active`, `created_at`) VALUES
(1, 'С какой целью вы хотите путешествовать?', 1, 1, '2021-10-31 13:54:48'),
(2, 'В какое время года вы хотите быть в пункте назначения?', 2, 1, '2021-10-31 13:54:48'),
(3, 'Что вы хотите там увидеть?', 3, 1, '2021-10-31 13:54:48'),
(4, 'Какую природу вы хотите увидеть?', 4, 1, '2021-10-31 13:54:48'),
(5, 'Каким водным местом вы хотите быть?', 5, 1, '2021-10-31 13:54:48'),
(6, 'Что вы хотите делать в горах?', 6, 1, '2021-10-31 13:54:48'),
(7, 'Каким видом спорта вы бы хотели заниматься в горах?', 7, 1, '2021-10-31 13:54:48'),
(8, 'Какие исторические места бы вы хотели увидеть?', 8, 1, '2021-10-31 13:54:48'),
(9, 'Какие виды современного архитектурного дизайна вы хотите видеть?', 9, 1, '2021-10-31 13:54:48'),
(10, 'На каком уровне жизни вы хотели бы жить в городе, в который едете?', 10, 1, '2021-10-31 13:54:48'),
(11, 'Что должно быть приоритетом в городе, в который вы путешествуете?', 11, 1, '2021-10-31 13:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rules`
--

CREATE TABLE `tb_rules` (
  `param_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_1_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_2_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_3_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_rules`
--

INSERT INTO `tb_rules` (`param_1`, `param_1_value`, `operation_1`, `param_2`, `param_2_value`, `operation_2`, `param_3`, `param_3_value`, `attribute`, `attribute_value`) VALUES
('to_see', 'nature', 'AND', 'nature_type', 'forests', '', '', '', 'nature', 'jungle'),
('to_see', 'nature', 'AND', 'nature_type', 'forests', '', '', '', 'nature', 'forest'),
('to_see', 'nature', 'AND', 'nature_type', 'water places', '', '', '', 'nature', 'river'),
('to_see', 'nature', 'AND', 'nature_type', 'water places', '', '', '', 'nature', 'waterfall'),
('to_see', 'nature', 'AND', 'nature_type', 'water places', '', '', '', 'nature', 'beach'),
('to_see', 'nature', 'AND', 'nature_type', 'deserts', '', '', '', 'nature', 'desert'),
('to_see', 'historical places', '', '', '', '', '', '', 'is_historical', 'yes'),
('to_see', 'historical places', '', '', '', '', '', '', 'is_modern', 'no'),
('to_see', 'modern places', '', '', '', '', '', '', 'is_historical', 'no'),
('to_see', 'modern places', '', '', '', '', '', '', 'is_modern', 'yes'),
('priority', 'prices', '', '', '', '', '', '', 'cost_of_living', 'moderate'),
('priority', 'prices', '', '', '', '', '', '', 'cost_of_living', 'low'),
('priority', 'touristic attractions', '', '', '', '', '', '', 'cost_of_living', 'expensive'),
('priority', 'touristic attractions', '', '', '', '', '', '', 'cost_of_living', 'moderate'),
('priority', 'touristic attractions', '', '', '', '', '', '', 'cost_of_living', 'low');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_choices`
--

CREATE TABLE `tb_user_choices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user_choices`
--

INSERT INTO `tb_user_choices` (`id`, `user_id`, `question_id`, `answer_id`, `created_at`) VALUES
(1, 1, 1, 1, '2021-11-22 16:18:34'),
(2, 1, 2, 3, '2021-11-22 16:18:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_answers`
--
ALTER TABLE `tb_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_attributes`
--
ALTER TABLE `tb_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cities`
--
ALTER TABLE `tb_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_params`
--
ALTER TABLE `tb_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_params_old`
--
ALTER TABLE `tb_params_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_param_values`
--
ALTER TABLE `tb_param_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_questions`
--
ALTER TABLE `tb_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_choices`
--
ALTER TABLE `tb_user_choices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_answers`
--
ALTER TABLE `tb_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_attributes`
--
ALTER TABLE `tb_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_cities`
--
ALTER TABLE `tb_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_params`
--
ALTER TABLE `tb_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_params_old`
--
ALTER TABLE `tb_params_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_param_values`
--
ALTER TABLE `tb_param_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_questions`
--
ALTER TABLE `tb_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user_choices`
--
ALTER TABLE `tb_user_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
