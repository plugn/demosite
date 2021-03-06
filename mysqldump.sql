-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 08 2016 г., 16:49
-- Версия сервера: 5.5.40-MariaDB
-- Версия PHP: 5.6.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `demosite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pizzas`
--

CREATE TABLE IF NOT EXISTS `pizzas` (
  `id` int(10) unsigned NOT NULL,
  `topicId` int(10) unsigned NOT NULL COMMENT 'ID категории',
  `name` varchar(255) NOT NULL COMMENT 'Название пиццы',
  `description` text COMMENT 'Описание пиццы',
  `image_url_large` varchar(255) DEFAULT NULL COMMENT 'Ссылка на большую картинку',
  `image_url_small` varchar(255) DEFAULT NULL COMMENT 'Ссылка на маленькую картинку',
  `price` int(10) unsigned NOT NULL COMMENT 'Цена',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Скрытая/удалённая пицца, недоступна для заказа'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Список доступных пицц';

--
-- Дамп данных таблицы `pizzas`
--

INSERT INTO `pizzas` (`id`, `topicId`, `name`, `description`, `image_url_large`, `image_url_small`, `price`, `hidden`) VALUES
(1, 1, 'Сытый Тони', 'Пицца с характером! Говяжья вырезка, шампиньоны, сыры Моцарелла и Пармезан, красный лук и специальный соус.\r\n251 ккал/100 г.\r\n(890 г)', 'http://www.eda1.ru/upload/images/3154f.jpg', 'http://www.eda1.ru/upload/images/3154.jpg', 655, 1),
(2, 1, 'Пепперони без перца', 'Непреходящая классика, вкуснейшая пицца по традиционному рецепту. Попробуйте вкус настоящей Италии!\r\n254,9 ккал/100 г.\r\n(615 г)', 'http://www.eda1.ru/upload/images/6666f.jpg', 'http://www.eda1.ru/upload/images/6666.jpg', 385, 0),
(3, 1, 'Чили', 'Обжигающая острота. Сыры Моцарелла и Пармезан, ветчина, бекон, помидоры, кольца красного лука… и порция настоящего пламени.', 'https://www.eda1.ru/upload/images/4671f.jpg', 'https://www.eda1.ru/upload/images/4671.jpg', 425, 1),
(5, 1, 'Как была в детстве', 'Настоящая разноцветная феерия вкуса: Сыр Моцарелла, колбаса Молочная, помидоры, корнишоны, яицо, зелень и соус Домашний. Большая пицца для дружной компании. На пышном тесте.', 'http://www.eda1.ru/upload/images/6198f.jpg', 'http://www.eda1.ru/upload/images/6198.jpg', 495, 0),
(6, 1, 'Амиго Мексикано', 'Изысканное сочетание сыров Моцарелла и Пармезан оттеняет острое салями и нежные шампиньоны. Четыре удовольствия в одном!', 'https://www.eda1.ru/upload/images/6007f.jpg', 'https://www.eda1.ru/upload/images/6007.jpg', 445, 0),
(12, 1, 'Примавера', 'Классическое сочетание салями с шампиньонами, цукини, каперсами, свежими помидорами, болгарским перцем, карамелизированным луком и соусом Песто (в составе соуса присутствуют орехи).', 'http://www.eda1.ru/upload/images/3717f.jpg', 'http://www.eda1.ru/upload/images/3717.jpg', 635, 0),
(13, 4, 'Квадро Формаджи', 'Четыре знаменитых сыра: Моцарелла, Пармезан, Дор-блю и Чеддер.', 'http://www.eda1.ru/upload/images/3441f.jpg', 'http://www.eda1.ru/upload/images/3441.jpg', 395, 0),
(15, 1, 'Сицилия', 'Салями и бекон с болгарским перцем, помидорами, шампиньонами и карамелизированным луком.', 'http://www.eda1.ru/upload/images/3958f.jpg', 'http://www.eda1.ru/upload/images/3958.jpg', 565, 0),
(16, 4, 'Маргарита', 'Идентичная той, что была подана королеве Маргарите Савойской в легендарном 1889 году.', 'http://www.eda1.ru/upload/images/781f.jpg', 'http://www.eda1.ru/upload/images/781.jpg', 360, 0),
(18, 1, 'Карбонаре', 'Благородная пицца с беконом, кольцами красного лука, свежими шампиньонами, оливками, пармезаном и моцареллой.', 'http://www.eda1.ru/upload/images/3363f.jpg', 'http://www.eda1.ru/upload/images/3363.jpg', 475, 0),
(19, 1, 'Пепперони', 'Отличное сочетание пикантной колбаски Пепперони и сыра Моцарелла с болгарским перцем. Для крутых перцев и их подруг!', 'http://www.eda1.ru/upload/images/8284f.jpg', 'http://www.eda1.ru/upload/images/8284.jpg', 435, 0),
(21, 2, 'Чикен', 'Сочетание аппетитных кусочков куриного филе, кукурузы, болгарского перца, корнишонов, сыров Моцарелла и Пармезана.', 'http://www.eda1.ru/upload/images/4834f.jpg', 'http://www.eda1.ru/upload/images/4834.jpg', 425, 0),
(22, 1, 'Дон Корлеоне', 'Брутальная пицца с шампиньонами, беконом, ветчиной, солеными огурцами и помидорами, которую приятно безжалостно резать огромным ножом.', 'https://www.eda1.ru/upload/images/7707f.jpg', 'https://www.eda1.ru/upload/images/7707.jpg', 475, 0),
(24, 3, 'с лососем', 'Базиликово-сливочный соус Песто (в составе соуса присутствуют орехи), семга и помидоры Черри с каперсами.', 'http://www.eda1.ru/upload/images/5698f.jpg', 'http://www.eda1.ru/upload/images/5698.jpg', 785, 0),
(25, 4, 'Шампиньони', 'Жюльен в итальянском формате из отборных шампиньонов с зеленью.', 'http://www.eda1.ru/upload/images/8525f.jpg', 'http://www.eda1.ru/upload/images/8525.jpg', 455, 0),
(29, 1, 'Сливочный бекон', 'Бекон, сыры Моцарелла и Пармезан, оливки, красный лук и сливки.', 'http://www.eda1.ru/upload/images/7592f.jpg', 'http://www.eda1.ru/upload/images/7592.jpg', 385, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название',
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Заголовок страницы категории',
  `urlName` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Часть URL'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категории товаров';

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `title`, `urlName`) VALUES
(1, 'С мясом', 'Пиццы с мясом', 'meat'),
(2, 'С курицей', 'Пиццы с курицей', 'chicken'),
(3, 'С рыбой', 'Пиццы с рыбой', 'fish'),
(4, 'Остальные', 'Остальные пиццы', 'rest');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`), ADD KEY `hidden` (`hidden`), ADD KEY `topicId` (`topicId`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `urlPart` (`urlName`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `pizzas`
--
ALTER TABLE `pizzas`
ADD CONSTRAINT `pizzas_topicId` FOREIGN KEY (`topicId`) REFERENCES `topics` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
