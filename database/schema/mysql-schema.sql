/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_dice_raw` varchar(255) NOT NULL,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `effect` text NOT NULL,
  `cost` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `items_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `perishables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perishables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `effect` text NOT NULL,
  `cost` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `prefixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prefixes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_dice_raw` varchar(255) NOT NULL,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `effect` text NOT NULL,
  `cost` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `prefixes_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prefixes_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `suffixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suffixes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_dice_raw` varchar(255) NOT NULL,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `effect` text NOT NULL,
  `cost` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `suffixes_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suffixes_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dice_raw` varchar(255) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'0001_01_01_000000_create_users_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2,'0001_01_01_000001_create_cache_table',1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3,'0001_01_01_000002_create_jobs_table',1);
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-10','1-4','Cape','AC 1','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-10','5-6','Rags','AC 1','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-10','7-9','Cloak','AC 2, absorbs 1 hp of damage per attack','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-10','10-12','Robe','AC 2','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-10','13-14','Quilted Armor','AC 3','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'1-10','15-17','Leather Armor','AC 4','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'1-10','18','Hard Leather Armor','AC 4','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'1-10','19-21','Studded Leather Armor','AC 5','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'1-10','22-23','Ring Mail','AC 5','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'1-10','24-25','Scale Mail','AC 6','120');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'1-10','26-27','Chainmail','AC 7','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'1-10','28','Breast Plate','AC 7','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'1-10','29','Light Plate','AC 7','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'1-10','30','Splint Mail','AC 8','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'1-10','31-32','Plate Mail','AC 8','600');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'1-10','33','Field Plate','AC 10','2000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'1-10','34','Ancient Armor','AC 10','3750');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'1-10','35','Gothic Plate','AC 10','4000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'1-10','36-100','Full Plate Mail','AC 10','5000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'11-15','1-10','Cap','AC 2 against called shots to the head, one per character','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'11-15','11-14','Skull Cap','AC 3 against called shots to the head, one per character','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'11-15','15-18','Helm','AC 4 against called shots to the head, one per character','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'11-15','19','Mask','AC 5 against called shots to the head, one per character','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'11-15','20-23','Full Helm','AC 6 against called shots to the head, one per character','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'11-15','24-27','Great Helm','AC 7 against called shots to the head, one per character','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'11-15','28','Bone Helm','AC 8 against called shots to the head, one per character','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'11-15','29-100','Crown','AC 9 against called shots to the head, one per character','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'16-20','1-5','Cloves','AC 3 against called shots to the feet, one pair per character','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'16-20','6-7','Sash','AC 3 against called shots to the waist, one per character','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'16-20','8-10','Leather Boots','AC 3 against called shots to the hands, one pair per character','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'16-20','11-15','Bracers','AC 5 against called shots to the feet, one pair per character','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'16-20','16-17','Belt','AC 5 against called shots to the waist, one per character','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'16-20','18-20','Chain Boots','AC 5 against called shots to the hands, one pair per character','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'16-20','21-25','Gauntlets','AC 8 against called shots to the feet, one pair per character','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'16-20','26-27','Girdle','AC 8 against called shots to the waist, one per character','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'16-20','28-100','Plate Boots','AC 8 against called shots to the hands, one pair per character','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'21-25','1-10','Buckler','AC +1 against one attack per round','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'21-25','11-16','Small Shield','AC +1 against two attacks per round','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'21-25','17-21','Large Shield','AC +1 against all attacks','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'21-25','22-25','Kite Shield','AC +1 against all attacks','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'21-25','26','Spiked Shield','AC r 1 against all attacks, off-hand attack for 1d4/1d4','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'21-25','27','Bone Shield','AC +2 against all melee attacks (no bonus against missiles)','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'21-25','28-30','Tower Shield','AC +1 against all attacks, +2 vs. missiles','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'21-25','31-100','Gothic Shield','AC -2 against all attacks, minimum Strength 18','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'26-30','1-10','Dagger','damage 1d4/1d3, thrown 10/20/30 (ROF 2/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'26-30','11-14','Throwing Knife','damage 1d3/1d3, thrown 10/20/30 (ROF 3/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'26-30','15-100','Blade Kris','damage 1d4-l/1d4, thrown 10/20/30 (ROF 1/1)','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'31-40','1-5','Dagger','damage 1d4/1d3. thrown 10/20/30 (ROF 2/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'31-40','6-10','Short Sword','damage 1d6/1d8','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'31-40','11-13','Sabre','damage 1d6+l/1d8','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'31-40','14-15','Blade','damage 1d6+l/1d8+l','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'31-40','16-17','Scimitar','damage 1d8/1d8','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'31-40','18','Falchion','damage 2d4/1d6','35');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'31-40','19-23','Long Sword','damage 1d8/1dl2','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'31-40','24-27','Broad Sword','damage 2d4/1d611','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'31-40','28','Claymore','damage 1d8 - I/1dl2+I','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'31-40','29-31','Bastard Sword','damage 1d8/1dl2 one-handed, 2d4/2d8 two-handed','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'31-40','32-35','Two-Handed Sword','damage 1dl0/3d6 two-handed','300');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'31-40','36-100','Great Sword','damage 1dl2/2d8 two-handed, minimum Strength 18','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'41-44','1-8','Club','damage 1d6/1d3. thrown 10/20/30 (ROF 1 /1)','1');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'41-44','9-10','Spiked Club','damage 1d6/1d6. thrown 10/20/30 (ROF 1/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'41-44','11-17','Mace','damage 1d6+l/1d6','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'41-44','18-21','Morning Star','damage 2d4/ljd6+l','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'41-44','22-24','Flail','damage 1d6^/2d4 two-handed','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'41-44','25-30','War Hammer','damage 1d8/1d8 two-handed','60');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'41-44','31-32','Maul','damage 1d!0/1d8+l two-handed, minimum Strength 18','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'41-44','33-100','Malus','damage 1dlO/1dlO two-handed, minimum Strength 18','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'45-48','1-8','Javelin','damage 1d6/1d6. thrown 20/40 60 (ROF 1/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'45-48','9-15','Spear','damage 1d6/1d8, thrown 10/20/30 (ROF 1/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'45-48','16-17','Pilum','damage 1d6+l/1d8, thrown 10/20/30 (ROF 1/1)','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'45-48','18-21','Glaive','damage 1d8/1d8, thrown 10/20/30 (ROF 1/1)','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'45-48','22-24','Trident','damage 1d6-l/3d4','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'45-48','25-30','Pike','damage 1d6/1dl2, double damage when set for charge','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'45-48','31-100','Brandi stock','damage 1d!0/2d6, minimum Strength 18. cannot be disarmed','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'49-50','1-8','Bardiche','damage 2d4/2d6 two-handed','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'49-50','9-15','Scythe','damage 1d!0/1dl2 two-handed, minimum Strength 18','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'49-50','16-19','Poleaxe','damage 1d!0/1dl2 two-handed, minimum Strength 18','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'49-50','20-100','Halberd','damage 1dl0/2d6 two-handed, minimum Strength 18','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'51-55','1-9','Small Axe','damage 1d6/1d4','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'51-55','10-12','Throwing Axe','damage 1d4/1d4, thrown 10/20/30 (ROF 1/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'51-55','13-17','Axe','damage 1d6/1d6','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'51-55','18-21','Large Axe','damage 1d6+1/1d6','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'51-55','22-24','Broad Axe','damage 1db-rl/1dbrl','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'51-55','25-30','Battle Axe','damage 1d8/1d8 two-handed','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'51-55','31-32','Great Axe','damage 1diO/1dlO two-handed, minimum Strength 18','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'51-55','33-100','Giant Axe','damage 1dl2/2d8 two-handed, minimum Strength 18(00)','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'56-63','1-5','Arrows (Id 12)','damage as per bow','3');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'56-63','6-9','Short Bow','fired 50/100/150 (2/1 ROF). 1d6/1d6','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'56-63','10-11','Hunter’s Bow','fired 50/100/160 (2/1 ROF). 1d8/1d8','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'56-63','12-17','Long Bow','fired 50/100/170 (2/1 ROF), 1d8/1d8','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'56-63','18-21','Composite Bow','fired 40/80/170 (2/1 ROF), 1d8/1d8','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'56-63','22-24','Short Battle Bow','fired 50/100/150 (2/1 ROF). 1dS/1dS+l','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'56-63','25-29','Short War Bow','fired 50/100/150 (2/1 ROF). 1d8+l/1d8+l','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'56-63','30-31','Long Battle Bow','fired 50/100/170 (2/1 ROF). 1d8/1d8-l','300');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'56-63','32-100','Long War Bow','fired 50/100/170 (2/1 ROF), 1d8+l/!d8+l','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'64-65','1-5','Bolts (ld20)','damage as per crossbow','3');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'64-65','6-12','Light Crossbow','fired 60/120/180 (1/1 ROF). 1d4/1d4','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'64-65','13-18','Crossbow','fired 70/140/210 (1/1 ROF), 1d4/1d6','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'64-65','19','Repeating Crossbow','fired 40/60/80 (up to 5/1 ROF), 1d3/1d3. needs I round reloading after 5 shots','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'64-65','20-100','Heavy Crossbow','fired 80/160/240 (X ROF). 1d4+l/1d6+l','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'65-70','1-10','Wand','damage 1d2/1d2 one-handed','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'65-70','11','Torch','damage 1d3/1d2 fire damage when lit, can be reused, light radius 30\'','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'65-70','12','Bone Wand','damage 1d3/1d2 one-handed, use restricted to necromancers','70');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'65-70','13','Yew Wand','damage 1d2/1d3 one-handed, use restricted to sorcerers and druids','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'65-70','14-100','Scepter','damage 1d3/1d3 one-handed','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'71-75','1-9','Short Staff’','damage 1d4/1d4 one-handed','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'71-75','10-18','Long Staff','damage 1d6/1d6 two-handed','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'71-75','19-21','Gnarled Staff','damage 1d6/1d6+l two-handed','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'71-75','22-24','Composite Staff','damage 1d6+l/1d6+l two-handed','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'71-75','25-30','Battle Staff','damage 1d6+l/1d8 two-handed','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'71-75','31-100','War Staff','damage 1d8/1d8 two-handed','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'76-79','1-6','Charm','has its effect if carried on person','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'76-79','7-17','Ring','worn on hand, one per hand','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'76-79','18','Flag','draped over body, one per character','too');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'76-79','19','Orb','one per character, worn on arm, cannot use shie1d while using orb','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'76-79','20-100','Amulet','worn on neck, one per character','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'80','1-7','Chipped Jewel','roll 1d6: 1 amethyst. 2 diamond. 3 emera1d, 4 ruby, 5 sapphire, 6 topaz','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'80','8-13','Flawed Jewel','roll 1d6: 1 amethyst, 2 diamond, 3 emera1d. 4 ruby, 5 sapphire. 6 topaz','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'80','14-19','Jewel','roll 1d6: 1 amethyst, 2 diamond, 3 emera1d, 4 ruby, 5 sapphire. 6 topaz','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'80','20-25','Flawless Jewel','roll 1d6: 1 amethyst. 2 diamond, 3 emera1d. 4 ruby. 5 sapphire. 6 topaz','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'80','26-100','Perfect Jewel','roll 1d6: 1 amethyst, 2 diamond. 3 emera1d. 4 ruby, 5 sapphire. 6 topaz','1000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'81-90','1-17','Scroll','can be read once to cast spell, at minimum level necessary to cast spell','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'81-90','18','Rune','can be set once as a trap, acts as a glyph of warding','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'81-90','19-100','Book','can be read once to gam the spell, allows','100');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-10','armor (d20+level. uses d60 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (2,'11-15','headgear (d20+level, uses d60 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (3,'16-20','accoutrements (d20-level. uses d60 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (4,'21-25','shields (d20 + level, uses d60 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (5,'26-30','knives (d20+level, uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (6,'31-40','swords (d20+level, uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (7,'41-44','clubs (d20+level, uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (8,'45-48','spears (d20+level, uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (9,'49-50','polearms (d20+level. uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (10,'51-55','axes (d20+level, uses d60+25 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (11,'56-63','bows (d20-level, uses d60+30 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (12,'64-65','crossbows (d20+level, uses d60+30 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (13,'65-70','wands (d20+level, uses d60+30 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (14,'71-75','staves (d20+level. uses d60 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (15,'76-79','accessories (d20+level, uses d40+30 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (16,'80','gems (d20+level, uses d40+30 on prefix and/or suffix table)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (17,'81-90','inscribed spells (d20+level. d10+90 on the suffix table only)');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (18,'91-100','perishables (see Perishables table)');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-2','Potion of Light Healing','heals 1d4-l damage','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'3-6','Potion of Healing','heals 2d4+2 damage','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'7-8','Potion of Full Healing','heals all damage','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'9-11','Potion of Mana','restores 1 previously cast spell of 1st-3rd level','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'12-13','Potion of Full Mana','restores 1 previously cast spell','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'14-16','Potion of Rejuvenation','heals 2d4+2 damage and restores 1 previously cast spell of lst-3rd level','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'17-18','Potion of Full Rejuvenation','heals all damage and restores 1 previously cast spell','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'19','Detox Potion','casts slow poison on user for 2d4 turns','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'20','Antidote','casts neutralize poison on user','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'21','Potion of Chi','gives new save against any mind-affecting spell or effect','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'22','Potion of Full Chi','dispels any mind-affecting spell or affect','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'23','Potion of Restoration','heals all damage, dispels any mind-affecting spell or effect','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'24','Flaming Oil','flaming oil in 5\' radius for 2d4-2 fire damage for 1d4 rounds','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'25','Explosive Potion','explosion in 10\' radius for 3d4 13 fire damage (save vs. dragon breath for half)','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'26','Fulminating Potion','explosion in 20\' radius for 6d4+6 fire damage (save vs. dragon breath for half)','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'27','Rancid Gas Potion','poison gas in a 10\' cloud for 1d6-1 poison damage (save vs. poison for half)','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'28','Choking Gas Potion','poison gas in a 10\' cloud for 2d6+2 poison damage (save vs. poison for half)','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'29','Strangling Gas Potion','poison gas in a 10\' cloud for 3d6+3 poison damage (save vs. poison for half)','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'30','Acidic Potion','item must save against acid at -2 or be destroyed','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'31','Energizing Herb','+1 Strength for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'32','Strengthening Herb','+2 Strength for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'33','Empowering Herb','+3 Strength for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'34','Artful Herb','+1 Dexterity for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'35','Skillful Herb','+2 Dexterity for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'36','Adroit Herb','+3 Dexterity for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'37','Sturdy Herb','-1 Constitution for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'38','Hardy Herb','+2 Constitution for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'39','Robust Herb','+3 Constitution for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'40','Sage Herb','+ 1 Intelligence for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'41','Shrewd Herb','+2 Intelligence for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'42','Vivid Herb','+3 Intelligence for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'43','Indigo Herb','+3 save vs. co1d and -25% damage from co1d for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'44','Cerulean Herb','+4 save vs. co1d and -50% damage from co1d for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'45','Russet Herb','-3 save vs. fire and -25% damage from fire for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'46','Vermilion Herb','+4 save vs. fire and -50% damage from fire for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'47','Crackling Herb','+3 save vs. lightning and -25% damage from lightning for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'48','Forked Herb','+4 save vs. lightning and -50% damage from lightning for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'49','Swart Herb','+3 save vs. spell and -25% damage from spell for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'50','Atramentous Herb','+4 save vs. spell and -50% damage from spell for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'51','Vital Herb','+3 save vs. poison and -25% damage from poison for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'52','Enduring Herb','+4 save vs. poison and -50% damage from poison for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'53','Urgent Herb','-3 to initiative rolls for 1 turn when attacking with a melee weapon','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'54','Fleet Herb','-6 to initiative rolls for 1 turn when attacking with a melee weapon','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'55','Brisk Herb','-3 to initiative rolls for 1 turn when attacking with a missile weapon','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'56','Swift Herb','-6 to initiative rolls for 1 turn when attacking with a missile weapon','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'57','Dazzling Herb','user gets 1 extra spell of each level, all must be cast within 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'58','Fascinating Herb','user gets 2 extra spells of each level, all must be cast within 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'59','Bright Herb','+50% hit points for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'60','Solar Herb','+100% hit points for I turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'61','Omniscient Herb','detect invisibility for 1 turn','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'62','Mystical Herb','all of user\'s spells cast within 1 turn have 1-50% duration','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'63','Arcane Herb','all of user\'s spells cast within I turn have double duration','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'64-65','Elixir of Strength','+1 Strength for I day','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'66-67','Elixir of Dexterity','+1 Dexterity for I day','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'68-69','Elixir of Vitality','+1 Constitution for I day','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'70','Elixir of Intelligence','+ 1 Intelligence for 1 day','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'71','Elixir of Chi','+ 1 Wisdom for 1 day','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'72','Spectral Elixir','+ 1 to all abilities for 1 day','15000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'73','Elixir of Fire','+2 save vs. fire for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'74','Elixir of Ice','+2 save vs. co1d for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'75','Elixir of Lightning','+2 save vs. lightning for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'76','Elixir of Magic','+2 save vs. spell for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'77','Elixir of Psionics','+2 save vs. mind-affecting spells and effects for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'78','Elixir of Poison','4-2 save vs. poison for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'79','Elixir of Energy','+2 on all saves for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'80','Elixir of Accuracy','+2 to hit for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'81','Elixir of Damage','minimum base damage from user’s attacks is 2 for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'82','Elixir of Defense','+ 1 AC for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'83','Elixir of Life','+5 hit points for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'84','Elixir of Power','+ 1 1st level spell (if user can cast such spells) for 1 day','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'85','Oil or Resin of Accuracy','anointed weapon is 12 to hit for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'86','Oil or Resin of Precision','(50% chance to be Resin) anointed weapon is +3 to hit for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'87','Oil or Resin of Mastery','(50% chance to be Resin) anointed weapon is + 4 to hit for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'88','Oil or Resin of Sharpness','(50% chance to be Resin) anointed weapon is -2 damage for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'89','Oil or Resin of Pain','(50% chance to be Resin) anointed weapon is - 3 damage for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'90','Oil or Resin of Savagery','(50% chance to be Resin) anointed weapon is +4 damage for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'91','Oil or Resin of Death','(50% chance to be Resin) anointed weapon is *5 damage for 1 turn','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'92','Oil of Hardening','(50% chance to be Resin) anointed weapon gives AC +2 for 1 turn','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'93','Oil of Imperviousness','anointed weapon gives AC +3 for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'94','Oil of Immunity','anointed weapon gives AC -4 for 1 turn','2000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'95','Oil of Skill','grants proficiency in the anointed item to anyone','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'96','Oil of Fortitude','ho1ding the item for 1 turn repairs any damage to an item','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'97','Blacksmith’s Oil','gives +4 to item saving throws for 1 turn','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'98','Oil of Permanence','permanently makes an item indestructible','3000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'99','Oil of Enchantment','permanently changes weapon s type','3500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'100','Elixir of Defense','+ 1 AC for 1 day','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-20','1-5','Sturdy','+ 1 AC (weighs the same as regular armor)','2,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-20','6-10','Fine','+ 1 AC','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-20','11-12','Strong','+ 1 AC, +2 against missiles','3750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-20','13-16','Grand','+2 AC','5,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-20','17-18','Valiant','+ 2 AC. +3 against missiles','6250');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'1-20','19-21','Glorious','+3 AC','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'1-20','21-22','Blessed','+3 AC. +4 against missiles','8750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'1-20','23-24','Awesome','+4 AC','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'1-20','25-26','Saintly','+4 AC, +5 against missiles','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'1-20','27-28','Holy','+5 AC','15,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'1-20','29-100','Godly','+5 AC, +6 against missiles','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'21-35','1','Tawny','+1 save vs. acid','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'21-35','2','Azure','+1 save vs. co1d','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'21-35','3','Crimson','+ 1 save vs. fire','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'21-35','4','Ocher','+ 1 save vs. lightning','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'21-35','5','Pearl','+ 1 save vs. mind-affecting spells and effects','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'21-35','6','Beryl','+ 1 save vs. poison','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'21-35','7','Coal','+1 save vs. spell','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'21-35','8','Jasmine','+2 save vs. acid','4,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'21-35','9','Lapis','+2 save vs. co1d','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'21-35','10','Burgundy','+2 save vs. fire','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'21-35','11','Tangerine','+2 save vs. lightning','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'21-35','12','Ivory','+ 2 save vs. mind-affecting spells and effects','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'21-35','13','Jade','+2 save vs. poison','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'21-35','14','Jet','+ 2 save vs. spell','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'21-35','15','Pyrite','+3 save vs. acid and -25% damage from acid','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'21-35','16','Cobalt','+3 save vs. co1d and -25% damage from co1d','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'21-35','17','Garnet','+3 save vs. fire and —25% damage from fire','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'21-35','18','Coral','-3 save vs. lightning and -25% damage from lightning','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'21-35','19','Crystal','+3 save vs. mind-affecting spells and effects','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'21-35','20','Viridian','+3 save vs. poison and -25% damage from poison','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'21-35','21','Ebony','+3 save vs. spell and -25% damage from spells','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'21-35','22','Crysolite','+4 save vs. acid and 50% damage from acid','8,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'21-35','23','Sapphire','+4 save vs. co1d and -50% damage from co1d','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'21-35','24','Ruby','+4 save vs. fire and -50% damage from fire','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'21-35','25','Amber','+4 save vs. lightning and -50% damage from lightning','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'21-35','26','Diamond','+4 save vs. mind-affecting spells and effects','8,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'21-35','27','Emerald','+4 save vs. poison and -50% damage from poison','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'21-35','28','Obsidian','+4 save vs. spell and -50% damage from spells','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'21-35','29','Topaz','+2 on all saves','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'21-35','30-100','Prismatic','+3 on all saves','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'35-40','1-6','Subduing','foe saves or gets a +5 initiative penalty for 1d4 rounds','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'35-40','7-10','Wearying','foe saves or loses initiative for 1d4 rounds','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'35-40','11','Phasing','foe saves or next attack is at 50% damage as he or she phases out for a moment','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'35-40','12-16','Depleting','foe saves or loses initiative for 2d4 rounds','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'35-40','17-19','Howling','foe saves or suffers fear for 1d4 rounds (if 4 HD/levels or less)','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'35-40','20','Chaotic','foe saves or changes to random alignment for 1d4 -1 rounds','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'35-40','21-23','Subjugating','foe saves or loses initiative each round for 4d4 rounds','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'35-40','24-26','Fatiguing','foe saves or is slowed for 1d4 rounds','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'35-40','27-29','Exhausting','foe saves or is slowed for 2d4 rounds','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'35-40','30-100','Overwhelming','foe saves or is slowed for 3d4 rounds','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'41-45','1-3','Fletcher’s','+ 1 level/score with nonweapon profs and spells (Amazons only)','2,500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'41-45','4-6','Slayer’s','+ 1 level/score with nonweapon profs and spells (Barbarians only)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'41-45','7-9','Summoner’s','+ 1 level/score with nonweapon profs and spells (Necromancers only)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'41-45','10-12','Monk\'s','+1 level/score with non weapon profs and spells (Paladins only)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'41-45','13-15','Angel’s','+1 level/score with nonweapon profs and spells (Sorcerers only)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'41-45','16-17','Archer’s','+2 level/score with nonweapon profs and spells (Amazons only)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'41-45','18-19','Berserker’s','+2 level/score with non weapon profs and spells (Barbarians only)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'41-45','20-21','Necromancer’s','+2 level/score with nonweapon profs and spells (Necromancers only) 1,000','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'41-45','22-23','Priest’s','+2 level/score with nonweapon profs and spells (Paladins only)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'41-45','24-100','Arch-Angel’s','+2 level/score with nonweapon profs and spells (Sorcerers only)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'46-49','1-15','Rusted','-1 AC','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'46-49','16-25','Vulnerable','-2 AC','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'46-49','26-35','Glass','-2 on all saves','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'46-49','36-45','Hyena’s','user may not cast spells','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'46-49','46-55','Frog\'s','-1 1st level spell per day (if the user can cast such spells)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'46-49','56-70','Pitch','any light source carried by user has a -10\' radius','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'46-49','71-75','Brass','-1 to hit','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'46-49','76-77','Tin','-2 to hit','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'46-49','78','Grystallme','when damage is dealt add 1d6; if a 6 is rolled, item does no damage and is destroyed','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'46-49','79-81','Weak','base damage is halved (round down)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'46-49','82-83','Bent','base damage is reduced to 1','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'46-49','84-85','Useless','attacking with this item causes no damage','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'46-49','86-88','Dull','1 to hit and base damage is halved (round down)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'46-49','89-100','Clumsy','-2 to hit and base damage is reduced to 1','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'51-55','1-6','Glowing','glows to a 30\' radius','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'51-55','7-12','Oracular','constant detect invisibility to 60\'','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'51-55','13-17','Unseen','user is invisible to all beings more than 30\' away','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'51-55','18-21','Hidden','user is invisible to all beings more than 20\' away','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'51-55','22-24','Veiled','user is invisible to all beings more than 10\' away','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'51-55','25-100','Stalking','user is invisible on any round he or she does not move,','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'56-60','1-5','Lizards','+1 1st level spell per day (if the user can cast such spells)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'56-60','6-9','Spider\'s','+1 1st-2nd level spells per day (if the user can cast such spells)','5,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'56-60','10-13','Raven’s','+1 1st-3rd level spells per day (if the user can cast such spells)','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'56-60','14-17','Snake’s','+1 1st-4th level spells per day (if the user can cast such spells)','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'56-60','18-21','Serpent’s','+1 1st-5th level spells per day (if the user can cast such spells)','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'56-60','22-24','Drake’s','+1 1st-6th level spells per day (if the user can cast such spells)','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'56-60','25-26','Dragon\'s','+1 1st-7th level spells per day (if the user can cast such spells)','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'56-60','27','Wyrm’s','+1 1st-8th level spells per day (if the user can cast such spells)','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'56-60','28','Hydra\'s','+1 1st-9th level spells per day (if the user can cast such spells)','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'56-60','29-30','Devious','when user casts a spell, there is a 1 in 10 chance that it restores itself in memory','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'56-60','31','Fortified','that it restores itself in memory when user casts a spell, there is a 1 in 4 chance that it restores itself in memory','25,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'56-60','32-100','Vulpine','that it restores itself in memory user may reduce any damage by 25% if he or she loses one memorized spell level)','27500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'61-62','1-6','Extending','doubles the duration of herbs','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'61-62','7-12','Chrono','doubles the duration of oils and resins','2,500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'61-62','15-19','Augmenting','doubles the effect of herbs','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'61-62','20-100','Catalyzing','doubles the effect of oils and resins','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'63-70','1-2','Blue','+1 save vs. co1d','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'63-70','3-4','Red','+1 save vs. fire','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'63-70','5-6','Orange','+ 1 save vs. lightning','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'63-70','7-8','White','+ 1 save vs. mind-affecting spells and effects','2,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'63-70','9-10','Green','+1 save vs. poison','2,000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'63-70','11-12','Black','+1 save vs. spell','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'63-70','13-14','Tough','+ 1 Constitution','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'63-70','15-16','Swift','+ 1 Dexterity','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'63-70','17-18','Brilliant','+ 1 Intelligence','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'63-70','19-20','Mighty','+ 1 Strength','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'63-70','21-22','Vibrant','+ 1 Wisdom','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'63-70','23-24','Forceful','+ 1 1st level spell per day (if the user can cast such spells)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'63-70','25-26','Resilient','-1 AC','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'63-70','27-28','Silver','+1 to hit','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'63-70','29-30','Muscular','minimum damage per dice in melee attacks is 2 points','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'63-70','31-100','Healthy','+5 hit points','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'71-77','1-6','Bronze','+1 to hit','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'71-77','7-8','Iron','+1 to hit. +2 vs. undead and demonic creatures','3750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'71-77','9-13','Silver','+2 to hit','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'71-77','14-15','Steel','2 to hit, +3 vs. undead and demonic creatures','6250');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'71-77','16-19','Gold','+ 3 to hit','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'71-77','20-21','Platinum','+3 to hit, +4 vs. undead and demonic creatures','8750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'71-77','22-25','Mithril','+4 to hit','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'71-77','26-30','Meteoric','+5 to hit','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'71-77','31-100','Weird','+5 to hit. extra successful hit on a natural 20','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'78-82','1-5','Jagged','double base damage on a natural 20','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'78-82','6-9','Deadly','double base damage on a natural 19-20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (125,'78-82','10-13','Vicious','double base damage on a natural 18-20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (126,'78-82','14-17','Heavy','double base damage on a natural 17-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (127,'78-82','18-21','Brutal','double base damage on a natural 16-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (128,'78-82','22-25','Massive','double base damage on a natural 15-20','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (129,'78-82','26-29','Savage','double base damage on a natural 14-20','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (130,'78-82','30-33','Ruthless','double base damage on a natural 13-20','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (131,'78-82','34-100','Merciless','double base damage on a natural 12-20','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (132,'83-90','1-5','Sharp','+1 to hit. double base damage on a natural 20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (133,'83-90','6-9','Fine','+1 to hit. double base damage on a natural 19-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (134,'83-90','10-13','Warrior\'s','+2 to hit, double base damage on a natural 18-20','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (135,'83-90','14-17','Soldier\'s','+2 to bit. double base damage on a natural 17-20','12,500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (136,'83-90','18-21','Knight’s','+3 to hit. double base damage on a natural 16-20','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (137,'83-90','22-25','Master\'s','+3 to hit. double base damage on a natural 15-20','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (138,'83-90','26-29','Doppelganger’s','for each attack, roll a d4 and add it to to hit and damage numbers','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (139,'83-90','30-33','Lord\'s','+4 to hit, double base damage on a natural 14-20','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (140,'83-90','34-37','Champion’s','+4 to hit, double base damage on a natural 13-20','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (141,'83-90','38-100','King\'s','+5 to hit, double base damage on a natural 12-20','25000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (142,'91-100','1-15','Plentiful','has twice the normal maximum charges','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (143,'91-100','16','Jester’s','casts a random spell from Suffixes 91-00 when activated','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (144,'91-100','17-100','Bountiful','has three times the normal maximum charges','12500');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-20','improves armor class (d20+level');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (2,'21-35','improves saving throws (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (3,'35-40','affects foe\'s reactions (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (4,'41-45','Improves skills and spells (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (5,'46-49','cursed (roll the base items prefix roll)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (6,'51-55','affects visibility (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (7,'56-60','affects number of castable spells (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (8,'61-62','affects magical items (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (9,'63-70','affects the user’s personal statistics (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (10,'71-77','improves to hit scores (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (11,'78-82','has a chance for extra damage (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (12,'83-90','improves to hit scores and has a chance for extra damage (d20+level)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (13,'91-100','affects item’s charges (d20+level)');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-20','1-11','of Health','-1 hit point of damage suffered with each attack','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-20','12-17','of Protection','-2 hit points of damage suffered with each attack','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-20','18-22','of Absorption','-3 hit points of damage suffered with each attack','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-20','23-26','of Life','-4 hit points of damage suffered with each attack','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-20','27-100','of Deflection','-5 hit points of damage suffered with each attack','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'21-25','1-10','of Thorns','successful melee attack against the wearer inflicts 1d4 damage on the attacker','5,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'21-25','11-18','of Spikes','successful melee attack against the wearer inflicts 2d4 damage on the attacker','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'21-25','19-100','of Blocking','extra attack/round when using this item to parry or as armor 2d4 damage on the attacker','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'26-30','1-10','of Sturdiness','item gets +2 on item saving throws','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'26-30','11-14','of Structure','item gets +4 on item saving throws','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'26-30','15-17','of the Ages','item cannot be damaged or destroyed','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'26-30','18-19','of Bonding','every item carried gets +2 on item saving throws','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'26-30','20-100','of Unity','every item carried gets +4 on item saving throws','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'31-35','1-8','of the Jackal','+4 hit points','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'31-35','9-13','of the Fox','+6 hit points','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'31-35','14-17','of the Jaguar','+8 hit points','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'31-35','18-21','of the Wolf','+ 10 hit points','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'31-35','22-23','of the Eagle','+ 12 hit points','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'31-35','24-25','of the Tiger','+ 15 hit points','15,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'31-35','26-27','of the Lion','+ 18 hit points','17500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'31-35','28-29','of the Mammoth','+20 hit points','20000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'31-35','30-31','of the Whale','+25 hit points','22500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'31-35','32-100','of the Colossus','+30 hit points','25000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'36-45','1-2','of Vitality','+ 1 Constitution','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'36-45','3-4','of Dexterity','+ 1 Dexterity','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'36-45','5-6','of Magic','+ 1 Intelligence','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'36-45','7-8','of Strength','+ 1 Strength','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'36-45','9-10','of the Lynx','+1 Wisdom','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'36-45','11-12','of Zest','+2 Constitution','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'36-45','13-14','of Skill','+2 Dexterity','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'36-45','15-16','of the Mind','+2 Intelligence','1,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'36-45','17-18','of Might','+2 Strength','1,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'36-45','19-20','of the Leopard','+2 Wisdom','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'36-45','21','of Vim','4 3 Constitution','1,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'36-45','22','of Accuracy','+3 Dexterity','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'36-45','23','of Brilliance','+3 Intelligence','1,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'36-45','24','of Power','+3 Strength','1,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'36-45','25','of the Jaguar','+3 Wisdom','1,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'36-45','26','of Vigor','-4 Constitution','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'36-45','27','of Precision','-<-4 Dexterity','2,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'36-45','28','of Sorcery','+4 Intelligence','2,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'36-45','29','of the Ciant','-4 Strength','2,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'36-45','30','of the Tiger','-4 Wisdom','2,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'36-45','31','of Life','+ 5 Constitution','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'36-45','32','of Perfection','+5 Dexterity','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'36-45','33','of Wizardry','+ 5 Intelligence','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'36-45','34','of the Titan','+5 Strength','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'36-45','35','of the Lion','+5 Wisdom','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'36-45','36','of the Sky','+1 to all ability scores','3,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'36-45','37','of the Moon','+ 2 to all ability scores','4,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'36-45','38','of the Stars','+3 to all ability scores','6,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'36-45','39','of the Heavens','+4 to all ability scores','8,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'36-45','40-100','of the Zodiac','+5 to all ability scores','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'46-49','1-15','ofTears','+ 1 hit point of damage suffered with each attack','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'46-49','16-25','of Pain','+2 hit points of damage suffered with each attack','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'46-49','26-27','of Brittleness','every hit by this item requires a save vs. crushing blow or it is destroyed','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'46-49','28-29','of Decay','+2 damage, every hit requires a save vs. crushing blow or it is destroyed','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'46-49','30','of Fragility','on the first use of this item in combat, it is destroyed','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'46-49','31-40','of the Vulture','1d6 hit points','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'46-49','41-42','of Disease','-1 Constitution','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'46-49','43-44','of Atrophy','-1 Dexterity','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'46-49','45-46','of Dyslexia','-1 Intelligence','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'46-49','47-18','of Weakness','-1 Strength','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'46-49','49-50','of the Cat','-1 Wisdom','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'46-49','51','of the Pit','-1 to all ability scores','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'46-49','52','of Illness','-2 Constitution','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'46-49','53','of Paralysis','-2 Dexterity','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'46-49','54','of Draining','-2 Intelligence','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'46-49','55','of Frailty','-2 Strength','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'46-49','56','of the Rat','-2 Wisdom','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'46-49','57','oflrouble','-2 to all ability scores','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'46-49','58','of Pox','user cannot regain hit points while in possession of this item','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'46-49','59','of Corruption','user cannot restore cast spells while in possession of this item','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'46-49','60','of Infection','spells that affect only the user\'s mind last until dispelled','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'46-49','61','of Ruin','1 spell per day must be memorized as if it were 1 level higher','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'46-49','62','of the Exposed','2 spells per day must be memorized as if they were 1 level higher','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'46-49','63-64','of Discord','+ 1 initiative penalty when casting spells','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'46-49','65-67','of the Night','any light source carried by user has a -10\' radius','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'46-49','68-69','of the Dark','any light source carried by user has a -20\' radius','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'46-49','70','of die Void','any light source carried by user has a -30\' radius','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'46-49','71-80','of Passivity','*2 initiative penalty when attacking with this item','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'46-49','81-90','of the Snail','user may only attack once per two rounds when using this item','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'46-49','91-00','of the Fool','one random memorized spell per day vanishes after memorization','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'50-53','1-15','of Regeneration','when regaining hit points, user regains 1 25% of the amount (up to maximum)','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'50-53','16-100','of Regrowth','when regaining hit points, user regains +50% of the amount','17,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'54-56','1-10','of Warding','1 spell per day may be memorized as if it were I level lower','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'54-56','14-22','of the Sentinel','2 spells per day may be memorized as if they each were 1 level lower','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'54-56','23-28','of Guarding','3 spells per day may be memorized as if they each were I level lower','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'54-56','29-34','of Negation','4 spells per day may be memorized as tf they each were 1 level lower','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'54-56','35-100','of Osmosis','5 spells per day may be memorized as if they each were 1 level lower','3000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'57-63','1-10','of Greed','dungeon level is +2 on random go1d rabies','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'57-63','11-18','of Chance','dungeon level is +2 on random magic item tables','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'57-63','19-26','of Wealth','dungeon level is +4 on random go1d tables','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'57-63','27-100','of Fortune','dungeon level is +4 on random magic item tables','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'64-67','1-13','of Light','any light source carried by user has a +10\' radius','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'64-67','14-18','of Radiance','any light source carried by user has a -20\' radius','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'64-67','19-100','of the Sun','any light source carried by user has a -30\' radius','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'68-70','1-8','of the Thief','+33% find/remove traps. -50% damage from traps','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'68-70','9-14','of Warmth','gives immunity to non-damagmg effects of co1d','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'68-70','15-18','of Remedy','additional save vs. poison, -1d6 damage from poison','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'68-70','19-21','of Amelioration','additional save vs. poison at +2, -2d6 damage from poison','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'68-70','22-23','of Defiance','additional save vs. poison at +4, -3d6 damage from poison','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'68-70','24-100','of Purging','additional save vs. poison, slow poison for 1d6 rounds','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'71-73','1-4','of Craftsmanship','+ 1 damage','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'71-73','5-8','of Quality','+ 1 damage, +2 damage vs. larger than man-sized creatures','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'71-73','9-11','of Maiming','+2 damage','5,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'71-73','12-14','of Slaying','-2 damage. + 3 damage vs. larger than man-sized creatures','6250');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'71-73','15-17','of Core','+ 3 damage','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'71-73','18','of Devastation','if maximum base damage is rolled then triple damage','8750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'71-73','19','of the Jester','when damage is rolled, multiply by 1d4; on a 4, no damage is dealt','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'71-73','20-22','of Carnage','+4 damage','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'71-73','23-100','of Slaughter','+5 damage','12,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'74-75','1-8','of Measure','minimum base damage with this item is 2','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'74-75','9-15','of Worth','minimum base damage with this item is 3','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'74-75','16-20','of Excellence','minimum base damage with this item is 4','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'74-75','21-100','of Performance','minimum base damage with this item is 5','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'76-77','1-8','of Readiness','-1 initiative when attacking with this item','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'76-77','9-15','of Alacrity','-2 initiative when attacking with this item','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'76-77','16-19','of Swiftness','-3 initiative when attacking with this item','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'76-77','20-22','of Quickness','-4 initiative when attacking with this item','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'76-77','23-27','of Speed','user always wins initiative when attacking with this item','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'76-77','28-100','of Haste','one extra attack per round','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'78-80','1-3','of Frost','+1d6 co1d damage','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'78-80','4-6','of Flame','+1d6 fire damage','2,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (125,'78-80','7-9','of Shock','+ 1d6 lightning damage','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (126,'78-80','10-12','of Blight','+ 1d6 poison damage','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (127,'78-80','13-14','of Ice','+2d6 co1d damage','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (128,'78-80','15-16','of Fire','+2d6 fire damage','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (129,'78-80','17-18','of Lightning','+2d6 lightning damage','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (130,'78-80','19-20','of Venom','+2d6 poison damage','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (131,'78-80','21','of the Glacier','+3d6 co1d damage','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (132,'78-80','22','of Burning','+t3d6 fire damage','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (133,'78-80','23','of Thunder','+3d6 lightning damage','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (134,'78-80','24','of Pestilence','+3d6 poison damage','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (135,'78-80','25','of Vileness','wounds caused by this item can only be healed magically negating regeneration','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (136,'78-80','26','of the Crusaders','+ 1 cumulative damage per successful consecutive attack against same foe','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (137,'78-80','27','of Destruction','foe\'s armor class is added to the weapon\'s damage','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (138,'78-80','28','of Peril','on a hit. foe takes double damage and wie1der takes normal damage','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (139,'78-80','29-30','of the Bear','knocks foe out of melee range (10\' away) on a successful hit','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (140,'78-80','31-100','of the Grizzly','knocks foe out of melee range (20\' away) on a successful hit','15,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (141,'81-82','1-5','of the Leech','hit heals the user 1d4 hit points','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (142,'81-82','6-9','of the Claw','hit against a spellcaster restores one of user\'s cast 1st-3rd level Priest spells','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (143,'81-82','10-13','of the Bat','hit against a spellcaster restores one of user\'s cast 1st-3rd level Wizard spells','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (144,'81-82','14-17','of Blood','hit heals the user 1d6 hit points','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (145,'81-82','18-20','of the Talon','hit against a spellcaster restores one of user\'s cast Priest spells','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (146,'81-82','21-23','of the Vampire','hit against a spellcaster restores one of user’s cast Wizard spells','12,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (147,'81-82','24-100','of the Lamprey','hit heals the user 2d4 hit points','15,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (148,'83-84','1-7','of Piercing','on a natural 20. foe\'s armor saves vs. crushing blow or is destroyed','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (149,'83-84','8-14','of Breaking','on a natural 20. foe’s weapon saves vs. crushing blow or is destroyed','12,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (150,'83-84','15-20','of Puncturing','on a natural 19 or 20, foe’s armor saves vs. crushing blow or is destroyed','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (151,'83-84','22-28','of Smashing','on a natural 19 or 20. foe\'s weapon saves vs. crushing blow or is destroyed','15000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (152,'83-84','29-100','of Bashing','on a natural 18, 19 or 20, foe\'s armor saves vs. crushing blow or is destroyed','17500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (153,'85','1-13','of Ease','grants proficiency in using the item','5,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (154,'85','14-100','of Simplicity','grants proficiency and specialization in using the item','10,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (155,'86-90','1-13','of Many','can fire one charge,\'arrow per round for free (others cost or must be provided)','7,500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (156,'86-90','14-100','of Plenty','can fire two charges/arrows per round for free (others cost or must be provided)','15,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (157,'91-100','1-10','of (spell name)','random 1st level spell','500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (158,'91-100','11-15','of (spell name)','random 2nd level spell','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (159,'91-100','16-20','of (spell name)','random 3rd level spell','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (160,'91-100','21-24','of (spell name)','random 4th level spell','2,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (161,'91-100','25-27','of (spell name)','random 5th level spell','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (162,'91-100','28-30','of (spell name)','random 6th level spell','3000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (163,'91-100','31-33','of (spell name)','random 7th level spell','3500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (164,'91-100','34-35','of (spell name)','random 8th level spell (or 7th level priest spell)','4,000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (165,'91-100','36-100','of (spell name)','random 9th level spell (or 7th level priest spell)','4,500');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-20','reduces damage suffered (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (2,'21-25','has an effect when attacked (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (3,'26-30','improves durability (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (4,'31-35','increases durability (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (5,'36-45','increases ability scores (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (6,'46-49','cursed (roll the base item’s suffix roll)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (7,'50-53','improves recovery (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (8,'54-56','affects spell memorization (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (9,'57-63','improves treasure finding (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (10,'64-67','improves light sources (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (11,'68-70','reduces effects of hazards (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (12,'71-73','increases damage (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (13,'74-75','improves minimum damage (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (14,'76-77','affects attack speed (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (15,'78-80','adds effects to damaged foe (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (16,'81-82','restores on a successful hit (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (17,'83-84','causes damage to armor or weapons (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (18,'85','affects weapon proficiencies (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (19,'86-90','affects available uses (d20+level)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (20,'91-100','allows the casting of a spell (d20+level), maximum 10d10 charges, all are rechargeable (except inscribed spells)');
