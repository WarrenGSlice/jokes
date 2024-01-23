-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2024 at 10:09 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jokesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `jokes_table`
--

CREATE TABLE `jokes_table` (
  `JokeID` int(11) NOT NULL,
  `Joke_question` varchar(500) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL,
  `user_id` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jokes_table`
--

INSERT INTO `jokes_table` (`JokeID`, `Joke_question`, `Joke_answer`, `user_id`) VALUES
(1, 'What time is it when an elephant sits on your fence?', 'It\'s time to buy a new fence.', '13'),
(3, 'Why did the chicken cross the road?', 'To get to the other side.', '15'),
(4, 'What did the mother buffalo say to her son when she dropped him off at school?', 'Bison', '16'),
(5, 'Why did the chicken cross the playground?', 'To get to the other slide.', '13'),
(6, 'What happens to a frog\'s car when it breaks down?', 'It gets toad.', '15'),
(7, 'How does a frog start his car when the battery is dead?', 'He gets a jump start.', '16'),
(10, 'what to hear a joke?', 'Your life', '13'),
(17, 'Why can\'t you trust an atom?', 'They make up everything.', '15'),
(18, 'My sister bet me $100 that I couldn\'t make a car out of spagetti', 'You should have seen the look on her face when I drove pasta.', '16'),
(19, 'Where do animals go when their tail falls off?', 'The retail store.', '23'),
(20, 'Why did the programmer forget to write code?', 'Because he was programmed to forget.', '28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email_address` text,
  `admin_role` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email_address`, `admin_role`) VALUES
(13, 'bill', 'password', 'bill.gates@microsoft.com', 1),
(15, 'kim', 'password', ' kim.ill@north.ko', 0),
(16, '   don   ', 'don', '   don.trump@whitehouse.gov   ', 0),
(17, 'bob', ' bob ', ' bob@microsoft.com', 0),
(18, ' melinda ', 'm', '  melinda.gates@microsoft.com ', 0),
(19, 'jim', 'jim', 'jim@msn.com', 0),
(23, 'obama', 'password', 'barak@whitehouse.gov', 0),
(28, 'warren', 'password', 'warren@mail.com', 1),
(29, 'jeff', '$2y$10$7VANSdved6g1vjNcO90.nOSHI2b7jxD.zBSx4bPgxvUvQC.TnheUa', NULL, NULL),
(30, 'john', 'b19dacf35da22ebb7f5b09cc99c23d6c', NULL, NULL),
(31, 'peter', '813395c2f8e716a038128da6789a2a28', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jokes_table`
--
ALTER TABLE `jokes_table`
  ADD PRIMARY KEY (`JokeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jokes_table`
--
ALTER TABLE `jokes_table`
  MODIFY `JokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
