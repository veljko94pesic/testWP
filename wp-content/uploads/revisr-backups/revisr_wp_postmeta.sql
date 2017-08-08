
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
DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(196,2,'_edit_lock','1502106855:1'),(197,103,'_et_pb_predefined_layout','on'),(198,103,'_et_pb_built_for_post_type','page'),(199,103,'_et_pb_layout_applicability','product_tour'),(200,104,'_et_pb_predefined_layout','on'),(201,104,'_et_pb_built_for_post_type','page'),(202,105,'_et_pb_predefined_layout','on'),(203,105,'_et_pb_built_for_post_type','page'),(204,106,'_et_pb_predefined_layout','on'),(205,106,'_et_pb_built_for_post_type','page'),(206,107,'_et_pb_predefined_layout','on'),(207,107,'_et_pb_built_for_post_type','page'),(208,108,'_et_pb_predefined_layout','on'),(209,108,'_et_pb_built_for_post_type','page'),(210,109,'_et_pb_predefined_layout','on'),(211,109,'_et_pb_built_for_post_type','page'),(212,110,'_et_pb_predefined_layout','on'),(213,110,'_et_pb_built_for_post_type','page'),(214,111,'_et_pb_predefined_layout','on'),(215,111,'_et_pb_built_for_post_type','page'),(216,112,'_et_pb_predefined_layout','on'),(217,112,'_et_pb_built_for_post_type','page'),(218,113,'_et_pb_predefined_layout','on'),(219,113,'_et_pb_built_for_post_type','page'),(220,114,'_et_pb_predefined_layout','on'),(221,114,'_et_pb_built_for_post_type','page'),(222,115,'_et_pb_predefined_layout','on'),(223,115,'_et_pb_built_for_post_type','page'),(224,116,'_et_pb_predefined_layout','on'),(225,116,'_et_pb_built_for_post_type','page'),(226,117,'_et_pb_predefined_layout','on'),(227,117,'_et_pb_built_for_post_type','page'),(228,118,'_et_pb_predefined_layout','on'),(229,118,'_et_pb_built_for_post_type','page'),(230,119,'_et_pb_predefined_layout','on'),(231,119,'_et_pb_built_for_post_type','page'),(232,120,'_et_pb_predefined_layout','on'),(233,120,'_et_pb_built_for_post_type','page'),(234,121,'_et_pb_predefined_layout','on'),(235,121,'_et_pb_built_for_post_type','page'),(236,122,'_et_pb_predefined_layout','on'),(237,122,'_et_pb_built_for_post_type','page'),(238,123,'_et_pb_predefined_layout','on'),(239,123,'_et_pb_built_for_post_type','page'),(240,124,'_et_pb_predefined_layout','on'),(241,124,'_et_pb_built_for_post_type','page'),(242,125,'_et_pb_predefined_layout','on'),(243,125,'_et_pb_built_for_post_type','page'),(244,126,'_et_pb_predefined_layout','on'),(245,126,'_et_pb_built_for_post_type','page'),(246,127,'_et_pb_predefined_layout','on'),(247,127,'_et_pb_built_for_post_type','page'),(248,128,'_et_pb_predefined_layout','on'),(249,128,'_et_pb_built_for_post_type','page'),(250,129,'_et_pb_predefined_layout','on'),(251,129,'_et_pb_built_for_post_type','page'),(252,130,'_et_pb_predefined_layout','on'),(253,130,'_et_pb_built_for_post_type','page'),(254,131,'_et_pb_predefined_layout','on'),(255,131,'_et_pb_built_for_post_type','page'),(256,132,'_et_pb_predefined_layout','on'),(257,132,'_et_pb_built_for_post_type','page'),(258,133,'_et_pb_predefined_layout','on'),(259,133,'_et_pb_built_for_post_type','page'),(260,134,'_et_pb_predefined_layout','on'),(261,134,'_et_pb_built_for_post_type','page'),(262,135,'_et_pb_predefined_layout','on'),(263,135,'_et_pb_built_for_post_type','page'),(264,2,'_et_pb_use_builder','on'),(265,2,'_edit_last','1'),(266,2,'_et_pb_post_hide_nav','default'),(267,2,'_et_pb_page_layout','et_right_sidebar'),(268,2,'_et_pb_side_nav','off'),(269,2,'_et_builder_version','BB|Divi|3.0.66'),(270,2,'_et_pb_ab_stats_refresh_interval','hourly'),(271,2,'_et_pb_old_content',''),(272,2,'_et_pb_enable_shortcode_tracking',''),(273,2,'_et_pb_custom_css','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

