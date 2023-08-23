-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 03:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `movie_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booked_seats` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(250) NOT NULL,
  `show_time` varchar(250) NOT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_cancel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booked_seats`, `user_id`, `movie_name`, `show_time`, `booking_time`, `is_cancel`) VALUES
(8, 'a:2:{i:0;s:2:\"B2\";i:1;s:2:\"B4\";}', 2, 'PK Full Movie', '03:30 PM', '2023-01-25 16:52:41', 1),
(13, 'a:1:{i:0;s:2:\"F2\";}', 2, 'Runway 34', '10:30 AM', '2023-01-25 16:52:46', 1),
(14, 'a:2:{i:0;s:2:\"F9\";i:1;s:3:\"F10\";}', 2, 'Projek: High Council', '10:00 PM', '2023-01-25 16:52:20', 0),
(15, 'a:1:{i:0;s:3:\"D10\";}', 6, 'Projek: High Council', '10:00 PM', '2023-01-26 06:02:26', 1),
(16, 'a:2:{i:0;s:3:\"F11\";i:1;s:3:\"F12\";}', 6, 'Projek: High Council', '10:00 PM', '2023-01-26 06:06:29', 0),
(17, 'N;', 2, 'Projek: High Council', '10:00 PM', '2023-01-26 06:07:57', 0),
(18, 'a:1:{i:0;s:2:\"F6\";}', 6, 'Black Adam', '7:30 PM', '2023-01-26 17:39:37', 0),
(19, 'a:1:{i:0;s:2:\"A4\";}', 7, 'Cruella', '10:30 AM', '2023-08-23 12:55:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `link`, `logo`, `time`) VALUES
(1, 'Black Adam', 'In ancient Kahndaq, Teth Adam was bestowed the almighty powers of the gods. After using these powers for vengeance, he was imprisoned, becoming Black Adam. Nearly 5,000 years have passed, and Black Adam has gone from man to myth to legend. Now free, his unique form of justice, born out of rage, is challenged by modern-day heroes who form the Justice Society: Hawkman, Dr. Fate, Atom Smasher and Cyclone.', 'https://www.youtube.com/watch?v=X0tOpBuYasI', 'Movie1.jpg', '7:30 PM'),
(2, 'Cruella', 'Estella is a young and clever grifter who\'s determined to make a name for herself in the fashion world. She soon meets a pair of thieves who appreciate her appetite for mischief, and together they build a life for themselves on the streets of London. However, when Estella befriends fashion legend Baroness von Hellman, she embraces her wicked side to become the raucous and revenge-bent Cruella.', 'https://www.youtube.com/watch?v=gmRKv7n2If8', 'Movie2.jpg', '10:30 AM'),
(3, 'Projek: High Council', 'This drama tells the story of gangsterism and bullying in a boarding school', 'https://www.youtube.com/watch?v=facWOae0GGg', 'Movie3.jpg', '10:00 PM'),
(4, 'Wednesday', 'A sleuthing, supernaturally infused mystery charting Wednesday Addams\' years as a student at Nevermore Academy. Wednesday\'s attempts to master her emerging psychic ability, thwart a monstrous killing spree that has terrorized the local town, and solve the supernatural mystery that embroiled her parents 25 years ago - all while navigating her new and very tangled relationships at Nevermore', 'https://www.youtube.com/watch?v=Di310WS8zLk', 'Movie4.jpg', '12:30 PM'),
(5, 'If I Stay', 'Mia Hall (Chloë Grace Moretz), a talented young cellist, thought the most difficult decision she would ever have to make would be whether to pursue her musical dreams at prestigious Juilliard or follow her heart to be with the love of her life, Adam (Jamie Blackley), a rock singer/guitarist. However, a car wreck changes everything in an instant, and now Mia\'s life hangs in the balance. Suspended between life and death, Mia faces a choice that will decide her future.', 'https://www.youtube.com/watch?v=rMp896hfp74', 'Movie5.jpg', '12:30 AM'),
(6, 'Puss In Boots: The Last Wish', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burnt through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', 'https://www.youtube.com/watch?v=RqrXhwS33yc', 'Movie6.jpg', '3:30 PM'),
(7, 'Avatar: The Way of Water', 'Jake Sully and Ney\'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans.', 'https://www.youtube.com/watch?v=o5F8MOz_IDw', 'Movie7.jpg', '9:30 PM'),
(8, 'Thor: Love and Thunder', 'Thor embarks on a journey unlike anything he\'s ever faced -- a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster, who -- to his surprise -- inexplicably wields his magical hammer. Together, they set out on a harrowing cosmic adventure to uncover the mystery of the God Butcher\'s vengeance.', 'https://www.youtube.com/watch?v=Go8nTmfrQd8', 'Movie8.jpg', '9:45 PM'),
(12, 'Mechamato', 'Bapak Boboiboy', 'https://www.youtube.com/watch?v=kjfNI9XOo5Y&t=51s', 'Movie9.jpg', '1.30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `show_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `show_time`) VALUES
(1, '10:30 AM'),
(2, '12:30 PM'),
(3, '03:30 PM'),
(4, '07:30 PM'),
(5, '10:00 PM'),
(6, '12:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(2, 'Hilmieee', 'hilmie@gmail.com', 'mieee123', 8888888889),
(4, 'Sara', 'sara@gmail.com', 'sara123', 48787878787),
(6, 'Danny', 'danny@gmail.com', 'danny123', 112233),
(7, 'Rep', 'Rep@gmail.com', 'rep123', 12112233);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
