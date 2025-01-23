-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 05:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_image` varchar(200) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_quantity` int(10) NOT NULL,
  `book_available` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `librian_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `book_image`, `book_author`, `book_quantity`, `book_available`, `date`, `librian_name`) VALUES
(52, 'Object Programming with JAVA', '404361spHPaD7XL.jpg', 'D.S Guru', 12, 12, '2023-12-11 08:46:11', 'je'),
(53, 'Programming HD DVD and Blu-ray DISC', '4026cookbook.jpg', 'Michael Zink', 9, 9, '2023-11-20 12:54:38', 'je'),
(54, 'Python Programming', '320950fba22a8ac9693d1bcf0557a64a6762.png', 'Anthony Brun', 9, 9, '2023-11-30 11:59:44', 'je'),
(55, 'C programming', '8069images.jpg', 'Berting', 11, 11, '2023-12-05 09:59:54', 'je'),
(56, 'Beginning Unreal Game Developments', '1349download (1).jpg', 'David Nixonn', 13, 13, '2023-11-20 12:43:26', 'je'),
(59, 'Web Development', '833781s+5KclvLL._AC_UL600_SR600,600_.jpg', 'Andy Vickler', 10, 9, '2024-01-03 12:11:56', 'je'),
(60, 'The now habit ', '791495708.jpg', 'Niel Fiore Ph.D', 11, 11, '2023-11-20 12:52:25', 'je'),
(82, 'Visual Basic Recipes', '1386978-1-4302-0604-0.jpg', 'Allen Jones', 12, 12, '2023-12-11 08:24:41', 'je'),
(83, 'Arduino Programming', '743161I7VnIEiML._AC_UF1000,1000_QL80_.jpg', 'John Allen', 10, 10, '2023-12-04 13:40:57', 'je');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_books`
--

CREATE TABLE `deleted_books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_image` varchar(200) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_quantity` int(10) NOT NULL,
  `book_available` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `librian_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(5) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `book_id` int(5) NOT NULL,
  `lib_name` varchar(50) DEFAULT NULL,
  `isssue_date` varchar(25) NOT NULL,
  `return_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libraian`
--

CREATE TABLE `libraian` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(150) DEFAULT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libraian`
--

INSERT INTO `libraian` (`id`, `name`, `email`, `username`, `tag`, `password`, `phone`, `date`, `image`, `city`) VALUES
(3, 'Bert Garte', 'je@gmail.com', 'je', 'Librarian', 'admin123', '0912345678', '2023-11-19 11:13:56', 'avatar.jpg', 'BINAN LAGUNA');

-- --------------------------------------------------------

--
-- Table structure for table `request_book`
--

CREATE TABLE `request_book` (
  `id` int(5) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_id` varchar(25) NOT NULL,
  `book_id` int(5) NOT NULL,
  `book_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `batch` tinyint(5) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `blood_grp` varchar(5) NOT NULL,
  `gpa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `username`, `email`, `uid`, `batch`, `pass`, `phone`, `address`, `image`, `status`, `date`, `blood_grp`, `gpa`) VALUES
(24, 'berting', 'berting', 'berting@gmail.com', '1801-01077', 127, 'user123', '09334455667', 'MUNTINLUPA', '2175berting.jpg', 1, '2023-11-20 13:26:03', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraian`
--
ALTER TABLE `libraian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `request_book`
--
ALTER TABLE `request_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`,`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `libraian`
--
ALTER TABLE `libraian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_book`
--
ALTER TABLE `request_book`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
