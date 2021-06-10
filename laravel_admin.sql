-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 04:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_tables`
--

CREATE TABLE `book_tables` (
  `bt_id` int(11) NOT NULL,
  `bt_restaurant` int(11) NOT NULL DEFAULT 0,
  `bt_date` date DEFAULT NULL,
  `bt_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bt_guest` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bt_phone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bt_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_tables`
--

INSERT INTO `book_tables` (`bt_id`, `bt_restaurant`, `bt_date`, `bt_time`, `bt_guest`, `bt_name`, `bt_email`, `bt_phone`, `bt_subject`, `created_at`, `updated_at`) VALUES
(1, 12, '2020-11-30', '09:22', '5', 'Golam Ambia', 'wtm.golam@gmail.com', '7003832809', 'gbgbhn', '2020-11-22 01:19:18', '2020-11-22 01:19:18'),
(2, 12, '2020-11-25', '17:38', '5', 'Golam Ambia', 'golamambia78@gmail.com', '7003832809', 'gbgn', '2020-11-22 09:35:25', '2020-11-22 09:35:25'),
(3, 12, '2020-11-26', '11:00 AM', '5', 'Golam Ambia', 'golamambia78@gmail.com', '7003832809', 'cvv', '2020-11-22 12:23:09', '2020-11-22 12:23:09'),
(4, 12, '2020-11-30', '1:00 PM', '8', 'Golam Ambia', 'wtm@gmail.com', '7003832809', 'okkkk', '2020-11-22 12:24:40', '2020-11-22 12:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` text DEFAULT NULL,
  `category_picture` varchar(255) DEFAULT NULL,
  `category_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `category_picture`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant', 'Restaurant', '1597166342.png', 0, '2020-08-11 11:49:02', '2020-09-05 22:27:05'),
(2, 'Grocerry & Essential', 'Grocerry & Essential', '1597166356.png', 0, '2020-08-11 11:49:16', '2020-08-11 12:31:06'),
(3, 'Fruit & Vegitables', 'Fruit & Vegitables', '1597166367.png', 0, '2020-08-11 11:49:27', '2020-08-11 11:49:27'),
(4, 'Egg, fish & meat', 'Egg, fish & meat', '1597166413.png', 0, '2020-08-11 11:50:13', '2020-08-11 11:50:13'),
(5, 'Medicines', 'Medicines', '1597166423.png', 0, '2020-08-11 11:50:23', '2020-08-11 11:50:23'),
(6, 'Pet supplies', 'Pet supplies', '1597166432.png', 0, '2020-08-11 11:50:32', '2020-08-11 11:50:32'),
(7, 'Health & Wellness', 'Health & Wellness', '1597166443.png', 0, '2020-08-11 11:50:43', '2020-08-11 11:50:43'),
(8, 'Gifts & Lifestyle', 'Gifts & Lifestyle', '1597166453.png', 0, '2020-08-11 11:50:53', '2020-08-11 11:50:53'),
(9, 'Baby & moms', 'Baby & moms', '1597166463.png', 0, '2020-08-11 11:51:03', '2020-08-11 11:51:03'),
(10, 'Send Packages', 'Send Packages', '1597166477.png', 0, '2020-08-11 11:51:17', '2020-08-11 11:51:17'),
(11, 'Other Store', 'Other Store', '1597166491.png', 0, '2020-08-11 11:51:31', '2020-08-11 11:51:31'),
(12, 'Taxi', 'Taxi', '1597166503.png', 0, '2020-08-11 11:51:43', '2020-08-11 11:51:43'),
(13, 'test', 'desc', '1603133021.jpg', 0, '2020-10-19 13:13:41', '2020-10-19 13:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `name` varchar(100) NOT NULL,
  `abv` char(2) NOT NULL DEFAULT '',
  `abv_two` char(3) DEFAULT NULL,
  `abv_two_alt` char(3) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`name`, `abv`, `abv_two`, `abv_two_alt`, `code`, `slug`) VALUES
('Afghanistan', 'AF', 'AFG', NULL, '4', 'afghanistan'),
('Aland Islands', 'AX', 'ALA', NULL, '248', 'aland-islands'),
('Albania', 'AL', 'ALB', NULL, '8', 'albania'),
('Algeria', 'DZ', 'DZA', NULL, '12', 'algeria'),
('American Samoa', 'AS', 'ASM', NULL, '16', 'american-samoa'),
('Andorra', 'AD', 'AND', NULL, '20', 'andorra'),
('Angola', 'AO', 'AGO', NULL, '24', 'angola'),
('Anguilla', 'AI', 'AIA', NULL, '660', 'anguilla'),
('Antigua and Barbuda', 'AG', 'ATG', NULL, '28', 'antigua-and-barbuda'),
('Argentina', 'AR', 'ARG', NULL, '32', 'argentina'),
('Armenia', 'AM', 'ARM', NULL, '51', 'armenia'),
('Aruba', 'AW', 'ABW', NULL, '533', 'aruba'),
('Australia', 'AU', 'AUS', NULL, '36', 'australia'),
('Austria', 'AT', 'AUT', NULL, '40', 'austria'),
('Azerbaijan', 'AZ', 'AZE', NULL, '31', 'azerbaijan'),
('Bahamas', 'BS', 'BHS', NULL, '44', 'bahamas'),
('Bahrain', 'BH', 'BHR', NULL, '48', 'bahrain'),
('Bangladesh', 'BD', 'BGD', NULL, '50', 'bangladesh'),
('Barbados', 'BB', 'BRB', NULL, '52', 'barbados'),
('Belarus', 'BY', 'BLR', NULL, '112', 'belarus'),
('Belgium', 'BE', 'BEL', NULL, '56', 'belgium'),
('Belize', 'BZ', 'BLZ', NULL, '84', 'belize'),
('Benin', 'BJ', 'BEN', NULL, '204', 'benin'),
('Bermuda', 'BM', 'BMU', NULL, '60', 'bermuda'),
('Bhutan', 'BT', 'BTN', NULL, '64', 'bhutan'),
('Bolivia', 'BO', 'BOL', NULL, '68', 'bolivia'),
('Bosnia and Herzegovina', 'BA', 'BIH', NULL, '70', 'bosnia-and-herzegovina'),
('Botswana', 'BW', 'BWA', NULL, '72', 'botswana'),
('Brazil', 'BR', 'BRA', NULL, '76', 'brazil'),
('British Virgin Islands', 'VG', 'VGB', NULL, '92', 'british-virgin-islands'),
('Brunei Darussalam', 'BN', 'BRN', NULL, '96', 'brunei-darussalam'),
('Bulgaria', 'BG', 'BGR', NULL, '100', 'bulgaria'),
('Burkina Faso', 'BF', 'BFA', NULL, '854', 'burkina-faso'),
('Burundi', 'BI', 'BDI', NULL, '108', 'burundi'),
('Cambodia', 'KH', 'KHM', NULL, '116', 'cambodia'),
('Cameroon', 'CM', 'CMR', NULL, '120', 'cameroon'),
('Canada', 'CA', 'CAN', NULL, '124', 'canada'),
('Cape Verde', 'CV', 'CPV', NULL, '132', 'cape-verde'),
('Cayman Islands', 'KY', 'CYM', NULL, '136', 'cayman-islands'),
('Central African Republic', 'CF', 'CAF', NULL, '140', 'central-african-republic'),
('Chad', 'TD', 'TCD', NULL, '148', 'chad'),
('Chile', 'CL', 'CHL', 'CHI', '152', 'chile'),
('China', 'CN', 'CHN', NULL, '156', 'china'),
('Colombia', 'CO', 'COL', NULL, '170', 'colombia'),
('Comoros', 'KM', 'COM', NULL, '174', 'comoros'),
('Congo', 'CG', 'COG', NULL, '178', 'congo'),
('Cook Islands', 'CK', 'COK', NULL, '184', 'cook-islands'),
('Costa Rica', 'CR', 'CRI', NULL, '188', 'costa-rica'),
('Cote d\'Ivoire', 'CI', 'CIV', NULL, '384', 'cote-divoire'),
('Croatia', 'HR', 'HRV', NULL, '191', 'croatia'),
('Cuba', 'CU', 'CUB', NULL, '192', 'cuba'),
('Cyprus', 'CY', 'CYP', NULL, '196', 'cyprus'),
('Czech Republic', 'CZ', 'CZE', NULL, '203', 'czech-republic'),
('Democratic Republic of the Congo', 'CD', 'COD', NULL, '180', 'democratic-republic-of-congo'),
('Denmark', 'DK', 'DNK', NULL, '208', 'denmark'),
('Djibouti', 'DJ', 'DJI', NULL, '262', 'djibouti'),
('Dominica', 'DM', 'DMA', NULL, '212', 'dominica'),
('Dominican Republic', 'DO', 'DOM', NULL, '214', 'dominican-republic'),
('Ecuador', 'EC', 'ECU', NULL, '218', 'ecuador'),
('Egypt', 'EG', 'EGY', NULL, '818', 'egypt'),
('El Salvador', 'SV', 'SLV', NULL, '222', 'el-salvador'),
('Equatorial Guinea', 'GQ', 'GNQ', NULL, '226', 'equatorial-guinea'),
('Eritrea', 'ER', 'ERI', NULL, '232', 'eritrea'),
('Estonia', 'EE', 'EST', NULL, '233', 'estonia'),
('Ethiopia', 'ET', 'ETH', NULL, '231', 'ethiopia'),
('Faeroe Islands', 'FO', 'FRO', NULL, '234', 'faeroe-islands'),
('Falkland Islands', 'FK', 'FLK', NULL, '238', 'falkland-islands'),
('Fiji', 'FJ', 'FJI', NULL, '242', 'fiji'),
('Finland', 'FI', 'FIN', NULL, '246', 'finland'),
('France', 'FR', 'FRA', NULL, '250', 'france'),
('French Guiana', 'GF', 'GUF', NULL, '254', 'french-guiana'),
('French Polynesia', 'PF', 'PYF', NULL, '258', 'french-polynesia'),
('Gabon', 'GA', 'GAB', NULL, '266', 'gabon'),
('Gambia', 'GM', 'GMB', NULL, '270', 'gambia'),
('Georgia', 'GE', 'GEO', NULL, '268', 'georgia'),
('Germany', 'DE', 'DEU', NULL, '276', 'germany'),
('Ghana', 'GH', 'GHA', NULL, '288', 'ghana'),
('Gibraltar', 'GI', 'GIB', NULL, '292', 'gibraltar'),
('Greece', 'GR', 'GRC', NULL, '300', 'greece'),
('Greenland', 'GL', 'GRL', NULL, '304', 'greenland'),
('Grenada', 'GD', 'GRD', NULL, '308', 'grenada'),
('Guadeloupe', 'GP', 'GLP', NULL, '312', 'guadeloupe'),
('Guam', 'GU', 'GUM', NULL, '316', 'guam'),
('Guatemala', 'GT', 'GTM', NULL, '320', 'guatemala'),
('Guernsey', 'GG', 'GGY', NULL, '831', 'guernsey'),
('Guinea', 'GN', 'GIN', NULL, '324', 'guinea'),
('Guinea-Bissau', 'GW', 'GNB', NULL, '624', 'guinea-bissau'),
('Guyana', 'GY', 'GUY', NULL, '328', 'guyana'),
('Haiti', 'HT', 'HTI', NULL, '332', 'haiti'),
('Holy See', 'VA', 'VAT', NULL, '336', 'holy-see'),
('Honduras', 'HN', 'HND', NULL, '340', 'honduras'),
('Hong Kong', 'HK', 'HKG', NULL, '344', 'hong-kong'),
('Hungary', 'HU', 'HUN', NULL, '348', 'hungary'),
('Iceland', 'IS', 'ISL', NULL, '352', 'iceland'),
('India', 'IN', 'IND', NULL, '356', 'india'),
('Indonesia', 'ID', 'IDN', NULL, '360', 'indonesia'),
('Iran', 'IR', 'IRN', NULL, '364', 'iran'),
('Iraq', 'IQ', 'IRQ', NULL, '368', 'iraq'),
('Ireland', 'IE', 'IRL', NULL, '372', 'ireland'),
('Isle of Man', 'IM', 'IMN', NULL, '833', 'isle-of-man'),
('Israel', 'IL', 'ISR', NULL, '376', 'israel'),
('Italy', 'IT', 'ITA', NULL, '380', 'italy'),
('Jamaica', 'JM', 'JAM', NULL, '388', 'jamaica'),
('Japan', 'JP', 'JPN', NULL, '392', 'japan'),
('Jersey', 'JE', 'JEY', NULL, '832', 'jersey'),
('Jordan', 'JO', 'JOR', NULL, '400', 'jordan'),
('Kazakhstan', 'KZ', 'KAZ', NULL, '398', 'kazakhstan'),
('Kenya', 'KE', 'KEN', NULL, '404', 'kenya'),
('Kiribati', 'KI', 'KIR', NULL, '296', 'kiribati'),
('Kuwait', 'KW', 'KWT', NULL, '414', 'kuwait'),
('Kyrgyzstan', 'KG', 'KGZ', NULL, '417', 'kyrgyzstan'),
('Laos', 'LA', 'LAO', NULL, '418', 'laos'),
('Latvia', 'LV', 'LVA', NULL, '428', 'latvia'),
('Lebanon', 'LB', 'LBN', NULL, '422', 'lebanon'),
('Lesotho', 'LS', 'LSO', NULL, '426', 'lesotho'),
('Liberia', 'LR', 'LBR', NULL, '430', 'liberia'),
('Libyan Arab Jamahiriya', 'LY', 'LBY', NULL, '434', 'libyan-arab-jamahiriya'),
('Liechtenstein', 'LI', 'LIE', NULL, '438', 'liechtenstein'),
('Lithuania', 'LT', 'LTU', NULL, '440', 'lithuania'),
('Luxembourg', 'LU', 'LUX', NULL, '442', 'luxembourg'),
('Macao', 'MO', 'MAC', NULL, '446', 'macao'),
('Macedonia', 'MK', 'MKD', NULL, '807', 'macedonia'),
('Madagascar', 'MG', 'MDG', NULL, '450', 'madagascar'),
('Malawi', 'MW', 'MWI', NULL, '454', 'malawi'),
('Malaysia', 'MY', 'MYS', NULL, '458', 'malaysia'),
('Maldives', 'MV', 'MDV', NULL, '462', 'maldives'),
('Mali', 'ML', 'MLI', NULL, '466', 'mali'),
('Malta', 'MT', 'MLT', NULL, '470', 'malta'),
('Marshall Islands', 'MH', 'MHL', NULL, '584', 'marshall-islands'),
('Martinique', 'MQ', 'MTQ', NULL, '474', 'martinique'),
('Mauritania', 'MR', 'MRT', NULL, '478', 'mauritania'),
('Mauritius', 'MU', 'MUS', NULL, '480', 'mauritius'),
('Mayotte', 'YT', 'MYT', NULL, '175', 'mayotte'),
('Mexico', 'MX', 'MEX', NULL, '484', 'mexico'),
('Micronesia', 'FM', 'FSM', NULL, '583', 'micronesia'),
('Moldova', 'MD', 'MDA', NULL, '498', 'moldova'),
('Monaco', 'MC', 'MCO', NULL, '492', 'monaco'),
('Mongolia', 'MN', 'MNG', NULL, '496', 'mongolia'),
('Montenegro', 'ME', 'MNE', NULL, '499', 'montenegro'),
('Montserrat', 'MS', 'MSR', NULL, '500', 'montserrat'),
('Morocco', 'MA', 'MAR', NULL, '504', 'morocco'),
('Mozambique', 'MZ', 'MOZ', NULL, '508', 'mozambique'),
('Myanmar', 'MM', 'MMR', 'BUR', '104', 'myanmar'),
('Namibia', 'NA', 'NAM', NULL, '516', 'namibia'),
('Nauru', 'NR', 'NRU', NULL, '520', 'nauru'),
('Nepal', 'NP', 'NPL', NULL, '524', 'nepal'),
('Netherlands', 'NL', 'NLD', NULL, '528', 'netherlands'),
('Netherlands Antilles', 'AN', 'ANT', NULL, '530', 'netherlands-antilles'),
('New Caledonia', 'NC', 'NCL', NULL, '540', 'new-caledonia'),
('New Zealand', 'NZ', 'NZL', NULL, '554', 'new-zealand'),
('Nicaragua', 'NI', 'NIC', NULL, '558', 'nicaragua'),
('Niger', 'NE', 'NER', NULL, '562', 'niger'),
('Nigeria', 'NG', 'NGA', NULL, '566', 'nigeria'),
('Niue', 'NU', 'NIU', NULL, '570', 'niue'),
('Norfolk Island', 'NF', 'NFK', NULL, '574', 'norfolk-island'),
('North Korea', 'KP', 'PRK', NULL, '408', 'north-korea'),
('Northern Mariana Islands', 'MP', 'MNP', NULL, '580', 'northern-mariana-islands'),
('Norway', 'NO', 'NOR', NULL, '578', 'norway'),
('Oman', 'OM', 'OMN', NULL, '512', 'oman'),
('Pakistan', 'PK', 'PAK', NULL, '586', 'pakistan'),
('Palau', 'PW', 'PLW', NULL, '585', 'palau'),
('Palestine', 'PS', 'PSE', NULL, '275', 'palestine'),
('Panama', 'PA', 'PAN', NULL, '591', 'panama'),
('Papua New Guinea', 'PG', 'PNG', NULL, '598', 'papua-new-guinea'),
('Paraguay', 'PY', 'PRY', NULL, '600', 'paraguay'),
('Peru', 'PE', 'PER', NULL, '604', 'peru'),
('Philippines', 'PH', 'PHL', NULL, '608', 'philippines'),
('Pitcairn', 'PN', 'PCN', NULL, '612', 'pitcairn'),
('Poland', 'PL', 'POL', NULL, '616', 'poland'),
('Portugal', 'PT', 'PRT', NULL, '620', 'portugal'),
('Puerto Rico', 'PR', 'PRI', NULL, '630', 'puerto-rico'),
('Qatar', 'QA', 'QAT', NULL, '634', 'qatar'),
('Reunion', 'RE', 'REU', NULL, '638', 'reunion'),
('Romania', 'RO', 'ROU', 'ROM', '642', 'romania'),
('Russian Federation', 'RU', 'RUS', NULL, '643', 'russian-federation'),
('Rwanda', 'RW', 'RWA', NULL, '646', 'rwanda'),
('Saint Helena', 'SH', 'SHN', NULL, '654', 'saint-helena'),
('Saint Kitts and Nevis', 'KN', 'KNA', NULL, '659', 'saint-kitts-and-nevis'),
('Saint Lucia', 'LC', 'LCA', NULL, '662', 'saint-lucia'),
('Saint Pierre and Miquelon', 'PM', 'SPM', NULL, '666', 'saint-pierre-and-miquelon'),
('Saint Vincent and the Grenadines', 'VC', 'VCT', NULL, '670', 'saint-vincent-and-grenadines'),
('Saint-Barthelemy', 'BL', 'BLM', NULL, '652', 'saint-barthelemy'),
('Saint-Martin', 'MF', 'MAF', NULL, '663', 'saint-martin'),
('Samoa', 'WS', 'WSM', NULL, '882', 'samoa'),
('San Marino', 'SM', 'SMR', NULL, '674', 'san-marino'),
('Sao Tome and Principe', 'ST', 'STP', NULL, '678', 'sao-tome-and-principe'),
('Saudi Arabia', 'SA', 'SAU', NULL, '682', 'saudi-arabia'),
('Senegal', 'SN', 'SEN', NULL, '686', 'senegal'),
('Serbia', 'RS', 'SRB', NULL, '688', 'serbia'),
('Seychelles', 'SC', 'SYC', NULL, '690', 'seychelles'),
('Sierra Leone', 'SL', 'SLE', NULL, '694', 'sierra-leone'),
('Singapore', 'SG', 'SGP', NULL, '702', 'singapore'),
('Slovakia', 'SK', 'SVK', NULL, '703', 'slovakia'),
('Slovenia', 'SI', 'SVN', NULL, '705', 'slovenia'),
('Solomon Islands', 'SB', 'SLB', NULL, '90', 'solomon-islands'),
('Somalia', 'SO', 'SOM', NULL, '706', 'somalia'),
('South Africa', 'ZA', 'ZAF', NULL, '710', 'south-africa'),
('South Korea', 'KR', 'KOR', NULL, '410', 'south-korea'),
('South Sudan', 'SS', 'SSD', NULL, '728', 'south-sudan'),
('Spain', 'ES', 'ESP', NULL, '724', 'spain'),
('Sri Lanka', 'LK', 'LKA', NULL, '144', 'sri-lanka'),
('Sudan', 'SD', 'SDN', NULL, '729', 'sudan'),
('Suriname', 'SR', 'SUR', NULL, '740', 'suriname'),
('Svalbard and Jan Mayen Islands', 'SJ', 'SJM', NULL, '744', 'svalbard-and-jan-mayen-islands'),
('Swaziland', 'SZ', 'SWZ', NULL, '748', 'swaziland'),
('Sweden', 'SE', 'SWE', NULL, '752', 'sweden'),
('Switzerland', 'CH', 'CHE', NULL, '756', 'switzerland'),
('Syrian Arab Republic', 'SY', 'SYR', NULL, '760', 'syrian-arab-republic'),
('Tajikistan', 'TJ', 'TJK', NULL, '762', 'tajikistan'),
('Tanzania', 'TZ', 'TZA', NULL, '834', 'tanzania'),
('Thailand', 'TH', 'THA', NULL, '764', 'thailand'),
('Timor-Leste', 'TP', 'TLS', NULL, '626', 'timor-leste'),
('Togo', 'TG', 'TGO', NULL, '768', 'togo'),
('Tokelau', 'TK', 'TKL', NULL, '772', 'tokelau'),
('Tonga', 'TO', 'TON', NULL, '776', 'tonga'),
('Trinidad and Tobago', 'TT', 'TTO', NULL, '780', 'trinidad-and-tobago'),
('Tunisia', 'TN', 'TUN', NULL, '788', 'tunisia'),
('Turkey', 'TR', 'TUR', NULL, '792', 'turkey'),
('Turkmenistan', 'TM', 'TKM', NULL, '795', 'turkmenistan'),
('Turks and Caicos Islands', 'TC', 'TCA', NULL, '796', 'turks-and-caicos-islands'),
('Tuvalu', 'TV', 'TUV', NULL, '798', 'tuvalu'),
('U.S. Virgin Islands', 'VI', 'VIR', NULL, '850', 'us-virgin-islands'),
('Uganda', 'UG', 'UGA', NULL, '800', 'uganda'),
('Ukraine', 'UA', 'UKR', NULL, '804', 'ukraine'),
('United Arab Emirates', 'AE', 'ARE', NULL, '784', 'united-arab-emirates'),
('United Kingdom', 'UK', 'GBR', NULL, '826', 'united-kingdom'),
('United States', 'US', 'USA', NULL, '840', 'united-states'),
('Uruguay', 'UY', 'URY', NULL, '858', 'uruguay'),
('Uzbekistan', 'UZ', 'UZB', NULL, '860', 'uzbekistan'),
('Vanuatu', 'VU', 'VUT', NULL, '548', 'vanuatu'),
('Venezuela', 'VE', 'VEN', NULL, '862', 'venezuela'),
('Viet Nam', 'VN', 'VNM', NULL, '704', 'viet-nam'),
('Wallis and Futuna Islands', 'WF', 'WLF', NULL, '876', 'wallis-and-futuna-islands'),
('Western Sahara', 'EH', 'ESH', NULL, '732', 'western-sahara'),
('Yemen', 'YE', 'YEM', NULL, '887', 'yemen'),
('Zambia', 'ZM', 'ZMB', NULL, '894', 'zambia'),
('Zimbabwe', 'ZW', 'ZWE', NULL, '716', 'zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `total_amount` varchar(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `receipt`, `razorpay_payment_id`, `razorpay_signature`, `razorpay_order_id`, `total_amount`, `status`, `order_status`, `created_at`, `updated_at`) VALUES
(5, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '301839888', 'pay_GACT0sia2E0RsN', 'e03d82d6978b1ca4670fc5b83f15cb488a7032a10deb87048e91adc3913e0ddf', 'order_GACSdTSuTXN5ul', '60', 'paid', 4, '2020-12-08 13:01:28', '2020-12-10 10:19:23'),
(6, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '1828463274', 'pay_GACbvkKztv0eRR', 'a2993ac6d264845fe04f8962370631e9b0d022614a2e68e2171f120662ea6421', 'order_GACbWfxjlkqQcZ', '2180', 'paid', 3, '2020-12-08 13:09:53', '2020-12-10 11:12:42'),
(7, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '1093807930', 'pay_GAChmiCvvFqwuA', '804cecf7a842a3abc800ef7d1f52bb416db73744e6be13dd4e52d554bc59f385', 'order_GAChY9YfxNYnbU', '2180', 'paid', 5, '2020-12-08 13:15:15', '2020-12-10 11:44:43'),
(8, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '440983147', 'pay_GAtDDMi8AZbS6C', 'db4154dba081cab617c3904b8dfd9ba6698c3e35b9305d9ec127751b846481d0', 'order_GAtCxEq7tway8Z', '120', 'paid', 3, '2020-12-10 06:50:02', '2020-12-10 11:43:31'),
(9, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '128894599', 'pay_GB0XH8rETrAJz1', '63662629a9804bef533c14d6d599b4a343c1232e4e3950c37325929b741c722c', 'order_GB0X2RwoEC8hKT', '2240', 'paid', 2, '2020-12-10 13:59:52', '2020-12-20 09:01:55'),
(10, 9, 'Golam Ambia', 'wtm.golam@gmail.com', '2001313102', 'pay_GIShVUpfwJ2gFD', 'bd9dbc440caceef028d220a54e4ab2aa087949b52f6a2f36bc43d9bf6f99962e', 'order_GISh7P3569WELs', '4240', 'paid', 1, '2020-12-29 10:05:38', '2020-12-29 10:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `op_id` int(11) NOT NULL,
  `op_restaurant` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(255) DEFAULT NULL,
  `product_qty` varchar(5) DEFAULT NULL,
  `product_price` varchar(11) DEFAULT NULL,
  `amount_sub_total` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`op_id`, `op_restaurant`, `order_id`, `product_name`, `product_qty`, `product_price`, `amount_sub_total`, `created_at`, `updated_at`) VALUES
(1, 12, 5, 'test title', '1', '60', '60', NULL, NULL),
(2, 12, 6, 'bgbg 1', '1', '2120', '2120', NULL, NULL),
(3, 12, 6, 'test title', '1', '60', '60', NULL, NULL),
(4, 12, 7, 'bgbg 1', '1', '2120', '2120', NULL, NULL),
(5, 12, 7, 'test title', '1', '60', '60', NULL, NULL),
(6, 12, 8, 'test title', '2', '60', '120', NULL, NULL),
(7, 12, 9, 'bgbg 1', '1', '2120', '2120', NULL, NULL),
(8, 12, 9, 'test title', '2', '60', '120', NULL, NULL),
(9, 12, 10, 'bgbg 1', '2', '2120', '4240', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_categories`
--

CREATE TABLE `restaurant_categories` (
  `rccategory_id` int(11) NOT NULL,
  `rcvender_id` int(11) NOT NULL DEFAULT 0,
  `rccategory_strorename` int(11) NOT NULL DEFAULT 0,
  `rccategory_name` varchar(255) DEFAULT NULL,
  `rccategory_description` text DEFAULT NULL,
  `rccategory_picture` varchar(255) DEFAULT NULL,
  `rccategory_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_categories`
--

INSERT INTO `restaurant_categories` (`rccategory_id`, `rcvender_id`, `rccategory_strorename`, `rccategory_name`, `rccategory_description`, `rccategory_picture`, `rccategory_status`, `created_at`, `updated_at`) VALUES
(1, 0, 12, 'Biryani Dishes', 'Biryani Dishes', '1604300486.jpg', 0, '2020-11-02 01:31:26', '2020-11-07 01:50:56'),
(2, 0, 12, 'Vegetarian Dishes', 'Vegetarian Dishes', '1604300563.jpg', 0, '2020-11-02 01:32:43', '2020-11-02 01:32:43'),
(3, 0, 12, 'Rice', 'Rice', '1604300581.jpg', 0, '2020-11-02 01:33:01', '2020-11-02 01:33:01'),
(4, 0, 12, 'Sauces', 'Sauces1', '1604300602.jpg', 0, '2020-11-02 01:33:22', '2020-11-02 02:11:23'),
(5, 0, 12, 'test', 'hjhjjh', '1606672376.jpg', 0, '2020-11-30 01:52:56', '2020-11-30 01:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cuisines`
--

CREATE TABLE `restaurant_cuisines` (
  `rc_id` int(11) NOT NULL,
  `rc_restaurant` int(11) NOT NULL DEFAULT 0,
  `rc_cuisine` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_cuisines`
--

INSERT INTO `restaurant_cuisines` (`rc_id`, `rc_restaurant`, `rc_cuisine`, `created_at`, `updated_at`) VALUES
(1, 12, 1, NULL, NULL),
(3, 12, 2, NULL, NULL),
(4, 12, 4, NULL, NULL),
(5, 12, 5, NULL, NULL),
(6, 12, 6, NULL, NULL),
(7, 13, 2, NULL, NULL),
(8, 13, 3, NULL, NULL),
(9, 13, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cuisine_categories`
--

CREATE TABLE `restaurant_cuisine_categories` (
  `rcccategory_id` int(11) NOT NULL,
  `rcccategory_name` varchar(255) DEFAULT NULL,
  `rcctype` int(11) NOT NULL DEFAULT 1,
  `rcccategory_description` text DEFAULT NULL,
  `rcccategory_picture` varchar(255) DEFAULT NULL,
  `rcccategory_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_cuisine_categories`
--

INSERT INTO `restaurant_cuisine_categories` (`rcccategory_id`, `rcccategory_name`, `rcctype`, `rcccategory_description`, `rcccategory_picture`, `rcccategory_status`, `created_at`, `updated_at`) VALUES
(1, 'Chinese-food', 2, 'Chinese-food', '1604311216.jpg', 0, '2020-11-02 04:30:16', '2020-11-02 04:46:46'),
(2, 'French Fries', 2, 'French Fries', '1604311266.jpg', 0, '2020-11-02 04:31:06', '2020-11-02 04:47:28'),
(3, 'Burgers', 2, 'Burgers', '1604311285.jpg', 0, '2020-11-02 04:31:25', '2020-11-02 04:47:48'),
(4, 'Veg-Kadab', 2, 'Veg-Kadab', '1604311305.jpg', 0, '2020-11-02 04:31:45', '2020-11-02 04:48:01'),
(5, 'Pizza', 2, 'Pizza', '1604311324.jpg', 0, '2020-11-02 04:32:04', '2020-11-02 04:48:21'),
(6, 'Fried Chicken', 2, 'Fried Chicken', '1604311351.jpg', 0, '2020-11-02 04:32:31', '2020-11-02 04:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_products`
--

CREATE TABLE `restaurant_products` (
  `rc_id` int(11) NOT NULL,
  `rc_strorename` int(11) NOT NULL DEFAULT 0,
  `rc_category` int(11) NOT NULL DEFAULT 0,
  `restu_menu` int(11) NOT NULL DEFAULT 0,
  `restu_cuisine` int(11) NOT NULL DEFAULT 0,
  `rc_title` varchar(255) DEFAULT NULL,
  `rc_description` text DEFAULT NULL,
  `rc_longdscription` longtext DEFAULT NULL,
  `rc_price` varchar(11) DEFAULT NULL,
  `rc_availibility` int(11) NOT NULL DEFAULT 0,
  `rc_image` varchar(255) DEFAULT NULL,
  `rc_isActive` int(11) NOT NULL DEFAULT 1,
  `rc_isDelete` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_products`
--

INSERT INTO `restaurant_products` (`rc_id`, `rc_strorename`, `rc_category`, `restu_menu`, `restu_cuisine`, `rc_title`, `rc_description`, `rc_longdscription`, `rc_price`, `rc_availibility`, `rc_image`, `rc_isActive`, `rc_isDelete`, `updated_at`, `created_at`) VALUES
(1, 12, 2, 1, 2, 'bgbg 1', 'v v v v l', 'v v v vvfbb u1', '2120', 1, '1603899039.jpeg', 1, 0, '2020-11-07 05:15:13', '2020-10-28 01:47:08'),
(14, 12, 0, 1, 6, 'test title', 'hhyyj', 'thhht', '60', 1, '1606675225.jpg', 1, 0, '2020-11-30 02:40:25', '2020-11-30 02:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_products_catpart`
--

CREATE TABLE `restaurant_products_catpart` (
  `cat_id` int(11) NOT NULL,
  `cat_productid` int(11) NOT NULL DEFAULT 0,
  `cat_category` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_products_catpart`
--

INSERT INTO `restaurant_products_catpart` (`cat_id`, `cat_productid`, `cat_category`, `updated_at`, `created_at`) VALUES
(3, 7, 2, '2020-11-03 04:59:03', '2020-11-03 04:59:03'),
(4, 7, 3, '2020-11-03 04:59:03', '2020-11-03 04:59:03'),
(5, 8, 2, '2020-11-03 05:07:41', '2020-11-03 05:07:41'),
(7, 9, 2, '2020-11-03 05:08:26', '2020-11-03 05:08:26'),
(8, 9, 3, '2020-11-03 05:08:26', '2020-11-03 05:08:26'),
(9, 10, 2, '2020-11-03 05:09:40', '2020-11-03 05:09:40'),
(10, 9, 3, '2020-11-03 05:09:40', '2020-11-03 05:09:40'),
(11, 11, 2, '2020-11-03 05:10:14', '2020-11-03 05:10:14'),
(12, 11, 3, '2020-11-03 05:10:14', '2020-11-03 05:10:14'),
(13, 12, 2, '2020-11-03 05:12:29', '2020-11-03 05:12:29'),
(14, 13, 3, '2020-11-03 05:12:29', '2020-11-03 05:12:29'),
(15, 8, 3, '2020-11-04 04:41:56', '2020-11-04 04:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_products_cuisine`
--

CREATE TABLE `restaurant_products_cuisine` (
  `cuisine_id` int(11) NOT NULL,
  `cuisine_productid` int(11) NOT NULL DEFAULT 0,
  `cuisine_category` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_products_cuisine`
--

INSERT INTO `restaurant_products_cuisine` (`cuisine_id`, `cuisine_productid`, `cuisine_category`, `updated_at`, `created_at`) VALUES
(1, 14, 2, '2020-11-03 05:12:29', '2020-11-03 05:12:29'),
(2, 1, 4, '2020-11-03 05:12:29', '2020-11-03 05:12:29'),
(3, 8, 2, '2020-11-04 04:41:56', '2020-11-04 04:41:56'),
(4, 8, 3, '2020-11-04 04:41:56', '2020-11-04 04:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `key_data` varchar(255) DEFAULT NULL,
  `value_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT 0,
  `store_name` varchar(255) DEFAULT NULL,
  `store_description` text DEFAULT NULL,
  `store_image` varchar(255) DEFAULT 'NULL',
  `store_cover_image` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `store_address` text DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `store_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `user_id`, `category_id`, `store_name`, `store_description`, `store_image`, `store_cover_image`, `country`, `state`, `city`, `store_address`, `pincode`, `facebook_link`, `twitter_link`, `instagram_link`, `website_link`, `store_status`, `created_at`, `updated_at`) VALUES
(10, 8, 2, 'BigBasket', 'Did you ever imagine that the freshest of fruits and vegetables, top quality pulses and food grains, dairy products and hundreds of branded items could be handpicked and delivered to your home, all at the click of a button? India’s first comprehensive online megastore, bigbasket.com, brings a whopping 20000+ products with more than 1000 brands, to over 4 million happy customers. From household cleaning products to beauty and makeup, bigbasket has everything you need for your daily needs. bigbasket.com is convenience personified We’ve taken away all the stress associated with shopping for daily essentials, and you can now order all your household products and even buy groceries online without travelling long distances or standing in serpentine queues. Add to this the convenience of finding all your requirements at one single source, along with great savings, and you will realize that bigbasket- India’s largest online supermarket, has revolutionized the way India shops for groceries. Online grocery shopping has never been easier. Need things fresh? Whether it’s fruits and vegetables or dairy and meat, we have this covered as well! Get fresh eggs, meat, fish and more online at your convenience. Hassle-free Home Delivery options', '1599328830.jpg', '1599328780.jpg', 'India', 'Bangalore', 'Karnataka', 'Supermarket Grocery Supplies Pvt. Ltd. 2nd Floor, Fairway Business Park, Embassy Golf Link', '560071', 'https://www.facebook.com/Bigbasketcom/', 'https://twitter.com/Bigbasket_com', 'https://www.instagram.com/bigbasketcom/', 'https://www.bigbasket.com/?nc=logo', 0, '2020-09-05 12:29:40', '2020-09-05 12:39:27'),
(11, 8, 2, 'Jio Mart', 'India\'s most convenient online grocery channel\r\nReliance Fresh and Smart makes your grocery shopping even simpler. No more hassles of sweating it out in crowded markets, grocery shops & supermarkets - now shop from the comfort of your home; office or on the move.\r\n\r\nWe offer you convenience of shopping everything that you need for your home - be it fresh fruits & vegetables, rice, dals, oil, packaged food, dairy item, frozen, pet food, household cleaning items & personal care products from a single virtual store.', '1599328943.png', '1599328780.jpg', 'India', 'Bangalore', 'Karnataka', 'Supermarket Grocery Supplies Pvt. Ltd. 2nd Floor, Fairway Business Park, Embassy Golf Link', '560071', 'https://www.facebook.com', 'https://twitter.com', 'https://www.instagram.com', 'https://www.jiomart.com', 0, '2020-09-05 12:29:40', '2020-09-05 12:39:40'),
(12, 1, 1, 'Burger In Law', 'Burger In Law', '1604415585.jpg', '1604415585.jpg', 'India', 'WEST BENGAL', 'SUTI-1', 'JANGIPUR', '731219', NULL, NULL, NULL, NULL, 0, '2020-11-03 09:29:45', '2020-11-03 09:29:45'),
(13, 1, 1, 'The Chicken House', 'The Chicken House', '1604415720.jpg', '1604415720.jpg', 'India', 'WEST BENGAL', 'SUTI-1', 'JANGIPUR', '731219', NULL, NULL, NULL, NULL, 0, '2020-11-03 09:32:00', '2020-11-03 09:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `stores_times`
--

CREATE TABLE `stores_times` (
  `store_time_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_time_day` varchar(255) DEFAULT NULL,
  `store_time_open_time` varchar(255) DEFAULT NULL,
  `store_time_close_time` varchar(255) DEFAULT NULL,
  `store_time_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores_times`
--

INSERT INTO `stores_times` (`store_time_id`, `store_id`, `store_time_day`, `store_time_open_time`, `store_time_close_time`, `store_time_status`, `created_at`, `updated_at`) VALUES
(57, 11, 'Monday', '4:00:00', '22:00:00', 1, NULL, NULL),
(58, 11, 'Tuesday', '4:00:00', '22:00:00', 1, NULL, NULL),
(59, 11, 'Wednesday', '12:00:00', '22:00:00', 1, NULL, NULL),
(60, 11, 'Thursday', '11:00:00', '22:00:00', 1, NULL, NULL),
(61, 11, 'Friday', '3:00:00', '22:00:00', 1, NULL, NULL),
(62, 11, 'Saturday', '10:00:00', '22:00:00', 1, NULL, NULL),
(63, 11, 'Sunday', '10:00:00', '22:00:00', 0, NULL, NULL),
(64, 10, 'Monday', '10:00:00', '22:00:00', 1, NULL, NULL),
(65, 10, 'Tuesday', '10:00:00', '22:00:00', 1, NULL, NULL),
(66, 10, 'Wednesday', '10:00:00', '22:00:00', 1, NULL, NULL),
(67, 10, 'Thursday', '10:00:00', '22:00:00', 1, NULL, NULL),
(68, 10, 'Friday', '10:00:00', '22:00:00', 1, NULL, NULL),
(69, 10, 'Saturday', '10:00:00', '22:00:00', 1, NULL, NULL),
(70, 10, 'Sunday', '10:00:00', '22:00:00', 1, NULL, NULL),
(71, 12, 'Monday', NULL, NULL, 1, NULL, NULL),
(72, 12, 'Tuesday', NULL, NULL, 1, NULL, NULL),
(73, 12, 'Wednesday', NULL, NULL, 1, NULL, NULL),
(74, 12, 'Thursday', NULL, NULL, 1, NULL, NULL),
(75, 12, 'Friday', NULL, NULL, 1, NULL, NULL),
(76, 12, 'Saturday', NULL, NULL, 1, NULL, NULL),
(77, 12, 'Sunday', NULL, NULL, 1, NULL, NULL),
(78, 13, 'Monday', NULL, NULL, 1, NULL, NULL),
(79, 13, 'Tuesday', NULL, NULL, 1, NULL, NULL),
(80, 13, 'Wednesday', NULL, NULL, 1, NULL, NULL),
(81, 13, 'Thursday', NULL, NULL, 1, NULL, NULL),
(82, 13, 'Friday', NULL, NULL, 1, NULL, NULL),
(83, 13, 'Saturday', NULL, NULL, 1, NULL, NULL),
(84, 13, 'Sunday', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores_time_lists`
--

CREATE TABLE `stores_time_lists` (
  `time_list_id` int(11) NOT NULL,
  `time_list_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores_time_lists`
--

INSERT INTO `stores_time_lists` (`time_list_id`, `time_list_value`) VALUES
(1, '0:00:00'),
(2, '1:00:00'),
(3, '2:00:00'),
(4, '3:00:00'),
(5, '4:00:00'),
(6, '5:00:00'),
(7, '6:00:00'),
(8, '7:00:00'),
(9, '8:00:00'),
(10, '9:00:00'),
(11, '10:00:00'),
(12, '11:00:00'),
(13, '12:00:00'),
(14, '13:00:00'),
(15, '14:00:00'),
(16, '15:00:00'),
(17, '16:00:00'),
(18, '17:00:00'),
(19, '18:00:00'),
(20, '19:00:00'),
(21, '20:00:00'),
(22, '21:00:00'),
(23, '22:00:00'),
(24, '23:00:00'),
(25, '24:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE `store_categories` (
  `store_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) DEFAULT 0,
  `store_category_name` varchar(255) DEFAULT NULL,
  `store_category_description` text DEFAULT NULL,
  `store_category_picture` varchar(255) DEFAULT NULL,
  `store_category_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`store_category_id`, `user_id`, `store_id`, `store_category_name`, `store_category_description`, `store_category_picture`, `store_category_status`, `created_at`, `updated_at`) VALUES
(1, 0, 10, 'Weekend Sale', 'weekend sale', '1599366993.png', 0, '2020-09-05 23:02:25', '2020-09-05 23:06:33'),
(2, 0, 10, 'Essential Items', 'Essential Items', '1599367001.png', 0, '2020-09-05 23:02:44', '2020-09-05 23:06:41'),
(3, 0, 10, 'Best Seller', 'Best Seller', '1599367009.png', 0, '2020-09-05 23:03:37', '2020-09-05 23:06:49'),
(4, 8, 10, 'Weekend Sale', 'Test', '1599406156.jpg', 0, '2020-09-06 09:59:16', '2020-09-06 09:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `test_description` text DEFAULT NULL,
  `test_picture` varchar(255) DEFAULT NULL,
  `test_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`test_id`, `test_name`, `test_description`, `test_picture`, `test_status`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'Description', '1603133403.jpg', 1, '2020-10-19 13:20:03', '2020-10-19 13:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT 1,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Web-Normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `social_id`, `nickname`, `name`, `business_name`, `dob`, `gender`, `picture`, `mobile_number`, `email`, `email_verified_at`, `password`, `remember_token`, `type`, `platform`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Admin', NULL, NULL, 'M', NULL, NULL, 'admin@zivery.com', NULL, '$2y$12$eN2gns63b.Rc9lqkLJSV9uTpSWYcyCgU8wduM6D2XpIWSVNLYnkfq', 'n8NJufPOaDAx6b7RLapvVuB2Yh5u43qCcW3AV2Fkvk1LyAPtmErcydXXCz6K', 0, 'Web-Normal', '2020-08-03 09:04:40', '2020-08-03 09:04:40'),
(3, '618150158840406', 'Nick', 'Kavin Sam', NULL, '2020-09-01', 'M', 'https://graph.facebook.com/v3.3/618150158840406/picture?type=normal', '9830647421', 'wtm.kevinsam@gmail.com', NULL, '$2y$10$C83tCW9RDWUagY7fKCKG1Oa/jH9M44h6pWI5.9sG9tz.yU3UGKhhy', NULL, 1, 'Facebook', '2020-08-19 06:09:03', '2020-09-01 11:52:29'),
(5, NULL, NULL, 'Bappa', NULL, '2020-09-07', 'M', NULL, '9163331565', 'bappa@gmail.com', NULL, '$2y$10$sxaoVvlODHEzpNG2q9xUNufJC4rjH9n7XmQQqq7riczNHkrl8/yg.', NULL, 1, 'Web-Normal', '2020-09-06 08:13:44', '2020-09-06 08:15:30'),
(8, NULL, NULL, 'Black Dog', 'Black Dog', NULL, 'M', NULL, NULL, 'blackdog@gmail.com', NULL, '$2y$10$APwqDvr5Fa1RGBIiIjevdOHwY581TvZLjDoiYkdMNJW2TOnt2B0wi', NULL, 2, 'Web-Normal', '2020-09-06 09:26:00', '2020-09-06 09:26:00'),
(9, NULL, NULL, 'Golam Ambia', NULL, NULL, 'M', NULL, NULL, 'wtm.golam@gmail.com', NULL, '$2y$10$9uo1q/NG/g7d6IeiDkybh.PHVkco3gCxm.PNOL4SXPXE5edEHC2v.', NULL, 1, 'Web-Normal', '2020-11-20 03:15:37', '2020-11-20 03:15:37'),
(10, NULL, NULL, 'Golam Ambia', NULL, NULL, 'M', NULL, NULL, 'golam@gmail.com', NULL, '$2y$10$7a.IsCXRie1tXxz6TiImMOqgARD8VyLIkm7vDkqCnsIu1R9ki8o8q', NULL, 1, 'Web-Normal', '2020-12-05 13:16:53', '2020-12-05 13:16:53'),
(11, NULL, NULL, 'Rd', NULL, NULL, 'M', NULL, NULL, 'rd@gmail.com', NULL, '$2y$10$PaZwdhVLNNSJqlQuRTesWOgBwTLUYNTwbVfi3Nh9oc0L/pClfzF3S', NULL, 1, 'Web-Normal', '2020-12-06 08:35:45', '2020-12-06 08:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `users_address`
--

CREATE TABLE `users_address` (
  `address_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT 0,
  `full_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `country_region` varchar(255) DEFAULT NULL,
  `state_province_region` varchar(255) DEFAULT NULL,
  `town_city` varchar(255) DEFAULT NULL,
  `area_colony_street_sector_village` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `flat_houseno_building_company_apartment` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_address`
--

INSERT INTO `users_address` (`address_id`, `users_id`, `full_name`, `mobile_number`, `country_region`, `state_province_region`, `town_city`, `area_colony_street_sector_village`, `pincode`, `flat_houseno_building_company_apartment`, `landmark`, `created_at`, `updated_at`) VALUES
(1, 3, 'Test User', '1234567890', 'India', 'West Bengal', 'Kolkata', 'Behal', '700008', 'Test', 'Test', '2020-09-05 10:02:14', '2020-09-05 10:09:33'),
(2, 9, 'Golam Ambia', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur nayagram', '731219', '36', 'near mobile tower', '2020-12-06 05:19:33', '2020-12-06 05:19:33'),
(3, 9, 'Golam Ambia', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur nayagram', '731219', '36', 'near mobile tower', '2020-12-06 05:20:59', '2020-12-06 05:20:59'),
(4, 9, 'Golam', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur', '731219', '366', 'near mobile tower', '2020-12-06 06:56:27', '2020-12-06 06:56:27'),
(5, 9, 'Ambia', '7003832809', 'India', 'West Bengal', 'msd', 'horishpur nayagram,', '731219', '365', 'okkk', '2020-12-06 08:29:43', '2020-12-06 08:29:43'),
(6, 11, 'Golam Ambia', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur nayagram,', '731219', '36', 'okkk', '2020-12-06 08:36:40', '2020-12-06 08:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `users_order_addresses`
--

CREATE TABLE `users_order_addresses` (
  `uda_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `users_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(13) DEFAULT NULL,
  `country_region` varchar(255) DEFAULT NULL,
  `state_province_region` varchar(255) DEFAULT NULL,
  `town_city` varchar(255) DEFAULT NULL,
  `area_colony_street_sector_village` text DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `flat_houseno_building_company_apartment` text DEFAULT NULL,
  `landmark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_order_addresses`
--

INSERT INTO `users_order_addresses` (`uda_id`, `orderid`, `users_id`, `full_name`, `mobile_number`, `country_region`, `state_province_region`, `town_city`, `area_colony_street_sector_village`, `pincode`, `flat_houseno_building_company_apartment`, `landmark`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 'Ambia', '7003832809', 'India', 'West Bengal', 'msd', 'horishpur nayagram,', '731219', '365', 'okkk', NULL, NULL),
(2, 6, 9, 'Golam', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur', '731219', '366', 'near mobile tower', NULL, NULL),
(3, 7, 9, 'Golam', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur', '731219', '366', 'near mobile tower', NULL, NULL),
(4, 8, 9, 'Golam Ambia', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur nayagram', '731219', '36', 'near mobile tower', NULL, NULL),
(5, 9, 9, 'Golam Ambia', '7003832809', 'India', 'West Bengal', 'Birbhum', 'horishpur nayagram', '731219', '36', 'near mobile tower', NULL, NULL),
(6, 10, 9, 'Ambia', '7003832809', 'India', 'West Bengal', 'msd', 'horishpur nayagram,', '731219', '365', 'okkk', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `rv_id` int(11) NOT NULL,
  `rv_userid` int(11) NOT NULL DEFAULT 0,
  `rv_title` varchar(255) DEFAULT NULL,
  `rv_rate` int(11) DEFAULT NULL,
  `rv_adsid` int(11) NOT NULL DEFAULT 0,
  `rv_orderid` varchar(22) DEFAULT NULL,
  `rv_message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`rv_id`, `rv_userid`, `rv_title`, `rv_rate`, `rv_adsid`, `rv_orderid`, `rv_message`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, 13, NULL, 'sadsad', '2020-11-13 06:45:48', '2020-11-13 06:45:48'),
(2, 0, NULL, 2, 13, NULL, '2nd test', '2020-11-19 14:16:22', '2020-11-19 14:16:22'),
(3, 0, NULL, 3, 13, NULL, 'try 3rd', '2020-11-19 14:26:40', '2020-11-19 14:26:40'),
(4, 0, NULL, 3, 13, NULL, 'ggfgfg', '2020-11-19 14:45:14', '2020-11-19 14:45:14'),
(5, 0, NULL, 2, 13, NULL, 'fgfgf', '2020-11-19 14:47:11', '2020-11-19 14:47:11'),
(6, 9, NULL, 2, 12, NULL, 'with user', '2020-11-20 08:09:07', '2020-11-20 08:09:07'),
(7, 9, NULL, 2, 12, NULL, 'with loader', '2020-11-20 08:17:44', '2020-11-20 08:17:44'),
(8, 9, NULL, 4, 12, NULL, 'gfhghg', '2020-11-20 08:21:15', '2020-11-20 08:21:15'),
(9, 9, NULL, 5, 12, NULL, 'yyuuu ok', '2020-11-20 08:27:11', '2020-11-20 08:27:11'),
(10, 9, NULL, 4, 12, NULL, 'okk', '2020-11-20 09:43:37', '2020-11-20 09:43:37'),
(11, 9, NULL, 3, 12, NULL, '3 star', '2020-11-20 12:18:33', '2020-11-20 12:18:33'),
(12, 9, NULL, 3, 12, NULL, 'star', '2020-11-20 12:19:49', '2020-11-20 12:19:49'),
(13, 9, NULL, 4, 12, NULL, 'test', '2020-11-20 13:18:42', '2020-11-20 13:18:42'),
(14, 9, NULL, 5, 12, NULL, 'vfvff', '2020-11-20 13:42:25', '2020-11-20 13:42:25'),
(15, 9, NULL, 3, 12, NULL, 'moment.js', '2020-11-22 09:43:58', '2020-11-22 09:43:58'),
(16, 9, NULL, 3, 12, NULL, 'ffbbf', '2020-11-22 09:45:51', '2020-11-22 09:45:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_tables`
--
ALTER TABLE `book_tables`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`abv`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`op_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  ADD PRIMARY KEY (`rccategory_id`);

--
-- Indexes for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  ADD PRIMARY KEY (`rc_id`);

--
-- Indexes for table `restaurant_cuisine_categories`
--
ALTER TABLE `restaurant_cuisine_categories`
  ADD PRIMARY KEY (`rcccategory_id`);

--
-- Indexes for table `restaurant_products`
--
ALTER TABLE `restaurant_products`
  ADD PRIMARY KEY (`rc_id`);

--
-- Indexes for table `restaurant_products_catpart`
--
ALTER TABLE `restaurant_products_catpart`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `restaurant_products_cuisine`
--
ALTER TABLE `restaurant_products_cuisine`
  ADD PRIMARY KEY (`cuisine_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `stores_times`
--
ALTER TABLE `stores_times`
  ADD PRIMARY KEY (`store_time_id`);

--
-- Indexes for table `stores_time_lists`
--
ALTER TABLE `stores_time_lists`
  ADD PRIMARY KEY (`time_list_id`);

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`store_category_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `users_address`
--
ALTER TABLE `users_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `users_order_addresses`
--
ALTER TABLE `users_order_addresses`
  ADD PRIMARY KEY (`uda_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`rv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_tables`
--
ALTER TABLE `book_tables`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  MODIFY `rccategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `restaurant_cuisine_categories`
--
ALTER TABLE `restaurant_cuisine_categories`
  MODIFY `rcccategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant_products`
--
ALTER TABLE `restaurant_products`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `restaurant_products_catpart`
--
ALTER TABLE `restaurant_products_catpart`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant_products_cuisine`
--
ALTER TABLE `restaurant_products_cuisine`
  MODIFY `cuisine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stores_times`
--
ALTER TABLE `stores_times`
  MODIFY `store_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `stores_time_lists`
--
ALTER TABLE `stores_time_lists`
  MODIFY `time_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `store_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_address`
--
ALTER TABLE `users_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_order_addresses`
--
ALTER TABLE `users_order_addresses`
  MODIFY `uda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `rv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
