-- -- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
-- --
-- -- Host: localhost    Database: foodhub
-- -- ------------------------------------------------------
-- -- Server version	5.7.17-log
--
-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8 */;
-- /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
-- /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
-- /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- CREATE SCHEMA IF NOT EXISTS `foodhub` DEFAULT CHARACTER SET utf8 ;
-- USE `foodhub` ;
-- --
-- -- Table structure for table `hibernate_sequence`
-- --
--
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `items_category`
-- --
--
-- DROP TABLE IF EXISTS items_category;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE items_category (
--                                 id int(11) NOT NULL,
--                                 `name` varchar(255) DEFAULT NULL,
--                                 PRIMARY KEY (id)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `items_type`
-- --
--
-- DROP TABLE IF EXISTS items_type;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE items_type (
--                             id int(11) NOT NULL,
--                             icon varchar(255) DEFAULT NULL,
--                             `name` varchar(255) DEFAULT NULL,
--                             PRIMARY KEY (id)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `order_items`
-- --
--
-- DROP TABLE IF EXISTS order_items;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE order_items (
--                              id int(11) NOT NULL,
--                              price double DEFAULT NULL,
--                              quantity int(11) DEFAULT NULL,
--                              orderid int(11) DEFAULT NULL,
--                              restaurantitemid int(11) DEFAULT NULL,
--                              PRIMARY KEY (id),
--                              KEY FKgw0ou6aya4sygrxioxl5ee43g (orderid),
--                              KEY FK749wphx7xiuhnlkfagq6ewb1k (restaurantitemid)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `order_status`
-- --
--
-- DROP TABLE IF EXISTS order_status;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE order_status (
--                               id int(11) NOT NULL,
--                               icon varchar(255) DEFAULT NULL,
--                               `name` varchar(255) DEFAULT NULL,
--                               PRIMARY KEY (id)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `orders`
-- --
--
-- DROP TABLE IF EXISTS orders;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE orders (
--                         id int(11) NOT NULL,
--                         address varchar(255) DEFAULT NULL,
--                         created_on datetime DEFAULT NULL,
--                         instructions varchar(255) DEFAULT NULL,
--                         `number` varchar(255) DEFAULT NULL,
--                         orderstatusid int(11) DEFAULT NULL,
--                         restaurantid int(11) DEFAULT NULL,
--                         userid int(11) DEFAULT NULL,
--                         PRIMARY KEY (id),
--                         KEY FKh4fqbjjdna7wlgfop3bn235yf (orderstatusid),
--                         KEY FK9t8m3u3j6g313pos0l8a70x04 (restaurantid),
--                         KEY FKpnm1eeupqm4tykds7k3okqegv (userid)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `restaurant_items`
-- --
--
-- DROP TABLE IF EXISTS restaurant_items;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE restaurant_items (
--                                   id int(11) NOT NULL,
--                                   ingredients varchar(255) DEFAULT NULL,
--                                   `name` varchar(255) DEFAULT NULL,
--                                   portion varchar(255) DEFAULT NULL,
--                                   price double DEFAULT NULL,
--                                   itemscategoryid int(11) DEFAULT NULL,
--                                   itemstypeid int(11) DEFAULT NULL,
--                                   restaurantid int(11) DEFAULT NULL,
--                                   PRIMARY KEY (id),
--                                   KEY FKdw79jy49y9cg1q59ndglmcm2p (itemscategoryid),
--                                   KEY FKcjrvfm233icrf0ebdkapi1tug (itemstypeid),
--                                   KEY FKgv50uadw62hr4xi7jo9xbm6uj (restaurantid)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `restaurant_offers`
-- --
--
-- DROP TABLE IF EXISTS restaurant_offers;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE restaurant_offers (
--                                    id int(11) NOT NULL,
--                                    `code` varchar(255) DEFAULT NULL,
--                                    create_on datetime DEFAULT NULL,
--                                    expired_on datetime DEFAULT NULL,
--                                    `name` varchar(255) DEFAULT NULL,
--                                    restaurantsid int(11) DEFAULT NULL,
--                                    PRIMARY KEY (id),
--                                    KEY FKbbehaf80hndnlfl8jreabg1pn (restaurantsid)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `restaurants`
-- --
--
-- DROP TABLE IF EXISTS restaurants;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE restaurants (
--                              id int(11) NOT NULL,
--                              address varchar(255) DEFAULT NULL,
--                              contact varchar(255) DEFAULT NULL,
--                              coverimage varchar(255) DEFAULT NULL,
--                              deliveredtime varchar(255) DEFAULT NULL,
--                              description varchar(255) DEFAULT NULL,
--                              haschicken bit(1) DEFAULT NULL,
--                              hasmeat bit(1) DEFAULT NULL,
--                              hasveg bit(1) DEFAULT NULL,
--                              hasfish bit(1) DEFAULT NULL,
--                              `name` varchar(255) DEFAULT NULL,
--                              profileimage varchar(255) DEFAULT NULL,
--                              smalldescription varchar(45) DEFAULT NULL,
--                              PRIMARY KEY (id)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Table structure for table `users`
-- --
--
-- DROP TABLE IF EXISTS users;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE users (
--                        id int(11) NOT NULL,
--                        address varchar(255) DEFAULT NULL,
--                        email varchar(255) DEFAULT NULL,
--                        fullname varchar(255) DEFAULT NULL,
--                        instructions varchar(255) DEFAULT NULL,
--                        `password` varchar(255) DEFAULT NULL,
--                        profileimage varchar(255) DEFAULT NULL,
--                        username varchar(255) DEFAULT NULL,
--                        mobile varchar(255) DEFAULT NULL,
--                        restaurant_id int(11) DEFAULT NULL,
--                        PRIMARY KEY (id),
--                        UNIQUE KEY UK_r43af9ap4edm43mmtq01oddj6 (username)
-- );
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
-- /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
-- /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
--
-- -- Dump completed
