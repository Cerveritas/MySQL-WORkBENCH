CREATE DATABASE  IF NOT EXISTS `examen_t2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `examen_t2`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: examen_t2
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `codigoArtista` int NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `salario` decimal(8,0) NOT NULL,
  `codigoGrupo` int NOT NULL,
  PRIMARY KEY (`codigoArtista`),
  KEY `codigoGrupo` (`codigoGrupo`),
  CONSTRAINT `artistas_ibfk_1` FOREIGN KEY (`codigoGrupo`) REFERENCES `grupos` (`codigoGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (34751013,'Manuela','Terry','d',43769,2147483647);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (186933925,'Steve','Pfeffer','a',83424,678868060);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (197426529,'Humberto','Schneider','v',74360,840994523);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (340770731,'Porter','Brown','u',50532,1479026415);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (364939634,'Domenico','Reinger','r',23533,825561185);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (607151846,'Nicklaus','Powlowski','o',23461,525376684);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (608699991,'Felton','Kling','n',87394,346898870);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (617564927,'Abraham','Gerhold','r',71782,1514129000);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (787562285,'Dejuan','Murphy','x',88425,238079293);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (828778276,'Sedrick','Cole','c',30107,840994523);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1010669480,'Vidal','Bahringer','p',27841,525376684);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1025941316,'Jace','Ullrich','j',66154,1192967968);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1059942345,'Maximo','Braun','j',26088,1514129000);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1169946381,'Napoleon','Nicolas','v',95807,1872276447);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1392280669,'Adolph','Jacobs','k',13528,863625502);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1392807056,'Guillermo','Gottlieb','l',56551,863625502);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1474205122,'Randy','Schimmel','f',46460,825561185);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1569474958,'Damion','Nikolaus','d',4464,238079293);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1574811269,'Mack','Quigley','n',75922,1991307628);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1657256405,'Geovanny','Smith','m',6144,678868060);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1709438586,'Junius','Thiel','b',40630,863625502);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1749675672,'Casimer','Lemke','e',80492,1938531320);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1787101722,'Augustus','Davis','w',25149,1283220231);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1792165240,'Nasir','Conroy','y',36193,995941427);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1810483062,'Damian','Botsford','r',43096,1991307628);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1939347272,'Jacey','Walker','h',63041,525376684);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1956529098,'Giovanni','Ruecker','k',20227,1582813480);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1984043452,'Adriel','Ryan','r',15054,238079293);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (1993032223,'Roger','Brown','g',77008,1938531320);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (2021078624,'Chelsey','Heidenreich','m',66077,825561185);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (2028771644,'Pierce','Kreiger','b',36436,346898870);
INSERT INTO `artistas` (`codigoArtista`, `nombre`, `apellido`, `puesto`, `salario`, `codigoGrupo`) VALUES (2147483647,'Nickolas','Zemlak','x',79160,238079293);
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;

--
-- Table structure for table `conciertos`
--

DROP TABLE IF EXISTS `conciertos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conciertos` (
  `codigoConcierto` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `hora_inicio` varchar(10) NOT NULL,
  `hora_final` varchar(10) NOT NULL,
  `coste` decimal(15,0) DEFAULT NULL,
  `codigoFestival` int NOT NULL,
  PRIMARY KEY (`codigoConcierto`),
  KEY `codigoFestival` (`codigoFestival`),
  CONSTRAINT `conciertos_ibfk_1` FOREIGN KEY (`codigoFestival`) REFERENCES `festivales` (`codigoFestival`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conciertos`
--

/*!40000 ALTER TABLE `conciertos` DISABLE KEYS */;
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (68436651,'cupiditate','00:40:29','20:18:04',584065,428940171);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (123848095,'saepe','16:27:39','12:25:29',473108,555746966);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (188619666,'eaque','23:10:34','04:46:13',990813,1701515299);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (237941463,'laborum','04:12:07','11:29:41',46437,1701515299);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (246400180,'aspernatur','00:26:12','02:28:22',226009,2039397308);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (257993940,'blanditiis','23:29:13','12:07:21',627009,2098346271);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (260174640,'iusto','09:46:43','01:11:10',452126,23361247);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (288087968,'assumenda','05:34:09','09:33:27',404313,132695891);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (331160110,'consequatur','05:38:00','01:33:20',720873,1166584653);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (375867419,'ex','05:17:05','10:23:32',21717,1841643084);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (404939963,'enim','01:25:59','17:56:55',358428,921558623);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (502074154,'id','00:34:51','12:48:49',998402,428940171);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (533590280,'magnam','07:05:46','04:57:58',938732,1841643084);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (592904555,'amet','14:17:10','21:49:54',563571,1188226230);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (668569216,'magnam','15:04:42','01:03:03',974698,555746966);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (711155791,'facere','22:18:23','08:09:30',176795,2147483647);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (763322731,'quos','04:21:37','10:03:57',294690,785779394);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (865890949,'id','05:18:07','19:06:18',697103,597089039);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (902325883,'deleniti','23:39:57','21:54:36',680556,597089039);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (943624299,'accusamus','11:21:28','14:57:24',933259,921558623);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1006965163,'aut','09:06:53','21:50:36',358869,1841643084);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1014400172,'quisquam','16:52:58','04:15:52',987670,127395231);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1014743038,'id','22:36:33','19:27:05',595153,1188226230);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1074070738,'deleniti','15:17:24','09:30:13',447076,1433838599);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1086932717,'modi','03:51:30','02:41:20',374163,402364442);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1107137559,'officia','01:26:13','11:31:01',935011,1701515299);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1213007413,'quia','13:25:26','21:01:30',950520,706768468);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1251583011,'error','01:40:53','10:02:11',113485,2039397308);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1301592163,'ratione','14:24:55','12:42:10',336533,402364442);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1361066332,'optio','22:05:09','10:40:27',339356,2098346271);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1395979091,'in','08:32:49','07:01:40',226998,513906826);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1408454090,'sit','02:20:31','00:28:54',45996,2147483647);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1473947613,'tempora','08:15:11','22:21:58',212255,2031962039);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1479108169,'nostrum','00:43:18','00:24:40',844170,106420251);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1504945270,'eligendi','15:20:16','14:30:53',295104,2031962039);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1577967746,'eum','16:15:14','15:02:22',929934,127395231);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1686830390,'molestiae','16:54:41','05:41:02',865727,1945952319);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1893507079,'minus','04:29:25','14:27:16',212538,1188226230);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (1985813805,'perferendis','03:58:58','11:57:27',194166,1841643084);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (2004333551,'quo','07:50:16','20:27:03',945446,127395231);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (2033443674,'iusto','12:08:01','11:10:17',185540,402364442);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (2098559773,'vitae','19:44:16','10:59:18',727214,785779394);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (2102701026,'hic','11:07:01','05:31:43',830506,678309927);
INSERT INTO `conciertos` (`codigoConcierto`, `nombre`, `hora_inicio`, `hora_final`, `coste`, `codigoFestival`) VALUES (2147483647,'in','04:02:19','08:08:36',662328,23361247);
/*!40000 ALTER TABLE `conciertos` ENABLE KEYS */;

--
-- Table structure for table `festivales`
--

DROP TABLE IF EXISTS `festivales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festivales` (
  `codigoFestival` int NOT NULL,
  `nombreFestival` varchar(20) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `codigoPostal` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `presupuesto` decimal(15,0) DEFAULT NULL,
  PRIMARY KEY (`codigoFestival`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festivales`
--

/*!40000 ALTER TABLE `festivales` DISABLE KEYS */;
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (23361247,'Price Green','New Micaelaside','Tokelau','Nebraska','07333-6990','2213 Fern Trail Suite 293',1193725);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (28048999,'Haag Corners','Generalshire','Norway','Alabama','65939-4654','5307 Ernser Plains',3268277);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (85341003,'Connie Court','Todport','Norway','SouthDakota','64421-2743','55455 Gardner Branch',2773132);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (106420251,'Effertz Mountains','East Moises','Norway','Wisconsin','36750','82310 Schumm Wall Suite 019',2412103);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (127395231,'Gussie Courts','Rueckertown','United States Virgin Islands','Maryland','28126','83268 Stamm Crescent Suite 675',1180261);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (132695891,'Schmeler Oval','Dickensmouth','Sudan','Wisconsin','62204-4900','121 Simonis Shoals',3972899);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (351117477,'Montana Locks','Lake Geneberg','Thailand','Virginia','03284','689 Haag Shores Apt. 577',2500731);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (382430582,'Leffler Trail','Dietrichville','Finland','Arizona','21237','277 Hannah Crest Suite 170',3177231);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (402364442,'McKenzie Trace','Port Sarai','Lithuania','Tennessee','64628-2584','12257 Gage Turnpike',3354306);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (428940171,'Mann Ways','South Brittany','Uruguay','NewMexico','07349','639 Alvah Station Suite 199',1928954);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (513906826,'Hugh Hills','South Macmouth','Cook Islands','Kansas','01569','5601 Rahsaan Corners Apt. 861',2544908);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (533796284,'Dulce Square','Aliciabury','Spain','Ohio','09093','1441 Grant Stream Suite 090',2702720);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (547650572,'Ivy Dale','Port Nicostad','Grenada','Maine','08957','68628 Raynor Wall Apt. 889',1176209);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (555746966,'Ole Crossroad','Hirtheberg','Japan','Oregon','68426-1045','997 Carley Shore',634914);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (559204745,'Boyd Flats','Christystad','Central African Republic','Nevada','17107-7244','475 Strosin Haven Apt. 809',3262544);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (597089039,'Schamberger Plaza','North Derek','Philippines','Mississippi','34798','1277 Krystel Manor Apt. 878',869887);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (664121687,'Swift Drive','Miamouth','Rwanda','Missouri','54407-3175','0876 Tre Rue',3467505);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (667931880,'Miller Loaf','Uptonhaven','Iran','Nebraska','42701-1135','4558 Renner Viaduct Apt. 192',3876247);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (672976630,'Harvey Canyon','Hansenhaven','Falkland Islands (Malvinas)','NorthDakota','19277','228 Krajcik Meadow',2908524);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (678309927,'Barrows Pines','O\'Connerborough','Jamaica','Ohio','98382','0230 Mills Villages',1601590);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (706768468,'Hellen Streets','New Jazmin','United States of America','Pennsylvania','14140-2874','12582 Rolfson Mills',618503);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (725190948,'Jacobi Village','Port Tillman','French Guiana','NewHampshire','19320','70410 Kristin Glen Suite 113',2575642);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (759507053,'Gay Squares','New Einarfurt','Trinidad and Tobago','Arkansas','08733-9042','919 Stracke Way',1569132);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (764537687,'Shields Harbors','Devinborough','Sierra Leone','Iowa','77500-3990','40282 Lynn Lane Apt. 529',3130630);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (782642414,'Rohan Wells','New Sienna','Cameroon','Vermont','63561','6099 Zachery Corners',2653591);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (785779394,'Krystina Lock','Maximustown','Bahrain','Minnesota','82353','04724 Nolan Junctions',3909602);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (875069682,'Lindgren Mall','Swaniawskiborough','Spain','NorthDakota','35850','57921 DuBuque Land Apt. 901',2162083);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (921558623,'Ullrich Center','Champlinmouth','Turkmenistan','RhodeIsland','62141','1274 Shields River',1820190);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (970601598,'Abernathy Trail','East Keithberg','Iran','Connecticut','17303-5946','16740 Dare Islands Suite 233',3062675);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (999472689,'Schowalter Street','Lake Sylviaside','Lesotho','Arizona','60659','49310 Electa Cliffs',3351022);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1131007326,'Myra Views','Lake Rustybury','Croatia','NewHampshire','69622','6737 Gaylord Terrace Apt. 611',3605428);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1166584653,'Jarrod Underpass','East Gerardo','Botswana','Mississippi','72803','16820 Spinka Drives Apt. 534',2947808);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1188226230,'Heathcote Camp','Feestside','Papua New Guinea','Massachusetts','51549-8436','716 Miller Courts Suite 956',2640008);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1290318180,'Bins Court','Sylviamouth','Gambia','NewHampshire','59858-7224','68332 Jevon Crescent Apt. 853',1154727);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1324189218,'Ankunding Skyway','East Sandrinefurt','Norfolk Island','Utah','81714','96638 Glover Ports',3513333);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1433838599,'Kessler Tunnel','Terranceberg','Fiji','Oregon','11705-5258','17537 Carole Park Apt. 179',2202139);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1456449060,'Beatty Drive','Lake Nicolasborough','Brunei Darussalam','NewMexico','12586','06768 Maritza Summit',2929229);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1536596005,'Alessia Highway','New Sofiachester','Bulgaria','Georgia','08332','078 Lebsack Park',2753507);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1685899475,'Chandler Hollow','Paucekmouth','Ireland','Montana','74969-4959','2035 Johns Mount Apt. 012',1669532);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1701515299,'Rosenbaum Street','Ruthiebury','Mexico','Texas','04462-2809','7975 Jamie Lake Suite 379',2639919);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1790279999,'Borer Highway','Bechtelarmouth','India','Kansas','35192','86068 Autumn Mountain Apt. 425',3757532);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1798175458,'Emilie Valleys','East Scottyfort','Mayotte','Mississippi','57776-0968','84902 Metz Loop',3511190);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1841643084,'Altenwerth Hollow','Port Efren','Saint Helena','Wisconsin','44850-0133','9796 Amara Lock',1074326);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1920168959,'Alberto Ports','East Loyce','Bolivia','NewMexico','99829','21856 Dee Centers Apt. 790',1417768);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1941958306,'Orin Lake','Ginoburgh','Senegal','SouthCarolina','47242-1295','28178 Ledner Crescent',2475027);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (1945952319,'Shad Square','Alexaneshire','British Virgin Islands','NewMexico','23655-3970','8695 Giovanni Spurs Suite 922',2615890);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (2031962039,'Heidenreich Cape','Ziemannbury','Sri Lanka','Massachusetts','88863-1959','8141 Haag Curve',3417633);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (2039397308,'Jaydon Ports','Bereniceborough','Czech Republic','Wyoming','32176-6565','318 Freddie Street Apt. 948',3996446);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (2098346271,'April Circle','Parisberg','India','NewHampshire','32641-5737','6492 Schimmel Crest Suite 016',2156603);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (2125363111,'Mckayla Forge','South Vernice','Botswana','Montana','92176','7966 Santos Loaf',2696781);
INSERT INTO `festivales` (`codigoFestival`, `nombreFestival`, `ciudad`, `pais`, `region`, `codigoPostal`, `direccion`, `presupuesto`) VALUES (2147483647,'Torphy Isle','New Sadieville','Niue','Washington','45201-0547','37370 Joshua Lodge',1694349);
/*!40000 ALTER TABLE `festivales` ENABLE KEYS */;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `codigoGrupo` int NOT NULL,
  `nombreGrupo` varchar(50) NOT NULL,
  `nombreManager` varchar(30) DEFAULT NULL,
  `apellidoManager` varchar(30) DEFAULT NULL,
  `telefonoManager` varchar(15) NOT NULL,
  `pais_origen` varchar(50) NOT NULL,
  `codigoConcierto` int DEFAULT NULL,
  PRIMARY KEY (`codigoGrupo`),
  KEY `codigoConcierto` (`codigoConcierto`),
  CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`codigoConcierto`) REFERENCES `conciertos` (`codigoConcierto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (238079293,'Compatible systematic intranet','Jazmyne','Frami','421-448-0467','Tajikistan',288087968);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (346898870,'Upgradable foreground frame','Betsy','O\'Kon','750-388-3309x44','Guadeloupe',1251583011);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (525376684,'Visionary value-added monitoring','Vance','Hermann','+63(7)231722015','Guyana',2033443674);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (678868060,'Cross-group homogeneous data-warehouse','Jennifer','Satterfield','245-601-8823','Niger',1014743038);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (825561185,'Ameliorated maximized circuit','Olin','Pollich','+13(3)728689544','Somalia',1893507079);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (840994523,'Facetoface cohesive application','Devyn','Kuhlman','1-455-189-4017','Korea',188619666);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (863625502,'Business-focused value-added array','Seth','Grimes','(361)926-5966x8','Sierra Leone',1686830390);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (995941427,'Mandatory 6thgeneration project','Alford','Kub','(426)540-4163','Mozambique',1893507079);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1027889852,'Monitored well-modulated frame','Charlie','Hand','1-490-077-9643','Cote d\'Ivoire',592904555);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1138221989,'Cross-group leadingedge internetsolution','Assunta','Bartoletti','(025)719-3808','Tonga',188619666);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1192967968,'Object-based upward-trending alliance','Candace','Pfeffer','146.942.1348','Palau',943624299);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1283220231,'Distributed optimizing implementation','Kenya','Cormier','957-430-5396x41','Brazil',68436651);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1323725514,'Compatible multi-tasking artificialintelligence','Brenna','Medhurst','896.528.9256','Pitcairn Islands',2102701026);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1384301789,'Advanced hybrid openarchitecture','Skye','Williamson','234.322.0814x43','Sao Tome and Principe',2098559773);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1479026415,'Multi-layered didactic intranet','Eddie','Cremin','(701)808-8080x5','Trinidad and Tobago',533590280);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1514129000,'Visionary attitude-oriented firmware','Tia','Oberbrunner','1-971-470-5312x','Estonia',2147483647);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1582813480,'Self-enabling asynchronous support','Jovanny','Emard','1-069-963-1854x','Cocos (Keeling) Islands',2147483647);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1649702549,'Assimilated global neural-net','Jailyn','Schimmel','488-640-0165','Turks and Caicos Islands',1107137559);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1872276447,'Expanded holistic definition','Rhiannon','O\'Hara','1-763-173-5862','China',1473947613);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1938531320,'Visionary 24/7 attitude','Glenda','Bartell','832-068-8918x27','Cocos (Keeling) Islands',1361066332);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (1991307628,'Enhanced regional benchmark','Isabell','Heidenreich','+18(6)951340613','French Polynesia',1251583011);
INSERT INTO `grupos` (`codigoGrupo`, `nombreGrupo`, `nombreManager`, `apellidoManager`, `telefonoManager`, `pais_origen`, `codigoConcierto`) VALUES (2147483647,'Streamlined directional concept','Clementina','Hansen','267-346-2769x43','Barbados',68436651);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27 23:02:47
