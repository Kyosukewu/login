-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-09 09:22:33
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `member`
--

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id',
  `acc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `login`
--

INSERT INTO `login` (`id`, `acc`, `pw`, `email`, `create_time`) VALUES
(1, 'admin', '1234', 'admin@gmail.com', '2020-11-09 05:52:20'),
(2, 'peter', '1234', 'sgvdsfbv@gmail.com', '2020-11-09 05:54:17'),
(3, 'judy123', '1234', 'erwger', '2020-11-09 05:54:38'),
(4, 'mary', '1234', 'rthrth', '2020-11-09 05:54:55'),
(5, 'hole', '1234', 'rsthrth', '2020-11-09 05:55:15'),
(6, 'kevin', '1234', 'gergerg', '2020-11-09 05:55:43');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `role` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`id`, `name`, `birthday`, `role`, `addr`, `education`, `login_id`) VALUES
(1, '管理員', '2020-01-01', '管理員', '000000', '博士', 1),
(2, 'peter12', '2020-11-03', 'VIP', '123543', '碩士', 2),
(3, 'judy', '2020-11-06', '會員', 'grtrh', '博士', 3),
(4, 'nrgerol', '2020-11-03', '會員', 'rhtr', '國中', 4),
(5, 'jnvrg', '2020-11-02', '會員', 'erthrt', '國中', 5),
(6, 'nrgoner', '2020-11-06', '會員', 'erhgerthg', '大學/專科', 6);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
