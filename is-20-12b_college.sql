-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 10 2022 г., 20:28
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
-- База данных: `is-20-12b_college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_classroom`
--

CREATE TABLE `ahmedinova_classroom` (
  `classroom_id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_classroom`
--

INSERT INTO `ahmedinova_classroom` (`classroom_id`, `name`) VALUES
(1, '3213'),
(2, '2210'),
(3, '1311'),
(4, '1415'),
(5, '2205'),
(6, '3113');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_course`
--

CREATE TABLE `ahmedinova_course` (
  `course_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `special_id` int NOT NULL,
  `hours` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_course`
--

INSERT INTO `ahmedinova_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедия технологии', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_day`
--

CREATE TABLE `ahmedinova_day` (
  `day_id` tinyint NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_day`
--

INSERT INTO `ahmedinova_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_gender`
--

CREATE TABLE `ahmedinova_gender` (
  `gender_id` tinyint NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_gender`
--

INSERT INTO `ahmedinova_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_graduate`
--

CREATE TABLE `ahmedinova_graduate` (
  `graduate_id` int NOT NULL,
  `gruppa_id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_graduate`
--

INSERT INTO `ahmedinova_graduate` (`graduate_id`, `gruppa_id`, `course_id`, `user_id`) VALUES
(1, 1, 5, 1),
(2, 5, 7, 2),
(3, 3, 3, 4),
(4, 6, 4, 3),
(5, 7, 6, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_graduate_time`
--

CREATE TABLE `ahmedinova_graduate_time` (
  `graduate_time_id` int NOT NULL,
  `graduate_id` int NOT NULL,
  `day_id` tinyint NOT NULL,
  `lesson_num_id` int NOT NULL,
  `classroom_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_graduate_time`
--

INSERT INTO `ahmedinova_graduate_time` (`graduate_time_id`, `graduate_id`, `day_id`, `lesson_num_id`, `classroom_id`) VALUES
(11, 1, 6, 4, 3),
(12, 2, 3, 5, 5),
(13, 5, 1, 3, 2),
(14, 4, 2, 1, 4),
(15, 3, 5, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_gruppa`
--

CREATE TABLE `ahmedinova_gruppa` (
  `gruppa_id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `special_id` int NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_gruppa`
--

INSERT INTO `ahmedinova_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01'),
(5, '202 С', 6, '2015-09-01', '2019-07-01'),
(6, '404 П', 5, '2014-09-01', '2017-07-01'),
(7, '303 ЭЛ', 4, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_lesson_num`
--

CREATE TABLE `ahmedinova_lesson_num` (
  `lesson_num_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_lesson_num`
--

INSERT INTO `ahmedinova_lesson_num` (`lesson_num_id`, `name`, `time_lesson`, `year_lesson`) VALUES
(1, 'Основы алгоритмизации', '10:00:00', 2009),
(2, 'Техническая механика', '12:00:00', 2000),
(3, 'Электротехника', '14:00:00', 2022),
(4, 'Мультимедия технологии', '15:00:00', 2019),
(5, 'Промышленная электротехника', '17:00:00', 2020),
(6, 'Автоматизированные информационные системы', '16:00:00', 2021);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_otdel`
--

CREATE TABLE `ahmedinova_otdel` (
  `otdel_id` smallint NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_otdel`
--

INSERT INTO `ahmedinova_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности'),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_special`
--

CREATE TABLE `ahmedinova_special` (
  `special_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_special`
--

INSERT INTO `ahmedinova_special` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение ', 3),
(5, 'Программное обеспечение ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_student`
--

CREATE TABLE `ahmedinova_student` (
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `num_zach` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_student`
--

INSERT INTO `ahmedinova_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'К1020'),
(7, 2, 'А5292'),
(8, 2, 'В8578'),
(9, 5, 'Р5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_teacher`
--

CREATE TABLE `ahmedinova_teacher` (
  `user_id` bigint NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_teacher`
--

INSERT INTO `ahmedinova_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `ahmedinova_user`
--

CREATE TABLE `ahmedinova_user` (
  `user_id` bigint NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `patronomic` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender_id` tinyint NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ahmedinova_user`
--

INSERT INTO `ahmedinova_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '', '', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', '', '', 1, '1980-08-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', '', '', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Федоровна', '', '', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', '', '', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', '', '', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', '', '', 1, '1999-09-08'),
(8, 'Канатов', 'Канат', 'Канатович', '', '', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', '', '', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', '', '', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', '', '', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', '', '', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ahmedinova_classroom`
--
ALTER TABLE `ahmedinova_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `ahmedinova_course`
--
ALTER TABLE `ahmedinova_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `ahmedinova_day`
--
ALTER TABLE `ahmedinova_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `ahmedinova_gender`
--
ALTER TABLE `ahmedinova_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `ahmedinova_graduate`
--
ALTER TABLE `ahmedinova_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD UNIQUE KEY `gruppa_id` (`gruppa_id`),
  ADD UNIQUE KEY `course_id` (`course_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `ahmedinova_graduate_time`
--
ALTER TABLE `ahmedinova_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD UNIQUE KEY `graduate_id` (`graduate_id`),
  ADD UNIQUE KEY `classroom_id` (`classroom_id`),
  ADD UNIQUE KEY `day_id` (`day_id`),
  ADD UNIQUE KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `ahmedinova_gruppa`
--
ALTER TABLE `ahmedinova_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `ahmedinova_lesson_num`
--
ALTER TABLE `ahmedinova_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `ahmedinova_otdel`
--
ALTER TABLE `ahmedinova_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `ahmedinova_special`
--
ALTER TABLE `ahmedinova_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `ahmedinova_student`
--
ALTER TABLE `ahmedinova_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `ahmedinova_teacher`
--
ALTER TABLE `ahmedinova_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `ahmedinova_user`
--
ALTER TABLE `ahmedinova_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ahmedinova_classroom`
--
ALTER TABLE `ahmedinova_classroom`
  MODIFY `classroom_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_course`
--
ALTER TABLE `ahmedinova_course`
  MODIFY `course_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_day`
--
ALTER TABLE `ahmedinova_day`
  MODIFY `day_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_gender`
--
ALTER TABLE `ahmedinova_gender`
  MODIFY `gender_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_graduate`
--
ALTER TABLE `ahmedinova_graduate`
  MODIFY `graduate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_graduate_time`
--
ALTER TABLE `ahmedinova_graduate_time`
  MODIFY `graduate_time_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_gruppa`
--
ALTER TABLE `ahmedinova_gruppa`
  MODIFY `gruppa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_lesson_num`
--
ALTER TABLE `ahmedinova_lesson_num`
  MODIFY `lesson_num_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_otdel`
--
ALTER TABLE `ahmedinova_otdel`
  MODIFY `otdel_id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_special`
--
ALTER TABLE `ahmedinova_special`
  MODIFY `special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `ahmedinova_user`
--
ALTER TABLE `ahmedinova_user`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ahmedinova_course`
--
ALTER TABLE `ahmedinova_course`
  ADD CONSTRAINT `ahmedinova_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `ahmedinova_special` (`special_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_graduate`
--
ALTER TABLE `ahmedinova_graduate`
  ADD CONSTRAINT `ahmedinova_graduate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `ahmedinova_course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `ahmedinova_teacher` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_graduate_ibfk_4` FOREIGN KEY (`gruppa_id`) REFERENCES `ahmedinova_gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_graduate_time`
--
ALTER TABLE `ahmedinova_graduate_time`
  ADD CONSTRAINT `ahmedinova_graduate_time_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `ahmedinova_day` (`day_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_graduate_time_ibfk_2` FOREIGN KEY (`lesson_num_id`) REFERENCES `ahmedinova_lesson_num` (`lesson_num_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_graduate_time_ibfk_3` FOREIGN KEY (`classroom_id`) REFERENCES `ahmedinova_classroom` (`classroom_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_graduate_time_ibfk_4` FOREIGN KEY (`graduate_id`) REFERENCES `ahmedinova_graduate` (`graduate_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_gruppa`
--
ALTER TABLE `ahmedinova_gruppa`
  ADD CONSTRAINT `ahmedinova_gruppa_ibfk_4` FOREIGN KEY (`special_id`) REFERENCES `ahmedinova_special` (`special_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_special`
--
ALTER TABLE `ahmedinova_special`
  ADD CONSTRAINT `ahmedinova_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `ahmedinova_otdel` (`otdel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_student`
--
ALTER TABLE `ahmedinova_student`
  ADD CONSTRAINT `ahmedinova_student_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `ahmedinova_gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ahmedinova_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_teacher`
--
ALTER TABLE `ahmedinova_teacher`
  ADD CONSTRAINT `ahmedinova_teacher_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `ahmedinova_otdel` (`otdel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ahmedinova_teacher_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ahmedinova_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ahmedinova_user`
--
ALTER TABLE `ahmedinova_user`
  ADD CONSTRAINT `ahmedinova_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `ahmedinova_gender` (`gender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
