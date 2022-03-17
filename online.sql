-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: onlinestore
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `ac`
--

DROP TABLE IF EXISTS `ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac`
--

LOCK TABLES `ac` WRITE;
/*!40000 ALTER TABLE `ac` DISABLE KEYS */;
INSERT INTO `ac` VALUES ('VOLTAS AC AVAILABLE HERE ARE OF COST BETWEEN 25 TO 55 THOUSANDS RUPEES','VOLTAS'),('VOLTAS AC AVAILABLE HERE ARE OF WEIGHTS: *1.5* *1.4* *1* *2*(TONNES)','VOLTAS'),('COLOUR OF VOLTAS ARE:::(*WHITE*)','VOLTAS'),('ENERGY STARS OF VOLTAS ACs AVAILABLE:::(5* 3* 4*)STAR','VOLTAS'),('LG ACs AVAILABLE HERE ARE OF COST BETWEEN 32 TO 54 THOUSAND RUPEES','LG'),('LG ACs AVAILABLE HERE ARE OF WEIGHTS: *1.5* *1* *2*(TONNES)','LG'),('COLOUR OF LG ACs ARE:::(*WHITE*)','LG'),('ENERGY STARS OF VOLTAS ACs AVAILABLE:::(3* 5* 4*)STAR','LG'),('WHIRLPOOL ACs AVAILABLE HERE ARE OF COST BETWEEN 31 TO 38 THOUSAND RUPEES','WHIRLPOOL'),('WHIRLPOOL ACs AVAILABLE HERE ARE OF WEIGHTS: *1.5* *1* TONNES','WHIRLPOOL'),('COLOUR OF WHIRLPOOL ACs ARE:::(*WHITE* *SILVER*)','WHIRLPOOL'),('ENERGY STARS OF WHIRLPOOL ACs AVAILABLE:::(3*)STAR','WHIRLPOOL'),('BLUE STAR ACs AVAILABLE HERE ARE OF COST BETWEEN 27 TO 56 THOUSAND RUPEES','BLUE STAR'),('BLUE STAR ACs AVAILABLE HERE ARE OF WEIGHTS:*1.5* *1* *2* TONNES','BLUE STAR'),('COLOUR OF BLUE STAR ACs ARE:::(*WHITE*)','BLUE STAR'),('ENERGY STARS OF BLUE STAR ACs AVAILABLE:::(3* 4* 5*)STAR','BLUE STAR');
/*!40000 ALTER TABLE `ac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `email_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Mob_No` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('bharti kumari','BHARTIV12301@GMAIL.COM','DEMO@BV1','BHANDARIDAH','9508044427');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `total_cost` int(20) DEFAULT NULL,
  `Phone_no` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES ('Apple iPhone 13 pro(silver,512GB storage)',1,149900,'9508044427'),('Redmi Note 9A sport(Metallic Blue,6GB RAM,128GB ROM)',1,8299,'9508044427'),('Blue Star 1.5 Tons 5 Star Fixed Speed Split AC(copper,White)',2,83998,'9508044427'),('Redmi Note 9(Aqua Green,4GB RAM,64GB ROM)',2,32798,'9988774433'),('Redmi Note 9A sport(Metallic Blue,6GB RAM,128GB ROM)',1,8299,'9988774433'),('Apple iPhone 13 Mini(Black,256GB Storage',1,79999,'9988774433');
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` varchar(20) DEFAULT NULL,
  `cate_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('10002','TV\'S & ELECTRIC APPLIANCES'),('10003','WOMEN\'S FASHION'),('10004','MEN\'S FASHION'),('10007','GAMES AND TOYS'),('10008 ','GROCERY PRODUCTS');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clothes` (
  `p_id` varchar(30) DEFAULT NULL,
  `p_name` varchar(300) DEFAULT NULL,
  `p_price` int(30) DEFAULT NULL,
  `p_brand` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
INSERT INTO `clothes` VALUES ('100031WF','Indian women Margvellous Banarasi silk saree(colours-Burgundy,baby pink)',2559,'DesiButik'),('100032WF','Alluring silk cotton saree(colours-Navy Blue,Orange)',1059,'DesiButik'),('100033WF','Lovely Satin chiffon saree(colours-light Blue,yellow)',2039,'DesiButik'),('100034WF','Lovely Liva saree(colours-Red,yellow)',2719,'DesiButik'),('100035WF','Pleasant saree with net blouse(colours-maroon,grey peach)',1759,'DesiButik'),('100036WF','Plain weave cotton saare(colours-yellow,pink)',1144,'Florence'),('100037WF','Women art silk saare with blouse piece(colours-green,brown)',1250,'Florence'),('100038WF','Women art silk saare ready to wear(colours-peach,black)',299,'Florence'),('100039WF','Ploral pink silk saare with blouse(colours-red,black)',588,'Florence'),('1000310WF','Graphic print silk saare with blouse(colours-red,Peach)',699,'Florence'),('1000311WF','Printed fashion chiffon saree(colour-light blue)',689,'Saily '),('1000312WF','Printed fashion poly georgette saree(multi colour)',672,'Saily '),('1000313WF','Embellished fashion poly georgette saree(yellow)',649,'Saily '),('1000314WF','Self design fashion cotton blend saree(colours-orange,grey)',599,'Saily '),('1000315WF','Froral Print design daily wear saree(colours-Green)',899,'Saily '),('1000316WF','Embroidered Fashion net saree(colours-blue,grey,yellow)',569,'KVS FAB '),('1000317WF','Dyed Fashion cotton silk saree(colours-Mustard yellow)',439,'KVS FAB '),('1000318WF','Printed cotton silk saree(colours-Beige)',639,'KVS FAB '),('1000319WF','Printed cotton chiffon silk saree(colours-Black,pink)',555,'KVS FAB '),('1000320WF','floral printed cotton saree(colours-blue,pink)',567,'KVS FAB '),('1000321WF','Women\'s Cotton suit set(yellow)',6302,'Biba'),('1000322WF','Women\'s Cotton salwar suit set(Blue)',2696,'Biba'),('1000323WF','Women\'s Cotton Dupatta suit set(Red)',439,'Biba'),('1000324WF','Notched Neck printed kurta(Grey)',769,'Biba'),('1000325WF','Poly cotton suit set(white,pink)',2499,'Biba'),('1000326WF','Women Regular T-shirt(Red,Blue,White)',379,'Max'),('1000327WF','Floral print shirt sleeves T-shirt(maroon,Green)',359,'Max'),('1000328WF','Max women\'s Regular fit T-shirt(yellow,Blue)',462,'Max'),('1000329WF','Printed dot women\'s T-shirt(yellow,white)',629,'Max'),('1000330WF','Printed cape design T-shirt(Olive green)',719,'Max'),('1000331WF','Women Regular fit lace top(Red)',429,'Miss Olive'),('1000332WF','Women Cotton Maxi shirt (Black)',497,'Miss Olive'),('1000333WF','Women Relaxed fit t-shirt (Black)',378,'Miss Olive'),('1000334WF','Women Floral Printed Top(Beige)',524,'Miss Olive'),('1000335WF','Women Multicolour Round Neck short sleeves Top(white)',344,'Miss Olive'),('1000336WF','Women Plain Regular Fit Top(mustard colour)',335,'Harpa'),('1000337WF','Women Printed Regular Top(white,Blue)',470,'Harpa'),('1000338WF','Women Round Neck Solid Top(Pink,Maroon)',402,'Harpa'),('1000339WF','Women Round Neck Printed long Top(Black)',436,'Harpa'),('1000340WF','Women stripped Regular fit long Top(Red Blue yellow)',400,'Harpa'),('1000341WF','Women Regular Jeans(Black)',2799,'Levi'),('1000342WF','Women\'s fit High Rise skinny Jeans(Blue)',1599,'Levi'),('1000343WF','Women\'s Jeggins Jeans(Grey)',1399,'Levi'),('1000344WF','Women\'s Skinny fit Jeans(white,blue)',1025,'Levi'),('1000345WF','Women\'s Skinny floral printed fit Jeans(black,blue)',2144,'Levi'),('1000346WF','Women\'s slim jeans',1439,'Lee'),('1000347WF','Women\'s skinny fit jeans(light blue)',1244,'Lee'),('1000348WF','Women\'s  High Rise skinny Jeans(Blue)',1210,'Lee'),('1000349WF','Women\'s Jeggins Jeans(black)',875,'Lee'),('1000350WF','Women\'s ankle length Jeans(black,blue)',720,'Lee'),('1000351WF','Synthetic Jumpsuit(Navy Blue)',944,'Rare '),('1000352WF','Crepe Jumpsuit(Multicolour)',759,'Rare '),('1000353WF','Floral printed woman Jumpsuit(Maroon)',925,'Rare '),('1000354WF','women\'s Polyster Casual jumpsuit(bungundy)',935,'Rare '),('1000355WF','women\'s jumper maxi jumpsuit(pink,white)',699,'Rare '),('1000356WF','Women\'s Solid pleated Jumpsuit(black)',999,'Miss Brand'),('1000357WF','Women\'s multicoloured round neck short sleeves Jumpsuit(blue)',869,'Miss Brand'),('1000358WF','Women\'s Boat round neck Embellished Jumpsuit(navy blue)',1189,'Miss Brand'),('1000359WF','Women\'s solid knee length Jumpsuit(brown)',825,'Miss Brand'),('1000360WF','Women\'s Mini Dress with pockets Jumpsuit(yellow)',764,'Miss Brand'),('100041MF','Raymond Men\'s slim fit cotton shirt',599,'Raymond'),('100042MF','Raymond Men\'s slim shirt(red)',439,'Raymond'),('100043MF','Raymond Men\'s Regular fit formal shirt',655,'Raymond'),('100044MF','Raymond Men\'s  slim fit casual shirt',398,'Raymond'),('100045MF','Raymond Men\'s  wool sweater shirt',465,'Raymond'),('100046MF','Raymond Men\'s  plain slim fit formal shirt',996,'Raymond'),('100047MF','Deelmo Men Regular fit solid button down collor casual shirt',876,'Deelmo'),('100048MF','Deelmo Men Regular printed cut away collor casual shirt',789,'Deelmo'),('100049MF','Deelmo Men Regular  fit solid Doubled collor formal shirt',998,'Deelmo'),('1000410MF','Deelmo Men Regular  fit self design button Down collor formal shirt',1090,'Deelmo'),('1000411MF','Deelmo Men Regular  fit collor Block solid spread casual shirt',760,'Deelmo'),('1000412MF','Deelmo Men Regular  fit printed collorless casual shirt',890,'Deelmo'),('1000413MF','cavallo Men Regular fit design solid spread casual shirt',564,'cavallo'),('1000414MF','cavallo Men Regular fit striped casual shirt',890,'cavallo'),('1000415MF','cavallo Men Regular fit checkered spread collar casual shirt',1230,'cavallo'),('1000416MF','cavallo Men Regular floral printed formal shirt',690,'cavallo'),('1000417MF','cavallo Men Regular fit mandarin collar formal shirt',935,'cavallo'),('1000418MF','cavallo Men Regular fit  collarless formal shirt',645,'cavallo'),('1000425MF','PUMA Men\'s Regular fit T-shirt',640,'Puma'),('1000426MF','PUMA Men\'s Regular fit  classic T-shirt',780,'Puma'),('1000427MF','PUMA Men\'s Regular fit Active formal T-shirt',890,'Puma'),('1000428MF','PUMA Men\'s polo fit T-shirt',769,'Puma'),('1000429MF','PUMA Men\'s polo floral printed  fit T-shirt',870,'Puma'),('1000430MF','PUMA Men\'s regular floral printed T-shirt',845,'Puma'),('1000431MF','Louis philippe polo collar T-shirt',990,'Louis philippe'),('1000432MF','Louis philippe formal stri polo collar T-shirt',1200,'Louis philippe'),('1000433MF','Louis philipp typograpy printed collar T-shirt',4300,'Louis philippe'),('1000434MF','Louis philipp checked polo collar T-shirt',8900,'Louis philippe'),('1000435MF','Louis philipp solid round neck collar T-shirt',865,'Louis philippe'),('1000436MF','Louis philippe solid printed slim fit collar T-shirt',567,'Louis philippe'),('1000437MF','Pepe Men\'s slim jeans(black)',1090,'pepe'),('1000438MF','Pepe Men\'s chino regular slim jeans(black)',800,'pepe'),('1000439MF','Pepe Men\'s regular fit straight leg jeans(blue)',899,'pepe'),('1000440MF','Pepe Men\'s regular fit skinny jeans(white)',990,'pepe'),('1000441MF','Pepe Men\'s regular fit skinny and stretchable jeans(black)',1500,'pepe'),('1000442MF','spyker Men\'s slim jeans(blue)',650,'spykar'),('1000443MF','spyker Men\'s skinny jeans(tint black)',780,'spykar'),('1000444MF','spyker Men\'s regular fit straight leg jeans(ash-grey)',799,'spykar'),('1000445MF','spyker Men\'s regular fit skinny and stretchable jeans(black)',890,'spykar'),('1000446MF','Pepe Men\'s chino regular fit slim jeans(solid blue)',690,'spykar'),('1000447MF','Campus Men\'s Running shoes ',680,'campus'),('1000448MF','Campus Men\'s wisdom  Running shoes',890,'campus'),('1000449MF','Campus Men\'s rim Running shoes',990,'campus'),('1000450MF','Campus Men\'s oxyfit Running shoes',899,'campus'),('1000451MF','Campus Men\'s s-cross Running shoes',999,'campus'),('1000452MF','Bata Men\'s Hi street sneaker',908,'Bata'),('1000453MF','Bata Men\'s denim sneaker',1200,'Bata'),('1000454MF','Bata Men\'s formal dress slip on shoes ',600,'Bata'),('1000455MF','Bata Men\'s formal morgan punch oxford shoes',1300,'Bata'),('1000456MF','Bata Men\'s jalsa leather loafers shoes',1500,'Bata'),('1000457MF','Reebok Men\'s Evender Running shoes',987,'Reebok'),('1000458MF','Reebok Men\'s Drifler Running shoes',1200,'Reebok'),('1000459MF','Reebok Men\'s mega flexagon Running shoes',900,'Reebok'),('1000460MF','Reebok Men\'s austin walking shoes',799,'Reebok'),('1000461MF','Reebok Men\'s Fusion Running shoes',590,'Reebok'),('10003564WF','WOMEN SILK SAREE MUSTARD OIL COLOUR',800,'RARE'),('1000344WF','WOMEN SILK SAREE',800,'RARE');
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Name` varchar(100) DEFAULT NULL,
  `Email_id` varchar(500) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `Mob_no` char(12) NOT NULL DEFAULT '',
  `Address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Mob_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('DEVANTI KUMARI','DEVANTI12@GMAIL.COM','@DEVANTI','8976543210','TARMI SIDING BHANDARIDAH PIN CODE 829132 JHARKHAND INDIA'),('GOPAL PRASAD MAHTO','GOPAL12@GMAIL.COM','1234','9142525175','BHANDARIDAH 829132 JHARKHAND INDIA'),('BHARTI KUMARI','BHARTIV123@GMAIL.COM','123456','9508044427','BHANDARIDAH (829132) JHARKHAND INDIA'),('DEVANTI KUMARI','DEVANTIKR12345@GMAIL.COM','3210','9988774433','BHANDARIDAH TARMI SIDING PIN CODE(829132) JHARKHAND INDIA');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `men_fashion`
--

DROP TABLE IF EXISTS `men_fashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `men_fashion` (
  `INFORMATION` varchar(150) DEFAULT NULL,
  `P_BRAND` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_fashion`
--

LOCK TABLES `men_fashion` WRITE;
/*!40000 ALTER TABLE `men_fashion` DISABLE KEYS */;
INSERT INTO `men_fashion` VALUES ('SHIRT AVAILABLE HERE ARE OF COST BETWEEN 400 HUNDREDS 1 THOUSAND RUPEES','SHIRT'),('SHIRT AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','SHIRT'),('SHIRT OF ARE OF MULTICOLOURS LIKE :::(*BLACK* *RED* *BLUE* *WHITE*)','SHIRT'),('SHIRT OF ARE OF BEST BRANDS:*RAYMOND* *DEELMO* *CAVALLO* *ALLEN SOLLY*','SHIRT'),('T-SHIRT AVAILABLE HERE ARE OF COST BETWEEN 500 HUNDREDS TO  8 THOUSAND RUPEES','T-SHIRT'),('T-SHIRT AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','T-SHIRT'),('T-SHIRT OF ARE OF MULTICOLOURS LIKE :::(*BLACK* *RED* *BLUE* *WHITE*)','T-SHIRT'),('T-SHIRT OF ARE OF BEST BRANDS: *LOUIS PHILIPPE* *PUMA*','T-SHIRT'),('JEANS AVAILABLE HERE ARE OF COST BETWEEN 500 HUNDREDS TO 2 THOUSAND RUPEES','JEANS'),('JEANS AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','JEANS'),('JEANS OF ARE OF MULTICOLOURS LIKE :::(*BLACK* *RED* *BLUE* *WHITE*)','JEANS'),('JEANS OF ARE OF BEST BRANDS:*PEPE* *SPYKAR*','JEANS'),('SHOES AVAILABLE HERE ARE OF COST BETWEEN 500 HUNDREDS TO 4 THOUSAND RUPEES','SHOES'),('SHOES AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *BEST LEATHER*','SHOES'),('SHOES OF ARE OF BEST BRANDS:*CAMPUS* *BATA* *REEBOK*','SHOES');
/*!40000 ALTER TABLE `men_fashion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` VALUES ('ONEPLUS+ PHONES AVAILABLE HERE ARE OF COST BETWEEN 20 TO 70 THOUSANDS RUPEES','ONEPLUS+'),('ONEPLUS+ PHONES AVAILABLE HERE ARE OF RAM (6GB,8GB AND 12GB)','ONEPLUS+'),('COLOURS OF ONEPLUS+ MOBILE PHONES ARE:::\",\"*BLUE*\",\"*BLACK*\",\"*GREEN*\",\"*SILVER*\",\"*GREY*\",\"*MIST*','ONEPLUS+'),('REDMI PHONES AVAILABLE HERE ARE OF COST IN BETWEEN 8 TO 20 THOUSANDS RUPEES','REDMI'),('REDMI PHONES AVAILABLE HERE ARE OF RAM (4GB,6GB AND 8GB)','REDMI'),('COLOURS OF REDMI MOBILE PHONES ARE:::\",\"*BLUE*\",\"*BLACK*\",\"*GREEN*\",\"*SILVER*\",\"*WHITE*','REDMI'),('SAMSUNG PHONES AVAILABLE HERE ARE OF COST IN BETWEEN 11 TO 55 THOUSANDS RUPEES','SAMSUNG'),('SAMSUNG PHONES AVAILABLE HERE ARE OF RAM (4GB,6GB ,8GB AND 12GB)','SAMSUNG'),('COLOURS OF SAMSUNG MOBILE PHONES ARE::: *BLUE* *AURA GLOW* *GRAY* *WHITE* *GRAPHITE* *BRONZE*','SAMSUNG'),('REALME PHONES AVAILABLE HERE ARE OF COST IN BETWEEN 8 TO 32 THOUSANDS RUPEES','REALME'),('REALME PHONES AVAILABLE HERE ARE OF RAM (4GB,6GB AND 8GB)','REALME'),('COLOURS OF REALME MOBILE PHONES ARE:::*BLUE* *BLACK* *WHITE* *SILVER*','REALME'),('VIVO PHONES AVAILABLE HERE ARE OF COST IN BETWEEN 15 TO 35 THOUSANDS RUPEES','VIVO'),('VIVO PHONES AVAILABLE HERE ARE OF RAM (4GB,6GB AND 8GB )','VIVO'),('COLOURS OF VIVO MOBILE PHONES ARE:::*BLUE* *BLACK* *PEARL* *WHITE* *SILVER* *RED*','VIVO'),('APPLE PHONES AVAILABLE HERE ARE OF COST IN BETWEEN 49 THOUSANDS TO 1LAKHS 50 THOUSANDS RUPEES','APPLE'),('APPLE PHONES AVAILABLE HERE ARE OF STORAGE(64GB ,128GB,256GB,512GB)','APPLE'),('COLOURS OF APPLE MOBILE PHONES ARE::*PURPLE* *PINK* *WHITE* *RED* *SILVER* *GOLD* *BLACK*','APPLE');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `pay_id` varchar(20) DEFAULT NULL,
  `pay_amount` varchar(10) DEFAULT NULL,
  `pay_mode` varchar(30) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `total_cost` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('9988774433','16598','EMI','Redmi Note 9A sport(Metallic Blue,6GB RAM,128GB ROM)','2','8299');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `p_id` varchar(20) DEFAULT NULL,
  `P_name` varchar(200) DEFAULT NULL,
  `P_Price` int(10) DEFAULT NULL,
  `P_Brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('100011M','OnePlus Nord 2 5G(Blue Haze,8GB RAM,128GB Storage)',29999,'ONEPLUS+'),('100012M','OnePlus Nord CE 5G(Blue Void,8GB RAM,128GB Storage)',24999,'ONEPLUS+'),('100013M','OnePlus 9RT 5G(Hacker Black,8GB RAM,128GB Storage)',42999,'ONEPLUS+'),('100014M','OnePlus 9R 5G(Lake Blue,8GB RAM,128GB Storage)',39999,'ONEPLUS+'),('100015M','OnePlus 9 5G(Winter Mist,12GB RAM,256GB Storage)',54999,'ONEPLUS+'),('100016M','OnePlus 9 Pro 5G(Morning Mist,12GB RAM,256GB Storage)',69999,'ONEPLUS+'),('100017M','OnePlus 7(Mirror Grey,6GB RAM,128GB Storage)',22499,'ONEPLUS+'),('100018M','OnePlus 7T Pro(Blue Haze,8GB RAM,Fluid AMOLED Display,256GB Storage)',36790,'ONEPLUS+'),('100019M','OnePlus 8T 5G(Lunar Silver,8GB RAM,128GB Storage)',31999,'ONEPLUS+'),('1000110M','OnePlus 8 Pro(Glacier Green,12GB RAM,256GB Storage)',39499,'ONEPLUS+'),('1000111M','Redmi 9 Activ(Coral Green,4GB RAM,64GB Storage)',9999,'Redmi'),('1000112M','Redmi Note 10S(Deep Sea Blue,6GB RAM,64GB Storage)',14999,'Redmi'),('1000113M','Redmi Note 11T 5G(Matte Black,6GB RAM,128GB ROM)',17999,'Redmi'),('1000114M','Redmi 10 Prime(Phantom Black,6GB RAM,64GB Storage)',13499,'Redmi'),('1000115M','Redmi 9A(Sea Blue,6GB RAM,64GB Storage)',8999,'Redmi'),('1000116M','Redmi Note 10 Pro(Dark Night,8GB RAM,128GB Storage)',18999,'Redmi'),('1000117M','Redmi Note 10 lITE(Glacier white,6GB RAM,128GB Storage)',15999,'Redmi'),('1000118M','Redmi Note 10T 5G(Metallic Blue,6GB RAM,128GB ROM)',14999,'Redmi'),('1000119M','Redmi Note 9(Aqua Green,4GB RAM,64GB ROM)',16399,'Redmi'),('1000120M','Redmi Note 9A sport(Metallic Blue,6GB RAM,128GB ROM)',8299,'Redmi'),('1000121M','Samsung Galaxy M12(Blue,4GB RAM,64GB Storage)',11990,'SAMSUNG'),('1000122M','Samsung Galaxy S20 FE 5G(Cloud Navy,8GB RAM,128GB Storage)',39990,'SAMSUNG'),('1000123M','Samsung Galaxy M52 5G(ICY Blue,8GB RAM,128GB Storage)',26999,'SAMSUNG'),('1000124M','Samsung Galaxy M21 2021 Edition(Artic Blue,4GB RAM,64GB Storage)',12999,'SAMSUNG'),('1000125M','Samsung Galaxy A52s 5G(White,6GB RAM,128GB Storage)',35999,'SAMSUNG'),('1000126M','Samsung Galaxy A22 5G(Gray,8GB RAM,128GB Storage)',21999,'SAMSUNG'),('1000127M','Samsung Galaxy Note 20 Ultra 5G(Mystic Bronze,12GB RAM,256GB Storage)',49999,'SAMSUNG'),('1000128M','Samsung Galaxy Note10 Lite(Aura Glow,8GB RAM,128GB Storage)',29999,'SAMSUNG'),('1000129M','Samsung Galaxy S21 FE 5G(Graphite,8GB RAM,128GB Storage)',54999,'SAMSUNG'),('1000130M','Samsung Galaxy S20 Plus+(Cloud Blue,8GB RAM,128GB Storage)',38999,'SAMSUNG'),('1000131M','realme narzo 50A(Oxygen Blue,4GB RAM + 64GB Storage)',11599,'realme'),('1000132M','realme narzo 50i(Carbon Black,4GB RAM + 64GB Storage)',8999,'realme'),('1000133M','Realme C25Y (Glacier Blue,4GB RAM + 64GB Storage)',11699,'realme'),('1000134M','realme 8 Pro(infinite Black,6GB RAM ,128GB Storage)',17999,'realme'),('1000135M','Realme Rarzo 20 Pro(Black Ninja,8GB RAM,128GB Storage)',15599,'realme'),('1000136M','Realme GT 5G Master(Luna white,8GB RAM ,256GB Storage)',28800,'realme'),('1000137M','Realme GT Neo 2(Neo Black,8GB RAM ,128GB Storage)',31299,'realme'),('1000138M','Realme Narzo 20(Glory Silver,4GB RAM ,128GB Storage)',12999,'realme'),('1000139M','Realme Narzo 30 PRO 5G(White Knight ,6GB RAM,64GB Storage)',13999,'realme'),('1000140M','Realme X7 PRO 5G(Mystic Black,8GB RAM ,128GB Storage)',24999,'realme'),('1000151M','Apple iPhone 13 Pro(Sierra Blue,128GB storage)',119900,'Apple'),('1000152M','Apple iPhone 13 Pro Max(Graphite,128GB storage)',129900,'Apple'),('1000153M','Apple iPhone 13 (Pink,128GB storage)',74900,'Apple'),('1000154M','Apple iPhone 13 Mini(Blue,128GB storage)',69900,'Apple'),('1000155M','Apple iPhone 12 Mini(Purple,64GB storage)',59999,'Apple'),('1000156M','Apple iPhone 12(Red,64GB storage)',56999,'Apple'),('1000157M','Apple iPhone 11(Black,64GB storage)',49999,'Apple'),('1000158M','Apple iPhone 13 pro(Gold,256GB storage)',129900,'Apple'),('1000159M','Apple iPhone 13 pro(silver,512GB storage)',149900,'Apple'),('1000160M','Apple iPhone 13 Mini(Black,256GB Storage',79999,'Apple'),('100021ET','Sony Bravia 80cm(32 inches)HD Ready Smart Android LED TV(Black)',28900,'SONY'),('100022ET','Sony Bravia 108cm(43 inches)Full HD Smart Android LED TV(Black)',39991,'SONY'),('100023ET','Sony Bravia 126cm(50 inches)4K Ultra HD Smart Android LED TV(Black)',71499,'SONY'),('100024ET','Sony Bravia 164(65 inches)4K Ultra HD Smart LED Google TV(Black)',108700,'SONY'),('100025ET','Sony Bravia 139(55 inches)XR Series 4K Ultra HD Smart Full Array LED Google TV(Black)',113900,'SONY'),('100026ET','Sony Bravia 189(75 inches)4K Ultra HD Smart LED Google TV(Black)',199900,'SONY'),('100027ET','Sony Bravia 214.8(85 inches)4K Ultra HD Certified Android LED TV(Black)',404990,'SONY'),('100028ET','Mi 138.8 cm(55 inches)4K Ultra HD Android Smart LED TV 4X(Black)',44999,'Mi'),('100029ET','Mi 125.7 cm(50 inches)4K Ultra HD Android Smart LED TV 4X(Black)',38999,'Mi'),('1000210ET','Mi 108 cm(43 inches)Full HD Android Smart LED TV 4C(Black)',25999,'Mi'),('1000211ET','Mi 108 cm(43 inches)Full HD Android Smart LED TV 4A Pro(Black)',28499,'Mi'),('1000212ET','Mi 100 cm(40 inches) Horizon Edition Full HD Android Smart LED TV 4A(Black)',24999,'Mi'),('1000213ET','Mi 80 cm(32 inches)Horizon Edition HD Ready Android Smart LED TV 4A(Grey)',20999,'Mi'),('1000214ET','OnePlus 108cm(43 inches)Y Series Full HD LED Smart Android TV 43Y1',25999,'OnePlus'),('1000215ET','OnePlus 80cm(32 inches)Y Series HD Ready LED Smart Android TV 32Y1(Black)',16499,'OnePlus'),('1000216ET','OnePlus 125.7cm(50 inches)U Series 4K LED Smart Android TV 50U1S(Black)',40999,'OnePlus'),('1000217ET','OnePlus 138.7cm(55 inches)U Series 4K LED Smart Android TV 55U1S(Black)',46999,'OnePlus'),('1000218ET','OnePlus 168.3cm(65 inches)U Series 4K LED Smart Android TV 65U1S(Black)',64999,'OnePlus'),('1000219ET','OnePlus 138.7cm(55 inches)Q1 Series 4K Certified Android QLED TV 55Q1(Black)',62899,'OnePlus'),('1000220ET','OnePlus 138.7cm(55 inches)Q1 Series 4K Certified Android QLED TV 55Q1IN Pro(Black)',84899,'OnePlus'),('1000221ET','LG 108cm(43 inches)4K Ultra HD Smart LED TV (RockY Black)',36999,'LG'),('1000222ET','LG 165.1cm(65 inches)4K Ultra HD Smart Nanocell TV (Ashed Blue)',99999,'LG'),('1000223ET','LG 139.7cm(55 inches)4K Ultra HD Smart Nanocell TV (Ashed Blue)',65990,'LG'),('1000224ET','LG 108cm(43 inches)Full HD Smart LED TV (Ceramic Black)',32999,'LG'),('1000225ET','LG 80cm(32 inches)HD Ready Smart LED TV (Dark iron Gray)',20799,'LG'),('1000226ET','Samsung 108cm(43 inches)Crystal 4K Series HD Smart LED TV (Black)',37990,'SAMSUNG'),('1000227ET','Samsung 138cm(55 inches)Crystal 4K Pro Series Ultra HD Smart LED TV (Black)',57990,'SAMSUNG'),('1000228ET','Samsung 80cm(32 inches)M5 Smart Moniter LED TV (Black)',23999,'SAMSUNG'),('1000229ET','Samsung 163cm(65 inches)The Frame Series 4K Ultra HD Smart QLED TV (Black)',119990,'SAMSUNG'),('1000230ET','Samsung 123cm(50 inches)The Serif Series 4K Ultra HD Smart QLED TV (Cloud White)',77990,'SAMSUNG'),('1000231ET','Samsung 189cm(75 inches)4K Ultra HD Smart QLED TV (Black)',179990,'SAMSUNG'),('1000232ET','Samsung 216cm(85 inches)4K Ultra HD Smart QLED TV (Black)',314999,'SAMSUNG'),('1000233ET','Voltas 1.4 Ton 3 star Inverter Split Adjustable AC(copper,173V ADJ,white)',32490,'VOLTAS'),('1000234ET','Voltas 1.5 Ton 5 star Inverter Split AC(185V JZJT,white)',39640,'VOLTAS'),('1000235ET','Voltas 1 Ton 3 star Inverter Split AC(copper,123V CZT3,white)',30990,'VOLTAS'),('1000236ET','Voltas 1.5 Ton 3 star Split AC(183V EZA,white)',33949,'VOLTAS'),('1000237ET','Voltas 2 Ton 5 star Inverter SpliT AC(copper,SAC_245V_ ADZ,white)',54990,'VOLTAS'),('1000238ET','Voltas 1 Ton 3 star Window AC(123 Lyi/123 LZF,white)',25240,'VOLTAS'),('1000239ET','Voltas 2 Ton 5 star Inverter SpliT AC(copper,243V CZZ,white)',46990,'VOLTAS'),('1000240ET','Voltas 1.5 Ton 3 star Window Inverter AC(183V ADA,white)',31980,'VOLTAS'),('1000241ET','Voltas 2 Ton 4 star Inverter SpliT AC(copper,SAC_244V,white)',53999,'VOLTAS'),('1000242ET','Voltas 1.4 Ton 5 star Fixed speed Window AC(copper,175V LZF,white)',27990,'VOLTAS'),('1000243ET','Whirlpool 1.5 Ton 3 star inverter split AC(Copper,1.5T FLEXICHILL 3S COPR INVERTER,White)',32400,'Whirlpool'),('1000244ET','Whirlpool 1.5 Ton 3 star inverter split AC(Copper,1.5T MagiCool 3S COPR INVERTER,White)',31999,'Whirlpool'),('1000245ET','Whirlpool 1.5 Ton 3 star Wi-Fi inverter split AC(Copper,1.5T 3DCOOL ULTRA NXT WIFI 3S COPR INV,White Silver)',36490,'Whirlpool'),('1000246ET','Whirlpool 1.5 Ton 3 star Wi-Fi inverter split AC(Copper,1.5T 3DCOOL WIFI PRO 3S COPR INV,White)',37000,'Whirlpool'),('1000247ET','Whirlpool 1 Ton 3 star Wi-Fi inverter split AC(Copper,1 T 3DCOOL ULTRA NXT WIFI 3S COPR INV,White Silver)',32490,'Whirlpool'),('1000248ET','Whirlpool 1.5 Ton 3 star inverter split AC(Copper,1.5T 3DCOOL ELITE PRO,COPPER CONDENSER,White)',37999,'Whirlpool'),('1000249ET','LG 1.5 TON 5 Star inverter Split AC(copper,convertible 5-in-1 cooling,HD Filter with Anti-virus Protection,white)',43990,'LG'),('1000250ET','LG 1.5 TON 5 Star AI DUAL inverter Split AC(copper,convertible 6-in-1 cooling,HD Filter with Anti-virus Protection,white)',45490,'LG'),('1000251ET','LG 1 TON 5 Star AI DUAL inverter Split AC(copper,convertible 6-in-1 cooling,HD Filter with Anti-virus Protection,white)',37990,'LG'),('1000252ET','LG 1.5 TON 3 Star inverter Window AC(copper,white)',32990,'LG'),('1000253ET','LG 1 TON 3 Star DUAL inverter Split AC(copper,convertible 5-in-1 cooling,HD Filter with Anti-virus Protection,white)',34990,'LG'),('1000254ET','LG 1.5 TON 4 Star DUAL inverter Split AC(copper,convertible 5-in-1 cooling,HD Filter with Anti-virus Protection,white)',40490,'LG'),('1000255ET','LG 1.5 TON 3 Star Hot and Cold inverter Split AC Ez Clean Filter(copper,white)',41790,'LG'),('1000256ET','LG 1 TON 3 Star inverter Split AC(copper,convertible 4-in-1 cooling,HD Filter with Anti-virus Protection,white)',37999,'LG'),('1000257ET','LG 2 TON 3 Star AI DUAL inverter Split AC(copper,convertible 6-in-1 cooling,4 Way Swing,HD Filter with Anti-virus Protection,white)',53990,'LG'),('1000258ET','LG 1.5 TON 3 Star Hot and Cold DUAL inverter Split AC (copper,convertible 5-in-1 cooling,4 Way Swing & Anti Allergic Filter,white)',47990,'LG'),('1000259ET','Blue Star 0.8 Tons 3 Star inverter Split AC(copper,White)',27999,'BLUE STAR'),('1000260ET','Blue Star 1 Tons 5 Star inverter Split AC(copper,White)',36990,'BLUE STAR'),('1000261ET','Blue Star 1.5 Tons 5 Star inverter Split AC(copper,White)',41999,'BLUE STAR'),('1000262ET','Blue Star 1 Tons 3 Star Fixed Speed Split AC(copper,White)',28999,'BLUE STAR'),('1000263ET','Blue Star 1.5 Tons 4 Star inverter Split AC(copper,White)',37899,'BLUE STAR'),('1000264ET','Blue Star 1.5 Tons 4 Star Window Split AC(copper,White)',31499,'BLUE STAR'),('1000265ET','Blue Star 2 Tons 5 Star inverter Split AC(copper,White)',55380,'BLUE STAR'),('1000266ET','Blue Star 2 Tons 3 Star inverter Split AC(copper,White)',49999,'BLUE STAR'),('1000267ET','Blue Star 1.5 Tons 3 Star Window AC(copper,White)',28999,'BLUE STAR'),('1000268ET','Blue Star 1.5 Tons 5 Star Fixed Speed Split AC(copper,White)',41999,'BLUE STAR'),('1000269ET','IFB 6 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver)',23290,'IFB'),('1000270ET','IFB 7 Kg 5 Star Fully Automatic Front Loading Washing Machine(white,inbuilt heater)',29480,'IFB'),('1000271ET','IFB 8 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver)',36990,'IFB'),('1000272ET','IFB 6.5 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver,inbuilt heater,3D wash)',30400,'IFB'),('1000273ET','IFB 8.5 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver,inbuilt heater,4D Wash tech)',39780,'IFB'),('1000274ET','IFB 5.5 Kg Fully Automatic DRYER Loading Washing Machine(silver)',21400,'IFB'),('1000275ET','IFB 6 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver,2D WASH TECH)',31390,'IFB'),('1000276ET','IFB 7 Kg 5 Star Fully Automatic Front Loading Washing Machine(silver,inbuilt heater,3D wash)',29990,'IFB'),('1000277ET','IFB 6.5 Kg 5 Star Fully Automatic TOP Loading Washing Machine(White,inbuilt heater,3D wash tech)',20000,'IFB'),('1000278ET','IFB 5.5 Kg vent type tumble DRYER Loading Washing Machine(silver,inbuilt heater)',20500,'IFB'),('1000279ET','Godrej 7.5 Kg 5 Star Fully Automatic TOP Loading Washing Machine(Royal Grey,Roller Coaster wash tech)',20200,'Godrej'),('1000280ET','Godrej 6 Kg 5 Star Fully Automatic TOP Loading Washing Machine(Grey,Acu Wash Drum)',13690,'Godrej'),('1000281ET','Godrej 7 Kg 5 Star Fully Automatic TOP Loading Washing Machine(Grey,Acu Wash Drum)',15290,'Godrej'),('1000282ET','Godrej 6.5 Kg 5 Star Fully Automatic TOP Loading Washing Machine(Grey,inbuilt heater)',16999,'Godrej'),('1000283ET','Godrej 8.5 Kg 5 Star Semi-Automatic TOP Loading Washing Machine(Grey,inbuilt heater)',18000,'Godrej'),('1000284ET','Godrej 9 Kg 5 Star Semi-Automatic TOP Loading Washing Machine(Grey)',15850,'Godrej'),('1000285ET','Godrej 10.2 Kg 5 Star Semi-Automatic TOP Loading Washing Machine(ROSE gold)',19999,'Godrej'),('1000286ET','Godrej 7.2 Kg 5 Star Semi- Automatic TOP Loading Washing Machine(wine red)',11990,'Godrej'),('1000287ET','Haier 7 Kg 5 Star Semi-Automatic TOP Loading Washing Machine(Grey)',9999,'Haier'),('1000288ET','Haier 6.5 Kg Semi-Automatic TOP Loading Washing Machine(silver)',8800,'Haier'),('1000289ET','Haier 6 Kg Fully Automatic TOP Loading Washing Machine(Moonlight grey)',13750,'Haier'),('1000290ET','Haier 8 Kg Semi-Automatic TOP Loading Washing Machine(BURGUNDY)',11650,'Haier'),('1000291ET','Haier 9 Kg Semi-Automatic TOP Loading Washing Machine(PINK)',10999,'Haier'),('1000292ET','Haier 8.5 Kg Semi-Automatic TOP Loading Washing Machine(GREY)',12000,'Haier'),('1000293ET','Haier 7.5 Kg INVERTER FULLY-Automatic Front Loading Washing Machine(Golden)',36450,'Haier'),('1000294ET','Bosch 7 Kg 5 Star inverter Touch Control Fully Automatic front Loading Washing Machine(silver)',30990,'Bosch'),('1000295ET','Bosch 6 Kg 5 Star Fully Automatic front Loading Washing Machine(inbuilt heater,silver)',24990,'Bosch'),('1000296ET','Bosch 8 Kg 5 Star Touch Control Fully Automatic front Loading Washing Machine(inbuilt heater,white)',32490,'Bosch'),('1000297ET','Bosch 6.5 Kg 5 Star Top front Loading Washing Machine(White)',18900,'Bosch'),('1000298ET','Bosch 6 Kg 5 Star Top front Loading Washing Machine(silver)',29990,'Bosch'),('1000299ET','Bosch 8Kg/5kg 5 Star inverter washser Dryer (white,inbuilt heater)',58899,'Bosch'),('10002100ET','Bosch 7.5 Kg 5 Star Fully Automatic front Loading Washing Machine(Grey)',23499,'Bosch'),('10002101ET','Samsung 580 Frost free inverter Triple Door Refrigerator(grey)',70990,'samsung'),('10002102ET','Samsung 225 L 5 Star inverter Direct cool single Door Refrigerator(Blue)',21100,'samsung'),('10002103ET','Samsung 220 L 4 Star inverter Direct cool single Door Refrigerator(Black)',20290,'samsung'),('10002104ET','Samsung 198 L 4 Star inverter Direct cool single Door Refrigerator(Brown)',15990,'samsung'),('10002105ET','Samsung 676 L side-by-side single Door Refrigerator(silver)',113090,'samsung'),('10002106ET','Samsung 700 L inverter frost free side-by-side Refrigerator(silver,spacemax tech)',80490,'samsung'),('10002107ET','Samsung 192 L 4 Star inverter Direct cool single Door Refrigerator(Brown)',18799,'samsung'),('10002108ET','Samsung 386 L 3 star  inverter frost free Double Door Refrigerator(silver)',51700,'samsung'),('10002109ET','Samsung 386 L 2 star  inverter frost free Double Door Refrigerator(grey)',30000,'samsung'),('10002110ET','Samsung 336 L 2 star  inverter frost free Double Door Refrigerator(grey)',36540,'samsung'),('10002116ET','Whirlpool 265 L 3 Star inverter frost-free Double Door Refrigerator(GERMAN STEEL,Convertible)',26450,'WHIRLPOOL'),('10002112ET','Whirlpool 340 L 3 Star inverter frost-free Double Door Refrigerator(GERMAN STEEL,Convertible)',35740,'WHIRLPOOL'),('10002113ET','Whirlpool 240 L 3 Star inverter frost-free Multi- Door Refrigerator(GERMAN STEEL,Convertible)',25490,'WHIRLPOOL'),('10002114ET','Whirlpool 190 L 3 Star Direct Cool Single Door Refrigerator(Blue)',13200,'WHIRLPOOL'),('10002115ET','Whirlpool 190 L 2 Star Direct Cool Single Door Refrigerator(Blue)',12200,'WHIRLPOOL'),('10002116ET','Whirlpool 265 L 3 Star inverter frost-free Double Door Refrigerator(GERMAN STEEL,Convertible)',26499,'WHIRLPOOL'),('10002112ET','Whirlpool 340 L 3 Star inverter frost-free Double Door Refrigerator(GERMAN STEEL,Convertible)',37290,'WHIRLPOOL'),('10002118ET','Hisense 564 L 3 Star inverter frost-free Side-by-Side Refrigerator(Black)',60990,'Hisense'),('10002119ET','Hisense 93 L 1 Star Direct cool Single Door Mini Refrigerator(silver)',10490,'Hisense'),('10002120ET','Hisense 507 L 3 Star inverter frost-free multi-Door Refrigerator(Black)',70990,'Hisense'),('10002121ET','Hisense 185 L 2 Star Direct-cool Single Door Mini Refrigerator(silver)',11490,'Hisense'),('10002122ET','Hisense 670 L 3 Star inverter frost-free Multi-Door Refrigerator(Black Glass Finish)',109991,'Hisense'),('10002123ET','Hisense 507 L 3 Star inverter frost-free multi-Door Refrigerator with Water Dispenser(Black)',70090,'Hisense'),('10002124ET','Hisense 93 L 2 Star Direct cool Single Door Mini Refrigerator(silver)',15999,'Hisense'),('10002125ET','Panasonic 383 L 3 Star 6-stage smart inverter Frost free Double Door Refrigerator(silver)',33490,'Panasonic'),('10002126ET','Panasonic 309 L 3 Star 6-stage smart inverter Frost free Double Door Refrigerator(silver)',30490,'Panasonic'),('10002127ET','Panasonic 584 L Side-by-Side Refrigerator(Dark grey)',59949,'Panasonic'),('10002128ET','Panasonic 142 L Single Door Deep Feezer Refrigerator(white)',18999,'Panasonic'),('10002129ET','Panasonic 551 L Multi-Door Refrigerator(Black)',79990,'Panasonic'),('10002130ET','Panasonic 592 L wifi inverter frost free Side-by-side Refrigerator(Black)',80999,'Panasonic'),('10002131ET','Panasonic 335 L 2 Direct cool Double Door Refrigerator(wine red)',40999,'Panasonic'),('10002132ET','Panasonic 268 L 2 star Frost Free Double Door Refrigerator(wine red)',34999,'Panasonic'),('10001111M','REALME NARZO 30',15000,'REALME'),('10001222M','REALME NARZO 30 PRO',15000,'REALME'),('1000015662M','REALME NARZO 30 PRO',15000,'REALME'),('10002WSD','BHHJHNBMB',888888,'NNNNNNNNN');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refri`
--

DROP TABLE IF EXISTS `refri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refri` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refri`
--

LOCK TABLES `refri` WRITE;
/*!40000 ALTER TABLE `refri` DISABLE KEYS */;
INSERT INTO `refri` VALUES ('SAMSUNG REFRIGERATORS AVAILABLE HERE ARE OF COST BETWEEN 15 THOUSANDS TO 1.13 LAKHS RUPEES','SAMSUNG'),('SAMSUNG REFRIGERATORS AVAILABLE HERE ARE OF CAPACITY BETWEEN: 192-700 VOLUME','SAMSUNG'),('COLOUR OF SAMSUNG REFRIGERATORS ARE:::(*BROWN* *GREY* *Blue* *Black* *Silver*)','SAMSUNG'),('ENERGY STARS OF SAMSUNG REFRIGERATORS AVAILABLE:::(5* 3* 4* 2*)','SAMSUNG'),('WHIRLPOOL REFRIGERATORS AVAILABLE HERE ARE OF COST BETWEEN 13 TO 38 THOUSANDS RUPEES','WHIRLPOOL'),('WHIRLPOOL REFRIGERATORS AVAILABLE HERE ARE OF CAPACITY: BETWEEN 190-340 VOLUME','WHIRLPOOL'),('COLOUR OF WHIRLPOOL REFRIGERATORS ARE:::(*GERMAN STEEL* *BLUE*)','WHIRLPOOL'),('ENERGY STARS OF WHIRLPOOL REFRIGERATORS AVAILABLE:::3*','WHIRLPOOL'),('HISENSE REFRIGERATORS AVAILABLE HERE ARE OF COST BETWEEN 10 THOUSANDS TO 1 LAKHS RUPEES','HISENSE'),('HISENSE REFRIGERATORS AVAILABLE HERE ARE OF CAPACITY: BETWEEN 93-670 VOLUME','HISENSE'),('COLOUR OF HISENSE REFRIGERATORS ARE:::(*BLACK* *SILVER* *GREY*)','HISENSE'),('ENERGY STARS OF HISENSE REFRIGERATORS AVAILABLE:::(1* 3* 2*)','HISENSE'),('PANASONIC REFRIGERATORS AVAILABLE HERE ARE OF COST BETWEEN 18 TO 80 THOUSANDS RUPEES','PANASONIC'),('PANASONIC REFRIGERATORS AVAILABLE HERE ARE OF CAPACITY: BETWEEN : 142-592 VOLUME','PANASONIC'),('COLOUR OF PANASONIC REFRIGERATORS ARE:::(*WHITE* *BLACK* *GREY* *RED*)','PANASONIC'),('ENERGY STARS OF PANASONIC REFRIGERATORS AVAILABLE:::(3* 2*)STAR','PANASONIC');
/*!40000 ALTER TABLE `refri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
INSERT INTO `tv` VALUES ('SONY TV AVAILABLE HERE ARE OF COST BETWEEN 28 THOUSAND TO 4.5 LAKHS RUPEES','SONY'),('SONY TV AVAILABLE HERE ARE OF INCHES::*32* *43* *50* *55* *65* *75* *85*','SONY'),('COLOUR OF SONY TVs ARE::: *BLACK*','SONY'),('Mi TV AVAILABLE HERE ARE OF COST BETWEEN 20 TO 44 THOUSAND RUPEES','MI'),('Mi TV AVAILABLE HERE ARE OF INCHES::*32* *40* *43* *50* *55*','MI'),('COLOUR OF Mi TVs ARE:::(*BLACK* *GREY*)','MI'),('ONEPLUS TV AVAILABLE HERE ARE OF COST BETWEEN 16 TO 85 THOUSAND RUPEES','ONEPLUS'),('ONEPLUS TV AVAILABLE HERE ARE OF INCHES::*32* *43* *50* *55* *65*','ONEPLUS'),('COLOUR OF ONEPLUS TVs ARE:::(*BLACK*)','ONEPLUS'),('LG TV AVAILABLE HERE ARE OF COST BETWEEN 20 THOUSANDS TO 1 LAKH RUPEES','LG'),('LG TV AVAILABLE HERE ARE OF INCHES::*32* *43* *50* *55* *65*','LG'),('COLOUR OF LG TVs ARE:::(*BLACK* *ASHED BLUE* *GRAY*)','LG'),('SAMSUNG TV AVAILABLE HERE ARE OF COST BETWEEN 23 THOUSANDS TO 3 LAKHS RUPEES','SAMSUNG'),('SAMSUNG TV AVAILABLE HERE ARE OF INCHES::*32* *43* *50* *55* *65* *75* *85*','SAMSUNG'),('COLOUR OF SAMSUNG TVs ARE:::(*BLACK* *CLOUD WHITE*)','SAMSUNG');
/*!40000 ALTER TABLE `tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `washing`
--

DROP TABLE IF EXISTS `washing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `washing` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `washing`
--

LOCK TABLES `washing` WRITE;
/*!40000 ALTER TABLE `washing` DISABLE KEYS */;
INSERT INTO `washing` VALUES ('IFB WASHING MACHINEAVAILABLE HERE ARE OF COST BETWEEN 20  TO 40 THOUSANDs RUPEES','IFB'),('IFB WASHING MACHINE AVAILABLE HERE ARE OF WEIGHTS:*5* 6* *7* *8* *5.5* *7.5* *8.5* *6.5* KGs','IFB'),('COLOUR OF IFB WASHING MACHINE ARE:::(*SILVER*)','IFB'),('ENERGY STARS OF IFB WASHING MACHINE AVAILABLE:::5* STAR','IFB'),('GODREJ WASHING MACHINE AVAILABLE HERE ARE OF COST BETWEEN 11 TO 21 THOUSANDS RUPEES','GODREJ'),('GODREJ WASHING MACHINEAVAILABLE HERE ARE OF WEIGHTS:*6* *7* *8.5* *7.5* *6.5* *9* *10.2* KGs','GODREJ'),('COLOUR OF GODREJ WASHING MACHINE ARE:::(*Grey* *WINE RED* *ROSE GOLD*)','GODREJ'),('ENERGY STARS OF GODREJ WASHING MACHINE AVAILABLE::: 5*STAR','GODREJ'),('HAIER WASHING MACHINE AVAILABLE HERE ARE OF COST BETWEEN 8  T0 36 THOUSANDs RUPEES','HAIER'),('HAIER WASHING MACHINE AVAILABLE HERE ARE OF WEIGHTS:*6* *7* *8* *9* *6.5* *7.5* *8.5* KGs','HAIER'),('COLOUR OF HAIER WASHING MACHINE ARE:::(*BLACK*)','HAIER'),('ENERGY STARS OF HAIER WASHING MACHINE AVAILABLE:::5*STAR','HAIER'),('BOSCH WASHING MACHINE AVAILABLE HERE ARE OF COST BETWEEN 18 TO 60 THOUSANDS RUPEES','BOSCH'),('BOSCH WASHING MACHINE AVAILABLE HERE ARE OF INCHES:*7* *6* *8* *6.5* *7.5* KGs','BOSCH'),('COLOUR OF BOSCH WASHING MACHINE ARE:::(*SILVER* *WHITE* *GREY*)','BOSCH'),('ENERGY STARS OF BOSCH WASHING MACHINE AVAILABLE:::5*STAR','BOSCH');
/*!40000 ALTER TABLE `washing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_fashion`
--

DROP TABLE IF EXISTS `women_fashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_fashion` (
  `information` varchar(100) DEFAULT NULL,
  `p_brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_fashion`
--

LOCK TABLES `women_fashion` WRITE;
/*!40000 ALTER TABLE `women_fashion` DISABLE KEYS */;
INSERT INTO `women_fashion` VALUES ('DESIBUTIK SAREES AVAILABLE HERE ARE OF COST BETWEEN 1 TO 3 THOUSANDS RUPEES','DESIBUTIK'),('DESIBUTIK SAREES AVAILABLE HERE ARE OF MATERIAL:*COTTON* *SILK* *FABRIC*','DESIBUTIK'),('DESIBUTIK SAREES OF ARE OF MULTICOLOURS LIKE :::(*MAROON* *BLUE* *YELLOW* *RED*)','DESIBUTIK'),('FLORENCE SAREES AVAILABLE HERE ARE OF COST BETWEEN 2 HUNDREDS TO 1 THOUSANDS RUPEES','FLORENCE'),('FLORENCE SAREES AVAILABLE HERE ARE OF MATERIAL:*POLYESTER* *COTTON* *SILK* *FABRIC*','FLORENCE'),('FLORENCE SAREES OF ARE OF MULTICOLOURS LIKE :::*GREEN* *BLACK* *PINK* *RED*','FLORENCE'),('SAILY SAREES AVAILABLE HERE ARE OF COST BETWEEN 600 TO 900 HUNDREDS RUPEES','SAILY'),('SAILY SAREES AVAILABLE HERE ARE OF MATERIALS:*POLYESTER* *COTTON* *SILK* *FABRIC*','SAILY'),('SAILY SAREES OF ARE OF MULTICOLOURS LIKE :::(*GREEN* *ORANGE* *BLUE* *GREY*)','SAILY'),('KVS FAB SAREES AVAILABLE HERE ARE OF COST BETWEEN 400 TO 800 HUNDREDS RUPEES','KVS FAB'),('KVS FAB SAREES AVAILABLE HERE ARE OF MATERIALS:*POLYESTER* *COTTON* *SILK* *FABRIC*','KVS FAB'),('KVS FAB SAREES OF ARE OF MULTICOLOURS LIKE :::*BLACK* *PINK* *BLUE* *YELLOW*','KVS FAB'),('KURTA SETS AVAILABLE HERE ARE OF COST BETWEEN 400 HUNDREDS TO 6000 THOUSANDS RUPEES','BIBA'),('KURTA SETS AVAILABLE HERE ARE OF MATERIALS:*POLYESTER* *COTTON* *SILK* *FABRIC*','BIBA'),('KURTA SETS OF ARE OF MULTICOLOURS LIKE :::*PINK* *RED* *BLUE* *YELLOW*','BIBA'),('KURTA SETS OF ARE OF BEST BRAND::*BIBA*','BIBA'),('TOPS AND T-SHIRT AVAILABLE HERE ARE OF COST BETWEEN 300 TO 900 HUNDREDS RUPEES','tops and t-shirt'),('TOPS AND T-SHIRT AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','tops and t-shirt'),('TOPS AND T-SHIRT OF ARE OF MULTICOLOURS LIKE :::*BLACK* *RED* *BLUE* *WHITE*','tops and t-shirt'),('TOPS AND T-SHIRT OF ARE OF BEST BRANDS:*MAX* *MISS OLIVE* *HARPA*','tops and t-shirt'),('JEANS AVAILABLE HERE ARE OF COST BETWEEN 700 HUNDREDS TO 2 THOUSANDS RUPEES','JEANS'),('JEANS AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','JEANS'),('JEANS OF ARE OF MULTICOLOURS LIKE :::(*BLACK* *BLUE* *WHITE*)','JEANS'),('JEANS OF ARE OF BEST BRANDS:*LEE* *LEVI*','JEANS'),('JUMPSUITS AVAILABLE HERE ARE OF COST BETWEEN 600 HUNDREDS TO 1 THOUSANDS RUPEES','JUMPSUIT'),('JUMPSUITS AVAILABLE HERE ARE OF MATERIALS:*LINEN COTTON* *LINEN COTTON BLEND*','JUMPSUIT'),('JUMPSUITS OF ARE OF MULTICOLOURS LIKE :::*BLACK* *PINK* *WHITE*','JUMPSUIT'),('JUMPSUITS OF ARE OF BEST BRANDS:*RARE* *MISS BRAND*','JUMPSUIT');
/*!40000 ALTER TABLE `women_fashion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26  0:48:44
