# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.15-MariaDB-1:10.4.15+maria~focal)
# Database: ecommerce
# Generation Time: 2020-11-27 10:29:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ecommerce_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_address`;

CREATE TABLE `ecommerce_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `ecommerce_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_address` WRITE;
/*!40000 ALTER TABLE `ecommerce_address` DISABLE KEYS */;

INSERT INTO `ecommerce_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`)
VALUES
	(1,14,'Rosa','Bernhard',NULL,'70208 Feil Station',NULL,'New Christa','31786-6649','2020-11-26 18:40:09','2020-11-26 18:40:10','US',NULL,NULL),
	(2,NULL,'Rosa','Bernhard',NULL,'70208 Feil Station',NULL,'New Christa','31786-6649','2020-11-26 18:40:09','2020-11-26 18:40:10','US',NULL,NULL),
	(3,NULL,'Rosa','Bernhard',NULL,'70208 Feil Station',NULL,'New Christa','31786-6649','2020-11-26 18:40:09','2020-11-26 18:40:10','US',NULL,NULL),
	(4,10,'Orlando','Shanahan',NULL,'10608 Alejandra Key',NULL,'South Lester','25078-3900','2020-11-26 18:40:10','2020-11-26 18:40:10','PT',NULL,NULL),
	(5,NULL,'Orlando','Shanahan',NULL,'10608 Alejandra Key',NULL,'South Lester','25078-3900','2020-11-26 18:40:10','2020-11-26 18:40:10','PT',NULL,NULL),
	(6,NULL,'Orlando','Shanahan',NULL,'10608 Alejandra Key',NULL,'South Lester','25078-3900','2020-11-26 18:40:10','2020-11-26 18:40:10','PT',NULL,NULL),
	(7,9,'Karina','Marquardt',NULL,'2412 Robel Throughway',NULL,'Dashawnport','07629-6566','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(8,NULL,'Karina','Marquardt',NULL,'2412 Robel Throughway',NULL,'Dashawnport','07629-6566','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(9,NULL,'Karina','Marquardt',NULL,'2412 Robel Throughway',NULL,'Dashawnport','07629-6566','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(10,9,'Enos','Gusikowski',NULL,'74368 Cronin Manors Apt. 274',NULL,'South Wallaceland','81224-4757','2020-11-26 18:40:10','2020-11-26 18:40:10','GB',NULL,NULL),
	(11,NULL,'Enos','Gusikowski',NULL,'74368 Cronin Manors Apt. 274',NULL,'South Wallaceland','81224-4757','2020-11-26 18:40:10','2020-11-26 18:40:10','GB',NULL,NULL),
	(12,NULL,'Enos','Gusikowski',NULL,'74368 Cronin Manors Apt. 274',NULL,'South Wallaceland','81224-4757','2020-11-26 18:40:10','2020-11-26 18:40:10','GB',NULL,NULL),
	(13,5,'Giovanna','Moen',NULL,'558 Walter Gateway Suite 343',NULL,'Lake Rodrick','64647-7134','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(14,NULL,'Giovanna','Moen',NULL,'558 Walter Gateway Suite 343',NULL,'Lake Rodrick','64647-7134','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(15,NULL,'Giovanna','Moen',NULL,'558 Walter Gateway Suite 343',NULL,'Lake Rodrick','64647-7134','2020-11-26 18:40:10','2020-11-26 18:40:10','FR',NULL,NULL),
	(16,13,'Katheryn','Kovacek',NULL,'1419 Timmothy Vista Apt. 538',NULL,'Lake Korbin','71728','2020-11-26 18:40:10','2020-11-26 18:40:10','DE',NULL,NULL),
	(17,NULL,'Katheryn','Kovacek',NULL,'1419 Timmothy Vista Apt. 538',NULL,'Lake Korbin','71728','2020-11-26 18:40:10','2020-11-26 18:40:10','DE',NULL,NULL),
	(18,NULL,'Katheryn','Kovacek',NULL,'1419 Timmothy Vista Apt. 538',NULL,'Lake Korbin','71728','2020-11-26 18:40:10','2020-11-26 18:40:10','DE',NULL,NULL),
	(19,14,'Jordi','Mayer',NULL,'950 Zulauf Underpass',NULL,'Antoninaburgh','97108-4985','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(20,NULL,'Jordi','Mayer',NULL,'950 Zulauf Underpass',NULL,'Antoninaburgh','97108-4985','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(21,NULL,'Jordi','Mayer',NULL,'950 Zulauf Underpass',NULL,'Antoninaburgh','97108-4985','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(22,10,'Fern','Kshlerin',NULL,'47552 Russell Fields Suite 086',NULL,'Auerberg','97336','2020-11-26 18:40:11','2020-11-26 18:40:11','PT',NULL,NULL),
	(23,NULL,'Fern','Kshlerin',NULL,'47552 Russell Fields Suite 086',NULL,'Auerberg','97336','2020-11-26 18:40:11','2020-11-26 18:40:11','PT',NULL,NULL),
	(24,NULL,'Fern','Kshlerin',NULL,'47552 Russell Fields Suite 086',NULL,'Auerberg','97336','2020-11-26 18:40:11','2020-11-26 18:40:11','PT',NULL,NULL),
	(25,9,'Nicolette','Cremin',NULL,'8078 Conn Dam Apt. 103',NULL,'Altenwerthborough','02123','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(26,NULL,'Nicolette','Cremin',NULL,'8078 Conn Dam Apt. 103',NULL,'Altenwerthborough','02123','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(27,NULL,'Nicolette','Cremin',NULL,'8078 Conn Dam Apt. 103',NULL,'Altenwerthborough','02123','2020-11-26 18:40:11','2020-11-26 18:40:11','ES',NULL,NULL),
	(28,11,'Camron','Crona',NULL,'97517 Fadel Roads',NULL,'Keatonburgh','00256-3831','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(29,NULL,'Camron','Crona',NULL,'97517 Fadel Roads',NULL,'Keatonburgh','00256-3831','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(30,NULL,'Camron','Crona',NULL,'97517 Fadel Roads',NULL,'Keatonburgh','00256-3831','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(31,14,'Isadore','Runte',NULL,'6892 Champlin Extensions',NULL,'Wintheiserfort','91486-5043','2020-11-26 18:40:11','2020-11-26 18:40:11','GB',NULL,NULL),
	(32,NULL,'Isadore','Runte',NULL,'6892 Champlin Extensions',NULL,'Wintheiserfort','91486-5043','2020-11-26 18:40:11','2020-11-26 18:40:11','GB',NULL,NULL),
	(33,NULL,'Isadore','Runte',NULL,'6892 Champlin Extensions',NULL,'Wintheiserfort','91486-5043','2020-11-26 18:40:11','2020-11-26 18:40:11','GB',NULL,NULL),
	(34,5,'Willie','Mayert',NULL,'149 Keeling Shoals',NULL,'Antonettatown','09687-8007','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(35,NULL,'Willie','Mayert',NULL,'149 Keeling Shoals',NULL,'Antonettatown','09687-8007','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(36,NULL,'Willie','Mayert',NULL,'149 Keeling Shoals',NULL,'Antonettatown','09687-8007','2020-11-26 18:40:11','2020-11-26 18:40:11','FR',NULL,NULL),
	(37,4,'Colt','Hessel',NULL,'3220 Konopelski Glens',NULL,'Murielborough','18008','2020-11-26 18:40:12','2020-11-26 18:40:12','AU',NULL,NULL),
	(38,NULL,'Colt','Hessel',NULL,'3220 Konopelski Glens',NULL,'Murielborough','18008','2020-11-26 18:40:12','2020-11-26 18:40:12','AU',NULL,NULL),
	(39,NULL,'Colt','Hessel',NULL,'3220 Konopelski Glens',NULL,'Murielborough','18008','2020-11-26 18:40:12','2020-11-26 18:40:12','AU',NULL,NULL),
	(40,11,'Jeffery','Nienow',NULL,'7030 Keeling Station Suite 785',NULL,'Sanfordville','49387','2020-11-26 18:40:12','2020-11-26 18:40:12','CA',NULL,NULL),
	(41,NULL,'Jeffery','Nienow',NULL,'7030 Keeling Station Suite 785',NULL,'Sanfordville','49387','2020-11-26 18:40:12','2020-11-26 18:40:12','CA',NULL,NULL),
	(42,NULL,'Jeffery','Nienow',NULL,'7030 Keeling Station Suite 785',NULL,'Sanfordville','49387','2020-11-26 18:40:12','2020-11-26 18:40:12','CA',NULL,NULL),
	(43,19,'Garnett','Konopelski',NULL,'769 Genoveva Cliff',NULL,'Macymouth','22062-4873','2020-11-26 18:40:12','2020-11-26 18:40:12','PL',NULL,NULL),
	(44,NULL,'Garnett','Konopelski',NULL,'769 Genoveva Cliff',NULL,'Macymouth','22062-4873','2020-11-26 18:40:12','2020-11-26 18:40:12','PL',NULL,NULL),
	(45,NULL,'Garnett','Konopelski',NULL,'769 Genoveva Cliff',NULL,'Macymouth','22062-4873','2020-11-26 18:40:12','2020-11-26 18:40:12','PL',NULL,NULL),
	(46,1,'Bertha','Bins',NULL,'89446 Bartoletti Tunnel',NULL,'East Suzanne','38162-7556','2020-11-26 18:40:12','2020-11-26 18:40:12','PT',NULL,NULL),
	(47,NULL,'Bertha','Bins',NULL,'89446 Bartoletti Tunnel',NULL,'East Suzanne','38162-7556','2020-11-26 18:40:12','2020-11-26 18:40:12','PT',NULL,NULL),
	(48,NULL,'Bertha','Bins',NULL,'89446 Bartoletti Tunnel',NULL,'East Suzanne','38162-7556','2020-11-26 18:40:12','2020-11-26 18:40:12','PT',NULL,NULL),
	(49,14,'Elinore','Krajcik',NULL,'62890 Adaline Trace Apt. 851',NULL,'Maximilianstad','57845','2020-11-26 18:40:12','2020-11-26 18:40:12','CN',NULL,NULL),
	(50,NULL,'Elinore','Krajcik',NULL,'62890 Adaline Trace Apt. 851',NULL,'Maximilianstad','57845','2020-11-26 18:40:12','2020-11-26 18:40:12','CN',NULL,NULL),
	(51,NULL,'Elinore','Krajcik',NULL,'62890 Adaline Trace Apt. 851',NULL,'Maximilianstad','57845','2020-11-26 18:40:12','2020-11-26 18:40:12','CN',NULL,NULL),
	(52,5,'Nickolas','Stroman',NULL,'400 Denesik Place Apt. 583',NULL,'North Lea','64379','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(53,NULL,'Nickolas','Stroman',NULL,'400 Denesik Place Apt. 583',NULL,'North Lea','64379','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(54,NULL,'Nickolas','Stroman',NULL,'400 Denesik Place Apt. 583',NULL,'North Lea','64379','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(55,9,'Vinnie','Schoen',NULL,'1378 Stephany Pass Suite 741',NULL,'Priceborough','02500','2020-11-26 18:40:13','2020-11-26 18:40:13','PL',NULL,NULL),
	(56,NULL,'Vinnie','Schoen',NULL,'1378 Stephany Pass Suite 741',NULL,'Priceborough','02500','2020-11-26 18:40:13','2020-11-26 18:40:13','PL',NULL,NULL),
	(57,NULL,'Vinnie','Schoen',NULL,'1378 Stephany Pass Suite 741',NULL,'Priceborough','02500','2020-11-26 18:40:13','2020-11-26 18:40:13','PL',NULL,NULL),
	(58,19,'Frank','Bayer',NULL,'643 Tess Branch',NULL,'Sylviamouth','48350','2020-11-26 18:40:13','2020-11-26 18:40:13','PT',NULL,NULL),
	(59,NULL,'Frank','Bayer',NULL,'643 Tess Branch',NULL,'Sylviamouth','48350','2020-11-26 18:40:13','2020-11-26 18:40:13','PT',NULL,NULL),
	(60,NULL,'Frank','Bayer',NULL,'643 Tess Branch',NULL,'Sylviamouth','48350','2020-11-26 18:40:13','2020-11-26 18:40:13','PT',NULL,NULL),
	(61,3,'Ashly','Gaylord','796-401-0280 x01070','338 D\'Amore Wall','Mann-Schoen','North Tyra','17877','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(62,3,'Humberto','Auer','1-414-273-0586 x14867','9299 Stracke Field Apt. 522',NULL,'New Aniyaburgh','24342-2729','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(63,16,'Donnie','Hamill','585.553.7661 x838','64920 Robel Crest','Rowe LLC','North Percival','36252','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(64,14,'Immanuel','Connelly','(384) 693-5576 x8212','480 Hegmann Wells Apt. 846',NULL,'Lucindaview','91327-1958','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(65,16,'Amina','Schowalter',NULL,'29975 Hane Lodge','Bogan LLC','North Kurtisburgh','45619','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(66,2,'Edyth','Wilkinson','+1-636-336-8067','45817 Vita Mill',NULL,'Ernserside','19207-5229','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(67,21,'Lucienne','Cruickshank',NULL,'2059 Roy Pass Apt. 337',NULL,'Edythestad','81829-7871','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(68,2,'Earnest','Douglas','+1-293-467-8336','802 Oberbrunner Extensions','Zulauf, Schmidt and Block','Runolfssonmouth','20116','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(69,6,'Hans','Hoeger',NULL,'663 Chyna Garden','Kuphal-Huel','New Tatum','76595-8752','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(70,8,'Scarlett','Schaefer','(985) 254-9743 x772','497 Hill Manors','Schmidt and Sons','North Sigmund','17663-7010','2020-11-26 18:40:13','2020-11-26 18:40:13','US',NULL,NULL),
	(79,NULL,'Magdalena','Campos','905-601-874','8203 Calle Mota',NULL,'Córdoba','33514','2020-11-26 22:17:49','2020-11-26 22:17:49','PT',NULL,NULL),
	(80,NULL,'Alan','Garcia','017684 56105','8244 Main Street',NULL,'Leeds','FQ4U 0SQ','2020-11-26 22:17:52','2020-11-26 22:17:52','PT',NULL,NULL),
	(81,NULL,'Armando','Robertson','017684 82159','4431 Main Road',NULL,'Gloucester','D03 7PR','2020-11-26 22:18:08','2020-11-26 22:18:08','PT',NULL,NULL),
	(82,NULL,'Rayan','Clement','01-97-88-63-86','379 Rue Gasparin',NULL,'Champigny-sur-Marne','99155','2020-11-26 22:18:10','2020-11-26 22:18:10','PT',NULL,NULL),
	(83,NULL,'Caleb','Robinson','(515)-503-7180','8466 West Coast Road',NULL,'Christchurch','41282','2020-11-26 22:18:10','2020-11-26 22:18:10','PT',NULL,NULL),
	(84,NULL,'Arron','Cox','071-176-0316','9016 The Crescent',NULL,'Laytown-Bettystown-Mornington','33023','2020-11-26 22:18:21','2020-11-26 22:18:21','PT',NULL,NULL),
	(85,NULL,'Souhayla','De Waal','(651)-613-2395','1311 Franssenstraat',NULL,'Zwarsluis','35435','2020-11-26 22:18:23','2020-11-26 22:18:23','PT',NULL,NULL),
	(86,NULL,'Margrith','Roy','075 075 36 42','9074 Rue du Moulin',NULL,'Schmitten (Fr)','7299','2020-11-26 22:18:39','2020-11-26 22:18:39','PT',NULL,NULL),
	(87,NULL,'Nolan','Perez','04-39-79-76-38','9243 Avenue de la République',NULL,'Perpignan','65671','2020-11-26 22:18:40','2020-11-26 22:18:40','PT',NULL,NULL),
	(88,NULL,'Aymen','Oudendijk','(618)-573-3470','2458 Bronsgietersdonk',NULL,'Wilhelminadorp','82225','2020-11-26 22:18:41','2020-11-26 22:18:41','PT',NULL,NULL),
	(89,NULL,'Avery','Anderson','596-190-0616','2861 Pierre Ave',NULL,'Summerside','E0Y 9G0','2020-11-26 22:18:45','2020-11-26 22:18:45','PT',NULL,NULL),
	(90,NULL,'David','Soto','961-361-971','1115 Calle de Segovia',NULL,'Elche','27206','2020-11-26 22:18:45','2020-11-26 22:18:45','PT',NULL,NULL),
	(91,NULL,'Dim','Topal','(964)-835-2036','7350 Chartreusestraat',NULL,'Eesveen','94064','2020-11-26 22:18:50','2020-11-26 22:18:50','PT',NULL,NULL),
	(92,NULL,'Sylwia','Dyck','0795-7501318','8199 Uhlandstraße',NULL,'Klütz','21339','2020-11-26 22:18:50','2020-11-26 22:18:50','PT',NULL,NULL),
	(93,NULL,'مهدي','سلطانی نژاد','071-56594323','8857 پارک طالقانی',NULL,'سنندج','77671','2020-11-26 22:19:36','2020-11-26 22:19:36','PT',NULL,NULL),
	(94,NULL,'Angelo','Garcia','01-09-63-90-07','9827 Rue du Stade',NULL,'Orléans','66400','2020-11-26 22:19:37','2020-11-26 22:19:37','PT',NULL,NULL),
	(95,NULL,'رها','نكو نظر','039-68503228','7191 آیت‌الله مدنی',NULL,'ورامین','16468','2020-11-26 22:19:40','2020-11-26 22:19:40','PT',NULL,NULL),
	(96,NULL,'Nevaeh','Cooper','(991)-948-6614','782 Highcliff Road',NULL,'Dunedin','98648','2020-11-26 22:19:41','2020-11-26 22:19:41','PT',NULL,NULL),
	(97,NULL,'Serine','Nesse','58600346','7747 Caspar Storms vei',NULL,'Åsen','9260','2020-11-26 22:20:52','2020-11-26 22:20:52','PT',NULL,NULL),
	(98,NULL,'Elisa','Da Silva','02-66-83-00-94','6641 Rue Louis-Garrand',NULL,'Saint-Denis','94529','2020-11-26 22:20:54','2020-11-26 22:20:54','PT',NULL,NULL),
	(99,NULL,'Andrea','Pedersen','16794102','6237 Vestervang',NULL,'Frederiksberg','89338','2020-11-26 22:20:55','2020-11-26 22:20:55','PT',NULL,NULL),
	(100,NULL,'Helmi','Ranta','07-909-759','4887 Esplanadi',NULL,'Heinola','51025','2020-11-26 22:20:55','2020-11-26 22:20:55','PT',NULL,NULL),
	(101,NULL,'Benjamin','Clark','912-876-8040','4763 Brock Rd',NULL,'Borden','G3Y 6L4','2020-11-26 22:22:54','2020-11-26 22:22:54','PT',NULL,NULL),
	(102,NULL,'Helga','Viana','(81) 0330-0788','5270 Rua Pará ',NULL,'Arapiraca','37645','2020-11-26 22:23:03','2020-11-26 22:23:03','PT',NULL,NULL),
	(103,NULL,'Mathias','Hansen','04112254','6540 Grævlingevej',NULL,'Nykøbing F','27370','2020-11-26 22:23:34','2020-11-26 22:23:34','PT',NULL,NULL),
	(104,NULL,'Byron','May','08-8636-0680','1472 Taylor St',NULL,'Warragul','8886','2020-11-26 22:23:35','2020-11-26 22:23:35','PT',NULL,NULL),
	(105,NULL,'Otilie','Thoresen','52644513','9028 Essendrops gate',NULL,'Byrknes','7393','2020-11-26 22:28:14','2020-11-26 22:28:14','PT',NULL,NULL),
	(106,NULL,'Todd','Carr','(887)-288-4053','7042 Central St',NULL,'Independence','45980','2020-11-26 22:28:14','2020-11-26 22:28:14','PT',NULL,NULL),
	(107,NULL,'Marika','Schöne','0432-0989474','3883 Schlossstraße',NULL,'Plettenberg','73192','2020-11-26 22:30:58','2020-11-26 22:30:58','PT',NULL,NULL),
	(108,NULL,'Sieghard','Kirsch','0380-5977215','2915 Beethovenstraße',NULL,'Bad Aibling','89846','2020-11-26 22:31:13','2020-11-26 22:31:13','PT',NULL,NULL),
	(109,NULL,'Callum','Sanders','017684 35916','6312 Queensway',NULL,'Stirling','BN0 9YW','2020-11-26 22:31:13','2020-11-26 22:31:13','PT',NULL,NULL),
	(110,NULL,'Lilly','Berger','03-20-71-54-68','8000 Rue du Château',NULL,'Clermont-Ferrand','96684','2020-11-26 22:31:27','2020-11-26 22:31:27','PT',NULL,NULL),
	(111,NULL,'Harriet','Thompson','(734)-449-4536','6651 Tennent Drive',NULL,'Whangarei','99803','2020-11-26 22:31:28','2020-11-26 22:31:28','PT',NULL,NULL),
	(112,NULL,'Malik','Martin','931-605-3824','1803 15th St',NULL,'Clinton','V7U 3X4','2020-11-26 22:33:12','2020-11-26 22:33:12','PT',NULL,NULL),
	(113,NULL,'Nuria','Ortega','941-405-631','6339 Paseo de Extremadura',NULL,'San Sebastián','86126','2020-11-26 22:33:12','2020-11-26 22:33:12','PT',NULL,NULL),
	(114,NULL,'Ege','Uluhan','(746)-848-9764','4196 Kushimoto Sk',NULL,'Ordu','61764','2020-11-26 22:33:43','2020-11-26 22:33:43','PT',NULL,NULL),
	(115,NULL,'Nellie','Garberg','66171750','9047 St. Halvards gate',NULL,'Kristiansund','6101','2020-11-26 22:33:43','2020-11-26 22:33:43','PT',NULL,NULL),
	(116,NULL,'Mehmet','Akal','(773)-966-2942','1460 Necatibey Cd',NULL,'Tekirdağ','45607','2020-11-26 22:33:49','2020-11-26 22:33:49','PT',NULL,NULL),
	(117,NULL,'Taha','Roland','74367735','2203 Alunsjøveien',NULL,'Rophus','3691','2020-11-26 22:33:50','2020-11-26 22:33:50','PT',NULL,NULL),
	(118,NULL,'Bertine','Carlsen','88391366','5897 Hellerudsvingen',NULL,'Skarpengland','5563','2020-11-26 22:37:39','2020-11-26 22:37:39','PT',NULL,NULL),
	(119,NULL,'Domingo','Vicente','944-374-755','6104 Calle de Téllez',NULL,'Madrid','25958','2020-11-26 22:37:39','2020-11-26 22:37:39','PT',NULL,NULL),
	(120,NULL,'Brielle','Roy','189-604-7268','3158 Victoria Ave',NULL,'Princeton','K1O 0R7','2020-11-26 22:39:18','2020-11-26 22:39:18','PT',NULL,NULL),
	(121,NULL,'Patricia','Brooks','016977 52493','1683 Mill Lane',NULL,'Lichfield','DS35 4AH','2020-11-26 22:39:19','2020-11-26 22:39:19','PT',NULL,NULL),
	(122,NULL,'Rahim','Pouls','(612)-310-8784','4938 Dorpsterweg',NULL,'Lichtmis','32597','2020-11-26 22:39:34','2020-11-26 22:39:34','PT',NULL,NULL),
	(123,NULL,'Jose','Iglesias','946-211-345','575 Calle de La Luna',NULL,'Lorca','84729','2020-11-26 22:39:35','2020-11-26 22:39:35','PT',NULL,NULL),
	(124,NULL,'Logan','Jean-Baptiste','063-518-1494','145 Grand Ave',NULL,'Enterprise','T7Q 0D4','2020-11-26 22:40:25','2020-11-26 22:40:25','PT',NULL,NULL),
	(125,NULL,'النا','احمدی','089-09037094','900 مجاهدین اسلام',NULL,'ورامین','43959','2020-11-26 22:40:25','2020-11-26 22:40:25','PT',NULL,NULL),
	(129,NULL,'Valentin','Gallardo','977-277-536','4747 Ronda de Toledo',NULL,'Palma de Mallorca','92504','2020-11-26 22:41:28','2020-11-26 22:41:28','PT',NULL,NULL),
	(130,NULL,'Louane','Girard','02-53-06-71-17','2434 Rue de L\'Abbé-Groult',NULL,'Saint-Pierre','18930','2020-11-26 22:41:28','2020-11-26 22:41:28','PT',NULL,NULL),
	(667,NULL,'Yvar','Gloudemans','(374)-430-7310','9222 Bokkinghangen',NULL,'Rietmolen','48575','2020-11-26 23:03:34','2020-11-26 23:03:34','PT',NULL,NULL),
	(668,NULL,'Anne-Marie','Haas','0209-8590716','322 Danziger Straße',NULL,'Naunhof','59863','2020-11-26 23:03:34','2020-11-26 23:03:34','PT',NULL,NULL),
	(669,NULL,'Brian','Holmes','06-3630-1461','3691 Ranchview Dr',NULL,'Dubbo','9757','2020-11-26 23:03:35','2020-11-26 23:03:35','PT',NULL,NULL),
	(670,NULL,'آرمین','محمدخان','012-27791970','1056 دستغیب',NULL,'ساوه','50512','2020-11-26 23:03:36','2020-11-26 23:03:36','PT',NULL,NULL),
	(671,NULL,'Joan','Nieto','913-814-270','8945 Avenida de La Albufera',NULL,'Albacete','40737','2020-11-26 23:03:36','2020-11-26 23:03:36','PT',NULL,NULL),
	(672,NULL,'Martina','Mendes','(58) 4277-5297','5103 Rua Dezesseis de Maio',NULL,'Olinda','35407','2020-11-26 23:03:36','2020-11-26 23:03:36','PT',NULL,NULL),
	(673,NULL,'Emilie','Christensen','16566958','1505 Kastanievej',NULL,'København S','52375','2020-11-26 23:03:37','2020-11-26 23:03:37','PT',NULL,NULL),
	(674,NULL,'Kevin','Fagernes','87003941','8727 Odvar Solbergs vei',NULL,'Momoen','1891','2020-11-26 23:03:37','2020-11-26 23:03:37','PT',NULL,NULL),
	(675,NULL,'Alyssa','Blanc','05-46-09-00-25','1566 Avenue Paul Eluard',NULL,'Dijon','83538','2020-11-26 23:03:37','2020-11-26 23:03:37','PT',NULL,NULL),
	(676,NULL,'Victoria','Hunter','(977)-848-2579','6506 Railroad St',NULL,'Albany','23296','2020-11-26 23:03:38','2020-11-26 23:03:38','PT',NULL,NULL),
	(677,NULL,'Layla','King','(635)-638-5519','1517 Hillsborough Road',NULL,'Whangarei','98585','2020-11-26 23:03:38','2020-11-26 23:03:38','PT',NULL,NULL),
	(678,NULL,'Anna','Stewart','015394 20957','9734 King Street',NULL,'Southampton','W3 0NS','2020-11-26 23:03:38','2020-11-26 23:03:38','PT',NULL,NULL),
	(679,NULL,'Silvia','Ortiz','961-768-749','9951 Avenida del Planetario',NULL,'Las Palmas de Gran Canaria','66521','2020-11-26 23:03:39','2020-11-26 23:03:39','PT',NULL,NULL),
	(680,NULL,'Logan','Fortin','774-420-3199','4606 Concession Road 6',NULL,'Westport','G0V 2R2','2020-11-26 23:03:40','2020-11-26 23:03:40','PT',NULL,NULL),
	(681,NULL,'Bryan','Lewis','01-2410-9344','2449 Cackson St',NULL,'Bathurst','429','2020-11-26 23:03:40','2020-11-26 23:03:40','PT',NULL,NULL),
	(682,NULL,'Lumi','Couri','03-418-407','9076 Bulevardi',NULL,'Pukkila','48710','2020-11-26 23:03:40','2020-11-26 23:03:40','PT',NULL,NULL),
	(683,NULL,'Jardel','Barros','(44) 5359-0212','8605 Rua Paraná ',NULL,'Rio de Janeiro','48721','2020-11-26 23:03:40','2020-11-26 23:03:40','PT',NULL,NULL),
	(684,NULL,'Lucas','Lefebvre','078 425 86 92','8941 Rue Desaix',NULL,'Quinto','6934','2020-11-26 23:03:41','2020-11-26 23:03:41','PT',NULL,NULL),
	(685,NULL,'Léon','Picard','02-30-35-32-23','1374 Rue Abel-Ferry',NULL,'Poitiers','17687','2020-11-26 23:03:41','2020-11-26 23:03:41','PT',NULL,NULL),
	(686,NULL,'Dennis','Matthews','(711)-254-8328','9632 E Sandy Lake Rd',NULL,'Albuquerque','44246','2020-11-26 23:03:41','2020-11-26 23:03:41','PT',NULL,NULL),
	(687,NULL,'Yazid','Van Diermen','(448)-648-4779','7450 Googermolenweg',NULL,'Heijningen','11249','2020-11-26 23:03:42','2020-11-26 23:03:42','PT',NULL,NULL),
	(688,NULL,'Ethan','Jackson','(581)-781-5055','5604 Dee Street',NULL,'Hamilton','60690','2020-11-26 23:03:43','2020-11-26 23:03:43','PT',NULL,NULL),
	(689,NULL,'Bill','Myers','011-501-4135','1929 Novara Avenue',NULL,'Swords','32812','2020-11-26 23:03:43','2020-11-26 23:03:43','PT',NULL,NULL),
	(690,NULL,'Galaza','Fernandes','(96) 3467-3564','7880 Rua Rio de Janeiro ',NULL,'Blumenau','53518','2020-11-26 23:03:43','2020-11-26 23:03:43','PT',NULL,NULL),
	(691,NULL,'Tristan','Christiansen','49336186','689 Skjernvej',NULL,'Nørre Sundby','37641','2020-11-26 23:03:44','2020-11-26 23:03:44','PT',NULL,NULL),
	(692,NULL,'Brittany','Palmer','026 0526 1889','1208 Main Street',NULL,'Preston','RM13 6HF','2020-11-26 23:03:44','2020-11-26 23:03:44','PT',NULL,NULL),
	(693,NULL,'Fabiele','Ribeiro','(79) 4585-0534','4587 Rua Paraíba ',NULL,'Jandira','69562','2020-11-26 23:03:45','2020-11-26 23:03:45','PT',NULL,NULL),
	(694,NULL,'Manuel','Torres','965-973-136','2044 Calle de Tetuán',NULL,'Cartagena','40345','2020-11-26 23:03:45','2020-11-26 23:03:45','PT',NULL,NULL),
	(695,NULL,'Halima','Flataker','63445112','3364 Framveien',NULL,'Slemsrud','9017','2020-11-26 23:03:46','2020-11-26 23:03:46','PT',NULL,NULL),
	(696,NULL,'Marcus','Ortiz','016977 37786','6680 Mill Road',NULL,'Worcester','VJ35 1AR','2020-11-26 23:03:46','2020-11-26 23:03:46','PT',NULL,NULL),
	(697,NULL,'Mark','Little','03-7555-1873','664 Plum St',NULL,'Orange','2166','2020-11-26 23:03:46','2020-11-26 23:03:46','PT',NULL,NULL),
	(698,NULL,'Tormod','Havdal','66280031','444 Grüners gate',NULL,'Rypefjord','5954','2020-11-26 23:03:47','2020-11-26 23:03:47','PT',NULL,NULL),
	(701,NULL,'Alexandra','Chapman','051-810-2162','2180 Church Road',NULL,'Westport','16980','2020-11-26 23:04:36','2020-11-26 23:04:36','PT',NULL,NULL),
	(702,NULL,'Stefanie','Meunier','078 409 51 87','4775 Rue des Jardins',NULL,'Boswil','8082','2020-11-26 23:04:36','2020-11-26 23:04:36','PT',NULL,NULL),
	(703,NULL,'Meik','Scherer','0616-2637181','25 Kastanienweg',NULL,'Neusäß','20987','2020-11-26 23:04:36','2020-11-26 23:04:36','PT',NULL,NULL),
	(704,NULL,'Matthew','Anderson','(670)-630-7195','2189 Hilton Highway',NULL,'Timaru','33360','2020-11-26 23:04:37','2020-11-26 23:04:37','PT',NULL,NULL),
	(705,NULL,'Caleb','White','(254)-746-3769','472 Dominion Road',NULL,'Hastings','42947','2020-11-26 23:04:37','2020-11-26 23:04:37','PT',NULL,NULL),
	(706,NULL,'Frederikke','Christensen','28782256','1563 Østermarken',NULL,'Snertinge','39266','2020-11-26 23:04:38','2020-11-26 23:04:38','PT',NULL,NULL),
	(707,NULL,'Mathéo','Menard','05-59-67-75-54','568 Rue de L\'Abbé-Patureau',NULL,'Reims','21690','2020-11-26 23:04:38','2020-11-26 23:04:38','PT',NULL,NULL),
	(708,NULL,'Jose','Bravo','933-103-424','667 Calle del Prado',NULL,'Almería','79072','2020-11-26 23:04:38','2020-11-26 23:04:38','PT',NULL,NULL),
	(709,NULL,'Ryan','Dunn','016977 8564','1602 Mill Lane',NULL,'St Albans','R1T 7ZW','2020-11-26 23:04:39','2020-11-26 23:04:39','PT',NULL,NULL),
	(710,NULL,'Guarani','Fernandes','(90) 7445-0649','1985 Rua Amazonas ',NULL,'Itapipoca','63131','2020-11-26 23:04:39','2020-11-26 23:04:39','PT',NULL,NULL),
	(712,NULL,'Randall','Hanson','051-860-7177','620 Tara Street',NULL,'Portlaoise','38391','2020-11-26 23:04:55','2020-11-26 23:04:55','PT',NULL,NULL),
	(713,NULL,'Amaury','Lecomte','03-57-96-94-80','8347 Rue du Stade',NULL,'Nancy','28144','2020-11-26 23:04:55','2020-11-26 23:04:55','PT',NULL,NULL),
	(714,NULL,'Shadi','Nollen','(316)-391-8499','6085 Bovenstreek',NULL,'Niawier','93047','2020-11-26 23:04:56','2020-11-26 23:04:56','PT',NULL,NULL),
	(715,NULL,'Frida','Jørgensen','90174547','6083 Århusvej',NULL,'Lintrup','35073','2020-11-26 23:04:56','2020-11-26 23:04:56','PT',NULL,NULL),
	(716,NULL,'Ronald','Nichols','(445)-899-5046','5425 Hillcrest Rd',NULL,'Mcallen','57705','2020-11-26 23:04:57','2020-11-26 23:04:57','PT',NULL,NULL),
	(717,NULL,'نيما','رضاییان','040-18050856','3782 میدان استقلال',NULL,'دزفول','27481','2020-11-26 23:04:57','2020-11-26 23:04:57','PT',NULL,NULL),
	(719,NULL,'Toby','Kumar','(315)-885-9335','7842 Port Hills Road',NULL,'Upper Hutt','26252','2020-11-26 23:05:30','2020-11-26 23:05:30','PT',NULL,NULL),
	(720,NULL,'Carine','Van Rijsbergen','(892)-018-6114','5166 De Rijpstraat',NULL,'Het Bildt','42120','2020-11-26 23:05:30','2020-11-26 23:05:30','PT',NULL,NULL),
	(721,NULL,'رها','صدر','081-52576138','2584 دیباجی',NULL,'اهواز','97992','2020-11-26 23:05:31','2020-11-26 23:05:31','PT',NULL,NULL),
	(722,NULL,'فاطمه','كامياران','029-68666279','8594 فاطمی',NULL,'نجف‌آباد','24058','2020-11-26 23:05:31','2020-11-26 23:05:31','PT',NULL,NULL),
	(723,NULL,'Asuncion','Campos','954-517-656','5383 Avenida de América',NULL,'San Sebastián','89957','2020-11-26 23:05:31','2020-11-26 23:05:31','PT',NULL,NULL),
	(724,NULL,'Mehmet','Özkök','(433)-653-7730','198 Maçka Cd',NULL,'Ordu','68915','2020-11-26 23:05:32','2020-11-26 23:05:32','PT',NULL,NULL),
	(725,NULL,'Alizee','Adam','05-15-74-55-27','4653 Rue du Bon-Pasteur',NULL,'Marseille','97779','2020-11-26 23:05:32','2020-11-26 23:05:32','PT',NULL,NULL),
	(726,NULL,'Jimmy','Simpson','08-7280-4516','423 E North St',NULL,'Mackay','8374','2020-11-26 23:05:33','2020-11-26 23:05:33','PT',NULL,NULL),
	(727,NULL,'Hilla','Laurila','05-148-922','662 Myllypuronkatu',NULL,'Rautalampi','99975','2020-11-26 23:05:33','2020-11-26 23:05:33','PT',NULL,NULL),
	(728,NULL,'Eleanor','Terry','019467 72371','5730 Broadway',NULL,'Stevenage','D96 6AB','2020-11-26 23:05:33','2020-11-26 23:05:33','PT',NULL,NULL),
	(729,NULL,'Pierre','Muller','076 477 54 32','5674 Rue du Moulin',NULL,'Corcelles-près-Payerne','8943','2020-11-26 23:05:34','2020-11-26 23:05:34','PT',NULL,NULL),
	(730,NULL,'Josefine','Madsen','68501104','766 Fuglevænget',NULL,'Støvring ','37865','2020-11-26 23:05:34','2020-11-26 23:05:34','PT',NULL,NULL),
	(731,NULL,'Eva','Ferrer','940-274-023','5299 Calle de Segovia',NULL,'Palma de Mallorca','25837','2020-11-26 23:05:35','2020-11-26 23:05:35','PT',NULL,NULL),
	(732,NULL,'امیر','حسینی','093-35470575','8410 شورا',NULL,'ملارد','73540','2020-11-26 23:05:35','2020-11-26 23:05:35','PT',NULL,NULL),
	(733,NULL,'Gail','Fuller','(161)-690-2833','9028 Cherry St',NULL,'Lowell','54712','2020-11-26 23:05:35','2020-11-26 23:05:35','PT',NULL,NULL),
	(734,NULL,'Mitchell','Daniels','06-2630-6776','1359 Plum St',NULL,'Shepparton','1248','2020-11-26 23:05:36','2020-11-26 23:05:36','PT',NULL,NULL),
	(736,NULL,'Nathaniel','Robinson','(275)-497-4185','515 Barbadoes Street',NULL,'Blenheim','47527','2020-11-26 23:05:39','2020-11-26 23:05:39','PT',NULL,NULL),
	(737,NULL,'Omer','Tingen','(135)-560-5556','419 De Lange Kant',NULL,'Oppenhuizen','48247','2020-11-26 23:05:40','2020-11-26 23:05:40','PT',NULL,NULL),
	(738,NULL,'Lillian','Perkins','016974 68725','1621 Park Road',NULL,'Armagh','N8M 5PD','2020-11-26 23:05:41','2020-11-26 23:05:41','PT',NULL,NULL),
	(739,NULL,'Germaine','Da Silva','075 551 60 68','905 Rue Dugas-Montbel',NULL,'Bever','5860','2020-11-26 23:05:42','2020-11-26 23:05:42','PT',NULL,NULL),
	(740,NULL,'Loïc','Fontai','076 981 26 71','5700 Montée Saint-Barthélémy',NULL,'Felsberg','1725','2020-11-26 23:05:44','2020-11-26 23:05:44','PT',NULL,NULL),
	(741,NULL,'Claire','Meyer','03-16-11-17-60','7669 Avenue du Château',NULL,'Paris','78743','2020-11-26 23:05:44','2020-11-26 23:05:44','PT',NULL,NULL),
	(742,NULL,'Leana','Moulin','04-28-88-02-96','8914 Rue André-Gide',NULL,'Poitiers','82616','2020-11-26 23:05:45','2020-11-26 23:05:45','PT',NULL,NULL),
	(743,NULL,'Clémence','Sanchez','03-45-20-80-23','8449 Place de L\'Église',NULL,'Dunkerque','98027','2020-11-26 23:05:45','2020-11-26 23:05:45','PT',NULL,NULL),
	(744,NULL,'Edna','Soto','(253)-102-6524','4237 Forest Ln',NULL,'Joliet','48115','2020-11-26 23:06:01','2020-11-26 23:06:01','PT',NULL,NULL),
	(745,NULL,'Gerald','Silva','04-4163-9888','2170 E Center St',NULL,'Rockhampton','7161','2020-11-26 23:06:02','2020-11-26 23:06:02','PT',NULL,NULL),
	(746,NULL,'Alberte','Sørensen','49810709','6485 Gyvelvænget',NULL,'Støvring ','87412','2020-11-26 23:06:03','2020-11-26 23:06:03','PT',NULL,NULL),
	(747,NULL,'Shi','Volders','(671)-493-8711','5536 Castricumhof',NULL,'Banholt','71110','2020-11-26 23:06:04','2020-11-26 23:06:04','PT',NULL,NULL),
	(748,NULL,'مهدیس','سالاری','088-33734395','9084 میدان 15خرداد',NULL,'قزوین','15814','2020-11-26 23:06:05','2020-11-26 23:06:05','PT',NULL,NULL),
	(749,NULL,'Dylan','Campbell','348-631-0425','5300 Grand Marais Ave',NULL,'Inwood','H6V 1F9','2020-11-26 23:06:05','2020-11-26 23:06:05','PT',NULL,NULL),
	(750,NULL,'Victoria','Morin','990-643-0873','5408 Dalhousie Ave',NULL,'Hudson','R4N 4R0','2020-11-26 23:06:14','2020-11-26 23:06:14','PT',NULL,NULL),
	(751,NULL,'Harry','Gonzalez','015394 58969','8282 North Street',NULL,'Stevenage','FE3Y 4EU','2020-11-26 23:06:15','2020-11-26 23:06:15','PT',NULL,NULL),
	(752,NULL,'Manuela','Gautier','076 532 31 67','3930 Rue Laure-Diebold',NULL,'Otelfingen','9587','2020-11-26 23:06:25','2020-11-26 23:06:25','PT',NULL,NULL),
	(753,NULL,'Allen','Arnold','04-0029-3503','329 Ash Dr',NULL,'Toowoomba','7265','2020-11-26 23:06:26','2020-11-26 23:06:26','PT',NULL,NULL),
	(754,NULL,'Nico','Aksnes','86501236','5877 Strandgata',NULL,'Stamsund','1601','2020-11-26 23:06:36','2020-11-26 23:06:36','PT',NULL,NULL),
	(755,NULL,'Amina','Nesset','80971811','336 Sigurd A. Danielsens vei',NULL,'Storås','3127','2020-11-26 23:06:37','2020-11-26 23:06:37','PT',NULL,NULL),
	(756,NULL,'Michael','Morel','078 751 90 22','5931 Rue des Écoles',NULL,'Horgen','8217','2020-11-26 23:06:47','2020-11-26 23:06:47','PT',NULL,NULL),
	(757,NULL,'Hobie','Lijten','(570)-726-9143','2469 De Slikslede',NULL,'Swalmen','76768','2020-11-26 23:06:48','2020-11-26 23:06:48','PT',NULL,NULL),
	(758,NULL,'Leroy','Warren','071-611-8711','2070 Highfield Road',NULL,'Naas','63840','2020-11-26 23:06:59','2020-11-26 23:06:59','PT',NULL,NULL),
	(759,NULL,'Logan','Thomas','04-00-17-39-08','1804 Rue Baraban',NULL,'Angers','66704','2020-11-26 23:07:00','2020-11-26 23:07:00','PT',NULL,NULL),
	(760,NULL,'Victor','Novak','838-276-8950','272 St. Catherine St',NULL,'Southampton','N2G 8B9','2020-11-26 23:07:10','2020-11-26 23:07:10','PT',NULL,NULL),
	(761,NULL,'علی','موسوی','026-09393769','8410 موحد دانش',NULL,'ارومیه','85945','2020-11-26 23:07:11','2020-11-26 23:07:11','PT',NULL,NULL),
	(762,NULL,'Kathy','Gonzales','015396 61127','457 Stanley Road',NULL,'Preston','OY51 8NE','2020-11-26 23:07:21','2020-11-26 23:07:21','PT',NULL,NULL),
	(763,NULL,'Dolores','Lowe','06-4958-2868','6936 E Sandy Lake Rd',NULL,'Mackay','6672','2020-11-26 23:07:21','2020-11-26 23:07:21','PT',NULL,NULL),
	(764,NULL,'Eckhardt','Heiser','0012-5714418','177 Friedhofstraße',NULL,'Neukirchen','17821','2020-11-26 23:07:32','2020-11-26 23:07:32','PT',NULL,NULL),
	(765,NULL,'Abílio','Duarte','(16) 5305-5003','8126 Rua São Paulo ',NULL,'Macapá','27320','2020-11-26 23:07:32','2020-11-26 23:07:32','PT',NULL,NULL),
	(766,NULL,'Marcelino','Dries','(263)-457-3480','8042 Johan van Oldenbarneveldstraat',NULL,'Haarsteeg','83727','2020-11-26 23:07:43','2020-11-26 23:07:43','PT',NULL,NULL),
	(767,NULL,'Beatrice','Heiser','0697-5631121','8407 Ahornweg',NULL,'Wunsiedel I. Fichtelgebirge','50567','2020-11-26 23:07:43','2020-11-26 23:07:43','PT',NULL,NULL),
	(768,NULL,'Maddison','Dunne','041-664-5205','228 Main Street',NULL,'Greystones','19744','2020-11-26 23:07:54','2020-11-26 23:07:54','PT',NULL,NULL),
	(769,NULL,'Okan','Okur','(788)-372-4467','2994 Abanoz Sk',NULL,'Kilis','31830','2020-11-26 23:07:54','2020-11-26 23:07:54','PT',NULL,NULL),
	(770,NULL,'Siri','Grønlien','68056114','7417 Disenveien',NULL,'Årset','9451','2020-11-26 23:08:04','2020-11-26 23:08:04','PT',NULL,NULL),
	(771,NULL,'Diana','Wilson','09-9108-8007','1532 E Center St',NULL,'Wagga Wagga','6969','2020-11-26 23:08:05','2020-11-26 23:08:05','PT',NULL,NULL),
	(772,NULL,'Bob','Nichols','(974)-652-0491','3478 Valley View Ln',NULL,'Aubrey','67172','2020-11-26 23:08:15','2020-11-26 23:08:15','PT',NULL,NULL),
	(773,NULL,'Herbert','Schaar','0756-6048772','3517 Burgstraße',NULL,'Ellwangen (Jagst)','27398','2020-11-26 23:08:16','2020-11-26 23:08:16','PT',NULL,NULL),
	(774,NULL,'Kathleen','Henry','071-273-0565','3332 Church Lane',NULL,'Sallins','94954','2020-11-26 23:08:26','2020-11-26 23:08:26','PT',NULL,NULL),
	(775,NULL,'Sofia','Roy','825-360-2564','5807 20th Ave',NULL,'Charlottetown','N0S 2Z5','2020-11-26 23:08:27','2020-11-26 23:08:27','PT',NULL,NULL),
	(776,NULL,'Flenn','Lane','051-802-4171','5685 George Street',NULL,'Cashel','37222','2020-11-26 23:08:37','2020-11-26 23:08:37','PT',NULL,NULL),
	(777,NULL,'Gabriel','Rey','076 729 06 93','7375 Rue Bony',NULL,'Boudry','6931','2020-11-26 23:08:38','2020-11-26 23:08:38','PT',NULL,NULL),
	(778,NULL,'Amelia','Moore','(380)-656-6323','4262 West Coast Road',NULL,'Wellington','40361','2020-11-26 23:08:48','2020-11-26 23:08:48','PT',NULL,NULL),
	(779,NULL,'Olivia','Peltola','07-288-114','7709 Satakennankatu',NULL,'Töysä','98601','2020-11-26 23:08:48','2020-11-26 23:08:48','PT',NULL,NULL),
	(780,NULL,'Nino','Lucas','01-46-57-36-12','1780 Quai Chauveau',NULL,'Colombes','36910','2020-11-26 23:08:59','2020-11-26 23:08:59','PT',NULL,NULL),
	(781,NULL,'Çigdem','Reesink','(167)-585-2138','5457 De Matestraat',NULL,'Kekerdom','25513','2020-11-26 23:08:59','2020-11-26 23:08:59','PT',NULL,NULL),
	(782,NULL,'ملینا','گلشن','000-04474866','5611 پارک طالقانی',NULL,'نیشابور','60638','2020-11-26 23:09:10','2020-11-26 23:09:10','PT',NULL,NULL),
	(783,NULL,'John','Mcdonalid','(801)-044-7396','7760 Brown Terrace',NULL,'Little Rock','89687','2020-11-26 23:09:10','2020-11-26 23:09:10','PT',NULL,NULL),
	(784,NULL,'Victor','Moreno','(915)-573-0338','9392 W 6th St',NULL,'Pasadena','72892','2020-11-26 23:09:20','2020-11-26 23:09:20','PT',NULL,NULL),
	(785,NULL,'Marcus','Taylor','(211)-974-4485','9569 Cashel Street',NULL,'New Plymouth','78316','2020-11-26 23:09:21','2020-11-26 23:09:21','PT',NULL,NULL),
	(786,NULL,'Felix','Lam','070-091-8213','6928 22nd Ave',NULL,'Fauquier','S4E 3X1','2020-11-26 23:09:31','2020-11-26 23:09:31','PT',NULL,NULL),
	(787,NULL,'Yousef','Berntzen','72730954','573 Laura Gundersens gate',NULL,'Karasjok','8110','2020-11-26 23:09:32','2020-11-26 23:09:32','PT',NULL,NULL),
	(788,NULL,'Margie','Holland','(016)-116-8006','6303 Paddock Way',NULL,'Allen','54118','2020-11-26 23:09:42','2020-11-26 23:09:42','PT',NULL,NULL),
	(789,NULL,'Sofia','Santos','949-307-446','8859 Calle Covadonga',NULL,'Móstoles','97770','2020-11-26 23:09:42','2020-11-26 23:09:42','PT',NULL,NULL),
	(790,NULL,'Ibe','Ten Haaf','(069)-067-3409','9611 Dr. L.F. Kampsstraat',NULL,'Schoonrewoerd','95686','2020-11-26 23:09:53','2020-11-26 23:09:53','PT',NULL,NULL),
	(791,NULL,'Valentin','Cano','997-582-694','7666 Calle de Alcalá',NULL,'La Palma','84541','2020-11-26 23:09:53','2020-11-26 23:09:53','PT',NULL,NULL),
	(792,NULL,'Alex','Peixoto','(73) 9795-2873','8251 Rua Belo Horizonte ',NULL,'Betim','69753','2020-11-26 23:10:04','2020-11-26 23:10:04','PT',NULL,NULL),
	(793,NULL,'Olivia','Jones','260-522-4940','3990 Alfred St',NULL,'Shelbourne','K8P 3D0','2020-11-26 23:10:04','2020-11-26 23:10:04','PT',NULL,NULL),
	(794,NULL,'Zilá','Rocha','(18) 7084-3425','4182 Rua Castro Alves ',NULL,'Olinda','90902','2020-11-26 23:10:14','2020-11-26 23:10:14','PT',NULL,NULL),
	(795,NULL,'Helga','Lucas','078 982 59 35','5927 Place du 8 Novembre 1942',NULL,'Bioley-Magnoux','8188','2020-11-26 23:10:15','2020-11-26 23:10:15','PT',NULL,NULL),
	(796,NULL,'Ellen','Hanson','015242 92236','1603 New Street',NULL,'Birmingham','SC93 2AG','2020-11-26 23:10:26','2020-11-26 23:10:26','PT',NULL,NULL),
	(797,NULL,'Zeynep','Kemper','0827-3566506','8447 Lindenweg',NULL,'Schwelm','57856','2020-11-26 23:10:26','2020-11-26 23:10:26','PT',NULL,NULL),
	(798,NULL,'Lucie','Breur','(444)-267-2658','5372 Heelderweg',NULL,'Alphen Gld','13352','2020-11-26 23:10:36','2020-11-26 23:10:36','PT',NULL,NULL),
	(799,NULL,'Josefine','Nielsen','12871002','2309 Irisvej',NULL,'Roskilde','23034','2020-11-26 23:10:37','2020-11-26 23:10:37','PT',NULL,NULL),
	(800,NULL,'Marian','Shaw','(462)-674-1221','9827 W Gray St',NULL,'Frederick','69687','2020-11-26 23:10:48','2020-11-26 23:10:48','PT',NULL,NULL),
	(801,NULL,'Rasmus','Remes','09-075-431','8276 Rautatienkatu',NULL,'Lempäälä','81431','2020-11-26 23:10:48','2020-11-26 23:10:48','PT',NULL,NULL),
	(802,NULL,'Frida','Poulsen','79559478','9603 Nibevej',NULL,'København S','68578','2020-11-26 23:10:58','2020-11-26 23:10:58','PT',NULL,NULL),
	(803,NULL,'Cristina','Suarez','987-440-488','3501 Calle de La Luna',NULL,'Sevilla','50839','2020-11-26 23:10:59','2020-11-26 23:10:59','PT',NULL,NULL),
	(804,NULL,'Peyton','Roberts','(018)-087-2273','9911 Courtenay Place',NULL,'Timaru','19275','2020-11-26 23:11:09','2020-11-26 23:11:09','PT',NULL,NULL),
	(805,NULL,'Nella','Salmela','06-967-635','1891 Korkeavuorenkatu',NULL,'Kotka','88629','2020-11-26 23:11:09','2020-11-26 23:11:09','PT',NULL,NULL),
	(806,NULL,'Jessie','Hart','(397)-622-1098','2685 Washington Ave',NULL,'Durham','39335','2020-11-26 23:11:20','2020-11-26 23:11:20','PT',NULL,NULL),
	(807,NULL,'Dominic','Bouchard','803-395-2271','7534 Grand Ave',NULL,'Westport','J6U 3R8','2020-11-26 23:11:20','2020-11-26 23:11:20','PT',NULL,NULL),
	(808,NULL,'کیمیا','یاسمی','051-96189116','5284 بلوار کشاورز',NULL,'دزفول','71044','2020-11-26 23:11:31','2020-11-26 23:11:31','PT',NULL,NULL),
	(809,NULL,'Jeremy','Wong','493-677-4754','4899 Main St',NULL,'Killarney','W6X 5Q6','2020-11-26 23:11:31','2020-11-26 23:11:31','PT',NULL,NULL),
	(810,NULL,'Flavie','Barbier','05-37-13-90-78','5619 Place de L\'Abbé-Basset',NULL,'Le Mans','19037','2020-11-26 23:11:41','2020-11-26 23:11:41','PT',NULL,NULL),
	(811,NULL,'Alexis','Wang','(180)-890-3598','6904 Stafford Street',NULL,'Palmerston North','13201','2020-11-26 23:11:42','2020-11-26 23:11:42','PT',NULL,NULL),
	(812,NULL,'Francoise','Wörle','0364-7752401','8084 Feldstraße',NULL,'Diepholz','50542','2020-11-26 23:11:52','2020-11-26 23:11:52','PT',NULL,NULL),
	(813,NULL,'Laura','Burns','017687 41880','8586 Brick Kiln Road',NULL,'Inverness','MU5 6DD','2020-11-26 23:11:53','2020-11-26 23:11:53','PT',NULL,NULL),
	(814,NULL,'Eugenio','Gimenez','945-927-310','1939 Calle de Argumosa',NULL,'Elche','86763','2020-11-26 23:12:03','2020-11-26 23:12:03','PT',NULL,NULL),
	(815,NULL,'فاطمه زهرا','سالاری','050-65296227','136 ایران',NULL,'قزوین','62498','2020-11-26 23:12:03','2020-11-26 23:12:03','PT',NULL,NULL),
	(816,NULL,'Larissa','Rau','0560-8083512','9444 Breslauer Straße',NULL,'Pfungstadt','53151','2020-11-26 23:12:14','2020-11-26 23:12:14','PT',NULL,NULL),
	(817,NULL,'Iiris','Kalm','06-983-015','7488 Fredrikinkatu',NULL,'Pälkäne','50740','2020-11-26 23:12:14','2020-11-26 23:12:14','PT',NULL,NULL),
	(1021,NULL,'Lorenzo','Peña','981-875-141','8894 Calle de Alberto Aguilera',NULL,'Elche','25219','2020-11-27 09:48:21','2020-11-27 09:48:21','PT',NULL,NULL),
	(1022,NULL,'آدرین','رضایی','084-62714767','9947 میدان دکتر فاطمی / جهاد',NULL,'خمینی‌شهر','69564','2020-11-27 09:48:21','2020-11-27 09:48:21','PT',NULL,NULL),
	(1023,NULL,'Alexandre','Lacroix','03-47-80-54-28','413 Rue des Ecrivains',NULL,'Saint-Pierre','29646','2020-11-27 09:48:31','2020-11-27 09:48:31','PT',NULL,NULL),
	(1024,NULL,'Gerhard','Moulin','076 641 66 64','3106 Place de L\'Europe',NULL,'Safiental','1062','2020-11-27 09:48:32','2020-11-27 09:48:32','PT',NULL,NULL),
	(1025,NULL,'Arthur','Sims','(412)-514-5377','6190 W Sherman Dr',NULL,'Boulder','57863','2020-11-27 09:48:42','2020-11-27 09:48:42','PT',NULL,NULL),
	(1026,NULL,'Kadir','Çamdalı','(032)-235-7992','4071 Şehitler Cd',NULL,'Hakkâri','27847','2020-11-27 09:48:42','2020-11-27 09:48:42','PT',NULL,NULL),
	(1027,NULL,'Theo','Tremblay','245-272-9281','7304 Duke St',NULL,'Georgetown','G9P 0A7','2020-11-27 09:48:53','2020-11-27 09:48:53','PT',NULL,NULL),
	(1028,NULL,'Elba','Ribeiro','(90) 7442-6440','5711 Rua Santo Antônio ',NULL,'Teixeira de Freitas','92239','2020-11-27 09:48:53','2020-11-27 09:48:53','PT',NULL,NULL),
	(1029,NULL,'Sven','Henkel','0693-8484881','7487 Goethestraße',NULL,'Jülich','58681','2020-11-27 09:49:03','2020-11-27 09:49:03','PT',NULL,NULL),
	(1030,NULL,'Noélie','Lopez','05-54-98-92-43','3264 Place du 8 Novembre 1942',NULL,'Saint-Pierre','34199','2020-11-27 09:49:04','2020-11-27 09:49:04','PT',NULL,NULL),
	(1031,NULL,'Oona','Tervo','09-851-723','9385 Otavalankatu',NULL,'Sodankylä','78704','2020-11-27 09:49:14','2020-11-27 09:49:14','PT',NULL,NULL),
	(1032,NULL,'Anja','Barmen','69858246','4004 Ulsrudveien',NULL,'Moi','0840','2020-11-27 09:49:15','2020-11-27 09:49:15','PT',NULL,NULL),
	(1033,NULL,'Justin','Ambrose','619-286-8690','5408 Charles St',NULL,'Stratford','M2S 2X7','2020-11-27 09:49:25','2020-11-27 09:49:25','PT',NULL,NULL),
	(1034,NULL,'Patrick','Lee','(680)-312-1621','4337 Albany Expressway',NULL,'Rotorua','99160','2020-11-27 09:49:26','2020-11-27 09:49:26','PT',NULL,NULL),
	(1035,NULL,'Nathaniel','Zhang','(592)-063-1723','6291 Kennedy Road',NULL,'Rotorua','29878','2020-11-27 09:49:36','2020-11-27 09:49:36','PT',NULL,NULL),
	(1036,NULL,'Coşkun','Mayhoş','(533)-553-2682','1796 Mevlana Cd',NULL,'Balıkesir','99179','2020-11-27 09:49:36','2020-11-27 09:49:36','PT',NULL,NULL),
	(1037,NULL,'Finley','Van Emmerik','(611)-675-9148','9375 Kruidvlierdonk',NULL,'Epse','88361','2020-11-27 09:49:47','2020-11-27 09:49:47','PT',NULL,NULL),
	(1038,NULL,'Gonca','Akgül','(899)-349-4438','4342 Necatibey Cd',NULL,'Eskişehir','19516','2020-11-27 09:49:47','2020-11-27 09:49:47','PT',NULL,NULL),
	(1039,NULL,'Jaxon','Anderson','(314)-508-2154','8795 Omahu Road',NULL,'Auckland','76602','2020-11-27 09:49:58','2020-11-27 09:49:58','PT',NULL,NULL),
	(1040,NULL,'Engelbert','Kamping','(994)-512-6279','3315 Barbiersgilde',NULL,'Heiligerlee','30895','2020-11-27 09:49:59','2020-11-27 09:49:59','PT',NULL,NULL),
	(1058,NULL,'Shane','Harvey','(726)-160-3111','5958 Blossom Hill Rd',NULL,'Baton Rouge','91485','2020-11-27 10:16:09','2020-11-27 10:16:09','PT',NULL,NULL),
	(1059,NULL,'Etiene','Fogaça','(28) 9112-7382','3659 Avenida da Democracia',NULL,'Poá','29876','2020-11-27 10:16:11','2020-11-27 10:16:11','PT',NULL,NULL),
	(1061,NULL,'Thea','Hansen','11207225','7625 Sprogøvej',NULL,'Sundby/Erslev','35859','2020-11-27 10:16:14','2020-11-27 10:16:14','PT',NULL,NULL),
	(1062,NULL,'Gwyneth','Kneppers','(046)-675-3412','2962 Dorestede',NULL,'Grijpskerke','68131','2020-11-27 10:16:14','2020-11-27 10:16:14','PT',NULL,NULL),
	(1073,NULL,'Traudel','Rauch','0584-2071049','1694 Schulstraße',NULL,'Birkenfeld','91953','2020-11-27 10:21:57','2020-11-27 10:21:57','PT',NULL,NULL),
	(1074,NULL,'Glen','Brooks','016974 76152','7695 North Street',NULL,'Derby','VX8 5FY','2020-11-27 10:21:58','2020-11-27 10:21:58','PT',NULL,NULL),
	(1075,NULL,'Ali','Özbey','(055)-146-6469','7126 Abanoz Sk',NULL,'Sinop','38529','2020-11-27 10:21:59','2020-11-27 10:21:59','PT',NULL,NULL),
	(1076,NULL,'Juliette','Novak','563-147-6526','9314 Tecumseh Rd',NULL,'Victoria','R7I 4C3','2020-11-27 10:21:59','2020-11-27 10:21:59','PT',NULL,NULL),
	(1077,NULL,'Kim','Mason','05-0584-1185','552 Wycliff Ave',NULL,'Townsville','892','2020-11-27 10:22:00','2020-11-27 10:22:00','PT',NULL,NULL),
	(1078,NULL,'Marjo','Baltussen','(792)-521-9989','6506 Hysopdonk',NULL,'Serooskerke Schouwen','39151','2020-11-27 10:22:00','2020-11-27 10:22:00','PT',NULL,NULL),
	(1079,NULL,'Iben','Syrstad','63466774','7456 Tidemands gate',NULL,'Vassøy','1651','2020-11-27 10:22:01','2020-11-27 10:22:01','PT',NULL,NULL),
	(1080,NULL,'Mar','Morales','913-685-067','6119 Calle del Barquillo',NULL,'Torrente','26362','2020-11-27 10:22:03','2020-11-27 10:22:03','PT',NULL,NULL),
	(1081,NULL,'Catarina','Duarte','(21) 6470-6188','7134 Rua Santa Luzia ',NULL,'Petrolina','84960','2020-11-27 10:22:03','2020-11-27 10:22:03','PT',NULL,NULL),
	(1082,NULL,'Dolores','Moore','00-7690-9453','7797 W Dallas St',NULL,'Dubbo','8830','2020-11-27 10:22:04','2020-11-27 10:22:04','PT',NULL,NULL),
	(1083,NULL,'Mirco','Hauschild','0218-0052060','2562 Schulweg',NULL,'Bottrop','76011','2020-11-27 10:22:05','2020-11-27 10:22:05','PT',NULL,NULL),
	(1084,NULL,'Marianne','Pelletier','246-218-2349','4898 Pine Rd',NULL,'Inwood','O2F 7H8','2020-11-27 10:22:07','2020-11-27 10:22:07','PT',NULL,NULL),
	(1085,NULL,'Edmund','Baumert','0142-8842501','5849 Goethestraße',NULL,'Lengenfeld','64173','2020-11-27 10:22:08','2020-11-27 10:22:08','PT',NULL,NULL),
	(1086,NULL,'Brielle','White','576-513-5640','2120 St. Lawrence Ave',NULL,'Field','Q0M 7U5','2020-11-27 10:22:08','2020-11-27 10:22:08','PT',NULL,NULL),
	(1087,NULL,'Ellen','Cruz','041-788-8423','6114 The Avenue',NULL,'Carrick-on-Suir','45693','2020-11-27 10:22:08','2020-11-27 10:22:08','PT',NULL,NULL),
	(1088,NULL,'Tyrone','Mccoy','(363)-024-9496','1968 Fairview St',NULL,'Elk Grove','17455','2020-11-27 10:22:09','2020-11-27 10:22:09','PT',NULL,NULL),
	(1089,NULL,'Xerxes','Cavalcanti','(46) 1134-9646','4979 Avenida Vinícius de Morais',NULL,'São José de Ribamar','23994','2020-11-27 10:22:09','2020-11-27 10:22:09','PT',NULL,NULL),
	(1090,NULL,'نيما','صدر','063-39983265','5590 یادگار امام',NULL,'تهران','47850','2020-11-27 10:22:10','2020-11-27 10:22:10','PT',NULL,NULL),
	(1091,NULL,'Héloïse','Noel','02-20-52-30-23','4909 Rue de L\'Abbé-Groult',NULL,'Nantes','93410','2020-11-27 10:22:10','2020-11-27 10:22:10','PT',NULL,NULL),
	(1092,NULL,'Malou','Mortensen','88637733','9335 Næstvedvej',NULL,'Oure','19982','2020-11-27 10:22:11','2020-11-27 10:22:11','PT',NULL,NULL),
	(1093,NULL,'Silas','Madsen','28771811','1438 Strandbakken',NULL,'Viby J.','79559','2020-11-27 10:22:11','2020-11-27 10:22:11','PT',NULL,NULL),
	(1094,NULL,'Quirina','Galama','(849)-770-2284','4097 Koekebackerstraat',NULL,'Arkel','51493','2020-11-27 10:22:12','2020-11-27 10:22:12','PT',NULL,NULL),
	(1095,NULL,'Nils','Rey','075 234 45 56','4550 Rue Bony',NULL,'Carouge (Ge)','5922','2020-11-27 10:22:13','2020-11-27 10:22:13','PT',NULL,NULL),
	(1096,NULL,'Seleni','Freitas','(43) 2927-9674','1712 Rua Alagoas ',NULL,'Votorantim','17054','2020-11-27 10:22:14','2020-11-27 10:22:14','PT',NULL,NULL),
	(1097,NULL,'Asuncion','Caballero','982-164-290','2759 Calle de Arganzuela',NULL,'Ciudad Real','65880','2020-11-27 10:22:14','2020-11-27 10:22:14','PT',NULL,NULL),
	(1098,NULL,'Owen','Thompson','762-206-4164','6016 Richmond Ave',NULL,'Wellington','D2X 6D0','2020-11-27 10:22:14','2020-11-27 10:22:14','PT',NULL,NULL),
	(1099,NULL,'Macit','Kocabıyık','(453)-243-2506','310 Doktorlar Cd',NULL,'Aksaray','47233','2020-11-27 10:22:15','2020-11-27 10:22:15','PT',NULL,NULL),
	(1100,NULL,'Nalan','Pekkan','(460)-953-7858','5481 Kushimoto Sk',NULL,'Kars','62087','2020-11-27 10:22:15','2020-11-27 10:22:15','PT',NULL,NULL),
	(1101,NULL,'Nicole','Ferguson','061-624-7385','794 Grove Road',NULL,'Ballinasloe','58720','2020-11-27 10:22:16','2020-11-27 10:22:16','PT',NULL,NULL),
	(1102,NULL,'Nasser','Pires','(82) 5727-0045','3280 Rua Dezessete ',NULL,'Colatina','96365','2020-11-27 10:22:16','2020-11-27 10:22:16','PT',NULL,NULL),
	(1103,NULL,'Christoffer','Rasmussen','85740216','490 Solbærvej',NULL,'Gjerlev','28953','2020-11-27 10:22:16','2020-11-27 10:22:16','PT',NULL,NULL),
	(1104,NULL,'Aleixo','Pereira','(68) 1907-9611','110 Rua da Paz ',NULL,'Rio Grande','22436','2020-11-27 10:22:17','2020-11-27 10:22:17','PT',NULL,NULL),
	(1105,NULL,'Rachel','Clement','01-74-45-65-18','5563 Avenue des Ternes',NULL,'Rueil-Malmaison','73246','2020-11-27 10:22:17','2020-11-27 10:22:17','PT',NULL,NULL),
	(1106,NULL,'Macit','Erbulak','(278)-149-7067','1355 Tunalı Hilmi Cd',NULL,'İzmir','24666','2020-11-27 10:22:18','2020-11-27 10:22:18','PT',NULL,NULL),
	(1117,NULL,'Patty','Daanen','(991)-153-3246','2001 Driesprongweg',NULL,'Laarbeek','32398','2020-11-27 10:22:21','2020-11-27 10:22:21','PT',NULL,NULL),
	(1118,NULL,'Eliah','Alvheim','84201314','9378 Bjørndalsjordet',NULL,'Trondheim','4462','2020-11-27 10:22:21','2020-11-27 10:22:21','PT',NULL,NULL),
	(1119,NULL,'Judy','Webb','016977 78749','2901 Highfield Road',NULL,'Bath','T0P 0NF','2020-11-27 10:22:22','2020-11-27 10:22:22','PT',NULL,NULL),
	(1120,NULL,'Kenan','Ekşioğlu','(692)-620-8263','7508 Atatürk Sk',NULL,'Kayseri','38836','2020-11-27 10:22:22','2020-11-27 10:22:22','PT',NULL,NULL),
	(1121,NULL,'Anisa','Presthus','65965915','2937 Bergkrystallen',NULL,'Åsgrenda','9148','2020-11-27 10:22:32','2020-11-27 10:22:32','PT',NULL,NULL),
	(1122,NULL,'Alice','Rey','01-28-50-36-81','6634 Place du 8 Novembre 1942',NULL,'Asnières-sur-Seine','17177','2020-11-27 10:22:32','2020-11-27 10:22:32','PT',NULL,NULL),
	(1123,NULL,'Maddison','Green','(923)-761-0390','3470 Dyers Road',NULL,'New Plymouth','28026','2020-11-27 10:22:33','2020-11-27 10:22:33','PT',NULL,NULL),
	(1124,NULL,'Oskar','Kölsch','0574-4399521','3667 Römerstraße',NULL,'Wermelskirchen','61129','2020-11-27 10:22:33','2020-11-27 10:22:33','PT',NULL,NULL),
	(1125,NULL,'Cameron','Robinson','(983)-863-2615','6935 Railway Road',NULL,'New Plymouth','66744','2020-11-27 10:22:35','2020-11-27 10:22:35','PT',NULL,NULL),
	(1126,NULL,'Dylan','Beck','(754)-107-4581','2008 E Little York Rd',NULL,'Salt Lake City','91011','2020-11-27 10:22:35','2020-11-27 10:22:35','PT',NULL,NULL),
	(1127,NULL,'مانی','محمدخان','038-52318250','6960 آیت الله طالقانی',NULL,'خرم‌آباد','62203','2020-11-27 10:22:36','2020-11-27 10:22:36','PT',NULL,NULL),
	(1128,NULL,'Grace','Dunn','0131 002 1846','5038 Grove Road',NULL,'St Albans','XA6U 6UF','2020-11-27 10:22:36','2020-11-27 10:22:36','PT',NULL,NULL),
	(1129,NULL,'Hansjürgen','Kersting','0325-1181117','7184 Schützenstraße',NULL,'Stavenhagen','99402','2020-11-27 10:22:37','2020-11-27 10:22:37','PT',NULL,NULL),
	(1130,NULL,'Adriana','Soler','987-470-519','7208 Calle del Prado',NULL,'Santa Cruz de Tenerife','91531','2020-11-27 10:22:37','2020-11-27 10:22:37','PT',NULL,NULL),
	(1131,NULL,'Gui','Sales','(34) 0332-0169','4395 Rua João Xxiii',NULL,'Santarém','11221','2020-11-27 10:22:39','2020-11-27 10:22:39','PT',NULL,NULL),
	(1132,NULL,'Arthur','Moore','(244)-148-3096','2722 Target Road',NULL,'Invercargill','15263','2020-11-27 10:22:40','2020-11-27 10:22:40','PT',NULL,NULL),
	(1133,NULL,'Ian','Hudson','01-3921-1756','2988 Hamilton Ave',NULL,'Australian Capital Territory','9501','2020-11-27 10:22:40','2020-11-27 10:22:40','PT',NULL,NULL),
	(1134,NULL,'Salvador','Garrido','946-179-016','9000 Avenida de América',NULL,'Santa Cruz de Tenerife','49225','2020-11-27 10:22:40','2020-11-27 10:22:40','PT',NULL,NULL),
	(1135,NULL,'Camille','Liu','970-204-8730','7614 Concession Road 23',NULL,'Field','H9E 2R5','2020-11-27 10:22:42','2020-11-27 10:22:42','PT',NULL,NULL),
	(1136,NULL,'Gerry','Duncan','015394 81798','3852 Church Lane',NULL,'Bath','H1 3HY','2020-11-27 10:22:43','2020-11-27 10:22:43','PT',NULL,NULL),
	(1137,NULL,'Victoria','Sanchez','02-93-98-36-87','8620 Rue des Écoles',NULL,'Asnières-sur-Seine','14357','2020-11-27 10:22:44','2020-11-27 10:22:44','PT',NULL,NULL),
	(1138,NULL,'Herbert','Stanley','(564)-392-3580','5496 Fairview St',NULL,'Baton Rouge','92749','2020-11-27 10:22:44','2020-11-27 10:22:44','PT',NULL,NULL),
	(1139,NULL,'Heinrich','Vincent','075 080 40 08','5512 Rue Abel-Gance',NULL,'Laax','8743','2020-11-27 10:22:44','2020-11-27 10:22:44','PT',NULL,NULL),
	(1140,NULL,'Noël','Roy','076 641 72 86','667 Place du 8 Février 1962',NULL,'Oberdiessbach','5962','2020-11-27 10:22:45','2020-11-27 10:22:45','PT',NULL,NULL),
	(1141,NULL,'Alex','Newman','041-112-7803','6958 Park Road',NULL,'Bandon','48317','2020-11-27 10:22:45','2020-11-27 10:22:45','PT',NULL,NULL),
	(1142,NULL,'Bill','Graves','0161 733 8244','3686 Church Lane',NULL,'Stevenage','RS1 9LF','2020-11-27 10:22:46','2020-11-27 10:22:46','PT',NULL,NULL),
	(1143,NULL,'Nina','Sannes','80841079','1519 Elias Blix\' gate',NULL,'Løiten Brænderi','4790','2020-11-27 10:22:46','2020-11-27 10:22:46','PT',NULL,NULL),
	(1144,NULL,'Ryder','Roberts','(841)-226-5229','8062 Devon Street',NULL,'Taupo','65559','2020-11-27 10:22:46','2020-11-27 10:22:46','PT',NULL,NULL),
	(1145,NULL,'Cory','Thomas','08-7042-4816','9506 Nowlin Rd',NULL,'Bowral','9520','2020-11-27 10:22:47','2020-11-27 10:22:47','PT',NULL,NULL),
	(1146,NULL,'Julian','Fernandez','990-435-821','9897 Calle de Alcalá',NULL,'Madrid','16258','2020-11-27 10:22:47','2020-11-27 10:22:47','PT',NULL,NULL),
	(1147,NULL,'Cory','Lowe','017684 33337','3003 Kings Road',NULL,'Armagh','LM8 6TN','2020-11-27 10:22:47','2020-11-27 10:22:47','PT',NULL,NULL),
	(1148,NULL,'Ariane','Chow','045-970-4904','974 Balmoral St',NULL,'Cornwall','P1H 8F2','2020-11-27 10:22:48','2020-11-27 10:22:48','PT',NULL,NULL),
	(1149,NULL,'Felix','Blix','86272571','8058 Hospitsveien',NULL,'Leknes','6339','2020-11-27 10:22:48','2020-11-27 10:22:48','PT',NULL,NULL),
	(1150,NULL,'Connie','Dean','(266)-638-0474','7950 Spring Hill Rd',NULL,'Forney','61043','2020-11-27 10:22:49','2020-11-27 10:22:49','PT',NULL,NULL),
	(1151,NULL,'Noelle','Sønstebø','79340390','9021 Falbes gate',NULL,'Vinstra','1893','2020-11-27 10:22:50','2020-11-27 10:22:50','PT',NULL,NULL),
	(1152,NULL,'Gökhan','Akyüz','(610)-791-7389','1712 Tunalı Hilmi Cd',NULL,'Iğdır','29838','2020-11-27 10:22:51','2020-11-27 10:22:51','PT',NULL,NULL),
	(1153,NULL,'Lorenzo','Louis','05-75-39-50-51','4444 Rue de L\'Abbé-De-L\'Épée',NULL,'Limoges','97183','2020-11-27 10:22:51','2020-11-27 10:22:51','PT',NULL,NULL),
	(1154,NULL,'Johan','Pedersen','36591032','3551 Fredensvej',NULL,'Aarhus','88481','2020-11-27 10:22:52','2020-11-27 10:22:52','PT',NULL,NULL),
	(1155,NULL,'Eileen','Berisha','60828424','9395 Vestlisvingen',NULL,'Sand','2611','2020-11-27 10:22:52','2020-11-27 10:22:52','PT',NULL,NULL),
	(1156,NULL,'Sienna','Lee','(745)-298-3147','4445 Linwood Avenue',NULL,'Tauranga','52408','2020-11-27 10:22:52','2020-11-27 10:22:52','PT',NULL,NULL),
	(1157,NULL,'Ruby','Li','(906)-092-1135','3196 Roscommon Road',NULL,'Upper Hutt','36845','2020-11-27 10:22:53','2020-11-27 10:22:53','PT',NULL,NULL),
	(1158,NULL,'Ayten','Draijer','(803)-673-5725','4027 Caumerboord',NULL,'Nederhorst den Berg','26476','2020-11-27 10:22:53','2020-11-27 10:22:53','PT',NULL,NULL),
	(1159,NULL,'Mina','Severin','0789-0300072','2837 Fliederweg',NULL,'Horb am Neckar','52332','2020-11-27 10:22:54','2020-11-27 10:22:54','PT',NULL,NULL),
	(1160,NULL,'Greg','Matthews','(581)-922-5076','8895 Harrison Ct',NULL,'Laredo','47632','2020-11-27 10:22:54','2020-11-27 10:22:54','PT',NULL,NULL),
	(1161,NULL,'Luukas','Heino','03-971-394','1110 Korkeavuorenkatu',NULL,'Akaa','60801','2020-11-27 10:22:55','2020-11-27 10:22:55','PT',NULL,NULL),
	(1162,NULL,'Franck','Lucas','078 435 52 68','5341 Quai Chauveau',NULL,'Meikirch','4005','2020-11-27 10:22:55','2020-11-27 10:22:55','PT',NULL,NULL),
	(1163,NULL,'Henrik','Siefert','0493-2219587','9989 Friedhofstraße',NULL,'Lebach','77439','2020-11-27 10:22:56','2020-11-27 10:22:56','PT',NULL,NULL),
	(1164,NULL,'Johannes','Legrand','078 776 17 67','1808 Quai Charles-De-Gaulle',NULL,'Quarten','4851','2020-11-27 10:22:57','2020-11-27 10:22:57','PT',NULL,NULL),
	(1165,NULL,'Jose','Ferrer','934-963-161','7043 Avenida de Burgos',NULL,'Parla','93756','2020-11-27 10:22:58','2020-11-27 10:22:58','PT',NULL,NULL),
	(1166,NULL,'Élodie','Sanchez','075 945 82 76','111 Rue du Stade',NULL,'Domat/Ems','8576','2020-11-27 10:22:58','2020-11-27 10:22:58','PT',NULL,NULL),
	(1167,NULL,'Farley','Dek','(899)-616-1666','7499 Kokkelsingel',NULL,'Lisse','17005','2020-11-27 10:22:59','2020-11-27 10:22:59','PT',NULL,NULL),
	(1168,NULL,'Isabella','Jean-Baptiste','553-405-7428','2753 Victoria Ave',NULL,'St. George','P5K 6A9','2020-11-27 10:22:59','2020-11-27 10:22:59','PT',NULL,NULL),
	(1169,NULL,'Rita','Bowman','(287)-537-1725','6306 W Gray St',NULL,'Fort Lauderdale','70879','2020-11-27 10:22:59','2020-11-27 10:22:59','PT',NULL,NULL),
	(1170,NULL,'David','Roussel','02-21-92-44-30','4625 Rue Docteur-Bonhomme',NULL,'Aix-En-Provence','57984','2020-11-27 10:23:00','2020-11-27 10:23:00','PT',NULL,NULL),
	(1171,NULL,'Bob','Campbell','071-472-7547','4930 The Grove',NULL,'Malahide','85646','2020-11-27 10:23:00','2020-11-27 10:23:00','PT',NULL,NULL),
	(1172,NULL,'Ray','Little','015394 64073','102 London Road',NULL,'Stoke-on-Trent','NQ5F 6ER','2020-11-27 10:23:00','2020-11-27 10:23:00','PT',NULL,NULL),
	(1173,NULL,'Leander','Peitz','0725-8310720','7461 Talstraße',NULL,'Hofheim am Taunus','23409','2020-11-27 10:23:01','2020-11-27 10:23:01','PT',NULL,NULL),
	(1174,NULL,'Mathieu','Gautier','04-25-96-93-32','5980 Rue des Jardins',NULL,'Brest','44850','2020-11-27 10:23:01','2020-11-27 10:23:01','PT',NULL,NULL),
	(1175,NULL,'Célina','Van de Merwe','(900)-353-3831','7359 Abdis Belastraat',NULL,'Obdam','59949','2020-11-27 10:23:02','2020-11-27 10:23:02','PT',NULL,NULL),
	(1176,NULL,'Marvin','Hamilton','016977 5738','8909 Grove Road',NULL,'Aberdeen','D83 8DJ','2020-11-27 10:23:02','2020-11-27 10:23:02','PT',NULL,NULL),
	(1177,NULL,'Lindamar','Lima','(29) 0145-4791','1193 Rua Dezessete ',NULL,'Caxias do Sul','15966','2020-11-27 10:23:02','2020-11-27 10:23:02','PT',NULL,NULL),
	(1178,NULL,'Mohammed','Petit','078 186 61 31','5649 Rue Paul Bert',NULL,'Kappel am Albis','7254','2020-11-27 10:23:03','2020-11-27 10:23:03','PT',NULL,NULL),
	(1179,NULL,'Thibaut','Leclerc','01-39-03-61-53','5492 Rue Abel-Ferry',NULL,'Asnières-sur-Seine','21825','2020-11-27 10:23:03','2020-11-27 10:23:03','PT',NULL,NULL),
	(1180,NULL,'الینا','حسینی','056-61775298','4317 آذربایجان',NULL,'بندرعباس','11166','2020-11-27 10:23:03','2020-11-27 10:23:03','PT',NULL,NULL),
	(1181,NULL,'Afet','Erçetin','(773)-046-2238','8450 Abanoz Sk',NULL,'Muğla','35783','2020-11-27 10:23:04','2020-11-27 10:23:04','PT',NULL,NULL),
	(1182,NULL,'Carolina','Mauer','0150-4470344','6575 Kapellenweg',NULL,'Stutensee','74112','2020-11-27 10:23:04','2020-11-27 10:23:04','PT',NULL,NULL),
	(1183,NULL,'Brooke','Johnson','061-767-4070','6910 Denny Street',NULL,'Midleton','29475','2020-11-27 10:23:04','2020-11-27 10:23:04','PT',NULL,NULL),
	(1184,NULL,'Jesus','Iglesias','944-959-404','2612 Avenida de Castilla',NULL,'Alcobendas','16023','2020-11-27 10:23:05','2020-11-27 10:23:05','PT',NULL,NULL),
	(1185,NULL,'Falk','Nordskog','75370622','4172 Solåsveien',NULL,'Nesjestranda','2603','2020-11-27 10:23:05','2020-11-27 10:23:05','PT',NULL,NULL),
	(1186,NULL,'Christian','Sørensen','01291533','3144 Skovbrynet',NULL,'Støvring ','14768','2020-11-27 10:23:05','2020-11-27 10:23:05','PT',NULL,NULL),
	(1187,NULL,'Sara','Owens','011-167-2873','7166 North Road',NULL,'Dunboyne','54708','2020-11-27 10:23:06','2020-11-27 10:23:06','PT',NULL,NULL),
	(1188,NULL,'Kevin','Fleury','076 340 33 84','824 Avenue du Fort-Caire',NULL,'Hunzenschwil','5716','2020-11-27 10:23:06','2020-11-27 10:23:06','PT',NULL,NULL),
	(1189,NULL,'ایلیا','نكو نظر','033-83696351','2592 مجاهدین اسلام',NULL,'یزد','48760','2020-11-27 10:23:07','2020-11-27 10:23:07','PT',NULL,NULL),
	(1190,NULL,'Aaron','Davies','(084)-681-8557','435 Customs Street',NULL,'Whangarei','38572','2020-11-27 10:23:07','2020-11-27 10:23:07','PT',NULL,NULL),
	(1191,NULL,'Emil','Kinnunen','03-896-846','1624 Tehtaankatu',NULL,'Haapajärvi','14793','2020-11-27 10:23:07','2020-11-27 10:23:07','PT',NULL,NULL),
	(1192,NULL,'Özkan','Barbarosoğlu','(271)-773-0948','8447 Maçka Cd',NULL,'Afyonkarahisar','81434','2020-11-27 10:23:08','2020-11-27 10:23:08','PT',NULL,NULL),
	(1193,NULL,'Diane','Warren','01-7277-5090','7393 Spring St',NULL,'Mildura','9974','2020-11-27 10:23:08','2020-11-27 10:23:08','PT',NULL,NULL),
	(1194,NULL,'Thomas','Roy','679-248-0723','358 Pierre Ave',NULL,'Cadillac','Z4W 1N6','2020-11-27 10:23:08','2020-11-27 10:23:08','PT',NULL,NULL),
	(1195,NULL,'Marko','Leroy','078 026 55 34','4017 Place de L\'Abbé-Georges-Hénocque',NULL,'Affeltrangen','1039','2020-11-27 10:23:09','2020-11-27 10:23:09','PT',NULL,NULL),
	(1196,NULL,'Benjamin','Møller','95751722','6236 Skagensvej',NULL,'V.Skerninge','47407','2020-11-27 10:23:09','2020-11-27 10:23:09','PT',NULL,NULL),
	(1197,NULL,'Zeloí','Costa','(00) 8141-7350','2538 Rua João Xxiii',NULL,'Franco da Rocha','76270','2020-11-27 10:23:09','2020-11-27 10:23:09','PT',NULL,NULL),
	(1198,NULL,'Connor','Young','04-8468-9543','5771 E Pecan St',NULL,'Coffs Harbour','4518','2020-11-27 10:23:09','2020-11-27 10:23:09','PT',NULL,NULL),
	(1199,NULL,'Marsha','Cole','(101)-949-0178','5948 Nowlin Rd',NULL,'Arvada','74962','2020-11-27 10:23:10','2020-11-27 10:23:10','PT',NULL,NULL),
	(1200,NULL,'Alicia','Rojas','923-719-375','5510 Calle del Arenal',NULL,'Bilbao','10112','2020-11-27 10:23:11','2020-11-27 10:23:11','PT',NULL,NULL),
	(1201,NULL,'Cherise','Huurman','(194)-278-1122','8634 Iseweg',NULL,'Schiphol','52814','2020-11-27 10:23:13','2020-11-27 10:23:13','PT',NULL,NULL),
	(1202,NULL,'Mar','Santiago','971-240-243','1574 Calle de Ángel García',NULL,'Oviedo','84950','2020-11-27 10:23:13','2020-11-27 10:23:13','PT',NULL,NULL),
	(1203,NULL,'Gonca','Adal','(735)-625-7406','2230 Doktorlar Cd',NULL,'Şanlıurfa','75456','2020-11-27 10:23:14','2020-11-27 10:23:14','PT',NULL,NULL),
	(1204,NULL,'Iida','Wuollet','06-010-134','3283 Mechelininkatu',NULL,'Uurainen','73713','2020-11-27 10:23:15','2020-11-27 10:23:15','PT',NULL,NULL),
	(1205,NULL,'Russell','Gardner','016973 05021','8130 Church Street',NULL,'Wells','BF50 0AG','2020-11-27 10:23:16','2020-11-27 10:23:16','PT',NULL,NULL),
	(1206,NULL,'Concetta','Lopez','075 547 54 80','3342 Place du 8 Novembre 1942',NULL,'Buch (Sh)','1894','2020-11-27 10:23:16','2020-11-27 10:23:16','PT',NULL,NULL),
	(1207,NULL,'شایان','موسوی','030-71900497','5909 یادگار امام',NULL,'ورامین','38602','2020-11-27 10:23:16','2020-11-27 10:23:16','PT',NULL,NULL),
	(1208,NULL,'Hanna','Fuller','041-677-4690','480 The Crescent',NULL,'Buncrana','31052','2020-11-27 10:23:17','2020-11-27 10:23:17','PT',NULL,NULL),
	(1209,NULL,'Nixon','Patel','(566)-453-9705','2184 Bank Street',NULL,'Taupo','27261','2020-11-27 10:23:17','2020-11-27 10:23:17','PT',NULL,NULL),
	(1210,NULL,'Davut','Tuğluk','(506)-793-5840','4868 Vatan Cd',NULL,'Çankırı','21730','2020-11-27 10:23:17','2020-11-27 10:23:17','PT',NULL,NULL),
	(1211,NULL,'Vicki','Perkins','015395 19719','2671 Church Road',NULL,'Lichfield','YM4 2DA','2020-11-27 10:23:18','2020-11-27 10:23:18','PT',NULL,NULL),
	(1212,NULL,'Malcolm','Plas','(641)-899-2074','1038 Krommeweydt',NULL,'Wolphaartsdijk','64075','2020-11-27 10:23:18','2020-11-27 10:23:18','PT',NULL,NULL),
	(1213,NULL,'Arttu','Savela','04-871-274','5231 Hatanpään Valtatie',NULL,'Lapinjärvi','55829','2020-11-27 10:23:18','2020-11-27 10:23:18','PT',NULL,NULL),
	(1214,NULL,'Egil','da Mata','(16) 5768-0619','7401 Rua Bela Vista ',NULL,'Igarassu','40136','2020-11-27 10:23:19','2020-11-27 10:23:19','PT',NULL,NULL),
	(1215,NULL,'Norah','Dupuis','02-98-70-60-89','8428 Rue Docteur-Bonhomme',NULL,'Rueil-Malmaison','90817','2020-11-27 10:23:19','2020-11-27 10:23:19','PT',NULL,NULL),
	(1216,NULL,'Aitor','Alvarez','983-538-726','434 Ronda de Toledo',NULL,'Zaragoza','57572','2020-11-27 10:23:19','2020-11-27 10:23:19','PT',NULL,NULL),
	(1217,NULL,'Vincent','Foster','09-3876-1983','9793 W Dallas St',NULL,'Kalgoorlie','251','2020-11-27 10:23:20','2020-11-27 10:23:20','PT',NULL,NULL),
	(1218,NULL,'Kim','Wells','(225)-159-7334','1193 Wheeler Ridge Dr',NULL,'North Las Vegas','26830','2020-11-27 10:23:20','2020-11-27 10:23:20','PT',NULL,NULL),
	(1219,NULL,'Aldalgisa','Santos','(22) 6964-8948','9146 Rua Maranhão ',NULL,'Crato','48170','2020-11-27 10:23:29','2020-11-27 10:23:29','PT',NULL,NULL),
	(1220,NULL,'Hannah','Simmons','(934)-219-7557','7414 Nowlin Rd',NULL,'Waterbury','44004','2020-11-27 10:23:29','2020-11-27 10:23:29','PT',NULL,NULL),
	(1221,NULL,'Aubin','Arnaud','01-72-05-74-09','9351 Quai Chauveau',NULL,'Caen','98176','2020-11-27 10:23:30','2020-11-27 10:23:30','PT',NULL,NULL),
	(1222,NULL,'Alexandre','Young','395-834-9337','7032 Concession Road 23',NULL,'Aylmer','R1X 7O9','2020-11-27 10:23:31','2020-11-27 10:23:31','PT',NULL,NULL),
	(1223,NULL,'Tracy','Elliott','07-9616-6954','1046 Wheeler Ridge Dr',NULL,'Mackay','4912','2020-11-27 10:23:31','2020-11-27 10:23:31','PT',NULL,NULL),
	(1224,NULL,'Elio','Aubert','04-80-48-32-16','5046 Rue du Château',NULL,'Aulnay-sous-Bois','12373','2020-11-27 10:23:32','2020-11-27 10:23:32','PT',NULL,NULL),
	(1225,NULL,'Heinz-Wilhelm','Wall','0839-2771149','6228 Königsberger Straße',NULL,'Hilpoltstein','18326','2020-11-27 10:23:32','2020-11-27 10:23:32','PT',NULL,NULL),
	(1226,NULL,'Edward','Davies','(791)-515-0141','6455 Ahuriri Bypass',NULL,'Lower Hutt','72031','2020-11-27 10:23:32','2020-11-27 10:23:32','PT',NULL,NULL),
	(1227,NULL,'Cristian','Serrano','927-501-916','8064 Calle de Arturo Soria',NULL,'Guadalajara','41115','2020-11-27 10:23:34','2020-11-27 10:23:34','PT',NULL,NULL),
	(1228,NULL,'Nanna','Olsen','22780977','6514 Strandstien',NULL,'Klitmøller','26989','2020-11-27 10:23:34','2020-11-27 10:23:34','PT',NULL,NULL),
	(1229,NULL,'Kay','Stephens','(659)-094-7327','8433 W Sherman Dr',NULL,'Lakewood','41305','2020-11-27 10:23:34','2020-11-27 10:23:34','PT',NULL,NULL),
	(1230,NULL,'سارا','سلطانی نژاد','063-88474987','3056 میدان شهید نامجو',NULL,'تهران','84387','2020-11-27 10:23:35','2020-11-27 10:23:35','PT',NULL,NULL),
	(1231,NULL,'Onur','Solmaz','(210)-890-4677','9977 Istiklal Cd',NULL,'Bursa','59966','2020-11-27 10:23:35','2020-11-27 10:23:35','PT',NULL,NULL),
	(1232,NULL,'Elsa','Heikkila','09-108-403','3454 Pyynikintie',NULL,'Enontekiö','43892','2020-11-27 10:23:35','2020-11-27 10:23:35','PT',NULL,NULL),
	(1233,NULL,'Andrea','Mitchell','(509)-913-7528','8013 Edwards Rd',NULL,'Woodbridge','70274','2020-11-27 10:23:36','2020-11-27 10:23:36','PT',NULL,NULL),
	(1234,NULL,'Marianne','Chow','831-868-3671','7337 Elgin St',NULL,'Radisson','T5U 7O3','2020-11-27 10:23:36','2020-11-27 10:23:36','PT',NULL,NULL),
	(1235,NULL,'Cory','Evans','(169)-830-7062','1142 Woodland St',NULL,'Memphis','29935','2020-11-27 10:23:36','2020-11-27 10:23:36','PT',NULL,NULL),
	(1236,NULL,'Kurt','Cole','041-688-9339','487 Patrick Street',NULL,'Tralee','86824','2020-11-27 10:23:37','2020-11-27 10:23:37','PT',NULL,NULL),
	(1237,NULL,'Suzanna','Coleman','01743 76479','150 Station Road',NULL,'Inverness','IO4 9DN','2020-11-27 10:23:37','2020-11-27 10:23:37','PT',NULL,NULL),
	(1238,NULL,'Kenan','Akyürek','(776)-306-1531','7354 Maçka Cd',NULL,'Giresun','92010','2020-11-27 10:23:38','2020-11-27 10:23:38','PT',NULL,NULL),
	(1239,NULL,'Paula','Suarez','993-539-957','9699 Calle de Pedro Bosch',NULL,'La Coruña','82993','2020-11-27 10:23:38','2020-11-27 10:23:38','PT',NULL,NULL),
	(1240,NULL,'Isa','Monteiro','(43) 8510-2546','8327 Rua São Paulo ',NULL,'Sabará','65281','2020-11-27 10:23:38','2020-11-27 10:23:38','PT',NULL,NULL),
	(1241,NULL,'Annamaria','Pasveer','(818)-185-8257','2524 Circusstraat',NULL,'Maarssenbroek','83825','2020-11-27 10:23:39','2020-11-27 10:23:39','PT',NULL,NULL),
	(1242,NULL,'Yvan','Fernandez','078 448 22 47','9783 Rue de la Baleine',NULL,'Stocken-Höfen','4578','2020-11-27 10:23:39','2020-11-27 10:23:39','PT',NULL,NULL),
	(1243,NULL,'Emmi','Maijala','09-392-023','7396 Bulevardi',NULL,'Viitasaari','62182','2020-11-27 10:23:40','2020-11-27 10:23:40','PT',NULL,NULL),
	(1244,NULL,'Anton','Annala','02-290-523','6261 Mannerheimintie',NULL,'Pielavesi','37754','2020-11-27 10:23:42','2020-11-27 10:23:42','PT',NULL,NULL),
	(1245,NULL,'Robert','Gonzalez','09-5032-3018','8097 Pockrus Page Rd',NULL,'Sydney','6359','2020-11-27 10:23:44','2020-11-27 10:23:44','PT',NULL,NULL),
	(1246,NULL,'Matthew','Wilson','(772)-299-7986','272 The Square',NULL,'Rotorua','82698','2020-11-27 10:23:45','2020-11-27 10:23:45','PT',NULL,NULL),
	(1247,NULL,'Adem','Koçoğlu','(438)-767-1711','8768 Necatibey Cd',NULL,'Hatay','53007','2020-11-27 10:23:46','2020-11-27 10:23:46','PT',NULL,NULL),
	(1248,NULL,'Justin','Legrand','03-82-79-91-34','6217 Rue de L\'Abbé-Patureau',NULL,'Nantes','47861','2020-11-27 10:23:46','2020-11-27 10:23:46','PT',NULL,NULL),
	(1249,NULL,'Dylan','Gagné','378-696-8889','5946 Pierre Ave',NULL,'Armstrong','V6P 8F2','2020-11-27 10:23:47','2020-11-27 10:23:47','PT',NULL,NULL),
	(1250,NULL,'Noham','Gautier','02-39-50-56-61','1735 Rue Bataille',NULL,'Le Havre','94703','2020-11-27 10:23:48','2020-11-27 10:23:48','PT',NULL,NULL),
	(1251,NULL,'Frederik','Hansen','40730770','2836 Bygmarken',NULL,'Juelsminde','33258','2020-11-27 10:23:51','2020-11-27 10:23:51','PT',NULL,NULL),
	(1252,NULL,'Nicolay','Fenne','77819626','6925 Oberst Angells vei',NULL,'Småland','0705','2020-11-27 10:23:52','2020-11-27 10:23:52','PT',NULL,NULL),
	(1253,NULL,'Elliot','Gagné','640-945-1727','6960 St. Catherine St',NULL,'Glenwood','O4K 4Z0','2020-11-27 10:23:52','2020-11-27 10:23:52','PT',NULL,NULL),
	(1254,NULL,'Sergio','Sanchez','947-622-817','8882 Avenida de América',NULL,'Burgos','56399','2020-11-27 10:23:53','2020-11-27 10:23:53','PT',NULL,NULL),
	(1255,NULL,'Sedef','Elçiboğa','(057)-705-8286','5901 Maçka Cd',NULL,'Erzurum','76095','2020-11-27 10:23:53','2020-11-27 10:23:53','PT',NULL,NULL),
	(1256,NULL,'William','Byrd','01210 77057','3514 Stanley Road',NULL,'Truro','D5 4RG','2020-11-27 10:23:57','2020-11-27 10:23:57','PT',NULL,NULL),
	(1257,NULL,'Jeanette','Jones','(648)-958-5461','7754 White Oak Dr',NULL,'Coral Springs','32990','2020-11-27 10:23:58','2020-11-27 10:23:58','PT',NULL,NULL),
	(1258,NULL,'Laurie','Thompson','375-757-8316','6670 Victoria Ave',NULL,'Delisle','R8Y 1C0','2020-11-27 10:23:58','2020-11-27 10:23:58','PT',NULL,NULL),
	(1259,NULL,'Maxine','Jordan','03-8284-2240','3665 Hamilton Ave',NULL,'Warragul','1079','2020-11-27 10:23:59','2020-11-27 10:23:59','PT',NULL,NULL),
	(1260,NULL,'Seth','Fitzsimmons','051-987-6577','8280 Rochestown Road',NULL,'Kells','32066','2020-11-27 10:23:59','2020-11-27 10:23:59','PT',NULL,NULL),
	(1261,NULL,'Igor','Rode','0485-5772199','5558 Blumenstraße',NULL,'Mönchengladbach','76987','2020-11-27 10:24:00','2020-11-27 10:24:00','PT',NULL,NULL),
	(1262,NULL,'Filémon','da Rosa','(51) 3861-8086','8286 Travessa dos Martírios',NULL,'Três Lagoas','41606','2020-11-27 10:24:00','2020-11-27 10:24:00','PT',NULL,NULL),
	(1263,NULL,'Josephine','Schiebel','0470-8813267','3225 Eichenweg',NULL,'Großbreitenbach','76195','2020-11-27 10:24:01','2020-11-27 10:24:01','PT',NULL,NULL),
	(1264,NULL,'Marcus','Riley','016973 12388','6045 North Street',NULL,'Inverness','O84 2XS','2020-11-27 10:24:03','2020-11-27 10:24:03','PT',NULL,NULL),
	(1265,NULL,'Chloe','Watkins','015396 09201','8248 Manor Road',NULL,'Salford','WE3L 2AJ','2020-11-27 10:24:03','2020-11-27 10:24:03','PT',NULL,NULL),
	(1266,NULL,'Eemeli','Kivi','04-047-795','2227 Hämeenkatu',NULL,'Karkkila','72707','2020-11-27 10:24:04','2020-11-27 10:24:04','PT',NULL,NULL),
	(1267,NULL,'Felix','Jones','(194)-304-3905','5378 Te Irirangi Drive',NULL,'Palmerston North','60505','2020-11-27 10:24:04','2020-11-27 10:24:04','PT',NULL,NULL),
	(1268,NULL,'Ella','Hanninen','08-644-779','8545 Verkatehtaankatu',NULL,'Joensuu','18822','2020-11-27 10:24:05','2020-11-27 10:24:05','PT',NULL,NULL),
	(1269,NULL,'Peetu','Laurila','07-494-150','7344 Bulevardi',NULL,'Kajaani','70010','2020-11-27 10:24:06','2020-11-27 10:24:06','PT',NULL,NULL),
	(1270,NULL,'Christian','Kristensen','20659055','6913 Ellevej',NULL,'Gjern','51344','2020-11-27 10:24:07','2020-11-27 10:24:07','PT',NULL,NULL),
	(1271,NULL,'Nathan','Harvey','07-0777-7938','3174 W Dallas St',NULL,'Coffs Harbour','3131','2020-11-27 10:24:08','2020-11-27 10:24:08','PT',NULL,NULL),
	(1272,NULL,'Cátia','Pereira','(80) 8270-7038','6858 Rua Vinte E Quatro de Outubro',NULL,'Corumbá','75946','2020-11-27 10:24:08','2020-11-27 10:24:08','PT',NULL,NULL),
	(1273,NULL,'Tracey','Hill','016974 26531','4124 Mill Lane',NULL,'Lincoln','JI4Y 9FA','2020-11-27 10:24:08','2020-11-27 10:24:08','PT',NULL,NULL),
	(1274,NULL,'Deann','Long','00-0592-0086','8517 Ash Dr',NULL,'Australian Capital Territory','1028','2020-11-27 10:24:09','2020-11-27 10:24:09','PT',NULL,NULL),
	(1275,NULL,'André','Lefevre','075 368 95 43','6126 Rue du Cardinal-Gerlier',NULL,'Veyrier','3907','2020-11-27 10:24:09','2020-11-27 10:24:09','PT',NULL,NULL),
	(1276,NULL,'Gloria','Iglesias','980-808-677','8928 Calle de Ferraz',NULL,'Jerez de la Frontera','97045','2020-11-27 10:24:10','2020-11-27 10:24:10','PT',NULL,NULL),
	(1277,NULL,'Gabriel','Wilson','193-384-3935','39 Wellington St',NULL,'Souris','Z4Z 5T7','2020-11-27 10:24:10','2020-11-27 10:24:10','PT',NULL,NULL),
	(1278,NULL,'Victoria','Singh','138-315-5943','7969 Disputed Rd',NULL,'Greenwood','M5X 8C2','2020-11-27 10:24:10','2020-11-27 10:24:10','PT',NULL,NULL),
	(1279,NULL,'Veeti','Tuominen','08-422-355','5092 Pispalan Valtatie',NULL,'Kittilä','15560','2020-11-27 10:24:11','2020-11-27 10:24:11','PT',NULL,NULL),
	(1280,NULL,'سپهر','زارعی','091-08355082','2164 دماوند',NULL,'کرمان','45490','2020-11-27 10:24:11','2020-11-27 10:24:11','PT',NULL,NULL),
	(1292,NULL,'Scarlett','Burton','061-530-5203','2522 Springfield Road',NULL,'Thurles','66860','2020-11-27 10:24:29','2020-11-27 10:24:29','PT',NULL,NULL),
	(1293,NULL,'Meral','Babacan','(354)-382-9890','9514 Necatibey Cd',NULL,'Burdur','32494','2020-11-27 10:24:30','2020-11-27 10:24:30','PT',NULL,NULL),
	(1294,NULL,'Soren','Fontai','04-17-40-74-72','4193 Rue de la Gare',NULL,'Nanterre','51142','2020-11-27 10:24:38','2020-11-27 10:24:38','PT',NULL,NULL),
	(1295,NULL,'Alexandra','Lowe','016977 07639','8874 Springfield Road',NULL,'Edinburgh','B51 8RF','2020-11-27 10:24:38','2020-11-27 10:24:38','PT',NULL,NULL),
	(1296,NULL,'Lina','Mohamoud','60150252','6710 Ulsrudveien',NULL,'Råkvågen','3841','2020-11-27 10:24:43','2020-11-27 10:24:43','PT',NULL,NULL),
	(1297,NULL,'Fabienne','Barbier','075 846 99 45','5210 Avenue Joliot Curie',NULL,'Erstfeld','8199','2020-11-27 10:24:44','2020-11-27 10:24:44','PT',NULL,NULL),
	(1308,NULL,'Cyrus','Tammer','(158)-062-2155','6404 Joostinkweg',NULL,'Driehuizen','90430','2020-11-27 10:25:00','2020-11-27 10:25:00','PT',NULL,NULL),
	(1309,NULL,'Brielle','Williams','397-367-8670','1460 Argyle St',NULL,'Georgetown','F0Y 2Y2','2020-11-27 10:25:01','2020-11-27 10:25:01','PT',NULL,NULL),
	(1310,NULL,'Constantin','Mühlbauer','0699-2403574','6139 Lindenweg',NULL,'Wertingen','14210','2020-11-27 10:25:01','2020-11-27 10:25:01','PT',NULL,NULL),
	(1311,NULL,'Cecil','Carlson','(627)-133-8085','7435 Elgin St',NULL,'Waco','72876','2020-11-27 10:25:02','2020-11-27 10:25:02','PT',NULL,NULL),
	(1312,NULL,'Jon','Harris','061-274-8532','2140 Main Street',NULL,'Enniscorthy','54940','2020-11-27 10:25:03','2020-11-27 10:25:03','PT',NULL,NULL),
	(1313,NULL,'Bob','Brooks','(727)-111-4638','146 W Belt Line Rd',NULL,'Farmers Branch','77983','2020-11-27 10:25:04','2020-11-27 10:25:04','PT',NULL,NULL),
	(1314,NULL,'Benjamin','Young','980-295-7857','3493 College Ave',NULL,'Cumberland','D8H 2A5','2020-11-27 10:25:05','2020-11-27 10:25:05','PT',NULL,NULL),
	(1315,NULL,'Leona','Dean','(848)-501-5385','8997 Lakeview St',NULL,'Mesquite','14280','2020-11-27 10:25:05','2020-11-27 10:25:05','PT',NULL,NULL),
	(1316,NULL,'Fernando','Young','061-337-4463','5421 Rochestown Road',NULL,'Oranmore','90981','2020-11-27 10:25:06','2020-11-27 10:25:06','PT',NULL,NULL),
	(1317,NULL,'Emrah','Pap','(048)-823-9059','3478 Baronesselaan',NULL,'Nieuweschans','50064','2020-11-27 10:25:06','2020-11-27 10:25:06','PT',NULL,NULL),
	(1318,NULL,'Cassandre','Louis','03-85-93-20-06','9001 Rue Cyrus-Hugues',NULL,'Saint-Étienne','16550','2020-11-27 10:25:06','2020-11-27 10:25:06','PT',NULL,NULL),
	(1319,NULL,'Ritthy','Mcguinness','011-327-5080','5627 Dublin Road',NULL,'Loughrea','77881','2020-11-27 10:25:07','2020-11-27 10:25:07','PT',NULL,NULL),
	(1320,NULL,'Onni','Ylitalo','04-503-480','4944 Korkeavuorenkatu',NULL,'Alajärvi','33578','2020-11-27 10:25:07','2020-11-27 10:25:07','PT',NULL,NULL),
	(1321,NULL,'Kester','Laurens','(817)-134-8014','4671 Jan Groenewoldwei',NULL,'Geersdijk','25752','2020-11-27 10:25:07','2020-11-27 10:25:07','PT',NULL,NULL),
	(1322,NULL,'Vladislava','Moreira','(15) 0103-4749','2986 Rua José Bonifácio ',NULL,'Poá','51208','2020-11-27 10:25:08','2020-11-27 10:25:08','PT',NULL,NULL),
	(1323,NULL,'Sandra','Robertson','03-0020-7745','4571 Samaritan Dr',NULL,'Toowoomba','9932','2020-11-27 10:25:08','2020-11-27 10:25:08','PT',NULL,NULL),
	(1324,NULL,'Vildan','Koç','(374)-080-2289','8416 Kushimoto Sk',NULL,'Adana','20536','2020-11-27 10:25:09','2020-11-27 10:25:09','PT',NULL,NULL),
	(1325,NULL,'Blanca','Herrera','921-314-688','1691 Avenida de Castilla',NULL,'Orense','27941','2020-11-27 10:25:09','2020-11-27 10:25:09','PT',NULL,NULL),
	(1326,NULL,'Rahaf','Fidjeland','84743756','2284 Hofftunet',NULL,'Skotselv','3351','2020-11-27 10:25:10','2020-11-27 10:25:10','PT',NULL,NULL),
	(1327,NULL,'Matthäus','Wieland','0036-0099039','3667 Am Bahnhof',NULL,'Roßwein','63756','2020-11-27 10:25:11','2020-11-27 10:25:11','PT',NULL,NULL),
	(1328,NULL,'Afet','Ilıcalı','(140)-201-4091','1327 Mevlana Cd',NULL,'Kastamonu','55077','2020-11-27 10:25:12','2020-11-27 10:25:12','PT',NULL,NULL),
	(1329,NULL,'Emma','Jørgensen','43730518','5503 Kirsebærhaven',NULL,'Bælum','27354','2020-11-27 10:25:13','2020-11-27 10:25:13','PT',NULL,NULL),
	(1330,NULL,'Ennya','Moraes','(26) 2367-3412','7196 Rua Dois',NULL,'Barretos','84360','2020-11-27 10:25:13','2020-11-27 10:25:13','PT',NULL,NULL),
	(1331,NULL,'Jeanine','Garnier','078 783 21 70','1433 Rue Barrème',NULL,'Reiden','3331','2020-11-27 10:25:13','2020-11-27 10:25:13','PT',NULL,NULL),
	(1332,NULL,'Lilja','Salminen','04-084-057','3439 Nordenskiöldinkatu',NULL,'Kempele','20504','2020-11-27 10:25:14','2020-11-27 10:25:14','PT',NULL,NULL),
	(1333,NULL,'Mathew','Wagner','(586)-992-3816','9374 Taylor St',NULL,'Las Vegas','87611','2020-11-27 10:25:14','2020-11-27 10:25:14','PT',NULL,NULL),
	(1334,NULL,'Armand','Adam','01-26-79-70-76','3989 Rue de L\'Abbé-Roger-Derry',NULL,'Versailles','18172','2020-11-27 10:25:15','2020-11-27 10:25:15','PT',NULL,NULL),
	(1335,NULL,'Owen','Byrd','016974 34154','3252 North Street',NULL,'Ripon','T40 1SR','2020-11-27 10:25:15','2020-11-27 10:25:15','PT',NULL,NULL),
	(1336,NULL,'Carla','Noel','076 269 97 26','6445 Place du 22 Novembre 1943',NULL,'Courtelary','1805','2020-11-27 10:25:16','2020-11-27 10:25:16','PT',NULL,NULL),
	(1337,NULL,'Julianne','Karlson','64447196','825 Stamhusveien',NULL,'Lundamo','4490','2020-11-27 10:25:16','2020-11-27 10:25:16','PT',NULL,NULL),
	(1338,NULL,'Heidi','Hughes','015395 66033','5901 Oaks Cross',NULL,'Newry','P93 7BH','2020-11-27 10:25:17','2020-11-27 10:25:17','PT',NULL,NULL),
	(1339,NULL,'یاسمن','کریمی','087-93875008','6344 حجاب',NULL,'کرمان','88769','2020-11-27 10:25:17','2020-11-27 10:25:17','PT',NULL,NULL),
	(1340,NULL,'Jason','Deschamps','078 806 82 02','4015 Rue de L\'Abbé-Carton',NULL,'Bönigen','9522','2020-11-27 10:25:18','2020-11-27 10:25:18','PT',NULL,NULL),
	(1341,NULL,'Pınar','Strating','(924)-633-0481','4628 Couperusstraat',NULL,'Echtenerbrug','34177','2020-11-27 10:25:18','2020-11-27 10:25:18','PT',NULL,NULL),
	(1342,NULL,'پارمیس','موسوی','061-41594022','6416 جلال آل احمد',NULL,'گلستان','94508','2020-11-27 10:25:19','2020-11-27 10:25:19','PT',NULL,NULL),
	(1343,NULL,'Gül','Karabulut','(522)-464-8875','1431 Filistin Cd',NULL,'Konya','48626','2020-11-27 10:25:19','2020-11-27 10:25:19','PT',NULL,NULL),
	(1344,NULL,'Nelly','Schuldt','0050-4252501','899 Meisenweg',NULL,'Neumarkt in der Oberpfalz','78419','2020-11-27 10:25:19','2020-11-27 10:25:19','PT',NULL,NULL),
	(1345,NULL,'Oscar','Muñoz','964-585-022','7037 Avenida de Salamanca',NULL,'Torrevieja','89133','2020-11-27 10:25:20','2020-11-27 10:25:20','PT',NULL,NULL),
	(1346,NULL,'Juan','Fleming','015396 15021','6097 St. John’S Road',NULL,'Wolverhampton','MN5 8YG','2020-11-27 10:25:20','2020-11-27 10:25:20','PT',NULL,NULL),
	(1347,NULL,'Joshua','Guillaume','03-77-62-30-78','868 Rue Barrier',NULL,'Aubervilliers','26005','2020-11-27 10:25:20','2020-11-27 10:25:20','PT',NULL,NULL),
	(1348,NULL,'Afet','Aydan','(799)-859-1720','1105 Necatibey Cd',NULL,'Elazığ','74673','2020-11-27 10:25:21','2020-11-27 10:25:21','PT',NULL,NULL),
	(1349,NULL,'Penny','Hall','(122)-770-4289','6943 Oak Ridge Ln',NULL,'Green Bay','72683','2020-11-27 10:25:21','2020-11-27 10:25:21','PT',NULL,NULL),
	(1350,NULL,'Kathleen','Larson','021-313-0407','2730 Killarney Road',NULL,'Ratoath','47058','2020-11-27 10:25:22','2020-11-27 10:25:22','PT',NULL,NULL),
	(1351,NULL,'Tristan','Gonzalez','02-80-60-88-66','1353 Place de L\'Abbé-Franz-Stock',NULL,'Nantes','37329','2020-11-27 10:25:22','2020-11-27 10:25:22','PT',NULL,NULL),
	(1352,NULL,'Léandre','Lucas','04-20-56-52-98','2100 Avenue du Château',NULL,'Aubervilliers','51225','2020-11-27 10:25:23','2020-11-27 10:25:23','PT',NULL,NULL),
	(1353,NULL,'Tamara','Santos','(73) 7493-2952','9173 Rua Treze ',NULL,'Apucarana','58287','2020-11-27 10:25:23','2020-11-27 10:25:23','PT',NULL,NULL),
	(1354,NULL,'Eugenia','Ramirez','967-853-072','3155 Paseo de Extremadura',NULL,'Santiago de Compostela','34563','2020-11-27 10:25:24','2020-11-27 10:25:24','PT',NULL,NULL),
	(1355,NULL,'Kasimir','Reiser','0603-7225017','5551 Erlenweg',NULL,'Trossingen','77412','2020-11-27 10:25:29','2020-11-27 10:25:29','PT',NULL,NULL),
	(1356,NULL,'Camila','Barrett','02-7031-8580','8770 Oak Ridge Ln',NULL,'Mackay','2620','2020-11-27 10:25:29','2020-11-27 10:25:29','PT',NULL,NULL),
	(1357,NULL,'Karla','Olsen','72823410','1443 Dådyrvej',NULL,'Gjerlev','26768','2020-11-27 10:25:30','2020-11-27 10:25:30','PT',NULL,NULL),
	(1358,NULL,'Joan','Jensen','(019)-541-4116','7279 Oak Ridge Ln',NULL,'Laredo','56240','2020-11-27 10:25:30','2020-11-27 10:25:30','PT',NULL,NULL),
	(1359,NULL,'Julia','Carlson','021-253-9927','2580 Denny Street',NULL,'Enniscorthy','89727','2020-11-27 10:25:31','2020-11-27 10:25:31','PT',NULL,NULL),
	(1360,NULL,'Vincent','Payne','07-5467-0276','996 Depaul Dr',NULL,'Bundaberg','521','2020-11-27 10:25:31','2020-11-27 10:25:31','PT',NULL,NULL),
	(1361,NULL,'Saana','Lahti','07-165-927','5513 Otavalankatu',NULL,'Korsholm','83686','2020-11-27 10:25:31','2020-11-27 10:25:31','PT',NULL,NULL),
	(1362,NULL,'Aubree','Novak','738-299-9906','5687 9th St',NULL,'Fountainbleu','G4Z 6V8','2020-11-27 10:25:32','2020-11-27 10:25:32','PT',NULL,NULL),
	(1363,NULL,'Maria','Cook','017684 68398','7510 Grange Road',NULL,'Wells','MR1 7FX','2020-11-27 10:25:32','2020-11-27 10:25:32','PT',NULL,NULL),
	(1364,NULL,'Jenny','Euler','0443-9201079','1378 Eichenweg',NULL,'Ludwigslust','18438','2020-11-27 10:25:33','2020-11-27 10:25:33','PT',NULL,NULL),
	(1365,NULL,'Olga','Santos','973-500-353','2134 Calle de La Almudena',NULL,'Arrecife','84022','2020-11-27 10:25:33','2020-11-27 10:25:33','PT',NULL,NULL),
	(1366,NULL,'Miroslav','Bertrand','075 577 60 82','9855 Rue du Dauphiné',NULL,'Meierskappel','9445','2020-11-27 10:25:33','2020-11-27 10:25:33','PT',NULL,NULL),
	(1367,NULL,'Luukas','Linna','08-422-626','6987 Satakennankatu',NULL,'Taivalkoski','65721','2020-11-27 10:25:34','2020-11-27 10:25:34','PT',NULL,NULL),
	(1368,NULL,'Claudia','Ortiz','943-774-249','4448 Calle Nebrija',NULL,'Ferrol','70379','2020-11-27 10:25:34','2020-11-27 10:25:34','PT',NULL,NULL),
	(1369,NULL,'Katia','Van de Goor','(539)-166-0191','2802 De Haken',NULL,'Lekkerkerk','66567','2020-11-27 10:25:35','2020-11-27 10:25:35','PT',NULL,NULL),
	(1370,NULL,'Meinolf','Gellert','0115-2890130','9264 Lindenweg',NULL,'Neckarsteinach','34741','2020-11-27 10:25:35','2020-11-27 10:25:35','PT',NULL,NULL),
	(1371,NULL,'Rahime','Roetman','(049)-877-4589','3920 Judeaweg',NULL,'Zeijerveen','37144','2020-11-27 10:25:36','2020-11-27 10:25:36','PT',NULL,NULL),
	(1372,NULL,'Olivia','Latvala','09-957-045','5965 Hermiankatu',NULL,'Kristinestad','14597','2020-11-27 10:25:38','2020-11-27 10:25:38','PT',NULL,NULL),
	(1373,NULL,'Arijus','Spilde','39285036','2167 Heggelibakken',NULL,'Tyssedal','8401','2020-11-27 10:25:38','2020-11-27 10:25:38','PT',NULL,NULL),
	(1374,NULL,'Hannah','Gray','(080)-413-8498','1108 Central St',NULL,'Burbank','85310','2020-11-27 10:25:39','2020-11-27 10:25:39','PT',NULL,NULL),
	(1375,NULL,'Brendan','King','031-565-0619','2937 Galway Road',NULL,'Shannon','76619','2020-11-27 10:25:39','2020-11-27 10:25:39','PT',NULL,NULL),
	(1376,NULL,'Julius','Honkala','02-844-282','6849 Suvantokatu',NULL,'Ruovesi','65307','2020-11-27 10:25:40','2020-11-27 10:25:40','PT',NULL,NULL),
	(1377,NULL,'سورنا','كامياران','025-90232280','5775 دستغیب',NULL,'ساوه','71989','2020-11-27 10:25:40','2020-11-27 10:25:40','PT',NULL,NULL),
	(1378,NULL,'Rita','Lopes','(73) 3337-4514','7194 Rua Dezessete ',NULL,'Santana de Parnaíba','60496','2020-11-27 10:25:40','2020-11-27 10:25:40','PT',NULL,NULL),
	(1379,NULL,'Max','Grant','07-1209-2377','2057 Marsh Ln',NULL,'Adelaide','1982','2020-11-27 10:25:41','2020-11-27 10:25:41','PT',NULL,NULL),
	(1380,NULL,'Nathaniel','Vistnes','77253591','3437 Heimdalsgata',NULL,'Renbygda','4638','2020-11-27 10:25:41','2020-11-27 10:25:41','PT',NULL,NULL),
	(1381,NULL,'Carina','Åsebø','85981076','1196 Odalsgata',NULL,'Lampeland','0271','2020-11-27 10:25:42','2020-11-27 10:25:42','PT',NULL,NULL),
	(1382,NULL,'Brecht','De Bondt','(604)-894-9851','2006 Alendorpstraat',NULL,'Slijkenburg','76984','2020-11-27 10:25:42','2020-11-27 10:25:42','PT',NULL,NULL),
	(1383,NULL,'Isael','Nascimento','(38) 7242-7936','2358 Rua São José ',NULL,'Ribeirão das Neves','99895','2020-11-27 10:25:43','2020-11-27 10:25:43','PT',NULL,NULL),
	(1384,NULL,'Liesel','Schütz','0140-4305860','3092 Brunnenstraße',NULL,'Eisenach','78843','2020-11-27 10:25:43','2020-11-27 10:25:43','PT',NULL,NULL),
	(1385,NULL,'Ayşe','Baturalp','(077)-514-6497','9123 Şehitler Cd',NULL,'Sivas','39217','2020-11-27 10:25:44','2020-11-27 10:25:44','PT',NULL,NULL),
	(1386,NULL,'Ahmet','Pektemek','(614)-801-3432','2398 Maçka Cd',NULL,'Sinop','94019','2020-11-27 10:25:45','2020-11-27 10:25:45','PT',NULL,NULL),
	(1387,NULL,'Jennifer','Barnes','031-296-0629','1441 Park Road',NULL,'Dunboyne','65984','2020-11-27 10:25:45','2020-11-27 10:25:45','PT',NULL,NULL),
	(1388,NULL,'Teresa','Porter','09-5880-2551','4384 First Street',NULL,'Shepparton','765','2020-11-27 10:25:46','2020-11-27 10:25:46','PT',NULL,NULL),
	(1389,NULL,'Liva','Øvereng','82519383','8110 Østerliveien',NULL,'Rophus','7864','2020-11-27 10:25:46','2020-11-27 10:25:46','PT',NULL,NULL),
	(1390,NULL,'آراد','رضاییان','034-44278741','7313 میدان ولیعصر (عج)',NULL,'یزد','45128','2020-11-27 10:25:46','2020-11-27 10:25:46','PT',NULL,NULL),
	(1391,NULL,'Guy','Dunn','0181 865 2056','7793 Fairview Road',NULL,'Sunderland','ET13 6PY','2020-11-27 10:25:47','2020-11-27 10:25:47','PT',NULL,NULL),
	(1392,NULL,'Amalie','Schoch','0361-1422921','8679 Waldweg',NULL,'Volkach','58787','2020-11-27 10:25:47','2020-11-27 10:25:47','PT',NULL,NULL),
	(1393,NULL,'Charles','Wong','591-792-1885','1426 Parliament St',NULL,'Keswick','P3W 2A7','2020-11-27 10:25:47','2020-11-27 10:25:47','PT',NULL,NULL),
	(1394,NULL,'Herbert','Warren','02-8851-0558','4867 Hickory Creek Dr',NULL,'Maitland','8163','2020-11-27 10:25:48','2020-11-27 10:25:48','PT',NULL,NULL),
	(1395,NULL,'Rita','Santos','(99) 2527-3382','8981 Rua Um',NULL,'Santa Maria','41345','2020-11-27 10:25:48','2020-11-27 10:25:48','PT',NULL,NULL),
	(1396,NULL,'Todd','Fox','021-280-4581','9770 Main Street',NULL,'Carrigtwohill','62791','2020-11-27 10:25:49','2020-11-27 10:25:49','PT',NULL,NULL),
	(1397,NULL,'Taylor','Mccoy','(186)-839-1787','1641 Harrison Ct',NULL,'Eugene','25923','2020-11-27 10:25:50','2020-11-27 10:25:50','PT',NULL,NULL),
	(1398,NULL,'Hans-Günter','Kuhl','0630-0979579','6626 Am Bahnhof',NULL,'Bad Wildungen','59327','2020-11-27 10:25:51','2020-11-27 10:25:51','PT',NULL,NULL),
	(1399,NULL,'Nathan','Brar','075-744-5902','8411 20th Ave',NULL,'Cochrane','C5E 5V3','2020-11-27 10:25:51','2020-11-27 10:25:51','PT',NULL,NULL),
	(1400,NULL,'Ayman','Jetten','(418)-712-3127','7721 Brandewijnsgracht',NULL,'Hippolytushoef','35645','2020-11-27 10:25:53','2020-11-27 10:25:53','PT',NULL,NULL),
	(1401,NULL,'Emma','Kumar','(842)-836-7015','3798 Fenton Street',NULL,'Auckland','98652','2020-11-27 10:25:54','2020-11-27 10:25:54','PT',NULL,NULL),
	(1402,NULL,'Rebecca','Neal','051-212-1103','112 York Road',NULL,'Ratoath','98062','2020-11-27 10:25:54','2020-11-27 10:25:54','PT',NULL,NULL),
	(1403,NULL,'Mia','Moore','(567)-183-1212','3552 Lichfield Street',NULL,'Gisborne','60871','2020-11-27 10:25:55','2020-11-27 10:25:55','PT',NULL,NULL),
	(1404,NULL,'Sophie','Robert','04-09-77-89-72','2323 Avenue de la Libération',NULL,'Bordeaux','58979','2020-11-27 10:25:55','2020-11-27 10:25:55','PT',NULL,NULL),
	(1405,NULL,'Mandy','Chambers','051-463-7253','9835 The Green',NULL,'Duleek','93336','2020-11-27 10:25:56','2020-11-27 10:25:56','PT',NULL,NULL),
	(1406,NULL,'Simon','Reinsch','0802-6940433','7076 Amselweg',NULL,'Tribsees','75094','2020-11-27 10:25:56','2020-11-27 10:25:56','PT',NULL,NULL),
	(1407,NULL,'Wiebke','Hinkel','0915-5697832','9907 Wiesenstraße',NULL,'Siegen-Wittgenstein','21328','2020-11-27 10:25:56','2020-11-27 10:25:56','PT',NULL,NULL),
	(1408,NULL,'Emily','Morin','513-934-9292','730 Regent Ave',NULL,'Lasalle','Z1T 6T1','2020-11-27 10:25:58','2020-11-27 10:25:58','PT',NULL,NULL),
	(1409,NULL,'Mia','Shelton','051-293-5419','2727 South Street',NULL,'Lusk','39309','2020-11-27 10:26:00','2020-11-27 10:26:00','PT',NULL,NULL),
	(1410,NULL,'Charles','Walker','(770)-430-0960','4607 Ahuriri Bypass',NULL,'Blenheim','23649','2020-11-27 10:26:00','2020-11-27 10:26:00','PT',NULL,NULL),
	(1411,NULL,'David','Taylor','061-175-6207','6833 George Street',NULL,'Swords','11177','2020-11-27 10:26:01','2020-11-27 10:26:01','PT',NULL,NULL),
	(1412,NULL,'Jody','Borghuis','(571)-507-6950','2110 Kingmastate',NULL,'Zeerijp','97411','2020-11-27 10:26:01','2020-11-27 10:26:01','PT',NULL,NULL),
	(1413,NULL,'Ece','Çamdalı','(385)-453-7382','7272 Talak Göktepe Cd',NULL,'Karaman','79778','2020-11-27 10:26:02','2020-11-27 10:26:02','PT',NULL,NULL),
	(1414,NULL,'Nicolas','Singh','698-127-8065','1480 Dufferin St',NULL,'Chelsea','W1P 4T2','2020-11-27 10:26:02','2020-11-27 10:26:02','PT',NULL,NULL),
	(1415,NULL,'Oscar','Vega','982-129-479','7667 Calle del Pez',NULL,'Orense','72930','2020-11-27 10:26:04','2020-11-27 10:26:04','PT',NULL,NULL),
	(1416,NULL,'Romeo','Pompe','(762)-425-5057','8131 Ds Hasperstraat',NULL,'Odoorn','51046','2020-11-27 10:26:05','2020-11-27 10:26:05','PT',NULL,NULL),
	(1417,NULL,'Samantha','Zhang','(454)-627-9814','8974 Hereford Street',NULL,'Whanganui','27983','2020-11-27 10:26:06','2020-11-27 10:26:06','PT',NULL,NULL),
	(1418,NULL,'Alfredo','Mora','990-403-545','754 Calle de Bravo Murillo',NULL,'Murcia','23502','2020-11-27 10:26:06','2020-11-27 10:26:06','PT',NULL,NULL),
	(1419,NULL,'Esperanza','Marin','955-297-134','8748 Calle de Téllez',NULL,'Vitoria','36035','2020-11-27 10:26:06','2020-11-27 10:26:06','PT',NULL,NULL),
	(1420,NULL,'Anthony','Ma','236-080-9549','8649 Regent Ave',NULL,'Enterprise','V0D 0F7','2020-11-27 10:26:07','2020-11-27 10:26:07','PT',NULL,NULL),
	(1421,NULL,'Paige','Singh','(622)-414-7788','927 Puhinui Road',NULL,'Hastings','99437','2020-11-27 10:26:07','2020-11-27 10:26:07','PT',NULL,NULL),
	(1423,NULL,'Eusébio','Farias','(51) 6476-5046','4676 Rua Rio de Janeiro ',NULL,'Paranaguá','87212','2020-11-27 10:26:29','2020-11-27 10:26:29','PT',NULL,NULL),
	(1424,NULL,'Bibiana','da Paz','(65) 7608-8253','2355 Rua Dezesseis de Maio',NULL,'Votorantim','56281','2020-11-27 10:26:32','2020-11-27 10:26:32','PT',NULL,NULL),
	(1426,NULL,'Sina','Dias','(45) 1017-5795','6336 Rua Vinte E Quatro de Outubro',NULL,'Votorantim','20668','2020-11-27 10:27:01','2020-11-27 10:27:01','PT',NULL,NULL),
	(1427,NULL,'Martin','Blanc','078 974 00 79','6003 Avenue Goerges Clémenceau',NULL,'Kernenried','7116','2020-11-27 10:27:01','2020-11-27 10:27:01','PT',NULL,NULL),
	(1429,NULL,'Tracey','Ellis','02-2672-8833','9324 Cackson St',NULL,'Albury','2554','2020-11-27 10:27:02','2020-11-27 10:27:02','PT',NULL,NULL),
	(1430,NULL,'Ronny','Aubert','078 804 61 01','6933 Place du 22 Novembre 1943',NULL,'Waldenburg','9318','2020-11-27 10:27:02','2020-11-27 10:27:02','PT',NULL,NULL),
	(1432,NULL,'Logan','Robertson','(106)-661-6618','5416 Edwards Rd',NULL,'San Jose','67217','2020-11-27 10:27:04','2020-11-27 10:27:04','PT',NULL,NULL),
	(1433,NULL,'Hailey','Lévesque','292-474-7112','3743 Main St',NULL,'Trout Lake','M2J 8W5','2020-11-27 10:27:04','2020-11-27 10:27:04','PT',NULL,NULL),
	(1435,NULL,'Brayden','Pearson','(325)-623-4120','2797 Poplar Dr',NULL,'Sacramento','86619','2020-11-27 10:27:07','2020-11-27 10:27:07','PT',NULL,NULL),
	(1436,NULL,'Amelia','Skagen','73548088','2989 Skøyenkneika',NULL,'Namnå','1456','2020-11-27 10:27:08','2020-11-27 10:27:08','PT',NULL,NULL),
	(1438,NULL,'Téo','Michel','03-39-30-36-28','5742 Boulevard de Balmont',NULL,'Limoges','53423','2020-11-27 10:27:09','2020-11-27 10:27:09','PT',NULL,NULL),
	(1439,NULL,'سپهر','کوتی','023-16522691','8344 کلاهدوز',NULL,'سیرجان','20614','2020-11-27 10:27:10','2020-11-27 10:27:10','PT',NULL,NULL),
	(1441,NULL,'Emmi','Pakkala','03-271-096','8094 Myllypuronkatu',NULL,'Kokkola','93714','2020-11-27 10:27:11','2020-11-27 10:27:11','PT',NULL,NULL),
	(1442,NULL,'Faiza','Van Woerden','(978)-185-6174','9772 Kampstukkenweg',NULL,'Lutten','83389','2020-11-27 10:27:11','2020-11-27 10:27:11','PT',NULL,NULL),
	(1444,NULL,'Scarlett','Walker','(630)-403-0093','792 Sherborne Street',NULL,'Tauranga','27165','2020-11-27 10:27:12','2020-11-27 10:27:12','PT',NULL,NULL),
	(1445,NULL,'Dylan','Zhang','(391)-496-2892','965 Coronation Avenue',NULL,'Lower Hutt','94468','2020-11-27 10:27:13','2020-11-27 10:27:13','PT',NULL,NULL);

/*!40000 ALTER TABLE `ecommerce_address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_address_log_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_address_log_entries`;

CREATE TABLE `ecommerce_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_address_log_entries` WRITE;
/*!40000 ALTER TABLE `ecommerce_address_log_entries` DISABLE KEYS */;

INSERT INTO `ecommerce_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`)
VALUES
	(1,'create','2020-11-26 18:40:10','1','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Rosa\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"70208 Feil Station\";s:7:\"company\";N;s:4:\"city\";s:11:\"New Christa\";s:8:\"postcode\";s:10:\"31786-6649\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(2,'create','2020-11-26 18:40:10','2','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Rosa\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"70208 Feil Station\";s:7:\"company\";N;s:4:\"city\";s:11:\"New Christa\";s:8:\"postcode\";s:10:\"31786-6649\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(3,'create','2020-11-26 18:40:10','3','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Rosa\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"70208 Feil Station\";s:7:\"company\";N;s:4:\"city\";s:11:\"New Christa\";s:8:\"postcode\";s:10:\"31786-6649\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(4,'create','2020-11-26 18:40:11','4','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Orlando\";s:8:\"lastName\";s:8:\"Shanahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"10608 Alejandra Key\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Lester\";s:8:\"postcode\";s:10:\"25078-3900\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(5,'create','2020-11-26 18:40:11','5','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Orlando\";s:8:\"lastName\";s:8:\"Shanahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"10608 Alejandra Key\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Lester\";s:8:\"postcode\";s:10:\"25078-3900\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(6,'create','2020-11-26 18:40:11','6','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Orlando\";s:8:\"lastName\";s:8:\"Shanahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"10608 Alejandra Key\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Lester\";s:8:\"postcode\";s:10:\"25078-3900\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(7,'create','2020-11-26 18:40:11','7','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"2412 Robel Throughway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Dashawnport\";s:8:\"postcode\";s:10:\"07629-6566\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(8,'create','2020-11-26 18:40:11','8','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"2412 Robel Throughway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Dashawnport\";s:8:\"postcode\";s:10:\"07629-6566\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(9,'create','2020-11-26 18:40:11','9','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"2412 Robel Throughway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Dashawnport\";s:8:\"postcode\";s:10:\"07629-6566\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(10,'create','2020-11-26 18:40:11','10','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Enos\";s:8:\"lastName\";s:10:\"Gusikowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"74368 Cronin Manors Apt. 274\";s:7:\"company\";N;s:4:\"city\";s:17:\"South Wallaceland\";s:8:\"postcode\";s:10:\"81224-4757\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(11,'create','2020-11-26 18:40:11','11','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Enos\";s:8:\"lastName\";s:10:\"Gusikowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"74368 Cronin Manors Apt. 274\";s:7:\"company\";N;s:4:\"city\";s:17:\"South Wallaceland\";s:8:\"postcode\";s:10:\"81224-4757\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(12,'create','2020-11-26 18:40:11','12','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Enos\";s:8:\"lastName\";s:10:\"Gusikowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"74368 Cronin Manors Apt. 274\";s:7:\"company\";N;s:4:\"city\";s:17:\"South Wallaceland\";s:8:\"postcode\";s:10:\"81224-4757\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(13,'create','2020-11-26 18:40:11','13','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Giovanna\";s:8:\"lastName\";s:4:\"Moen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"558 Walter Gateway Suite 343\";s:7:\"company\";N;s:4:\"city\";s:12:\"Lake Rodrick\";s:8:\"postcode\";s:10:\"64647-7134\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(14,'create','2020-11-26 18:40:11','14','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Giovanna\";s:8:\"lastName\";s:4:\"Moen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"558 Walter Gateway Suite 343\";s:7:\"company\";N;s:4:\"city\";s:12:\"Lake Rodrick\";s:8:\"postcode\";s:10:\"64647-7134\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(15,'create','2020-11-26 18:40:11','15','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Giovanna\";s:8:\"lastName\";s:4:\"Moen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"558 Walter Gateway Suite 343\";s:7:\"company\";N;s:4:\"city\";s:12:\"Lake Rodrick\";s:8:\"postcode\";s:10:\"64647-7134\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(16,'create','2020-11-26 18:40:11','16','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Katheryn\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1419 Timmothy Vista Apt. 538\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Korbin\";s:8:\"postcode\";s:5:\"71728\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(17,'create','2020-11-26 18:40:11','17','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Katheryn\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1419 Timmothy Vista Apt. 538\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Korbin\";s:8:\"postcode\";s:5:\"71728\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(18,'create','2020-11-26 18:40:11','18','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Katheryn\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1419 Timmothy Vista Apt. 538\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Korbin\";s:8:\"postcode\";s:5:\"71728\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(19,'create','2020-11-26 18:40:11','19','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Jordi\";s:8:\"lastName\";s:5:\"Mayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"950 Zulauf Underpass\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antoninaburgh\";s:8:\"postcode\";s:10:\"97108-4985\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(20,'create','2020-11-26 18:40:11','20','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Jordi\";s:8:\"lastName\";s:5:\"Mayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"950 Zulauf Underpass\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antoninaburgh\";s:8:\"postcode\";s:10:\"97108-4985\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(21,'create','2020-11-26 18:40:11','21','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Jordi\";s:8:\"lastName\";s:5:\"Mayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"950 Zulauf Underpass\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antoninaburgh\";s:8:\"postcode\";s:10:\"97108-4985\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(22,'create','2020-11-26 18:40:11','22','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Fern\";s:8:\"lastName\";s:8:\"Kshlerin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"47552 Russell Fields Suite 086\";s:7:\"company\";N;s:4:\"city\";s:8:\"Auerberg\";s:8:\"postcode\";s:5:\"97336\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(23,'create','2020-11-26 18:40:11','23','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Fern\";s:8:\"lastName\";s:8:\"Kshlerin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"47552 Russell Fields Suite 086\";s:7:\"company\";N;s:4:\"city\";s:8:\"Auerberg\";s:8:\"postcode\";s:5:\"97336\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(24,'create','2020-11-26 18:40:11','24','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Fern\";s:8:\"lastName\";s:8:\"Kshlerin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"47552 Russell Fields Suite 086\";s:7:\"company\";N;s:4:\"city\";s:8:\"Auerberg\";s:8:\"postcode\";s:5:\"97336\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(25,'create','2020-11-26 18:40:11','25','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Nicolette\";s:8:\"lastName\";s:6:\"Cremin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"8078 Conn Dam Apt. 103\";s:7:\"company\";N;s:4:\"city\";s:17:\"Altenwerthborough\";s:8:\"postcode\";s:5:\"02123\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(26,'create','2020-11-26 18:40:11','26','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Nicolette\";s:8:\"lastName\";s:6:\"Cremin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"8078 Conn Dam Apt. 103\";s:7:\"company\";N;s:4:\"city\";s:17:\"Altenwerthborough\";s:8:\"postcode\";s:5:\"02123\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(27,'create','2020-11-26 18:40:11','27','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Nicolette\";s:8:\"lastName\";s:6:\"Cremin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"8078 Conn Dam Apt. 103\";s:7:\"company\";N;s:4:\"city\";s:17:\"Altenwerthborough\";s:8:\"postcode\";s:5:\"02123\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(28,'create','2020-11-26 18:40:11','28','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Camron\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"97517 Fadel Roads\";s:7:\"company\";N;s:4:\"city\";s:11:\"Keatonburgh\";s:8:\"postcode\";s:10:\"00256-3831\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(29,'create','2020-11-26 18:40:11','29','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Camron\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"97517 Fadel Roads\";s:7:\"company\";N;s:4:\"city\";s:11:\"Keatonburgh\";s:8:\"postcode\";s:10:\"00256-3831\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(30,'create','2020-11-26 18:40:11','30','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Camron\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"97517 Fadel Roads\";s:7:\"company\";N;s:4:\"city\";s:11:\"Keatonburgh\";s:8:\"postcode\";s:10:\"00256-3831\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(31,'create','2020-11-26 18:40:11','31','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Isadore\";s:8:\"lastName\";s:5:\"Runte\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"6892 Champlin Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wintheiserfort\";s:8:\"postcode\";s:10:\"91486-5043\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(32,'create','2020-11-26 18:40:11','32','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Isadore\";s:8:\"lastName\";s:5:\"Runte\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"6892 Champlin Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wintheiserfort\";s:8:\"postcode\";s:10:\"91486-5043\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(33,'create','2020-11-26 18:40:11','33','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Isadore\";s:8:\"lastName\";s:5:\"Runte\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"6892 Champlin Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wintheiserfort\";s:8:\"postcode\";s:10:\"91486-5043\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(34,'create','2020-11-26 18:40:11','34','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"149 Keeling Shoals\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antonettatown\";s:8:\"postcode\";s:10:\"09687-8007\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(35,'create','2020-11-26 18:40:11','35','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"149 Keeling Shoals\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antonettatown\";s:8:\"postcode\";s:10:\"09687-8007\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(36,'create','2020-11-26 18:40:11','36','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"149 Keeling Shoals\";s:7:\"company\";N;s:4:\"city\";s:13:\"Antonettatown\";s:8:\"postcode\";s:10:\"09687-8007\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(37,'create','2020-11-26 18:40:12','37','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Colt\";s:8:\"lastName\";s:6:\"Hessel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"3220 Konopelski Glens\";s:7:\"company\";N;s:4:\"city\";s:13:\"Murielborough\";s:8:\"postcode\";s:5:\"18008\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(38,'create','2020-11-26 18:40:12','38','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Colt\";s:8:\"lastName\";s:6:\"Hessel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"3220 Konopelski Glens\";s:7:\"company\";N;s:4:\"city\";s:13:\"Murielborough\";s:8:\"postcode\";s:5:\"18008\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(39,'create','2020-11-26 18:40:12','39','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Colt\";s:8:\"lastName\";s:6:\"Hessel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"3220 Konopelski Glens\";s:7:\"company\";N;s:4:\"city\";s:13:\"Murielborough\";s:8:\"postcode\";s:5:\"18008\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(40,'create','2020-11-26 18:40:13','40','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffery\";s:8:\"lastName\";s:6:\"Nienow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"7030 Keeling Station Suite 785\";s:7:\"company\";N;s:4:\"city\";s:12:\"Sanfordville\";s:8:\"postcode\";s:5:\"49387\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(41,'create','2020-11-26 18:40:13','41','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffery\";s:8:\"lastName\";s:6:\"Nienow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"7030 Keeling Station Suite 785\";s:7:\"company\";N;s:4:\"city\";s:12:\"Sanfordville\";s:8:\"postcode\";s:5:\"49387\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(42,'create','2020-11-26 18:40:13','42','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffery\";s:8:\"lastName\";s:6:\"Nienow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"7030 Keeling Station Suite 785\";s:7:\"company\";N;s:4:\"city\";s:12:\"Sanfordville\";s:8:\"postcode\";s:5:\"49387\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(43,'create','2020-11-26 18:40:13','43','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Garnett\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"769 Genoveva Cliff\";s:7:\"company\";N;s:4:\"city\";s:9:\"Macymouth\";s:8:\"postcode\";s:10:\"22062-4873\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(44,'create','2020-11-26 18:40:13','44','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Garnett\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"769 Genoveva Cliff\";s:7:\"company\";N;s:4:\"city\";s:9:\"Macymouth\";s:8:\"postcode\";s:10:\"22062-4873\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(45,'create','2020-11-26 18:40:13','45','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Garnett\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"769 Genoveva Cliff\";s:7:\"company\";N;s:4:\"city\";s:9:\"Macymouth\";s:8:\"postcode\";s:10:\"22062-4873\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(46,'create','2020-11-26 18:40:13','46','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Bertha\";s:8:\"lastName\";s:4:\"Bins\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"89446 Bartoletti Tunnel\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Suzanne\";s:8:\"postcode\";s:10:\"38162-7556\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(47,'create','2020-11-26 18:40:13','47','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Bertha\";s:8:\"lastName\";s:4:\"Bins\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"89446 Bartoletti Tunnel\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Suzanne\";s:8:\"postcode\";s:10:\"38162-7556\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(48,'create','2020-11-26 18:40:13','48','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Bertha\";s:8:\"lastName\";s:4:\"Bins\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"89446 Bartoletti Tunnel\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Suzanne\";s:8:\"postcode\";s:10:\"38162-7556\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(49,'create','2020-11-26 18:40:13','49','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Elinore\";s:8:\"lastName\";s:7:\"Krajcik\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"62890 Adaline Trace Apt. 851\";s:7:\"company\";N;s:4:\"city\";s:14:\"Maximilianstad\";s:8:\"postcode\";s:5:\"57845\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(50,'create','2020-11-26 18:40:13','50','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Elinore\";s:8:\"lastName\";s:7:\"Krajcik\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"62890 Adaline Trace Apt. 851\";s:7:\"company\";N;s:4:\"city\";s:14:\"Maximilianstad\";s:8:\"postcode\";s:5:\"57845\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(51,'create','2020-11-26 18:40:13','51','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Elinore\";s:8:\"lastName\";s:7:\"Krajcik\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"62890 Adaline Trace Apt. 851\";s:7:\"company\";N;s:4:\"city\";s:14:\"Maximilianstad\";s:8:\"postcode\";s:5:\"57845\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(52,'create','2020-11-26 18:40:13','52','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Nickolas\";s:8:\"lastName\";s:7:\"Stroman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"400 Denesik Place Apt. 583\";s:7:\"company\";N;s:4:\"city\";s:9:\"North Lea\";s:8:\"postcode\";s:5:\"64379\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(53,'create','2020-11-26 18:40:13','53','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Nickolas\";s:8:\"lastName\";s:7:\"Stroman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"400 Denesik Place Apt. 583\";s:7:\"company\";N;s:4:\"city\";s:9:\"North Lea\";s:8:\"postcode\";s:5:\"64379\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(54,'create','2020-11-26 18:40:13','54','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Nickolas\";s:8:\"lastName\";s:7:\"Stroman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"400 Denesik Place Apt. 583\";s:7:\"company\";N;s:4:\"city\";s:9:\"North Lea\";s:8:\"postcode\";s:5:\"64379\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(55,'create','2020-11-26 18:40:13','55','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Vinnie\";s:8:\"lastName\";s:6:\"Schoen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1378 Stephany Pass Suite 741\";s:7:\"company\";N;s:4:\"city\";s:12:\"Priceborough\";s:8:\"postcode\";s:5:\"02500\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(56,'create','2020-11-26 18:40:13','56','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Vinnie\";s:8:\"lastName\";s:6:\"Schoen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1378 Stephany Pass Suite 741\";s:7:\"company\";N;s:4:\"city\";s:12:\"Priceborough\";s:8:\"postcode\";s:5:\"02500\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(57,'create','2020-11-26 18:40:13','57','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Vinnie\";s:8:\"lastName\";s:6:\"Schoen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1378 Stephany Pass Suite 741\";s:7:\"company\";N;s:4:\"city\";s:12:\"Priceborough\";s:8:\"postcode\";s:5:\"02500\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(58,'create','2020-11-26 18:40:13','58','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Frank\";s:8:\"lastName\";s:5:\"Bayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"643 Tess Branch\";s:7:\"company\";N;s:4:\"city\";s:11:\"Sylviamouth\";s:8:\"postcode\";s:5:\"48350\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(59,'create','2020-11-26 18:40:13','59','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Frank\";s:8:\"lastName\";s:5:\"Bayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"643 Tess Branch\";s:7:\"company\";N;s:4:\"city\";s:11:\"Sylviamouth\";s:8:\"postcode\";s:5:\"48350\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(60,'create','2020-11-26 18:40:13','60','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Frank\";s:8:\"lastName\";s:5:\"Bayer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"643 Tess Branch\";s:7:\"company\";N;s:4:\"city\";s:11:\"Sylviamouth\";s:8:\"postcode\";s:5:\"48350\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(61,'create','2020-11-26 18:40:13','61','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Ashly\";s:8:\"lastName\";s:7:\"Gaylord\";s:11:\"phoneNumber\";s:19:\"796-401-0280 x01070\";s:6:\"street\";s:16:\"338 D\'Amore Wall\";s:7:\"company\";s:11:\"Mann-Schoen\";s:4:\"city\";s:10:\"North Tyra\";s:8:\"postcode\";s:5:\"17877\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(62,'create','2020-11-26 18:40:13','62','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Humberto\";s:8:\"lastName\";s:4:\"Auer\";s:11:\"phoneNumber\";s:21:\"1-414-273-0586 x14867\";s:6:\"street\";s:27:\"9299 Stracke Field Apt. 522\";s:7:\"company\";N;s:4:\"city\";s:14:\"New Aniyaburgh\";s:8:\"postcode\";s:10:\"24342-2729\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(63,'create','2020-11-26 18:40:13','63','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Donnie\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";s:17:\"585.553.7661 x838\";s:6:\"street\";s:17:\"64920 Robel Crest\";s:7:\"company\";s:8:\"Rowe LLC\";s:4:\"city\";s:14:\"North Percival\";s:8:\"postcode\";s:5:\"36252\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(64,'create','2020-11-26 18:40:13','64','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Immanuel\";s:8:\"lastName\";s:8:\"Connelly\";s:11:\"phoneNumber\";s:20:\"(384) 693-5576 x8212\";s:6:\"street\";s:26:\"480 Hegmann Wells Apt. 846\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lucindaview\";s:8:\"postcode\";s:10:\"91327-1958\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(65,'create','2020-11-26 18:40:13','65','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Amina\";s:8:\"lastName\";s:10:\"Schowalter\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"29975 Hane Lodge\";s:7:\"company\";s:9:\"Bogan LLC\";s:4:\"city\";s:17:\"North Kurtisburgh\";s:8:\"postcode\";s:5:\"45619\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(66,'create','2020-11-26 18:40:13','66','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Edyth\";s:8:\"lastName\";s:9:\"Wilkinson\";s:11:\"phoneNumber\";s:15:\"+1-636-336-8067\";s:6:\"street\";s:15:\"45817 Vita Mill\";s:7:\"company\";N;s:4:\"city\";s:10:\"Ernserside\";s:8:\"postcode\";s:10:\"19207-5229\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(67,'create','2020-11-26 18:40:13','67','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Lucienne\";s:8:\"lastName\";s:11:\"Cruickshank\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"2059 Roy Pass Apt. 337\";s:7:\"company\";N;s:4:\"city\";s:10:\"Edythestad\";s:8:\"postcode\";s:10:\"81829-7871\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(68,'create','2020-11-26 18:40:13','68','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Earnest\";s:8:\"lastName\";s:7:\"Douglas\";s:11:\"phoneNumber\";s:15:\"+1-293-467-8336\";s:6:\"street\";s:26:\"802 Oberbrunner Extensions\";s:7:\"company\";s:25:\"Zulauf, Schmidt and Block\";s:4:\"city\";s:15:\"Runolfssonmouth\";s:8:\"postcode\";s:5:\"20116\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(69,'create','2020-11-26 18:40:13','69','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Hans\";s:8:\"lastName\";s:6:\"Hoeger\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"663 Chyna Garden\";s:7:\"company\";s:11:\"Kuphal-Huel\";s:4:\"city\";s:9:\"New Tatum\";s:8:\"postcode\";s:10:\"76595-8752\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),
	(70,'create','2020-11-26 18:40:13','70','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Scarlett\";s:8:\"lastName\";s:8:\"Schaefer\";s:11:\"phoneNumber\";s:19:\"(985) 254-9743 x772\";s:6:\"street\";s:15:\"497 Hill Manors\";s:7:\"company\";s:16:\"Schmidt and Sons\";s:4:\"city\";s:13:\"North Sigmund\";s:8:\"postcode\";s:10:\"17663-7010\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL);

/*!40000 ALTER TABLE `ecommerce_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_adjustment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_adjustment`;

CREATE TABLE `ecommerce_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `ecommerce_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `ecommerce_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `ecommerce_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_adjustment` WRITE;
/*!40000 ALTER TABLE `ecommerce_adjustment` DISABLE KEYS */;

INSERT INTO `ecommerce_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`)
VALUES
	(1,NULL,NULL,1,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(2,NULL,NULL,2,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(3,NULL,NULL,3,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(4,NULL,NULL,4,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(5,NULL,NULL,5,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(6,NULL,NULL,6,'order_promotion','New Year',-4,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(7,NULL,NULL,7,'order_promotion','New Year',-3,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(8,NULL,NULL,8,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(9,NULL,NULL,9,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(10,NULL,NULL,10,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(11,NULL,NULL,11,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(12,NULL,NULL,12,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(13,NULL,NULL,13,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(14,NULL,NULL,14,'order_promotion','New Year',-10,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(15,NULL,NULL,15,'order_promotion','New Year',-10,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(16,NULL,NULL,16,'order_promotion','New Year',-76,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(17,NULL,NULL,17,'order_promotion','New Year',-76,0,0,'new_year','2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(18,1,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(19,NULL,NULL,18,'order_promotion','New Year',-250,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(20,NULL,NULL,19,'order_promotion','New Year',-250,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(21,NULL,NULL,20,'order_promotion','New Year',-250,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(22,NULL,NULL,21,'order_promotion','New Year',-250,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(23,2,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(24,NULL,NULL,22,'order_promotion','New Year',-111,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(25,NULL,NULL,23,'order_promotion','New Year',-111,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(26,NULL,NULL,24,'order_promotion','New Year',-111,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(27,NULL,NULL,25,'order_promotion','New Year',-111,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(28,NULL,NULL,26,'order_promotion','New Year',-111,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(29,NULL,NULL,27,'order_promotion','New Year',-88,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(30,NULL,NULL,28,'order_promotion','New Year',-72,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(31,NULL,NULL,29,'order_promotion','New Year',-72,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(32,NULL,NULL,30,'order_promotion','New Year',-71,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(33,NULL,NULL,31,'order_promotion','New Year',-71,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(34,NULL,NULL,32,'order_promotion','New Year',-71,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(35,3,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(36,NULL,NULL,33,'order_promotion','New Year',-67,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(37,NULL,NULL,34,'order_promotion','New Year',-67,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(38,NULL,NULL,35,'order_promotion','New Year',-67,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(39,NULL,NULL,36,'order_promotion','New Year',-66,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(40,NULL,NULL,37,'order_promotion','New Year',-66,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(41,NULL,NULL,38,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(42,NULL,NULL,39,'order_promotion','New Year',-11,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(43,NULL,NULL,40,'order_promotion','New Year',-67,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(44,NULL,NULL,41,'order_promotion','New Year',-67,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(45,NULL,NULL,42,'order_promotion','New Year',-66,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(46,NULL,NULL,43,'order_promotion','New Year',-66,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(47,NULL,NULL,44,'order_promotion','New Year',-85,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(48,NULL,NULL,45,'order_promotion','New Year',-84,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(49,NULL,NULL,46,'order_promotion','New Year',-84,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(50,NULL,NULL,47,'order_promotion','New Year',-84,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(51,NULL,NULL,48,'order_promotion','New Year',-42,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(52,4,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(53,NULL,NULL,49,'order_promotion','New Year',-33,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(54,NULL,NULL,50,'order_promotion','New Year',-172,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(55,NULL,NULL,51,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(56,NULL,NULL,52,'order_promotion','New Year',-151,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(57,NULL,NULL,53,'order_promotion','New Year',-154,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(58,NULL,NULL,54,'order_promotion','New Year',-153,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(59,NULL,NULL,55,'order_promotion','New Year',-153,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(60,NULL,NULL,56,'order_promotion','New Year',-7,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(61,NULL,NULL,57,'order_promotion','New Year',-7,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(62,NULL,NULL,58,'order_promotion','New Year',-7,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(63,NULL,NULL,59,'order_promotion','New Year',-6,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(64,NULL,NULL,60,'order_promotion','New Year',-6,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(65,5,NULL,NULL,'shipping','DHL Express',510,0,0,NULL,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(66,NULL,NULL,61,'order_promotion','New Year',-238,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(67,NULL,NULL,62,'order_promotion','New Year',-238,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(68,NULL,NULL,63,'order_promotion','New Year',-238,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(69,NULL,NULL,64,'order_promotion','New Year',-237,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(70,NULL,NULL,65,'order_promotion','New Year',-17,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(71,NULL,NULL,66,'order_promotion','New Year',-16,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(72,NULL,NULL,67,'order_promotion','New Year',-16,0,0,'new_year','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(73,6,NULL,NULL,'shipping','DHL Express',510,0,0,NULL,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(74,NULL,NULL,68,'order_promotion','New Year',-131,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(75,NULL,NULL,69,'order_promotion','New Year',-29,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(76,NULL,NULL,70,'order_promotion','New Year',-29,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(77,NULL,NULL,71,'order_promotion','New Year',-93,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(78,NULL,NULL,72,'order_promotion','New Year',-93,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(79,NULL,NULL,73,'order_promotion','New Year',-92,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(80,NULL,NULL,74,'order_promotion','New Year',-92,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(81,NULL,NULL,75,'order_promotion','New Year',-92,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(82,NULL,NULL,76,'order_promotion','New Year',-88,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(83,NULL,NULL,77,'order_promotion','New Year',-87,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(84,NULL,NULL,78,'order_promotion','New Year',-87,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(85,NULL,NULL,79,'order_promotion','New Year',-87,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(86,7,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(87,NULL,NULL,80,'order_promotion','New Year',-254,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(88,NULL,NULL,81,'order_promotion','New Year',-253,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(89,NULL,NULL,82,'order_promotion','New Year',-253,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(90,NULL,NULL,83,'order_promotion','New Year',-80,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(91,NULL,NULL,84,'order_promotion','New Year',-80,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(92,NULL,NULL,85,'order_promotion','New Year',-80,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(93,8,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(94,NULL,NULL,86,'order_promotion','New Year',-107,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(95,NULL,NULL,87,'order_promotion','New Year',-107,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(96,NULL,NULL,88,'order_promotion','New Year',-54,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(97,NULL,NULL,89,'order_promotion','New Year',-147,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(98,NULL,NULL,90,'order_promotion','New Year',-147,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(99,NULL,NULL,91,'order_promotion','New Year',-146,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(100,NULL,NULL,92,'order_promotion','New Year',-146,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(101,NULL,NULL,93,'order_promotion','New Year',-146,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(102,9,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(103,NULL,NULL,94,'order_promotion','New Year',-200,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(104,NULL,NULL,95,'order_promotion','New Year',-200,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(105,NULL,NULL,96,'order_promotion','New Year',-200,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(106,NULL,NULL,97,'order_promotion','New Year',-200,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(107,NULL,NULL,98,'order_promotion','New Year',-200,0,0,'new_year','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(108,10,NULL,NULL,'shipping','DHL Express',510,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(109,11,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(110,12,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(111,13,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(112,14,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(113,15,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(114,16,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(115,17,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(116,18,NULL,NULL,'shipping','DHL Express',510,0,0,NULL,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(117,19,NULL,NULL,'shipping','UPS',855,0,0,NULL,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(118,20,NULL,NULL,'shipping','DHL Express',510,0,0,NULL,'2020-11-26 18:40:13','2020-11-26 18:40:13');

/*!40000 ALTER TABLE `ecommerce_adjustment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_admin_api_access_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_admin_api_access_token`;

CREATE TABLE `ecommerce_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `ecommerce_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_admin_api_access_token` WRITE;
/*!40000 ALTER TABLE `ecommerce_admin_api_access_token` DISABLE KEYS */;

INSERT INTO `ecommerce_admin_api_access_token` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`)
VALUES
	(1,1,3,'SampleToken',NULL,NULL);

/*!40000 ALTER TABLE `ecommerce_admin_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_admin_api_auth_code
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_admin_api_auth_code`;

CREATE TABLE `ecommerce_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `ecommerce_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_admin_api_client
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_admin_api_client`;

CREATE TABLE `ecommerce_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_admin_api_client` WRITE;
/*!40000 ALTER TABLE `ecommerce_admin_api_client` DISABLE KEYS */;

INSERT INTO `ecommerce_admin_api_client` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`)
VALUES
	(1,'demo_client','a:0:{}','secret_demo_client','a:1:{i:0;s:8:\"password\";}');

/*!40000 ALTER TABLE `ecommerce_admin_api_client` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_admin_api_refresh_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_admin_api_refresh_token`;

CREATE TABLE `ecommerce_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `ecommerce_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_admin_user`;

CREATE TABLE `ecommerce_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_admin_user` WRITE;
/*!40000 ALTER TABLE `ecommerce_admin_user` DISABLE KEYS */;

INSERT INTO `ecommerce_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`)
VALUES
	(2,'sylius','sylius',1,'l0h239xxxzkcg4csg84cwksgs4so8gc','$argon2i$v=19$m=65536,t=4,p=1$bkgwSC8zVEtIemQyeXN2eQ$8+nSpWxyLwajH65AjSWIC5Ub0aymZ1VjvnjIkS8IH4s',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','sylius@example.com','sylius@example.com','2020-11-26 18:40:01','2020-11-26 18:40:01','John','Doe','en_US','argon2i'),
	(3,'api','api',1,'5xd60agvl808ogkg4k00g0osoc8swow','$argon2i$v=19$m=65536,t=4,p=1$NWhjT3h6YjZoSWU4Mjdzcg$4YkwyfjbpAmPuCoQwqeOmsnIzF6ORZMcv4l+/LT4xY8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','api@example.com','api@example.com','2020-11-26 18:40:01','2020-11-26 18:40:01','Luke','Brushwood','en_US','argon2i');

/*!40000 ALTER TABLE `ecommerce_admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_avatar_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_avatar_image`;

CREATE TABLE `ecommerce_avatar_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `ecommerce_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_avatar_image` WRITE;
/*!40000 ALTER TABLE `ecommerce_avatar_image` DISABLE KEYS */;

INSERT INTO `ecommerce_avatar_image` (`id`, `owner_id`, `type`, `path`)
VALUES
	(1,2,NULL,'02/32/63a6486d223872a224c91e6e8738.jpeg'),
	(2,3,NULL,'07/86/034705c3093a9c25e13593250927.jpeg');

/*!40000 ALTER TABLE `ecommerce_avatar_image` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_channel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_channel`;

CREATE TABLE `ecommerce_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  `menu_taxon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `ecommerce_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `ecommerce_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `ecommerce_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `ecommerce_shop_billing_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_channel` WRITE;
/*!40000 ALTER TABLE `ecommerce_channel` DISABLE KEYS */;

INSERT INTO `ecommerce_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `account_verification_required`, `skipping_payment_step_allowed`, `shop_billing_data_id`, `menu_taxon_id`)
VALUES
	(1,2,3,1,'FASHION_APP','Fashion Web Store','MediumSlateBlue',NULL,1,'localhost','2020-11-26 18:39:57','2020-11-26 18:39:57',NULL,'order_items_based',NULL,0,1,0,2,1),
	(2,2,3,1,'FASHION_WEB','Fashion Web Store','MediumSlateBlue',NULL,1,'localhost','2020-11-26 18:39:57','2020-11-26 18:39:57',NULL,'order_items_based',NULL,0,1,0,1,1),
	(3,2,3,1,'FASHION_EXTERNAL','Fashion Web Store','MediumSlateBlue',NULL,1,'localhost','2020-11-26 18:39:57','2020-11-26 18:39:57',NULL,'order_items_based',NULL,0,1,0,3,1);

/*!40000 ALTER TABLE `ecommerce_channel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_channel_countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_channel_countries`;

CREATE TABLE `ecommerce_channel_countries` (
  `channel_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`country_id`),
  KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  KEY `IDX_D96E51AEF92F3E70` (`country_id`),
  CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `ecommerce_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_channel_currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_channel_currencies`;

CREATE TABLE `ecommerce_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `ecommerce_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_channel_currencies` WRITE;
/*!40000 ALTER TABLE `ecommerce_channel_currencies` DISABLE KEYS */;

INSERT INTO `ecommerce_channel_currencies` (`channel_id`, `currency_id`)
VALUES
	(1,3),
	(2,3),
	(3,3);

/*!40000 ALTER TABLE `ecommerce_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_channel_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_channel_locales`;

CREATE TABLE `ecommerce_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `ecommerce_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_channel_locales` WRITE;
/*!40000 ALTER TABLE `ecommerce_channel_locales` DISABLE KEYS */;

INSERT INTO `ecommerce_channel_locales` (`channel_id`, `locale_id`)
VALUES
	(2,2);

/*!40000 ALTER TABLE `ecommerce_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_channel_pricing
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_channel_pricing`;

CREATE TABLE `ecommerce_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `ecommerce_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_channel_pricing` WRITE;
/*!40000 ALTER TABLE `ecommerce_channel_pricing` DISABLE KEYS */;

INSERT INTO `ecommerce_channel_pricing` (`id`, `product_variant_id`, `price`, `channel_code`, `original_price`)
VALUES
	(1,1,2594,'FASHION_WEB',NULL),
	(2,2,7814,'FASHION_WEB',NULL),
	(3,3,2231,'FASHION_WEB',NULL),
	(4,4,2373,'FASHION_WEB',NULL),
	(5,5,8187,'FASHION_WEB',NULL),
	(6,6,3780,'FASHION_WEB',NULL),
	(7,7,6842,'FASHION_WEB',NULL),
	(8,8,157,'FASHION_WEB',NULL),
	(9,9,9990,'FASHION_WEB',NULL),
	(10,10,2916,'FASHION_WEB',NULL),
	(11,11,8946,'FASHION_WEB',NULL),
	(12,12,1687,'FASHION_WEB',NULL),
	(13,13,6292,'FASHION_WEB',NULL),
	(14,14,9401,'FASHION_WEB',NULL),
	(15,15,1154,'FASHION_WEB',NULL),
	(16,16,9983,'FASHION_WEB',NULL),
	(17,17,9039,'FASHION_WEB',NULL),
	(18,18,3541,'FASHION_WEB',NULL),
	(19,19,1932,'FASHION_WEB',NULL),
	(20,20,4303,'FASHION_WEB',NULL),
	(21,21,996,'FASHION_WEB',NULL),
	(22,22,951,'FASHION_WEB',NULL),
	(23,23,8640,'FASHION_WEB',NULL),
	(24,24,9164,'FASHION_WEB',NULL),
	(25,25,4724,'FASHION_WEB',NULL),
	(26,26,3572,'FASHION_WEB',NULL),
	(27,27,640,'FASHION_WEB',NULL),
	(28,28,4016,'FASHION_WEB',NULL),
	(29,29,9510,'FASHION_WEB',NULL),
	(30,30,894,'FASHION_WEB',NULL),
	(31,31,4504,'FASHION_WEB',NULL),
	(32,32,1142,'FASHION_WEB',NULL),
	(33,33,1115,'FASHION_WEB',NULL),
	(34,34,8734,'FASHION_WEB',NULL),
	(35,35,5359,'FASHION_WEB',NULL),
	(36,36,336,'FASHION_WEB',NULL),
	(37,37,527,'FASHION_WEB',NULL),
	(38,38,7382,'FASHION_WEB',NULL),
	(39,39,1434,'FASHION_WEB',NULL),
	(40,40,7712,'FASHION_WEB',NULL),
	(41,41,2333,'FASHION_WEB',NULL),
	(42,42,1922,'FASHION_WEB',NULL),
	(43,43,5263,'FASHION_WEB',NULL),
	(44,44,7111,'FASHION_WEB',NULL),
	(45,45,6320,'FASHION_WEB',NULL),
	(46,46,6746,'FASHION_WEB',NULL),
	(47,47,4752,'FASHION_WEB',NULL),
	(48,48,9344,'FASHION_WEB',NULL),
	(49,49,2654,'FASHION_WEB',NULL),
	(50,50,7171,'FASHION_WEB',NULL),
	(51,51,6683,'FASHION_WEB',NULL),
	(52,52,3958,'FASHION_WEB',NULL),
	(53,53,9713,'FASHION_WEB',NULL),
	(54,54,7723,'FASHION_WEB',NULL),
	(55,55,5953,'FASHION_WEB',NULL),
	(56,56,7871,'FASHION_WEB',NULL),
	(57,57,4023,'FASHION_WEB',NULL),
	(58,58,6211,'FASHION_WEB',NULL),
	(59,59,6607,'FASHION_WEB',NULL),
	(60,60,9531,'FASHION_WEB',NULL),
	(61,61,9531,'FASHION_WEB',NULL),
	(62,62,9842,'FASHION_WEB',NULL),
	(63,63,6675,'FASHION_WEB',NULL),
	(64,64,2346,'FASHION_WEB',NULL),
	(65,65,4113,'FASHION_WEB',NULL),
	(66,66,7830,'FASHION_WEB',NULL),
	(67,67,527,'FASHION_WEB',NULL),
	(68,68,9648,'FASHION_WEB',NULL),
	(69,69,6778,'FASHION_WEB',NULL),
	(70,70,1232,'FASHION_WEB',NULL),
	(71,71,4381,'FASHION_WEB',NULL),
	(72,72,5667,'FASHION_WEB',NULL),
	(73,73,5315,'FASHION_WEB',NULL),
	(74,74,7240,'FASHION_WEB',NULL),
	(75,75,9826,'FASHION_WEB',NULL),
	(76,76,6611,'FASHION_WEB',NULL),
	(77,77,2133,'FASHION_WEB',NULL),
	(78,78,5325,'FASHION_WEB',NULL),
	(79,79,7590,'FASHION_WEB',NULL),
	(80,80,7761,'FASHION_WEB',NULL),
	(81,81,4852,'FASHION_WEB',NULL),
	(82,82,5454,'FASHION_WEB',NULL),
	(83,83,9783,'FASHION_WEB',NULL),
	(84,84,617,'FASHION_WEB',NULL),
	(85,85,487,'FASHION_WEB',NULL),
	(86,86,160,'FASHION_WEB',NULL),
	(87,87,6376,'FASHION_WEB',NULL),
	(88,88,3469,'FASHION_WEB',NULL),
	(89,89,9412,'FASHION_WEB',NULL),
	(90,90,5811,'FASHION_WEB',NULL),
	(91,91,2606,'FASHION_WEB',NULL),
	(92,92,7822,'FASHION_WEB',NULL),
	(93,93,3238,'FASHION_WEB',NULL),
	(94,94,6739,'FASHION_WEB',NULL),
	(95,95,4007,'FASHION_WEB',NULL),
	(96,96,3777,'FASHION_WEB',NULL),
	(97,97,4009,'FASHION_WEB',NULL),
	(98,98,6227,'FASHION_WEB',NULL),
	(99,99,5302,'FASHION_WEB',NULL),
	(100,100,4307,'FASHION_WEB',NULL),
	(101,101,3436,'FASHION_WEB',NULL),
	(102,102,3589,'FASHION_WEB',NULL),
	(103,103,1683,'FASHION_WEB',NULL),
	(104,104,8055,'FASHION_WEB',NULL),
	(105,105,4523,'FASHION_WEB',NULL),
	(106,106,5961,'FASHION_WEB',NULL),
	(107,107,5862,'FASHION_WEB',NULL),
	(108,108,4795,'FASHION_WEB',NULL),
	(109,109,1078,'FASHION_WEB',NULL),
	(110,110,6821,'FASHION_WEB',NULL),
	(111,111,6368,'FASHION_WEB',NULL),
	(112,112,4718,'FASHION_WEB',NULL),
	(113,113,3902,'FASHION_WEB',NULL),
	(114,114,6665,'FASHION_WEB',NULL),
	(115,115,6663,'FASHION_WEB',NULL),
	(116,116,9286,'FASHION_WEB',NULL),
	(117,117,4280,'FASHION_WEB',NULL),
	(118,118,2875,'FASHION_WEB',NULL),
	(119,119,7602,'FASHION_WEB',NULL);

/*!40000 ALTER TABLE `ecommerce_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_country`;

CREATE TABLE `ecommerce_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_country` WRITE;
/*!40000 ALTER TABLE `ecommerce_country` DISABLE KEYS */;

INSERT INTO `ecommerce_country` (`id`, `code`, `enabled`)
VALUES
	(1,'US',1),
	(2,'FR',1),
	(3,'DE',1),
	(4,'AU',1),
	(5,'CA',1),
	(6,'MX',1),
	(7,'NZ',1),
	(8,'PT',1),
	(9,'ES',1),
	(10,'CN',1),
	(11,'GB',1),
	(12,'PL',1);

/*!40000 ALTER TABLE `ecommerce_country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_currency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_currency`;

CREATE TABLE `ecommerce_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_currency` WRITE;
/*!40000 ALTER TABLE `ecommerce_currency` DISABLE KEYS */;

INSERT INTO `ecommerce_currency` (`id`, `code`, `created_at`, `updated_at`)
VALUES
	(2,'EUR','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(3,'USD','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(4,'PLN','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(5,'CAD','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(6,'CNY','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(7,'NZD','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(8,'GBP','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(9,'AUD','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(10,'MXN','2020-11-26 18:39:57','2020-11-26 18:39:57');

/*!40000 ALTER TABLE `ecommerce_currency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_customer`;

CREATE TABLE `ecommerce_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `ecommerce_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `ecommerce_customer_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_customer` WRITE;
/*!40000 ALTER TABLE `ecommerce_customer` DISABLE KEYS */;

INSERT INTO `ecommerce_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`)
VALUES
	(1,2,NULL,'shop@example.com','shop@example.com','John','Doe','1952-08-04 07:01:46','u','2020-11-26 18:39:57','2020-11-26 18:39:57','+14863763192',0),
	(2,1,NULL,'annabelle14@brown.com','annabelle14@brown.com','Christian','Connelly','1998-03-24 17:07:08','u','2020-11-26 18:39:57','2020-11-26 18:39:58','235-376-9341 x4973',0),
	(3,1,NULL,'madalyn13@gmail.com','madalyn13@gmail.com','Destin','Rath','1973-10-28 05:27:59','u','2020-11-26 18:39:58','2020-11-26 18:39:58','723.552.7776',0),
	(4,2,NULL,'gbosco@breitenberg.biz','gbosco@breitenberg.biz','Louvenia','Heller','1998-12-19 23:05:07','u','2020-11-26 18:39:58','2020-11-26 18:39:58','+1-798-324-1387',0),
	(5,2,NULL,'ebert.gonzalo@gmail.com','ebert.gonzalo@gmail.com','Katrina','Schuster','1946-05-10 05:00:29','u','2020-11-26 18:39:58','2020-11-26 18:39:58','+1 (508) 772-1055',0),
	(6,1,NULL,'little.zachariah@ortiz.com','little.zachariah@ortiz.com','Syble','Kilback','1942-10-21 20:53:43','u','2020-11-26 18:39:58','2020-11-26 18:39:58','1-834-342-9875',0),
	(7,2,NULL,'carson.boyer@buckridge.com','carson.boyer@buckridge.com','Tessie','Oberbrunner','1970-04-11 11:26:03','u','2020-11-26 18:39:58','2020-11-26 18:39:58','716.574.7744',0),
	(8,1,NULL,'qjerde@hotmail.com','qjerde@hotmail.com','Rodrick','Friesen','1934-08-20 22:34:37','u','2020-11-26 18:39:58','2020-11-26 18:39:59','920.812.1643 x658',0),
	(9,2,NULL,'dorian72@hotmail.com','dorian72@hotmail.com','Lukas','Gerlach','2003-02-02 02:01:38','u','2020-11-26 18:39:59','2020-11-26 18:39:59','1-945-324-9297 x06370',0),
	(10,2,NULL,'chamill@hickle.com','chamill@hickle.com','Rozella','Doyle','2013-07-29 05:10:37','u','2020-11-26 18:39:59','2020-11-26 18:39:59','859.814.7748 x1506',0),
	(11,1,NULL,'rgrimes@nienow.info','rgrimes@nienow.info','Vance','Lind','2007-09-12 18:18:29','u','2020-11-26 18:39:59','2020-11-26 18:39:59','805-588-0997',0),
	(12,1,NULL,'lind.chad@yahoo.com','lind.chad@yahoo.com','Fae','Grimes','2012-08-19 06:01:38','u','2020-11-26 18:39:59','2020-11-26 18:39:59','490-875-3978 x4880',0),
	(13,1,NULL,'maribel.carroll@gmail.com','maribel.carroll@gmail.com','Noemi','Ortiz','1940-02-21 08:00:52','u','2020-11-26 18:39:59','2020-11-26 18:40:00','298.573.5073 x083',0),
	(14,1,NULL,'kshlerin.keagan@runte.com','kshlerin.keagan@runte.com','Shanna','Mayert','1937-12-22 07:50:32','u','2020-11-26 18:40:00','2020-11-26 18:40:00','+1-339-216-1783',0),
	(15,1,NULL,'buford52@gmail.com','buford52@gmail.com','Alexandrea','Adams','2017-01-06 15:37:49','u','2020-11-26 18:40:00','2020-11-26 18:40:00','841-347-5159 x7493',0),
	(16,2,NULL,'runte.franz@yahoo.com','runte.franz@yahoo.com','Adella','Becker','2010-12-24 22:04:55','u','2020-11-26 18:40:00','2020-11-26 18:40:00','293.492.6383 x7886',0),
	(17,1,NULL,'douglas.miller@breitenberg.com','douglas.miller@breitenberg.com','Mary','Maggio','1972-05-01 20:43:27','u','2020-11-26 18:40:00','2020-11-26 18:40:00','640-297-3969',0),
	(18,2,NULL,'dayne.robel@yahoo.com','dayne.robel@yahoo.com','Baron','Pacocha','2017-06-29 09:24:28','u','2020-11-26 18:40:00','2020-11-26 18:40:00','335.718.9008 x846',0),
	(19,2,NULL,'lueilwitz.alexandro@yahoo.com','lueilwitz.alexandro@yahoo.com','Graham','Prohaska','1981-01-15 14:24:09','u','2020-11-26 18:40:01','2020-11-26 18:40:01','+1 (262) 779-9825',0),
	(20,2,NULL,'nhaag@hotmail.com','nhaag@hotmail.com','Aylin','Fisher','1962-08-22 17:50:27','u','2020-11-26 18:40:01','2020-11-26 18:40:01','(704) 775-5745',0),
	(21,2,NULL,'carmen09@yahoo.com','carmen09@yahoo.com','Kimberly','Torp','1991-11-12 19:46:53','u','2020-11-26 18:40:01','2020-11-26 18:40:01','1-458-984-4070 x95899',0);

/*!40000 ALTER TABLE `ecommerce_customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_customer_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_customer_group`;

CREATE TABLE `ecommerce_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_customer_group` WRITE;
/*!40000 ALTER TABLE `ecommerce_customer_group` DISABLE KEYS */;

INSERT INTO `ecommerce_customer_group` (`id`, `code`, `name`)
VALUES
	(1,'retail','Retail'),
	(2,'wholesale','Wholesale');

/*!40000 ALTER TABLE `ecommerce_customer_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_exchange_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_exchange_rate`;

CREATE TABLE `ecommerce_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `ecommerce_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `ecommerce_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_gateway_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_gateway_config`;

CREATE TABLE `ecommerce_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_gateway_config` WRITE;
/*!40000 ALTER TABLE `ecommerce_gateway_config` DISABLE KEYS */;

INSERT INTO `ecommerce_gateway_config` (`id`, `config`, `gateway_name`, `factory_name`)
VALUES
	(1,'[]','Offline','offline'),
	(2,'[]','Offline','offline');

/*!40000 ALTER TABLE `ecommerce_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_locale`;

CREATE TABLE `ecommerce_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_locale` WRITE;
/*!40000 ALTER TABLE `ecommerce_locale` DISABLE KEYS */;

INSERT INTO `ecommerce_locale` (`id`, `code`, `created_at`, `updated_at`)
VALUES
	(2,'en_US','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(3,'de_DE','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(4,'fr_FR','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(5,'pl_PL','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(6,'es_ES','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(7,'es_MX','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(8,'pt_PT','2020-11-26 18:39:57','2020-11-26 18:39:57'),
	(9,'zh_CN','2020-11-26 18:39:57','2020-11-26 18:39:57');

/*!40000 ALTER TABLE `ecommerce_locale` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_migrations`;

CREATE TABLE `ecommerce_migrations` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_migrations` WRITE;
/*!40000 ALTER TABLE `ecommerce_migrations` DISABLE KEYS */;

INSERT INTO `ecommerce_migrations` (`version`, `executed_at`, `execution_time`)
VALUES
	('App\\Migrations\\Version20200907102535','2020-11-26 18:37:55',59),
	('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20161202011556','2020-11-26 18:37:52',1318),
	('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170313125424','2020-11-26 18:37:53',429),
	('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170711151342','2020-11-26 18:37:54',1288),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555','2020-11-26 18:37:47',3521),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131','2020-11-26 18:37:50',21),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137','2020-11-26 18:37:50',52),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325','2020-11-26 18:37:50',4),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441','2020-11-26 18:37:50',48),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422','2020-11-26 18:37:51',9),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514','2020-11-26 18:37:51',12),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334','2020-11-26 18:37:51',14),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558','2020-11-26 18:37:51',7),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125','2020-11-26 18:37:51',40),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417','2020-11-26 18:37:51',49),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436','2020-11-26 18:37:51',7),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250','2020-11-26 18:37:51',23),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955','2020-11-26 18:37:51',5),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058','2020-11-26 18:37:51',59),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839','2020-11-26 18:37:51',5),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520','2020-11-26 18:37:51',5),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345','2020-11-26 18:37:51',4),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250','2020-11-26 18:37:51',20),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710','2020-11-26 18:37:51',61),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031','2020-11-26 18:37:51',15),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621','2020-11-26 18:37:51',29),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604','2020-11-26 18:37:51',36),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010','2020-11-26 18:37:51',75),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352','2020-11-26 18:37:51',5),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945','2020-11-26 18:37:51',25),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415','2020-11-26 18:37:51',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056','2020-11-26 18:37:51',5),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122','2020-11-26 18:37:52',32),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128','2020-11-26 18:37:52',10),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916','2020-11-26 18:37:52',25),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039','2020-11-26 18:37:52',10),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349','2020-11-26 18:37:52',24),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211','2020-11-26 18:37:52',58),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409','2020-11-26 18:37:52',8),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544','2020-11-26 18:37:52',8),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011','2020-11-26 18:37:52',4),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638','2020-11-26 18:37:52',36),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651','2020-11-26 18:37:52',37),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702','2020-11-26 18:37:52',50),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429','2020-11-26 18:37:52',79),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152','2020-11-26 18:37:52',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908','2020-11-26 18:37:52',7),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815','2020-11-26 18:37:52',6),
	('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101','2020-11-26 18:37:52',19);

/*!40000 ALTER TABLE `ecommerce_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_order`;

CREATE TABLE `ecommerce_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `ecommerce_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `ecommerce_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `ecommerce_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `ecommerce_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_order` WRITE;
/*!40000 ALTER TABLE `ecommerce_order` DISABLE KEYS */;

INSERT INTO `ecommerce_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`)
VALUES
	(1,2,3,2,NULL,14,'000000001',NULL,'fulfilled','2020-02-28 17:51:56',44298,855,45153,'2020-11-26 18:40:09','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','QUJXDdhHqS',NULL),
	(2,5,6,2,NULL,10,'000000002',NULL,'fulfilled','2020-03-15 07:50:11',38132,855,38987,'2020-11-26 18:40:10','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','4suD6OGvR4',NULL),
	(3,8,9,2,NULL,9,'000000003',NULL,'fulfilled','2020-03-21 22:05:02',65532,855,66387,'2020-11-26 18:40:10','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','KaDxC9nub4',NULL),
	(4,11,12,2,NULL,9,'000000004',NULL,'fulfilled','2020-04-16 05:37:06',101645,855,102500,'2020-11-26 18:40:10','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','ifEgtY2tOJ',NULL),
	(5,14,15,2,NULL,5,'000000005',NULL,'fulfilled','2020-05-26 08:36:01',49343,510,49853,'2020-11-26 18:40:10','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','lMeq8tuCsW',NULL),
	(6,17,18,2,NULL,13,'000000006',NULL,'fulfilled','2020-06-05 00:51:54',28905,510,29415,'2020-11-26 18:40:10','2020-11-26 18:40:10','USD','en_US','completed','paid','shipped','I9gnZjuNIL',NULL),
	(7,20,21,2,NULL,14,'000000007',NULL,'fulfilled','2020-06-23 05:24:39',71978,855,72833,'2020-11-26 18:40:10','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','odxTtuwdAp',NULL),
	(8,23,24,2,NULL,10,'000000008',NULL,'fulfilled','2020-08-01 05:46:16',14402,855,15257,'2020-11-26 18:40:11','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','im8RDnDdMS',NULL),
	(9,26,27,2,NULL,9,'000000009','Voluptatem dignissimos nulla suscipit ea.','fulfilled','2020-08-09 02:58:57',10516,855,11371,'2020-11-26 18:40:11','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','Yi6weCimnA',NULL),
	(10,29,30,2,NULL,11,'000000010',NULL,'fulfilled','2020-08-27 11:20:14',42670,510,43180,'2020-11-26 18:40:11','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','Rp8l9cqYEM',NULL),
	(11,32,33,2,NULL,14,'000000011',NULL,'fulfilled','2020-10-08 17:24:35',35079,855,35934,'2020-11-26 18:40:11','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','xlWHqW_2XB',NULL),
	(12,35,36,2,NULL,5,'000000012',NULL,'fulfilled','2020-11-12 18:51:04',1115,855,1970,'2020-11-26 18:40:11','2020-11-26 18:40:11','USD','en_US','completed','paid','shipped','4oNe6P5H18',NULL),
	(13,38,39,2,NULL,4,'000000013','Enim qui sunt quae nihil non.','new','2019-11-30 02:24:32',81783,855,82638,'2020-11-26 18:40:12','2020-11-26 18:40:12','USD','en_US','completed','awaiting_payment','ready','snVpaBNtN~',NULL),
	(14,41,42,2,NULL,11,'000000014',NULL,'new','2019-12-17 02:45:40',54404,855,55259,'2020-11-26 18:40:12','2020-11-26 18:40:12','USD','en_US','completed','awaiting_payment','ready','rd-CnJgB3b',NULL),
	(15,44,45,2,NULL,19,'000000015',NULL,'new','2020-02-14 06:34:17',9286,855,10141,'2020-11-26 18:40:12','2020-11-26 18:40:12','USD','en_US','completed','awaiting_payment','ready','7l0IrCr-Ca',NULL),
	(16,47,48,2,NULL,1,'000000016',NULL,'new','2020-04-02 10:08:47',19408,855,20263,'2020-11-26 18:40:12','2020-11-26 18:40:12','USD','en_US','completed','awaiting_payment','ready','vdsS-CHCqW',NULL),
	(17,50,51,2,NULL,14,'000000017',NULL,'new','2020-08-22 10:52:57',14862,855,15717,'2020-11-26 18:40:12','2020-11-26 18:40:12','USD','en_US','completed','awaiting_payment','ready','14KJyTkiro',NULL),
	(18,53,54,2,NULL,5,'000000018',NULL,'new','2020-09-19 09:11:58',25581,510,26091,'2020-11-26 18:40:12','2020-11-26 18:40:13','USD','en_US','completed','awaiting_payment','ready','bdLjn3op-M',NULL),
	(19,56,57,2,NULL,9,'000000019',NULL,'new','2020-09-23 23:10:08',52677,855,53532,'2020-11-26 18:40:13','2020-11-26 18:40:13','USD','en_US','completed','awaiting_payment','ready','soorVZUnJR',NULL),
	(20,59,60,2,NULL,19,'000000020',NULL,'new','2020-11-06 11:48:58',31566,510,32076,'2020-11-26 18:40:13','2020-11-26 18:40:13','USD','en_US','completed','awaiting_payment','ready','_P6CmvNaW9',NULL);

/*!40000 ALTER TABLE `ecommerce_order` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_order_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_order_item`;

CREATE TABLE `ecommerce_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `ecommerce_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `ecommerce_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_order_item` WRITE;
/*!40000 ALTER TABLE `ecommerce_order_item` DISABLE KEYS */;

INSERT INTO `ecommerce_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`)
VALUES
	(1,1,7,5,6842,33455,0,33455,0,'Loose white designer T-Shirt','M'),
	(2,1,86,2,160,313,0,313,0,'330M slim fit jeans','M'),
	(3,1,85,8,487,3810,0,3810,0,'330M slim fit jeans','S'),
	(4,1,101,2,3436,6720,0,6720,0,'727F patched cropped jeans','M'),
	(5,2,83,4,9783,38132,0,38132,0,'911M regular fit jeans','XL'),
	(6,3,38,5,7382,36355,0,36355,0,'Beige strappy summer dress','M Petite'),
	(7,3,107,1,5862,5774,0,5774,0,'111F patched jeans with fancy badges','L'),
	(8,3,47,5,4752,23403,0,23403,0,'Beige strappy summer dress','XXL Petite'),
	(9,4,7,5,6842,33877,0,33877,0,'Loose white designer T-Shirt','M'),
	(10,4,32,2,1142,2262,0,2262,0,'Knitted wool-blend green cap',''),
	(11,4,110,4,6821,27018,0,27018,0,'000F office grey jeans','S'),
	(12,4,23,4,8640,34223,0,34223,0,'Raglan grey & black Tee','L'),
	(13,4,100,1,4307,4265,0,4265,0,'727F patched cropped jeans','S'),
	(14,5,103,1,1683,1650,0,1650,0,'727F patched cropped jeans','XL'),
	(15,5,23,1,8640,8468,0,8468,0,'Raglan grey & black Tee','L'),
	(16,5,119,2,7602,14902,0,14902,0,'666F boyfriend jeans with rips','XXL'),
	(17,5,40,3,7712,22676,0,22676,0,'Beige strappy summer dress','M Tall'),
	(18,5,36,5,336,1647,0,1647,0,'Beige strappy summer dress','S Regular'),
	(19,6,44,4,7111,27493,0,27493,0,'Beige strappy summer dress','XL Petite'),
	(20,6,85,3,487,1412,0,1412,0,'330M slim fit jeans','S'),
	(21,7,29,1,9510,9379,0,9379,0,'Oversize white cotton T-Shirt','XL'),
	(22,7,77,2,2133,4208,0,4208,0,'Ruffle wrap festival dress','XXL Petite'),
	(23,7,46,5,6746,33268,0,33268,0,'Beige strappy summer dress','XL Tall'),
	(24,7,111,4,6368,25123,0,25123,0,'000F office grey jeans','M'),
	(25,8,113,3,3902,10946,0,10946,0,'000F office grey jeans','XL'),
	(26,8,70,3,1232,3456,0,3456,0,'Ruffle wrap festival dress','M Tall'),
	(27,9,70,2,1232,2250,0,2250,0,'Ruffle wrap festival dress','M Tall'),
	(28,9,84,1,617,563,0,563,0,'911M regular fit jeans','XXL'),
	(29,9,12,5,1687,7703,0,7703,0,'Ribbed copper slim fit Tee','M'),
	(30,10,34,5,8734,42670,0,42670,0,'Cashmere-blend violet beanie',''),
	(31,11,85,2,487,974,0,974,0,'330M slim fit jeans','S'),
	(32,11,110,5,6821,34105,0,34105,0,'000F office grey jeans','S'),
	(33,12,33,1,1115,1115,0,1115,0,'Knitted white pompom cap',''),
	(34,13,9,5,9990,49950,0,49950,0,'Loose white designer T-Shirt','XL'),
	(35,13,47,2,4752,9504,0,9504,0,'Beige strappy summer dress','XXL Petite'),
	(36,13,97,5,4009,20045,0,20045,0,'007M black elegance jeans','L'),
	(37,13,32,2,1142,2284,0,2284,0,'Knitted wool-blend green cap',''),
	(38,14,9,4,9990,39960,0,39960,0,'Loose white designer T-Shirt','XL'),
	(39,14,32,5,1142,5710,0,5710,0,'Knitted wool-blend green cap',''),
	(40,14,34,1,8734,8734,0,8734,0,'Cashmere-blend violet beanie',''),
	(41,15,116,1,9286,9286,0,9286,0,'666F boyfriend jeans with rips','M'),
	(42,16,81,4,4852,19408,0,19408,0,'911M regular fit jeans','M'),
	(43,17,85,1,487,487,0,487,0,'330M slim fit jeans','S'),
	(44,17,118,5,2875,14375,0,14375,0,'666F boyfriend jeans with rips','XL'),
	(45,18,31,3,4504,13512,0,13512,0,'Knitted burgundy winter cap',''),
	(46,18,57,3,4023,12069,0,12069,0,'Off shoulder boho dress','L Regular'),
	(47,19,81,5,4852,24260,0,24260,0,'911M regular fit jeans','M'),
	(48,19,85,3,487,1461,0,1461,0,'330M slim fit jeans','S'),
	(49,19,94,4,6739,26956,0,26956,0,'990M regular fit jeans','XXL'),
	(50,20,81,5,4852,24260,0,24260,0,'911M regular fit jeans','M'),
	(51,20,4,2,2373,4746,0,4746,0,'Everyday white basic T-Shirt','XL'),
	(52,20,27,4,640,2560,0,2560,0,'Oversize white cotton T-Shirt','M');

/*!40000 ALTER TABLE `ecommerce_order_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_order_item_unit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_order_item_unit`;

CREATE TABLE `ecommerce_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `ecommerce_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `ecommerce_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_order_item_unit` WRITE;
/*!40000 ALTER TABLE `ecommerce_order_item_unit` DISABLE KEYS */;

INSERT INTO `ecommerce_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`)
VALUES
	(1,1,1,-151,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(2,1,1,-151,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(3,1,1,-151,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(4,1,1,-151,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(5,1,1,-151,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(6,2,1,-4,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(7,2,1,-3,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(8,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(9,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(10,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(11,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(12,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(13,3,1,-11,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(14,3,1,-10,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(15,3,1,-10,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(16,4,1,-76,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(17,4,1,-76,'2020-11-26 18:40:09','2020-11-26 18:40:10'),
	(18,5,2,-250,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(19,5,2,-250,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(20,5,2,-250,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(21,5,2,-250,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(22,6,3,-111,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(23,6,3,-111,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(24,6,3,-111,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(25,6,3,-111,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(26,6,3,-111,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(27,7,3,-88,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(28,8,3,-72,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(29,8,3,-72,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(30,8,3,-71,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(31,8,3,-71,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(32,8,3,-71,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(33,9,4,-67,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(34,9,4,-67,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(35,9,4,-67,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(36,9,4,-66,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(37,9,4,-66,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(38,10,4,-11,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(39,10,4,-11,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(40,11,4,-67,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(41,11,4,-67,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(42,11,4,-66,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(43,11,4,-66,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(44,12,4,-85,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(45,12,4,-84,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(46,12,4,-84,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(47,12,4,-84,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(48,13,4,-42,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(49,14,5,-33,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(50,15,5,-172,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(51,16,5,-151,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(52,16,5,-151,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(53,17,5,-154,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(54,17,5,-153,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(55,17,5,-153,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(56,18,5,-7,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(57,18,5,-7,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(58,18,5,-7,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(59,18,5,-6,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(60,18,5,-6,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(61,19,6,-238,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(62,19,6,-238,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(63,19,6,-238,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(64,19,6,-237,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(65,20,6,-17,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(66,20,6,-16,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(67,20,6,-16,'2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(68,21,7,-131,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(69,22,7,-29,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(70,22,7,-29,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(71,23,7,-93,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(72,23,7,-93,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(73,23,7,-92,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(74,23,7,-92,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(75,23,7,-92,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(76,24,7,-88,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(77,24,7,-87,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(78,24,7,-87,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(79,24,7,-87,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(80,25,8,-254,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(81,25,8,-253,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(82,25,8,-253,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(83,26,8,-80,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(84,26,8,-80,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(85,26,8,-80,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(86,27,9,-107,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(87,27,9,-107,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(88,28,9,-54,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(89,29,9,-147,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(90,29,9,-147,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(91,29,9,-146,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(92,29,9,-146,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(93,29,9,-146,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(94,30,10,-200,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(95,30,10,-200,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(96,30,10,-200,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(97,30,10,-200,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(98,30,10,-200,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(99,31,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(100,31,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(101,32,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(102,32,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(103,32,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(104,32,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(105,32,11,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(106,33,12,0,'2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(107,34,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(108,34,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(109,34,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(110,34,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(111,34,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(112,35,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(113,35,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(114,36,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(115,36,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(116,36,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(117,36,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(118,36,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(119,37,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(120,37,13,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(121,38,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(122,38,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(123,38,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(124,38,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(125,39,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(126,39,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(127,39,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(128,39,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(129,39,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(130,40,14,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(131,41,15,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(132,42,16,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(133,42,16,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(134,42,16,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(135,42,16,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(136,43,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(137,44,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(138,44,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(139,44,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(140,44,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(141,44,17,0,'2020-11-26 18:40:12','2020-11-26 18:40:12'),
	(142,45,18,0,'2020-11-26 18:40:12','2020-11-26 18:40:13'),
	(143,45,18,0,'2020-11-26 18:40:12','2020-11-26 18:40:13'),
	(144,45,18,0,'2020-11-26 18:40:12','2020-11-26 18:40:13'),
	(145,46,18,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(146,46,18,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(147,46,18,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(148,47,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(149,47,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(150,47,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(151,47,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(152,47,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(153,48,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(154,48,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(155,48,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(156,49,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(157,49,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(158,49,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(159,49,19,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(160,50,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(161,50,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(162,50,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(163,50,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(164,50,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(165,51,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(166,51,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(167,52,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(168,52,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(169,52,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13'),
	(170,52,20,0,'2020-11-26 18:40:13','2020-11-26 18:40:13');

/*!40000 ALTER TABLE `ecommerce_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_order_sequence
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_order_sequence`;

CREATE TABLE `ecommerce_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_order_sequence` WRITE;
/*!40000 ALTER TABLE `ecommerce_order_sequence` DISABLE KEYS */;

INSERT INTO `ecommerce_order_sequence` (`id`, `idx`, `version`)
VALUES
	(1,20,4);

/*!40000 ALTER TABLE `ecommerce_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_payment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_payment`;

CREATE TABLE `ecommerce_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `ecommerce_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `ecommerce_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_payment` WRITE;
/*!40000 ALTER TABLE `ecommerce_payment` DISABLE KEYS */;

INSERT INTO `ecommerce_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'USD',45153,'completed','[]','2020-02-28 17:51:56','2020-11-26 18:40:10'),
	(2,2,2,'USD',38987,'completed','[]','2020-03-15 07:50:11','2020-11-26 18:40:10'),
	(3,1,3,'USD',66387,'completed','[]','2020-03-21 22:05:02','2020-11-26 18:40:10'),
	(4,1,4,'USD',102500,'completed','[]','2020-04-16 05:37:06','2020-11-26 18:40:10'),
	(5,2,5,'USD',49853,'completed','[]','2020-05-26 08:36:01','2020-11-26 18:40:10'),
	(6,2,6,'USD',29415,'completed','[]','2020-06-05 00:51:54','2020-11-26 18:40:10'),
	(7,1,7,'USD',72833,'completed','[]','2020-06-23 05:24:39','2020-11-26 18:40:11'),
	(8,2,8,'USD',15257,'completed','[]','2020-08-01 05:46:16','2020-11-26 18:40:11'),
	(9,2,9,'USD',11371,'completed','[]','2020-08-09 02:58:57','2020-11-26 18:40:11'),
	(10,1,10,'USD',43180,'completed','[]','2020-08-27 11:20:14','2020-11-26 18:40:11'),
	(11,1,11,'USD',35934,'completed','[]','2020-10-08 17:24:35','2020-11-26 18:40:11'),
	(12,2,12,'USD',1970,'completed','[]','2020-11-12 18:51:04','2020-11-26 18:40:11'),
	(13,2,13,'USD',82638,'new','[]','2019-11-30 02:24:32','2020-11-26 18:40:12'),
	(14,1,14,'USD',55259,'new','[]','2019-12-17 02:45:40','2020-11-26 18:40:12'),
	(15,2,15,'USD',10141,'new','[]','2020-02-14 06:34:17','2020-11-26 18:40:12'),
	(16,2,16,'USD',20263,'new','[]','2020-04-02 10:08:47','2020-11-26 18:40:12'),
	(17,1,17,'USD',15717,'new','[]','2020-08-22 10:52:57','2020-11-26 18:40:12'),
	(18,2,18,'USD',26091,'new','[]','2020-09-19 09:11:58','2020-11-26 18:40:13'),
	(19,2,19,'USD',53532,'new','[]','2020-09-23 23:10:08','2020-11-26 18:40:13'),
	(20,1,20,'USD',32076,'new','[]','2020-11-06 11:48:58','2020-11-26 18:40:13');

/*!40000 ALTER TABLE `ecommerce_payment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_payment_method
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_payment_method`;

CREATE TABLE `ecommerce_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `ecommerce_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_payment_method` WRITE;
/*!40000 ALTER TABLE `ecommerce_payment_method` DISABLE KEYS */;

INSERT INTO `ecommerce_payment_method` (`id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`, `gateway_config_id`)
VALUES
	(1,'cash_on_delivery',NULL,1,0,'2020-11-26 18:39:57','2020-11-26 18:39:57',1),
	(2,'bank_transfer',NULL,1,1,'2020-11-26 18:39:57','2020-11-26 18:39:57',2);

/*!40000 ALTER TABLE `ecommerce_payment_method` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_payment_method_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_payment_method_channels`;

CREATE TABLE `ecommerce_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `ecommerce_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `ecommerce_payment_method_channels` DISABLE KEYS */;

INSERT INTO `ecommerce_payment_method_channels` (`payment_method_id`, `channel_id`)
VALUES
	(1,2),
	(2,2);

/*!40000 ALTER TABLE `ecommerce_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_payment_method_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_payment_method_translation`;

CREATE TABLE `ecommerce_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_payment_method_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`)
VALUES
	(1,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'en_US'),
	(2,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'de_DE'),
	(3,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'fr_FR'),
	(4,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'pl_PL'),
	(5,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'es_ES'),
	(6,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'es_MX'),
	(7,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'pt_PT'),
	(8,1,'Cash on delivery','Corrupti tempore aut commodi vitae qui.',NULL,'zh_CN'),
	(9,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'en_US'),
	(10,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'de_DE'),
	(11,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'fr_FR'),
	(12,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'pl_PL'),
	(13,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'es_ES'),
	(14,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'es_MX'),
	(15,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'pt_PT'),
	(16,2,'Bank transfer','Ipsum voluptatem fugit hic rem ratione.',NULL,'zh_CN');

/*!40000 ALTER TABLE `ecommerce_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_payment_security_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_payment_security_token`;

CREATE TABLE `ecommerce_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_paypal_plugin_pay_pal_credentials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_paypal_plugin_pay_pal_credentials`;

CREATE TABLE `ecommerce_paypal_plugin_pay_pal_credentials` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` datetime NOT NULL,
  `expiration_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C56F54AD5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_C56F54AD5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `ecommerce_payment_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product`;

CREATE TABLE `ecommerce_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `ecommerce_taxon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product` WRITE;
/*!40000 ALTER TABLE `ecommerce_product` DISABLE KEYS */;

INSERT INTO `ecommerce_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`)
VALUES
	(1,4,'Everyday_white_basic_T_Shirt','2020-11-25 12:35:17','2020-11-26 18:40:02',1,'match',0),
	(2,4,'Loose_white_designer_T_Shirt','2020-11-21 09:22:43','2020-11-26 18:40:02',1,'match',0),
	(3,4,'Ribbed_copper_slim_fit_Tee','2020-11-22 10:53:30','2020-11-26 18:40:02',1,'match',0),
	(4,3,'Sport_basic_white_T_Shirt','2020-11-22 21:04:09','2020-11-26 18:40:02',1,'match',0),
	(5,3,'Raglan_grey_&_black_Tee','2020-11-22 03:14:36','2020-11-26 18:40:02',1,'match',0),
	(6,3,'Oversize_white_cotton_T_Shirt','2020-11-24 00:28:58','2020-11-26 18:40:02',1,'match',0),
	(7,7,'Knitted_burgundy_winter_cap','2020-11-20 17:49:24','2020-11-26 18:40:08',1,'match',1),
	(8,6,'Knitted_wool_blend_green_cap','2020-11-26 02:12:57','2020-11-26 18:40:04',1,'match',0),
	(9,7,'Knitted_white_pompom_cap','2020-11-19 22:22:56','2020-11-26 18:40:04',1,'match',0),
	(10,6,'Cashmere_blend_violet_beanie','2020-11-25 13:22:37','2020-11-26 18:40:08',1,'match',3),
	(11,8,'Beige_strappy_summer_dress','2020-11-26 08:31:06','2020-11-26 18:40:05',1,'match',0),
	(12,8,'Off_shoulder_boho_dress','2020-11-22 15:49:24','2020-11-26 18:40:05',1,'match',0),
	(13,8,'Ruffle_wrap_festival_dress','2020-11-24 03:22:14','2020-11-26 18:40:05',1,'match',0),
	(14,10,'911M_regular_fit_jeans','2020-11-20 17:24:18','2020-11-26 18:40:08',1,'match',5),
	(15,10,'330M_slim_fit_jeans','2020-11-20 06:03:30','2020-11-26 18:40:08',1,'match',5),
	(16,10,'990M_regular_fit_jeans','2020-11-24 16:42:33','2020-11-26 18:40:08',1,'match',5),
	(17,10,'007M_black_elegance_jeans','2020-11-21 08:24:18','2020-11-26 18:40:08',1,'match',3),
	(18,11,'727F_patched_cropped_jeans','2020-11-26 05:03:47','2020-11-26 18:40:06',1,'match',0),
	(19,11,'111F_patched_jeans_with_fancy_badges','2020-11-26 08:11:27','2020-11-26 18:40:08',1,'match',4),
	(20,11,'000F_office_grey_jeans','2020-11-21 16:10:25','2020-11-26 18:40:08',1,'match',1),
	(21,11,'666F_boyfriend_jeans_with_rips','2020-11-22 21:10:17','2020-11-26 18:40:08',1,'match',1);

/*!40000 ALTER TABLE `ecommerce_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_association
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_association`;

CREATE TABLE `ecommerce_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `ecommerce_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_association` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_association` DISABLE KEYS */;

INSERT INTO `ecommerce_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`)
VALUES
	(1,1,10,'2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(2,1,5,'2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(3,1,8,'2020-11-26 18:40:09','2020-11-26 18:40:09');

/*!40000 ALTER TABLE `ecommerce_product_association` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_association_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_association_product`;

CREATE TABLE `ecommerce_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ecommerce_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_association_product` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_association_product` DISABLE KEYS */;

INSERT INTO `ecommerce_product_association_product` (`association_id`, `product_id`)
VALUES
	(1,8),
	(1,10),
	(2,4),
	(2,5),
	(3,8),
	(3,10);

/*!40000 ALTER TABLE `ecommerce_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_association_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_association_type`;

CREATE TABLE `ecommerce_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_association_type` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_association_type` DISABLE KEYS */;

INSERT INTO `ecommerce_product_association_type` (`id`, `code`, `created_at`, `updated_at`)
VALUES
	(1,'similar_products','2020-11-26 18:40:09','2020-11-26 18:40:09');

/*!40000 ALTER TABLE `ecommerce_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_association_type_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_association_type_translation`;

CREATE TABLE `ecommerce_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_association_type_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`)
VALUES
	(1,1,'Similar products','en_US'),
	(2,1,'Similar products','de_DE'),
	(3,1,'Similar products','fr_FR'),
	(4,1,'Similar products','pl_PL'),
	(5,1,'Similar products','es_ES'),
	(6,1,'Similar products','es_MX'),
	(7,1,'Similar products','pt_PT'),
	(8,1,'Similar products','zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_attribute`;

CREATE TABLE `ecommerce_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_attribute` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_attribute` DISABLE KEYS */;

INSERT INTO `ecommerce_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`)
VALUES
	(1,'t_shirt_brand','text','text','a:0:{}','2020-11-26 18:40:02','2020-11-26 18:40:02',0),
	(2,'t_shirt_collection','text','text','a:0:{}','2020-11-26 18:40:02','2020-11-26 18:40:02',1),
	(3,'t_shirt_material','text','text','a:0:{}','2020-11-26 18:40:02','2020-11-26 18:40:02',2),
	(4,'cap_brand','text','text','a:0:{}','2020-11-26 18:40:03','2020-11-26 18:40:03',3),
	(5,'cap_collection','text','text','a:0:{}','2020-11-26 18:40:03','2020-11-26 18:40:03',4),
	(6,'cap_material','text','text','a:0:{}','2020-11-26 18:40:03','2020-11-26 18:40:03',5),
	(7,'dress_brand','text','text','a:0:{}','2020-11-26 18:40:04','2020-11-26 18:40:04',6),
	(8,'dress_collection','text','text','a:0:{}','2020-11-26 18:40:04','2020-11-26 18:40:04',7),
	(9,'dress_material','text','text','a:0:{}','2020-11-26 18:40:04','2020-11-26 18:40:04',8),
	(10,'jeans_brand','text','text','a:0:{}','2020-11-26 18:40:06','2020-11-26 18:40:06',9),
	(11,'jeans_collection','text','text','a:0:{}','2020-11-26 18:40:06','2020-11-26 18:40:06',10),
	(12,'jeans_material','text','text','a:0:{}','2020-11-26 18:40:06','2020-11-26 18:40:06',11);

/*!40000 ALTER TABLE `ecommerce_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_attribute_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_attribute_translation`;

CREATE TABLE `ecommerce_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_attribute_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`)
VALUES
	(1,1,'T-shirt brand','en_US'),
	(2,1,'T-shirt brand','de_DE'),
	(3,1,'T-shirt brand','fr_FR'),
	(4,1,'T-shirt brand','pl_PL'),
	(5,1,'T-shirt brand','es_ES'),
	(6,1,'T-shirt brand','es_MX'),
	(7,1,'T-shirt brand','pt_PT'),
	(8,1,'T-shirt brand','zh_CN'),
	(9,2,'T-shirt collection','en_US'),
	(10,2,'T-shirt collection','de_DE'),
	(11,2,'T-shirt collection','fr_FR'),
	(12,2,'T-shirt collection','pl_PL'),
	(13,2,'T-shirt collection','es_ES'),
	(14,2,'T-shirt collection','es_MX'),
	(15,2,'T-shirt collection','pt_PT'),
	(16,2,'T-shirt collection','zh_CN'),
	(17,3,'T-shirt material','en_US'),
	(18,3,'T-shirt material','de_DE'),
	(19,3,'T-shirt material','fr_FR'),
	(20,3,'T-shirt material','pl_PL'),
	(21,3,'T-shirt material','es_ES'),
	(22,3,'T-shirt material','es_MX'),
	(23,3,'T-shirt material','pt_PT'),
	(24,3,'T-shirt material','zh_CN'),
	(25,4,'Cap brand','en_US'),
	(26,4,'Cap brand','de_DE'),
	(27,4,'Cap brand','fr_FR'),
	(28,4,'Cap brand','pl_PL'),
	(29,4,'Cap brand','es_ES'),
	(30,4,'Cap brand','es_MX'),
	(31,4,'Cap brand','pt_PT'),
	(32,4,'Cap brand','zh_CN'),
	(33,5,'Cap collection','en_US'),
	(34,5,'Cap collection','de_DE'),
	(35,5,'Cap collection','fr_FR'),
	(36,5,'Cap collection','pl_PL'),
	(37,5,'Cap collection','es_ES'),
	(38,5,'Cap collection','es_MX'),
	(39,5,'Cap collection','pt_PT'),
	(40,5,'Cap collection','zh_CN'),
	(41,6,'Cap material','en_US'),
	(42,6,'Cap material','de_DE'),
	(43,6,'Cap material','fr_FR'),
	(44,6,'Cap material','pl_PL'),
	(45,6,'Cap material','es_ES'),
	(46,6,'Cap material','es_MX'),
	(47,6,'Cap material','pt_PT'),
	(48,6,'Cap material','zh_CN'),
	(49,7,'Dress brand','en_US'),
	(50,7,'Dress brand','de_DE'),
	(51,7,'Dress brand','fr_FR'),
	(52,7,'Dress brand','pl_PL'),
	(53,7,'Dress brand','es_ES'),
	(54,7,'Dress brand','es_MX'),
	(55,7,'Dress brand','pt_PT'),
	(56,7,'Dress brand','zh_CN'),
	(57,8,'Dress collection','en_US'),
	(58,8,'Dress collection','de_DE'),
	(59,8,'Dress collection','fr_FR'),
	(60,8,'Dress collection','pl_PL'),
	(61,8,'Dress collection','es_ES'),
	(62,8,'Dress collection','es_MX'),
	(63,8,'Dress collection','pt_PT'),
	(64,8,'Dress collection','zh_CN'),
	(65,9,'Dress material','en_US'),
	(66,9,'Dress material','de_DE'),
	(67,9,'Dress material','fr_FR'),
	(68,9,'Dress material','pl_PL'),
	(69,9,'Dress material','es_ES'),
	(70,9,'Dress material','es_MX'),
	(71,9,'Dress material','pt_PT'),
	(72,9,'Dress material','zh_CN'),
	(73,10,'Jeans brand','en_US'),
	(74,10,'Jeans brand','de_DE'),
	(75,10,'Jeans brand','fr_FR'),
	(76,10,'Jeans brand','pl_PL'),
	(77,10,'Jeans brand','es_ES'),
	(78,10,'Jeans brand','es_MX'),
	(79,10,'Jeans brand','pt_PT'),
	(80,10,'Jeans brand','zh_CN'),
	(81,11,'Jeans collection','en_US'),
	(82,11,'Jeans collection','de_DE'),
	(83,11,'Jeans collection','fr_FR'),
	(84,11,'Jeans collection','pl_PL'),
	(85,11,'Jeans collection','es_ES'),
	(86,11,'Jeans collection','es_MX'),
	(87,11,'Jeans collection','pt_PT'),
	(88,11,'Jeans collection','zh_CN'),
	(89,12,'Jeans material','en_US'),
	(90,12,'Jeans material','de_DE'),
	(91,12,'Jeans material','fr_FR'),
	(92,12,'Jeans material','pl_PL'),
	(93,12,'Jeans material','es_ES'),
	(94,12,'Jeans material','es_MX'),
	(95,12,'Jeans material','pt_PT'),
	(96,12,'Jeans material','zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_attribute_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_attribute_value`;

CREATE TABLE `ecommerce_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `ecommerce_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_attribute_value` DISABLE KEYS */;

INSERT INTO `ecommerce_product_attribute_value` (`id`, `product_id`, `attribute_id`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `locale_code`)
VALUES
	(1,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(2,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(3,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(4,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(5,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(6,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(7,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(8,1,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(9,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(10,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(11,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(12,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(13,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(14,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(15,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(16,1,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(17,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(18,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(19,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(20,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(21,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(22,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(23,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(24,1,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(25,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(26,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(27,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(28,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(29,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(30,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(31,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(32,2,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(33,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(34,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(35,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(36,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(37,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(38,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(39,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(40,2,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(41,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(42,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(43,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(44,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(45,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(46,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(47,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(48,2,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(49,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(50,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(51,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(52,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(53,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(54,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(55,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(56,3,1,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(57,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(58,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(59,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(60,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(61,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(62,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(63,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(64,3,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(65,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(66,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(67,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(68,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(69,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(70,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(71,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(72,3,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(73,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(74,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(75,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(76,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(77,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(78,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(79,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(80,4,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(81,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(82,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(83,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(84,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(85,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(86,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(87,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(88,4,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(89,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(90,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(91,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(92,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(93,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(94,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(95,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(96,4,3,'100% viscose',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(97,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(98,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(99,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(100,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(101,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(102,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(103,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(104,5,1,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(105,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(106,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(107,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(108,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(109,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(110,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(111,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(112,5,2,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(113,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(114,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(115,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(116,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(117,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(118,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(119,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(120,5,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(121,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(122,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(123,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(124,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(125,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(126,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(127,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(128,6,1,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(129,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(130,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(131,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(132,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(133,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(134,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(135,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(136,6,2,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(137,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(138,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(139,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(140,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(141,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(142,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(143,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(144,6,3,'100% cotton',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(145,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(146,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(147,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(148,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(149,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(150,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(151,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(152,7,4,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(153,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(154,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(155,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(156,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(157,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(158,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(159,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(160,7,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(161,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(162,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(163,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(164,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(165,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(166,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(167,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(168,7,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(169,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(170,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(171,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(172,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(173,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(174,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(175,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(176,8,4,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(177,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(178,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(179,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(180,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(181,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(182,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(183,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(184,8,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(185,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(186,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(187,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(188,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(189,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(190,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(191,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(192,8,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(193,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(194,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(195,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(196,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(197,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(198,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(199,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(200,9,4,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(201,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(202,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(203,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(204,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(205,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(206,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(207,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(208,9,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(209,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(210,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(211,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(212,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(213,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(214,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(215,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(216,9,6,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(217,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(218,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(219,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(220,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(221,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(222,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(223,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(224,10,4,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(225,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(226,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(227,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(228,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(229,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(230,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(231,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(232,10,5,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(233,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(234,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(235,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(236,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(237,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(238,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(239,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(240,10,6,'100% cashmere',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(241,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(242,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(243,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(244,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(245,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(246,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(247,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(248,11,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(249,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(250,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(251,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(252,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(253,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(254,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(255,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(256,11,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(257,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(258,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(259,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(260,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(261,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(262,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(263,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(264,11,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(265,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(266,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(267,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(268,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(269,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(270,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(271,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(272,12,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(273,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(274,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(275,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(276,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(277,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(278,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(279,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(280,12,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(281,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(282,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(283,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(284,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(285,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(286,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(287,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(288,12,9,'100% wool',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(289,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(290,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(291,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(292,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(293,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(294,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(295,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(296,13,7,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(297,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(298,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(299,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(300,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(301,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(302,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(303,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(304,13,8,'Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(305,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(306,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(307,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(308,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(309,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(310,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(311,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(312,13,9,'100% polyester',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(313,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(314,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(315,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(316,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(317,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(318,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(319,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(320,14,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(321,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(322,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(323,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(324,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(325,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(326,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(327,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(328,14,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(329,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(330,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(331,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(332,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(333,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(334,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(335,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(336,14,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(337,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(338,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(339,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(340,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(341,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(342,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(343,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(344,15,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(345,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(346,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(347,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(348,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(349,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(350,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(351,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(352,15,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(353,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(354,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(355,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(356,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(357,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(358,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(359,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(360,15,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(361,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(362,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(363,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(364,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(365,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(366,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(367,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(368,16,10,'Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(369,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(370,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(371,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(372,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(373,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(374,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(375,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(376,16,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(377,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(378,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(379,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(380,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(381,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(382,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(383,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(384,16,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(385,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(386,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(387,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(388,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(389,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(390,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(391,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(392,17,10,'Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(393,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(394,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(395,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(396,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(397,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(398,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(399,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(400,17,11,'Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(401,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(402,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(403,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(404,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(405,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(406,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(407,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(408,17,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(409,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(410,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(411,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(412,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(413,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(414,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(415,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(416,18,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(417,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(418,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(419,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(420,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(421,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(422,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(423,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(424,18,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(425,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(426,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(427,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(428,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(429,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(430,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(431,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(432,18,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(433,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(434,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(435,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(436,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(437,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(438,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(439,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(440,19,10,'You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(441,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(442,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(443,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(444,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(445,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(446,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(447,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(448,19,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(449,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(450,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(451,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(452,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(453,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(454,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(455,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(456,19,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(457,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(458,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(459,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(460,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(461,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(462,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(463,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(464,20,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(465,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(466,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(467,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(468,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(469,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(470,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(471,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(472,20,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(473,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(474,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(475,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(476,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(477,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(478,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(479,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(480,20,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(481,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(482,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(483,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(484,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(485,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(486,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(487,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(488,21,10,'Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(489,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(490,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(491,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(492,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(493,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(494,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(495,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(496,21,11,'Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN'),
	(497,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'en_US'),
	(498,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'de_DE'),
	(499,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'fr_FR'),
	(500,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pl_PL'),
	(501,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_ES'),
	(502,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'es_MX'),
	(503,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'pt_PT'),
	(504,21,12,'100% jeans',NULL,NULL,NULL,NULL,NULL,NULL,'zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_channels`;

CREATE TABLE `ecommerce_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_channels` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_channels` DISABLE KEYS */;

INSERT INTO `ecommerce_product_channels` (`product_id`, `channel_id`)
VALUES
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2),
	(11,2),
	(12,2),
	(13,2),
	(14,2),
	(15,2),
	(16,2),
	(17,2),
	(18,2),
	(19,2),
	(20,2),
	(21,2);

/*!40000 ALTER TABLE `ecommerce_product_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_image`;

CREATE TABLE `ecommerce_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_image` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_image` DISABLE KEYS */;

INSERT INTO `ecommerce_product_image` (`id`, `owner_id`, `type`, `path`)
VALUES
	(1,1,'main','79/c6/2184eb3e41c45d0437c3e70e9eea.jpeg'),
	(2,2,'main','8d/4b/7942da89d2985d6c43278cebd202.jpeg'),
	(3,3,'main','d7/17/1026a52abea54092bec2d77bf926.jpeg'),
	(4,4,'main','4f/3e/d7c756a31a4e5fab01b7be52ccf7.jpeg'),
	(5,5,'main','4c/9f/d490b1cf0acfcbf32c48d9acd877.jpeg'),
	(6,6,'main','ef/0a/7fddacc2d5e4f1a7e51fd5b8ed02.jpeg'),
	(7,7,'main','d4/10/aaec79764a6166737d5c42a59459.jpeg'),
	(8,8,'main','16/00/58c329f944fbc85901c67d17d273.jpeg'),
	(9,9,'main','8a/56/c32c13ac4e4387182f2fe4fe7dc6.jpeg'),
	(10,10,'main','53/6d/6eb3f7ac657757f1505b79accae4.jpeg'),
	(11,11,'main','d8/20/a77c29b0ac64823a7fba7527ac2d.jpeg'),
	(12,12,'main','d1/63/d7ec61e7e191dce3e531c0922079.jpeg'),
	(13,13,'main','81/b7/222a9d487cc01d8bf6a7b60aff22.jpeg'),
	(14,14,'main','7f/a0/66239840c8d45fcd1a89b232d6a4.jpeg'),
	(15,15,'main','05/0b/d5300b7acd31e18d4e9f3187dfea.jpeg'),
	(16,16,'main','d8/05/0bd343aea7d945d0f8bf2f2aede8.jpeg'),
	(17,17,'main','25/b5/947f9b55da0188e376faac45100c.jpeg'),
	(18,18,'main','2d/35/e0fb30aec4e0e2a34c018a8c0f3f.jpeg'),
	(19,19,'main','17/5d/f00d9d649790d8a585283a3f88ee.jpeg'),
	(20,20,'main','1c/e4/7c0658e1c768737f76bf976d26e5.jpeg'),
	(21,21,'main','26/8c/906e55d9aef9c9890558212d2c46.jpeg');

/*!40000 ALTER TABLE `ecommerce_product_image` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_image_product_variants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_image_product_variants`;

CREATE TABLE `ecommerce_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `ecommerce_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `ecommerce_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_product_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_option`;

CREATE TABLE `ecommerce_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_option` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_option` DISABLE KEYS */;

INSERT INTO `ecommerce_product_option` (`id`, `code`, `created_at`, `updated_at`, `position`)
VALUES
	(1,'t_shirt_size','2020-11-26 18:40:02','2020-11-26 18:40:02',0),
	(2,'dress_size','2020-11-26 18:40:04','2020-11-26 18:40:04',1),
	(3,'dress_height','2020-11-26 18:40:04','2020-11-26 18:40:04',2),
	(4,'jeans_size','2020-11-26 18:40:06','2020-11-26 18:40:06',3);

/*!40000 ALTER TABLE `ecommerce_product_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_option_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_option_translation`;

CREATE TABLE `ecommerce_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_option_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_option_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_option_translation` (`id`, `translatable_id`, `name`, `locale`)
VALUES
	(1,1,'T-shirt size','en_US'),
	(2,1,'T-shirt size','de_DE'),
	(3,1,'T-shirt size','fr_FR'),
	(4,1,'T-shirt size','pl_PL'),
	(5,1,'T-shirt size','es_ES'),
	(6,1,'T-shirt size','es_MX'),
	(7,1,'T-shirt size','pt_PT'),
	(8,1,'T-shirt size','zh_CN'),
	(9,2,'Dress size','en_US'),
	(10,2,'Dress size','de_DE'),
	(11,2,'Dress size','fr_FR'),
	(12,2,'Dress size','pl_PL'),
	(13,2,'Dress size','es_ES'),
	(14,2,'Dress size','es_MX'),
	(15,2,'Dress size','pt_PT'),
	(16,2,'Dress size','zh_CN'),
	(17,3,'Dress height','en_US'),
	(18,3,'Dress height','de_DE'),
	(19,3,'Dress height','fr_FR'),
	(20,3,'Dress height','pl_PL'),
	(21,3,'Dress height','es_ES'),
	(22,3,'Dress height','es_MX'),
	(23,3,'Dress height','pt_PT'),
	(24,3,'Dress height','zh_CN'),
	(25,4,'Jeans size','en_US'),
	(26,4,'Jeans size','de_DE'),
	(27,4,'Jeans size','fr_FR'),
	(28,4,'Jeans size','pl_PL'),
	(29,4,'Jeans size','es_ES'),
	(30,4,'Jeans size','es_MX'),
	(31,4,'Jeans size','pt_PT'),
	(32,4,'Jeans size','zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_option_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_option_value`;

CREATE TABLE `ecommerce_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `ecommerce_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_option_value` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_option_value` DISABLE KEYS */;

INSERT INTO `ecommerce_product_option_value` (`id`, `option_id`, `code`)
VALUES
	(1,1,'t_shirt_size_s'),
	(2,1,'t_shirt_size_m'),
	(3,1,'t_shirt_size_l'),
	(4,1,'t_shirt_size_xl'),
	(5,1,'t_shirt_size_xxl'),
	(6,2,'dress_s'),
	(7,2,'dress_m'),
	(8,2,'dress_l'),
	(9,2,'dress_xl'),
	(10,2,'dress_xxl'),
	(11,3,'dress_height_petite'),
	(12,3,'dress_height_regular'),
	(13,3,'dress_height_tall'),
	(14,4,'jeans_size_s'),
	(15,4,'jeans_size_m'),
	(16,4,'jeans_size_l'),
	(17,4,'jeans_size_xl'),
	(18,4,'jeans_size_xxl');

/*!40000 ALTER TABLE `ecommerce_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_option_value_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_option_value_translation`;

CREATE TABLE `ecommerce_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_option_value_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`)
VALUES
	(1,1,'S','en_US'),
	(2,1,'S','de_DE'),
	(3,1,'S','fr_FR'),
	(4,1,'S','pl_PL'),
	(5,1,'S','es_ES'),
	(6,1,'S','es_MX'),
	(7,1,'S','pt_PT'),
	(8,1,'S','zh_CN'),
	(9,2,'M','en_US'),
	(10,2,'M','de_DE'),
	(11,2,'M','fr_FR'),
	(12,2,'M','pl_PL'),
	(13,2,'M','es_ES'),
	(14,2,'M','es_MX'),
	(15,2,'M','pt_PT'),
	(16,2,'M','zh_CN'),
	(17,3,'L','en_US'),
	(18,3,'L','de_DE'),
	(19,3,'L','fr_FR'),
	(20,3,'L','pl_PL'),
	(21,3,'L','es_ES'),
	(22,3,'L','es_MX'),
	(23,3,'L','pt_PT'),
	(24,3,'L','zh_CN'),
	(25,4,'XL','en_US'),
	(26,4,'XL','de_DE'),
	(27,4,'XL','fr_FR'),
	(28,4,'XL','pl_PL'),
	(29,4,'XL','es_ES'),
	(30,4,'XL','es_MX'),
	(31,4,'XL','pt_PT'),
	(32,4,'XL','zh_CN'),
	(33,5,'XXL','en_US'),
	(34,5,'XXL','de_DE'),
	(35,5,'XXL','fr_FR'),
	(36,5,'XXL','pl_PL'),
	(37,5,'XXL','es_ES'),
	(38,5,'XXL','es_MX'),
	(39,5,'XXL','pt_PT'),
	(40,5,'XXL','zh_CN'),
	(41,6,'S','en_US'),
	(42,6,'S','de_DE'),
	(43,6,'S','fr_FR'),
	(44,6,'S','pl_PL'),
	(45,6,'S','es_ES'),
	(46,6,'S','es_MX'),
	(47,6,'S','pt_PT'),
	(48,6,'S','zh_CN'),
	(49,7,'M','en_US'),
	(50,7,'M','de_DE'),
	(51,7,'M','fr_FR'),
	(52,7,'M','pl_PL'),
	(53,7,'M','es_ES'),
	(54,7,'M','es_MX'),
	(55,7,'M','pt_PT'),
	(56,7,'M','zh_CN'),
	(57,8,'L','en_US'),
	(58,8,'L','de_DE'),
	(59,8,'L','fr_FR'),
	(60,8,'L','pl_PL'),
	(61,8,'L','es_ES'),
	(62,8,'L','es_MX'),
	(63,8,'L','pt_PT'),
	(64,8,'L','zh_CN'),
	(65,9,'XL','en_US'),
	(66,9,'XL','de_DE'),
	(67,9,'XL','fr_FR'),
	(68,9,'XL','pl_PL'),
	(69,9,'XL','es_ES'),
	(70,9,'XL','es_MX'),
	(71,9,'XL','pt_PT'),
	(72,9,'XL','zh_CN'),
	(73,10,'XXL','en_US'),
	(74,10,'XXL','de_DE'),
	(75,10,'XXL','fr_FR'),
	(76,10,'XXL','pl_PL'),
	(77,10,'XXL','es_ES'),
	(78,10,'XXL','es_MX'),
	(79,10,'XXL','pt_PT'),
	(80,10,'XXL','zh_CN'),
	(81,11,'Petite','en_US'),
	(82,11,'Petite','de_DE'),
	(83,11,'Petite','fr_FR'),
	(84,11,'Petite','pl_PL'),
	(85,11,'Petite','es_ES'),
	(86,11,'Petite','es_MX'),
	(87,11,'Petite','pt_PT'),
	(88,11,'Petite','zh_CN'),
	(89,12,'Regular','en_US'),
	(90,12,'Regular','de_DE'),
	(91,12,'Regular','fr_FR'),
	(92,12,'Regular','pl_PL'),
	(93,12,'Regular','es_ES'),
	(94,12,'Regular','es_MX'),
	(95,12,'Regular','pt_PT'),
	(96,12,'Regular','zh_CN'),
	(97,13,'Tall','en_US'),
	(98,13,'Tall','de_DE'),
	(99,13,'Tall','fr_FR'),
	(100,13,'Tall','pl_PL'),
	(101,13,'Tall','es_ES'),
	(102,13,'Tall','es_MX'),
	(103,13,'Tall','pt_PT'),
	(104,13,'Tall','zh_CN'),
	(105,14,'S','en_US'),
	(106,14,'S','de_DE'),
	(107,14,'S','fr_FR'),
	(108,14,'S','pl_PL'),
	(109,14,'S','es_ES'),
	(110,14,'S','es_MX'),
	(111,14,'S','pt_PT'),
	(112,14,'S','zh_CN'),
	(113,15,'M','en_US'),
	(114,15,'M','de_DE'),
	(115,15,'M','fr_FR'),
	(116,15,'M','pl_PL'),
	(117,15,'M','es_ES'),
	(118,15,'M','es_MX'),
	(119,15,'M','pt_PT'),
	(120,15,'M','zh_CN'),
	(121,16,'L','en_US'),
	(122,16,'L','de_DE'),
	(123,16,'L','fr_FR'),
	(124,16,'L','pl_PL'),
	(125,16,'L','es_ES'),
	(126,16,'L','es_MX'),
	(127,16,'L','pt_PT'),
	(128,16,'L','zh_CN'),
	(129,17,'XL','en_US'),
	(130,17,'XL','de_DE'),
	(131,17,'XL','fr_FR'),
	(132,17,'XL','pl_PL'),
	(133,17,'XL','es_ES'),
	(134,17,'XL','es_MX'),
	(135,17,'XL','pt_PT'),
	(136,17,'XL','zh_CN'),
	(137,18,'XXL','en_US'),
	(138,18,'XXL','de_DE'),
	(139,18,'XXL','fr_FR'),
	(140,18,'XXL','pl_PL'),
	(141,18,'XXL','es_ES'),
	(142,18,'XXL','es_MX'),
	(143,18,'XXL','pt_PT'),
	(144,18,'XXL','zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_options`;

CREATE TABLE `ecommerce_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `ecommerce_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_options` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_options` DISABLE KEYS */;

INSERT INTO `ecommerce_product_options` (`product_id`, `option_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(11,2),
	(11,3),
	(12,2),
	(12,3),
	(13,2),
	(13,3),
	(14,4),
	(15,4),
	(16,4),
	(17,4),
	(18,4),
	(19,4),
	(20,4),
	(21,4);

/*!40000 ALTER TABLE `ecommerce_product_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_review
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_review`;

CREATE TABLE `ecommerce_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `ecommerce_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_review` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_review` DISABLE KEYS */;

INSERT INTO `ecommerce_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`)
VALUES
	(1,10,21,'sunt voluptas repellat',3,'Praesentium id velit deserunt aut. Explicabo maxime deserunt blanditiis hic nisi repudiandae. Error neque aut cumque dolores cum nam similique.','rejected','2020-11-26 18:40:07','2020-11-26 18:40:07'),
	(2,7,14,'dignissimos cum fugit',1,'Et nihil odio quidem et est omnis. Animi voluptatem eius sit quia sed. Repellendus quia qui corrupti cupiditate inventore deleniti hic.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(3,9,6,'qui ipsa nulla',3,'Sint qui iusto corporis dolor sed. Unde ut atque facilis ratione excepturi. Est corrupti magni ab fugit voluptates.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(4,16,5,'tempore ad quibusdam',3,'Vitae ut laudantium voluptatibus ullam quis. Quae dolorem quasi ut sed. Placeat in distinctio maxime quibusdam.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(5,14,3,'rerum qui sit',5,'Sapiente quis sint qui qui. At quo est nam sed dicta. Sunt dolor qui ipsum.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(6,17,1,'voluptas qui enim',4,'Earum corporis explicabo aut ipsam. Qui laboriosam et officiis sunt voluptatem. Corporis in et possimus atque enim quo.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(7,6,13,'consectetur dolorem et',3,'Qui sit corporis fugit doloribus et. Minus ipsum culpa deserunt ut perferendis cum. Eum odio numquam esse sapiente autem qui.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(8,18,17,'voluptas rem tenetur',4,'Sed voluptas vel et similique. Eaque ipsa tempore odio ullam laudantium sit quod. Dolore harum ducimus facere numquam.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(9,18,12,'deleniti vero tempora',4,'Voluptatem ad quam ipsum facilis non eos provident. Doloremque exercitationem porro et. Deleniti maiores sequi hic aut eaque asperiores.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(10,19,2,'numquam facere autem',4,'In sit ullam corporis. Quam consequatur et repellendus dolor dolore et ut. Voluptatem similique quam repellendus in quidem repudiandae totam.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(11,21,18,'dolore et non',4,'Neque in omnis est perspiciatis. Neque et totam illo quos. Optio modi perspiciatis dolores itaque.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(12,10,5,'fuga deserunt ut',3,'Deleniti culpa harum nemo quis sed cum. Et voluptatum totam temporibus aut aliquid ex commodi. Autem saepe molestiae officiis ut dolorem.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(13,17,6,'atque quisquam earum',2,'Numquam ad blanditiis molestiae aliquid qui. Consequatur expedita ea cum in laboriosam aut. Voluptates cupiditate dolorem pariatur rerum eos explicabo.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(14,16,12,'consequuntur veritatis quo',1,'Et et eum tempore. Recusandae eveniet labore non vel enim ratione. Voluptatem quae rem aut at nesciunt.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(15,21,8,'recusandae officiis vero',3,'Dolores id unde sed quae quo nisi. Dolore aut ipsa quia ut harum. Tenetur aut qui beatae dolores dicta et eum.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(16,20,11,'occaecati consequatur iusto',1,'Quia necessitatibus explicabo itaque praesentium qui. Asperiores ipsum est et repellat ducimus. Animi voluptatem quia aliquam veniam provident consequuntur blanditiis.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(17,13,9,'sapiente ducimus accusamus',3,'Magnam deserunt voluptas quos tempora ut. Aspernatur voluptatem est unde delectus nam. Eos ab aliquid rerum ea.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(18,21,8,'repudiandae rerum nihil',1,'Labore accusantium tenetur ea velit ratione. Exercitationem quaerat molestiae nisi dolor at unde dicta. At earum exercitationem itaque at quia.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(19,16,7,'occaecati sequi velit',5,'Rerum voluptas pariatur eaque harum. Nisi explicabo ut voluptatem a. Consequuntur est est nobis totam qui.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(20,17,18,'porro iste in',3,'In numquam esse omnis et. Id dignissimos dolorem necessitatibus. Ut quis occaecati non.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(21,19,15,'vero voluptatum nostrum',4,'Ut quo rem natus quidem. Fuga veritatis eius quibusdam dignissimos earum ut. Maiores non ducimus sed cum id.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(22,15,21,'sed temporibus vero',4,'Impedit magni adipisci vero blanditiis. Dolorem at doloremque facere aspernatur ut modi. Provident distinctio tempora optio ut reiciendis minima ullam minus.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(23,3,4,'omnis praesentium molestiae',5,'Ea occaecati harum aperiam at mollitia blanditiis vel. Sit tempore sequi sit facere. Iusto incidunt amet voluptatem quod odit.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(24,19,1,'amet quisquam repellat',4,'Et dolores at doloribus maiores. Architecto illo culpa amet illum enim. Voluptas omnis iste facere consequatur molestiae quo.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(25,15,21,'accusantium in ut',5,'Dolorum sed aut accusantium amet. Aut sit ea qui dolorum consequatur. Accusamus in odit nemo nisi iste.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(26,9,20,'iure tempora esse',2,'Illum laborum qui ratione rerum recusandae. Porro non sed nihil explicabo consequatur dolores. Tempore pariatur quas quo expedita.','rejected','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(27,19,1,'reprehenderit praesentium sunt',1,'Fuga est qui exercitationem excepturi aliquam. Iste non aspernatur aliquid earum consectetur. Qui quod quasi aut quas sit.','new','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(28,19,16,'natus dolore id',4,'Et sed consequatur temporibus modi cum voluptas. Voluptas corporis quas rerum vero non facilis. Asperiores debitis pariatur earum ipsum sint et enim ullam.','accepted','2020-11-26 18:40:08','2020-11-26 18:40:08'),
	(29,16,18,'molestiae voluptas libero',5,'Adipisci inventore dolores dolorem voluptas. Atque ut et in quia sint. Rerum ut explicabo aut quo.','accepted','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(30,3,3,'occaecati vitae deserunt',3,'Optio voluptate incidunt reprehenderit enim. Culpa ullam beatae voluptatem. Inventore quia doloribus consequatur totam praesentium sed.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(31,11,11,'sed doloribus qui',5,'Quasi in quis aliquam nihil aut id atque. Temporibus fugiat necessitatibus fuga quae commodi. Voluptates assumenda optio totam in reprehenderit debitis est sapiente.','new','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(32,2,3,'nihil voluptates sunt',4,'Ullam quis qui officia sit saepe. Optio facilis natus hic natus inventore rem atque. Hic quia excepturi rerum voluptas modi.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(33,9,21,'dolorem quis illum',2,'Eos deserunt dicta quae vitae maiores sit itaque. Odio libero sit quasi. Enim unde consequatur ut dicta similique eos quis.','new','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(34,13,12,'dolores asperiores et',3,'Mollitia officia aliquam et aspernatur asperiores repellendus quidem. Facilis non perspiciatis omnis dolorum. Eum eos qui temporibus modi modi fugiat.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(35,2,4,'et officiis rerum',3,'Vitae rerum et at nemo voluptates. Enim omnis assumenda ea deserunt. Non quia nesciunt maiores perspiciatis.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(36,4,5,'sit accusantium quod',1,'Rerum sed vel perspiciatis a omnis voluptatum incidunt. Quidem id nemo qui qui. Sed sit quibusdam aut ea nemo est.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(37,15,10,'recusandae placeat consectetur',3,'Repudiandae voluptas cumque ratione magni vel. Tempora voluptatem delectus rerum nemo. Corrupti blanditiis aut architecto animi ut.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(38,4,8,'omnis voluptatum voluptas',4,'Est itaque et occaecati labore enim. Nulla aperiam numquam distinctio sint rem rerum. Qui cum est ipsam aut.','new','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(39,12,8,'aut exercitationem voluptatem',3,'Qui aliquid nemo accusantium dignissimos id. Corporis eius id dolorem fugit. Et dolores ipsam molestiae similique totam.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09'),
	(40,10,1,'molestiae eligendi quasi',3,'Ipsa in nihil quia numquam incidunt molestiae id minima. Quod nihil ad totam magnam ut mollitia dolore. Enim saepe reiciendis modi.','rejected','2020-11-26 18:40:09','2020-11-26 18:40:09');

/*!40000 ALTER TABLE `ecommerce_product_review` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_taxon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_taxon`;

CREATE TABLE `ecommerce_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_taxon` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_taxon` DISABLE KEYS */;

INSERT INTO `ecommerce_product_taxon` (`id`, `product_id`, `taxon_id`, `position`)
VALUES
	(1,1,2,0),
	(2,1,4,0),
	(3,2,2,1),
	(4,2,4,1),
	(5,3,2,2),
	(6,3,4,2),
	(7,4,2,3),
	(8,4,3,0),
	(9,5,2,4),
	(10,5,3,1),
	(11,6,2,5),
	(12,6,3,2),
	(13,7,5,0),
	(14,7,7,0),
	(15,8,5,1),
	(16,8,6,0),
	(17,9,5,2),
	(18,9,7,1),
	(19,10,5,3),
	(20,10,6,1),
	(21,11,8,0),
	(22,12,8,1),
	(23,13,8,2),
	(24,14,9,0),
	(25,14,10,0),
	(26,15,9,1),
	(27,15,10,1),
	(28,16,9,2),
	(29,16,10,2),
	(30,17,9,3),
	(31,17,10,3),
	(32,18,9,4),
	(33,18,11,0),
	(34,19,9,5),
	(35,19,11,1),
	(36,20,9,6),
	(37,20,11,2),
	(38,21,9,7),
	(39,21,11,3);

/*!40000 ALTER TABLE `ecommerce_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_translation`;

CREATE TABLE `ecommerce_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`)
VALUES
	(1,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','en_US'),
	(2,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','de_DE'),
	(3,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','fr_FR'),
	(4,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','pl_PL'),
	(5,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','es_ES'),
	(6,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','es_MX'),
	(7,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','pt_PT'),
	(8,1,'Everyday white basic T-Shirt','everyday-white-basic-t-shirt','Cum cum aperiam facilis est esse. Molestiae commodi maiores minus neque itaque. Dolorum nesciunt illum molestiae fuga.\n\nEa et in quia voluptates facilis ut praesentium. Omnis asperiores inventore dolorum enim. Saepe pariatur nostrum magnam tempora perferendis.\n\nQuae molestias iste explicabo culpa officiis recusandae. Animi commodi numquam deleniti assumenda eos sunt nemo. Quae dolorem voluptates veniam officia aut. Ullam corporis quasi voluptatem consequatur itaque ullam enim.',NULL,NULL,'Eos facilis consequatur nobis molestiae. Iure iure amet consequatur tempore laudantium. Quas numquam dolor omnis ut. Illo alias dolores quis consectetur quo nam expedita nihil.','zh_CN'),
	(9,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','en_US'),
	(10,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','de_DE'),
	(11,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','fr_FR'),
	(12,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','pl_PL'),
	(13,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','es_ES'),
	(14,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','es_MX'),
	(15,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','pt_PT'),
	(16,2,'Loose white designer T-Shirt','loose-white-designer-t-shirt','Doloribus quo totam sed ut. Fugit quibusdam quaerat cupiditate nostrum.\n\nMagni consequatur eos ut vero et. Dolorem rerum atque praesentium neque est dolorum enim. Est neque odit est laudantium amet consequatur.\n\nVel ut illo velit voluptates veritatis accusamus optio. Veritatis quibusdam eos et earum hic aut. Aspernatur voluptas maxime eveniet.',NULL,NULL,'Omnis qui eum suscipit ipsam recusandae ex ea. Nam vero blanditiis inventore sint placeat aut aperiam accusamus. A veritatis est quod cumque. Aut rerum quisquam sunt dolores voluptatem sequi esse. Quod quod rerum non.','zh_CN'),
	(17,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','en_US'),
	(18,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','de_DE'),
	(19,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','fr_FR'),
	(20,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','pl_PL'),
	(21,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','es_ES'),
	(22,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','es_MX'),
	(23,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','pt_PT'),
	(24,3,'Ribbed copper slim fit Tee','ribbed-copper-slim-fit-tee','Aut ut est dolor qui dignissimos ut. Aut ut consequatur fugit quia. Et et numquam et doloribus inventore est. Quo nisi suscipit sit aspernatur illum magnam asperiores.\n\nLaborum est eos asperiores dolor. Ea vel error aut omnis dolorem. Deserunt rerum voluptatem placeat fuga aperiam itaque velit. Illum sint perspiciatis rerum eos necessitatibus.\n\nEt cum sunt vero dolorem reiciendis. Quia aut reprehenderit ut ab nihil voluptatem. Animi iusto consectetur fugiat ad. Voluptatem ducimus ipsam deserunt voluptatibus quae perferendis.',NULL,NULL,'Est veniam iste qui sit. Et quod doloribus ipsa magni illum consequatur est. Modi praesentium aut officia nesciunt esse doloribus.','zh_CN'),
	(25,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','en_US'),
	(26,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','de_DE'),
	(27,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','fr_FR'),
	(28,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','pl_PL'),
	(29,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','es_ES'),
	(30,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','es_MX'),
	(31,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','pt_PT'),
	(32,4,'Sport basic white T-Shirt','sport-basic-white-t-shirt','Perferendis vitae voluptates numquam. Molestiae est commodi expedita et illum natus. Eveniet eius et aperiam ducimus totam officiis. Deserunt iste sequi tempora accusantium voluptatem in porro. Quo officiis et beatae dolorem laudantium qui impedit.\n\nAut et assumenda dolores quam. In ipsa aut unde. Assumenda sunt ipsam ut neque minus nostrum facere. Eum nemo sit officia ut molestiae.\n\nSapiente facere consequatur optio et tenetur velit accusantium. In doloribus velit error labore possimus adipisci. Voluptas ut corrupti delectus repellendus doloremque commodi et. Voluptates soluta adipisci deleniti rerum commodi.',NULL,NULL,'Suscipit labore eius ut. Sit qui alias culpa dolorem porro labore laborum. Iusto fugit omnis voluptates voluptate. Nihil autem distinctio autem architecto non nostrum.','zh_CN'),
	(33,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','en_US'),
	(34,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','de_DE'),
	(35,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','fr_FR'),
	(36,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','pl_PL'),
	(37,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','es_ES'),
	(38,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','es_MX'),
	(39,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','pt_PT'),
	(40,5,'Raglan grey & black Tee','raglan-grey-black-tee','Iusto totam saepe pariatur doloribus. Nobis dolores voluptates dignissimos consequatur velit aliquid quisquam quis. Explicabo libero et veniam magnam. Ut cumque quod consequatur ipsum veritatis nostrum reiciendis excepturi.\n\nOdit mollitia perspiciatis inventore a deleniti ut. Dolorem maiores qui facere et. Doloremque quia consequuntur ducimus aut nulla nisi provident quis. Nihil autem adipisci soluta odio et.\n\nQuia aliquam ducimus ad eum at sapiente voluptas. Earum earum iusto non dolore commodi delectus eveniet. Id quibusdam dolores est ducimus quae. Qui minus minima laudantium officiis. Porro reiciendis dolores cumque qui.',NULL,NULL,'Porro consequatur architecto et sunt distinctio sunt harum velit. Atque asperiores ut velit eligendi ut dolor soluta. Qui qui adipisci sequi placeat voluptas provident non. Qui eius assumenda aperiam et.','zh_CN'),
	(41,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','en_US'),
	(42,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','de_DE'),
	(43,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','fr_FR'),
	(44,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','pl_PL'),
	(45,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','es_ES'),
	(46,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','es_MX'),
	(47,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','pt_PT'),
	(48,6,'Oversize white cotton T-Shirt','oversize-white-cotton-t-shirt','Possimus dolorum dolores aliquam voluptas sapiente qui labore. Dolores fugit facilis omnis consequatur quia. Eaque est autem eos expedita dolores corporis nihil.\n\nUt veritatis laboriosam consequatur voluptatem. Repellat quos architecto veniam ab. Qui necessitatibus quia eum.\n\nMolestiae laboriosam eos ea ut. Quia necessitatibus sed omnis.',NULL,NULL,'Quia debitis ea ea autem. Harum et dolor nesciunt voluptatum qui.','zh_CN'),
	(49,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','en_US'),
	(50,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','de_DE'),
	(51,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','fr_FR'),
	(52,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','pl_PL'),
	(53,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','es_ES'),
	(54,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','es_MX'),
	(55,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','pt_PT'),
	(56,7,'Knitted burgundy winter cap','knitted-burgundy-winter-cap','Quo qui eius eligendi quis harum fugiat. Doloremque quasi eum nihil aut in occaecati blanditiis. Quam officia adipisci repellat. Dolorum est possimus quaerat eos sed voluptate.\n\nEt ullam voluptatem nihil. Odit quo sit aliquid. Necessitatibus neque est temporibus ad magni et. Consectetur adipisci exercitationem repellendus corrupti ut qui inventore.\n\nQuia dolor ut laudantium. Vel tempora adipisci reiciendis repudiandae molestiae fugiat labore. Esse impedit labore ab culpa inventore.',NULL,NULL,'Qui maiores ab facere mollitia aliquid. Neque quae velit impedit qui.','zh_CN'),
	(57,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','en_US'),
	(58,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','de_DE'),
	(59,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','fr_FR'),
	(60,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','pl_PL'),
	(61,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','es_ES'),
	(62,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','es_MX'),
	(63,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','pt_PT'),
	(64,8,'Knitted wool-blend green cap','knitted-wool-blend-green-cap','Earum amet repellendus aut numquam illum et quis. Soluta ad repellendus quia sed eos. Et expedita saepe nulla est inventore. Et et eum nam architecto dolorem.\n\nSint maiores praesentium veritatis aut cupiditate ut. Autem placeat quod quisquam autem eveniet. Quos vel sit quam pariatur quis eum.\n\nVoluptas enim molestias et veritatis. Dolor enim enim et architecto. Eius corrupti a nihil saepe. In sed necessitatibus perspiciatis doloribus fugit magnam.',NULL,NULL,'Et et ducimus modi sunt placeat error. Perferendis ducimus nihil minima quia cumque earum qui tempore. Laboriosam omnis libero et id doloremque.','zh_CN'),
	(65,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','en_US'),
	(66,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','de_DE'),
	(67,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','fr_FR'),
	(68,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','pl_PL'),
	(69,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','es_ES'),
	(70,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','es_MX'),
	(71,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','pt_PT'),
	(72,9,'Knitted white pompom cap','knitted-white-pompom-cap','Optio qui sit exercitationem sequi laborum. Hic nihil nobis voluptatem blanditiis quia aut.\n\nEum quas ut adipisci odit quis aut. Aut beatae dignissimos impedit neque sed. Qui sint dolorem nobis odit occaecati. Ipsam fuga et amet adipisci magnam quas rerum.\n\nNatus ut voluptatem distinctio. Laborum provident fugiat nesciunt vel atque. Cum assumenda distinctio dolor sed.',NULL,NULL,'Recusandae natus et inventore eos sequi accusamus molestiae. Aut magnam harum nulla et voluptatem. Excepturi porro numquam soluta magni excepturi hic consequatur aliquam.','zh_CN'),
	(73,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','en_US'),
	(74,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','de_DE'),
	(75,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','fr_FR'),
	(76,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','pl_PL'),
	(77,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','es_ES'),
	(78,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','es_MX'),
	(79,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','pt_PT'),
	(80,10,'Cashmere-blend violet beanie','cashmere-blend-violet-beanie','Dolorem voluptatem libero et aliquam aut quia. Sapiente error et nihil. Et ea optio tempore quia magnam aut quia. Sit sapiente eius aut vitae architecto qui.\n\nQuia qui consequatur nobis qui maxime libero. Iusto quasi praesentium tenetur labore maiores. Et perferendis aut laboriosam.\n\nAliquam praesentium ex odio nihil culpa. Et ut quisquam sint vero natus nostrum est quaerat. Sequi voluptas repellendus ipsum cum consequatur quam qui.',NULL,NULL,'Laboriosam aspernatur vero iusto dolor accusantium quis quidem. Ut maiores et et qui deleniti in. Vero sed laudantium impedit cum rem enim.','zh_CN'),
	(81,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','en_US'),
	(82,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','de_DE'),
	(83,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','fr_FR'),
	(84,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','pl_PL'),
	(85,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','es_ES'),
	(86,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','es_MX'),
	(87,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','pt_PT'),
	(88,11,'Beige strappy summer dress','beige-strappy-summer-dress','Qui dolores dolore et voluptatum consectetur voluptatem aspernatur. Soluta delectus maiores animi provident dicta. Incidunt nihil atque inventore et dolor ad.\n\nAnimi porro dolores quasi incidunt non sed. Error labore consequatur maxime aliquam. Reprehenderit eum non corporis architecto tempore dolores. Perspiciatis aut odit vero sint.\n\nQuo voluptatem quia doloremque est facere. Est minus ex possimus dolor dolorem. Earum quis voluptas hic dolores voluptas ratione et minima. Vero eligendi et cumque eum voluptas voluptatem consequatur cum.',NULL,NULL,'Non voluptatem amet similique et voluptatibus sint hic. Iure omnis sint et distinctio quaerat assumenda. Asperiores nam rerum tempore consequatur.','zh_CN'),
	(89,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','en_US'),
	(90,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','de_DE'),
	(91,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','fr_FR'),
	(92,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','pl_PL'),
	(93,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','es_ES'),
	(94,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','es_MX'),
	(95,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','pt_PT'),
	(96,12,'Off shoulder boho dress','off-shoulder-boho-dress','Eveniet quidem ut aut totam. Molestiae dolorem ut et enim. Vel eius illo voluptatem impedit mollitia quod.\n\nUt aut nihil ut soluta impedit aut. Placeat nostrum est voluptatem enim quas asperiores. Dolorem quam deleniti impedit amet quia nobis minus.\n\nVoluptas aut et nostrum at. Et suscipit unde quod voluptatibus. Totam sint magni labore nesciunt qui quod nisi. Consequatur corporis alias adipisci reiciendis quis harum.',NULL,NULL,'Omnis blanditiis quod sit aut. Accusantium et modi facere a impedit qui dolorem. Aut alias ullam et animi et beatae molestiae repudiandae.','zh_CN'),
	(97,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','en_US'),
	(98,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','de_DE'),
	(99,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','fr_FR'),
	(100,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','pl_PL'),
	(101,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','es_ES'),
	(102,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','es_MX'),
	(103,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','pt_PT'),
	(104,13,'Ruffle wrap festival dress','ruffle-wrap-festival-dress','Qui iure at cum eos quisquam sapiente. Reprehenderit aliquam debitis quae sed vel eum est. Dolore inventore voluptas consequatur magnam esse. Fugiat non odit quod ex. Amet ratione perferendis blanditiis dolor occaecati nihil.\n\nConsectetur repudiandae consequatur fuga ratione nam voluptatem dolor. Quasi qui vero accusamus at aspernatur consequatur ex. Fuga rem sapiente nobis id quia velit officiis.\n\nVoluptas laudantium omnis corporis nisi qui quo repudiandae. Beatae quidem voluptas et ut. Vel porro ut ut voluptatem.',NULL,NULL,'Consequatur et voluptatem quas quis. Ipsum qui deserunt dolorem.','zh_CN'),
	(105,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','en_US'),
	(106,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','de_DE'),
	(107,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','fr_FR'),
	(108,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','pl_PL'),
	(109,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','es_ES'),
	(110,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','es_MX'),
	(111,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','pt_PT'),
	(112,14,'911M regular fit jeans','911m-regular-fit-jeans','Consectetur sunt voluptas error aliquid. Vel id nesciunt ut quae sed natus. Qui quaerat unde consequatur. Veritatis veritatis molestiae fugit eos qui molestias mollitia.\n\nEum et incidunt iure sit rem praesentium consequatur. Qui quisquam quam consequatur qui perferendis tempora incidunt. Quidem est ducimus dolores rerum et. Provident omnis vel eius id fugiat.\n\nAut qui dolores fugit sint perferendis. Quia dolores non id sit et ea quis amet. Qui totam sunt sapiente aut id consequatur est.',NULL,NULL,'Laborum eligendi ad odit. Aut illum odit id consequatur quae corrupti mollitia nostrum. Consequatur autem aut est et itaque at.','zh_CN'),
	(113,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','en_US'),
	(114,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','de_DE'),
	(115,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','fr_FR'),
	(116,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','pl_PL'),
	(117,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','es_ES'),
	(118,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','es_MX'),
	(119,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','pt_PT'),
	(120,15,'330M slim fit jeans','330m-slim-fit-jeans','Debitis assumenda ab autem dolores qui eos. Itaque rerum non eius sit. Necessitatibus neque quisquam expedita. Explicabo fugiat quaerat eum nisi.\n\nQuo dolor veniam adipisci quo error sit ipsam. Exercitationem labore aut non omnis. Velit velit dolores iure quae.\n\nEt veniam occaecati alias dolores. Ut sed ab laudantium quisquam architecto ipsum non.',NULL,NULL,'Expedita qui nostrum est laboriosam. Et quo voluptatem aut consectetur suscipit. Voluptatem ea ipsum veniam nulla enim.','zh_CN'),
	(121,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','en_US'),
	(122,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','de_DE'),
	(123,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','fr_FR'),
	(124,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','pl_PL'),
	(125,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','es_ES'),
	(126,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','es_MX'),
	(127,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','pt_PT'),
	(128,16,'990M regular fit jeans','990m-regular-fit-jeans','Itaque ut similique nemo perspiciatis molestiae. Ea alias rerum quia animi accusantium laborum. Corrupti velit rerum aspernatur voluptatem id aliquam.\n\nAsperiores possimus suscipit dolorem eveniet quia quasi dolorem. Dolor cum blanditiis illum ut dicta quos itaque. Deserunt minus eos culpa dicta non facere inventore. Provident repudiandae ipsum ipsam laudantium quia consequuntur libero. Nisi unde quaerat iusto magnam vel.\n\nIn doloribus quisquam dolorum qui possimus. Asperiores fugit rerum tempora voluptate. Sed suscipit placeat architecto repellat.',NULL,NULL,'Earum assumenda quis quod et in. Corporis ea laudantium quia cumque quos.','zh_CN'),
	(129,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','en_US'),
	(130,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','de_DE'),
	(131,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','fr_FR'),
	(132,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','pl_PL'),
	(133,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','es_ES'),
	(134,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','es_MX'),
	(135,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','pt_PT'),
	(136,17,'007M black elegance jeans','007m-black-elegance-jeans','Ea labore sit ut laboriosam velit aut dicta. Consectetur eos consequatur ullam est. Nobis repellendus sapiente quia nulla dolorem. Minima illum praesentium debitis aut.\n\nRerum incidunt possimus omnis id. Aut aut atque hic enim. Magnam soluta sequi et doloremque excepturi.\n\nNeque voluptas asperiores atque et sequi. Voluptates omnis aut eaque non commodi omnis. Praesentium est nostrum sequi. Reiciendis temporibus qui dolor.',NULL,NULL,'Et qui voluptate similique accusantium reiciendis vero. Voluptatem architecto aut ea quo sunt et modi molestiae. Dolorem voluptatem veniam quia sed.','zh_CN'),
	(137,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','en_US'),
	(138,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','de_DE'),
	(139,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','fr_FR'),
	(140,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','pl_PL'),
	(141,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','es_ES'),
	(142,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','es_MX'),
	(143,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','pt_PT'),
	(144,18,'727F patched cropped jeans','727f-patched-cropped-jeans','Explicabo delectus qui quae nostrum. Doloribus ipsa qui quod voluptas maxime corrupti. Aut quia est voluptas sed illum illum vel. Enim dolores sequi optio dolores dolorem.\n\nEveniet autem molestias eaque delectus cum debitis perspiciatis. Asperiores molestiae inventore quis iusto consequatur voluptates.\n\nHic totam nobis rerum aut impedit. Et ipsa et libero quis. Impedit rerum a quaerat inventore. Pariatur aut tempore enim dicta molestias omnis sit.',NULL,NULL,'Deleniti deserunt quasi atque et et sint. Rem ipsum voluptatibus voluptas voluptates sequi sunt est unde. Commodi doloremque aut dolorem dolorem hic et sit. Eveniet aliquid nesciunt ducimus qui assumenda.','zh_CN'),
	(145,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','en_US'),
	(146,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','de_DE'),
	(147,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','fr_FR'),
	(148,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','pl_PL'),
	(149,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','es_ES'),
	(150,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','es_MX'),
	(151,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','pt_PT'),
	(152,19,'111F patched jeans with fancy badges','111f-patched-jeans-with-fancy-badges','Nemo est placeat autem minus repudiandae. Ab voluptas aut molestiae et voluptas. Animi voluptatibus in voluptatibus rerum possimus nisi et.\n\nUt illum neque distinctio itaque quia voluptatem. Soluta esse expedita a dolores architecto. Dolor nostrum nobis et sed quidem iusto.\n\nQuia cum labore molestiae nam consequatur nulla ipsam ea. Sit qui tempore ut vel doloremque. Perferendis modi et aut sed.',NULL,NULL,'Qui doloremque possimus eaque officiis. Optio inventore eum non et quo sunt quia. Velit aut odio est deleniti.','zh_CN'),
	(153,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','en_US'),
	(154,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','de_DE'),
	(155,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','fr_FR'),
	(156,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','pl_PL'),
	(157,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','es_ES'),
	(158,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','es_MX'),
	(159,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','pt_PT'),
	(160,20,'000F office grey jeans','000f-office-grey-jeans','Optio eligendi cumque et aut tempore. Voluptate soluta non voluptate non sunt enim similique. Ut ea est saepe deserunt ad quod atque et.\n\nEum ipsam ipsum ab quis autem et modi. Perferendis deserunt sit est iusto voluptatem adipisci non. Ea nemo vero veniam alias illum ad hic. Accusantium accusamus impedit et dolorem et.\n\nAssumenda quia quidem debitis nobis harum natus quia. Quas ullam id nisi sint adipisci.',NULL,NULL,'Excepturi dolore quo maiores reiciendis consequatur rem. Ut omnis et recusandae ea quaerat modi. Deserunt sunt est fuga nobis.','zh_CN'),
	(161,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','en_US'),
	(162,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','de_DE'),
	(163,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','fr_FR'),
	(164,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','pl_PL'),
	(165,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','es_ES'),
	(166,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','es_MX'),
	(167,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','pt_PT'),
	(168,21,'666F boyfriend jeans with rips','666f-boyfriend-jeans-with-rips','Aut qui impedit eum natus quisquam voluptate. Molestias eligendi amet vitae voluptas est et placeat. Fugit provident fugiat quasi. Repellat ipsam maiores repellendus libero.\n\nQuis labore omnis fuga vero. Deserunt nam in beatae consectetur velit voluptas nemo. Dolorem consequatur fuga eos perferendis vel facere distinctio qui. Aspernatur vero nobis occaecati magni nulla.\n\nAsperiores sit non quo fugit et voluptatem. Et dicta aliquam esse neque ipsum accusamus.',NULL,NULL,'Ut exercitationem dignissimos doloremque minima expedita sapiente molestiae voluptatem. Quidem rerum quod perspiciatis et eaque aspernatur. Ut est reprehenderit laudantium nostrum ipsam eaque non.','zh_CN');

/*!40000 ALTER TABLE `ecommerce_product_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_variant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_variant`;

CREATE TABLE `ecommerce_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int(11) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `ecommerce_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `ecommerce_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_variant` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_variant` DISABLE KEYS */;

INSERT INTO `ecommerce_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `position`, `shipping_required`, `version`, `enabled`)
VALUES
	(1,1,1,NULL,'Everyday_white_basic_T_Shirt-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(2,1,1,NULL,'Everyday_white_basic_T_Shirt-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(3,1,1,NULL,'Everyday_white_basic_T_Shirt-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,9,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(4,1,1,NULL,'Everyday_white_basic_T_Shirt-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(5,1,1,NULL,'Everyday_white_basic_T_Shirt-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(6,2,1,NULL,'Loose_white_designer_T_Shirt-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,9,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(7,2,1,NULL,'Loose_white_designer_T_Shirt-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(8,2,1,NULL,'Loose_white_designer_T_Shirt-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,7,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(9,2,1,NULL,'Loose_white_designer_T_Shirt-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,6,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(10,2,1,NULL,'Loose_white_designer_T_Shirt-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,3,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(11,3,1,NULL,'Ribbed_copper_slim_fit_Tee-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(12,3,1,NULL,'Ribbed_copper_slim_fit_Tee-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,7,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(13,3,1,NULL,'Ribbed_copper_slim_fit_Tee-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,2,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(14,3,1,NULL,'Ribbed_copper_slim_fit_Tee-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(15,3,1,NULL,'Ribbed_copper_slim_fit_Tee-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(16,4,1,NULL,'Sport_basic_white_T_Shirt-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,7,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(17,4,1,NULL,'Sport_basic_white_T_Shirt-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(18,4,1,NULL,'Sport_basic_white_T_Shirt-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,1,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(19,4,1,NULL,'Sport_basic_white_T_Shirt-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(20,4,1,NULL,'Sport_basic_white_T_Shirt-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,4,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(21,5,1,NULL,'Raglan_grey_&_black_Tee-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(22,5,1,NULL,'Raglan_grey_&_black_Tee-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,3,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(23,5,1,NULL,'Raglan_grey_&_black_Tee-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(24,5,1,NULL,'Raglan_grey_&_black_Tee-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,8,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(25,5,1,NULL,'Raglan_grey_&_black_Tee-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,9,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(26,6,1,NULL,'Oversize_white_cotton_T_Shirt-variant-0','2020-11-26 18:40:02','2020-11-26 18:40:02',0,5,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(27,6,1,NULL,'Oversize_white_cotton_T_Shirt-variant-1','2020-11-26 18:40:02','2020-11-26 18:40:02',0,2,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(28,6,1,NULL,'Oversize_white_cotton_T_Shirt-variant-2','2020-11-26 18:40:02','2020-11-26 18:40:02',0,0,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(29,6,1,NULL,'Oversize_white_cotton_T_Shirt-variant-3','2020-11-26 18:40:02','2020-11-26 18:40:02',0,2,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(30,6,1,NULL,'Oversize_white_cotton_T_Shirt-variant-4','2020-11-26 18:40:02','2020-11-26 18:40:02',0,6,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(31,7,2,NULL,'Knitted_burgundy_winter_cap-variant-0','2020-11-26 18:40:03','2020-11-26 18:40:03',0,1,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(32,8,2,NULL,'Knitted_wool_blend_green_cap-variant-0','2020-11-26 18:40:04','2020-11-26 18:40:04',0,7,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(33,9,2,NULL,'Knitted_white_pompom_cap-variant-0','2020-11-26 18:40:04','2020-11-26 18:40:04',0,8,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(34,10,2,NULL,'Cashmere_blend_violet_beanie-variant-0','2020-11-26 18:40:04','2020-11-26 18:40:04',0,6,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(35,11,1,NULL,'Beige_strappy_summer_dress-variant-0','2020-11-26 18:40:04','2020-11-26 18:40:05',0,6,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(36,11,1,NULL,'Beige_strappy_summer_dress-variant-1','2020-11-26 18:40:04','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(37,11,1,NULL,'Beige_strappy_summer_dress-variant-2','2020-11-26 18:40:04','2020-11-26 18:40:05',0,8,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(38,11,1,NULL,'Beige_strappy_summer_dress-variant-3','2020-11-26 18:40:04','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(39,11,1,NULL,'Beige_strappy_summer_dress-variant-4','2020-11-26 18:40:04','2020-11-26 18:40:05',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(40,11,1,NULL,'Beige_strappy_summer_dress-variant-5','2020-11-26 18:40:04','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,5,1,1,1),
	(41,11,1,NULL,'Beige_strappy_summer_dress-variant-6','2020-11-26 18:40:04','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,6,1,1,1),
	(42,11,1,NULL,'Beige_strappy_summer_dress-variant-7','2020-11-26 18:40:04','2020-11-26 18:40:05',0,5,0,NULL,NULL,NULL,NULL,7,1,1,1),
	(43,11,1,NULL,'Beige_strappy_summer_dress-variant-8','2020-11-26 18:40:04','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,8,1,1,1),
	(44,11,1,NULL,'Beige_strappy_summer_dress-variant-9','2020-11-26 18:40:04','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,9,1,1,1),
	(45,11,1,NULL,'Beige_strappy_summer_dress-variant-10','2020-11-26 18:40:04','2020-11-26 18:40:05',0,5,0,NULL,NULL,NULL,NULL,10,1,1,1),
	(46,11,1,NULL,'Beige_strappy_summer_dress-variant-11','2020-11-26 18:40:04','2020-11-26 18:40:05',0,6,0,NULL,NULL,NULL,NULL,11,1,1,1),
	(47,11,1,NULL,'Beige_strappy_summer_dress-variant-12','2020-11-26 18:40:04','2020-11-26 18:40:05',0,1,0,NULL,NULL,NULL,NULL,12,1,1,1),
	(48,11,1,NULL,'Beige_strappy_summer_dress-variant-13','2020-11-26 18:40:04','2020-11-26 18:40:05',0,2,0,NULL,NULL,NULL,NULL,13,1,1,1),
	(49,11,1,NULL,'Beige_strappy_summer_dress-variant-14','2020-11-26 18:40:04','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,14,1,1,1),
	(50,12,1,NULL,'Off_shoulder_boho_dress-variant-0','2020-11-26 18:40:05','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(51,12,1,NULL,'Off_shoulder_boho_dress-variant-1','2020-11-26 18:40:05','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(52,12,1,NULL,'Off_shoulder_boho_dress-variant-2','2020-11-26 18:40:05','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(53,12,1,NULL,'Off_shoulder_boho_dress-variant-3','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(54,12,1,NULL,'Off_shoulder_boho_dress-variant-4','2020-11-26 18:40:05','2020-11-26 18:40:05',0,2,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(55,12,1,NULL,'Off_shoulder_boho_dress-variant-5','2020-11-26 18:40:05','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,5,1,1,1),
	(56,12,1,NULL,'Off_shoulder_boho_dress-variant-6','2020-11-26 18:40:05','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,6,1,1,1),
	(57,12,1,NULL,'Off_shoulder_boho_dress-variant-7','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,7,1,1,1),
	(58,12,1,NULL,'Off_shoulder_boho_dress-variant-8','2020-11-26 18:40:05','2020-11-26 18:40:05',0,8,0,NULL,NULL,NULL,NULL,8,1,1,1),
	(59,12,1,NULL,'Off_shoulder_boho_dress-variant-9','2020-11-26 18:40:05','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,9,1,1,1),
	(60,12,1,NULL,'Off_shoulder_boho_dress-variant-10','2020-11-26 18:40:05','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,10,1,1,1),
	(61,12,1,NULL,'Off_shoulder_boho_dress-variant-11','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,11,1,1,1),
	(62,12,1,NULL,'Off_shoulder_boho_dress-variant-12','2020-11-26 18:40:05','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,12,1,1,1),
	(63,12,1,NULL,'Off_shoulder_boho_dress-variant-13','2020-11-26 18:40:05','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,13,1,1,1),
	(64,12,1,NULL,'Off_shoulder_boho_dress-variant-14','2020-11-26 18:40:05','2020-11-26 18:40:05',0,7,0,NULL,NULL,NULL,NULL,14,1,1,1),
	(65,13,1,NULL,'Ruffle_wrap_festival_dress-variant-0','2020-11-26 18:40:05','2020-11-26 18:40:05',0,8,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(66,13,1,NULL,'Ruffle_wrap_festival_dress-variant-1','2020-11-26 18:40:05','2020-11-26 18:40:05',0,3,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(67,13,1,NULL,'Ruffle_wrap_festival_dress-variant-2','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(68,13,1,NULL,'Ruffle_wrap_festival_dress-variant-3','2020-11-26 18:40:05','2020-11-26 18:40:05',0,7,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(69,13,1,NULL,'Ruffle_wrap_festival_dress-variant-4','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(70,13,1,NULL,'Ruffle_wrap_festival_dress-variant-5','2020-11-26 18:40:05','2020-11-26 18:40:05',0,5,0,NULL,NULL,NULL,NULL,5,1,1,1),
	(71,13,1,NULL,'Ruffle_wrap_festival_dress-variant-6','2020-11-26 18:40:05','2020-11-26 18:40:05',0,9,0,NULL,NULL,NULL,NULL,6,1,1,1),
	(72,13,1,NULL,'Ruffle_wrap_festival_dress-variant-7','2020-11-26 18:40:05','2020-11-26 18:40:05',0,1,0,NULL,NULL,NULL,NULL,7,1,1,1),
	(73,13,1,NULL,'Ruffle_wrap_festival_dress-variant-8','2020-11-26 18:40:05','2020-11-26 18:40:05',0,8,0,NULL,NULL,NULL,NULL,8,1,1,1),
	(74,13,1,NULL,'Ruffle_wrap_festival_dress-variant-9','2020-11-26 18:40:05','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,9,1,1,1),
	(75,13,1,NULL,'Ruffle_wrap_festival_dress-variant-10','2020-11-26 18:40:05','2020-11-26 18:40:05',0,1,0,NULL,NULL,NULL,NULL,10,1,1,1),
	(76,13,1,NULL,'Ruffle_wrap_festival_dress-variant-11','2020-11-26 18:40:05','2020-11-26 18:40:05',0,4,0,NULL,NULL,NULL,NULL,11,1,1,1),
	(77,13,1,NULL,'Ruffle_wrap_festival_dress-variant-12','2020-11-26 18:40:05','2020-11-26 18:40:05',0,5,0,NULL,NULL,NULL,NULL,12,1,1,1),
	(78,13,1,NULL,'Ruffle_wrap_festival_dress-variant-13','2020-11-26 18:40:05','2020-11-26 18:40:05',0,0,0,NULL,NULL,NULL,NULL,13,1,1,1),
	(79,13,1,NULL,'Ruffle_wrap_festival_dress-variant-14','2020-11-26 18:40:05','2020-11-26 18:40:05',0,7,0,NULL,NULL,NULL,NULL,14,1,1,1),
	(80,14,1,NULL,'911M_regular_fit_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,6,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(81,14,1,NULL,'911M_regular_fit_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,3,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(82,14,1,NULL,'911M_regular_fit_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,8,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(83,14,1,NULL,'911M_regular_fit_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,7,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(84,14,1,NULL,'911M_regular_fit_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(85,15,1,NULL,'330M_slim_fit_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,2,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(86,15,1,NULL,'330M_slim_fit_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,0,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(87,15,1,NULL,'330M_slim_fit_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(88,15,1,NULL,'330M_slim_fit_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(89,15,1,NULL,'330M_slim_fit_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(90,16,1,NULL,'990M_regular_fit_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,2,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(91,16,1,NULL,'990M_regular_fit_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,6,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(92,16,1,NULL,'990M_regular_fit_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,4,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(93,16,1,NULL,'990M_regular_fit_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(94,16,1,NULL,'990M_regular_fit_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,4,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(95,17,1,NULL,'007M_black_elegance_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,0,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(96,17,1,NULL,'007M_black_elegance_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,4,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(97,17,1,NULL,'007M_black_elegance_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(98,17,1,NULL,'007M_black_elegance_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,6,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(99,17,1,NULL,'007M_black_elegance_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(100,18,1,NULL,'727F_patched_cropped_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(101,18,1,NULL,'727F_patched_cropped_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,5,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(102,18,1,NULL,'727F_patched_cropped_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,8,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(103,18,1,NULL,'727F_patched_cropped_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,0,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(104,18,1,NULL,'727F_patched_cropped_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(105,19,1,NULL,'111F_patched_jeans_with_fancy_badges-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,5,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(106,19,1,NULL,'111F_patched_jeans_with_fancy_badges-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(107,19,1,NULL,'111F_patched_jeans_with_fancy_badges-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,5,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(108,19,1,NULL,'111F_patched_jeans_with_fancy_badges-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(109,19,1,NULL,'111F_patched_jeans_with_fancy_badges-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(110,20,1,NULL,'000F_office_grey_jeans-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(111,20,1,NULL,'000F_office_grey_jeans-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(112,20,1,NULL,'000F_office_grey_jeans-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(113,20,1,NULL,'000F_office_grey_jeans-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(114,20,1,NULL,'000F_office_grey_jeans-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,7,0,NULL,NULL,NULL,NULL,4,1,1,1),
	(115,21,1,NULL,'666F_boyfriend_jeans_with_rips-variant-0','2020-11-26 18:40:06','2020-11-26 18:40:06',0,5,0,NULL,NULL,NULL,NULL,0,1,1,1),
	(116,21,1,NULL,'666F_boyfriend_jeans_with_rips-variant-1','2020-11-26 18:40:06','2020-11-26 18:40:06',0,9,0,NULL,NULL,NULL,NULL,1,1,1,1),
	(117,21,1,NULL,'666F_boyfriend_jeans_with_rips-variant-2','2020-11-26 18:40:06','2020-11-26 18:40:06',0,1,0,NULL,NULL,NULL,NULL,2,1,1,1),
	(118,21,1,NULL,'666F_boyfriend_jeans_with_rips-variant-3','2020-11-26 18:40:06','2020-11-26 18:40:06',0,8,0,NULL,NULL,NULL,NULL,3,1,1,1),
	(119,21,1,NULL,'666F_boyfriend_jeans_with_rips-variant-4','2020-11-26 18:40:06','2020-11-26 18:40:06',0,8,0,NULL,NULL,NULL,NULL,4,1,1,1);

/*!40000 ALTER TABLE `ecommerce_product_variant` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_variant_option_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_variant_option_value`;

CREATE TABLE `ecommerce_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `ecommerce_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `ecommerce_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_variant_option_value` DISABLE KEYS */;

INSERT INTO `ecommerce_product_variant_option_value` (`variant_id`, `option_value_id`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,1),
	(7,2),
	(8,3),
	(9,4),
	(10,5),
	(11,1),
	(12,2),
	(13,3),
	(14,4),
	(15,5),
	(16,1),
	(17,2),
	(18,3),
	(19,4),
	(20,5),
	(21,1),
	(22,2),
	(23,3),
	(24,4),
	(25,5),
	(26,1),
	(27,2),
	(28,3),
	(29,4),
	(30,5),
	(35,6),
	(35,11),
	(36,6),
	(36,12),
	(37,6),
	(37,13),
	(38,7),
	(38,11),
	(39,7),
	(39,12),
	(40,7),
	(40,13),
	(41,8),
	(41,11),
	(42,8),
	(42,12),
	(43,8),
	(43,13),
	(44,9),
	(44,11),
	(45,9),
	(45,12),
	(46,9),
	(46,13),
	(47,10),
	(47,11),
	(48,10),
	(48,12),
	(49,10),
	(49,13),
	(50,6),
	(50,11),
	(51,6),
	(51,12),
	(52,6),
	(52,13),
	(53,7),
	(53,11),
	(54,7),
	(54,12),
	(55,7),
	(55,13),
	(56,8),
	(56,11),
	(57,8),
	(57,12),
	(58,8),
	(58,13),
	(59,9),
	(59,11),
	(60,9),
	(60,12),
	(61,9),
	(61,13),
	(62,10),
	(62,11),
	(63,10),
	(63,12),
	(64,10),
	(64,13),
	(65,6),
	(65,11),
	(66,6),
	(66,12),
	(67,6),
	(67,13),
	(68,7),
	(68,11),
	(69,7),
	(69,12),
	(70,7),
	(70,13),
	(71,8),
	(71,11),
	(72,8),
	(72,12),
	(73,8),
	(73,13),
	(74,9),
	(74,11),
	(75,9),
	(75,12),
	(76,9),
	(76,13),
	(77,10),
	(77,11),
	(78,10),
	(78,12),
	(79,10),
	(79,13),
	(80,14),
	(81,15),
	(82,16),
	(83,17),
	(84,18),
	(85,14),
	(86,15),
	(87,16),
	(88,17),
	(89,18),
	(90,14),
	(91,15),
	(92,16),
	(93,17),
	(94,18),
	(95,14),
	(96,15),
	(97,16),
	(98,17),
	(99,18),
	(100,14),
	(101,15),
	(102,16),
	(103,17),
	(104,18),
	(105,14),
	(106,15),
	(107,16),
	(108,17),
	(109,18),
	(110,14),
	(111,15),
	(112,16),
	(113,17),
	(114,18),
	(115,14),
	(116,15),
	(117,16),
	(118,17),
	(119,18);

/*!40000 ALTER TABLE `ecommerce_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_product_variant_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_product_variant_translation`;

CREATE TABLE `ecommerce_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_product_variant_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`)
VALUES
	(1,1,'S','en_US'),
	(2,2,'M','en_US'),
	(3,3,'L','en_US'),
	(4,4,'XL','en_US'),
	(5,5,'XXL','en_US'),
	(6,6,'S','en_US'),
	(7,7,'M','en_US'),
	(8,8,'L','en_US'),
	(9,9,'XL','en_US'),
	(10,10,'XXL','en_US'),
	(11,11,'S','en_US'),
	(12,12,'M','en_US'),
	(13,13,'L','en_US'),
	(14,14,'XL','en_US'),
	(15,15,'XXL','en_US'),
	(16,16,'S','en_US'),
	(17,17,'M','en_US'),
	(18,18,'L','en_US'),
	(19,19,'XL','en_US'),
	(20,20,'XXL','en_US'),
	(21,21,'S','en_US'),
	(22,22,'M','en_US'),
	(23,23,'L','en_US'),
	(24,24,'XL','en_US'),
	(25,25,'XXL','en_US'),
	(26,26,'S','en_US'),
	(27,27,'M','en_US'),
	(28,28,'L','en_US'),
	(29,29,'XL','en_US'),
	(30,30,'XXL','en_US'),
	(31,31,'','en_US'),
	(32,32,'','en_US'),
	(33,33,'','en_US'),
	(34,34,'','en_US'),
	(35,35,'S Petite','en_US'),
	(36,36,'S Regular','en_US'),
	(37,37,'S Tall','en_US'),
	(38,38,'M Petite','en_US'),
	(39,39,'M Regular','en_US'),
	(40,40,'M Tall','en_US'),
	(41,41,'L Petite','en_US'),
	(42,42,'L Regular','en_US'),
	(43,43,'L Tall','en_US'),
	(44,44,'XL Petite','en_US'),
	(45,45,'XL Regular','en_US'),
	(46,46,'XL Tall','en_US'),
	(47,47,'XXL Petite','en_US'),
	(48,48,'XXL Regular','en_US'),
	(49,49,'XXL Tall','en_US'),
	(50,50,'S Petite','en_US'),
	(51,51,'S Regular','en_US'),
	(52,52,'S Tall','en_US'),
	(53,53,'M Petite','en_US'),
	(54,54,'M Regular','en_US'),
	(55,55,'M Tall','en_US'),
	(56,56,'L Petite','en_US'),
	(57,57,'L Regular','en_US'),
	(58,58,'L Tall','en_US'),
	(59,59,'XL Petite','en_US'),
	(60,60,'XL Regular','en_US'),
	(61,61,'XL Tall','en_US'),
	(62,62,'XXL Petite','en_US'),
	(63,63,'XXL Regular','en_US'),
	(64,64,'XXL Tall','en_US'),
	(65,65,'S Petite','en_US'),
	(66,66,'S Regular','en_US'),
	(67,67,'S Tall','en_US'),
	(68,68,'M Petite','en_US'),
	(69,69,'M Regular','en_US'),
	(70,70,'M Tall','en_US'),
	(71,71,'L Petite','en_US'),
	(72,72,'L Regular','en_US'),
	(73,73,'L Tall','en_US'),
	(74,74,'XL Petite','en_US'),
	(75,75,'XL Regular','en_US'),
	(76,76,'XL Tall','en_US'),
	(77,77,'XXL Petite','en_US'),
	(78,78,'XXL Regular','en_US'),
	(79,79,'XXL Tall','en_US'),
	(80,80,'S','en_US'),
	(81,81,'M','en_US'),
	(82,82,'L','en_US'),
	(83,83,'XL','en_US'),
	(84,84,'XXL','en_US'),
	(85,85,'S','en_US'),
	(86,86,'M','en_US'),
	(87,87,'L','en_US'),
	(88,88,'XL','en_US'),
	(89,89,'XXL','en_US'),
	(90,90,'S','en_US'),
	(91,91,'M','en_US'),
	(92,92,'L','en_US'),
	(93,93,'XL','en_US'),
	(94,94,'XXL','en_US'),
	(95,95,'S','en_US'),
	(96,96,'M','en_US'),
	(97,97,'L','en_US'),
	(98,98,'XL','en_US'),
	(99,99,'XXL','en_US'),
	(100,100,'S','en_US'),
	(101,101,'M','en_US'),
	(102,102,'L','en_US'),
	(103,103,'XL','en_US'),
	(104,104,'XXL','en_US'),
	(105,105,'S','en_US'),
	(106,106,'M','en_US'),
	(107,107,'L','en_US'),
	(108,108,'XL','en_US'),
	(109,109,'XXL','en_US'),
	(110,110,'S','en_US'),
	(111,111,'M','en_US'),
	(112,112,'L','en_US'),
	(113,113,'XL','en_US'),
	(114,114,'XXL','en_US'),
	(115,115,'S','en_US'),
	(116,116,'M','en_US'),
	(117,117,'L','en_US'),
	(118,118,'XL','en_US'),
	(119,119,'XXL','en_US');

/*!40000 ALTER TABLE `ecommerce_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion`;

CREATE TABLE `ecommerce_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`)
VALUES
	(1,'christmas','Christmas','Et assumenda tempora esse.',0,1,NULL,0,1,NULL,NULL,'2020-11-26 18:40:02','2020-11-26 18:40:02'),
	(2,'new_year','New Year','Et assumenda tempora esse.',2,1,10,10,0,'2020-11-19 18:40:02','2020-12-03 18:40:02','2020-11-26 18:40:02','2020-11-26 18:40:11');

/*!40000 ALTER TABLE `ecommerce_promotion` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion_action
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion_action`;

CREATE TABLE `ecommerce_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `ecommerce_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion_action` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion_action` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion_action` (`id`, `promotion_id`, `type`, `configuration`)
VALUES
	(1,1,'order_percentage_discount','a:1:{s:10:\"percentage\";d:0.34;}'),
	(2,2,'order_fixed_discount','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:1000;}}');

/*!40000 ALTER TABLE `ecommerce_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion_channels`;

CREATE TABLE `ecommerce_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `ecommerce_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion_channels` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion_channels` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion_channels` (`promotion_id`, `channel_id`)
VALUES
	(1,2),
	(2,2);

/*!40000 ALTER TABLE `ecommerce_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion_coupon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion_coupon`;

CREATE TABLE `ecommerce_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `ecommerce_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion_coupon` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion_coupon` (`id`, `promotion_id`, `code`, `usage_limit`, `used`, `expires_at`, `created_at`, `updated_at`, `per_customer_usage_limit`, `reusable_from_cancelled_orders`)
VALUES
	(1,1,'CHRISTMAS_SALE',10,0,'2020-12-24 00:00:00','2020-11-26 18:40:02','2020-11-26 18:40:02',1,1);

/*!40000 ALTER TABLE `ecommerce_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion_order`;

CREATE TABLE `ecommerce_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `ecommerce_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `ecommerce_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion_order` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion_order` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion_order` (`order_id`, `promotion_id`)
VALUES
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2);

/*!40000 ALTER TABLE `ecommerce_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_promotion_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_promotion_rule`;

CREATE TABLE `ecommerce_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `ecommerce_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_promotion_rule` WRITE;
/*!40000 ALTER TABLE `ecommerce_promotion_rule` DISABLE KEYS */;

INSERT INTO `ecommerce_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`)
VALUES
	(1,1,'cart_quantity','a:1:{s:5:\"count\";i:1;}'),
	(2,2,'item_total','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:10000;}}');

/*!40000 ALTER TABLE `ecommerce_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_province
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_province`;

CREATE TABLE `ecommerce_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `ecommerce_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_shipment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipment`;

CREATE TABLE `ecommerce_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `ecommerce_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `ecommerce_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shipment` WRITE;
/*!40000 ALTER TABLE `ecommerce_shipment` DISABLE KEYS */;

INSERT INTO `ecommerce_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`, `shipped_at`)
VALUES
	(1,1,1,'shipped',NULL,'2020-02-28 17:51:56','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(2,1,2,'shipped',NULL,'2020-03-15 07:50:11','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(3,1,3,'shipped',NULL,'2020-03-21 22:05:02','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(4,1,4,'shipped',NULL,'2020-04-16 05:37:06','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(5,2,5,'shipped',NULL,'2020-05-26 08:36:01','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(6,2,6,'shipped',NULL,'2020-06-05 00:51:54','2020-11-26 18:40:10','2020-11-26 18:40:10'),
	(7,1,7,'shipped',NULL,'2020-06-23 05:24:39','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(8,1,8,'shipped',NULL,'2020-08-01 05:46:16','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(9,1,9,'shipped',NULL,'2020-08-09 02:58:57','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(10,2,10,'shipped',NULL,'2020-08-27 11:20:14','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(11,1,11,'shipped',NULL,'2020-10-08 17:24:35','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(12,1,12,'shipped',NULL,'2020-11-12 18:51:04','2020-11-26 18:40:11','2020-11-26 18:40:11'),
	(13,1,13,'ready',NULL,'2019-11-30 02:24:32','2020-11-26 18:40:12',NULL),
	(14,1,14,'ready',NULL,'2019-12-17 02:45:40','2020-11-26 18:40:12',NULL),
	(15,1,15,'ready',NULL,'2020-02-14 06:34:17','2020-11-26 18:40:12',NULL),
	(16,1,16,'ready',NULL,'2020-04-02 10:08:47','2020-11-26 18:40:12',NULL),
	(17,1,17,'ready',NULL,'2020-08-22 10:52:57','2020-11-26 18:40:12',NULL),
	(18,2,18,'ready',NULL,'2020-09-19 09:11:58','2020-11-26 18:40:13',NULL),
	(19,1,19,'ready',NULL,'2020-09-23 23:10:08','2020-11-26 18:40:13',NULL),
	(20,2,20,'ready',NULL,'2020-11-06 11:48:58','2020-11-26 18:40:13',NULL);

/*!40000 ALTER TABLE `ecommerce_shipment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_shipping_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipping_category`;

CREATE TABLE `ecommerce_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_shipping_method
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipping_method`;

CREATE TABLE `ecommerce_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `ecommerce_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `ecommerce_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `ecommerce_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shipping_method` WRITE;
/*!40000 ALTER TABLE `ecommerce_shipping_method` DISABLE KEYS */;

INSERT INTO `ecommerce_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `created_at`, `updated_at`, `archived_at`)
VALUES
	(1,NULL,2,NULL,'ups','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:855;}}',1,'flat_rate',1,0,'2020-11-26 18:39:57','2020-11-26 18:39:57',NULL),
	(2,NULL,2,NULL,'dhl_express','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:510;}}',1,'flat_rate',1,1,'2020-11-26 18:39:57','2020-11-26 18:39:57',NULL),
	(3,NULL,1,NULL,'fedex','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:149;}}',1,'flat_rate',1,2,'2020-11-26 18:39:57','2020-11-26 18:39:57',NULL);

/*!40000 ALTER TABLE `ecommerce_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_shipping_method_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipping_method_channels`;

CREATE TABLE `ecommerce_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `ecommerce_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `ecommerce_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `ecommerce_shipping_method_channels` DISABLE KEYS */;

INSERT INTO `ecommerce_shipping_method_channels` (`shipping_method_id`, `channel_id`)
VALUES
	(1,2),
	(2,2),
	(3,2);

/*!40000 ALTER TABLE `ecommerce_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_shipping_method_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipping_method_rule`;

CREATE TABLE `ecommerce_shipping_method_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `ecommerce_shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_shipping_method_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shipping_method_translation`;

CREATE TABLE `ecommerce_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_shipping_method_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`)
VALUES
	(1,1,'UPS','Libero aut temporibus sint assumenda.','en_US'),
	(2,1,'UPS','Libero aut temporibus sint assumenda.','de_DE'),
	(3,1,'UPS','Libero aut temporibus sint assumenda.','fr_FR'),
	(4,1,'UPS','Libero aut temporibus sint assumenda.','pl_PL'),
	(5,1,'UPS','Libero aut temporibus sint assumenda.','es_ES'),
	(6,1,'UPS','Libero aut temporibus sint assumenda.','es_MX'),
	(7,1,'UPS','Libero aut temporibus sint assumenda.','pt_PT'),
	(8,1,'UPS','Libero aut temporibus sint assumenda.','zh_CN'),
	(9,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','en_US'),
	(10,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','de_DE'),
	(11,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','fr_FR'),
	(12,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','pl_PL'),
	(13,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','es_ES'),
	(14,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','es_MX'),
	(15,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','pt_PT'),
	(16,2,'DHL Express','Magni illo natus ut cupiditate quaerat et.','zh_CN'),
	(17,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','en_US'),
	(18,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','de_DE'),
	(19,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','fr_FR'),
	(20,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','pl_PL'),
	(21,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','es_ES'),
	(22,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','es_MX'),
	(23,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','pt_PT'),
	(24,3,'FedEx','Quidem voluptas aut enim nulla sunt voluptatem.','zh_CN');

/*!40000 ALTER TABLE `ecommerce_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_shop_billing_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shop_billing_data`;

CREATE TABLE `ecommerce_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `ecommerce_shop_billing_data` DISABLE KEYS */;

INSERT INTO `ecommerce_shop_billing_data` (`id`, `company`, `tax_id`, `country_code`, `street`, `city`, `postcode`)
VALUES
	(1,'ACME Web','0001112221','US','Test St. 15','eCommerce Town','00 33 22'),
	(2,'ACME Mobile','0001112222','US','Test St. 15','eCommerce Town','00 33 22'),
	(3,'ACME External','0001112223','US','Test St. 15','eCommerce Town','00 33 22');

/*!40000 ALTER TABLE `ecommerce_shop_billing_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_shop_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_shop_user`;

CREATE TABLE `ecommerce_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `ecommerce_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_shop_user` WRITE;
/*!40000 ALTER TABLE `ecommerce_shop_user` DISABLE KEYS */;

INSERT INTO `ecommerce_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `encoder_name`)
VALUES
	(1,1,'shop@example.com','shop@example.com',1,'rch1mstllao84s4kksccc0okk84k880','$argon2i$v=19$m=65536,t=4,p=1$NWY2QjdMVGcuV2h3VzEvcw$yBhQDySiyjoaP9m2PLNPEBwBHujUjlhoJmIbh86cHkI',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:57','2020-11-26 18:39:57','argon2i'),
	(2,2,'annabelle14@brown.com','annabelle14@brown.com',1,'tnbazdpcmy8oc4g8cc4c8w0o4wgok48','$argon2i$v=19$m=65536,t=4,p=1$bVlhVUdDckptb0kwUnUzUA$/KB/vT9zyqazrQGuJYqYyuxkPabXcWy4CpzvRqlbOKA',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:57','2020-11-26 18:39:57','argon2i'),
	(3,3,'madalyn13@gmail.com','madalyn13@gmail.com',1,'plgmvq4l1ogwc00okgkcwk0408s4cco','$argon2i$v=19$m=65536,t=4,p=1$NjFVdXNHQWRoNC82OXBuRA$bKVkBWh/COEhmzZ8dFKAVzxgkthjAdaR/AbsqFlNs9o',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(4,4,'gbosco@breitenberg.biz','gbosco@breitenberg.biz',1,'465ijvs19p8gkkkko008c00cc4s80cw','$argon2i$v=19$m=65536,t=4,p=1$SlJPSXRLNlR1dVM2LmRuLw$ar3k7vw/09FlSX4/er3hUbLeRc7QtajV/zeJ8q+qC3I',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(5,5,'ebert.gonzalo@gmail.com','ebert.gonzalo@gmail.com',1,'eqiwaz2sv484okkk088kss44wsgows4','$argon2i$v=19$m=65536,t=4,p=1$MThGL01FODBvRGhJYzN5Tw$goTdAWmPdCDwhX4Y4OYcsCHfyN/r5YBuDl9FdKiuJ1Q',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(6,6,'little.zachariah@ortiz.com','little.zachariah@ortiz.com',1,'9va5pxsgaowkcc0s8wo4ko844gk0ogg','$argon2i$v=19$m=65536,t=4,p=1$WWEzNXFEUUZvMU9kM09DSg$B6pTvaGwcC7zoaBYljHPr27BDLBaWlyZT1wxJ6fDLlc',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(7,7,'carson.boyer@buckridge.com','carson.boyer@buckridge.com',1,'hd0yao01d5sk00kwsg80s8gkwc0wo8s','$argon2i$v=19$m=65536,t=4,p=1$UE1vRnN0YTJzM3NEVU04RA$HZX8kKZSoZoYFcvZD98un0apuUS/jEkRmZbwVy/xC5o',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(8,8,'qjerde@hotmail.com','qjerde@hotmail.com',1,'iy4i3wt58igcg880c04wc4g880o4goc','$argon2i$v=19$m=65536,t=4,p=1$d1g3NVB3dWRDbUhvWkZpRw$lGJ+DerQPlb1dAcUYrOScCtGAy+tjwoN4rij8MeOszQ',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:58','2020-11-26 18:39:58','argon2i'),
	(9,9,'dorian72@hotmail.com','dorian72@hotmail.com',1,'hmsqn090ua0444s04484c000sg088sk','$argon2i$v=19$m=65536,t=4,p=1$d1hJUGVHdHZVSWZmVEdZdQ$Fev4D2d9dPLPzUCig/SRK2PG6m4o/97226SibbN+Uy0',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:59','2020-11-26 18:39:59','argon2i'),
	(10,10,'chamill@hickle.com','chamill@hickle.com',1,'6whoskbi1qg4wo00k4gs48oc488kw4o','$argon2i$v=19$m=65536,t=4,p=1$L2htRHNVbU1LdWZhL1VqeQ$LJeaXxpRtE2R4OPtC2Hz99cZHQLBSMrcFGk4KYkdofM',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:59','2020-11-26 18:39:59','argon2i'),
	(11,11,'rgrimes@nienow.info','rgrimes@nienow.info',1,'6sxia5wmdjsw8sc4sko8kwcsw8w08s8','$argon2i$v=19$m=65536,t=4,p=1$dnBPa2ttNzU4cVFXVVpYMg$4ej/voMLNf76XEBFJksc4qOUMj2z1lXCem4dCSg7OYE',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:59','2020-11-26 18:39:59','argon2i'),
	(12,12,'lind.chad@yahoo.com','lind.chad@yahoo.com',1,'gu9k4jq6ie0ccw8kow0w0gok0cg80ws','$argon2i$v=19$m=65536,t=4,p=1$eEFXU3hwTXdkaEc3eXNUUQ$PCzIVf7VMRGVrEzzBVHXMcaTmT40EXSY0If7A9M0hx4',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:59','2020-11-26 18:39:59','argon2i'),
	(13,13,'maribel.carroll@gmail.com','maribel.carroll@gmail.com',1,'rfogr4gbf688gokw0sksw4o404gcs0s','$argon2i$v=19$m=65536,t=4,p=1$SFFFN0N0NzYyaTQ2UGxueg$aMhvlmrhBzaGa2H6ZweVP/KqUcczGopT9dtfU4ENDSQ',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:39:59','2020-11-26 18:39:59','argon2i'),
	(14,14,'kshlerin.keagan@runte.com','kshlerin.keagan@runte.com',1,'4b0omy9gp7s48w44k00wgksskokscws','$argon2i$v=19$m=65536,t=4,p=1$YzlaUU02ckxac25vUmdXRg$ST7W6MRaCOX72zLxtYDy5Ns9QztXALwwRGBIz3J05pk',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:00','2020-11-26 18:40:00','argon2i'),
	(15,15,'buford52@gmail.com','buford52@gmail.com',1,'2rshdwgk3l2cc48484ko0os8ks00sgg','$argon2i$v=19$m=65536,t=4,p=1$SHZEWkp6aEpoeVpjdGRuaA$4ssv4rXqCz3cJETO65ISqWSmzrHZPPhKTx87zcw2yo8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:00','2020-11-26 18:40:00','argon2i'),
	(16,16,'runte.franz@yahoo.com','runte.franz@yahoo.com',1,'pi5sp1qp6rk04kws0coooksogk4ck88','$argon2i$v=19$m=65536,t=4,p=1$V0NWVHlVZ0phSzB2eDVodA$o73RVNW/gZA7am1CInlTXABa2zCQKwXnAuC56DSMfdc',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:00','2020-11-26 18:40:00','argon2i'),
	(17,17,'douglas.miller@breitenberg.com','douglas.miller@breitenberg.com',1,'m2myokqgim8wggogogw8sg0w0cs4kgw','$argon2i$v=19$m=65536,t=4,p=1$NGk4eS5TYy5wZTZqbE9wUQ$KbX40XPz9J+WulNzLKUVRO8fz+CtMs7mn9N5v1YEpLA',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:00','2020-11-26 18:40:00','argon2i'),
	(18,18,'dayne.robel@yahoo.com','dayne.robel@yahoo.com',1,'g1s286dmqyo0s4ogcw4cokkco84cs0o','$argon2i$v=19$m=65536,t=4,p=1$STFIbzFsYS5YeGdoR09PQQ$/RuoQ2XuX+8mI8mzqCsbLgf/oiSEtsBAITDNgFqQxU8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:00','2020-11-26 18:40:00','argon2i'),
	(19,19,'lueilwitz.alexandro@yahoo.com','lueilwitz.alexandro@yahoo.com',1,'2j3gy1ew4e0w0s440scgg00oggskk44','$argon2i$v=19$m=65536,t=4,p=1$U2hlSGUzOWhJWS5RbHpZUA$6wGxGgXahsMU8XDHKZd51rtEgGVOPtNr4WPW4FPjxXY',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:01','2020-11-26 18:40:01','argon2i'),
	(20,20,'nhaag@hotmail.com','nhaag@hotmail.com',1,'3nzuzsiu7w2s0w40kc0s0gkgg40840k','$argon2i$v=19$m=65536,t=4,p=1$UWltb3FHbmVCUmVTMFFCdw$i4LyuKyQdg0GVvOG8iKcUD6q2duxce5ZXYX4RBg42MQ',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:01','2020-11-26 18:40:01','argon2i'),
	(21,21,'carmen09@yahoo.com','carmen09@yahoo.com',1,'fl034vyjqfwwkss4c088o00wsc4wkgc','$argon2i$v=19$m=65536,t=4,p=1$a2Q4eHE3aUdSdi5jZFkwdw$FwiWu5xa/dipzJYnS1ILLWRjIgDBMD8pMc9MZcqw8oI',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2020-11-26 18:40:01','2020-11-26 18:40:01','argon2i');

/*!40000 ALTER TABLE `ecommerce_shop_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_tax_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_tax_category`;

CREATE TABLE `ecommerce_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_tax_category` WRITE;
/*!40000 ALTER TABLE `ecommerce_tax_category` DISABLE KEYS */;

INSERT INTO `ecommerce_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'clothing','Clothing','Hic ut voluptatibus sunt sed id eum quis. Iure et adipisci repellat ad. Culpa cumque id sed dicta nostrum iusto. Neque asperiores aut eius sint vitae illum omnis.','2020-11-26 18:40:01','2020-11-26 18:40:01'),
	(2,'other','Other','Corrupti error eligendi incidunt qui facilis. Eos labore libero voluptatem ratione molestiae esse assumenda. Voluptas culpa mollitia doloribus omnis quasi temporibus est perferendis. Totam quis molestias voluptas aut architecto omnis.','2020-11-26 18:40:01','2020-11-26 18:40:01');

/*!40000 ALTER TABLE `ecommerce_tax_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_tax_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_tax_rate`;

CREATE TABLE `ecommerce_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `ecommerce_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `ecommerce_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_tax_rate` WRITE;
/*!40000 ALTER TABLE `ecommerce_tax_rate` DISABLE KEYS */;

INSERT INTO `ecommerce_tax_rate` (`id`, `category_id`, `zone_id`, `code`, `name`, `amount`, `included_in_price`, `calculator`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'clothing_sales_tax_7','Clothing Sales Tax 7%',0.07000,1,'default','2020-11-26 18:40:01','2020-11-26 18:40:01'),
	(2,2,1,'sales_tax_20','Sales Tax 20%',0.20000,1,'default','2020-11-26 18:40:01','2020-11-26 18:40:01');

/*!40000 ALTER TABLE `ecommerce_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_taxon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_taxon`;

CREATE TABLE `ecommerce_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_taxon` WRITE;
/*!40000 ALTER TABLE `ecommerce_taxon` DISABLE KEYS */;

INSERT INTO `ecommerce_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`, `enabled`)
VALUES
	(1,1,NULL,'MENU_CATEGORY',1,22,0,0,'2020-11-26 18:39:57','2020-11-26 18:39:57',1),
	(2,1,1,'t_shirts',2,7,1,0,'2020-11-26 18:40:02','2020-11-26 18:40:02',1),
	(3,1,2,'mens_t_shirts',3,4,2,0,'2020-11-26 18:40:02','2020-11-26 18:40:02',1),
	(4,1,2,'womens_t_shirts',5,6,2,1,'2020-11-26 18:40:02','2020-11-26 18:40:02',1),
	(5,1,1,'caps',8,13,1,1,'2020-11-26 18:40:03','2020-11-26 18:40:03',1),
	(6,1,5,'simple_caps',9,10,2,0,'2020-11-26 18:40:03','2020-11-26 18:40:03',1),
	(7,1,5,'caps_with_pompons',11,12,2,1,'2020-11-26 18:40:03','2020-11-26 18:40:03',1),
	(8,1,1,'dresses',14,15,1,2,'2020-11-26 18:40:04','2020-11-26 18:40:04',1),
	(9,1,1,'jeans',16,21,1,3,'2020-11-26 18:40:05','2020-11-26 18:40:05',1),
	(10,1,9,'mens_jeans',17,18,2,0,'2020-11-26 18:40:05','2020-11-26 18:40:05',1),
	(11,1,9,'womens_jeans',19,20,2,1,'2020-11-26 18:40:05','2020-11-26 18:40:05',1);

/*!40000 ALTER TABLE `ecommerce_taxon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_taxon_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_taxon_image`;

CREATE TABLE `ecommerce_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_taxon_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_taxon_translation`;

CREATE TABLE `ecommerce_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `ecommerce_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `ecommerce_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_taxon_translation` WRITE;
/*!40000 ALTER TABLE `ecommerce_taxon_translation` DISABLE KEYS */;

INSERT INTO `ecommerce_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`)
VALUES
	(1,1,'Category','category','Repellendus qui rem et quasi voluptas ut hic quam. Aperiam quos quisquam veritatis facilis culpa ullam ipsam. Reprehenderit eum quisquam omnis earum.','en_US'),
	(2,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','de_DE'),
	(3,1,'Catégorie','categorie','Fuga blanditiis necessitatibus optio rerum enim ratione quidem fuga. Ut occaecati ut ipsam sint doloribus. In et minima labore quidem voluptatum et. Et libero architecto aspernatur et eveniet consequatur iure necessitatibus.','fr_FR'),
	(4,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','pl_PL'),
	(5,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','es_ES'),
	(6,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','es_MX'),
	(7,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','pt_PT'),
	(8,1,'Category','category','Libero quo molestiae sint aliquid quia eius. Libero minima veritatis quas et ex laudantium et. Ut amet velit temporibus est facere qui voluptatem. Unde consequatur voluptatibus sed.','zh_CN'),
	(9,2,'T-shirts','category/t-shirts','Ut maxime qui eveniet accusamus qui. Perferendis enim ab non modi. Qui nostrum corporis et qui ut. Molestiae porro magni possimus veritatis sit sit.','en_US'),
	(10,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','de_DE'),
	(11,2,'T-shirts','categorie/t-shirts','Non autem ut ut doloribus soluta suscipit. Beatae explicabo officia maiores et aut quia doloremque. Explicabo rem ea saepe maiores.','fr_FR'),
	(12,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','pl_PL'),
	(13,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','es_ES'),
	(14,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','es_MX'),
	(15,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','pt_PT'),
	(16,2,'T-shirts','t-shirts','Praesentium eaque eos repudiandae. Quae est omnis ex accusamus quo nobis. Cumque quia aut ea optio.','zh_CN'),
	(17,3,'Men','t-shirts/men','Neque tempore quaerat ea vitae dolores voluptatem. Eligendi consequatur aliquam ut porro ea nobis autem perspiciatis. Eveniet quia asperiores consequatur. Non tenetur est recusandae quia officiis cum minus.','en_US'),
	(18,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','de_DE'),
	(19,3,'Hommes','t-shirts/hommes','Omnis suscipit consectetur reiciendis mollitia iusto sed. Qui maxime distinctio eveniet aut eius cupiditate. Possimus vel est at fugiat voluptatem quae. Quia ratione illo fugiat quasi et placeat est.','fr_FR'),
	(20,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','pl_PL'),
	(21,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','es_ES'),
	(22,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','es_MX'),
	(23,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','pt_PT'),
	(24,3,'perferendis inventore natus','t-shirts/perferendis-inventore-natus','Sit voluptatem eum eum quod eos. Sint aut corporis deserunt.','zh_CN'),
	(25,4,'Women','t-shirts/women','Repellat consequatur laboriosam qui et minima. Quam unde nihil molestias voluptatum repellat. Voluptas porro hic illum vero. Excepturi qui sit pariatur sequi corrupti cupiditate quibusdam.','en_US'),
	(26,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','de_DE'),
	(27,4,'Femmes','t-shirts/femmes','Voluptatem eos est nostrum quidem asperiores necessitatibus distinctio. Alias consequatur amet consequuntur voluptas quaerat quos. Dolorum consectetur voluptas vel eveniet et aut iusto atque. Provident nisi consequatur vel facilis.','fr_FR'),
	(28,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','pl_PL'),
	(29,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','es_ES'),
	(30,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','es_MX'),
	(31,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','pt_PT'),
	(32,4,'eius cupiditate dolorum','t-shirts/eius-cupiditate-dolorum','Iste voluptatum illum blanditiis dolor. Temporibus saepe nostrum ut consectetur vitae. Molestiae aliquid doloremque sunt. Dignissimos id animi tenetur odio aut et.','zh_CN'),
	(33,5,'Caps','category/caps','Dolore iure ut qui sunt voluptatum. Autem in ut repudiandae eligendi ut. Temporibus sequi quod quae ex in. Optio quia est voluptas laborum.','en_US'),
	(34,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','de_DE'),
	(35,5,'Bonnets','categorie/bonnets','Rem necessitatibus necessitatibus et laborum optio. Quibusdam sunt sunt autem saepe laboriosam ipsa. Eos rerum et molestiae nobis totam nobis eum. Ipsa nihil sit et quaerat.','fr_FR'),
	(36,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','pl_PL'),
	(37,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','es_ES'),
	(38,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','es_MX'),
	(39,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','pt_PT'),
	(40,5,'Caps','caps','Et doloremque itaque voluptas possimus. Et voluptates dicta et et. Sit rem voluptatem sed ipsum et quis non. Eos consequuntur laudantium suscipit suscipit amet labore omnis neque.','zh_CN'),
	(41,6,'Simple','caps/simple','Ut vero esse ratione. Fugit magnam et qui recusandae blanditiis ex placeat. Quia et dolores sit.','en_US'),
	(42,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','de_DE'),
	(43,6,'Simple','bonnets/simple','Magnam occaecati corrupti et eum. Nam iusto consequuntur et vitae. Libero praesentium et et vel culpa. Est iusto aut in.','fr_FR'),
	(44,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','pl_PL'),
	(45,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','es_ES'),
	(46,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','es_MX'),
	(47,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','pt_PT'),
	(48,6,'nostrum quos ipsum','caps/nostrum-quos-ipsum','Eligendi blanditiis nihil maxime et. Et velit enim laboriosam aut veniam voluptates suscipit non. Et nihil porro voluptatem rem et earum molestiae. Facere dolores qui iusto odio esse.','zh_CN'),
	(49,7,'With pompons','caps/with-pompons','Omnis suscipit quasi sit quisquam dicta maiores. Debitis accusantium atque exercitationem enim excepturi. Mollitia modi quo minima neque dolorem sit velit.','en_US'),
	(50,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','de_DE'),
	(51,7,'À pompon','bonnets/a-pompon','Optio dignissimos repellat voluptatem harum expedita. Atque debitis est sapiente maxime praesentium. Est porro odit ullam adipisci nisi.','fr_FR'),
	(52,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','pl_PL'),
	(53,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','es_ES'),
	(54,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','es_MX'),
	(55,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','pt_PT'),
	(56,7,'ex fugit quasi','caps/ex-fugit-quasi','Maiores eveniet totam quia rerum architecto maxime. Tenetur ut aspernatur ducimus. Accusantium dicta et optio voluptatum.','zh_CN'),
	(57,8,'Dresses','category/dresses','Nobis et reprehenderit eius quos error. Nisi adipisci occaecati molestiae ab cum. Non dolorem eos dolor repudiandae. Eveniet dolor est asperiores delectus.','en_US'),
	(58,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','de_DE'),
	(59,8,'Robes','categorie/robes','Ad et ipsa labore mollitia et maiores impedit. Repudiandae id tenetur nihil atque in et aut rem.','fr_FR'),
	(60,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','pl_PL'),
	(61,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','es_ES'),
	(62,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','es_MX'),
	(63,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','pt_PT'),
	(64,8,'natus a consequuntur','category/natus-a-consequuntur','Reprehenderit vitae accusantium perferendis quod voluptas qui et. Sapiente amet iste et quo reiciendis tempore saepe. Vitae voluptas magnam iste dolorem.','zh_CN'),
	(65,9,'Jeans','category/jeans','Fugiat et corporis enim ad qui sapiente ut unde. Omnis labore qui aut et omnis.','en_US'),
	(66,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','de_DE'),
	(67,9,'Jeans','categorie/jeans','Distinctio consequuntur ab corrupti sed. Distinctio porro ea asperiores voluptate autem similique amet. Maiores laboriosam neque amet et. Placeat est sint porro error et quis beatae.','fr_FR'),
	(68,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','pl_PL'),
	(69,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','es_ES'),
	(70,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','es_MX'),
	(71,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','pt_PT'),
	(72,9,'Jeans','jeans','Cum corporis deleniti dignissimos et mollitia. Vitae quia exercitationem voluptatum ut quaerat. Autem quis sapiente et odit architecto repellendus.','zh_CN'),
	(73,10,'Men','jeans/men','Ullam dolorem nostrum nihil esse ipsum. Sed omnis sint ea minima harum qui aut dolorem. Iste dolor omnis voluptatem repellat.','en_US'),
	(74,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','de_DE'),
	(75,10,'Hommes','jeans/hommes','Quae consectetur at ullam voluptas ut quas repellendus autem. Omnis rem molestiae odit rerum et impedit libero ratione. Non quia facilis ea possimus totam deserunt.','fr_FR'),
	(76,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','pl_PL'),
	(77,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','es_ES'),
	(78,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','es_MX'),
	(79,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','pt_PT'),
	(80,10,'ut reiciendis architecto','jeans/ut-reiciendis-architecto','Accusamus quis enim vitae architecto placeat fugit nisi. Veniam molestiae incidunt ab et voluptatem reprehenderit et et. Eum distinctio impedit qui quis libero fugiat nemo.','zh_CN'),
	(81,11,'Women','jeans/women','Sint labore incidunt ducimus similique odio. Aperiam saepe laboriosam ut voluptatibus reiciendis omnis odio. Quia repellendus reiciendis corrupti et id harum. Quam et at est dicta provident neque. Eligendi ducimus quisquam et eum.','en_US'),
	(82,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','de_DE'),
	(83,11,'Femmes','jeans/femmes','Molestias dolorum laborum iure consequatur. Voluptates eius repellat fugit autem. Ipsa assumenda architecto doloribus quia.','fr_FR'),
	(84,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','pl_PL'),
	(85,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','es_ES'),
	(86,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','es_MX'),
	(87,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','pt_PT'),
	(88,11,'eius blanditiis temporibus','jeans/eius-blanditiis-temporibus','Laborum totam quod occaecati voluptatem reprehenderit corrupti. Non ut dolore et excepturi recusandae. Voluptas voluptas aut sit quod soluta tempora et.','zh_CN');

/*!40000 ALTER TABLE `ecommerce_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_user_oauth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_user_oauth`;

CREATE TABLE `ecommerce_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ecommerce_zone
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_zone`;

CREATE TABLE `ecommerce_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_zone` WRITE;
/*!40000 ALTER TABLE `ecommerce_zone` DISABLE KEYS */;

INSERT INTO `ecommerce_zone` (`id`, `code`, `name`, `type`, `scope`)
VALUES
	(1,'US','United States of America','country','all'),
	(2,'WORLD','World','country','all');

/*!40000 ALTER TABLE `ecommerce_zone` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ecommerce_zone_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ecommerce_zone_member`;

CREATE TABLE `ecommerce_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `ecommerce_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ecommerce_zone_member` WRITE;
/*!40000 ALTER TABLE `ecommerce_zone_member` DISABLE KEYS */;

INSERT INTO `ecommerce_zone_member` (`id`, `belongs_to`, `code`)
VALUES
	(1,1,'US'),
	(5,2,'AU'),
	(6,2,'CA'),
	(11,2,'CN'),
	(4,2,'DE'),
	(10,2,'ES'),
	(3,2,'FR'),
	(12,2,'GB'),
	(7,2,'MX'),
	(8,2,'NZ'),
	(13,2,'PL'),
	(9,2,'PT'),
	(2,2,'US');

/*!40000 ALTER TABLE `ecommerce_zone_member` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
