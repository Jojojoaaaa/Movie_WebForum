-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.50-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema webforumdb
--

CREATE DATABASE IF NOT EXISTS webforumdb;
USE webforumdb;

--
-- Definition of table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `acc_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `dateOfBirth` datetime DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `emailAdd` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(45) DEFAULT NULL,
  `bio` longtext,
  PRIMARY KEY (`acc_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`acc_ID`,`firstName`,`lastName`,`dateOfBirth`,`username`,`password`,`emailAdd`,`profile_picture`,`bio`) VALUES 
 (1,'admin',NULL,NULL,'admin','admin123',NULL,'default.png',NULL),
 (2,'Joahnna','Codilla','1998-08-24 00:00:00','@Jojojoaaaa','12345678','joaberrrr@gmail.com','avatar.png','Say something about yourself'),
 (4,'Mae','Dagum','1998-09-03 00:00:00','@mayeghen','fernweh','dagum@yahoo.com','pretty.JPG','Say something about yourself'),
 (5,'Mae','Snow','2011-10-22 00:00:00','@snowww','hehez','maesnow@got','pretty.JPG','bitch'),
 (6,'Rogen','Efron','2013-10-22 00:00:00','@efronmae','efronmaeee','efron@m','avatar.png','Say something about yourself'),
 (7,'Mae','Efron','2013-10-22 00:00:00','@maeefronn','efronmaee','efron@m','avatar.png','Say something about yourself'),
 (8,'Joahnna','Nicole','1998-08-24 00:00:00','@joahnnanicole','jojojoaaa','joaberrrr@gmail.com','avatar.png','Say something about yourself');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


--
-- Definition of table `activitylog`
--

DROP TABLE IF EXISTS `activitylog`;
CREATE TABLE `activitylog` (
  `ID` int(10) unsigned NOT NULL,
  `Description` longtext NOT NULL,
  `Account_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitylog`
--

/*!40000 ALTER TABLE `activitylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `activitylog` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ID`,`Description`) VALUES 
 (1,'Romance'),
 (2,'Comedy'),
 (3,'Horror'),
 (4,'Action'),
 (5,'Fantasy'),
 (6,'Mystery'),
 (7,'Drama'),
 (8,'Animated'),
 (9,'Sci-Fi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int(10) unsigned NOT NULL,
  `Comment_Text` longtext NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Movie_ID` int(10) unsigned NOT NULL,
  `Movie_Rate` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;


--
-- Definition of table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot` longtext NOT NULL,
  `title` varchar(45) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `poster` varchar(45) NOT NULL,
  `rating` double DEFAULT NULL,
  `preview` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` (`ID`,`plot`,`title`,`year`,`poster`,`rating`,`preview`) VALUES 
 (1,'Mac (Seth Rogen) and Kelly Radner (Rose Byrne) are a young couple with an infant daughter, Stella. The restrictions of parenthood make it difficult for them to maintain their old lifestyle, which alienates them from their friends Jimmy Blevins (Ike Barinholtz) and his ex-wife, Paula (Carla Gallo). One day, the couple finds out that Delta Psi Beta, a fraternity known for their outrageous parties, has moved into an adjacent house. The fraternity\'s leaders, Teddy Sanders (Zac Efron) and Pete Regazolli (Dave Franco), aspire to join Delta Psi\'s Hall of Fame by throwing a massive end-of-the-year party.\r\nOne night, the couple ask Teddy to keep the noise down. Teddy agrees on the condition that Mac and Kelly promise to always call him instead of calling the police. To earn Mac and Kelly\'s favor, Teddy invites them to join the party, which the couple agree to. At the party, Kelly meets Teddy\'s girlfriend Brooke Shy (Halston Sage) and Teddy shows Mac his bedroom, which includes a stash of fireworks and a breaker box that controls their power.\r\nThe following night, Mac tries his best to call Teddy but is unable to get in touch with him to ask him to keep it down so that their baby can sleep. Kelly convinces Mac to call the police and report the party as an anonymous person, but Officer Watkins (Hannibal Buress) identifies them to Teddy. Teddy feels betrayed that his new friends went back on their promise. The following day, Delta Psi constantly hazes Mac and Kelly, resulting in Stella nearly eating an unused condom after garbage from their party trash is dumped all over their lawn. The couple goes to the college dean Carol Gladstone (Lisa Kudrow) and learn that the school has a three strikes policy before they intervene with punishment; burning down their old house was Delta Psi\'s first strike.\r\nAfter failing to force the fraternity to move by damaging their house, Kelly manipulates Pete and Brooke into having sex and Mac gets Teddy to catch them. Teddy and Pete fight, which ends with a barbecue grill being rolled into the path of a passing car and injuring a professor, giving Delta Psi their second strike and placing the fraternity on probation for the remainder of the year, effectively ending their party plans. To acquire evidence of Delta Psi\'s hazing, Kelly and Mac hire a pledge nicknamed Assjuice (Craig Roberts) to stand up to Teddy to record him threatening retaliation. When Teddy instead shows him kindness, he reveals that Mac and Kelly hired him and also damaged their house. Teddy begins playing violent pranks on the couple.\r\nMac and Kelly send Teddy a counterfeit letter from Gladstone enabling them to have parties again, and Teddy begins planning their end-of-the-year bash. Once the party is in full swing, the Radners call Watkins to complain about the noise. Teddy discovers the random strangers sent by Mac, Kelly and Jimmy. After finding a flyer about the party and determining the letter is counterfeit, he stops the party just as Watkins arrives. Jimmy throws himself from the balcony to distract Teddy, allowing Mac and Kelly to sneak into Teddy\'s bedroom and restart the party using the breaker box. Teddy catches them and fights Mac, while Kelly lights one of the fireworks and shoots it at Watkins\'s patrol car, while Paula convinces one of the Frat boys to turn the breaker box, resuming the huge party while the police officer is still there. Teddy takes the blame for the party and convinces Pete to take the others and flee. Gladstone shuts the house down and Mac and Kelly return home, adjusting to their new lives. Jimmy and Paula also get back together.\r\nFour months later, Mac is at an outdoor shopping mall when he runs into Teddy, who is working as a shirtless greeter at Abercrombie & Fitch. The two greet each other warmly and Teddy tells Mac that he is attending night classes to complete his degree. Mac takes off his shirt and jokingly acts as a greeter with Teddy.\r\nMac and Kelly later take pictures of Stella dressed in various costumes for a calendar. They get a call from Jimmy and Paula, who are attending Burning Man and invite the couple to come, including Stella. Mac and Kelly decline, accepting their new roles as parents.','Neighbors',2014,'Neighbors.jpg',NULL,'New parents Mac (Seth Rogen) and Kelly (Rose Byrne) move to the suburbs when they welcome an infant daughter into their lives. All goes well with the couple, until the Delta Psi Beta fraternity moves in next door. Mac and Kelly don\'t want to seem uncool, and they try their best to get along with frat president Teddy (Zac Efron) and the rest of the guys. However, when the couple finally call the cops during a particularly raucous frat party, a full-scale war erupts.'),
 (2,'In present-day Paris, Diana Prince receives a photographic plate of herself and four men taken during World War I, prompting her to recall her past. Daughter of Queen Hippolyta, Diana was raised on the hidden island of Themyscira, home to the Amazonian warrior women created by Zeus to protect mankind. Hippolyta shares the Amazonian history with Diana, including how Ares, Zeus\'s son, became jealous of humanity and orchestrated its destruction. When the other gods attempted to stop him, Ares killed all but Zeus, who wounded Ares and forced his retreat. Zeus left the Amazons the island and a weapon, the \"Godkiller\", to prepare them for Ares\' return.\r\nInitially forbidding Diana to train as a warrior, Hippolyta allows her sister Antiope to train Diana, but only if the training is more rigorous than that of any other warrior. In 1918, Diana, now a young woman, rescues American pilot Captain Steve Trevor when his plane crashes off the Themyscira coast. The island is soon invaded by a German cruiser pursuing Trevor. The Amazons kill the crew, but Antiope sacrifices herself to save Diana. Steve is interrogated with the Lasso of Hestia, and reveals that a war is consuming the outside world, and that he is an Allied spy. He has stolen a notebook of the Spanish chief chemist Isabel Maru, who is attempting to engineer a deadlier form of mustard gas, under the orders of General Erich Ludendorff. Believing Ares is responsible for the war, Diana arms herself with the \"Godkiller\" sword, the lasso, and her armor before leaving Themyscira with Steve to find and destroy Ares.\r\nIn London, they deliver Maru\'s notebook to the Supreme War Council, where Sir Patrick Morgan is trying to negotiate an armistice with Germany. Diana translates Maru\'s notes and reveals that the Germans plan to release the deadly gas at the war front. Although forbidden by his commanders to act, Steve, with secret funding from Sir Patrick, recruits spy Sameer, marksman Charlie, and smuggler Chief to help prevent the gas from being released. When the team reaches the Western Front in Belgium, they are halted by the enemy lines. Diana goes alone through No Man\'s Land and captures the enemy trench, allowing the Allied forces to help her liberate the village of Veld. The team briefly celebrates, while Diana and Steve grow closer romantically.\r\nThe team learns a gala will be held at the nearby German High Command. Steve and Diana each infiltrate the party, with Steve intending to locate the gas and destroy it, while Diana intends to kill Ludendorff, believing that he is Ares and thus killing him will end the war. Steve stops her to avoid jeopardizing the mission, and Ludendorff unleashes the gas on Veld, killing its inhabitants. Blaming Steve for intervening, Diana pursues Ludendorff to a base where the gas is being loaded into a bomber aircraft bound for London. Diana fights and kills Ludendorff but is confused when his death does not stop the war.\r\nSir Patrick appears and reveals himself as Ares. He tells Diana that although he has subtly given humans ideas and inspirations, using Ludendorff and Maru as pawns in the process, it is ultimately their decision to cause violence as they are inherently corrupt. When Diana attempts to kill Ares with the \"Godkiller\" sword he destroys it, then reveals Diana to be the \"Godkiller\", as the daughter of Zeus and Hippolyta. He fails to persuade Diana to help him destroy mankind to restore paradise on Earth. While the two battle, the others on Steve\'s team destroy Maru\'s laboratory. Steve pilots the bomber carrying the gas to a safe altitude and detonates it, sacrificing himself in the process. Ares attempts to direct Diana\'s rage and grief at Steve\'s death by convincing her to kill Maru, but memories of her experience with Steve cause her to realize that humans have good within them. She spares Maru and redirects Ares\' lightning into him, killing him. Later, the team celebrates the end of the war. In the present day, Diana sends an email to Bruce Wayne thanking him for the photographic plate of her and Steve, and reaffirms her new mission to protect and give love to the world.','Wonder Woman',2017,'WonderWoman.jpg',NULL,'Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that\'s raging in the outside world. Convinced that she can stop the threat, Diana leaves her home for the first time. Fighting alongside men in a war to end all wars, she finally discovers her full powers and true destiny.');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;


--
-- Definition of table `movie_category`
--

DROP TABLE IF EXISTS `movie_category`;
CREATE TABLE `movie_category` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category_ID` int(10) unsigned NOT NULL,
  `Movie_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_category`
--

/*!40000 ALTER TABLE `movie_category` DISABLE KEYS */;
INSERT INTO `movie_category` (`ID`,`Category_ID`,`Movie_ID`) VALUES 
 (1,2,1),
 (2,4,2),
 (3,5,2);
/*!40000 ALTER TABLE `movie_category` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
