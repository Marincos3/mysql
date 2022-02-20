-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2022 г., 21:02
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `moto_salon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id_basket` int UNSIGNED NOT NULL,
  `buyer` int UNSIGNED DEFAULT NULL,
  `tovar_id` int UNSIGNED NOT NULL,
  `receiving` varchar(300) DEFAULT NULL,
  `payment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `buyer`
--

CREATE TABLE `buyer` (
  `id_buyer` int UNSIGNED NOT NULL,
  `name_b` varchar(100) NOT NULL,
  `surname_b` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `characteristic`
--

CREATE TABLE `characteristic` (
  `id_charact` int UNSIGNED NOT NULL,
  `name` int UNSIGNED DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `motor` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `transm` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `motor`
--

CREATE TABLE `motor` (
  `id_motor` int UNSIGNED NOT NULL,
  `cylinder` int DEFAULT NULL,
  `power` varchar(50) DEFAULT NULL,
  `fuel` varchar(70) DEFAULT NULL,
  `obiem` varchar(30) DEFAULT NULL,
  `max_torque` varchar(40) DEFAULT NULL,
  `max_speed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `id_name` int UNSIGNED NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  `ric` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `size`
--

CREATE TABLE `size` (
  `id_size` int UNSIGNED NOT NULL,
  `height` varchar(30) DEFAULT NULL,
  `width` varchar(30) DEFAULT NULL,
  `length` varchar(40) DEFAULT NULL,
  `F_t_v` varchar(20) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `іeat_h` varchar(20) DEFAULT NULL,
  `perm_mass` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id_tovar` int UNSIGNED NOT NULL,
  `name` int UNSIGNED DEFAULT NULL,
  `photo` blob,
  `price` int DEFAULT NULL,
  `characteristic` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `trasm`
--

CREATE TABLE `trasm` (
  `id_trasm` int UNSIGNED NOT NULL,
  `gearbox` varchar(20) DEFAULT NULL,
  `drive_type` varchar(50) DEFAULT NULL,
  `n_gears` int UNSIGNED DEFAULT NULL,
  `brakes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id_basket`),
  ADD KEY `basket_buyer` (`buyer`),
  ADD KEY `basket_tovar` (`tovar_id`);

--
-- Индексы таблицы `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id_buyer`);

--
-- Индексы таблицы `characteristic`
--
ALTER TABLE `characteristic`
  ADD PRIMARY KEY (`id_charact`),
  ADD KEY `charact_motor` (`motor`),
  ADD KEY `charact_size` (`size`),
  ADD KEY `charact_transm` (`transm`),
  ADD KEY `charact_name` (`name`);

--
-- Индексы таблицы `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id_name`);

--
-- Индексы таблицы `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id_tovar`),
  ADD UNIQUE KEY `characteristic` (`characteristic`),
  ADD KEY `tovar_name` (`name`);

--
-- Индексы таблицы `trasm`
--
ALTER TABLE `trasm`
  ADD PRIMARY KEY (`id_trasm`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id_basket` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id_buyer` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `characteristic`
--
ALTER TABLE `characteristic`
  MODIFY `id_charact` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `motor`
--
ALTER TABLE `motor`
  MODIFY `id_motor` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `id_name` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id_tovar` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `trasm`
--
ALTER TABLE `trasm`
  MODIFY `id_trasm` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `basket_buyer` FOREIGN KEY (`id_buyer`) REFERENCES `basket` (`buyer`);

--
-- Ограничения внешнего ключа таблицы `characteristic`
--
ALTER TABLE `characteristic`
  ADD CONSTRAINT `tovar_charact` FOREIGN KEY (`id_charact`) REFERENCES `tovar` (`characteristic`);

--
-- Ограничения внешнего ключа таблицы `motor`
--
ALTER TABLE `motor`
  ADD CONSTRAINT `charact_motor` FOREIGN KEY (`id_motor`) REFERENCES `characteristic` (`motor`);

--
-- Ограничения внешнего ключа таблицы `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `charact_name` FOREIGN KEY (`id_name`) REFERENCES `characteristic` (`name`),
  ADD CONSTRAINT `tovar_name` FOREIGN KEY (`id_name`) REFERENCES `tovar` (`name`);

--
-- Ограничения внешнего ключа таблицы `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `charact_size` FOREIGN KEY (`id_size`) REFERENCES `characteristic` (`size`);

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `basket_tovar` FOREIGN KEY (`id_tovar`) REFERENCES `basket` (`tovar_id`);

--
-- Ограничения внешнего ключа таблицы `trasm`
--
ALTER TABLE `trasm`
  ADD CONSTRAINT `charact_transm` FOREIGN KEY (`id_trasm`) REFERENCES `characteristic` (`transm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
