-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 05:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpi eps`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `department` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `department`, `description`) VALUES
(1, 'IT Division', 'Information Technology Division'),
(3, 'Project Management', 'RND Division');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `designation`, `description`) VALUES
(1, 'Director', 'Head of Division '),
(2, 'Admin Officer', 'Official Stuff'),
(4, 'Clerk', '1.	Maintaining  letter - receiving register\r\n2.	Maintaining the file system in the division\r\n3.	Coordinating and helping to officers and visitors\r\n4.	Answering the telephone\r\n5.	Organizing welfare/ common activities in the division\r\n6.	Duties assigned by the higher officers'),
(5, 'Caretaker', 'Caretaker'),
(6, 'test desig', 'efefwe');

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `empcode` int(5) DEFAULT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `empcode`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `evaluator_id`, `avatar`, `date_created`) VALUES
(4, 6666, '', 'Test ', '', 'User', 'testuser@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, 2, '1641367860_wallpaperflare.com_wallpaper (1).jpg', '2022-01-05 10:02:50'),
(6, 333, '', 'Test ', 'User 33', 'User 34', 'testuser3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, '1641374640_wallpaperflare.com_wallpaper.jpg', '2022-01-05 14:54:06'),
(7, 666, '', 'Test ', '', 'User5', 'testuser5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 4, 2, '1641374940_wallpaperflare.com_wallpaper.jpg', '2022-01-05 14:59:29'),
(8, 1111, '', 'Test ', 'User', '6', 'testuser2@gmail.co9', 'e10adc3949ba59abbe56e057f20f883e', 1, 5, 2, '1641375960_wallpaperflare.com_wallpaper.jpg', '2022-01-05 15:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_list`
--

CREATE TABLE `evaluator_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluator_list`
--

INSERT INTO `evaluator_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(2, '', 'test', 'eval', 'dd', 'testeval@localhost.com', 'e10adc3949ba59abbe56e057f20f883e', '1640232000_wallpaperflare.com_wallpaper (2).jpg', '2021-12-23 09:30:15'),
(3, '', 'Test ', '', 'eva', 'testev2@localhost.com', 'e10adc3949ba59abbe56e057f20f883e', '1641440700_wallpaperflare.com_wallpaper (1).jpg', '2022-01-06 09:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `timeliness` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `employee_id`, `task_id`, `evaluator_id`, `efficiency`, `timeliness`, `quality`, `accuracy`, `remarks`, `date_created`) VALUES
(3, 3, 3, 2, 5, 5, 5, 5, '', '2021-12-23 09:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'KPI Management System', 'info@uda.gov.lk', '+94 11 2875911', '6th , 7th and 9th Floors, \"Sethsiripaya\",\r\n      Battaramulla. Sri Lanka', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `employee_id` int(30) NOT NULL,
  `due_date` date NOT NULL,
  `completed` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=pending, 1=on-progress,3=Completed',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `task`, `description`, `employee_id`, `due_date`, `completed`, `status`, `date_created`) VALUES
(3, 'test task', '							ewewewq', 3, '2021-12-24', '2021-12-27', 2, '2021-12-23 09:31:14'),
(4, 'test task 2', 'early task', 3, '2021-12-27', '2021-12-26', 2, '2021-12-28 12:26:47'),
(5, 'test task', '							Test Task', 6, '2022-01-08', '0000-00-00', 2, '2022-01-06 09:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `task_progress`
--

CREATE TABLE `task_progress` (
  `id` int(11) NOT NULL,
  `task_id` int(30) NOT NULL,
  `progress` text NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no,1=Yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_progress`
--

INSERT INTO `task_progress` (`id`, `task_id`, `progress`, `is_complete`, `date_created`) VALUES
(6, 3, '&lt;p&gt;step 1&lt;/p&gt;', 0, '2021-12-23 09:32:18'),
(7, 3, '&lt;p&gt;step 2&lt;/p&gt;', 1, '2021-12-23 09:32:38'),
(8, 4, '&lt;p&gt;yyhrtyr&lt;/p&gt;', 0, '2021-12-28 12:27:48'),
(9, 4, '&lt;p&gt;rgg&lt;/p&gt;', 1, '2021-12-28 12:28:04'),
(10, 5, '&lt;p&gt;step 1&lt;br&gt;&lt;/p&gt;', 0, '2022-01-06 10:08:34'),
(11, 5, '&lt;p&gt;step 2&lt;br&gt;&lt;/p&gt;', 0, '2022-01-06 10:13:51'),
(12, 5, '&lt;p&gt;completed&lt;br&gt;&lt;/p&gt;', 1, '2022-01-06 10:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1607135820_avatar.jpg', '2020-11-26 10:57:04'),
(3, 'Test ', 'User', 'admin2@admin.com', '922887a8146245e47ffd5c06389603a2', '1641439680_wallpaperflare.com_wallpaper.jpg', '2022-01-06 08:58:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_progress`
--
ALTER TABLE `task_progress`
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
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task_progress`
--
ALTER TABLE `task_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
