-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2020 at 10:19 AM
-- Server version: 10.3.13-MariaDB-log
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(10) NOT NULL,
  `id_author` int(10) NOT NULL,
  `id_theme` int(10) NOT NULL,
  `body` text NOT NULL DEFAULT 'Мне нечего сказать',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comment`, `id_author`, `id_theme`, `body`, `date`) VALUES
(25, 39, 160, '<p><strong>Привет, это мой форум</strong></p><ol><li>Какой-то текст</li><li>Какой-то текст</li></ol><p><br></p>', '2020-04-02'),
(26, 39, 160, '<p>Напиши что-нибудь</p>', '2020-04-02'),
(27, 39, 160, '<p><u>!!!!!!!!!!!!!!!!</u></p>', '2020-04-02'),
(28, 39, 161, '<p>Текст<span style=\"background-color: rgb(255, 255, 255);\">ТекстТекстТекстТекст</span></p>', '2020-04-02'),
(29, 39, 161, '<p><em>Напиши что-нибудь</em></p>', '2020-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id_status` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id_status`, `name`) VALUES
(1, 'Пользователь'),
(2, 'Модератор'),
(3, 'Администратор');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id_theme` int(10) NOT NULL,
  `id_author` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id_theme`, `id_author`, `title`, `body`, `date`) VALUES
(160, 39, 'Ма́йк Та́йсон — Дже́ймс Ду́глас', '<p><a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%B9%D0%BA_%D0%A2%D0%B0%D0%B9%D1%81%D0%BE%D0%BD_%E2%80%94_%D0%94%D0%B6%D0%B5%D0%B9%D0%BC%D1%81_%D0%94%D1%83%D0%B3%D0%BB%D0%B0%D1%81\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Ма́йк Та́йсон&nbsp;— Дже́ймс Ду́глас</strong></a>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">англ.</a>&nbsp;<em>Mike Tyson vs. Buster Douglas</em>;&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">яп.</a>&nbsp;マイク・タイソン 対 ジェームス・ダグラス戦)&nbsp;— двенадцатираундовый боксёрский поединок в тяжёлой весовой категории за титулы чемпиона мира по версиям&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%92%D1%81%D0%B5%D0%BC%D0%B8%D1%80%D0%BD%D0%B0%D1%8F_%D0%B1%D0%BE%D0%BA%D1%81%D1%91%D1%80%D1%81%D0%BA%D0%B0%D1%8F_%D0%B0%D1%81%D1%81%D0%BE%D1%86%D0%B8%D0%B0%D1%86%D0%B8%D1%8F\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">WBA</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%92%D1%81%D0%B5%D0%BC%D0%B8%D1%80%D0%BD%D1%8B%D0%B9_%D0%B1%D0%BE%D0%BA%D1%81%D1%91%D1%80%D1%81%D0%BA%D0%B8%D0%B9_%D1%81%D0%BE%D0%B2%D0%B5%D1%82\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">WBC</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D0%B0%D1%8F_%D0%B1%D0%BE%D0%BA%D1%81%D1%91%D1%80%D1%81%D0%BA%D0%B0%D1%8F_%D1%84%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">IBF</a>, которые принадлежали Майку Тайсону. Бой состоялся 11 февраля 1990 года на базе стадиона&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE_%D0%94%D0%BE%D1%83%D0%BC\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Токио Доум</a>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Токио</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D0%B8%D1%8F\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Япония</a>).</p><p>Первые семь раундов поединка проходили с переменным успехом. В 8-м раунде Тайсону удалось отправить соперника в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%BA%D0%B4%D0%B0%D1%83%D0%BD\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">нокдаун</a>. Джеймс сумел подняться на ноги, но из-за ошибки рефери нокдаун продлился не 10 секунд, как положено, а 12 секунд. В 10-м раунде Джеймс сумел&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%BE%D0%B3%D0%B3%D0%B8\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">потрясти</a>&nbsp;Майка Тайсона, который до этого считался «несокрушимым», и отправил его в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%BA%D0%B0%D1%83%D1%82\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">нокаут</a>. Этот поединок считается одним из самых больших боёв, в которых победу одержал аутсайдер.</p>', '2020-04-02'),
(161, 39, 'Знаете ли вы?', '<h2>Знаете ли вы?</h2><p><a href=\"https://commons.wikimedia.org/wiki/File:L%27Ermatena.jpg?uselang=ru\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/L%27Ermatena.jpg/115px-L%27Ermatena.jpg\" alt=\"Гермафина\" height=\"114\" width=\"115\"></a></p><ul><li><a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D1%80%D0%BC%D0%B0%D1%84%D0%B8%D0%BD%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Герматена</strong></a>&nbsp;<em>(на илл.)</em>&nbsp;— это не совсем&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D1%80%D0%BC%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">герма</a>&nbsp;и уж точно не&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BD%D1%83%D1%81\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">двуликий бог</a>.</li><li>Первый в Германии&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D0%BB%D0%BD%D0%B8%D0%B5%D0%BE%D1%82%D0%B2%D0%BE%D0%B4\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">громоотвод</a>&nbsp;появился на&nbsp;<strong>«</strong><a href=\"https://ru.wikipedia.org/wiki/%D0%A6%D0%B5%D1%80%D0%BA%D0%BE%D0%B2%D1%8C_%D0%A1%D0%B2%D1%8F%D1%82%D0%BE%D0%B3%D0%BE_%D0%AF%D0%BA%D0%BE%D0%B1%D0%B0_(%D0%93%D0%B0%D0%BC%D0%B1%D1%83%D1%80%D0%B3)\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>карандаше</strong></a><strong>»</strong>.</li><li><a href=\"https://ru.wikipedia.org/wiki/Antliarhinus_zamiae\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Самый «длинноносый» жук в мире</strong></a>&nbsp;использует свой «нос» для размножения.</li><li>В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%BB%D0%BD%D0%B5%D1%87%D0%BD%D0%B0%D1%8F_%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Солнечной системе</a>&nbsp;есть&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%BE%D1%81%D0%BE%D0%BB%D0%BD%D0%B5%D1%87%D0%BD%D1%8B%D0%B5_%D0%B7%D1%91%D1%80%D0%BD%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>нечто</strong></a>, которое старше её самой.</li><li>Русские&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0_%D0%9A%D0%B8%D0%B5%D0%B2%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>купили</strong></a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D0%B5%D0%B2\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Киев</a>.</li><li><a href=\"https://ru.wikipedia.org/wiki/%D0%90%D1%80%D0%BD%D1%88%D1%82%D0%B0%D0%BC,_%D0%9A%D0%B8%D1%80%D0%B8%D0%BB%D0%BB_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Рождённый в Петрограде</strong></a>&nbsp;получил&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82_%D0%B3%D1%80%D0%B0%D0%B6%D0%B4%D0%B0%D0%BD%D0%B8%D0%BD%D0%B0_%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B9%D1%81%D0%BA%D0%BE%D0%B9_%D0%A4%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B8\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">паспорт РФ</a>&nbsp;через 100 лет.</li></ul><p><a href=\"https://commons.wikimedia.org/wiki/File:Pillkaller.JPG?uselang=ru\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Pillkaller.JPG/70px-Pillkaller.JPG\" alt=\"Пиллькаллер\" height=\"114\" width=\"70\"></a></p><ul><li><a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BB%D0%BB%D1%8C%D0%BA%D0%B0%D0%BB%D0%BB%D0%B5%D1%80\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Выпить и закусить</strong></a>&nbsp;<em>(на илл.)</em>&nbsp;можно одновременно.</li><li>По тексту рок-оперы&nbsp;<strong>«</strong><a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%B2%D0%BB%D0%B8%D0%BA_%D0%9C%D0%BE%D1%80%D0%BE%D0%B7%D0%BE%D0%B2_%E2%80%94_%D1%81%D1%83%D0%BF%D0%B5%D1%80%D0%B7%D0%B2%D0%B5%D0%B7%D0%B4%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Павлик Морозов — суперзвезда</strong></a><strong>»</strong>&nbsp;защищена диссертация в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D0%BB%D0%B0%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%83%D0%BD%D0%B8%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D1%82%D0%B5%D1%82\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Милане</a>.</li><li>И&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BA%D1%82_%D0%BE%D0%B1_%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B5_%D0%9C%D0%B8%D1%85%D0%B0%D0%B8%D0%BB%D0%B0_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87%D0%B0_%D0%BE%D1%82_%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%B8%D1%8F%D1%82%D0%B8%D1%8F_%D0%B2%D0%B5%D1%80%D1%85%D0%BE%D0%B2%D0%BD%D0%BE%D0%B9_%D0%B2%D0%BB%D0%B0%D1%81%D1%82%D0%B8\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>при отказе от престола</strong></a>&nbsp;можно сделать так, что «ни&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%85%D0%B0%D0%B8%D0%BB_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87_(%D1%81%D1%8B%D0%BD_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%B0_III)\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">себе</a>&nbsp;ни&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D0%B8%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D1%81%D0%BA%D0%B8%D0%B9_%D0%B4%D0%BE%D0%BC\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">людям</a>».</li><li><a href=\"https://ru.wikipedia.org/wiki/%D0%91%D1%80%D0%B0%D1%82%D1%8C%D1%8F_%D0%A0%D0%B8%D1%82%D1%86\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Три брата</strong></a>&nbsp;в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B8_%D0%BC%D1%83%D1%88%D0%BA%D0%B5%D1%82%D1%91%D1%80%D0%B0_(%D1%84%D0%B8%D0%BB%D1%8C%D0%BC,_1939)\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">одном фильме</a>&nbsp;заменили&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%88%D0%BA%D0%B5%D1%82%D1%91%D1%80%D1%8B\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">трёх мушкетёров</a>, а в другом —&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B8_%D0%B1%D0%B0%D0%BB%D0%B1%D0%B5%D1%81%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">трёх балбесов</a>.</li><li><a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B8%D0%BD,_%D0%A2%D0%B5%D0%B4\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Хоккеист</strong></a>&nbsp;стал надевать&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%BE%D0%BA%D0%BA%D0%B5%D0%B9%D0%BD%D1%8B%D0%B9_%D1%88%D0%BB%D0%B5%D0%BC\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">шлем</a>&nbsp;только после того, как ему проломили череп.</li><li><a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%B0%D0%BD%D0%B0_(%D0%A1%D0%B5%D0%BD%D1%82-%D0%93%D0%BE%D0%B4%D0%B5%D0%BD%D1%81)\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong>Обнажённая охотница</strong></a>&nbsp;оказалась неповоротливой.</li></ul><p><br></p>', '2020-04-02'),
(162, 39, 'Baldur’s Gate: Enhanced Edition', '<h2><a href=\"https://ru.wikipedia.org/wiki/Baldur%E2%80%99s_Gate:_Enhanced_Edition\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Baldur’s Gate: Enhanced Edition</a></h2><p><a href=\"https://ru.wikipedia.org/wiki/Baldur%E2%80%99s_Gate:_Enhanced_Edition\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><strong><em>Baldur’s Gate: Enhanced Edition</em></strong></a>&nbsp;(с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">англ.</a> — «Врата Бальдура: улучшенное издание»)&nbsp;— обновлённая версия выпущенной в 1998 году&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D0%B0%D1%8F_%D1%80%D0%BE%D0%BB%D0%B5%D0%B2%D0%B0%D1%8F_%D0%B8%D0%B3%D1%80%D0%B0\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">компьютерной ролевой игры</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Baldur%27s_Gate\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><em>Baldur\'s Gate</em></a>, разработанная компанией&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Overhaul_Games&amp;action=edit&amp;redlink=1\" target=\"_blank\" style=\"color: rgb(165, 88, 88);\">Overhaul Games</a>&nbsp;(подразделение&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Beamdog&amp;action=edit&amp;redlink=1\" target=\"_blank\" style=\"color: rgb(165, 88, 88);\">Beamdog</a>) и изданная&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Atari\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Atari</a>. Игра была выпущена на платформе&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Microsoft_Windows\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Windows</a>&nbsp;в 2012 году, в последующем также портирована на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/IOS\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">iOS</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/MacOS\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">macOS</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Android\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Android</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Linux\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Linux</a>. В 2019 году были выпущены версии для игровых приставок&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Xbox_One\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Xbox One</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/PlayStation_4\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">PlayStation 4</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Nintendo_Switch\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">Nintendo Switch</a>.&nbsp;<em>Enhanced Edition</em>&nbsp;включает в себя оригинальную игру и её&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Baldur%27s_Gate:_Tales_of_the_Sword_Coast\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">дополнение</a>. В переиздании сохранены все составляющие оригинала (сюжет, локации, игровой процесс и персонажи). Добавлены новые персонажи, а также отдельное приключение&nbsp;<em>The Black Pits</em>, сюжет которого основан на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%BB%D0%B0%D0%B4%D0%B8%D0%B0%D1%82%D0%BE%D1%80%D1%81%D0%BA%D0%B8%D0%B5_%D0%B1%D0%BE%D0%B8\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">гладиаторских боях</a>. В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%B3%D1%80%D0%BE%D0%B2%D0%BE%D0%B9_%D0%B4%D0%B2%D0%B8%D0%B6%D0%BE%D0%BA\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\">игровой движок</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Infinity_Engine\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><em>Infinity Engine</em></a>, адаптированный для работы на новых компьютерах и мобильных устройствах, было включено значительное число улучшений и исправлений, некоторые из которых были заимствованы из&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Baldur%27s_Gate_II:_Shadows_of_Amn\" target=\"_blank\" style=\"color: rgb(11, 0, 128);\"><em>Baldur\'s Gate II: Shadows of Amn</em></a>.</p><p><em>Baldur’s Gate: Enhanced Edition</em>&nbsp;получила в основном положительные оценки от критиков, оценивших качество переиздания классической игры. В качестве недостатков отмечались в основном недружественные к современному пользователю особенности ролевой системы. После выпуска игры Beamdog продолжила работу над её поддержкой, выпустив несколько патчей, содержавших значительное число исправлений, касающихся технической составляющей игры, заданий и игровых механик.</p>', '2020-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `banned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nickname`, `login`, `password`, `status`, `banned`) VALUES
(1, 'asdfasdfsfsdfd', 'asdfasdfsfsdfd', 'asdfasdfsfsdfd', 1, 0),
(4, 'asdfasdfsfsdfda', 'asdfasdfsfsdfda', 'asdfasdfsfsdfd', 1, 0),
(9, 'asdfasdfsfsdfda', 'asdfasdfsfsdfdas', 'asdfasdfsfsdfd', 1, 0),
(11, 'asdfasdfsfsdfd', 'asdfasdfsfsdfd1', 'asdfasdfsfsdfd', 1, 0),
(15, 'asdfasdfsfsdfd', 'asdfasdfsfsdfd12', 'asdfasdfsfsdfd', 1, 0),
(20, 'asdfasdfsfsdfd', 'asdfasdfsfsdfd123w', 'asdfasdfsfsdfd', 1, 0),
(23, 'asdfasdfsfsdfd', 'asasds', 'asdfasdfsfsdfd', 1, 0),
(24, 'asdfasdfsfsdfd', 'asasas', 'asdfasdfsfsdfd', 1, 0),
(29, 'asdfasdfsfsdfd', 'asdfasdfsfsdfdsaa', '$2y$10$xS9LxXDExMMK.5jr.2h3Zewnl.QolaCfS/Ri59KEsO/vTL7arpRKm', 1, 0),
(30, 'qqqqqqqqqqq', 'qqqqqqqqqqq', '$2y$10$nSkAikEC2oxAGgECJg7Xl.ZpudWL7cvGUO3ntu8TL31yGSeF0ewCO', 1, 0),
(37, 'ArtemKA', 'artevgen30559', '$2y$10$rtAZgXl629dh463D7wtezezlpx/2chgv2hDRJV3d8d1QyC/5pqcT6', 2, 0),
(38, 'asdasdf', 'sukasuka', '$2y$10$.VPxC9Ukq3LjgLjB.Zdtq.GsxeJmx2XxelNSZ01QK/6Ws31rkKiKy', 1, 0),
(39, 'artevgen500', 'artevgen500', '$2y$10$olCtBPiW4GkGoV9xIRnl4u/c8DTGdtb2hvloXttSW4sAF9qEvORBu', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_author` (`id_author`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id_theme`),
  ADD KEY `id_author` (`id_author`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id_status` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id_theme` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_theme`) REFERENCES `themes` (`id_theme`);

--
-- Constraints for table `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`status`) REFERENCES `statuses` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
