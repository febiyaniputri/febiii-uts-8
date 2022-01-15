-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts-febiii`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(30, 12, 'BUBBLE MILK TEA', 'febri', 'Salah satu rasa bubble tea yang paling populer adalah original, yaitu milk tea. Satu gelasnya berisikan air seduhan teh hitam, gula, susu, krimer, dan topping mutiara tapioka atau boba. Dalam satu gelas besar bubble milk tea berukuran 700 ml mengandung sekitar 700 kalori.', '2022-01-03 10:29:35', '2022-01-03 10:34:07'),
(31, 12, 'matcha latte', 'febriyani', 'Matcha adalah teh hijau bubuk yang menyehatkan jika diminum secara rutin karena kandungan zat antioksidannya tinggi. Dalam varian bubble tea, biasanya matcha diolah menjadi latte.\r\n\r\nWalaupun terdapat susu skim di dalamnya, namun kandungan gulanya rendah. Bahkan, ada matcha latte yang tidak menggunakan gula. Dalam segelas bubble tea matcha latte (700 ml), mengandung 480 kalori.', '2022-01-03 11:09:58', '2022-01-03 11:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(25, 'ohhh kak req yg rasa matcha dongg', 'susanti', '2022-01-03 10:31:29', '2022-01-03 10:31:29'),
(26, 'apa aja dehhh kakkk', 'tiaraa', '2022-01-03 11:10:40', '2022-01-03 11:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'febiyani', 'febri@gmail.com', 'febri yani', '$2y$10$IoZOohjIiVoyLWMuIzn64Ohx37iyoIqAkH81YVnoUY2a4EkuJnf8a', NULL, '2022-01-03 09:37:25', '2022-01-03 09:37:25'),
(13, 'yaniajaa', 'yani@gmail.com', 'yani gerhana', '$2y$10$LfdEniLt9xQm6ai9mNJO9u/oFFnAtYD5wfk0k0MdhVa47Qd0be5Lu', NULL, '2022-01-03 11:12:18', '2022-01-03 11:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(10, 12, '089629149393', '2022-01-03 09:37:25', '2022-01-03 09:37:25'),
(11, 13, '081290034449', '2022-01-03 11:12:18', '2022-01-03 11:12:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
