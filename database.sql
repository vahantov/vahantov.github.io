-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2020 at 05:12 AM
-- Server version: 5.7.30
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ronin_hnchak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `perm_type` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(11) NOT NULL,
  `status` int(255) NOT NULL DEFAULT '0' COMMENT 'new/active/archive',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` int(11) NOT NULL DEFAULT '1',
  `department` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `perm_type`, `email`, `username`, `password`, `name`, `surname`, `phone`, `address`, `state`, `status`, `date`, `last_date`, `theme`, `department`) VALUES
(4056, 3, 'ronin.ans@gmail.com', 'Ronin', '3T89n+1CTTMJsnipvEK0sw==', 'Ռադիկ', 'Կարապետյան', '+ (374) 44 70-18-87', 'Armavir', 0, 1, '2020-04-19 02:49:23', '1588511163', 0, 0),
(4444, 2, 'yanshak53@mail.ru', 'yaxshi53', 'V2SqKUNwBbAlOtVjcuzMRw==', 'Վազգեն', 'Ստեփանյան', '+ (374) 98 41-49-06', NULL, 0, 1, '2020-04-19 18:44:54', '1587577100', 1, 1),
(4523, 3, 'rafo-step@mail.ru', 'rafo', 'aBxQef8LqMfp5gRB8WfucQ==', 'Ռաֆո', 'Ստեփանյան', '+ (374) 99 55-85-12', NULL, 0, 1, '2020-04-19 19:12:48', '1588615020', 0, 1),
(27456, 3, 'len.gevorgyan@gmail.com', 'w0rtex', '6uhUo0VMEKaUgWgNkBkfDg==', 'Ալեն', 'Գևորգյան', '+ 374 95 228108', 'Ք․ Երևան, Սուրիկի կտուր 599995', 1, 1, '2020-04-18 22:44:04', '1589163665', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(255) NOT NULL,
  `title_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `user_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `title_hy`, `title_en`, `title_ru`, `group`, `state`, `user_ID`, `date`) VALUES
(1, 'Ընդհանուր', '-', '-', 'newsfeed', 1, '27', '2020-04-18 22:44:04'),
(34, 'Ընդհանուր', '', '', 'projects', 1, '27', '2020-04-18 22:44:04'),
(36, 'ՏՈԵՄ Հայտարարություններ', '-', '-', 'newsfeed', 1, '4523', '2020-04-28 10:26:47'),
(37, '«Հնչակ» պատմական', '-', '-', 'newsfeed', 1, '4056', '2020-04-28 18:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`ID`, `code`, `title_en`, `title_ru`, `title_hy`) VALUES
(1, 'AF', 'Afghanistan', '', ''),
(2, 'AL', 'Albania', '', ''),
(3, 'DZ', 'Algeria', '', ''),
(4, 'DS', 'American Samoa', '', ''),
(5, 'AD', 'Andorra', '', ''),
(6, 'AO', 'Angola', '', ''),
(7, 'AI', 'Anguilla', '', ''),
(8, 'AQ', 'Antarctica', '', ''),
(9, 'AG', 'Antigua and Barbuda', '', ''),
(10, 'AR', 'Argentina', '', ''),
(11, 'AM', 'Armenia', 'Армения', 'Հայաստան'),
(12, 'AW', 'Aruba', '', ''),
(13, 'AU', 'Australia', '', ''),
(14, 'AT', 'Austria', '', ''),
(15, 'AZ', 'Azerbaijan', '', ''),
(16, 'BS', 'Bahamas', '', ''),
(17, 'BH', 'Bahrain', '', ''),
(18, 'BD', 'Bangladesh', '', ''),
(19, 'BB', 'Barbados', '', ''),
(20, 'BY', 'Belarus', '', ''),
(21, 'BE', 'Belgium', '', ''),
(22, 'BZ', 'Belize', '', ''),
(23, 'BJ', 'Benin', '', ''),
(24, 'BM', 'Bermuda', '', ''),
(25, 'BT', 'Bhutan', '', ''),
(26, 'BO', 'Bolivia', '', ''),
(27, 'BA', 'Bosnia and Herzegovina', '', ''),
(28, 'BW', 'Botswana', '', ''),
(29, 'BV', 'Bouvet Island', '', ''),
(30, 'BR', 'Brazil', '', ''),
(31, 'IO', 'British Indian Ocean Territory', '', ''),
(32, 'BN', 'Brunei Darussalam', '', ''),
(33, 'BG', 'Bulgaria', '', ''),
(34, 'BF', 'Burkina Faso', '', ''),
(35, 'BI', 'Burundi', '', ''),
(36, 'KH', 'Cambodia', '', ''),
(37, 'CM', 'Cameroon', '', ''),
(38, 'CA', 'Canada', '', ''),
(39, 'CV', 'Cape Verde', '', ''),
(40, 'KY', 'Cayman Islands', '', ''),
(41, 'CF', 'Central African Republic', '', ''),
(42, 'TD', 'Chad', '', ''),
(43, 'CL', 'Chile', '', ''),
(44, 'CN', 'China', '', ''),
(45, 'CX', 'Christmas Island', '', ''),
(46, 'CC', 'Cocos (Keeling) Islands', '', ''),
(47, 'CO', 'Colombia', '', ''),
(48, 'KM', 'Comoros', '', ''),
(49, 'CD', 'Democratic Republic of the Congo', '', ''),
(50, 'CG', 'Republic of Congo', '', ''),
(51, 'CK', 'Cook Islands', '', ''),
(52, 'CR', 'Costa Rica', '', ''),
(53, 'HR', 'Croatia (Hrvatska)', '', ''),
(54, 'CU', 'Cuba', '', ''),
(55, 'CY', 'Cyprus', '', ''),
(56, 'CZ', 'Czech Republic', '', ''),
(57, 'DK', 'Denmark', '', ''),
(58, 'DJ', 'Djibouti', '', ''),
(59, 'DM', 'Dominica', '', ''),
(60, 'DO', 'Dominican Republic', '', ''),
(61, 'TP', 'East Timor', '', ''),
(62, 'EC', 'Ecuador', '', ''),
(63, 'EG', 'Egypt', '', ''),
(64, 'SV', 'El Salvador', '', ''),
(65, 'GQ', 'Equatorial Guinea', '', ''),
(66, 'ER', 'Eritrea', '', ''),
(67, 'EE', 'Estonia', '', ''),
(68, 'ET', 'Ethiopia', '', ''),
(69, 'FK', 'Falkland Islands (Malvinas)', '', ''),
(70, 'FO', 'Faroe Islands', '', ''),
(71, 'FJ', 'Fiji', '', ''),
(72, 'FI', 'Finland', '', ''),
(73, 'FR', 'France', '', ''),
(74, 'FX', 'France, Metropolitan', '', ''),
(75, 'GF', 'French Guiana', '', ''),
(76, 'PF', 'French Polynesia', '', ''),
(77, 'TF', 'French Southern Territories', '', ''),
(78, 'GA', 'Gabon', '', ''),
(79, 'GM', 'Gambia', '', ''),
(80, 'GE', 'Georgia', '', ''),
(81, 'DE', 'Germany', '', ''),
(82, 'GH', 'Ghana', '', ''),
(83, 'GI', 'Gibraltar', '', ''),
(84, 'GK', 'Guernsey', '', ''),
(85, 'GR', 'Greece', '', ''),
(86, 'GL', 'Greenland', '', ''),
(87, 'GD', 'Grenada', '', ''),
(88, 'GP', 'Guadeloupe', '', ''),
(89, 'GU', 'Guam', '', ''),
(90, 'GT', 'Guatemala', '', ''),
(91, 'GN', 'Guinea', '', ''),
(92, 'GW', 'Guinea-Bissau', '', ''),
(93, 'GY', 'Guyana', '', ''),
(94, 'HT', 'Haiti', '', ''),
(95, 'HM', 'Heard and Mc Donald Islands', '', ''),
(96, 'HN', 'Honduras', '', ''),
(97, 'HK', 'Hong Kong', '', ''),
(98, 'HU', 'Hungary', '', ''),
(99, 'IS', 'Iceland', '', ''),
(100, 'IN', 'India', '', ''),
(101, 'IM', 'Isle of Man', '', ''),
(102, 'ID', 'Indonesia', '', ''),
(103, 'IR', 'Iran (Islamic Republic of)', '', ''),
(104, 'IQ', 'Iraq', '', ''),
(105, 'IE', 'Ireland', '', ''),
(106, 'IL', 'Israel', '', ''),
(107, 'IT', 'Italy', '', ''),
(108, 'CI', 'Ivory Coast', '', ''),
(109, 'JE', 'Jersey', '', ''),
(110, 'JM', 'Jamaica', '', ''),
(111, 'JP', 'Japan', '', ''),
(112, 'JO', 'Jordan', '', ''),
(113, 'KZ', 'Kazakhstan', '', ''),
(114, 'KE', 'Kenya', '', ''),
(115, 'KI', 'Kiribati', '', ''),
(116, 'KP', 'Korea, Democratic People\'s Republic of', '', ''),
(117, 'KR', 'Korea, Republic of', '', ''),
(118, 'XK', 'Kosovo', '', ''),
(119, 'KW', 'Kuwait', '', ''),
(120, 'KG', 'Kyrgyzstan', '', ''),
(121, 'LA', 'Lao People\'s Democratic Republic', '', ''),
(122, 'LV', 'Latvia', '', ''),
(123, 'LB', 'Lebanon', '', ''),
(124, 'LS', 'Lesotho', '', ''),
(125, 'LR', 'Liberia', '', ''),
(126, 'LY', 'Libyan Arab Jamahiriya', '', ''),
(127, 'LI', 'Liechtenstein', '', ''),
(128, 'LT', 'Lithuania', '', ''),
(129, 'LU', 'Luxembourg', '', ''),
(130, 'MO', 'Macau', '', ''),
(131, 'MK', 'North Macedonia', '', ''),
(132, 'MG', 'Madagascar', '', ''),
(133, 'MW', 'Malawi', '', ''),
(134, 'MY', 'Malaysia', '', ''),
(135, 'MV', 'Maldives', '', ''),
(136, 'ML', 'Mali', '', ''),
(137, 'MT', 'Malta', '', ''),
(138, 'MH', 'Marshall Islands', '', ''),
(139, 'MQ', 'Martinique', '', ''),
(140, 'MR', 'Mauritania', '', ''),
(141, 'MU', 'Mauritius', '', ''),
(142, 'TY', 'Mayotte', '', ''),
(143, 'MX', 'Mexico', '', ''),
(144, 'FM', 'Micronesia, Federated States of', '', ''),
(145, 'MD', 'Moldova, Republic of', '', ''),
(146, 'MC', 'Monaco', '', ''),
(147, 'MN', 'Mongolia', '', ''),
(148, 'ME', 'Montenegro', '', ''),
(149, 'MS', 'Montserrat', '', ''),
(150, 'MA', 'Morocco', '', ''),
(151, 'MZ', 'Mozambique', '', ''),
(152, 'MM', 'Myanmar', '', ''),
(153, 'NA', 'Namibia', '', ''),
(154, 'NR', 'Nauru', '', ''),
(155, 'NP', 'Nepal', '', ''),
(156, 'NL', 'Netherlands', '', ''),
(157, 'AN', 'Netherlands Antilles', '', ''),
(158, 'NC', 'New Caledonia', '', ''),
(159, 'NZ', 'New Zealand', '', ''),
(160, 'NI', 'Nicaragua', '', ''),
(161, 'NE', 'Niger', '', ''),
(162, 'NG', 'Nigeria', '', ''),
(163, 'NU', 'Niue', '', ''),
(164, 'NF', 'Norfolk Island', '', ''),
(165, 'MP', 'Northern Mariana Islands', '', ''),
(166, 'NO', 'Norway', '', ''),
(167, 'OM', 'Oman', '', ''),
(168, 'PK', 'Pakistan', '', ''),
(169, 'PW', 'Palau', '', ''),
(170, 'PS', 'Palestine', '', ''),
(171, 'PA', 'Panama', '', ''),
(172, 'PG', 'Papua New Guinea', '', ''),
(173, 'PY', 'Paraguay', '', ''),
(174, 'PE', 'Peru', '', ''),
(175, 'PH', 'Philippines', '', ''),
(176, 'PN', 'Pitcairn', '', ''),
(177, 'PL', 'Poland', '', ''),
(178, 'PT', 'Portugal', '', ''),
(179, 'PR', 'Puerto Rico', '', ''),
(180, 'QA', 'Qatar', '', ''),
(181, 'RE', 'Reunion', '', ''),
(182, 'RO', 'Romania', '', ''),
(183, 'RU', 'Russian Federation', '', ''),
(184, 'RW', 'Rwanda', '', ''),
(185, 'KN', 'Saint Kitts and Nevis', '', ''),
(186, 'LC', 'Saint Lucia', '', ''),
(187, 'VC', 'Saint Vincent and the Grenadines', '', ''),
(188, 'WS', 'Samoa', '', ''),
(189, 'SM', 'San Marino', '', ''),
(190, 'ST', 'Sao Tome and Principe', '', ''),
(191, 'SA', 'Saudi Arabia', '', ''),
(192, 'SN', 'Senegal', '', ''),
(193, 'RS', 'Serbia', '', ''),
(194, 'SC', 'Seychelles', '', ''),
(195, 'SL', 'Sierra Leone', '', ''),
(196, 'SG', 'Singapore', '', ''),
(197, 'SK', 'Slovakia', '', ''),
(198, 'SI', 'Slovenia', '', ''),
(199, 'SB', 'Solomon Islands', '', ''),
(200, 'SO', 'Somalia', '', ''),
(201, 'ZA', 'South Africa', '', ''),
(202, 'GS', 'South Georgia South Sandwich Islands', '', ''),
(203, 'SS', 'South Sudan', '', ''),
(204, 'ES', 'Spain', '', ''),
(205, 'LK', 'Sri Lanka', '', ''),
(206, 'SH', 'St. Helena', '', ''),
(207, 'PM', 'St. Pierre and Miquelon', '', ''),
(208, 'SD', 'Sudan', '', ''),
(209, 'SR', 'Suriname', '', ''),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', '', ''),
(211, 'SZ', 'Swaziland', '', ''),
(212, 'SE', 'Sweden', '', ''),
(213, 'CH', 'Switzerland', '', ''),
(214, 'SY', 'Syrian Arab Republic', '', ''),
(215, 'TW', 'Taiwan', '', ''),
(216, 'TJ', 'Tajikistan', '', ''),
(217, 'TZ', 'Tanzania, United Republic of', '', ''),
(218, 'TH', 'Thailand', '', ''),
(219, 'TG', 'Togo', '', ''),
(220, 'TK', 'Tokelau', '', ''),
(221, 'TO', 'Tonga', '', ''),
(222, 'TT', 'Trinidad and Tobago', '', ''),
(223, 'TN', 'Tunisia', '', ''),
(224, 'TR', 'Turkey', '', ''),
(225, 'TM', 'Turkmenistan', '', ''),
(226, 'TC', 'Turks and Caicos Islands', '', ''),
(227, 'TV', 'Tuvalu', '', ''),
(228, 'UG', 'Uganda', '', ''),
(229, 'UA', 'Ukraine', '', ''),
(230, 'AE', 'United Arab Emirates', '', ''),
(231, 'GB', 'United Kingdom', '', ''),
(232, 'US', 'United States', '', ''),
(233, 'UM', 'United States minor outlying islands', '', ''),
(234, 'UY', 'Uruguay', '', ''),
(235, 'UZ', 'Uzbekistan', '', ''),
(236, 'VU', 'Vanuatu', '', ''),
(237, 'VA', 'Vatican City State', '', ''),
(238, 'VE', 'Venezuela', '', ''),
(239, 'VN', 'Vietnam', '', ''),
(240, 'VG', 'Virgin Islands (British)', '', ''),
(241, 'VI', 'Virgin Islands (U.S.)', '', ''),
(242, 'WF', 'Wallis and Futuna Islands', '', ''),
(243, 'EH', 'Western Sahara', '', ''),
(244, 'YE', 'Yemen', '', ''),
(245, 'ZM', 'Zambia', '', ''),
(246, 'ZW', 'Zimbabwe', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `ID` int(11) NOT NULL,
  `title_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_ID` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`ID`, `title_hy`, `title_en`, `title_ru`, `short_hy`, `short_en`, `short_ru`, `country_ID`, `state`) VALUES
(0, 'Սոցիալ-Դեմոկրատ Հնչակյան կուսակցության վարչություն', 'Head of SD Hnchakian party', 'Администрациа СД Гнчакской партии', 'ՍԴՀԿ', 'SDHP', 'СДГП', 11, 1),
(1, 'Տխրունի Ուսանողական-Երիտասարդական Միություն', 'Tkhruni Student Youth Association', 'Тхруни Студенческо-Молодёжное Объеденение', 'ՏՈԵՄ', 'TSYU', 'ТСМО', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `honorary`
--

CREATE TABLE `honorary` (
  `ID` int(11) NOT NULL,
  `name_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_hy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `born` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `die` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `honorary`
--

INSERT INTO `honorary` (`ID`, `name_hy`, `name_en`, `name_ru`, `about_hy`, `about_en`, `about_ru`, `born`, `die`, `state`) VALUES
(1, 'Նազարբեկ ( Ավետիս Նազարբեկյան )', 'Nazarbek ( Avetis Nazarbekian )', 'Назарбек ( Аветис Назарбекян )', 'Սոցիալ-Դեմոկրատ Հնչակյան Կուսակցության համահիմնադիր։', '', '', '1866', '1939', 1),
(2, 'Մարո Վարդանյան-Նազարբեկյան', 'Maro Vardanian-Nazarbekian', 'Маро Варданян-Назарбекян', '', '', '', '1864', '1941', 1),
(3, 'Ռուբեն Խանազատյան', 'Ruben Khanazatian', 'Рубен Ханазатян', '', '', '', '1862', '1929', 1),
(4, 'Գաբրիել Կաֆյան', 'Gabriel Kafian', 'Габриель Кафян', '', '', '', '1860', '1930', 1),
(5, 'Գևորգ Ղարաջյան', 'Gevorg Gharajian', 'Геворг Хараджян', '', '', '', '1861', '1936', 1),
(6, 'Քրիստափոր Օհանյան', 'Christopher Ohanian', 'Кристофер Оганиан', '', '', '', '1864', '1924', 1);

-- --------------------------------------------------------

--
-- Table structure for table `introduction`
--

CREATE TABLE `introduction` (
  `ID` int(255) NOT NULL,
  `title_hy` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_hy` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `introduction`
--

INSERT INTO `introduction` (`ID`, `title_hy`, `title_en`, `title_ru`, `content_hy`, `content_en`, `content_ru`) VALUES
(1, 'Արդարություն', '', '', 'Արդար չի կարող լինել այն հասարակարգը, որտեղ մարդկանց մի մասը մյուսին զրկում է աշխատելու և ստեղծագործելու հնարավորությունից:', '', ''),
(2, 'Ազատություն', '', '', 'Ազատությունը ենթադրում է ինքնորոշում, որպեսզի յուրաքանչյուր ոք ունենա ազատության իրավունք և կարողություն։', '', ''),
(3, 'Սոցիալական համերաշխություն', '', '', 'Համերաշխություն նշանակում է երկկողմ կապվածություն, պատկանելություն և օգնություն:', '', ''),
(4, 'Ազգայնություն', '', '', 'Հայաստանը գործնականորեն վերածել համայն հայության տան, ստեղծել զանգվածային ներգաղթի պայմաններ։', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `joiners`
--

CREATE TABLE `joiners` (
  `ID` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_we` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joiners`
--

INSERT INTO `joiners` (`ID`, `department`, `name`, `surname`, `fathername`, `birthday`, `nation`, `citizen`, `phone`, `email`, `address`, `study`, `work`, `religion`, `party`, `company`, `why`, `what`, `what_we`, `comments`, `password`, `IP`, `country`, `region`, `state`, `status`, `date`) VALUES
(1, 'Կամավոր', 'Գևորգ', 'Պերկուպերկյան', 'Կաևապետի', '28/09/1980', 'Հայ', 'ՀՀ', '+ (374) 77 30-18-87', 'perkuperkyan@gmail.com', 'Երևան', 'բարձրագույն', 'լուսանկարիչ', 'հեթանոս', 'ՍԴՀԿ', 'Չկա', 'ճիշտը դա Է', 'Էհհհհհհհհհհհհհհհհհհհհհ', 'էհհհհհհհհհհհ', '', '2pdnCS81tVVsG3slcLWEJQ==', '37.252.88.106', 'AM', 'Yerevan', 1, 1, '2020-04-24 03:17:46'),
(2, 'ՏՈԵՄ', 'Ռոլ', 'Ստեփանյան', 'Գևորգի', '02/07/1998', 'Հայ', 'Հոկտեմբերյանցի', '+ (374) 77 54-16-42', 'rol.stepanyan.2017@mail.ru', 'որտեղ տեղ կտան', 'յանի ԱԻՆ', 'ախռանիկ, մեկե չյօռտ զնայետ, պատվերով ավտոպահեստամաս', 'Իսլամ, язычество', '17 թիվներ,   մտամ ՍԴՀԿ', 'Dark Ravens', 'պռոստօ', 'փող', 'էտի ոշմեկ  չգիտի,', 'Հ.Գ. ապագայում  աղջիկ ըլնի մոտոյով կարամ ման տամ', '3osoMWd+f0t1sGRBiLr+DA==', '37.186.119.73', 'AM', 'Yerevan', 1, 1, '2020-05-02 17:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `ID` int(255) NOT NULL,
  `content_hy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(255) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`ID`, `content_hy`, `content_en`, `content_ru`, `group`, `parent`, `state`, `key`) VALUES
(1, '<p> Սոցիալ Դեմոկրատ Հնչակյան կուսակցությունը, որը հիմնադրվեց 1887թ. Ավետիս Նազարբեկյանի, Մարո Վարդանյան-Նազարբեկյանի, Գաբրիել Կաֆյանի, Ռուբեն Խանազատյանի և այլ առաջադեմ  ուսանողների կողմից հայ իրականության մեջ առաջին ազգային քաղաքական և սոցիալիստական կուսակցությունն է:</p>\r\n\r\n<p> Կուսակցությունը կարճ ժամանակահատվածում կարողացել է իր կազմակերպչական կառույցները ստեղծել ողջ Հայաստանում, աշխարհի բազմաթիվ հայահոծ քաղաքներում: ՍԴՀԿ-ն անցել է ակտիվ գործողությունների և դարձել ժամանակաշրջանի հայ ազգային-ազատագրական պայքարի առաջամարտիկն ու դրոշակակիրը: ՍԴՀԿ-ի անմիջական  նախաձեռնությամբ և ղեկավարությամբ են եղել Զեյթունի և Սասնո ապստամբությունները, Գում Գափուի և Բաբ Ալիի ցույցերը:</p>\r\n\r\n<p> Երիտթուրքերի` իշխանության գալուց հետո,  ՍԴՀԿ-ն  անցել է օրինական գործունեության որպես  ընդդիմադիր, սակայն վերջիններիս հայատյաց քաղաքականությունը ստիպեց կրկին զենք վերցնել և զինյալ պայքարի միջոցով հայ ազգի կյանքն ու իրավունքները պաշտպանել միայնակ, հաջողեց փրկել բազմաթիվ հայկական շրջանների բնակիչների ինքնապաշտպանական մարտեր կազմակերպելով: 1915թ.-ին սպանվում  է կուսակցության ղեկավար մարմնի մի մասը, սուլթան Բայազետ հրապարակում կախաղան են հանվում հայ անմար հերոսները` որոնց թվում  <b>Փարամազը, Վանիկը, դոկտոր Բեննեն ՝ Էնվերին, Ջեմալին և Թալեաթին</b> ոչնչացնելու ծրագրի մատնությամբ  … </p>\r\n\r\n<p> Մեծ Եղեռնից հետո Մայր կուսակցությունը  շարունակում է իր պայքարն Սարդարապատում և Կիլիկիայում՝ ունենալով Հնչակյան 6-րդ կամավորական գունդը Ռուսական կայսրության բանակի կազմում և «Հայկական լեգիոն»-ը Ֆրանսիական բանակի կազմում… </p>\r\n\r\n<p>...1990-ական թթ.-ներին ՍԴՀԿ մարտիկները «Փարամազ», «Մեծն Մուրադ»  կուսակցության հովանու տակ գործող և այլ ջոկատների կազմում իրենց զգալի ներդրումն են ունեցել Արցախյան ազատամարտում:\r\n          Այսօր ՍԴՀԿ-ն ներկայացված է աշխարհի բոլոր հայաշատ երկրներում: ՍԴՀԿ-ի հովանավորության տակ գործում են բազմաթիվ դպրոցներ և վարժարաններ, մշակութային և բարեգործական կազմակերպություններ, լոբբիստական կառույցներ, երիտասարդական և մարզական, սկաուտական միություններ:</p>', '', '', 'about', 0, 1, 'main_content'),
(2, 'Հավատարիմ գաղափարին այսօր և ընդմիշտ', 'Abide the idea today and forever', 'Верные идее сегодня и навеки', 'about', NULL, 1, 'slogan'),
(3, '<p>Սոցիալ Դեմոկրատ Հնչակյան Կուսակցությունն ազդարարում է, որ այն ազգային սոցիալ-դեմոկրատ կուսակցություն է,  իր գաղափարախոսության հիմքը ազգային ընկերվարությունն է, որի պատմական հիմքերից են մի կողմից  Միքայել Նալբանդյանի եւ Րաֆֆու ավանդած ուսմունքները, իսկ մեկ այլ կողմից մարքսիզմը (առայժմ բնության և հասարակության զարգացման օրենքներն ու օրինաչափությունները լուսաբանող միակ համապարփակ և գիտական աշխատությունը)։</p>\r\n\r\n<p>Վերլուծելով հասարակական զարգացման  նախորդ ողջ  ժամանակաշրջանը, ՍԴՀԿ-ն գտնում է , որ հավատարիմ մնալով սոցիալիզմի գաղափարներին , անհրաժեշտ է ստեղծագործաբար և արդիականացված ըմբռնել ու կիրառել մարքսիզմի հիմնադրույթները, իրերին, երևությներին դիտել ժամանակի պահանջներով: Այս առումով, հնչակյանները մերժում են մարքսիստական գաղափարների բացարձակացումները, դոգմատիզմը, մերժում են արմատական ծայրահեղ գործելակերպը: ՍԴՀԿ-ի գաղափարախոսության անկյունաքարը իրավական պետության մեջ դեմոկրատական օրինականության սահմաններում անցկացվելիք բարեփոխումների`ռեֆորմների օգնությամբ ազգային ժողովրդավարական ընկերվարական հասարակարգին անցնելու դրույթն է , որը պետք է դրվի կուսակցության ռազմավարության հիմքում:</p>\r\n\r\n<p>Այսօր սոցիալ-դեմոկրատական շարժումները առաջնորդելով ժողովրդական լայն զանգվածներին, այդ շարժումը նրանք դարձրել են ամենահզոր և հեղինակավոր քաղաքական ուժ ` բարեկեցիկ և առաջադեմ երկրների վերածելով իրենց հայրենի պետությունները, ինչպես Մեծ Բրիտանիայում, Գերմանիայում, Ֆրանսիայում, Սկանդինավյան պետություններում և այլուր:</p>\r\n\r\n<p>Համընդհանուր բարեկեցությունը, օրինականությունը, սոցիալական արդարությունը, ազատությունը, համերաշխությունը արդի սոցիալ-դեմոկրատիայի կարգախոսներն են, որոնք հոգեհարազատ են ՍԴՀԿ-ին և դրված են նրա գործունեության հիմքում:</p>', '', '', 'about', 0, 1, 'main_content_2'),
(4, 'Արդարություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_1'),
(5, 'Ազատություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_2'),
(6, 'Ազգայնություն, Հայրենասիրություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_3'),
(7, 'Անվճար և հասանելի առողջապահություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_4'),
(8, 'Իրավական և սոցիալական պետություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_5'),
(9, 'Դեմոկրատիա, քաղաքական և գաղափարական բազմազանություն, բազմակարծություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_6'),
(10, 'Տնտեսության բազմակացութաձևություն, սոցիալական ուղղուածության տնտեսություն, ճկուն տնտեսություն, ապակենտրոնացում', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_7'),
(11, 'Պետական ընդհանուր ապահովություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_8'),
(12, 'Սոցիալական համերաշխություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_9'),
(13, 'Պետական-ազգային անվտանգություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_10'),
(14, 'Անվճար և հասանելի կրթություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_11'),
(15, 'Հավասարություն, էգալիտարիզմ', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_12'),
(16, 'Տնտեսական դեմոկրատիա, մեկնարկային հավասարություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_13'),
(17, 'Աշխատանքային պայմանների բարելավում, արժանապատիվ աշխատանք', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_14'),
(18, 'Արդարություն', 'Justice', 'Справедливость', 'about', 0, 1, 'about_list_15'),
(19, '', 'FaceBook', '', 'social_networks', NULL, 1, NULL),
(20, '', 'YouTube', '', 'social_networks', NULL, 1, NULL),
(21, '', 'Instagram', '', 'social_networks', NULL, 1, NULL),
(22, '', 'Vkontakte', '', 'social_networks', NULL, 1, NULL),
(23, '', 'Signal', '', 'social_networks', NULL, 1, NULL),
(24, '', 'Zoom', '', 'social_networks', NULL, 1, NULL),
(25, '', 'Whatsup', '', 'social_networks', NULL, 1, NULL),
(26, '', 'Whatsup', '', 'social_networks', NULL, 1, NULL),
(27, '', 'Viber', '', 'social_networks', NULL, 1, NULL),
(28, '', 'Youtube', '', 'social_networks', NULL, 1, NULL),
(29, '', 'Google', '', 'social_networks', NULL, 1, NULL),
(30, '', 'max_online', '', 'online', 0, 1, '14'),
(31, '', 'max_online_day', '1589132607', 'online', 0, 1, '3'),
(32, '<ol>\r\n<li style=\"font-weight: 400;\"><strong>Գաղափարական հիմնադրույթներ.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">Սոցիալ Դեմոկրատ Հնչակյան Կուսակցությունն ազդարարում է, որ այն ազգային սոցիալ-դեմոկրատ կուսակցություն է,&nbsp; իր գաղափարախոսության հիմքը ազգային ընկերվարությունն է, որի պատմական հիմքերից են մի կողմից Միքայել Նալբանդյանի եւ Րաֆֆու ավանդած ուսմունքները, իսկ մեկ այլ կողմից սոցիալիզմը։</span></p>\r\n<p><span style=\"font-weight: 400;\">Վերլուծելով հասարակական զարգացման&nbsp; նախորդ ողջ ժամանակաշրջանը, ՍԴՀԿ-ն գտնում է , որ հավատարիմ մնալով սոցիալիզմի գաղափարներին , անհրաժեշտ է ստեղծագործաբար և արդիականացված ըմբռնել ու կիրառել մարքսիզմի հիմնադրույթները, իրերին, երևությներին դիտել ժամանակի պահանջներով: Այս առումով, հնչակյանները մերժում են մարքսիստական գաղափարների բացարձակացումները, դոգմատիզմը, մերժում են արմատական ծայրահեղ գործելակերպը: ՍԴՀԿ-ի գաղափարախոսության անկյունաքարը իրավական պետության մեջ դեմոկրատական օրինականության սահմաններում անցկացվելիք բարեփոխումների`ռեֆորմների օգնությամբ ազգային, ժողովրդավարական, ընկերվարական հասարակարգին անցնելու դրույթն է , որը պետք է դրվի կուսակցության ռազմավարության հիմքում :&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">Իր գաղափարախոսության հիմքում դնելով ազգային սոցիալ-դեմոկրատիայի արժեքները, հաշվի առնելով նոր պայմաններում քաղաքական պայքարի առանձնահատկությունները ՍԴՀԿ-ն որդեգրում է հետևյալ սկզբունքները.</span></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><strong><strong>Արդարություն.</strong></strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Ազատություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Սոցիալական համերաշխություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Ազգայնություն, Հայրենասիրություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Պետական-ազգային անվտանգություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Անվճար եւ հասանելի առողջապահություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Անվճար եւ հասանելի կրթություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Իրավական եւ սոցիալական պետություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Հավասարություն, Էգալիտարիզմ.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Դեմոկրատիա, քաղաքական եւ գաղափարական բազմազանություն, բազմակարծություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Տնտեսական դեմոկրատիա, մեկնարկային հավասարություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Տնտեսության բազմակացութաձեւություն, սոցիալական ուղղուածության տնտեսություն, ճկուն տնտեսություն, ապակենտրոնացում.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Մարդու իրավունքների պաշտպանություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Պետական ընդհանուր ապահովություն.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Աշխատանքային պայմանների բարելավում, արժանապատիվ աշխատանք.</strong></li>\r\n</ul>\r\n<ul>\r\n<li><strong>Բնության եւ շրջակա միջավայրի նկատմամբ հոգածություն։</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<ol>\r\n<li style=\"font-weight: 400;\"><strong>Արդարություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Արդարությունը Սոցիալ Դեմոկրատ Հնչակյանները դիտում են որպես այնպիսի հասարակական հարաբերություններ, որոնք յուրաքանչյուր քաղաքացու հնարավորություն են տալիս հավասար պայմաններում ապրել ու աշխատել, ուսում ստանալ ու բուժվել, տնտեսական, մշակութային գործունեություն ծավալել, ունենալ նույն սոցիալական ապահովվածությունը: Արդար չի կարող լինել այն հասարակարգը, որտեղ մարդկանց մի մասը մյուսին զրկում է աշխատելու և ստեղծագործելու հնարավորությունից:</span></p>\r\n<p><span style=\"font-weight: 400;\">Երբ եկամուտների և ունեցվածքի անհավասար բաշխումը հասարակությունը բաժանում է երկու խմբերի՝ մեկը, որ տալիս է, իսկ մյուսը, որ ստանում է հրահանգներ՝ սահմանափակվում են օրինական հավասար իրավունքները և անխուսափելիորեն առաջ է գալիս անարդարություն: Այդ իսկ պատճառով արդարությունը պահանջում է եկամուտների, ուժի և սեփականության արդարացի բաշխում:</span></p>\r\n<p><span style=\"font-weight: 400;\">Նվաճումները պետք է ընդունվեն և հարգվեն: Նվաճումների վրա հիմնված եկամուտների և սեփականության բաշխումը արդարացի բաշխում է: Սեփականության իրավունքն իր հետ բերում է նաև պարտականություններ: Նրանք, ովքեր ունեն մեծ եկամուտ կամ ավելի շատ սեփականություն, քան մյուսները, պետք է նաև ավելի մեծ ներդրում ունենան հասարակության բարեկեցության գործում:&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"2\">\r\n<li><strong> Ազատություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Ազատությունը սոցիալ-դեմոկրատիան դիտում է առաջին հերթին որպես անձի ազատություն, երբ յուրաքանչյուր քաղաքացի հասարակական կյանքի ցանկացած ոլորտում ունի ընտրության ու ինքնորոշման իրավունք: Հասարակության մի մասի ազատություններն ու իրավունքները չպետք է ոտնահարեն մյուս հատվածների ազատություններն ու իրավունքները: Անձի ազատության իրականացումը կապված է դեմոկրատիայի և սոցիալական արդարության հետ:</span></p>\r\n<p><span style=\"font-weight: 400;\">Ազատությունը ենթադրում է ինքնորոշում, յուրաքանչյուր ոք ունի ազատության իրավունք եւ կարողություն։ Սակայն անհատը կարո՞ղ է ապրել այդպես՝ այդ կախված է հասարակությունից։&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">Յուրաքանչյուր ոք պետք է ապրի առանց նվաստացնղ կախվածության, կարիքի ու վախի եւ պետք է հնարավորություն ունենա իրացնել իր հնարավորությունները, մասնակցել հասարակական եւ քաղաքական կյանքին։ Անհատը կարող է օգտագործել իր ազատությունը միայն այն ժամանակ, երբ վստահ է, որ ունի համապատասխան սոցիալական ապահովություն:</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"3\">\r\n<li><strong> Սոցիալական համերաշխություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Իր սոցիալական բնույթով լինելով ազգային ընկերվարական կուսակցություն, ՍԴՀԿ-ն վճռականապես մերժում է նեղ դասակարգային դիրքերից ելնող քաղաքականությունը, դեմ է դասակարգային հակամարտությանը և թշնամանքի բորբոքմանը, կողմ է ընկերային համերաշխությանն ու համագործակցությանը, քաղաքացիական համերաշխությանը:</span></p>\r\n<p><span style=\"font-weight: 400;\">Համերաշխություն նշանակում է երկկողմ կապվածություն, պատկանելություն և օգնություն: Սա ենթադրում է պատրաստակամություն պաշտպանելու և օգնելու միմյանց, ուժեղներին և թույլերին, սերունդներին և ժողովուրդներին: Համերաշխությունը մեծ ուժ է, որը հասարակության անդամներին կապում է միմյանց՝ պատրաստակամ միմյանց օգնելու: Այն ունի ընդհանուր կանոններ, և բարեկեցիկ պետությունն իր մեջ ներառում է քաղաքականապես երաշխավորված և կազմակերպված համերաշխություն:</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"4\">\r\n<li><strong> Ազգայնություն, Հայրենասիրություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">&ndash;Հայաստանը դարձնել կայուն, դեմոկրատական, տնտեսապես զարգացած, հեղինակավոր, ուժեղ և արդար պետություն, որտեղից հայերը այլևս չեն արտագաղթի: Հայաստանը գործնականորեն վերածել համայն հայության տան, ստեղծել զանգվածային ներգաղթի պայմաններ։ Հայաստանը երաշխավորն է հայ մարդու կյանքի, ինչքի, հայ մշակույթի, լեզվի եւ հայ ազգի բնականոն կենսագործունեության աշխարհի յուրաքանչյուր կետում։ Այս է հայրենասիրության եւ ազգայնության մասին կուսակցության գաղափարախոսության էությունը:</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong>5.Անվճար և հասանելի կրթություն.</strong></p>\r\n<p><span style=\"font-weight: 400;\">-Սոցիալ-դեմոկրատիայի սկզբունքը կրթության ոլորտում կայանում է կրթական հնարավորությունների հավասարության վրա անկախ անձի բնակության վայրից և նյութական հնարավորություններից։ Կրթական համակարգի դերը կայանում է շուկայական տնտեսության հետեւանքով առաջացած անհավասարությունների շտկման&nbsp; և ոչ դրա ավելի խորացման մեջ։&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"6\">\r\n<li><strong> Իրավական և սոցիալական պետություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Բազմակացութաձև տնտեսությունը ծնում է բազմաշերտ սոցիալական համակարգ և առաջացնում է հասարակական շահերի բախում: Ապահովել այդ շահերի համամասնությունը կարող է միայն սոցիալական կողմնորոշում ունեցող իրավական պետությունը: Իրավական պետությունը ՍԴՀԿ-ն դիտում է որպես այնպիսի քաղաքական համակարգ, որն ապահովում է օրենքի գերակայությունը և իշխանության երեք թևերի(օրենսդիր, գործադիր, դատական) անկախ ու ներդաշնակ գործունեությունը:</span></p>\r\n<p><span style=\"font-weight: 400;\">ՍԴՀԿ-ի այս գաղափարական դրույթները դրվելու են կուսակցության ծրագրային գործունեության հիմքում և նրա կոնկրետ խնդիրները տնտեսական, արտաքին և ներքին քաղաքականության տարբեր բնագավառներում չպետք է հակասեն կուսակցության գաղափարախոսությանը:</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"7\">\r\n<li><strong> Հավասարություն, Էգալիտարիզմ.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">&ndash;Հավասարությունը կարող է լինել միայն իրավահավասարություն, երբ բոլոր քաղաքացիները իրական կյանքում ունեն և օգտվում&nbsp; են հավասար իրավունքներից։ Չկան ընտրյալներ և արտոնյալներ, այլ միայն հասարակության իրավահավասար անդամներ։</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"8\">\r\n<li><strong> Դեմոկրատիա, քաղաքական և գաղափարական բազմազանություն, բազմակարծություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Հասարակության քաղաքական համակարգի հիմքը պետք է լինի ժողովրդաիշխանությունը, որը երաշխավորում է յուրաքանչյուր քաղաքացու հավասար պայմաններում , ուղղակիորեն կամ իր ընտրած ներկայացուցիչների միջոցով, մասնակցությունը պետական-հասարակական կյանքին:&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"9\">\r\n<li><strong> Տնտեսական դեմոկրատիա, մեկնարկային հավասարություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">&ndash;Այն համակարգը, որտեղ քաղաքացիների մի մասը տնտեսապես գերիշխում է մյուսների վրա, պետական լծակներով յուրացնում ուրիշի աշխատանքով ստեղծված արդյունքները, չի կարող լինել իրական ժողովրդավարություն: Միայն այն մարդը կարող է իրականացնել իր կամքը, ով ունի աշխատանքի և տնտեսական գործունեության իրավունք և զրկված չէ արտադրված հասարակական արդյունքների իր մասնաբաժնի սպառման հնարավորությունից:</span></p>\r\n<p><span style=\"font-weight: 400;\">Քաղաքական դեմոկրատիան անհնար է առանց տնտեսական դեմոկրատիայի:</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"10\">\r\n<li><strong> Տնտեսության բազմակացութաձևություն, սոցիալական ուղղուածության տնտեսություն, ճկուն տնտեսություն, ապակենտրոնացում.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Սոցիալիստական հասարակարգին կարելի է հասնել միայն տնտեսական զարգացածությամբ և բարեկեցության բարձր մակարդակով: Այն կարող է ապահովվել, ինչպես ցույց է տալիս մի շարք երկրների օրինակ , սեփականության բոլոր առկայությամբ և նրանց միջև սոցիալ-շուկայական հարաբերություններով ու մրցակցությամբ, եթե դրանք անհարիր չեն ազգային նկարագրին և չեն սպառնում ազգային, պետական անվտանգությանը:&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">Մարտավարական նշանակության օբյեկտների և ռեսուրսների ազգայնացումը հասարակական վերահսկողությամբ կարող է հանդիսանալ օրվա հրամայական։</span></p>\r\n<p><span style=\"font-weight: 400;\">Մեր մոտեցումը հետևյալն է.&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">Մրցակցություն այնքան, որքան հնարավոր է, պետության կողմից կարգավորում այնքան, ինչքան անհրաժեշտ է։</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"11\">\r\n<li><strong> Մարդու իրավունքների պաշտպանություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">&nbsp;-Հզոր և բարեկեցիկ է այն պետությունը, որտեղ պաշտպանված և ապահոված են մարդու իրավունքները՝ անկախ սեռից, տարիքից և այլ հատկանիշներից, որտեղ մարդը լիարժեք անդամն է հասարակության։ Պետության հիմնային պարտականություններից է հսկել, պաշտպանել քաղաքացիների և մարդկանց իրավունքները, հոգ տանել նրանց մասին՝ ակնկալելով հոգատարություն քաղաքացու կողմից պետության նկատմամբ։</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"12\">\r\n<li><strong> Պետական ընդհանուր ապահովություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Չկա ավելի ջերմ զգացում, քան տան ընտանեկան միջավայրը, որտեղ քեզ համար հոգում են և ինքդ հոգում ես այլոց համար, որտեղ յուրայինների շարքում ես։</span></p>\r\n<p><span style=\"font-weight: 400;\">ՍԴՀԿ-ն ձգտում է, որ մեզ բոլորիս մոտ այդ զգացումը լինի հայկական պետականության մեջ։ Ամեն ծնված երեխա սպասված է և ստեղծված են լիարժեք կյանքի բոլոր պայմանները նրա համար։ Տարեցների ներդրումը գնահատվում է ըստ արժանավույնս։ Հատուկ կարիքներով մարդիկ իրենց զգում են այնքան անհրաժեշտ, որքան և հասարակության մյուս անդամները։ Եւ հասարակության որեւէ անդամ զրկված չպիտի մնա համընդհանուր բարիքներից ու անհրաժեշտություններից ֆինանսական պատճառներով։</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"13\">\r\n<li><strong> Աշխատանքային պայմանների բարելավում, արժանապատիվ աշխատանք.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Աշխատանքն հանդիսանում է միջոց և ոչ նպատակ, իսկ աշխատակիցը հանդիսանում է գործատուի գործընկերը և ոչ ծառան։ Աշխատանքը միջոց է ապրուստի ապահովման և բարեկեցիկ միջավայրի ստեղծման։&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">Մեր քաղաքականության նպատակակետն է, որպեսզի Հայաստանում ապահովված լինի զբաղվածության բարձր մակարդակ և աշխատանքի արժանապատիվ վարձատրություն։&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<ol start=\"14\">\r\n<li><strong> Բնության և շրջակա միջավայրի նկատմամբ հոգածություն.</strong></li>\r\n</ol>\r\n<p><span style=\"font-weight: 400;\">-Շահառուների անբարեխիղճ վերաբերմունքը և օր օրի աճող հանքերը, բնության հաշվին գումար վաստակելու ձգտումը նպաստում են անտառների և շրջակա կենսոլորտի վնասմանը, վերացմանը։ Մենք պարտավոր ենք հոգ տանել մեր բնությանը և շրջակա միջավայրին հանուն մեր ապագա սերունդների, ուստի Սոցիալ Դեմոկրատ Հնչակյան կուսակցությունը գտնում է, որ հնարավոր է գտնել խնդրի լուծման տարբերակներ զարգացնելով էներգետիկ ոլորտը այլընտրանքային և վերականգնողական էներգետիկայի զարգացման միջոցով։</span></p>', '', '', 'philosophy', 1, 1, 'main');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `title_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_1` text COLLATE utf8mb4_unicode_ci,
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ID` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ID`, `title_1`, `title_2`, `title_3`, `content_1`, `IP`, `group`, `key`, `user_ID`, `state`, `date`) VALUES
(1, 'Անդամակցության հայտի հաստատում', '', '', NULL, '46.71.36.155', 'joiners', '1', 4056, 'Հաջողությամբ', '2020-04-26 19:51:41'),
(2, 'Նոր կատեգորիա', 'Հայտարարություններ', '', NULL, '195.250.79.117', 'categories', '35', 4523, 'Հաջողությամբ', '2020-04-28 10:19:13'),
(3, 'Կատեգորիայի հեռացում', '', '', NULL, '195.250.79.117', 'categories', '35', 4523, 'Հաջողությամբ', '2020-04-28 10:26:09'),
(4, 'Նոր կատեգորիա', 'ՏՈԵՄ Հայտարարություններ', '', NULL, '195.250.79.117', 'categories', '36', 4523, 'Հաջողությամբ', '2020-04-28 10:26:47'),
(5, 'Նկարի կցում', '', '', NULL, '195.250.79.117', 'newsfeed', '40', 4523, 'Հաջողությամբ', '2020-04-28 10:30:33'),
(6, 'Նոր հոդված', '', '', NULL, '195.250.79.117', 'newsfeed', NULL, 4523, 'Հաջողությամբ', '2020-04-28 10:30:33'),
(7, 'Նկարի հեռացում', '', '', NULL, '195.250.79.117', 'newsfeed', '40', 4523, 'Հաջողությամբ', '2020-04-28 10:33:34'),
(8, 'Նկարի կցում', '', '', NULL, '195.250.79.117', 'newsfeed', '40', 4523, 'Հաջողությամբ', '2020-04-28 10:33:47'),
(9, 'Նոր կատեգորիա', '«Հնչակ» պատմական', '', NULL, '195.250.79.117', 'categories', '37', 4056, 'Հաջողությամբ', '2020-04-28 18:20:29'),
(10, 'Նկարի կցում', '', '', NULL, '195.250.79.117', 'newsfeed', '41', 4056, 'Հաջողությամբ', '2020-04-28 18:22:13'),
(11, 'Նոր հոդված', '', '', NULL, '195.250.79.117', 'newsfeed', NULL, 4056, 'Հաջողությամբ', '2020-04-28 18:22:13'),
(12, 'Նկարի կցում', '', '', NULL, '195.250.79.117', 'newsfeed', '42', 4056, 'Հաջողությամբ', '2020-04-28 18:42:14'),
(13, 'Նոր հոդված', '', '', NULL, '195.250.79.117', 'newsfeed', NULL, 4056, 'Հաջողությամբ', '2020-04-28 18:42:14'),
(14, 'Նկարի կցում', '', '', NULL, '195.250.79.117', 'newsfeed', '43', 4056, 'Հաջողությամբ', '2020-04-28 19:35:22'),
(15, 'Նոր հոդված', '', '', NULL, '195.250.79.117', 'newsfeed', NULL, 4056, 'Հաջողությամբ', '2020-04-28 19:35:22'),
(16, 'Նկարի կցում', '', '', NULL, '37.186.72.130', 'newsfeed', '44', 4056, 'Հաջողությամբ', '2020-04-29 08:23:15'),
(17, 'Նոր հոդված', '', '', NULL, '37.186.72.130', 'newsfeed', NULL, 4056, 'Հաջողությամբ', '2020-04-29 08:23:15'),
(18, 'Նկարի կցում', '', '', NULL, '37.186.72.130', 'newsfeed', '45', 4056, 'Հաջողությամբ', '2020-04-29 13:35:00'),
(19, 'Նոր հոդված', '', '', NULL, '37.186.72.130', 'newsfeed', NULL, 4056, 'Հաջողությամբ', '2020-04-29 13:35:00'),
(20, 'Անդամակցության հայտի հաստատում', '', '', NULL, '46.241.182.48', 'joiners', '2', 4056, 'Հաջողությամբ', '2020-05-02 13:49:03'),
(21, 'Նամակագրության տարածում', '', '', NULL, '46.241.182.48', 'newsletter', '0', 4056, 'Հաջողությամբ', '2020-05-02 13:51:36'),
(22, 'Նամակագրության տարածում', '', '', NULL, '46.241.182.48', 'newsletter', '0', 4056, 'Հաջողությամբ', '2020-05-02 13:55:09'),
(23, 'Նամակագրության տարածում', '', '', NULL, '46.241.182.48', 'newsletter', '0', 4056, 'Հաջողությամբ', '2020-05-02 13:59:22'),
(24, 'Նամակագրության տարածում', '', '', NULL, '46.241.182.48', 'newsletter', '0', 4056, 'Հաջողությամբ', '2020-05-02 14:09:47'),
(25, 'Նամակագրության տարածում', '', '', NULL, '46.241.182.48', 'newsletter', '0', 4056, 'Հաջողությամբ', '2020-05-02 14:10:31'),
(26, 'Նկարի կցում', '', '', NULL, '46.241.182.48', 'users', '4056', 4056, 'Հաջողությամբ', '2020-05-03 12:07:55'),
(27, 'Նկարի հեռացում', '', '', NULL, '46.241.182.48', 'users', '4056', 4056, 'Հաջողությամբ', '2020-05-03 12:12:12'),
(28, 'Նամակագրության տարածում', '', '', NULL, '37.186.72.130', 'newsletter', '0', 4523, 'Հաջողությամբ', '2020-05-04 17:52:37'),
(29, 'Նկարի կցում', '', '', NULL, '37.186.72.130', 'users', '4523', 4523, 'Հաջողությամբ', '2020-05-04 17:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `logs_login`
--

CREATE TABLE `logs_login` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ID` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs_login`
--

INSERT INTO `logs_login` (`ID`, `title`, `IP`, `user_ID`, `date`, `country`, `region`, `key`) VALUES
(68, 'Ադմինիստրատորի մուտք', '31.47.197.196', 40, '2020-04-20 11:41:50', 'AM', 'Yerevan', 'admin_login'),
(69, 'Ադմինիստրատորի մուտք', '37.186.87.129', 45, '2020-04-21 14:15:28', 'AM', 'Yerevan', 'admin_login'),
(70, 'Ադմինիստրատորի մուտք', '37.186.87.129', 40, '2020-04-21 14:45:53', 'AM', 'Yerevan', 'admin_login'),
(71, 'Ադմինիստրատորի մուտք', '37.186.87.129', 45, '2020-04-22 08:20:00', 'AM', 'Yerevan', 'admin_login'),
(72, 'Ադմինիստրատորի ելք', '37.186.87.129', 45, '2020-04-22 08:22:29', 'AM', 'Yerevan', 'admin_logout'),
(73, 'Ադմինիստրատորի մուտք', '37.186.87.129', 45, '2020-04-22 08:22:43', 'AM', 'Yerevan', 'admin_login'),
(74, 'Ադմինիստրատորի ելք', '37.186.87.129', 45, '2020-04-22 08:23:38', 'AM', 'Yerevan', 'admin_logout'),
(75, 'Ադմինիստրատորի մուտք', '37.186.87.129', 4056, '2020-04-22 17:38:48', 'AM', 'Yerevan', 'admin_login'),
(76, 'Ադմինիստրատորի մուտք', '37.186.87.129', 4523, '2020-04-22 17:42:03', 'AM', 'Yerevan', 'admin_login'),
(77, 'Ադմինիստրատորի ելք', '37.186.87.129', 4523, '2020-04-22 17:42:03', 'AM', 'Yerevan', 'admin_logout'),
(78, 'Ադմինիստրատորի մուտք', '37.186.87.129', 4523, '2020-04-22 17:42:12', 'AM', 'Yerevan', 'admin_login'),
(79, 'Ադմինիստրատորի ելք', '37.186.87.129', 4523, '2020-04-22 17:43:17', 'AM', 'Yerevan', 'admin_logout'),
(80, 'Ադմինիստրատորի մուտք', '37.186.87.129', 4523, '2020-04-22 17:43:23', 'AM', 'Yerevan', 'admin_login'),
(81, 'Ադմինիստրատորի ելք', '37.186.87.129', 4523, '2020-04-22 17:43:52', 'AM', 'Yerevan', 'admin_logout'),
(82, 'Ադմինիստրատորի մուտք', '37.186.87.129', 4523, '2020-04-22 17:43:58', 'AM', 'Yerevan', 'admin_login'),
(83, 'Ադմինիստրատորի մուտք', '46.71.36.155', 4056, '2020-04-26 19:49:06', 'AM', 'Yerevan', 'admin_login'),
(84, 'Ադմինիստրատորի մուտք', '195.250.79.117', 4523, '2020-04-28 10:12:02', 'AM', 'Yerevan', 'admin_login'),
(85, 'Ադմինիստրատորի մուտք', '195.250.79.117', 4056, '2020-04-28 12:09:07', 'AM', 'Yerevan', 'admin_login'),
(86, 'Ադմինիստրատորի մուտք', '195.250.79.117', 4523, '2020-04-28 12:15:29', 'AM', 'Yerevan', 'admin_login'),
(87, 'Ադմինիստրատորի մուտք', '46.241.182.48', 4056, '2020-05-02 07:30:05', 'AM', 'Yerevan', 'admin_login'),
(88, 'Ադմինիստրատորի մուտք', '37.252.75.40', 4523, '2020-05-04 11:05:16', 'AM', 'Yerevan', 'admin_login'),
(89, 'Ադմինիստրատորի մուտք', '37.186.72.130', 4523, '2020-05-04 17:45:52', 'AM', 'Yerevan', 'admin_login'),
(90, 'Ադմինիստրատորի մուտք', '37.186.72.130', 4523, '2020-05-04 17:48:32', 'AM', 'Yerevan', 'admin_login');

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed`
--

CREATE TABLE `newsfeed` (
  `ID` int(255) NOT NULL,
  `title_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_hy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `content_ru` text COLLATE utf8mb4_unicode_ci,
  `category_ID` int(255) NOT NULL,
  `author_ID` int(255) NOT NULL,
  `pubdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(255) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsfeed`
--

INSERT INTO `newsfeed` (`ID`, `title_hy`, `title_en`, `title_ru`, `content_hy`, `content_en`, `content_ru`, `category_ID`, `author_ID`, `pubdate`, `views`, `state`, `featured`) VALUES
(38, 'Սոցիալ Դեմոկրատ Հնչակեան կուսակցութեան կեդրոնական օրգան ՀՆՉԱԿ-ի առաջին թիւի խմբագրականը', '', '', 'Երբ որ տեսնում ենք, ծանոթացած թուրքի անարգ շղթաներով, աշխարհիս մէկ անկիւնում՝ մենակ ու որբացած, հայ ժողովրդային մասսան, ընդհանրութիւնը դարերի ընթացքում ողբում, ճնշւում, հարստահարւում, հալածւում. մի բուռն ցանկութիւն, մէկ անկեղծ միտք ծագում է մեր մէջ այդ ժամանակ, առաջացնել հայ ժողովրդի փրկութեան խնդիրը, փաստաբանել ու պաշտպանել այդ խնդիրը եւ պատերազմիլ այդ խնդրի համար:\r\nՈւնենալ ազատ խօսք, իբրև միջոց ազատաբար դիտելու ու քննելու թիւրքահայ ժողովրդային ընդանրության կեանքի կողմները, հրապարակ հանելու այն բոլոր թշուառութիւնները, որ վաղուց դարձել են նրա միակ բաժինը եւ մատնանիշ անելու այդ ժողովրդի կոչումը, որոշելու այն միջոցներն ու նպատակները, որոնք պիտի տանին նրան դէպի մէկ ապահով կեանք, դէպի մի կեանք, որ միջոց կ’ունենայ ազատ կերպով զարգանալու եւ ծաղկելու. ահա ընդհանուր խօսքերով, այս հրատարակութեան շարժառիթները:\r\nԼինել միշտ ճնշուածի կողմը եւ դէմ ճնշողին, արդարութեան պաշտպանութեան տակ անցնել, մարտնչելով անարդարութեան դէմ, ազատութեան անձնուէր եւ բռնութիւնն հալածող լսող խելքի ձայնին եւ թշնամի նախապաշարմունքներին, լինել զարգացող ժողովուրդների կողմը եւ դէմ՝ փտած կառավարութիւնների, ահա մեր նշանաբանը, ուղղությունը ու պարտականութիւնը:\r\n\r\nԹիւրքա-Հայաստանի հայ ժողովուրդի վերաբերութեամբ մենք այն խորին համոզումն ունինք, որ պէտք, որ է անպատճառ շուտով ջարդուին նրան առաջադիմել արգիլող ամրապինդ շղթաները եւ նա ունենայ ՔԱՂԱՔԱԿԱՆ ԱՆԿԱԽՈՒԹԻՒՆ, իբրեւ անհրաժեշտ պայման նրա կյանքի ապահովության եւ նրա բազմադիմի զարգացման համար:\r\nՍակայն ասելով քաղաքական անկախութիւն, մենք դա չենք համարում այնպիսի վերջնական կէտ, որը կարող կը լինի բաւարարութիւն տալ նրա կեանքի բոլոր պահանջներին, որից աւելին իւր ողջ գոյութեան ժամանակ նա էլ պէտք չունենայ: Ո՛չ, քաղաքական անկախութիւնը հայ ժողովրդի համար պիտի համարուի լոկ այն անհրաժեշտ պայմաններից մէկը, որի իրագործումից յետոյ միայն բացւում է ասպարեզ հայ ժողովրդի քաղաքական ու սոցեալ-տնտեսական կեանքի մէջ մտնելու համար մի երկայն շարք հիմնաւոր, արմատական վերանորոգումներ: Քաղաքական անկախութեան իրագործումից յետոյ հայ ժողովուրդը պէտք է դիմէ դէպի կեանքի այնպիսի կերպերը, որոնց գոյութեամբ ամէնքը եւ իւրաքանչիւրը ազատ լինի, ամէնքն իրար հաւասար ու եղբայր ճանաչեն, որոնց գոյութեամբ ճշմարիտ ուղի բացուէ եւ հաստատ հիմք լինի ընդհանրութեան մտաւոր, բարոյական ու աֆֆեկդական լիակողմանի զարգացման համար:\r\nԹիւրքահայերի անկախութեան իրագործումը լոկ ԴՐՍԻՑ չէ կարող լինէր՝ այլ լոկ ՆԵՐՍԻՑ է նա կարող յաջողութիւն ունենալ: Եթէ եւրոպական տէրութիւնների միջամտութիւնը ապահովենք եւ մեր ձեռքերը ծալենք, հայ ժողովուրդը առաւել անտանելի թշվառութիւնների մէջ կը խորասուզուէ: Ճիշտ է, որ կարող են առաջանալ քաղաքական մեքենաների այնպիսի իրարանցումներ, որ եւրոպական այս կամ այն տէրութեան համար նոյն ժամանակին շահավէտ կը լինի բարձրացնել հայկական խնդիրը եւ նրա բաւարար իրագործումն ուղղակի կամ անուղղակի կերպով պահանջել, սակայն այդպիսի առիթները մեզ աւելի կը հասկացնեն՝ ինչպէս արդէն եղել է, որ պէտք էր կանխապէս պատրաստ լինենք՝ դրանից օգտուելու համար: Եւ այդու ամենայնիւ աւելացնում ենք, որ այժմեան քաղաքականութիւնը, դիպլոմատիան, նմանում է քամու ջրաղացին. այսօր այն կողմն է նա շրջւում, որ կողմ որ քամին է իր շունչն ուղղում, իսկ վաղը ջաղացը կարող է նոյն քամու քմհաճոյքով եւ հակառակ կողմը պտտուել:\r\n\r\n \r\n\r\nԱյսպիսի խարխուլ հողի վրայ մենք չենք կարող դնել այնպիսի սուրբ ու ծանրակշիռ գործի առողջութեա հիմքը, որպիսին ժողովրդական գործն է: Այդ գործին հարկաւոր է մի հիմք, որ յենուած լինի հաստատ ու ամուր հողի վրայ. այդպիսի հող նոյն ինքը թիւրքահայ ընդհանրութիւնն է, նոյն ինքը թիւրքահայ ժողովուրդն է: ԹԻՒՐՔԱՀԱՅ ԺՈՂՈՎՐԴԻ ԴՐՈՒԹԵԱՆ ՀԻՄԱԿՈՒԱՅ ԾԱՆՐ ՊԱՐԱԳԱՆԵՐՈՒՄ ՄԱՍՍԱՅԻՆ ՇԱՐԺՈՒՄԸ, ԲՌՆԻ ՍՏԻՊՈՂԱԿԱՆ ՄԻՋՈՑՆԵՐՆ, ԱՊՍՏԱՄԲԱԿԱՆ, ՅԵՂԱՓՈԽԱԿԱՆ ՍՊԱՌՆԱԼԻՔՆԵՐԸ ԹՈՒՐՔ ԿԱՌԱՎԱՐՈՒԹԵԱՆ ԴԷՄ, ՆՊԱՏԱԿԱՅԱՐՄԱՐ ԵՆ ԵՒ ՄԻԱՆԳԱՄԱՅՆ ԱՆՀՐԱԺԵՇՏ, եթէ միայն միլիոնաւոր ժողովրդի մօտալուտ կորուստը սարսափ չէ ազդում նոյն իրեն կոչող հայ ընդհանրութեան եւ գլխաւորապէս հայ կրթուած ու հասկացող դասակարգի վրայ: Եւ ահա դէպի այդ դասակարգն ենք մենք դիմում եւ առաւելապէս դէպի այդ դասակարգի երիտասարդութիւնը, լինի նա ռուսահայ, թիւրքահայ, պարսկահայ՝ ողջ մէկ է. դրանք ամէնքը եղբայր են եւ մենք դրանց մէջ ոչ մի զանազանութիւն չենք դնում ժողովրդական գործի վերաբերմամբ. դիմում ենք դէպի այդ դասակարգը, յայտնելով որ ժողովուրդն առանց նրա աջակցութեան՝ թէ կաղ, թէ կոյր եւ թէ տհաս է իր վսեմ դատը պաշտպանելու համար. դիմում ենք դէպի նրան, կոչելով որ լոկ նրա եռանդը, նրա խօսքը, նրա ոյժը կարող են բարձրացնել թիւրքահայ ընդհանրութեան խեղդուած ոգին եւ ժողովրդի ոտների տակ պատրաստել հաստատուն հող կարեւոր յեղափոխական գործի յաջողութեան համար: Այդ պատճառով իւրաքանչիւր մտածող, ազնիւ ու ժողովրդին սիրող հայի նշանաբանն ու գործունեութիւնը մենք համարում ենք՝ ԺՈՂՈՎՐԴԻ ՄԷՋ, ԺՈՂՈՎՐԴԻՆ ՀԵՏ ԵՒ ԺՈՂՈՎՐԴԻ ՀԱՄԱՐ:\r\nԱյս նշանաբանն ունեցող հայերի օրգանը պէտք է լինի սոյն հրատարակութիւնը, որի պարտքն է եւ որոշ ծրագիրը բացատրել ու հաստատել, որ հայ ժողովրդական գործը լոկ յեղափոխականութեամբ է կարող աջող ելք ունենալ, ընտրել գործնական միջոցներ յեղափոխութիւն անելու համար եւ որոշել նրա մօտակայ նպատակները:\r\nԸնդհանրապէս հայերիս այժմեան դրութեան մէջ ազատ խօսքը մէկ անհրաժեշտութիւն, մի պահանջ է եւ միեւնոյն ժամանակ նպատակայարմար, միայն թէ այդ խօսքն ունենայ կենդանութիւն, թարմութիւն ու լրջութիւն: Մասնաւորապէս ազատ խօսքը մի պահանջ է այն հայերի համար, որոնց կեանքի նպատակը չէ ամենեւին բաւականանալ անձնական կամ մի նեղ շրջանի շահերով ու ապահով կացութեամբ, այլ որոնց սրտում կայ մէկ ուրիշ իղձ, մէկ ուրիշ յափշտակութիւն, այն է՝ գործել ու բանել ժողովրդի տանջանքով ու չարչարանքով եւ ազատ խօսքը շրթներին՝ պահանջել ժողովրդի բարին, բողոքելով չարի դէմ:\r\nԱյո՛, չարչարուած ու հալածուած զաւակներ, չարչարուած ու հալածուած հայեր՝ մենք, հայերս, ծարաւն ունինք ազատ խօսելու, ազատ մտածելու, որ դեռ մանկութիւնից յանուն բռնակալի օրէնքին, արգելել են մեզ, աշխատելով զրկել մեզ ինքնուրույութիւնից և դարձնել բռնաւորների ու ճնշողների ոտ լզողներ: Դժբախտ է այն հայը, որ հասել է այն վիճակին, բայց նրանք, որոնք այսպէս կամ այնպէս կարողացել են խուսափիլ այդ թունավոր պատուաստից, նրանք, որոնք զգալով հայ ճողովրդի ընկճուած դրութիւնը, միանգամայն մտածել են այդ դրութիւնը յեղաշրջելու անհրաժեշտութեան վրայ, դրանք, իբրեւ արթուն, առողջ տարր հայութեան, թող բարձրացնեն իրենց ձայնը եւ խառնեն մերինի հետ, եթէ նրանց ուղղութիւնն ու հայեացքները տարբեր չեն մերանցից. սոյն հրատարակութեան թերթերը բաց են այդպիսիների համար:\r\nՀայերիս այսօր հարկաւոր են գործ եւ անկեղծ խօսքի մարտիկներ եւ այդպիսիներին ասպարէզ հանելու համար պէտք է նպաստէ սոյն հրատարակութիւնը:\r\nՄենք գիտենք թէ ո՛րպիսի մեծ դժուարութիւններ ու խոչընդոտներ կան եւ դեռ կ’առաջանան մեր հանդէպ այսպիսի հրատարակութեան ձեռք զարնելով. այդ դժուարութիւններից գլխաւորն այն է, որ ազատ խօսք ունենալու համար մենք պատրաստուած ենք հեռու երկրում ձայն տալու եւ այդպիսով այս թերթն իր ազատ ոգու պատճառով ոչ մի բացարձակ մուտք չէ կարող ունենալ ոչ ռուսահայերի եւ ոչ թիւրքահայերի մէջ: Բայց մեր հայրենակիցների ցանկութեամբ ու եռանդով, լիայոյս ենք, այդ խոչընդոտը կ’անհետանայ, որը եւ անհրաժեշտ է:\r\nԹող «ՀՆՉԱԿ»ն անդադար հնչէ եւ կոչէ՝ եղբայրը եղբօրը ձեռք տայ եւ թո՛ղ նրա հնչիւնը թշնամու ականջին հասցնէ եւ նրան դողացնէ. թո՛ղ նա հնչէ բացարձակ ու խրոխտ կերպով օտար տեղերից, եւ թո՛ղ նա հնչէ, թէպէտ գաղտնաբար, բայց միշտ արդար բարբառով, նոյնիսկ հայրենի երկրում, մինչեւ որ հայ ժողովրդի վրայ տիրած խաւարը վառ արշալոյսին տեղ կտայ»:\r\n\r\n1887 Նոյեմբեր, Ժընեւ', '', '', 1, 4444, '2020-04-18 22:44:04', 218, 1, 1),
(39, 'Դէմոկրատութիւն թէ դէմագոգութիւն -Փարամազ', '', '', '<p>Ներկայումս անցողական ժամանակի ամէնածանր երկունքի մէջն է գտնւում մեր երկիրը։ \n\nՆա ինչպիսի ահեղ ու փոթորկալից շրջաններից էլ անցնելու լինի ինչ տագնապների\n էլ ենթարկուի, այնուամէնայնիւ «ակնկալութեան զաւակը» ծնելու է։ Սա բնական\nօրէնք է. Անխուսափելին է, ճակատագրական հրամայականն է։ \n\nՍակայն ոչ պակաս բնական օրէնք է եւ այն հանգամանքը, որը մարդկութեան հասակի\n ամբողջ պատմութեան ընթացքում, անհերքելի փորձերով մեզզ ստիպել է ծննդկանի\nառջեւ խոնարհուիլ, նրա բոլոր ցաւերի, ջղաձգութիւնների ամէնաճշգրիտ դարմանը\nհայթայթել, որպէս զի նորածինը լինի կանոնաւոր, առողջ, բնական։ \n\nԻնչ ճշմարիտ է մի անհատի համար, նոյնը աւելի եւս ճշմարիտ է անհատների հմախմբութեան - մի երկրի, ներկայ դէպքում, մեր երկրի համար։ \n\nՍակայն իրերի դրութիւնը այնպիսի կաշկանդումների մէջ է դրել մտածողին ու\nգործողին, որ ակամայից սեւ մտքերը պատում են քեզ եւ սկսում ես հակառակ\nինքնայուսադրութեանդ, յուսախաբութեան մէջ ընկնել եւ հաւատալ, որ\n«ակնկալութեան զաւակը» եթէ ոչ վիժելու, գէթ ցաւագար է ծնելու։ \n\nԻնչու՞։ \n\n-Որովհետեւ նա, օրին անարդար իրաւակարգը դրել է կառք վարելու պաշտօնի մէջ։\nԱյսօր կոչւում է մեր երեխայի մանկաբարձը լինելու մեր երկրի գործը վարելու։\nՍա եթէ պախարակելի էլ չլինի, սակայն եւ գովելի էլ չէ։ \n\nԻնչու՞։ \n\n-Որովհետեւ այնպէս էին հրամայել վարագոյրի ետեւում թագնուած մի քանի պատուելիներ, կուզէ՛ք ասէք՝ շէրիաթճիներ։ \n\nՊ. Բիւզանդ Քէչեան Ղալաթիոյ խորհրդարանի մէջ պիտի քւէարկէր եկեղեցու\nփակումը միթինգների համար։ հասարակական աստիճանի ցած խաւերում եղող մի քանի\n անծանօթներ սոփայեցին ու թոյլ չտուեցին։ \n\nԻնչու՞։ \n\n-Որովհետեւ այդպէս էին հրամայել վարագոյրի յետեւում թագնուած մի քանի գործիչներ, կուզէք ասէք՝ ինքնակոչներ։ \n\nԵւ այս ամէնը կատարւում է ժողովրդի անունով, այն ժողովրդի, որը գործին\nանտեղեակ, որպէս հանդիսատես՝ նայում է, վրդովւում, գլուխը շարժում ու\nանցնում։ \n\nԱյժմ ասացէք, խնդրեմ, ի՞նչ պիտի լինի սրա հետեւանքը։ սրանից յետոյ մենք\nկարո՞ղ պիտի լինենք ասելու, թէ մեր «ակնկալութեան զաւակը» ծնուելու է առողջ\n ու նորմալ։ Անշուշտ ոչ. Որովհետեւ այս կասակարգային կռիւը, ինչպէս ոմանք\nսիրում են ասել, դասակարգային կռուի ազնիւ զէնքերով չէ վարւում, այլ\nվարւում է դէմագոգօրէն՝ խուժանավարական եղանակով, այսինքն՝ շագանակը կրակից\n հանում է ոչ թէ դէմոսը, ոչ թէ կազմակերպուած մարմինների ձեռքով, այլ,\nերկու կողմից եւս, խուժանի ձեռքով, որը թէեւ տգէտ, բայց այն աստիճան անկեղծ\n չէ, որ միշտ էլ շագանակը թելադրողին յանձնի։ Նա՝ խուժանը, որքան եռանդուն\nկերպով թեքուի դէպի լաւը, նոյնքան դիւրութեամբ եւս թէքուել գիտէ դէպի վատը,\n յոռին։ Նա անգիտակից շինարար ոգին է, որպէս եւ անգիտակից կործանարար ոգին։\n \n\nՆա էր, որ Հռովմում սուսերամարտների վրայ եղած բռնութեան պատճառով Սպարտակի\n գլխին հաւաքուած երկու տարի շարունակ հսկայական գործեր կատարեց, սակայն եւ\n նա էր, որ Գալիլէի խարոյկի վրայ իր խանձողը նետեց։ Նա էր, որ Մովսէսին\nստիպում էր Փարաւոնի լուծի տակից մէկ օրով առաջ ազատուել, սակայն նա էլ էր, \n որ սոխ ու սխտորի համար Մովսէսին դէպի Փարաւոնի լուծն էր հրում։ Նա էր, որ\n ֆրանսիական յեղափոխութեան ժամանակ Պասթիլը կործանեց, սակայն նա էր, որ\nնոյն այդդ Պասթիլը կործանելուց անմիջապէս յետոյ երկրի համար նախատինք եղաւ\nիր շոֆֆերական արարքներով։ \n\nՆա էր, որ Ռուսաստանում յեղափոխութեան առաջին օրը յեղափոխականների հետ\nմիացած հրաշքներ գործեց եւ ցարական կառավարութիւնը սարսեցրեց, սակայն նա նէ\n էր, որ երկրորդ օրը Նիկոլա ցարի մո \n\nՆոպոլի օղին խմելով՝ յեղափոխականներին կոտորեց, երկրի ահագին հորստութիւնը հրի ճարակ տրուեց։ \n\nԵւ վերջապէս՝ միթէ նա չէ՞, որ Պոլսի ամէն քայլափոխում ձեր աչքի առջեւ\nերբեմն համիտականութեան դէմ է, երբեմն թեր։ նա յեղյեղուկ է, այլայլելի,\nփոփոխամիտ Է։ ուստի նա չէ այն ազդակը, որով պիտի արուի երկրի մէջ եղած\nդասակարգային եւ այլ կռիւները։ \n\nԵւ նրան կառչողը, նրանով գործ կատարողը ոչ թէ գործիչ է, կամ քաղաքական\nկուսակցութիւն է, այլ բառի ամէնալայն իմաստով դէմագոգ, խուժանավար։ Իսկ\nայդպիսիններին ժողովուրդ անունը տալ, նշանակում է ծիծաղել նրանց վրայ,\nորոնցից իսկապէս կազմուած է ժողովուրդը,-իր անձնական օգտին հասնելու համար\nհամայնաբար գործողը։ \n\nՀարցը դնում ենք շեշտակի իր կողքին վրայ. \n\n-Ինչպէ՞ս պէտք է կռուել։ \n\nԱսել մեր երկրի մէջ կռիւ չկայ, դա կատարեալ անմտութիւն է, դա\nԱրզուեան-Խմբակի տրամաբանութիւնն է, որը կռիւը չէ ընդունում որպէս երկրի\nմէջ եղած կաթէգորիաների ծննդեան հետեւանք, սակայն յանուն դասակարգի իր\nպատգամաւորն է ուղարկում Օրամանեանի մօտ, այնպէս, ինչպէս խօսքի ազատութիւն է\n քարոզում իր Ահմեդի տոպրակ «ծրագրի» մէջ, բայց եւ իր քաջամարտիկ\nՍեւ-Հողերցուն զէնքը ձեռքին մի քանի վարձկանների հետ «Կավռոշի» վրայ է\nուղարկում։ Ակամայից, հայկական այն ասածը, թէ «կատուն էլ է աղանձ ուտում»,\nմարդուս միտն է գալիս։ Բայց անցնինք։ \n\nԱյո՛, մեր երկրում դասակարգային կռիւը կայ եւ հետզհետէ սկսում է լայն ծաւալ\n ստանալ։ Կան մեր երկրում պարլամենտ եւ քաղաքական կուսակցութիւններ,\nաւելացրէք դրա վրայ Ազգ. Ժողովը, որը միեւնոյն ստորոգելիները ունի, ինչ որ\nպարլամենտը։ \n\nՔաղաքական կուսակցութիւնը, եթէ իրօք հրապարակ է եղել որպէս մի որոշ դասի\nիդէօլոգ, նա օրինական ճանապարհով պէտք է աշխատի իր ձեռքը ձգել այն բոլոր\nազդակները, որով նա գերակշիռ, ձայն ունենալ կարողանայ այդ հաստատութիւնների\n մէջ եւ այնտեղ թէ ստեղծագործեալ եւ թէ գործադրող պաշտօնավարութիւնները\n(ֆօնքսիոն) մղի ըստ իւր աշխարհահայեացքի։ Սա ինքը հէնց դէմոկրատականութիւնն\n է, որով էլ պէտք է անպայման առաջնորդուի քաղաքական կուսակցութիւնը։ դրանից\n դուրս չկայ նրա համար մի ուրեւէ ուղի։ \n\nԻսկ եթէ արհեստական ուղիներ կընտրուի, որը անկասկած պիտի անցնի\nդէմագոգութեան շրջանագծով, այդ բնաւ չի տանիլ մեր երկիրը թէ նրա\nընդհանրական եւ թէ ազգային գործերը, դէպի շինարարութիւն, այն անպայման կը\nտանի դէպի կործանում։ \n\nՄեր կուսակցութեան գործելակերպը, կռիւը Դէմոսի կանոնաւոր կազմակերպուած\nդէմոկրատականութեան միջոցով պէտք է լինի, այլապէս զանազան անկիւններից\nանգիտակ, անկազմակերպ մարդիկ հրապուրել եւ նրանցով թէկուզ ամէնամեծ գործը\nկատարել. Մոմենտի պատեհութիւնը կը լինի միմիայն, որովհետեւ նրանք ընդունակ\nեն աջով շինածը ձախով քանդելու, հետեւաբար այդպիսիների վրայ կռթնել,\nնշանակում է րոպէի յաղթութիւնը տանել, այլ խօսքով խուժանավարել։ \n\nԴէմոկրատականութիւնը,-ահա այն անշեղ միջոցը, որը մեր քաղաքական\nկուսակցութիւնների ամէնաապահով ուղին է իրենց նպատակին հասնելու համար։ \n\nՀեռո՜ւ դէմագոգութիւնը։ \n\n«Արեւելք», 13 յուլիսի 1910 թ. </p><p>\n</p>', '', '', 1, 4444, '2020-04-18 22:44:04', 250, 1, 0),
(40, 'Ո՛չ թե ճնշված ու հալածված, այլ հաղթական սերունդ', '', '', '<p><strong>«Տխրունի» Ուսանողական-Երիտասարդական Միությունը</strong> համայն հայության հետ հարգանքի տուրք մատուցեց 1915-թ.-ին տեղի ունեցած Հայոց Մեծ Եղեռնի զոհերի հիշատակին։</p><p>Հայ ազգը այդ ոճրի արդյունքում կորցրեց իր բազմաթիվ արժանավոր եւ համամարդկային նշանակության զավակների եւ այսօր մեզ հետ մեր կորստի վիշտը կիսում է մարդկության առաջադեմ տարրը՝ եւս մեկ անգամ ասելով. «Այլեւս երբեք»։</p><p>Սակայն այդ վշտալի իրադարձությունները 105 տարի անց՝ այսօր եւ վաղը, մեզ համար ոչ թե սուգի, արտասուքի ու վշտի հուշեր պիտի լինեն, այլ դաս մեզ համար.</p><p>Որպես եղերական տարիների ինքնապաշտպանության կազմակերպիչների, ուժով ու համառությամբ սեփական ու հարազատների, հայրենակիցների կյանքը պաշտպանած ըմբոստ ազատամարտիկների ֆիզիկական եւ գաղափարական հետնորդներ մենք՝ տխրունիականներս, հիշելով մեր պատմության ցավալի էջը հաղթական հոգով ենք շարունակում մեր ազգային գործունեությունը, որպես ոչ թե ճնշված ու հալածված, այլ հաղթական, սեփական կյանքը պաշտպանելու ու կառավարելու ունակ ազգի նոր սերունդ: </p><p>ՏՈԵՄ-ը քաջալերում է մեր ազգակից երիտասարդներին կիսել մեր հաղթական հոգին, լինել դրա կրողը, լինել իդեալի սերունդ, լինել Հաճնի, Վանի, Շապին-Գարահիսարի հանդուգն ինքնապաշպանությունների ոգու կրողը, լինել Սարդարապատի հաղթանակի, Արցախյան ազտամարտի հպարտ ժառանգ։</p><p>Մենք եւ դուք այն սերունդն ենք, որ գիտակցում ենք մեր պարտականությունը՝ գերազանցել մեր նախնիներին, կատարելագործվել երեկվա մեր անձնական եսի եւ մեր հավաքական եսի նկատմամբ, լինել էլ ավելին քան երեկ էինք։</p><p>Երբ եթե ոչ այսօր մենք պետք է կերտենք մեր հայրենիքը՝ համայն հայության տուն հզոր Հայաստանը, չմոռանալով նաեւ մեր պարտականությունները մեր տեսակի՝ մարդ արարածի առաջ։</p><p><br></p><p><br></p><p>-ՍԴՀԿ Հայստանի  «Տխրունի» Ուսանողական-Երիտասարդական Միության  վարչություն</p>', '', '', 36, 4523, '2020-04-28 10:30:32', 407, 1, 0),
(41, 'Դեպի Հայաստան', '', '', '<p>Դէպի՛   Հայաստան,  դէպի՛  Հայաստան – ահա՛ այն կոչական խօսքը, օր այժմ աւելի՝ քան ժամանակայարմար ենք համարում դարձեալ յիշեցնել հայ երիտասարդութեան։</p><p>Դէպի՛ Հայաստան – ահա այն որբացած ու թշուառ վայրը, դեպի ուր շտապով իր քայլերը պէտք է ուղղէ հայ երիտասարդութիւնը։</p><p>Դէպի՛ Հայաստան – ահա այն երկիրը, որի հանրակեցութեան բոլոր կարգերի արմատական յեղաշրջման պահանջն իրագործել նպաստելու համար կոչված է հայ երիտասարդութիւնը։</p><p>Իբրեւ խուլ որոտ, որ նախագուշակութիւն է փոթորկի, լսվում է հայ ժողովրդի խուլ տրտունջը Հայաստանում։</p><p>     Լքված – նա այլ ևս անկարող է շարունակելու կրել իր ներկայ հանրակեցութեան կերպերը։ Վիրաւոր – իր վէրքերի սպեղանին նա տեսնում է ազատութեան ու իր զարգացման ձգտումներում։ Յուսահատ – նա կոչում է դեպի իրեն առաջնորդ ընկերներ, որոնք կարողանան նպատակայարմար միջոցներով նրա քայլերն ուղղել դէպի մեծ նպատակը։</p><p>     Այո, այո, իբրև քշված հողմով, գնալով, կուտակվում են փոթորկի սև ամպերը Հայաստանի վրայ .- իրերի ընթացքի զօրութեամբ հանրային մարտի վճռական րօպէն մոտենում է։</p><p>     Արդ, ուր են այն պիտանի առաջնորդները, որոնց ներկայութիւնը Հայաստանում դարձել է անհրաժեշտութիւն, որոնք ձեռք զարնէին հարկաւոր պատրաստութիւններին այն օրհասական մարտի համար, որ մղվելու վրայ է ընդդէմ թիւրք կառավարութեան՝ յանուն թիւրքահայ ազգային անկախութեան, յանուն նրա քաղաքական ազատութիւնների և տնտեսական զարգացման։</p><p>     Ո՞ւր են այն ինտէլիգէնտ ղեկավարները, որոնք ժողովրդի մէջ, ժողովրդի հետ, ժողովրդի համար – յանո՛ւն բանող ժողովրդային շահերի սկսէին մեծ գործի անհրաժեշտ պատրաստութիւնները։ Ո՞ւր են հայ առաջադէմ, ողջամիտ երիտասարդ տարրերը։</p><p>     Ճիշտ է, մենք սխալված կլինենք, եթէ ասենք թէ ամենքը գտնվում են Հայաստանից դուրս. Բայց կայ հայ երիտասարդութեան մէջ մի մեծամասնութիւն՝ կենդանի ոյժեր, որ այդ դրութեան մէջն են։ Նրանք օտար երկիրներում դեռ պատրաստվում են անճոռնի ու եսական անձնախաբութեամբ՝ թէ գուցէ Եւրօպան «ազատԷ» հային իր թշուառ վիճակից։ Զուրկ քաղաքացիական համարձակութիւնից ու արժանաւորութիւնից, նրանք դեռ խորշում են հայ բանող ժողովրդից, մինչդեռ այդ ժողովուրդը նրանց կանչում է։ Նրանք դեռ իրենց օտար են համարում ժողովրդին, մինչդեռ իսկապէս նրա հետ նրանք կապված են ընդհանուր սերտ ինտէրեսներով(խմբ. Հետաքրքրություններով)։ Նրանք իրենց ընթացքով ստեղծել են ահագին վիհ իրենց և բանող ժողովրդի մէջ, մինչդեռ այդ վիհը ոչնչացընելու համար նրանց ոչինչ չէ մնում, եթէ միայն անկեղծ արձագանք գտնել իրենց սրտերում այն մարդերի – իրենց նմանների – կոչական ձայնի, որոնք բաւական անկեղծութիւն են ունեցել անցնելու այն վիհը։ Այո՛, ձայնը հնչում է Հայաստանից, անկեղծ, պարզ, սրտագին ձայն, որի ներկայութիւնը Հայաստանում՝ աւետիս է նոր օրվայ արշալոյսի ծագման։</p><p>      Դէպի՛ Հայաստան,- վերջին մի քանի նշանաւոր երևոյթներից յետոյ միայն այդ խօսքով այսօր մենք կարո՛ղ ենք, ուզո՛ւմ ենք, պարտաւո՛ր ենք դիմել հայ երիտասարդ առաջադէմ, յեղափոխական տարրերին, որոնք գտնվում են մարտադաշտից դուրս։</p><p>Դեպի՛ Հայաստան,- այնտեղ բանող ժողովուրդը, այնտեղ ձեզ նմանները, ձեր ընկերները սպասում են ձեզ, կոչում են դէպ իրենց. գործն օտար երկիրներում չէ. գործը Հայաստանումն է և միմիայն Հայաստանում։</p><p>       Բայց պատրաստվելով ճանապարհ ընկնել, գուցէ տարակուսանքով հարցնէ հայ երիտասարդութիւնը – ի՞նչ անել այնտեղ յեղափոխութեան համար, ինչի՞ց սկսել։</p><p> ՛՛Հնչակի՚՚ ամենաէական աշխատութիուններից մէկն է եղել միշտ այդ կէտը և նրա համարներում անպակաս կերպով կան այդ հարցին պատասխաններ։</p><p>        Յեղափոխական ոյժերի դերն այժմ երկրի մէջ կայանում է հետևեալում.- ունենալով յեղափոխութեուն նպատակների ու միջոցների դրական ու պարզորոշ ծրագիր, միանալ միմեանց, կազմել մի մարմին և բանող ժողովրդից կազմել մէկ ընդարձակ յեղափոխական կազմակերպութիւն, միաժամանակ միջոցները որոնելով կուսակցութեան ամեն կարգի մարդերի, դրամական, մարտիկ և այլն-նիւթեր ձեռք բերելու համար։</p><p>         Բանող ժողովուրդ – դա՛ է յեղափոխութեան յոյսը, մղիչը, ոյժը. դա է յեղափոխութեան մեծ ու հաւատարիմ զօրագունդը, որի ոյժերը զարգացնելու ու կազմակերպելու համար կոչված է յեղափոխական, հասուն երիտասարդութիւնը։</p><p>          Ընդարձա՛կ, լայնածաւա՛լ գործունէութիւն, որ առաջացրել են հայութեան ներկայ պատմական րոպեն և հայ ժողովրդի հանրակեցութեան ներկայ պայմանները Հայաստանում։ Մի գործունէութիւն, որ յայտնվում է հայութեան ներկայ հասարակական գործունէութիւններից ամենաէականը և որը սպասում է միայն շատ ու անձնուրաց գործիչներ իր ասպարիզում։</p><p>            Գործը սկսվել է . նա պէ՛տք է շարունակվէ և աւարտ ստանայ հայ բանող ժողովրդի ձգտումների յաղթանակով, հակառակ ամեն արգելքների։ Հակառակ դէպքում՝ պատասխանատւութիւնը հայ ապագայ սերունդների, պատմութեան ու մարդկութեան առջև իր ամբողջ ծանրութեամբ ընկնում է հայ այժմեան սերնդի վրայ։</p><p>              Ուրեմն, թող նա լրացնէ իր պարտականութիւնը, թող նա գտնվէ իր մեծ կոչման բարձրութեան վրայ։</p><p>               Դէպի Հայաստա՛ն . . . .</p><p><br></p><p><br></p><ul><li>«Հնչակ» , Երրորդ    Տարի, Nr 2 , Մայիս 1890</li></ul><p>     </p>', '', '', 37, 4056, '2020-04-28 18:22:13', 279, 1, 0),
(42, 'Միութիւն', '', '', '<p>     Վերջին ժամանակներս Հասարակութեան մէջ մի կարծիք է շրջում, որ կարելի է բաւական տարածված կարծիք. Համարեը Այդ կարծիքն այն է, Թէ յեղափոխական ոյժերը պէտք է միանան։ Միութեան գաղափարն ինքն ըստ ինքեան սլէտք չսւնէ ո՛չ մի փաստաբանուԹեան։ Ամենքին Հասկանալի է, որ ազգի մեջ ցրված ոյժերի միացումով կարելի է աւելի մեծ զօրուԹեամբ գործել և աւելի ընդարձակ ու Հաստատուն յեղափոխական կազմակերպուԹիւն ունենալը Մենք մտադիր չենք այստեղ այդ կետի վրայ երկարօրէն ծանրանալ , որ կը լինի միայն աւելորդաբանուԹիւն։ Բայց մենք անՀրաժեշտ ենք Համարում պարզաբանել։ Թէ ինչ եղանակով կարող է միուԹիւն կայանալ և Թէ՝ ինչպիսի մարմիններ են կարող իրար հետ հետ միանալ։</p><p>           Որպէս ամեն մի Հասարակական գործիչ անՀատից, Նոյնպէս ևս առաւել մի յեղափոխական կուսակցուԹիւնից, երբ որ դրանք երևան են գալիս Հասարակական ասպարէզում, Հասարակութիւնը պէտք է պահանջէ, այսպես ասած, բացատրութիւն, Թէ ին՛չ Հիմունքների վրայ և ին՛չ սկզբունքներով մղված նա ասպարէզ է դուրս գալիս Հասարակական  ասպարէզը մի շուկա չէ, ուր ամեն, կարգի մարդիկ պօռում են հազար ու մի եղանակով ուր ամեն – մէկն իր գոռած խօսքերի պատասպանատուն չէ Հասրակութեան առջև , ուր թէ՝ խարդախութիւն, թէ երեսպաշտութիւն, թէ՝ այլ և այլ տգեղութիւններ գտնում են իրենց արտայայտութիւննեևը։  Հասարակական ասպարէզում գործիչները յայտնվում են հրապարակային արտայայտիչներ հասարակութեան ձգտումների, լինեն այդ ձգտումներն առաջադէմ, թէ յետադէմ, թէ պահպանողական կամ այլ գոյնի և զանազան հասարակական ուղղութիւններ միմեանց հետ շփվում են, միմեանց դեմ հակառակում են, միմեանց հետ ընդհարվում են և այդպիսով կրթիչ ու առաջնորդող դեր կատարում հասարակութեան համար և մի և նոյն ժամանակ նպաստում հասարակական խնդիրների լուծման ու երևոյթների լուսաբանութեան։ Հասարակական ասպարէզն այդպիսով յայտնվում է այն մեծ լսարանը, որտեղ հասարակութիւնը միջոց է ունենում ճանաչել և ըմբռնել իր կեանքն ամբողջութեամբ, իր դրութիւնը, իր հանրական պահանջները, իր ձգտումները, իր անցած ու անցնելիք ճանապարհները, մի խօսքով, հասարակութեան գիտակցութիւնն ու ինքնաճանաչութիւնն աւելի է զարգանում։</p><p>           Միանգամ այդպիսի մեծ ու եզակի դեր է կատարում հասարակական ասպարեզը, հետևաբար հասարակական զանազան կուսակցութիւններն ու գործիչները ևս պետք է համապատասխան լինեն այն կոչման, որ պահանջում է հասարակական ասպարէզը։ Եթէ նրանք չեն համապատասխանում այդ կոչման՝ նրանք հանդիսանում են վնասակար։</p><p>           Բայց երբ որ մի ճնշված ազգի ծոցում առաջանում է ազատվելու , ճնշման կապանքները կատարելու պահանջը այն ժամանակ այդ ազգի հասարակական ասպարէզում երևան են գալիս անկոչ, ինքնակոչ, անարժան, արժանաւոր, տգէտ, զարգացած, կեղծ, անկեղծ, մի խօսքով, ամեն կերպի ու ամեն գոյնի հասարակական գործիչներ ու կուսակցութիւններ։ Այդպիսի պղտոր ու դառն ժամանակ ճնշված ազգը միանգամից չէ կարողանում նրանց ճանաչել ու միմեանցից զանազանել։ կեանքի սուղ րօպէին, այսինքն այնպիսի ժամանակ, երբ ազատվելու ձգտումով ոգևորված՝ հասարակութիւնն իր հասարակական ընդդիմադրական մարմիններից յեղափոխական գործ է պահնջում և առաջին խօսքը, որ լինում է նրա կողմից, դա այն է՝ թէ կուսակցութիւնները վերանան ի մի ձուլվելով։ Դա հասկանալի է, սակայն միմայն հասկանալի և ո՛չ իրագործելի։ Արդեօք կարո՞ղ են երկու հակապատկեր ի մի ձուլվել . արդարը մեղաւորի, անկեղծը կեղծի, զարգացածւ տգէտի հետ միանալ ու միասին գործել կարո՞ղ են արդեօք։ Այդ Կէտն է ահա, որ հասարակութիւնը պետք է ըմբռնէ և անիմաստ ու զուր ջանքեր գործ չը դնէ այդպիսի « միութիւն» հաստատելու։ Դա միութիւն չի լինիլ այլ մի չարք երկպառակութիւնների աղբիւր, որ, պարզ բան է, միանգամայն կը վնասէ գործին։ Ի՞նչպես կարող է միանալ յայտնի սկզբունքներ ունեցող մարմինը մեկ ուրիշի հետ, որ կեղծիքը դարձրել է իր սկզբունքը։ Չէ՞ որ այնպիսի կուսակցութիւնները, այնպիսի գործիչները, որոնք չունեն ո՛չ սկզբունք, ո՛չ ծրագիր, ո՛չ ուղղութիւն, որոնք չը գիտեն ըմբռնել հասարակութեան կեանքի իմաստն ու նրա բնական ընթացքը, որոնք անկարող են լինել արտայայտիչ հասարակական ձգտումների - դրանք վնասակար են գործին։ Այդպիսի կուսակցութիւնները կամայ ակամայ պետք է դիմեն ամեն տեսակ անխոստովանելի միջոցների իրենց գոյութիւն պահպանելու համար և դրանց այդօրինակ ջանքերը երբեմն կարող են ջլատել հասարակութեան ոյժերը։ Այդպիսիների հետ անկեղծ ու սկզբունքների տեր կուսակցութիւնը միանալով, ամօթալի մահուան դատավճիռ տված կըլինի թէ՛ իր սկզբունքներին և թէ՛ իր անկեղծ գործունէութեան։ Հասարակութիւնը պետք է հասկանայ, որ այդպիսի զոհողութիւնը մեծ վնաս է գործին ։ </p><p>	Բայց, ուրեմն, ին՞չ հիման վրայ և ին՞չ կերպ պիտի լինի միութիւնը։</p><p>	Երբ որ մի յեղափոխական կուսակցութիւն, մի յեղափոխական թերթ կայ հասարակակամ ասպարէզում, թէ այդ կուսակցութիւնը և թէ՛ այդ թերթին իրենց ուղղութեամբ պետք է ճնշված հասարակութիան դժգոհ, բողոքող տրամադրութեան տան որոշ արտայայտութիւն։ Բնականաբար՝ ճնշված ազգի այդ բողոքող տրամադրութիւնը ծագել է նոյն իսկ նրա կեանքի պայմաններից և անհատները, դրանց քարոզները, կամ գրականութիւնը չեն  այդ տրամադրութեան ստեղծողը։ Սակայն Յեղափոխական կուսակցութեան ու յեղափոխական թերթի աշխատութիւմմ ու դերը պետք է լինի գտնել այնպիսի որոշ հայեացքներ, այնպիսի որոշ սկզբունքներ, որ համապատասխան լինեն հասարակական բողոք տրամադրութեան ու նրա ձըգտումների էութեան։ Այն կերպով կուսակցութիւնն ու թերթը կը նպաստեն յեղափոխութեան նպատակի ու գործունէութեան ծրագիր որոշելուն ու կազմելուն։ Այդ հայեացքները և դրանցից առաջացած գործունէութեան ծրագիրը պէտքէ համապատասխան լինեն հասարակութեան կեանքի բնական պահանջներին, դրանց էութեան ու բնական ընթացքին, բնական ընթացքին, որ անգիտակցաբար կատարվում է հասարակութեան օրգանիզմի մէջ։ Եթէ այդպես լինեն, այն ժամանակ թէ՝ այդ հայեացքները և թէ՝ այդ ծրագիրը կունենան իրենց ազդեցութիւնը հասարակութեան ազատման գործի ամբողջ ընթացքի վրայ, նրանց ազդեցութիւնը կը տարածվէ նոյն իսկ ամբողջ ժողովրդի վրայ։ Բայց ազդեցութիւն ունենալու համար այդ հայեացքներն ու ծրագիրն անպատճառ պէտք է լինեն արտայայտութիւն հասարակական, սօցիալական մի որոշ թէօրիաի, որը մի կողմից գաղափար տար, թէ ինչն է կազմում ընդհանրութեան բարօրութիւնը, ինչն է յայտնվում աղբիւր ընդհանրութեան շահերի իրականացման, մի որոշ թէօրիաի, որը միւս կողմից կարող է լիներ հասարակութեան կրթված դասակարգի առաջադէմ ձգտումները միախառնել ժողովրդային ընդհանրութեան ձգտումների հետ։</p><p>	Ահա այդ ժամանակ յեղափոխական թերթը կամ կուսակցութիւնն իր իսկական կոչման հաւատարիմ կը լինի. Գաղափարի, սկզբունքի ու ճշմարիտ գործունէութեան ներկայացուցիչ ու գործադրող կը լինի։ Նա կը լինի կարապետ հասարակակամ նոր հոսանքի։ Այդ կերպով յայտնի սկզբունք դաւանող և ուղղութիւն ունեցող կուսակցութիւնը կարող է միանալ միմիայն իր նման մեկ ուրիշ մարմնի հետ, յանուն մի և նոյն սկզբունքների ու նպատակների, որոնց իրականացման համար միակերպ անկեղծութեամբ ձգտում ու գործում են երկուսն էլ։ Այդ տեսակ կուսակցութիւններն, այո, պէտք է միանան, այո՛, պետք է համերաշխ դաշինքով գործեն և այն ժամանակ նրանք ընդունակ կը լինեն մեծամեծ գործեր անելու։</p><p>	 </p><ul><li>«Հնչակ» </li></ul>', '', '', 37, 4056, '2020-04-28 18:42:13', 7, 1, 0),
(43, 'Համբարձում Պօյաճեան (Մուրատ)', '', '', '<p>Նա, որին վիճակվեցաւ վերջը դառնալ Սասունի ամենայայտնի հերոսը, Սասունի ապստամբութեան առաջնորդը, Կիլիկիայի Հաճըն քաղաքի մի համեստ ընտանիքի զաւակ է։ Այն հանգամանքների ու դէպքերի շնորհով, որ ժամանակ առ ժամանակ տեղի էին ունենում Զեյթունում, սկսած եօթանասուն թուականներից. Համբարձումի միտքը դեռ պատանի հասակից պատրաստում էին այն գործունէութեան համար, որի ասպարէզում ընկաւ նա հերոսաբար։ Ուսանող բժշկական դպրոցի Կ. Պօլսում՝ նա արդէն լրջօրէն մտածում էր ծառայել իր ժողովրդին, բայց ոչ իր մասնագիտութեամբ, կամ գրական ու դպրոցական եւ կամ որ եւ է ուրիշ այդօրինակ գործունէութեամբ։ Նա մտածում էր մէկ արմատական գորունէութեան դիմել, որով կարել լիներ բարենորոգել ժողովրդի վիճակն էապէս և ո՛չ կիսատ միջոցներով, (---՞), որոնց իսկ օրինական գործադրելու անհնարինութիւնը թուրքական րէժիմի տակ՝ նրա համար արդէն պարզ էր դարձել ուրիշների փորձերից։ Հետաքրքրվող ու քննող խելք՝ նա միշտ իր ականջն էր սրում դէպի ամեն-մի խօսք ու դատողութիւն, որ գրվում կամ ասվու էր ժողովրդի դրութեան եւ նրա պահանջների ու պէտքերի մասին։ Քիչ խոսող և առհասարակ ծածկամիտ՝ նա դիտում էր իր շուրջն ամեն բան, ինչ վերաբերութիւն ունէր ժողովրդին։ Նրա գլուխը դարձել էր այդպիսի դիտողութիւնների մէկ ամբողջ գրադարան, որ նա ինքը շարունակ քրքրում էր, բայց սակաւ անգամ ներկայացնում ուրիշին։ Այդ «գրադարանը» որոշում էր նրա ընթացքը, նրա վերաբերութիւնը դեպի այս կամ այն անձը, դեպի այս կամ այն երեւոյթը կամ դէպքը։</p><p>          Այդպիսի մանրակրկիտ աշխատութիւն, որ նա ունէր ուղեղում, ամենաբնորոշ յատկութիւնն էր կազմում նաեւ նրա գործունէութեան ու ընթացքի մեջ։ Ինչպէս մանրակրկիտ կերպով, մեծ համբերութեամբ նա քննում ու փորում էր ամեն-մի հարց և ամեն-մի երեւոյթ, նոյնպէս նա մանրակրկիտ ջանքով անում էր այն բոլոր գործերը, որ իր բաժնին էին ընկնում։ Եւ դեռ ուսանողական նստարանից նրա մեջ նկատվում էին ապագայ վերին աստիճանի ընդունակ կազմակեպողի (organisateur) բոլոր անհրաժեշտ յատկութիւնները։</p><p>            Մտքի այդպիսի յատկութիւններ և բնաւորութեան այդպիսի հակումներ ունեցող մէկն առհասարակ պատրաստ է անձնատուր լինել հէնց առաջին լուրջ պատահարին, որ նրան միջոց է տալիս աշխատելու ժողովրդի համար իր ձգտումների համաձայն։ Արդարեւ, 1890թ., ուրիշ շատերի հետ միասին, որոնք վերջը գրեթէ բոլորն էլ դարձան յեղափոխական յայտնի գործիչներ – այսօր բանտերում փակված,- նա անդամ գրվեցաւ Հնչակեան կուսակցութեան, որ այդ ժամանակներն արդէն բաւական ճիւղաւորվել էր Հայաստանում։ Նոյն թուին, խիստ կերպով խառն լինելով Կ. Պօլսի անմոռանալի Ցոյցի մէջ, խուսափելու համար կառավարութիւնից, որ նրան փնտռում էր, նա պահվեցաւ նոյն իսկ Կ. Պօլսում մի տան մէջ։ Ոստիկանութիւնն ամեն անկիւնում փնտռում էր նրան, նրա պատկերը մեծադիր դիրքով նկարված և կախված էր ոստիկանապետ Նազըմի ընդունարանում՝ ոստիկանութեան մէջ, ուր նա ցոյց էր տրվում ամեն ձերբակալվածին թէ արդեօք չը գիտէ ուր է. իսկ լուսանկար պատկերը բազմաթիւ օրինակով բաժանված էր ոստիկաններին ու լրտեսներին, որ նրան գտնեն և նրա գլուխը գնահատված էր 2 000 ոսկի, որ պէտք է տրվէր այն մարդուն, ով մատնանիշ կանէր նրա թագստի տեղը կամ նրա անձը։ Եւ այդ պարագաներում, այն էլ այնպիսի մի ժամանակ, երբ 7-8 հարիւր ձերբակալվածներով լցվել էին Կ. Պօլսի բանտերը և թագաւորում էին սպիտակ տէռօրը, կառավարութեան սարսափահար միջոցները, ամբողջ ամիսների ընթացքում Պօյաճեանն անխռով կերպով շարունակում էր մնալ Կ. Պօլսում, ի հարկէ, պահված և կատարում էր իր գործերն ու պարտականութիւնները։</p><p>               Բժշկական դպրոցում, ի հարկէ, այլ եւս նա չէր յայտնվում, որ պէտք է նոյն ամիսներում՝ տար իր վերջնական ընթացաւարտի քննութիւնը։</p><p>               Պահված վիճակում երկար ժամանակ, պարզ է, նա չէր կարող մնալ և իր ընկերների ստիպումով, նա հարկադրվեցաւ փախչել Կ. Պօլսից Եւրօպա։ Գաղափարներով համոզված Հնչակեան արդէն Կ. Պօլսում, Եւրօպայում՝ մէկ ու կէս տարւայ ընթացքում նա պարզում է իրան այն բոլորը, ինչ տակաւին անորոշ էր մնացել իր մէջ գաղափարական տեսակէտից։ Բայց նա իր բնաւորութեան յատկութիւններով կազմակերպական գործի մարդ է առաջնապէս։ Նրան պէտք են անմիջական, շօշափելի գործեր ու աշխատութիւններ, գնալ, գալ, տեսնվել մէկի, միւսի հետ, անել գործնական կարգադրութիուններ կազմակերպութեան վերաբերեալ, մտնել խմբերի մէջ, կանոնաւորել նրանց, բացատրել նրանց իրանց պաշտոններն ու գործառնութիւնները, լուսաբանել նրանց Հնչակեան գաղափարները, նպատակը, գործելու եղանակները։ Այդ ներքին, կարելի է ասել, իր օրգանական պահանջի շնորհով Պօյաճեանն իր Եւրօպա եղած ամբողջ ժամանակամիջոցում՝ անդադար ձգտում էր դէպի Հայաստան, ուր միայն կարող էր ստանալ գոհացում իր փափագին։ Այդ տեսակէտից չափազանց յիշեցնում էր իր եղբօրը, Ժիրայրին, որ 10 տարիից ի վեր իր յանդուգն գործունէութեամբ դարձել էր թիւրք կառավարութեան (...՞), վերջն իր փոքր եղբօր պէս հանդիսացաւ հերոս Եօղկատի անցեալ տարւայ նշանաւոր կռւում և նոյնպէս ձերբակալվեցաւ։ Առանց դատարանի կառավարութիւնը մի քանի օրից յետոյ նրան կախաղան հանեց, ուր նա բարձրացաւ օրինակելի քաջութեամբ։ Դա տեղի ունեցաւ Համբարձումի Սասունում ձերբակալվելուց ընդամենը մեկ-երկու ամիս առաջ։</p><p>                  Որքան պաղարիւն, հանդարտ սրտով էր գործում Համբարձումը երկրում, նոյնքան անհանգիստ և ստէպ վրդովված վիճակում էր գտնվում նա Եւրօպայում։ Վերջապես նրան աջողեցաւ անցնել Հայաստանի սահմանը։ Լինելով համեստ և իր անձն անյայտութեան մէջ պահող՝ նրա անունը սակայն արդէն յայտնի էր դարձել իր ընկերների շնորհով։ Գործի մէջ նա միշտ շրջահայեաց, զգոյշ էր. երբէք չէր ընկնիլ րոպէական գրգռման տակ, թէկուզ ամենագրգռիչ հանգամանքներում և հէնց իր այդ յատկութիւնն էր պատճառը, որ ամեն տեղ նա գործում էր աչալուրջ կերպով, աւելին չէր ասում ու անում եւ պակասն էլ միշտ աշխատում էր լրացնել։ Յայտնի է, որ նա իր հանդարտ ու արթուն դատողութիւնը չը կորցրեց մինչեւ իսկ Սասունի պատերազմների ամենատաք միջոցին, թշնամու գնդակների տակ։ Այն ժամանակ, երբ Սասունցիներն Անտօք լեռան վրայ յուսահատութեան մէջ մտածեցին, թե թշնամու կողմից առաջարկված հաշտութիւնն անկեղծ է Պօյաճեանը մի րոպէ չը շփոթվելով իրանց կրիտիկական վիճակից, ուտեստի և ռազմամթերքի պաշարի հատնելուց. Սասունցիներին խորհուրդ է տալիս չիջնել թշնամու բանակը, ուր նրանք վերջը պէտք է խողխողվէին չարաչար, և ինքն ամրանալու դիրքերը որոշելով պաշար և օգնութիւն հասցնելու համար մի փոքրիկ խմբով անցնում է Տալւորիկի կողմերը, ուր կռիւը նոյնքան տաք էր, որքան Անտօքի վրայ։ Նա բռնվեց հենց այդ օրերը մի քարայրում, որտեղից երեք օր նա իր խմբով շարունակ պատերազմում էր թշնամու դեմ, մինչև որ սպառվեց(՞) իրանց ուտելիքներն ու վառօթը և ձերբակալվեցան։ Դա տեղի ունեցաւ օգոստոս ամսի վերջերը։</p><p>           Ժողովրդի մէջ նա ապրում էր իբրեւ մի պարզ գյուղացի. նրանց պէս հագնվում, նրանց կերածն ուտում, նրանց հետ Սասունում ամբողջ մի տարի կրում սովի, ցրտի եւ ամեն թշուառութիւնների տանջանքները։ Իր ձերբակալութիւնից մէկ-երկու ամիս առաջ նա մեզ գրում էր Սասունի նիւթական վիճակի մասին հետեւեալը,- «Հացի խնդիրն անտանելի է։ (՞) կլկլի և կորեկի հաց է, ատկէ ալ շատերը (՞) (՞) (՞) հաց դեղի համար միայն կարելի է (՞) (՞) ալիւրէ հաց տայ վերջին աստիճան մեծ (՞) (՞)» Եւ այդ բոլորը նա տանում էր ո՛չ միայն անտրտունջ կերպով, այլ և իրանից զրկում և տալիս էր գիւղացուն. Սասունցիին։ Նա ո՛չ միայն ընկեր էր ժողովրդին, նա նրան եղբայր էր և իր կենաց հանգամանքներով ու վիճակով չէր ուզում ո՛չ մի տարբերութիւն ունենալ Սասունցիից։ Նա պարզ էր նրանց հետ, հակառակ ամեն մեծախօսութեան և իրան (՞)հմանած էր աւելի մեծ ֆիզիքական տքնութիւն քան ունէր Սասունցին։ Հայկական յեզափոխութեան ամենաականուոր անձերից մէկն է նա։</p><p>            Այժմ նա երեսուն և հինգ տարեկան է։</p><p>            Նա ձերբակալվեցաւ թշնամու դէմ հերոսաբար կռւած միջոցին։ Կառավարութեան ձեռքն ընկած՝ (՞) նա անփոխարինելի կորուստ է ժողովրդային դատի համար եւ մասնաւորապէս Հնչակեան կուսակցութեան անդամների մեջ, նրա ընկերների, համար։ Ողբալով մեր անգին (՞)ընկերների մեծ կորուստը մենք սակայն մխիթարվում ենք այն գիտակցութեամբ, որ նրա արած գործերը նոյնքան մեծ են և ահռւելի-անմա՛հ են։</p><p> </p><p> </p><ul><li>    «Հնչակ» ,  Համար Սասունի, Ութերորդ տարի N1,   15 Յունվար 1895</li></ul><p> </p><p> </p><p> </p><p>(՞) – անընթեռնելի կամ մասամբ ընթեռնելի բառեր</p>', '', '', 37, 4056, '2020-04-28 19:35:22', 24, 1, 0),
(44, 'Սոցիալիստական Գաղափարը Ա.', '', '', '<p>Ահա արդեն վեց-եօթ տարի է, ինչ մեր ամեն կարգի թէ՛ ներքին և թէ՛ արտաքին թշնամիներն ու հակառակորդները չեն դադարում—մի կողմ թղնենք հնչակեանների գործունէութիւնը—մի շատ յայտնի կենդանիի երաժշտական ամեն ձայներով յարձակվել «Հնչակ»-ի քարոզած սկզբունքների, գաղափարների վրայ, մեր հասարակական թէօրիաների, դաւանանքի վրայ։ Եւ երբ պատասխան(՞) է ստանում՝--ափսո՚ս, որ մինչեւ իսկ ա՛յդ էլ առաջին տողերից—նրանց դատողութիւնների շարունակ(՞)- սովորական, հասարակ դատողութիւններ, (՞) շտապում են դիմել իրանց երկու սիրելի ու մշտական զենքերին—սուրբ տգիտութեան և քօղարկված (...aise foi)(՞)-ին, խարդախութեան։ Այդ զենքերից առաջինը նրանց թոյլ է տալիս միշտ ասել մեկ ամբողջ ամեն տեսակ երեւակայելի ու աներեւակայելի տգիտաբանությունների, այդուհանդերձ կարծելով միասնաբար, թէ իրանց ասածն իմաստութեան բուն աղբյուրիցն է։ Իսկ երկրորդ զէնքը նրանց միջոց է տալիս էլ մոլորեցնել (՞) այն տխմարներին, որոնք ականջ են դնում նրանց եւ այդ երկու զենքով միաժամանակ ամեն յարմար-անյամար պարագայից օգտվում են մեր դեմ յարձակւելու(՞) իրանցից աւելի տգէտներին, աղաւաղված, շինծու տարօրինակ, հրեշաւոր կերպարանքի տակ ներկայացնելով մեր սկզբունքներն ու գաղափարները։ Այդ անխելքների, այդ գաղափարների ըմբռնելն արդեն իսկ հակառակորդների մտաւոր կարողութիւնից շատ բարձր է, այդ գաղափարները նրանք չեն կարող հասկանալ այն սակաւն էլ, որ գուցէ կարողանային չեն ցանկանում հասկանալ։ Մարդիկ, որ կարդում են միայն իրենց սեփական անշնորհք ու ձանձրացուցիչ մրոտածնեը, իրանց այբ ու բէնն ու դպրոցական դասեր անեն միայն տէրտէրական ուցուցիչներից, և կամ լոկ մասնագիտական նեղ խեցիում ճնշել են իրանց ու մարդիկ, որ լոկ նախապաշարումներով լի ու խաւար(՞) կամ՝ շինծու ու անբովանդակ մի կեանքի մթնորում են կարողացել կազմել կիսատ-պռատ կարծիքներ եև՛ ո՛չ «է»-ի տեղը գիտեն և ո՛չ «այո»-ի—այդ մարդիկ են այդ հակառակորդները, որոնք սակայն գիտունի ու հանճարի տեղ են ծախում իրանց։ Տ(՞) պարտականութիւն է մատնանիշ անել այդ իրողութեան վրայ, մեր այդպիսի հասարակական գործիչներ ու մրոտողներ ունենալու վրայ և բոլորովին հետաքրքիր չէ այդպիսի հակառակորդների հետ գործ ունենալը։ Նրանք ողորմելի են։ Եւ այդ թզուկները, երեւի իրանց հսկայ ներկայացնելու մտքով, երբեմն-երբեմն ամեն ճիգ թափում են. . . ա՛հ, ո՛չ թէ քննելու, այլ գրիչի խուսափող ծայրով միայն շօշափելու մեր սկզբունքները—սօցիալիստական գաղափարը օրինակ, այսպէս—հրէշաւոր, անհեթեթ, չը փորձված, ցնորական գաղափար է սօցիալիզմը, միայն այդպես, այսինքն յարձակումով։ Բայց այդքանն էլ չէ խանգարում, որ նրանք այդ անմիտ արշաւանքում վայր ընկնեն և կոտրեն ու արիւնոտեն իրանց քթերը։ Այդ մարդիկը, որ իրանց ներկայացնում են գիտուն և յանդուգն յաւակնութիւն ունեն հասարակութեան առաջնորդներ կոչվելու, սօցիալիզմի մասին իրանց հասկացողութեամբ շատ ու շատ յետ են ոչ միայն եւրոպացի, այլ և այն Հայ բանւորից, որ գտնվում է Կովկասի, Եւրոպայի կամ Ամերիկայի որ և է գործարանական քաղաքում, այն բանուորից, որ լսել է սօցիալիզմի մասին եւ քիչ թէ շատ մտածել նրա վրայ։</p><p>           Ի՞նչ ենք ասում մենք, ի՞նչ է ասում գիտական սօցիալիզմը։</p><p>           Սօցիալիստական գաղափարն այս-ինչ կամ այն-ինչ մարդու գիւտ չէ, այս-ինչ ցանկութեան, այս-ինչ զգացման, այն-ինչ վերացական, բնազանցական փիլիսոփայութեան արդիւնքն չէ։ Սօցիալիստական գաղափարը գիտական արտայայտութիւնն է քաղաքակրթված ժողովրդների մէջ տիրող ներկայ իրականութեան, իրական կեանքի, մարդկային հասարակութեան ներկայ պատմական շրջանում գոյութիւն ունեցող տնտեսական կերպերի իմաստի ու առաջադիմական ընթացքի։ Սօցիալիստական գաղափարը գիտական եզրակացութիւնն է այն հետազօտութիւնների և քննութիւնների, որոնց ենթարկվել են զարգացած ժողովրդների տնտեսական, հասարակական, քաղաքական կեանքի բոլոր երւոյթները, ապրելու, աշխատելու, արդիւնաբերելու ձեւերն ու պայմանները՝ իրանց ամբողջ պատմութեան մէջ։ Դրական-գիտական մեթօդով արված այդ քննութիւններից ու հետազօտութիւններից առաջ են եկած որոշ եզրակացութիւններ։ Այդ եզրակացութիւնները պարզում են այն բնական առաջադիմական զարգացումն ու ընթացքը, որ ներկայումս կատարվում է քաղաքակրթված մարդկութեան հասարակական կեանքում։ Այդ եզրակացութիւնները միեւնոյն ժամանակ որոշում են, թէ կեանքի ինչ տեսակ կերպերի ու Պայմանների պետք է յանգէ ներկայ կեանքում տեղի ունեցող առաջադիմական բնական զարգացումն ու ընթացքը։ Արդէն ներկայումս կեանքի շատ ճիւղերում և գլխաւորապես նրա հիմնական, այն է արդիւնաբերական, ճիւղում սկսել են առաջանալ հարկաւոր տարրեր՝ դեպի կեանքի նոր պայմանների իրագործման տանող։ Այդ տարրերը բնական կերպով աւելի ու աւելի են զարդանալով, հիմնովին կերպարանափոխում են կեանքի ներկայ պայմանները և ստեղծում նոր պայմաններ ու կերպեր, որոնք, այդպիսով, ճակատագրական, անխուսափելի կերպով պետք է իրականանան և դառնան իշխող մօտ ապագայում։ Այդ ծագող կենսական ամեն ճիւղերի նոր պայմաններն ու կերպերն էլ իրանց էութեան ու բովանդակութեան իմաստով սօցիալիստական, հաւաքական համայնական են։ Այսպես սօցիալիստական կերպերը յայտնըվում են բնական յաջորդ կեանքի ներկայ՝ կապիտալական , բուրժուազական կոչված կերպերի, յայտնվում են այդ վերջին—բուրժուազական—կեանքի արգանդից ծնված։ Հետեւաբար, սօցիալիստական գաղափարն անգործ մնացած մի խելքի հնարած բան չէ, երեւակայութեան ցնորք չէ և ոչ էլ մարդկային կեանքի ՚թշուաութիւնները տեսնելուց միայն առաջ եկած լոկ մի բողոք։ Սօցիալիստական գաղափարը տնտեսական-հասարակական կեանքում ներկայումս կատարվող յայտնի էվօլիուցիայի, որոշ շրջանափոխութեան գիտական արտայայտութիւնն է, ներկայումս տեղի ունեցող տնտեսական-հասարակական կեանքի զարգացման ու առաջադիմութեան իմաստն է, էութիւնն է ։</p><p>           Սոյն յօդվածում մենք կաշխատենք ապացուցանել այդ։</p><p>           Ո՞ր մեկը նրանցից, որոնք գիտեն զգալ ու մտածել, դիտելով իրանց շրջապատող կեանքը՝ չեն տանջվել հետւեալ հարցերով—ինչու՞ համար գոյութիւն ունեն աղքատութիւնը, թշուառութիւնը մի կողմից և միւս կողմից հարստութիւնը, փարթամութիւնը, շահագործութիւնը։ Ինչու՞ համար այդ մեկը, որ աշխատում, քրտինք է թափում օրն ի բուն, ամեն օր սպառելով իր ֆիզիքական ոյժերը,--ինչու՞ այդ մեկը հազիւ կարողանում է լոկ մի խիստ անձուկ ապրուստի միջոցները հայթայթել, մինչդեռ այն միւսը, որ չէ աշխատում ֆիզիքապես ոչ գործարանում, ոչ հողի վրայ և ոչ էլ առհասարակ ուղեղով ուսման ու գիտութեան մեջ,--ինչու՞ այդ միւսը փարթամ ու լայն կերպով վայելում է առաջինի աշխատանքը, իր ձեռքն անցրած լինելով ամեն հարըստութիւն—դրամական ու իրական կապիտալներ՝ շահագործում է այն առաջինին, աշխատաւորին, դարձնում նրան իր գործիքը, իրը։ Մի՞թէ այդ երկուսն էլ միեւնոյն կենդանական ցեղից չե՞ն, մարդիկ չե՞ն, որ ծնված են մի-մի մօրից, ուրեմն միմեանց հաւասար իրանց ծնունդով։ Բայց հենց որ սկսում են շնչել ինչու՞ նրանցից մեկի վտիտ մարմինն ամփոփում են շքեղ օրօրօցում, թաւիշների, մետաքսների մեջ, մինչդեռ միւսինը փաթաթում ամեն տեսակ փալասներում։ Ինչու՞ համար գոյութիւն ունի այդ անհաւասարութիւնը ո՛չ թէ բնութիւնից, բնական օրէնքով, այլ առաջին շնչից յետոյ, սկսած օրօրօցից, մինչ-դեռ նրանք երկուսն էլ միւնոյն բնական ու հաւասար իրաւունքն ունեն ապրելու աճելու։ Եւ յետօյ, երբ այդ երկուսն էլ, մեծանալով բոլորովին տարբեր շրջաններում, ընկնում են կենսական ծովում, նրանցից մեկը, աշխատաւորի որդին, արդեն վաղուց, փոքրութիութեան հասակից ի վեր, վարում է աշխատաւորի չարքաշ կեանքը, ապրելով սեւ թշուառութեան ու զրկանքների մեջ մնալով անուս, տգէտ, օտար ամեն մտաւոր ու հոգեկան վայելքներին, որոնք անմատչելի են մնացել նրա համար։ Իսկ միւսը . . . օ՛, այս մեկը, մեծացած մի զեղխ կեանքի մթնոլորտում, որտեղ տիրում է նախապաշարում, շինծուութիւն, ինքնապաշտութիւն, կոյր ինքնաբաւականութիւն, այդ մեկին է վիճակված ճաշակել հանգստի և ամեն տեսակ հաճոյքների քաղցրութիւնը, ոչինչ չարտաբերել և վայելել ամեն բան։ Եւ սակայն բնականից այդ երկուսն էլ ծվեցան հաւասար։ Ինչու՞ հասարակութիւնը նրանց չը դրեց յար և նման պայմաններում հենց առաջին օրից, պայմաններ ո՛չ թէ թշուառ և ո՛չ փարթամ, այլ միակերպ բարեկեց։ Ինչու՞ չը տվեց նրանց երկուսին էլ կրթութեան և զարգացման մեկ ընդհանուր պայման, մեկ ընդհանուր մեկնման կետ. . . երկուսն էլ չե՞ն արդեօք քաղաքացի-անդամներ մարդկութեան, կոչված նրան ծառայելու, հետւաբար արժանի հանրութեան խնամքին, որ հասարակութեան պարտականութիւնն է։ Եւ եթե այդպիսի հաւասար ու բարերար, գիտութեան պահանջների համաձայն պայմաններ լինէին նրանց վրայ տարած խնամքի, նրանց կրթութեան, նրանց զարգացման պայմանները, ո՞վ կարող է չընդունել, որ նրանք երկուսն էլ կը լինէին արժանի իրանց մարդկային կոչման, ազնիւ զգացումներով ու մտքերով օժտված, ունենալով իրանց ձեռքին հաւասար զէնքեր ու համընթաց աշխատութիւն՝ իրանց ընդհանուր, այն է մարդկութեան, շահերի ու առաջադիմութեան համար։</p><p>           Ի՞նչ է պատճառը, որ կեանքում այդպես չէ, որ գոյութիւն ունի ծայրայեղ անհաւասարութիւնը, որ հասարակութիւնը բաժանված է ընդհանուր առմամբ երկու դասակարգի վրայ՝ շահերով իրար հակառակ եւ կենցաղով իրարից բոլորովին տարբեր – մեկն՝ աշխատաւոր և միւսը վայելող ու շահագործող. . . Եւ դարձեալ կայ սոյն հետեւեալ հարցը – ինչու՞ համար կան ամեն տեսակ անարդարութիւններ, ոճիրներ, վատութիւններ, պատերազմներ, և այլն։ Որո՞նք են վերջապէս այդ անհաւասարութեան և հասարակական բոլոր մնացած երեւոյթների սկզբնապատճառները և նրանց տեւողութեան պայմանները։</p><p>           Եւ այդ հարցերի առաջ մնում է չուրացած այն մեկը, որ միջոց չի ունեցել ուսումնասիրելու մարդկային հասարակութեան պատմական կեանքը և նրա զարգացման ընթացքը։ Նահապետական հին խելքերն այդ դէպքերում ամեն բան գցում են նախախնամութեան վրայ, և խեղճ ու անբաղդ Ադամի ու Եւայի մեղքերի վրայ, այդ նախախնամութեան, այդ մեղքերի մէջ տեսանելով առաջին ու վերջին պատասխանն իրանց հարցերի եւ այդ նահապետական խելքերը մտածում են, թէ իբր սկզբից ի վեր մարդկութեան մեջ գոյութիւն են ունեցել հարուստ ու աղքատ. Թէ այդպէս լինելով այժմ այդպէս էլ կը լինի միշտ. Թէ այդ է նախախնամութեան սահմանած օրէնքը։ Եւ այդ մեռելային համարումն օրինական ու յաւիտենական է համարում մարդկութեան ահագին մեծամասնութեան, այն է աշխատաւոր բազմութեան. նիւթական ստրկութիւն, թշուառութիւնը, չարատանջ կեանքն ու աշխատանքը սակաւաթիւ հարուստ ունեւոր դասակարգի օգտին, որն իշխող լինոլով նիւթականապէս, իշխող է հանդիսանում նաև հասարակական ու քաղաքական շրջաններում։ Եւ ունեւոր դասակարգը չարաչար օգտվում է այդ նահապետական տրամաբանությունից, որ ամբողջովին ծառայում է իր շահերին և յանուն քրիստոնէական վարդապետութեան՝ ամեն տեսակ եղանակներով երգում՝ իբրեւ քրիստոնէական սէրէնադ (ցայգերգ ) թշուառ բազմութեան ականջին-իմս է երկրային փառքն ու վայելքը, թող քեզ լինի երկնային արքայութիւնը. իմս է աշխատանքիդ արժեքը այդպէս է սահմանել նախախնամութիւնը։ Սքանչելի երգ աստուածավախ մի հոգու, այնպէս չէ . . . ի՜նչ հեգնիութիւն . . . բայց այդպես այդպէս չէն խօսում քննող զարգացած խելքերը. Որոնք հրաժարվել են այդ սոսկալի համոզումից, եթէ երբ և է ունէին։ Նրանք անարդար, անիմաստ, յոռի են գտնում այն, որ տգիտութիւուն ինչ-որ նախախնամութեան է վերագրել, կաշկանդելով մարդկային մտքի ազատ ու անկախ քննութիւնն ու ընթացքը, ցամաքեցնելով մարդկային նախաձեռնութեանը կերակրող աշխատաւր ընդհանրութեան կեանքի դժոխք լինելը, օրինական համարելով աշխարհումս հաստատված այն արքայութիւնը, որի մէջ վարում է իր կեանքն ունեւոր դասակարգը, դասակարգ չաշխատող, չարտադրող, վայելող, ուրիշի քրտինքով ապրող։ Եւ անկախ ու քննող խելքերը դարձնում են իրանց նայուածքը դեպի գիտութիւնը, միայն դեպի գիտութիւնը, որը՝ մարդկային հասարակութեան ամբողջ պատմական կեանքի ուսումնասիրութեամբ՝ նրանց պատասխանում է բոլորովին այլ կերպ։</p><p>           Թէ ինչպէ՛ս է նա պատասխանում, մենք կը խօսենք «Հնչակի» յաջորդ համարում </p><p>	 </p><p>	 </p><p>-  «Հնչակ», Եօթերորդ Տարի N 4, 20 Մարտ (Հ. Տ.) 1894</p><p> </p><p>(՞) -բառերն անընթեռնելի են կամ մասամբ ընթեռնելի</p>', '', '', 37, 4056, '2020-04-29 08:23:15', 14, 1, 0);
INSERT INTO `newsfeed` (`ID`, `title_hy`, `title_en`, `title_ru`, `content_hy`, `content_en`, `content_ru`, `category_ID`, `author_ID`, `pubdate`, `views`, `state`, `featured`) VALUES
(45, 'Սոցիալիստական Գաղափարը Բ.', '', '', '<p class=\\\"ql-align-justify\\\">Երկար ժամանակ այն կարծիքն էր տիում, որ մարդկային թշուառութիւնների պատճառն ինքը մարդն է, նրա չար կամքն է, մի պատմական թիւրամացութիւնն է մարդկանց մէջ։ Ենթադրվում էր, որ մարդկային կամքն ընդունակ է և կարող է հասարակային յայտնի պայմանաւորութեամբ մարդկանց մէջ՝ վերակազմել մարդկութեան հանրակացութիւնը, վերացնել հասարակութեան զանազան խաւերի մէջ դէպի իրար ունեցած թշնամութիւններն ու հակառակութիւնները և հաստատել կեանքի մէջ ոսկե դար՝ անվերջ վայելքներով, համերաշխ յարաբերութիւններով։ Քիչ աւելի հեռու գնալով՝ այդ հայեցողութիւնը սկսաւ մեղադրել զանազան ամհատներին, իշխող, կառավարող անհատներին ու քաղաքական մարմիններին, դրանց չար կամքը համարելով առաջին ու վերջին պատճառն ամեն թշուառութիւնների և առաջին ու վերջին արգելք ամեն առաջադիմութեան ու բարօրութեան։ Այդ հայեացքներն, ի հարկե, չափազանց վերացական էին, որ չէին հիմնվում ոչ մի գիտական հետազօտութեան վրայ մարդկութեան հասարակական յարաբերութիւնների շրջանում։ Մինչեւ մեր օրերն իսկ տակաւին շատ-շատերն ունեն այդպիսի կարծիք և անիշխանական կոչված հայեացքների մի մեծ մասը նոյն այդ ոգին է կրում։ Բայց գիտութեան զարգացումով՝ մարդկային խելքը սկսաւ հարց տալ, թէ որո՞նք են թշուառութիւնների հասարակային կենսական պատճառները, որո՞նք են հասարակութեան զանազան խաւերի դեպի միմեանց ունեցած հակառակութիւնների շարժառիթները եւ արդեօք մարդկային կամքը մինչեւ ո՞ր աստիճան կարող է հասարակական, կենսական տիրող պայմաններից անկախ լինել եւ անկախ գործել։ Գիտական մտքի հետազօտութեան շարունակութիւնըն առաջացնում էր դարձեալ նորանոր հարցեր--թէ մարդկային թշուառութիւնների, կենսական անվերջ կռիւների հիմնական պատճառները չե՞ն գտնվում արդեօք մարդկութեան զուտ նիւթական (MATERIEL) յարաբերութիւնների մէջ, ապրելու, ուտելու, արդիւնաբերելու, աշխատելու եղանակների ու ձեւերի մէջ թէ արդեօք այդ յարաբերութիւնները չե՞ն, որ կեանքի, գոյութեան հիմնական ու գլխաւոր պայմաններն են և որ գծում են առհասարակ հասարակութեան ու մասնաւորապես նրա զանազան խաւերի պատմական ուղին, գործերը և պատճառում դրանց, այդ խաւերի, հակառակութիւններն ու կռիւները և թէ արդեօք մարդըն, անհատն իր ընթացքով ու հոգեկանով ենթարկված չէ՞ թէ՛ բնութեան, կլիմայի ազդեցութեան և թէ գոյութեան այդ վերոյիշած արուեստական պայմանների։</p><p class=\\\"ql-align-justify\\\">               Դնել այդպիսի հարցեր նշանակում էր հետազօտել նրանց հիմնական կերպով, և գիտութեան զարգացման աստիճանն արդէն թոյլ էր տալիս որոշապէս պատասխանել այդ հարցերին։ Դարուս մէջ, մանաւանդ երկրորդ կեսում, արած գիտական հետազօտութիւններն կատարելապէս ապացուցանում են, որ մարդկային հասարակութեան ամենանախնական, սկզբնական կեանքի տնտեսական պայմանները համայնական, հաւաքական են եղել։ Երկիրը, դաշտերը չէին պատկանում անհատներին, ինչպէս յետոյ եղաւ և այժմ է, այլ ընդհանուր սեփականութիւն էին ամբողջ հասարակութեան, համայնքին կամ ցեղին։ Արօտատեղիները, անտառները նոյնպէս պատկանում էին ամենքին միաժամանակ, ինչպէս դեռ այժմ էլ շատ երկրներում, մի դրութիւն, որ մնացել է այդ հին ժամանակներից։ Վարելի հողերն էլ կրկին ընդհանուրի սեփականութիւն էին, այդ հողերը փոփոխակի կերպով յայտնի տարի ժամանակամիջոցով բաժանվում էին գերդաստանների մէջ՝ համաձայն իւրաքանրիւրի ոյժերին ու պետքերին։ Այդպիսի տնտեսական պայմանների դրութեամբ ամենքն աշխատաւոր էին, ամեն-մեկն աշխատում էր իրան համար և ապրում էին կատարեալ համերաշխութեան ու հաւասարութեան մէջ, միմեանց օգնելով, ոչինչ պահանջ չունենալով միմեանցից։ Տնտեսական համայնական պայմանները նրանց մէջ ստեղծել էին մէկ այնպիսի հասարակական վիճակ, որ ընդհանուրի բարօրութիւնն ապահովված էր։ Մասնաւոր սեփականատիրութիւնը դրանից յետոյ ամեն տեղ ստեղծեց այնպիսի ախտեր, ինչպէս գողութիւնը, աւազակութիւնը, կեղծաւորութիւնը, խաբեբայութիւնը և այլն, որոնք բոլորովին անծանօթ էին համայնական կարգերին։ Համայնական սեփականատիրութեան ժամանակ նախնական դարերում օրէնքների փոխանակ թագաւորում էին սովորութիւններն, աւանդութիւնները, որոնք չէին կարող այլ կերպ լինել, եթէ ո՛չ այնպէս, ինչպէս պահանջում էր տնտեսական համայնական պայմանների ոգին, այն է՝ համերաշխութեան, հաւասարութեան վրայ հիմնված։ Համայնական սեփականատիրութեան միջոցին մարդկանց բարոյականն առհասարակ թեքված էր դէպի առաքինութիւն, և նրանց թերութիւնները, որոնք սակայն երբեք այնպես խոշոր ու ապականված չէին, ինչպէս այժմ են, միշտ ենթարկվում էին ընդհանրութեան անհաւանութեան և պախարակման։ Համայնական սեփականատիրութեան ժամանակ գոյութեան համար մղված պատերազմը բնութեան դէմ կատարվում էր ընդհանուրի կողմից միահամուռ կերպով։ Այդօրինակ համայնական կարգեր տակաւին մինչեւ օրս էլ գօյութիւն ունեն, մնալով հին ժամանակներից, Ամերիկայի, Ասիայի և մինչեւ իսկ Ռուսաստանի մի քանի տեղերը։ Դրանք կենդանի ապացոյցներ ու արձաններ են մարդկութեան նախնական համայնական կարգերի և գիտնականին միջոց են տալիս իրական կերպով ու փաստերով քննել ու հետազօտել տեղն ու տեղը, թէ ինչ տեսակ հանրակացութիւն են ունեցել մեր վաղեմի նախնիքները և թէ այնուհետեւ ինչ եղանակով և ինչ տեսակ կերպարանափոխութիւններ է կրել նա։</p><p class=\\\"ql-align-justify\\\">               Բայց այդ հաւաքական, համայնական սեփականատիրութեան կերպերն ունէին հիմնական պակասութիւններ, եւ այլ կերպ չէր կարող լինել, քանի որ աշխատանքի միջոցներն ու գործիքներն նախնական, անկատար էին։ Այդ հիմնական պակասութիւններից գլխաւորը կայանում էր նրանում, որ հենց աշխատանքի գործիքների ու միջոցների անկատարութիւնը գրաւում էր իւրաքանչուրի ամբողջ ժամանակն աշխատութեան գործողութեան վրայ, և այդպիսով միայն կարողանում էր իւրաքանչիուրը մի կերպ լրացնել իր պետքերը, այն էլ անբաւական չափով։ Եւ աշխատանքի վրայ իւրաքանչիւրի ամբողջ ժամանակի այդ գործադրութեան պատճառով հասարակութիւնն անխուսափելի կերպով պէտք է բաժանվէր այլ և այլ խաւերի, այլ և այլ դասակարգերի վրայ և այդ բաժանման պատճառով հաւաքական կարգերը պետք է սկսէին քայքայվել զանազան դասակարգերի երեւան գալովը սկսում է առաջ գալ մինչեւ այն ժամանակ չեղած մէկ ուրիշ երեւոյթ, այն է՝ արդիւնքների փոխանակութիւնը, փոխանակութիւնը սկսելով գոյութիւն ունենալ, կամաց-կամաց կերպարափօխվում է աշխատանքի նախկին եղանակը, այն, որ տեղի ունէր հաւքական համայնական կարգերում։ Նախ երեւան է դալիս անձնական աշխատանքի սկզբունքը, որ իր ետեւից առաջացնում է մի Հիմնական պայման – անձնական աշխատանքի գործիքները սկսում են պատկանել միեւնոյն անձին։ Այդպիսով աշխատանքի գօրծիքներն իւրացվում են։ Այդտեղից առաջին անգամ սկսում է գոյուոիւն ունենալ մասնաւոր սեփականատիրութիւնը։ Բայց այդ մասնաւոր սեփականատիրութիւնն ունենում է մի յատկանիշ, որ մինչեւ այժմ էլ դեռ եւս գոյութիւն ունի նահապետական երկրներում, գեղջկական ու արհեստաւորական աշխատանքի արդյիւնքն առաջնապէս յատկացվում է իրան աշխատաւորի անձնական գործածութեան համար, գործածութիւն, որ յայտնվում էր աշխատանքի նպատակը։ Նախնական հաւաքական կարգերի անկատարութեան ու թերութիւնների շնորհով, այդ կարգերը սկսած լինելով քայքայվել և առաջ բերելով վերոյիշյած անձնական աշխատանքը, որի արտաբերած արդիւնքներն այլ եւս դառնում են մասնաւոր սեփականութիւն միեւնոյն անձի, մի կողմից և հենց այդ պատճառով՝ միւս կողմից՝ երեւան գալով արդիւնքների փոխանակութեան եղանակը—դրանցից պէտք է առաջանար, ժամանակի ընթացքում մրցում, կռիւ նախ անհատների և ապա ամբողջ դասակարգերի մէջ իրար դէմ։ Այդ կռւում, ի հարկե, սկսում է տեղի ունենալ բիրտ ոյժը, բռնութիւնը, խաբեբայութիւնը, եւ հասարակութեան մի մասն աջողում է գրաւել մեկ առանձնաշնորհված դիրք, միւս մասին գործադրել տալով նաև այն բաժին աշխատանքը, որ իրան էր ընկնում առաջ, և ինքն ապրելով ուրիշի այդ աշխատանքով, ձեռքըն առած գործերի կառավարութիւնը։ Եւ այդպէս տնտեսական նախնական համայնական, հաւաքական կարգերի քայքայման հետ միատեղ սկսում է տեղի ունենալ դասակարգերի կռիւը միմեանց մէջ, որ տեւում է մինչեւ օրս և որ ներկայումս ստացել է աւելի կատաղի ու անհաշտ կերպարանք, քան երբ եւ է անցեալում։</p><p class=\\\"ql-align-justify\\\">               Արդիւնաբերութեան միջոցների առաւել կատարելագործութեամբ և աշխատանքի բաժանման շնորհով, ըստ որում աւելի զօրաւոր դասակարգերը դարձել էին մեծ սեփականատէրեր, առաջացաւ գերութիւնը։ Իր ժամանակին գերութիւնն ինչպէս ինքնըստինքեան մեկ անխուսափելի, ճակատագրական հետեւանք էր սեփականատիրութեան կերպերի և աշխատանքի բաժանման, նոյնպէս նա նաեւ անհրաժեշտ ու օգտակար դեր կատարեց մարդկութեան առաջադիմութեան համար։ Գերութեան ժամանակները հասարակութեան մեկ առաւել կամ պակաս մեծամասնութիւնը հարկադրված էր կատարել արդիւնաբերական ու հողային աշխատութիւնները, իսկ հասարակութեան միւս մասը սեփականատէր էր և իր ձեռքն էր գցել երկրի կառավարութեան ղեկը։ Այդ պայմանը հասարակութեան այս վերջին մասին տալիս էր շատ ազատ ժամանակ, որ նա գործադրում էր գիտութեան ու արուեստների աշխատութեան ու մշակման վրայ, որով եւս իր կողմից հանդիսանում էր անհրաժեշտ նպաստող ու ֆակտօր առաջադիմութեան։ Այդ միջոցին հասարակութեան առանձնաշնորհված մասը տակաւին կատարում եր իր պատմական օգտակար դերը։</p><p class=\\\"ql-align-justify\\\">               Երբ համայնական դրութեան արտաբերութեան միջոցները հասան այն աստիճան զարգացման, որ իւրաքանչիւրը կարող էր այլ եւս արդիւնաբերել աւելի, քան իր անձնական պէտքն էր, անպատճառ պէտք է կազմվեր մեկ այնպիսի դասակարգ, որ ինքը դադարելով աշխատանք գործադրելուց կարող էր օգտվել ու ապրել աշխատաւոր դասակարգի արտաբերած արդիւնքներով։ Նոյնպէս եղաւ նաեւ գերութեան հետ։ Ապա գերութիւնը սկսաւ կամաց-կամաց վերանալ այն ժամանակից, երբ միւս կողմից սկսել էին առաջ գալ աշխատանքի ուրիշ եղանակներ, որոնք աւելի համապատասխան էին հասարակութեան նիւթական պահանջներին։ Ժամանակի ընթացքում  նա վերացաւ բոլորովին, տեղի տալով տնտեսական մի նոր միջավայրի և շրջանի, ուր ճորտութիւնը, աւատական դրութիւնը, եղաւ կարգն ու կանոնը, ունենալով աշխատանքի իրան յատուկ կերպն ու եղանակը։ Ճորտութեան ժամանակը իշխող, տիրապետող դասակարգն էր աւատական ազնւականութիւնը, որ ինչպէս գերութեան միջոցին իշխող զինորական, ազնուական ու հոգեւորական դասակարգերը, իր ժամանակին ունէր իր պատմական օգտակարութիւնը, Նա զինւորական ու կրթված դասակարգ էր կազմում, որ պաշտպանում էր գիւղացի-սեփականատէրին բազմաթիւ արտաքին թշնամիներից յայտնի բաժին և փոխարենը ստանում էր նրա արտադրաք արդյունքներից յայտնի քանակութիւն աշխատանք։ Որպէս գերութեան ժամանակի ազնւական ու հոգեւորական իշխող դասակարգը, նոյնպէս աւատական ազնւականութիւնն իր սկզբնաուրութեան ժամանակ կատարելով այդ օգտակար դերերը, կառավարում էր նաև երկիրը, հասարակաց գործերը, աշխատանքը։ Բայց արդիւնաբերութեան միջոցների զարգացումով և դրա հիման վրայ հասարակական դրութեան կերպարանափոխութեամբ՝ այդ առանձնաշնորհված դասակարգերը կորցնում են իրանց օգտակարութիւնը, դառնում են վնասակար, քանի որ այդ հասարակական կերպարանափոխութիւնն այլ եւս աւելորդ է դարձնում նրանց գոյութիւնը։ Տնտեսական յարաբերութիւնների նոր կերպերն այլ եւս անխուսափելի, ճակատագրական են դարձնում՝ այդ դասակարգերի վերացումը, որոնք մանաւանդ այդ միջոցին, որպէս և առաջ առհասարակ, օգտվելով իրանց առանձնաշնորհված դիրքով և իրանց ունեցած գիտութեամբ ու զինւորական-քաղաքական զօրութեամբ, գործ են դնում աշխատաւոր բազմութեան վրայ ամեն տեսակ բռնութիւն, ճնշում, կամայականութիւն եւ այլն, իրանք էլ արդեն ծուլութիւնից ու անգործութիւնից վարակված լինելով ամեն տեսակ մոլութիւններով։</p><p class=\\\"ql-align-justify\\\">	Աւատական դրութեան յաջորդում է ներկայ հասարակական կազմակերպութիւնը, որ արդիւնք է արտաբերութեան այժմեան, կապիտալական, կերպերի ու եղանակների և որը, նախկին գերութիւնից, միջնադարեան ճորտութիւնից յետոյ առաջացրել է մի նոր ստկական վիճակ , այն է՝ վարձւորութիւնը (SALARIAT)։ Այդ բուրժուազական հասարակական կազմակերպութիւնը և հնադարեան ու աւատական ազնւականների պէս չարդիւնաբերող, միայն վայելող ուրիշի աշխատանքը և սեփականատէր բուրժուա դասակարգն էլ վերանալու վրայ է այսօր, կատարած ու աւարտած լինելով իր պատմական օգտակար դերը եւ այժմ հանդիսանալով միայն վնասակար աշխատւոր ընդհանրութեան և արգելք մարդկութեան յետագայ առաջադիմութեան։</p><p class=\\\"ql-align-justify\\\">	Մեր ներկայ գրութեան III–րդ գլուխը նուիրված կը լինի այ նիւթին։</p><p class=\\\"ql-align-justify\\\">	 </p><p>-         «Հնչակ», Եօթերորդ Տարի N 5., 10 Ապրիլ (Հ. 8.) 1894</p><p class=\\\"ql-align-justify\\\"> </p><p><br></p>', '', '', 37, 4056, '2020-04-29 13:35:00', 130, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed_comments`
--

CREATE TABLE `newsfeed_comments` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_ID` int(11) NOT NULL,
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `ID` int(255) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(255) NOT NULL,
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`ID`, `country`, `region`, `date`, `IP`) VALUES
(1154, 'AM', 'Yerevan', 1589163667, '37.252.92.83');

-- --------------------------------------------------------

--
-- Table structure for table `online_archive`
--

CREATE TABLE `online_archive` (
  `ID` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `max_count` int(11) NOT NULL,
  `date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_archive`
--

INSERT INTO `online_archive` (`ID`, `count`, `max_count`, `date`) VALUES
(8, 7, 7, 1587204384),
(9, 13, 13, 1587291142),
(10, 11, 13, 1587378088),
(11, 12, 13, 1587464922),
(12, 14, 14, 1587552254),
(13, 5, 14, 1587638886),
(14, 7, 14, 1587726010),
(15, 5, 14, 1587812962),
(16, 13, 14, 1587903119),
(17, 11, 14, 1587990795),
(18, 7, 14, 1588080143),
(19, 8, 14, 1588167235),
(20, 7, 14, 1588254183),
(21, 6, 14, 1588340636),
(22, 10, 14, 1588427243),
(23, 3, 14, 1588513907),
(24, 3, 14, 1588603956),
(25, 9, 14, 1588691807),
(26, 4, 14, 1588778395),
(27, 3, 14, 1588865758),
(28, 3, 14, 1588953067),
(29, 3, 14, 1589046177);

-- --------------------------------------------------------

--
-- Table structure for table `opinions`
--

CREATE TABLE `opinions` (
  `ID` int(11) NOT NULL,
  `name_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opinions`
--

INSERT INTO `opinions` (`ID`, `name_hy`, `name_en`, `name_ru`, `content_hy`, `content_en`, `content_ru`, `link`, `state`) VALUES
(1, 'John Doe', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `group`, `parent`, `sort`) VALUES
(132, 'introduction', 1, 0),
(133, 'introduction', 2, 0),
(134, 'introduction', 3, 0),
(135, 'introduction', 4, 0),
(282, 'newsfeed', 39, 1),
(281, 'newsfeed', 38, 1),
(291, 'newsfeed', 40, 1),
(308, 'users', 4523, 1),
(292, 'newsfeed', 41, 1),
(293, 'newsfeed', 42, 1),
(294, 'newsfeed', 43, 1),
(295, 'newsfeed', 44, 1),
(296, 'newsfeed', 45, 1),
(309, 'users', 27456, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ID` int(11) NOT NULL,
  `title_hy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_hy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `content_ru` text COLLATE utf8mb4_unicode_ci,
  `parent_ID` int(11) NOT NULL,
  `country_ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `author_ID` int(255) NOT NULL,
  `pubdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `ID` int(255) NOT NULL,
  `icon_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`ID`, `icon_title`, `title`, `link`) VALUES
(1, 'youtube', 'Youtube', 'https://www.youtube.com/channel/UCCSJL90Wc6Bm4aoAZQ6ZOVA'),
(2, 'facebook-f', 'Facebook', 'https://www.facebook.com/SDHPArmenia');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `ID` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`ID`, `email`, `date`) VALUES
(12, 'len.gevorgyan@gmail.com', '1588349198'),
(15, 'ronin.ans@gmail.com', '1588428376'),
(16, 'rafo-step@mail.ru', '1588614607'),
(17, 'raasdasdasdasdasdas@mail.ri', '1588615220');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `honorary`
--
ALTER TABLE `honorary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `introduction`
--
ALTER TABLE `introduction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `joiners`
--
ALTER TABLE `joiners`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_login`
--
ALTER TABLE `logs_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `newsfeed`
--
ALTER TABLE `newsfeed`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `newsfeed_comments`
--
ALTER TABLE `newsfeed_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `online_archive`
--
ALTER TABLE `online_archive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27457;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `honorary`
--
ALTER TABLE `honorary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `introduction`
--
ALTER TABLE `introduction`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `joiners`
--
ALTER TABLE `joiners`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `logs_login`
--
ALTER TABLE `logs_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `newsfeed`
--
ALTER TABLE `newsfeed`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsfeed_comments`
--
ALTER TABLE `newsfeed_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT for table `online_archive`
--
ALTER TABLE `online_archive`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
