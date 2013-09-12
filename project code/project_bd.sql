-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Вер 11 2013 р., 22:36
-- Версія сервера: 5.5.25
-- Версія PHP: 5.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `project_bd`
--
CREATE DATABASE IF NOT EXISTS `project_bd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project_bd`;

-- --------------------------------------------------------

--
-- Структура таблиці `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `grade_id` int(10) NOT NULL AUTO_INCREMENT,
  `grade` char(2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` text NOT NULL,
  `subject_id` int(10) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `lectors`
--

CREATE TABLE IF NOT EXISTS `lectors` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `lector_name` text NOT NULL,
  `lector_position` text NOT NULL,
  `lector_emails` text NOT NULL,
  `passwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `lectors`
--

INSERT INTO `lectors` (`user_id`, `lector_name`, `lector_position`, `lector_emails`, `passwd`) VALUES
(1, 'Корытко Юлия Николаевна', 'Кандидат технических наук', 'juliakorytko@gmail.com', ''),
(2, 'Асютин Алексей Дмитриевич', 'Асистент', 'sutok85@gmail.com', '');

-- --------------------------------------------------------

--
-- Структура таблиці `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_title` text NOT NULL,
  `subject_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `module_date` date NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_role` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `roles`
--

INSERT INTO `roles` (`user_id`, `user_role`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_name` text NOT NULL,
  `student_group_id` int(10) NOT NULL,
  `student_notes` text NOT NULL,
  `students_emails` text NOT NULL,
  `student_parents_emails` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор предмета',
  `subject_title` text NOT NULL COMMENT 'Название предмета',
  `subject_credits` int(10) NOT NULL COMMENT 'Кредиты по предмету',
  `subject_lector` int(10) NOT NULL COMMENT 'Идентификатор ведущего преподавателя',
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица с информацией по предметам' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
