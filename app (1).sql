-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 12:19 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Bryana Jacobson', 'Address updated by huy.tran.ntq', '(098)960-2311x43', '2016-03-16 05:57:13', '2016-03-17 07:52:37'),
(3, 'Dr. Renee Anderson', '286 Moen Mission\nWest Briceland, NJ 32104-8244', '07947694478', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(4, 'Darion Carter', '4009 Carlotta Station Suite 788\nShannymouth, OR 45815-3383', '020-854-6233', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(5, 'Henri Lowe', '0789 Darren Pike Suite 971\nLarkinbury, HI 84006-3767', '(771)774-6346', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(6, 'Geovanny Dare', '26064 Stroman Vista\nGageview, VA 91518-6541', '(986)868-3978', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(7, 'Tracey Witting', '84295 Friedrich Pike Apt. 139\nFisherfort, VA 17854-7577', '(280)554-1375x98', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(8, 'Rusty Berge', '240 Griffin Rest Apt. 081\nSouth Nelleton, NE 20689-6018', '(795)180-8350', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(9, 'Efren Greenholt', '5214 Golden Skyway Apt. 466\nLaurianneshire, FL 86368-6006', '09239979269', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(10, 'Adolfo Bartell', '46724 Kelley Islands\nNew Leonieberg, NV 51102', '614.615.2740', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(11, 'Jarrell Farrell', '5647 Dasia Inlet\nLake Kailey, LA 44990-3399', '707.896.3033', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(12, 'Reyes Turner', '125 Annamarie Tunnel Suite 264\nMarielaburgh, IN 67726-0749', '201.132.6239x130', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(13, 'Curt Dooley', '4028 Cummerata Station Suite 553\nPort Margarettmouth, UT 84677-7433', '654.133.1810x662', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(14, 'Mr. Vidal Schuppe IV', '180 Sedrick Brook Suite 274\nThaliamouth, LA 13904', '015.653.4023x579', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(15, 'Forest Russel', '7555 Rolfson Common\nNew Sonia, KY 04157', '+85(4)2055414794', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(16, 'Kaelyn Huels', '06123 Connelly Station\nCassandrahaven, NE 09756-4887', '736.134.8768', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(17, 'Phyllis Anderson', '11888 Medhurst Unions Apt. 948\nHoppeborough, OH 27815-9034', '1-251-415-4909x2', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(18, 'Jonathan Windler', '9924 Bernhard Springs\nJoanniefort, GA 30633', '1-006-725-5015', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(19, 'Jamarcus Thiel', '742 Dexter Mountains\nPort Valentinatown, OR 73522-4021', '309.864.1751', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(20, 'Sarai Williamson MD', '31628 Gwen Land\nRussberg, SD 88165-5442', '+15(1)6866970902', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(21, 'Presley Balistreri V', '28058 Boyer Valleys\nPort Deltabury, NY 71184-7773', '409.393.7727x240', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(22, 'Prof. Bessie Auer I', '84835 Eduardo Port Apt. 863\nPort Jade, RI 71272', '(133)440-8944', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(23, 'Esperanza Keeling PhD', '899 Lynch View Apt. 014\nNew Krystelmouth, OH 61281', '+30(7)8938854641', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(24, 'Ettie Shanahan', '6635 Fletcher Shoals Suite 663\nNew Cedrick, AL 10115', '101.007.9140x002', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(25, 'Dr. Lorine Rice III', '0221 Brown Lock Suite 192\nEast Revabury, MD 14502', '1-560-483-9727', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(26, 'Glennie Kling', '0311 Schmitt Loop Apt. 412\nWest Rodmouth, CO 76049', '1-000-873-6217', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(27, 'Ryann Luettgen', '5309 Predovic Land\nPort Leonard, FL 35583-6876', '229-781-2045', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(28, 'Jasmin Cremin PhD', '3438 Dalton Ramp\nLake Maribel, MI 66291-4510', '063-595-4168', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(29, 'Mr. Santino Luettgen', '3586 Zulauf Rue\nPort Delphaberg, DE 84987', '+57(5)6240684466', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(30, 'Miss Shaniya Keebler', '819 Bechtelar Key Apt. 875\nDarrionport, AR 55668', '(349)844-3374x86', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(31, 'Flo Gutkowski', '303 Hirthe Summit Suite 645\nNorth Darrickton, TX 12365', '719-650-9144x476', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(32, 'Emmanuelle Bernhard', '304 Xavier Courts Apt. 366\nLake Chetton, LA 89870', '(004)254-2712x19', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(33, 'Amber Sipes', '09172 Jane Junctions Apt. 525\nHarrisberg, AZ 50823-2501', '416.621.6633', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(34, 'Mrs. Melisa Bergnaum Sr.', '18286 Koepp Cliff Apt. 183\nLake Holly, OR 77004-8247', '(039)999-2131x78', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(35, 'Madelyn Klein', '3620 Shyann Walks\nSouth Sterling, OH 77100-4729', '(474)963-5889x93', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(36, 'Dr. Abby Skiles', '687 Brando Prairie Apt. 067\nConroyshire, MO 93850', '07797693909', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(37, 'Prof. Luis Smitham MD', '3952 Priscilla Falls\nChadrickland, DC 65255', '1-269-242-4394x9', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(38, 'Colin Ebert', '7687 Gudrun Island\nNorth Elzaview, CA 23958', '535.989.8821x323', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(39, 'Mrs. Amely Swift II', '6252 Dock Inlet\nWest Christop, SD 55329', '1-417-300-2510x3', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(40, 'Leilani Padberg Sr.', '948 Una Greens Apt. 008\nPort Jesus, IA 04575', '(011)289-6633', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(41, 'Abigail Schuster', '35162 Beahan Station\nWilsontown, MD 75488-7265', '1-801-062-8202', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(42, 'Prof. Delpha Koss', '84775 Cassin Bridge Apt. 121\nSouth Sashafurt, MT 69561-9115', '273.960.0235', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(43, 'Cletus Spinka', '1917 Lazaro Village\nGutmannmouth, LA 53652-5235', '718-875-4172x482', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(44, 'Mr. Edgar Grimes DVM', '7328 Edmund Road Apt. 955\nCoraview, UT 43699-4968', '(777)553-9449x29', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(46, 'Prof. Jaiden Borer II', '04213 Janessa Harbor Suite 599\nEast Kaneburgh, MT 43833', '1-951-211-1709x1', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(47, 'Joey Jast DDS', '7681 Annamae Rapid\nPort Helene, AR 62485', '207.287.9487x444', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(48, 'Dr. Emery Jakubowski', '50318 Powlowski Roads Suite 532\nEast Robertohaven, ND 45590', '066-349-6501x018', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(49, 'Marcia Hagenes', '9638 Russel Underpass\nSouth June, SD 27777', '1-782-753-4085x2', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(50, 'Piper Gleason DVM', '9875 Kessler Coves\nHettingerfort, MN 02972', '(855)197-5735', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(51, 'Telly Runolfsdottir', '026 Kurt Grove\nNew Arnulfo, OR 79196-8630', '(809)837-6205x08', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(52, 'Dr. Jarred Cole', '45395 Shaina Avenue\nKoeppport, CA 59057', '098-619-5374', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(53, 'Columbus Corkery MD', '7289 Deron Station\nBeerport, MN 89561', '1-702-924-4027x8', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(54, 'Dr. Bryon Heaney', '87812 Luettgen Turnpike\nRuntemouth, OK 12058-1616', '(579)740-9892x33', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(55, 'Camylle Wiza', '829 Runolfsdottir Road Apt. 186\nKreigerfurt, MI 20705-8539', '641-540-9046x300', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(56, 'Murray Cole', '9704 Conn Gardens\nNew Avis, KY 72309', '(537)520-5599x57', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(57, 'Keven Hahn DVM', '8418 Howell Inlet\nNorth Evelineville, SC 31376', '(401)640-1111', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(59, 'Isom Daniel', '693 Tyrique Squares Suite 264\nNew Marcelinachester, HI 35867-2471', '445-244-7792x558', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(60, 'Dr. Amie Ortiz', '37301 O''Hara Coves\nWest Moses, MN 96515-3704', '172.731.8522', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(61, 'Ms. Mable Gorczany MD', '7534 Helga Row Apt. 866\nNorth Cale, AK 53989', '07283794910', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(62, 'Bernice Bosco', '59594 Kling Underpass Suite 581\nNorth Ivory, DE 77105-4286', '(707)223-0978', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(63, 'Ms. Verlie Ortiz MD', '10240 Green Light\nJamaalton, MS 66912-1775', '1-727-814-7956x7', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(64, 'Mae Quitzon Sr.', '28920 Fay Plaza Apt. 797\nPort Stephanieberg, ME 14896', '663-921-8712', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(65, 'Renee Lueilwitz DDS', '488 Mireille Extension Suite 769\nEmmymouth, NJ 77543', '1-366-250-0453x6', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(66, 'Aurelia Kling', '501 Frami Rapid\nWest Garrickborough, WA 40451', '821-908-9751', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(67, 'Dr. Morton Towne MD', '83709 Adonis Heights\nEast Antonia, SC 36297', '855.644.9578x290', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(68, 'Clara Nikolaus', '424 Padberg Corners\nEast Noel, MS 86673-3350', '1-717-729-1271', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(69, 'Creola O''Keefe', '2047 Carlo Stream Apt. 366\nNew Edisonton, NJ 59099', '171.709.0480', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(70, 'Webster Rutherford III', '754 Wuckert Walks Apt. 015\nColefort, GA 95983-4249', '01096137727', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(71, 'Myrtice D''Amore', '92275 Susana Drive\nKovacekville, MA 32868-2890', '223.429.7618', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(72, 'Ezekiel Wisoky', '576 Erika Lights\nNorth Connieville, NM 75871-4701', '585.251.1725', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(73, 'Mrs. Ruthie Donnelly', '8277 Jamaal Gardens\nJaquelinchester, MN 85005', '(329)581-0940x49', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(74, 'Buddy Wolff', '90629 Olson Harbor Apt. 292\nPredovicside, MO 79675', '1-201-966-4596x1', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(75, 'Vada Brown', '330 Jacobson Courts\nTrantowbury, IA 80871-9424', '1-152-992-1196x6', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(76, 'Richmond Fay', '595 Jaskolski Square\nNew Esperanzaview, OH 77220', '328-230-7939x418', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(77, 'Ulises Crist I', '6457 Mandy Row Apt. 914\nLake Elbertmouth, NY 30417', '(757)518-0198x17', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(78, 'Carolyne Funk', '485 Brown Springs Suite 137\nSchinnerchester, WY 60161', '1-170-975-1330x4', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(79, 'Carlee Howell MD', '7075 Levi Pines Apt. 775\nWest Rubiechester, CO 60021', '397.448.0014', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(80, 'Daniela Price', '56899 Hodkiewicz Fort\nNew Immanuel, WY 82349', '(063)371-3484x45', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(81, 'Dr. Ava Jerde MD', '602 Pacocha Ford\nJacobsstad, WY 41625', '1-662-969-6522x1', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(82, 'Torrance O''Reilly', '4509 Sibyl Lights Apt. 643\nNew Jerry, OR 81405-4593', '1-098-468-7431', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(83, 'Miss Desiree Schowalter II', '08536 Ana Prairie Suite 214\nEast Durward, TX 16764-2489', '+74(7)6530969318', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(84, 'Loma Larson II', '836 Boehm Light Suite 845\nBotsfordport, SD 66930', '1-345-866-0901x0', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(85, 'Isabelle Kiehn', '044 Natalie Port\nPort Leonel, WI 27144-7930', '(462)294-7430x90', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(86, 'Kiana Mertz', '2145 Alessandro Rapid\nSteuberland, WA 03226-8473', '328.898.7704x771', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(87, 'Prof. Krystina West DDS', '32314 Buckridge Squares Suite 674\nNorth Christon, KY 35892-8676', '(151)251-6344', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(88, 'Asia Erdman', '5488 Lemke Path\nBodetown, WY 07420-0924', '+54(0)6681817801', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(89, 'Wiley D''Amore III', '969 Hollie Summit Suite 241\nEast Stephanialand, NH 57851', '062.445.3876x183', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(90, 'Hazel Welch', '94020 Kilback Island\nLake Santinaport, GA 94149', '(444)695-3605x78', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(91, 'Mr. Cruz Legros', '88601 Jabari Causeway Suite 812\nBennieside, WA 13978-2347', '108.465.9455', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(92, 'Gertrude VonRueden', '38242 Dandre Spring Apt. 949\nNorth Mollie, OK 61766', '1-156-566-8429', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(93, 'Josianne Leuschke', '97262 Casimer Circle\nLabadiechester, NV 47888-2192', '376.670.3746x922', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(94, 'June Hilll Edited', '769 Stracke Meadows Suite 913\nBartonborough, CT 36574-4248', '546-625-0949', '2016-03-16 05:57:13', '2016-03-17 10:32:21'),
(95, 'Mrs. Matilda Terry', '243 Wilfredo Cove Suite 849\nClintbury, OR 52130-4316', '801.542.8468x122', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(96, 'Mertie Beahan', '19912 Von Brook\nNew Henrietteton, OH 14140', '331.661.6168', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(97, 'Malcolm Halvorson MD', '3069 Jordon Walks Apt. 293\nCormierport, MN 37444', '172.067.8029x525', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(98, 'Miss Vernie Hills', '86646 Johan Ranch\nClaudineland, CT 44626', '681-299-4097x195', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(99, 'Maegan Hoeger', '7362 Matteo Stream Suite 924\nRusselfort, NC 05403-3756', '1-430-577-0947x6', '2016-03-16 05:57:13', '2016-03-16 05:57:13'),
(100, 'Litzy Tillman', '679 Amani Plain Apt. 890\nZulauftown, WA 49762', '324.110.9826x368', '2016-03-16 05:57:14', '2016-03-16 05:57:14'),
(101, 'Test', '', '', '2016-03-17 08:43:11', '2016-03-17 08:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Huy Tran', 'admin@admin.com', '$2y$10$tcBGoFAu8g8bNhu1539fouowGgxK.Mt95XQExHUezqM5f1IXtFbOa', NULL, '2016-03-15 13:07:06', '2016-03-15 08:12:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
