-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 02:52 PM
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
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Hossain', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(2, 'Fatima Begum', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(3, 'Mohammad Abdullah', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(4, 'Ayesha Sultana', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(6, 'Maryam Akhtar', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(7, 'Omar Farooq', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(8, 'Zainab Rahman', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(9, 'Khadija Karim', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(10, 'Yusuf Khan', '2025-01-10 12:54:31', '2025-01-10 12:54:31'),
(11, 'RAFIQRONY', '2025-01-10 12:57:39', '2025-01-10 13:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'The Importance of Salah', 'Salah is the key to success in both worlds...', 1, 1, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(2, 'The Golden Age of Islam', 'A look at the contributions of Muslim scholars...', 2, 2, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(3, 'Quranic Education in Modern Times', 'How to integrate Quranic lessons into daily life...', 3, 3, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(4, 'Advances in Islamic Science', 'Exploring the achievements of Muslim scientists...', 4, 4, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(6, 'Halal Business Ethics', 'Building a business on Islamic principles...', 6, 6, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(7, 'Exploring Islamic Heritage', 'Famous Islamic sites around the world...', 7, 7, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(8, 'Halal Cooking Made Easy', 'Delicious and authentic halal recipes...', 8, 8, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(9, 'Islam and Environmental Responsibility', 'How Islam encourages sustainable living...', 9, 9, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(10, 'The Role of Women in Islamic Society', 'Understanding women’s contributions in Islam...', 10, 10, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(11, 'Prophet Muhammad’s Leadership', 'Lessons in leadership from the Prophet...', 2, 1, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(12, 'The Future of Islamic Finance', 'How Islamic banking is shaping the economy...', 6, 2, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(13, 'Eco-Friendly Practices in Islam', 'Islamic guidance on protecting the planet...', 9, 3, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(14, 'Spiritual Benefits of Fasting', 'Fasting as a means of purifying the soul...', 5, 4, '2025-01-10 12:54:36', '2025-01-10 12:54:36'),
(17, 'Most Tested ', 'Not good', 2, 3, '2025-01-10 13:41:07', '2025-01-10 13:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Islamic Studies', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(2, 'History', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(3, 'Education', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(4, 'Science & Technology', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(5, 'Health & Wellness', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(6, 'Business & Economy', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(7, 'Travel', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(8, 'Food', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(9, 'Environment', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(10, 'Culture', '2025-01-10 12:54:33', '2025-01-10 12:54:33'),
(12, 'News', '2025-01-10 13:13:53', '2025-01-10 13:13:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
