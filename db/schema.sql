-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecpm
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicant`
--

DROP TABLE IF EXISTS `aplicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `rut` varchar(15) DEFAULT NULL,
  `project_name` varchar(60) DEFAULT NULL,
  `experience` varchar(1500) DEFAULT NULL,
  `motivations` varchar(1500) DEFAULT NULL,
  `music_work_url` varchar(45) DEFAULT NULL,
  `music_work_url2` varchar(45) DEFAULT NULL,
  `music_work_url3` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `ua` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut_UNIQUE` (`rut`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicant`
--

LOCK TABLES `aplicant` WRITE;
/*!40000 ALTER TABLE `aplicant` DISABLE KEYS */;
INSERT INTO `aplicant` VALUES (43,'zcxbjvjhv','jhvjhv','franruiz21@gmail.com','87686786','16339158-9','asdjkhkh','8 Sir Charles Spencer «Charlie» Chaplin (Londres, Inglaterra, Reino Unido, 16 de abril de 1889-Corsier-sur-Vevey, Suiza, 25 de diciembre de 1977) fue un actor, humorista, compositor, productor, guionista, director, escritor y editor británico. Adquirió popularidad en el cine mudo gracias a las múltiples películas que realizó con su personaje Charlot.2 A partir de entonces, se le considera un símbolo del humorismo y del cine mudo.3 Para el final de la Primera Guerra Mundial, era uno de los hombres más reconocidos de la cinematografía mundial.','8 Sir Charles Spencer «Charlie» Chaplin (Londres, Inglaterra, Reino Unido, 16 de abril de 1889-Corsier-sur-Vevey, Suiza, 25 de diciembre de 1977) fue un actor, humorista, compositor, productor, guionista, director, escritor y editor británico. Adquirió popularidad en el cine mudo gracias a las múltiples películas que realizó con su personaje Charlot.2 A partir de entonces, se le considera un símbolo del humorismo y del cine mudo.3 Para el final de la Primera Guerra Mundial, era uno de los hombres más reconocidos de la cinematografía mundial.','https://github.com/',NULL,'https://github.com/','2017-04-23 14:46:58','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safa'),(44,'zxc','zxcc','franruiz21@gmail.com','964888503','53297622-7','kjbkjb','8 Sir Charles Spencer «Charlie» Chaplin (Londres, Inglaterra, Reino Unido, 16 de abril de 1889-Corsier-sur-Vevey, Suiza, 25 de diciembre de 1977) fue un actor, humorista, compositor, productor, guionista, director, escritor y editor británico. Adquirió popularidad en el cine mudo gracias a las múltiples películas que realizó con su personaje Charlot.2 A partir de entonces, se le considera un símbolo del humorismo y del cine mudo.3 Para el final de la Primera Guerra Mundial, era uno de los hombres más reconocidos de la cinematografía mundial.','kjbkjb','https://github.com/','https://github.com/',NULL,'2017-04-23 14:49:14','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safa');
/*!40000 ALTER TABLE `aplicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `idartist` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `album_idalbum` int(11) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `rut` varchar(15) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `artistcol` varchar(45) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `profile` varchar(1500) DEFAULT NULL,
  `bio` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`idartist`),
  KEY `fk_artist_album1_idx` (`album_idalbum`),
  CONSTRAINT `fk_artist_album1` FOREIGN KEY (`album_idalbum`) REFERENCES `album` (`idalbum`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `idband` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `artist_idartist` int(11) NOT NULL,
  PRIMARY KEY (`idband`),
  KEY `fk_band_artist1_idx` (`artist_idartist`),
  CONSTRAINT `fk_band_artist1` FOREIGN KEY (`artist_idartist`) REFERENCES `artist` (`idartist`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `header` varchar(145) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'drfer','dewf@dsf','Consulta atráves de ecpm.cl','dfafaefaer','2017-04-21 14:10:21'),(4,'fra@hggh','franruiz21@gmail.com','Consulta atráves de ecpm.cl','csd','2017-04-23 14:42:50'),(5,'asdasd','dewf@dsf','Consulta atráves de ecpm.cl','asdasd','2017-04-23 14:45:00'),(6,'nlknlkn','dewf@dsf','Consulta atráves de ecpm.cl','kmlmlkm','2017-04-23 15:12:19');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `idgenre` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgenre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `idhome` int(11) NOT NULL AUTO_INCREMENT,
  `parrafo1` text NOT NULL,
  `parrafo2` text NOT NULL,
  `url1` varchar(145) NOT NULL,
  `url2` varchar(145) NOT NULL,
  `titulo1` varchar(100) NOT NULL,
  `titulo2` varchar(100) NOT NULL,
  PRIMARY KEY (`idhome`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'\"La música como motor de desarrollo social\" ECPM SUR es un espacio inclusivo y colaborativo donde los jóvenes beneficiarios tendrán una educación integral y de calidad en el ámbito musical, propiciando un cambio favorable en el desarrollo social y cultural de nuestra región y los músicos de la escena local.Este proyecto se puede realizar gracias al apoyo de Corfo y el Gobierno de Chile.','ECPM SUR es un espacio formativo para artistas musicales de la X Región, en el que se propone expandir la formación más allá de la ejecución musical, integrando herramientas \r\nrelacionadas con tecnología, marketing, puesta en escena y liderazgo. Con estas actividades el proyecto busca que los estudiantes se permitan potenciar y ampliar sus habilidades y así estar preparados para desafíos mayores. Al tratarse de un proyecto colaborativo fue necesaria la opinión y participación de actores relevantes en la escena musical local, artistas emergentes y la comunidad puertomontina fueron reunidos en tres Focus Group , además se pudo aplicar una encuesta a 370 personas y se rescataron opiniones de festivales y eventos masivos donde asistieron principalmente jóvenes. Todas estas tareas arrojaron resultados que fueron de suma importancia para llegar a la propuesta final, la cual define el desarrollo del proyecto en un periodo de 10 meses, en los cuales se contempla la realización de: Taller de Producción Musical, Taller de Composición Musical, Master Class, y una Formación Técnica Extendida, todas éstas desarrollados por expertos en sus materias. Para la finalización en su primer ciclo, este tiene por objetivo la producción de un video clip en estudio por banda más la producción de un single por proyecto musical.','http://ecpm.cl/images/prx1.jpg','http://ecpm.cl/images/prx3.jpg','Escuela Colaborativa de Producción Musical Sur','El proyecto');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label` (
  `idlabel` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlabel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` varchar(100) NOT NULL,
  `subheader` varchar(200) DEFAULT NULL,
  `body` text NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(100) DEFAULT NULL,
  `up` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (27,'Nota como la gente282','son cosas2','<p>Gondolin was described as this - &quot;Now the streets of Gondolin were paved with stone and wide, kerbed with marble, and fair houses and courts amid gardens of bright flowers were set about the ways, and many towers of great slenderness and beauty builded of white marble and carved most marvelously rose to the heaven.</p>\r\n\r\n<p>Squares there were lit with fountains and the home of birds that sang amid the branches of their aged trees, but of all these the greatest was that place where stood the King&#39;s palace, and the tower thereof was the loftiest in the city, and the fountains that played before the doors shot twenty fathoms and seven in the air and fell in a singing rain of crystal; therein did the sun glitter splendidly by day, and the moon most magically shimmered by night. The birds that dwelt there were of the whiteness of snow and their voices sweeter than a lullaby of musi</p>\r\n','http://localhost/pressnote/img/rec/ertertert1496817846.jpg',NULL,'2017-06-07 06:21:00','yop982',1),(28,'Segunda nota2','que sucede2','<h1 style=\"text-align:center\">sop</h1>\r\n','http://localhost/pressnote/img/rec/fgbfgb1496817878.jpg',NULL,'2017-06-07 06:45:00','cholp2',1),(29,'Tercera nota','la ultima','<p style=\"text-align:center\">ahi</p>\r\n\r\n<p>eop</p>\r\n','http://localhost/pressnote/img/rec/terveranota1496818243.jpg',NULL,'2017-06-07 06:50:53','dsfsdf',1);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `idresources` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(145) DEFAULT NULL,
  `descripcion` varchar(145) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nameFile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idresources`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (28,'img/rec/ertertert1496817846.jpg','ertertert','2017-06-07 06:44:06','ertertert1496817846'),(29,'img/rec/fgbfgb1496817878.jpg','fgbfgb','2017-06-07 06:44:38','fgbfgb1496817878'),(30,'img/rec/terveranota1496818243.jpg','tervera nota','2017-06-07 06:50:43','terveranota1496818243'),(31,'img/rec/unkanjaskan1496867796.jpg','un kanjaskan','2017-06-07 20:36:36','unkanjaskan1496867796'),(32,'img/rec/unosdinos1496867845.jpg','unos dinos','2017-06-07 20:37:25','unosdinos1496867845');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `idsong` int(11) NOT NULL AUTO_INCREMENT,
  `album_idalbum` int(11) NOT NULL,
  `genre_idgenre` int(11) NOT NULL,
  PRIMARY KEY (`idsong`),
  KEY `fk_song_album1_idx` (`album_idalbum`),
  KEY `fk_song_genre1_idx` (`genre_idgenre`),
  CONSTRAINT `fk_song_album1` FOREIGN KEY (`album_idalbum`) REFERENCES `album` (`idalbum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_song_genre1` FOREIGN KEY (`genre_idgenre`) REFERENCES `genre` (`idgenre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `pw` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ecpmteam','350a9c1d7195c03aee47762e3c827fdd47ac8a3b');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ecpm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-12 20:13:50
