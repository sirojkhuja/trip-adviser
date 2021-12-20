-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2021 at 02:19 PM
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
  `param_id` int(11) NOT NULL,
  `next_question_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_answers`
--

INSERT INTO `tb_answers` (`id`, `question_id`, `answer_title`, `param_id`, `next_question_id`, `active`, `created_at`) VALUES
(1, 1, 'Для бизнеса', 0, 2, 1, '2021-10-31 14:59:24'),
(2, 1, 'Для лечения', 0, 2, 1, '2021-10-31 14:59:24'),
(3, 1, 'Религиозное путешествие', 0, 2, 1, '2021-10-31 14:59:24'),
(4, 1, 'Для учебы', 0, 2, 1, '2021-10-31 14:59:24'),
(5, 1, 'Для спорта', 0, 2, 1, '2021-10-31 14:59:24'),
(6, 1, 'Чтобы увидеть новые культуры', 0, 2, 1, '2021-10-31 14:59:24'),
(7, 1, 'Для отдыха', 0, 2, 1, '2021-11-21 23:15:36'),
(8, 2, 'Зима', 0, 3, 1, '2021-10-31 14:59:24'),
(9, 2, 'Весна', 0, 3, 1, '2021-10-31 14:59:24'),
(10, 2, 'Лето', 0, 3, 1, '2021-10-31 14:59:24'),
(11, 2, 'Осень', 0, 3, 1, '2021-10-31 14:59:24'),
(12, 2, 'Это не имеет значения', 0, 3, 1, '2021-10-31 14:59:24'),
(13, 3, 'Природа', 0, 4, 1, '2021-10-31 14:59:24'),
(14, 3, 'Исторические места', 0, 8, 1, '2021-10-31 14:59:24'),
(15, 3, 'Современные места', 0, 9, 1, '2021-10-31 14:59:24'),
(16, 4, 'Леса', 0, 10, 1, '2021-10-31 14:59:24'),
(17, 4, 'Водные места', 0, 5, 1, '2021-10-31 14:59:24'),
(18, 4, 'Горы', 0, 6, 1, '2021-10-31 14:59:24'),
(19, 4, 'Пустыня', 0, 10, 1, '2021-10-31 14:59:24'),
(20, 5, 'Океан', 0, 10, 1, '2021-10-31 14:59:24'),
(21, 5, 'Река', 0, 10, 1, '2021-10-31 14:59:24'),
(22, 5, 'Водопад', 0, 10, 1, '2021-10-31 14:59:24'),
(23, 5, 'Озеро', 0, 10, 1, '2021-10-31 14:59:24'),
(24, 5, 'Море', 0, 10, 1, '2021-10-31 14:59:24'),
(25, 6, 'Заниматься спортом', 0, 7, 1, '2021-10-31 14:59:24'),
(26, 6, 'Наслаждаться свежим воздухом', 0, 10, 1, '2021-10-31 14:59:24'),
(27, 6, 'Увидеть горную природу', 0, 10, 1, '2021-10-31 14:59:24'),
(28, 7, 'Альпинизм', 0, 10, 1, '2021-10-31 14:59:24'),
(29, 7, 'Горные лыжи', 0, 10, 1, '2021-10-31 14:59:24'),
(30, 7, 'Поход', 0, 10, 1, '2021-10-31 14:59:24'),
(31, 8, 'Исторические дворцы', 0, 10, 1, '2021-10-31 14:59:24'),
(32, 8, 'Музеи', 0, 10, 1, '2021-10-31 14:59:24'),
(33, 8, 'Исторические здания', 0, 10, 1, '2021-10-31 14:59:24'),
(34, 9, 'Небоскребы', 0, 10, 1, '2021-10-31 14:59:24'),
(35, 9, 'Необычно построенные здания', 0, 10, 1, '2021-10-31 14:59:24'),
(36, 9, 'Другие типы построек', 0, 10, 1, '2021-10-31 14:59:24'),
(37, 10, 'Дешевле', 0, 11, 1, '2021-10-31 14:59:24'),
(38, 10, 'Дорого, но хорошего качества', 0, 11, 1, '2021-10-31 14:59:24'),
(39, 10, 'Это не имеет значения', 0, 11, 1, '2021-10-31 14:59:24'),
(40, 11, 'Безопасность', 0, 0, 1, '2021-10-31 14:59:24'),
(41, 11, 'Цена', 0, 0, 1, '2021-10-31 14:59:24'),
(42, 11, 'Туристические достопримечательности', 0, 0, 1, '2021-10-31 14:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cities`
--

CREATE TABLE `tb_cities` (
  `id` int(11) NOT NULL,
  `city_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_5` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_6` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_7` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_8` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- AUTO_INCREMENT for table `tb_cities`
--
ALTER TABLE `tb_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


INSERT INTO `tb_cities` (`city_title`, `attr_1`, `attr_2`, `attr_3`, `attr_4`, `attr_5`, `attr_6`, `attr_7`, `attr_8`) VALUES
('New York', 'moderate', 'beach', 'yes', 'no', 'yes', 'yes', 'excellent', 'expensive'),
('Tashkent', 'continental', 'river', 'yes', 'yes', 'yes', 'no', 'moderate', 'moderate'),
('Moscow', 'polar', 'forest', 'yes', 'no', 'yes', 'no', 'excellent', 'moderate'),
('Mumbai', 'tropical', 'jungle', 'yes', 'yes', 'no', 'yes', 'moderate', 'low'),
('Kyoto', 'moderate', 'beach', 'yes', 'no', 'yes', 'no', 'excellent', 'expensive'),
('Dubrovnik', 'polar', 'waterfall', 'yes', 'no', 'yes', 'no', 'moderate', 'moderate'),
('Prague', 'moderate', 'forest', 'no', 'yes', 'yes', 'no', 'poor', 'low'),
('Istanbul', 'continental', 'beach', 'yes', 'yes', 'no', 'no', 'moderate', 'moderate'),
('Kuala Lumpur', 'tropical', 'waterfall', 'yes', 'yes', 'yes', 'yes', 'poor', 'moderate'),
('Rome', 'continental', 'beach', 'yes', 'yes', 'yes', 'no', 'excellent', 'expensive');


-- --------------------------------------------------------

--
-- Table structure for table `tb_params`
--

CREATE TABLE `tb_params` (
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
-- Dumping data for table `tb_params`
--

INSERT INTO `tb_params` (`id`, `tour_goal`, `season`, `to_see`, `nature_type`, `water_type`, `in_mountains`, `sport_type`, `building_type`, `modern_buildings`, `cost_of_living`, `essential_characteristic`) VALUES
(1, 'Для бизнеса', 'Зима', 'Природа', 'Леса', 'Океан', 'Заниматься спортом', 'Альпинизм', 'Исторические дворцы', 'Небоскребы', 'Дешевле', 'Безопасность'),
(2, 'Для лечения', 'Весна', 'Исторические места', 'Водные места', 'Река', 'Наслаждаться свежим воздухом', 'Горные лыжи', 'Музеи', 'Необычно построенные здания', 'Дорого, но хорошего качества', 'Цена'),
(3, 'Религиозное путешествие', 'Лето', 'Современные места', 'Горы', 'Водопад', 'Увидеть горную природу', 'Поход', 'Исторические здания', 'Другие типы построек', 'Это не имеет значения', 'Туристические достопримечательности'),
(4, 'Для учебы', 'Осень', '', 'Пустыня', 'Озеро', '', '', '', '', '', ''),
(5, 'Для спорта', 'Это не имеет значения', '', '', 'Море', '', '', '', '', '', ''),
(6, 'Чтобы увидеть новые культуры', '', '', '', '', '', '', '', '', '', ''),
(7, 'Для отдыха', '', '', '', '', '', '', '', '', '', '');

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
(1, 'С какой целью вы хотите путешествовать?', 0, 1, '2021-10-31 13:54:48'),
(2, 'В какое время года вы хотите быть в пункте назначения?', 0, 1, '2021-10-31 13:54:48'),
(3, 'Что вы хотите там увидеть?', 0, 1, '2021-10-31 13:54:48'),
(4, 'Какую природу вы хотите увидеть?', 0, 1, '2021-10-31 13:54:48'),
(5, 'Каким водным местом вы хотите быть?', 0, 1, '2021-10-31 13:54:48'),
(6, 'Что вы хотите делать в горах?', 0, 1, '2021-10-31 13:54:48'),
(7, 'Каким видом спорта вы бы хотели заниматься в горах?', 0, 1, '2021-10-31 13:54:48'),
(8, 'Какие исторические места бы вы хотели увидеть?', 0, 1, '2021-10-31 13:54:48'),
(9, 'Какие виды современного архитектурного дизайна вы хотите видеть?', 0, 1, '2021-10-31 13:54:48'),
(10, 'На каком уровне жизни вы хотели бы жить в городе, в который едете?', 0, 1, '2021-10-31 13:54:48'),
(11, 'Что должно быть приоритетом в городе, в который вы путешествуете?', 0, 1, '2021-10-31 13:54:48');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_params`
--
ALTER TABLE `tb_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
