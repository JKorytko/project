-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Жов 15 2013 р., 20:27
-- Версія сервера: 5.5.23
-- Версія PHP: 5.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `project_bd`
--
CREATE DATABASE IF NOT EXISTS `project_bd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project_bd`;

-- --------------------------------------------------------

--
-- Структура таблиці `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `group_module_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  `grade` char(2) DEFAULT NULL,
  KEY `grades_fk1` (`group_module_id`),
  KEY `grades_fk2` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `grades`
--

INSERT INTO `grades` (`group_module_id`, `student_id`, `grade`) VALUES
(1, 1, '5B'),
(2, 1, '5A'),
(56, 1, '5A'),
(3, 1, '5A'),
(57, 1, '5A'),
(4, 1, '5B'),
(5, 1, '5B'),
(54, 1, '5B'),
(6, 1, '5B'),
(7, 1, '4C'),
(58, 1, '5B'),
(8, 1, '5A'),
(9, 1, '5B'),
(10, 1, '5A'),
(77, 1, '5A'),
(11, 1, '5B'),
(12, 1, '5B'),
(13, 1, '5B'),
(59, 1, '5B'),
(14, 1, '5B'),
(15, 1, '5B'),
(60, 1, '5B'),
(16, 1, '5B'),
(17, 1, '4C'),
(55, 1, '5B'),
(18, 1, '5B'),
(19, 1, '5B'),
(61, 1, '5B'),
(20, 1, '4B'),
(21, 1, '4B'),
(22, 1, '5B'),
(62, 1, '4B'),
(23, 1, '5B'),
(24, 1, '5B'),
(63, 1, '5B'),
(25, 1, '5B'),
(26, 1, '5B'),
(64, 1, '5B'),
(27, 1, '4C'),
(28, 1, '5B'),
(29, 1, '5A'),
(65, 1, '5B'),
(30, 1, '4C'),
(31, 1, '3D'),
(66, 1, '4C'),
(32, 1, '3D'),
(33, 1, '4C'),
(67, 1, '4C'),
(34, 1, '5A'),
(35, 1, '5A'),
(68, 1, '5A'),
(36, 1, '4B'),
(37, 1, '3D'),
(69, 1, '4C'),
(38, 1, '5A'),
(39, 1, '5B'),
(70, 1, '5B'),
(40, 1, '4C'),
(41, 1, '4C'),
(42, 1, '5A'),
(71, 1, '4C'),
(43, 1, '5B'),
(44, 1, '5A'),
(72, 1, '5B'),
(45, 1, '5B'),
(46, 1, '5B'),
(47, 1, '5A'),
(73, 1, '5B'),
(48, 1, '5A'),
(49, 1, '5B'),
(74, 1, '5B'),
(50, 1, '5B'),
(51, 1, '5B'),
(75, 1, '5B'),
(52, 1, '5B'),
(53, 1, '5B'),
(76, 1, '5B'),
(1, 6, '4C'),
(2, 6, '4B'),
(56, 6, '4C'),
(3, 6, '5A'),
(57, 6, '5A'),
(4, 6, '5B'),
(5, 6, '5B'),
(54, 6, '5B'),
(6, 6, '5B'),
(7, 6, '4C'),
(58, 6, '5B'),
(8, 6, '4C'),
(9, 6, '4B'),
(77, 6, '4C'),
(11, 6, '5B'),
(12, 6, '5B'),
(59, 6, '5B'),
(14, 6, '4C'),
(15, 6, '4C'),
(60, 6, '4C'),
(18, 6, '5B'),
(19, 6, '5B'),
(61, 6, '5B'),
(16, 6, '3D'),
(17, 6, '3D'),
(55, 6, '3D'),
(20, 6, '3D'),
(21, 6, '3E'),
(22, 6, '3D'),
(62, 6, '4C'),
(25, 6, '5B'),
(26, 6, '5B'),
(64, 6, '5B'),
(23, 6, '5B'),
(24, 6, '5B'),
(63, 6, '5B'),
(32, 6, '4C'),
(33, 6, '4B'),
(67, 6, '4C'),
(27, 6, '3D'),
(28, 6, '3E'),
(29, 6, '3D'),
(65, 6, '5B'),
(30, 6, '4C'),
(31, 6, '4C'),
(66, 6, '3D'),
(34, 6, '5A'),
(35, 6, '5A'),
(68, 6, '5A'),
(36, 6, '4C'),
(37, 6, '4C'),
(68, 6, '3D'),
(38, 6, '4C'),
(39, 6, '4C'),
(70, 6, '4C'),
(40, 6, '4C'),
(41, 6, '4B'),
(42, 6, '4C'),
(71, 6, '5A'),
(43, 6, '5B'),
(44, 6, '5B'),
(72, 6, '5B'),
(45, 6, '5B'),
(46, 6, '5B'),
(47, 6, '5B'),
(73, 6, '4C'),
(50, 6, '5A'),
(51, 6, '5A'),
(75, 6, '5A'),
(48, 6, '4C'),
(49, 6, '4C'),
(74, 6, '4C'),
(4, 3, '5A'),
(5, 3, '5A'),
(54, 3, '5A'),
(1, 3, '5A'),
(2, 3, '5B'),
(56, 3, '5B'),
(3, 3, '5B'),
(57, 3, '5B'),
(11, 3, '5B'),
(12, 3, '5B'),
(13, 3, '5B'),
(59, 3, '5B'),
(6, 3, '4C'),
(7, 3, '4C'),
(58, 3, '4C'),
(8, 3, '5B'),
(9, 3, '5B'),
(10, 3, '5A'),
(77, 3, '5B'),
(14, 3, '5B'),
(15, 3, '5B'),
(60, 3, '5B'),
(16, 3, '5B'),
(17, 3, '5B'),
(55, 3, '5B'),
(20, 3, '5A'),
(21, 3, '5A'),
(22, 3, '5A'),
(62, 3, '5A'),
(18, 3, '5B'),
(19, 3, '5B'),
(61, 3, '5B'),
(23, 3, '4C'),
(24, 3, '5B'),
(63, 3, '5B'),
(27, 3, '5A'),
(28, 3, '5B'),
(29, 3, '5A'),
(65, 3, '5A'),
(25, 3, '5B'),
(26, 3, '5B'),
(64, 3, '5B'),
(32, 3, '5B'),
(33, 3, '5A'),
(67, 3, '5A'),
(30, 3, '5A'),
(31, 3, '5A'),
(66, 3, '5A'),
(34, 3, '5A'),
(35, 3, '5A'),
(68, 3, '5A'),
(38, 3, '5A'),
(39, 3, '5B'),
(70, 3, '5B'),
(36, 3, '5A'),
(37, 3, '5A'),
(69, 3, '5A'),
(40, 3, '5A'),
(41, 3, '5B'),
(42, 3, '5A'),
(71, 3, '5A'),
(43, 3, '5B'),
(44, 3, '5A'),
(72, 3, '5A'),
(45, 3, '5B'),
(46, 3, '5A'),
(47, 3, '5A'),
(73, 3, '5A'),
(52, 3, '5B'),
(53, 3, '5A'),
(76, 3, '5B'),
(48, 3, '5A'),
(49, 3, '5A'),
(74, 3, '5A'),
(50, 3, '5A'),
(51, 3, '5A'),
(75, 3, '5A');

-- --------------------------------------------------------

--
-- Структура таблиці `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` text,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп даних таблиці `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, 'И-20б (2010)'),
(2, 'И-20а (2010)'),
(3, 'И-21а (2011)'),
(4, 'И-21б (2011)'),
(5, 'И-22а (2012)'),
(6, 'И-22б (2012)'),
(7, 'И-23а (2013)'),
(8, 'И-23б (2013)'),
(9, 'И-29АМ (2009)'),
(10, 'И-29АС (2009)'),
(11, 'И-29БМ (2009)'),
(12, 'И-29БС (2009)'),
(13, 'И-29ВС (2009)'),
(16, 'И-28АМ (2008)'),
(17, 'И-28АС (2008)'),
(18, 'И-28БМ (2008)'),
(19, 'И-28БС (2008)'),
(20, 'И-28ВС (2008)');

-- --------------------------------------------------------

--
-- Структура таблиці `groups_modules`
--

CREATE TABLE IF NOT EXISTS `groups_modules` (
  `group_module_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) DEFAULT NULL,
  `module_id` int(10) DEFAULT NULL,
  `dead_line` date DEFAULT NULL,
  PRIMARY KEY (`group_module_id`),
  KEY `groups_modules_fk1` (`group_id`),
  KEY `groups_modules_fk2` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Дамп даних таблиці `groups_modules`
--

INSERT INTO `groups_modules` (`group_module_id`, `group_id`, `module_id`, `dead_line`) VALUES
(1, 1, 1, '2014-01-31'),
(2, 1, 2, '2014-01-31'),
(3, 1, 3, '2014-01-31'),
(4, 1, 4, '2014-01-31'),
(5, 1, 5, '2014-01-31'),
(6, 1, 6, '2014-01-31'),
(7, 1, 7, '2014-01-31'),
(8, 1, 8, '2014-01-31'),
(9, 1, 9, '2014-01-31'),
(10, 1, 10, '2014-01-31'),
(11, 1, 11, '2014-01-31'),
(12, 1, 12, '2014-01-31'),
(13, 1, 13, '2014-01-31'),
(14, 1, 14, '2014-01-31'),
(15, 1, 15, '2014-01-31'),
(16, 1, 16, '2014-01-31'),
(17, 1, 17, '2014-01-31'),
(18, 1, 18, '2014-01-31'),
(19, 1, 19, '2014-01-31'),
(20, 1, 20, '2014-01-31'),
(21, 1, 21, '2014-01-31'),
(22, 1, 22, '2014-01-31'),
(23, 1, 23, '2014-01-31'),
(24, 1, 24, '2014-01-31'),
(25, 1, 25, '2014-01-31'),
(26, 1, 26, '2014-01-31'),
(27, 1, 27, '2014-01-31'),
(28, 1, 28, '2014-01-31'),
(29, 1, 29, '2014-01-31'),
(30, 1, 30, '2014-01-31'),
(31, 1, 31, '2014-01-31'),
(32, 1, 32, '2014-01-31'),
(33, 1, 33, '2014-01-31'),
(34, 1, 34, '2014-01-31'),
(35, 1, 35, '2014-01-31'),
(36, 1, 36, '2014-01-31'),
(37, 1, 37, '2014-01-31'),
(38, 1, 38, '2014-01-31'),
(39, 1, 39, '2014-01-31'),
(40, 1, 40, '2014-01-31'),
(41, 1, 41, '2014-01-31'),
(42, 1, 42, '2014-01-31'),
(43, 1, 43, '2014-01-31'),
(44, 1, 44, '2014-01-31'),
(45, 1, 45, '2014-01-31'),
(46, 1, 46, '2014-01-31'),
(47, 1, 47, '2014-01-31'),
(48, 1, 48, '2014-01-31'),
(49, 1, 49, '2014-01-31'),
(50, 1, 50, '2014-01-31'),
(51, 1, 51, '2014-01-31'),
(52, 1, 52, '2014-01-31'),
(53, 1, 53, '2014-01-31'),
(54, 1, 54, '2014-01-31'),
(55, 1, 55, '2014-01-31'),
(56, 1, 56, '2014-01-31'),
(57, 1, 57, '2014-01-31'),
(58, 1, 58, '2014-01-31'),
(59, 1, 59, '2014-01-31'),
(60, 1, 60, '2014-01-31'),
(61, 1, 61, '2014-01-31'),
(62, 1, 62, '2014-01-31'),
(63, 1, 63, '2014-01-31'),
(64, 1, 64, '2014-01-31'),
(65, 1, 65, '2014-01-31'),
(66, 1, 66, '2014-01-31'),
(67, 1, 67, '2014-01-31'),
(68, 1, 68, '2014-01-31'),
(69, 1, 69, '2014-01-31'),
(70, 1, 70, '2014-01-31'),
(71, 1, 71, '2014-01-31'),
(72, 1, 72, '2014-01-31'),
(73, 1, 73, '2014-01-31'),
(74, 1, 74, '2014-01-31'),
(75, 1, 75, '2014-01-31'),
(76, 1, 76, '2014-01-31'),
(77, 1, 77, '2014-01-31');

-- --------------------------------------------------------

--
-- Структура таблиці `groups_subjects`
--

CREATE TABLE IF NOT EXISTS `groups_subjects` (
  `group_id` int(10) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `semester` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `groups_subjects`
--

INSERT INTO `groups_subjects` (`group_id`, `subject_id`, `semester`) VALUES
(1, 1, 7),
(1, 3, 3),
(1, 4, 7),
(1, 5, 7),
(1, 6, 7),
(1, 7, 7),
(1, 8, 1),
(1, 9, 1),
(7, 10, 1),
(1, 11, 2),
(1, 12, 2),
(1, 13, 3),
(1, 14, 3),
(1, 15, 4),
(1, 16, 4),
(1, 17, 4),
(1, 18, 4),
(1, 19, 4),
(1, 20, 4),
(1, 21, 5),
(1, 22, 5),
(1, 23, 5),
(1, 24, 5),
(1, 25, 5),
(1, 26, 6),
(1, 27, 6),
(1, 28, 6),
(1, 29, 6),
(1, 2, 1),
(1, 30, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `lectors`
--

CREATE TABLE IF NOT EXISTS `lectors` (
  `lector_id` int(10) NOT NULL AUTO_INCREMENT,
  `lector_name` text,
  `lector_position` text,
  `lector_email` text,
  `lector_login` tinytext,
  `lector_password` tinytext,
  PRIMARY KEY (`lector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп даних таблиці `lectors`
--

INSERT INTO `lectors` (`lector_id`, `lector_name`, `lector_position`, `lector_email`, `lector_login`, `lector_password`) VALUES
(1, 'Корытко Юлия Николаевна', 'Кандидат технических наук', 'juliakorytko@gmail.com', 'julia_korytko', ''),
(2, 'Асютин Алексей Дмитриевич', 'Ассистент', 'sutok85@gmail.com', 'AAsutin', ''),
(3, 'Некрасова Мария Владимирона', 'Старший преподаватель', '', 'MNekrasova', ''),
(4, 'Бреславский Дмитрий Васильевич', 'Доктор технических наук, декан факультета, заведующий кафедрой, профессор', 'brdm@kpi.kharkov.ua', 'brdm', ''),
(5, 'Плаксий Юрий Андреевич', 'Исполняющий обязанности заведующего кафедрой, кандидат технических наук', NULL, NULL, NULL),
(6, 'Андреев Юрий Михайлович', 'Доктор технических наук, профессор', NULL, NULL, NULL),
(7, 'Успенский Валерий Борисович', 'Доктор технических наук, профессор', NULL, NULL, NULL),
(8, 'Шипулина Людмила Васильевна', 'Кандидат технических наук, доцент', NULL, NULL, NULL),
(9, 'Белов Александр Иванович', 'Кандидат технических наук, доцент', NULL, NULL, NULL),
(10, 'Багмут Иван Александрович', 'Кандидат технических наук, доцент', NULL, NULL, NULL),
(11, 'Татаринова Оксана Андреевна', 'Кандидат технических наук, доцент', NULL, NULL, NULL),
(12, 'Ольшанский Станислав Васильевич', 'Кандидат физико-математических наук, доцент', NULL, NULL, NULL),
(13, 'Галас Олег Сергеевич', 'Кандидат технических наук, младший научный сотрудник', NULL, NULL, NULL),
(14, 'Хацько Наталия Евгениевна', 'Ассистент', NULL, NULL, NULL),
(15, 'Наумов Иван Владимирович', 'Ассистент', NULL, NULL, NULL),
(17, 'Гудзенко Александр Валерьевич', 'Ассистент', NULL, NULL, NULL),
(18, 'Гризун Мария Николаевна', 'Ассистент', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_name` text,
  `subject_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  KEY `modules_fk1` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Дамп даних таблиці `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`, `subject_id`) VALUES
(1, 'Matlab - основы использования', 8),
(2, 'Программирование в Matlab', 8),
(3, 'Основы MathCad', 9),
(4, 'Теоретические методы программирования на языке С', 2),
(5, 'Практические методы программирования на языке С', 2),
(6, 'Модуль 1', 11),
(7, 'Модуль 2', 11),
(8, 'Модуль 1. Классы, перегрузки', 30),
(9, 'Модуль 2. Виртуальные функции', 30),
(10, 'Модуль 3. Курсовая работа', 30),
(11, 'Модуль 1. Элементарные булевы функции', 12),
(12, 'Модуль 2. Минимизация булевых функций', 12),
(13, 'Модуль 3. Теория алгоритмов', 12),
(14, 'Модуль 1', 13),
(15, 'Модуль 2', 13),
(16, 'Модуль 1. Случайные события', 3),
(17, 'Модуль 2. Случайные величины', 3),
(18, 'Модуль 1. Основные элементы графического интерфейса', 14),
(19, 'Модуль 2. Проектирование SOI-приложения', 14),
(20, 'Модуль 1. Булева алгебра', 15),
(21, 'Модуль 2. Теория графов', 15),
(22, 'Модуль 3. Курсовая работа', 15),
(23, 'Модуль 1. Основы компьютерных сетей', 16),
(24, 'Модуль 2. Проектирование и администрирование компьютерных сетей', 16),
(25, 'Модуль 1. Моделирование динамических систем', 17),
(26, 'Модуль 2. Моделирование электро-технических систем', 17),
(27, 'Модуль 1. Случайные величины и их системы', 18),
(28, 'Модуль 2. Математическая статистика', 18),
(29, 'Модуль 3. Курсовая работа', 18),
(30, 'Модуль 1. Основы теории функций комплексной переменной', 19),
(31, 'Модуль 2. Вариационное исчисление', 19),
(32, 'Модуль 1. Интерполяционные методы', 20),
(33, 'Модуль 2. Методы дифференцирования и интегрирования', 20),
(34, 'Модуль 1. HTML документы', 21),
(35, 'Модуль 2. Основы Web-дизайна', 21),
(36, 'Модуль 1. Методы решения задач Коши', 22),
(37, 'Модуль 2. Методы решения краевых задач', 22),
(38, 'Модуль 1. Графический проект, диаграммы классов, структурные диаграммы', 23),
(39, 'Модуль 2. Поведенческие диаграммы', 23),
(40, 'Модуль 1', 24),
(41, 'Модуль 2', 24),
(42, 'Модуль 3', 24),
(43, 'Модуль 1. Линейные цепи', 25),
(44, 'Модуль 2. Импульсные устройства', 25),
(45, 'Модуль 1', 26),
(46, 'Модуль 2', 26),
(47, 'Модуль 3', 26),
(48, 'Модуль 1. Основы математического моделирования', 27),
(49, 'Модуль 2. Основы системного анализа', 27),
(50, 'Модуль 1. Линейный регрессионный анализ', 28),
(51, 'Модуль 2. Множественный регрессионный анализ', 28),
(52, 'Модуль 1', 29),
(53, 'Модуль 2', 29),
(54, 'Итоговая оценка', 2),
(55, 'Итоговая оценка', 3),
(56, 'Итоговая оценка', 8),
(57, 'Итоговая оценка', 9),
(58, 'Итоговая оценка', 11),
(59, 'Итоговая оценка', 12),
(60, 'Итоговая оценка', 13),
(61, 'Итоговая оценка', 14),
(62, 'Итоговая оценка', 15),
(63, 'Итоговая оценка', 16),
(64, 'Итоговая оценка', 17),
(65, 'Итоговая оценка', 18),
(66, 'Итоговая оценка', 19),
(67, 'Итоговая оценка', 20),
(68, 'Итоговая оценка', 21),
(69, 'Итоговая оценка', 22),
(70, 'Итоговая оценка', 23),
(71, 'Итоговая оценка', 24),
(72, 'Итоговая оценка', 25),
(73, 'Итоговая оценка', 26),
(74, 'Итоговая оценка', 27),
(75, 'Итоговая оценка', 28),
(76, 'Итоговая оценка', 29),
(77, 'Итоговая оценка', 30);

-- --------------------------------------------------------

--
-- Структура таблиці `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_name` text,
  `student_notes` text,
  `student_email` text,
  `group_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `students_fk1` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Дамп даних таблиці `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_notes`, `student_email`, `group_id`) VALUES
(1, 'Ваколюк Яков Владимирович', 'Профорг группы', 'y.vakolyuk@profkom-khpi.org', 1),
(2, 'Дачко Оксана Анатольевна', NULL, 'shusterman1@yandex.ru', 1),
(3, 'Лемишенко Олег Александрович', 'Староста группы', 'leplushin@gmail.com', 1),
(4, 'Рожовецкий Евгений Олегович', NULL, 'reg.dfe1@gmail.com', 1),
(5, 'Снопов Дмитрий Евгеньевич', NULL, 'snopovdm@gmail.com', 1),
(6, 'Сирик Максим Владимирович', NULL, 'maxim.sirik@gmail.com', 1),
(7, 'Торба Федор Иванович', NULL, 'fed.tor.kirzone@gmail.com', 1),
(8, 'Щербина Максим Александрович', NULL, 'big-max93@mail.ru', 1),
(9, 'Быковский Андрей Владимирович', NULL, 'andrewjdanov@mail.ru\r\n', 5),
(10, 'Лимаренко Ольга Владимировна', NULL, 'write_s_angel@mail.ru\r\n', 5),
(11, 'Марданов Дмитрий Сергеевич', NULL, 'antanta231@mail.ru\r\n', 5),
(12, 'Науменко Сергей Владимирович', NULL, 's.naumenko@profkom-khpi.org', 5),
(13, 'Негребецкий Роман Вячеславович', NULL, NULL, 5),
(14, 'Омельчук Карина Владиславовна', NULL, NULL, 5),
(15, 'Поливанный Сергей Сергеевич', NULL, 'megamenlite@mail.ru\r\n', 5),
(16, 'Резцов Виталий Олегович', NULL, 'vitaliy-reztsov@ukr.net\r\n', 5),
(17, 'Рыжова Ксения Костянтиновна', NULL, 'ksyha-_1995@mail.ru\r\n', 5),
(18, 'Слипенчук Ирина Александровна', NULL, '2859510@mail.ru', 5),
(19, 'Федорчак Алексей Юрьевич', NULL, 'ylmar_vor@mail.ru', 5),
(20, 'Федорченко Владислав Андреевич', NULL, NULL, 5),
(21, 'Шило Андрей Владимирович', NULL, 'spawn272@spaces.ru', 5),
(22, 'Яранцева Карина Всеволодовна', NULL, 'karrinesa@mail.ru', 5),
(23, 'Головач Ирина Александровна', NULL, NULL, 6),
(24, 'Дрозд Анна Анатольевна', NULL, NULL, 6),
(25, 'Ермаков Даниель Александрович', NULL, 'dan-ermakov@rambler.ru', 6),
(26, 'Игнатьев Ярослав Витальевич', NULL, 'jar2010@mail.ru', 6),
(27, 'Кириченко Ирина Юрьевна', NULL, NULL, 6),
(28, 'Коновалов Николай Владимирович', NULL, 'konovalow@i.ua', 6),
(29, 'Кравченко Елена Александровна', NULL, 'elena_kravchenko_1993@mail.ru', 6),
(30, 'Романов Геннадий Владимирович', NULL, 'roscarius@gmail.com', 6),
(31, 'Сало Дмитрий Александрович', NULL, 'dmitriyavanti@gmail.com', 6),
(32, 'Сушко Александр Мкасимович', NULL, 'hohol-x@ukr.net', 6),
(33, 'Илюха Илья Олегович', NULL, NULL, 2),
(34, 'Коротун Лилия Александровна', NULL, NULL, 2),
(35, 'Мартынюк Дмитрий Александрович', NULL, NULL, 2),
(36, 'Носач Александр Андреевич', NULL, NULL, 2),
(37, 'Носач Евгений Андреевич', NULL, NULL, 2),
(38, 'Сахно Владислав Николаевич', NULL, NULL, 2),
(39, 'Чешко Ксения Федоровна', NULL, NULL, 2),
(40, 'Диденко Дмитрий Виталиевич', NULL, NULL, 2),
(41, 'Хабюк Антон Сергеевич', NULL, NULL, 2),
(42, 'Бакулев Владислав Валерьевич', NULL, NULL, 9),
(43, 'Боса Любовь Николаевна', NULL, NULL, 9),
(44, 'Бугаенко Артем Евгеньевич', NULL, NULL, 9),
(45, 'Заикина Юлия Александровна', NULL, NULL, 9),
(46, 'Клименко Альона Павловна', NULL, NULL, 9),
(47, 'Пащенко Сергей Александрович', NULL, NULL, 9),
(48, 'Подрез Анна Вячеславовна', NULL, NULL, 9),
(49, 'Таран Алексей Григорьевич', NULL, NULL, 9),
(50, 'Васильева Наталья Юрьевна', NULL, NULL, 10),
(51, 'Красильный Александр Александрович', NULL, NULL, 10),
(52, 'Крючкова Дарья Дмитриевна', NULL, NULL, 10),
(53, 'Луценко Алина Андреевна', NULL, NULL, 10),
(54, 'Паньова Юлианна Сергеевна', NULL, NULL, 10),
(55, 'Сарай Анастасия Станиславовна', NULL, NULL, 10),
(56, 'Бурлай Виктор Игоревич', NULL, NULL, 11),
(57, 'Гладышев Евгений Геннадиевич', NULL, NULL, 11),
(58, 'Хорошун Андрей Сергеевич', NULL, NULL, 11),
(59, 'Ярошенко Диана Анатольевна', NULL, NULL, 11),
(60, 'Лобова Анастасия Павловна', NULL, NULL, 12),
(61, 'Найдин Максим Александрович', NULL, NULL, 12),
(62, 'Берус Станислав Викторович', NULL, NULL, 13),
(63, 'Будилко Александр Андреевич', NULL, NULL, 13),
(64, 'Демешко Дмитрий Владимирович', NULL, NULL, 13),
(65, 'Ененко Максим Игоревич', NULL, NULL, 13),
(66, 'Иванова Людмила Игоревна', NULL, NULL, 13),
(67, 'Малашта Максим Викторович', NULL, NULL, 13),
(68, 'Сивачинский Дмитрий Иванович', NULL, NULL, 13),
(69, 'Флорикян Карен Рубенович', NULL, NULL, 13),
(70, 'Шаталов Петр Николаевич', NULL, NULL, 13),
(71, 'Шелудченков Виталий Игоревич', NULL, NULL, 13),
(72, 'Басов Александр Сергеевич', NULL, NULL, 16),
(73, 'Дзюба Александр Петрович', NULL, NULL, 16),
(74, 'Заплавский Евгений Олегович', NULL, NULL, 16),
(75, 'Зягун Григорий Юрьевич', NULL, NULL, 16),
(76, 'Лазарев Михаил Юрьевич', NULL, NULL, 16),
(77, 'Леонова Наталья Валерьевна', NULL, NULL, 16),
(78, 'Оприщенко Иван Анатольевич', NULL, NULL, 16),
(79, 'Шевченко Татьяна Михайловна', NULL, NULL, 16),
(80, 'Гончаренко Евгений Костянтинович', NULL, NULL, 17),
(81, 'Карвасовский Радион Максимович', NULL, NULL, 17),
(82, 'Кухарчук Андрей Андреевич', NULL, NULL, 17),
(83, 'Савченко Александр Сергеевич', NULL, NULL, 17),
(84, 'Сасин Денис Николаевич', NULL, NULL, 17),
(85, 'Чаленко Максим Николаевич', NULL, NULL, 17),
(86, 'Черкашин Евгений Игоревич', NULL, NULL, 17),
(87, 'Шкарлат Владислав Алексеевич', NULL, NULL, 17),
(88, 'Бобков Андрей Александрович', NULL, NULL, 18),
(89, 'Грабар Дмитрий Юрьевич', NULL, NULL, 18),
(90, 'Дегтярьов Евгений Олегович', NULL, NULL, 18),
(91, 'Дмух Наталья Викторовна', NULL, NULL, 18),
(92, 'Меркулов Вячеслав Андреевич', NULL, NULL, 18),
(93, 'Михненко Ирина Тарасовна', NULL, NULL, 18),
(94, 'Бойко Святослав Владимирович', NULL, NULL, 19),
(95, 'Михалицкая Оксана Леонидовна', NULL, NULL, 19),
(96, 'Брагин Александр Александрович', NULL, NULL, 20),
(97, 'Бубись Наталья Ярославовна', NULL, NULL, 20),
(98, 'Долгополова Анастасия Юрьевна', NULL, NULL, 20),
(99, 'Кутковская Анастасия Владимировна', NULL, NULL, 20),
(100, 'Павлюк Виталий Андреевич', NULL, NULL, 20),
(101, 'Полякова Наталья Владимировна', NULL, NULL, 20),
(102, 'Сушилов Станислав Валерьевич', NULL, NULL, 20),
(103, 'Титаренко Татьяна Алексеевна', NULL, NULL, 20),
(104, 'Витовский Антон Юрьевич', NULL, NULL, 3),
(105, 'Гресько Вячеслав Николаевич', NULL, NULL, 3),
(106, 'Козачок Алина Евгеньевна', NULL, NULL, 3),
(107, 'Легач Александр Юрьевич', NULL, NULL, 3),
(108, 'Несмиян Ксения Сергеевна', NULL, NULL, 3),
(109, 'Пятикоп Анастасия Александровна', NULL, NULL, 3),
(110, 'Яценко Вита Юрьевна', NULL, NULL, 3),
(111, 'Батюк Олег Анатольевич', NULL, NULL, 4),
(112, 'Одарченко Георгий Сергеевич', NULL, NULL, 4),
(113, 'Хечоян Арсений Врежикович', NULL, NULL, 4),
(114, 'Чакаров Сократ Дмитриевич', NULL, NULL, 4),
(115, 'Шевченко Александр Юрьевич', NULL, NULL, 4),
(116, 'Сергиенко Игорь Юрьевич', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Структура таблиці `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(10) NOT NULL AUTO_INCREMENT,
  `subject_title` text,
  `subject_credits` int(11) DEFAULT NULL,
  `lector_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `subjects_fk1` (`lector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп даних таблиці `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_title`, `subject_credits`, `lector_id`) VALUES
(1, 'Теория программирования', 6, 1),
(2, 'Программирование', 6, 4),
(3, 'Теория вероятностей', 2, 3),
(4, 'Теория кодирования', 2, 3),
(5, 'Операционные системы и системное программирование', 4, 10),
(6, 'Методы оптимизации', 2, 5),
(7, 'Исследование операций', 2, 7),
(8, 'Программное обеспечение вычислительных систем', 4, 3),
(9, 'Вступление в специальность', 2, 12),
(10, 'Дискретная математика', 6, 11),
(11, 'Архитектура вычислительных систем', 4, 15),
(12, 'Математическая логика и теория алгоритмов', 6, 9),
(13, 'Алгоритмы и структуры данных', 4, 10),
(14, 'ООП', 6, 10),
(15, 'Дискретная математика', 6, 11),
(16, 'Компьютерные сети', 2, 15),
(17, 'Моделирование динамических и электро-технических систем', 5, 6),
(18, 'Теория вероятностей и математическая статистика', 3, 3),
(19, 'Математические основы теории управления', 4, 11),
(20, 'Вычислительные методы', 4, 14),
(21, 'Основы Internet-технологий', 3, 6),
(22, 'Вычислительные методы', 4, 11),
(23, 'Технологии программирования', 4, 14),
(24, 'Теория управления', 4, 7),
(25, 'Импульсная техника', 4, 9),
(26, 'Базы данных и информационные системы', 6, 10),
(27, 'Основы математического моделирования и системного анализа', 4, 12),
(28, 'Анализ данных', 4, 12),
(29, 'Методы оптимизации', 5, 5),
(30, 'Программирование', 5, 1);

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_fk1` FOREIGN KEY (`group_module_id`) REFERENCES `groups_modules` (`group_module_id`),
  ADD CONSTRAINT `grades_fk2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Обмеження зовнішнього ключа таблиці `groups_modules`
--
ALTER TABLE `groups_modules`
  ADD CONSTRAINT `groups_modules_fk1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `groups_modules_fk2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Обмеження зовнішнього ключа таблиці `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_fk1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Обмеження зовнішнього ключа таблиці `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_fk1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Обмеження зовнішнього ключа таблиці `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_fk1` FOREIGN KEY (`lector_id`) REFERENCES `lectors` (`lector_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
