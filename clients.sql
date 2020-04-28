-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 28 2020 г., 01:52
-- Версия сервера: 8.0.19
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clients`
--

-- --------------------------------------------------------

--
-- Структура таблицы `finance`
--

CREATE TABLE `finance` (
  `id` int NOT NULL,
  `idclients` int NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `finance`
--

INSERT INTO `finance` (`id`, `idclients`, `cost`) VALUES
(1, 4, 2000),
(2, 3, 14000),
(3, 2, 2800),
(4, 3, 8000),
(5, 1, 4000),
(6, 1, 5000),
(7, 2, 4500),
(8, 4, 2300);

-- --------------------------------------------------------

--
-- Структура таблицы `pesonaldata`
--

CREATE TABLE `pesonaldata` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `company` varchar(250) NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pesonaldata`
--

INSERT INTO `pesonaldata` (`id`, `name`, `company`, `age`) VALUES
(1, 'Иван Калинов', 'Coca Cola', 30),
(2, 'Сергей Дмитриев', 'Газпром', 28),
(3, 'Ольга Петрова', 'Татнефть', 45),
(4, 'Дмитрий Иванов', 'Пульс', 35);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pesonaldata`
--
ALTER TABLE `pesonaldata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `pesonaldata`
--
ALTER TABLE `pesonaldata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
