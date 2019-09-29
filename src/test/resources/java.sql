-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-09-29 15:32:02
-- 服务器版本： 5.5.62-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- 表的结构 `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户id',
  `token` varchar(64) DEFAULT '' COMMENT '登录token',
  `client` varchar(32) DEFAULT '' COMMENT '客户端来源',
  `times` int(6) DEFAULT '0' COMMENT '登录次数',
  `login_time` int(11) DEFAULT '0' COMMENT '登录时间',
  `expires_time` int(11) DEFAULT '0' COMMENT '过期时间',
  `ext_data` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `session`
--

INSERT INTO `session` (`id`, `user_id`, `token`, `client`, `times`, `login_time`, `expires_time`, `ext_data`) VALUES
(1, 1, 'session eeeeetocken', '', 0, 1569482968, 2147483647, NULL),
(2, 3, 'session tocken', '', 0, 1569482968, 2147483647, NULL),
(3, 3, 'session tocken', '', 0, 1569482968, 2147483647, NULL),
(4, 1, 'session eeeeetocken', '', 0, 1569482968, 2147483647, NULL),
(5, 3, 'session tocken', '', 0, 1569482968, 2147483647, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `register_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `sex`, `avatar`, `register_date`) VALUES
(3, '3@qq.com', '土豆-3', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(4, '4@qq.com', '土豆-4', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(5, '5@qq.com', '土豆-5', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(6, '6@qq.com', '土豆-6', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(7, '7@qq.com', '土豆-7', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(8, '8@qq.com', '土豆-8', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(9, '9@qq.com', '土豆-9', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(10, '10@qq.com', '土豆-10', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(11, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(12, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(13, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(14, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(15, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(16, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(17, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(18, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(19, '899212334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, '', '', 1, '', '2017-06-23 14:24:23'),
(20, '89921ccc2334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, NULL, NULL, 1, NULL, '2017-06-23 14:24:23'),
(21, '89921ccc2334418@qq.com', '土豆2222', '1ee04e0b1cb5af7367c80c22e42efd8b', NULL, NULL, NULL, 1, NULL, '2017-06-23 14:24:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
