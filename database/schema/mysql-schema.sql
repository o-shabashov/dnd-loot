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
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-10','1-4','мыс','АС 1','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-10','5-6','Тряпки','АС 1','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-10','7-9','Плащ','AC 2, поглощает 1 hp урона за атаку.','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-10','10-12','Халат','АС 2','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-10','13-14','Стеганая броня','АС 3','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'1-10','15-17','Кожаная броня','АС 4','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'1-10','18','Твердая кожаная броня','АС 4','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'1-10','19-21','Шипованный кожаный доспех','АС 5','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'1-10','22-23','Кольцевая почта','АС 5','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'1-10','24-25','Масштабная кольчуга','АС 6','120');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'1-10','26-27','Кольчуга','АС 7','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'1-10','28','Нагрудник','АС 7','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'1-10','29','Легкая пластина','АС 7','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'1-10','30','Шинная кольчуга','АС 8','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'1-10','31-32','Латная кольчуга','АС 8','600');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'1-10','33','Полевая пластина','АС 10','2000 г.');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'1-10','34','Древняя броня','АС 10','3750');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'1-10','35','Готическая тарелка','АС 10','4000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'1-10','36-100','Полная латная кольчуга','АС 10','5000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'11-15','1-10','Кепка','AC 2 против назначенных выстрелов в голову, по одному на персонажа','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'11-15','11-14','Черепная шапка','AC 3 против назначенных выстрелов в голову, по одному на персонажа.','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'11-15','15-18','Шлем','AC 4 против назначенных выстрелов в голову, по одному на персонажа.','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'11-15','19','Маска','КД 5 против назначенных выстрелов в голову, по одному на персонажа.','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'11-15','20-23','Полный шлем','AC 6 против назначенных выстрелов в голову, по одному на персонажа.','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'11-15','24-27','Большой шлем','AC 7 против назначенных выстрелов в голову, по одному на персонажа.','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'11-15','28','Костяной шлем','КД 8 против назначенных выстрелов в голову, по одному на персонажа.','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'11-15','29-100','Корона','AC 9 против назначенных выстрелов в голову, по одному на персонажа.','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'16-20','1-5','Гвоздика','AC 3 против объявленных ударов в ноги, по одной паре на персонажа.','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'16-20','6-7','кушак','AC 3 против объявленных ударов в пояс, по одному на персонажа.','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'16-20','8-10','Кожаные ботинки','AC 3 против объявленных ударов в руки, по одной паре на персонажа.','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'16-20','11-15','Наручи','AC 5 против объявленных ударов в ноги, по одной паре на персонажа.','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'16-20','16-17','Пояс','AC 5 против объявленных выстрелов в пояс, по одному на персонажа.','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'16-20','18-20','Кольчужные сапоги','AC 5 против объявленных ударов в руки, по одной паре на персонажа.','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'16-20','21-25','Рукавицы','AC 8 против объявленных ударов в ноги, по одной паре на персонажа.','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'16-20','26-27','Пояс','AC 8 против объявленных выстрелов в пояс, по одному на персонажа.','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'16-20','28-100','Латные сапоги','AC 8 против объявленных ударов в руки, по одной паре на персонажа.','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'21-25','1-10','Баклер','КД +1 против одной атаки за раунд','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'21-25','11-16','Маленький Щит','КД +1 против двух атак за раунд','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'21-25','17-21','Большой Щит','КД +1 против всех атак','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'21-25','22-25','Воздушный щит','КД +1 против всех атак','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'21-25','26','Шипастый щит','КД r 1 против всех атак, атака левой рукой на 1d4/1d4.','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'21-25','27','Костяной щит','AC +2 против всех атак ближнего боя (без бонуса против стрел)','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'21-25','28-30','Башенный щит','КД +1 против всех атак, +2 против ракет.','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'21-25','31-100','Готический щит','КД -2 против всех атак, минимальная Сила 18.','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'26-30','1-10','Кинжал','урон 1d4/1d3, бросок 10/20/30 (ROF 2/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'26-30','11-14','метательный нож','урон 1d3/1d3, бросок 10/20/30 (ROF 3/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'26-30','15-100','Блейд Крис','урон 1d4-l/1d4, брошен 10/20/30 (ROF 1/1)','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'31-40','1-5','Кинжал','урон 1d4/1d3. брошено 20.10.30 (РОФ 2/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'31-40','6-10','Короткий меч','урон 1d6/1d8','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'31-40','11-13','Сабля','урон 1d6+1/1d8','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'31-40','14-15','Лезвие','урон 1d6+l/1d8+l','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'31-40','16-17','Ятаган','урон 1d8/1d8','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'31-40','18','Фальшион','урон 2d4/1d6','35');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'31-40','19-23','Длинный меч','урон 1d8/1d12','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'31-40','24-27','Широкий меч','урон 2d4/1d611','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'31-40','28','Клеймор','урон 1d8 - I/1d12+I','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'31-40','29-31','Бастард меч','урон 1d8/1d12 для одной руки, 2d4/2d8 для двуручного оружия','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'31-40','32-35','Двуручный меч','урон 1d10/3d6 двуручным оружием','300');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'31-40','36-100','Большой Меч','урон 1d12/2d8 двуручным оружием, минимальная Сила 18.','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'41-44','1-8','Клуб','урон 1d6/1d3. брошено 20.10.30 (РОФ 1/1)','1');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'41-44','9-10','Шипастая дубинка','урон 1d6/1d6. брошено 20.10.30 (ROF 1/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'41-44','11-17','Мейс','урон 1d6+1/1d6','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'41-44','18-21','Утренняя звезда','урон 2d4/ljd6+l','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'41-44','22-24','Цеп','урон 1d6^/2d4 двуручным оружием','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'41-44','25-30','Боевой молот','урон 1d8/1d8 двуручным оружием','60');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'41-44','31-32','Мол','урон 1d!0/1d8+l двуручным оружием, минимальная Сила 18','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'41-44','33-100','Малус','урон 1d1O/1d1O двуручным оружием, минимальная Сила 18.','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'45-48','1-8','Копье','урон 1d6/1d6. брошено 20/40 60 (РОФ 1/1)','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'45-48','9-15','Копье','урон 1d6/1d8, бросок 10/20/30 (ROF 1/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'45-48','16-17','Пилум','урон 1d6+1/1d8, бросок 10/20/30 (ROF 1/1)','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'45-48','18-21','Глефа','урон 1d8/1d8, бросок 10/20/30 (ROF 1/1)','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'45-48','22-24','Трезубец','урон 1d6-l/3d4','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'45-48','25-30','Щука','урон 1d6/1d12, двойной урон при установке на заряд','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'45-48','31-100','Брэнди сток','урон 1d!0/2d6, минимальная Сила 18. невозможно обезоружить.','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'49-50','1-8','Бардиш','урон 2d4/2d6 двуручным оружием','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'49-50','9-15','Коса','урон 1d10/1d12 двуручным оружием, минимальная Сила 18','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'49-50','16-19','Секира','урон 1d!0/1d12 двуручным оружием, минимальная Сила 18.','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'49-50','20-100','Алебарда','урон 1d10/2d6 двуручным оружием, минимальная Сила 18.','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'51-55','1-9','Маленький Топор','урон 1d6/1d4','5');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'51-55','10-12','Метательный топор','урон 1d4/1d4, бросок 10/20/30 (ROF 1/1)','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'51-55','13-17','Топор','урон 1d6/1d6','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'51-55','18-21','Большой Топор','урон 1d6+1/1d6','15');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'51-55','22-24','Широкий топор','урон 1дб-рл/1дбрл','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'51-55','25-30','Боевой топор','урон 1d8/1d8 двуручным оружием','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'51-55','31-32','Большой Топор','урон 1diO/1d1O двуручным оружием, минимальная Сила 18.','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'51-55','33-100','Гигантский топор','урон 1d12/2d8 двуручным оружием, минимальная Сила 18(00)','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'56-63','1-5','Стрелы (Идентификатор 12)','урон согласно луку','3');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'56-63','6-9','Короткий лук','выстрелено 50/100/150 (2/1 РОФ). 1d6/1d6','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'56-63','10-11','Охотничий лук','выстрелено 50/100/160 (2/1 РОФ). 1d8/1d8','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'56-63','12-17','Длинный лук','выстрел 50/100/170 (2/1 скорострельность), 1d8/1d8','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'56-63','18-21','Композитный лук','выстрел 40/80/170 (2/1 скорострельность), 1d8/1d8','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'56-63','22-24','Короткий боевой лук','выстрелено 50/100/150 (2/1 РОФ). 1дС/1дС+л','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'56-63','25-29','Короткий боевой лук','выстрелено 50/100/150 (2/1 РОФ). 1d8+1/1d8+l','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'56-63','30-31','Длинный боевой лук','выпущено 50/100/170 (2/1 РОФ). 1d8/1d8-л','300');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'56-63','32-100','Длинный боевой лук','выстрел 50/100/170 (2/1 скорострельность), 1d8+l/!d8+l','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'64-65','1-5','Болты (ld20)','урон по арбалету','3');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'64-65','6-12','Легкий арбалет','выстрелено 60/120/180 (1/1 РОФ). 1d4/1d4','40');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'64-65','13-18','Арбалет','выстрел 70/140/210 (1/1 скорострельность), 1d4/1d6','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'64-65','19','Многозарядный арбалет','выстрел 40/60/80 (до 5/1 скорострельности), 1d3/1d3. требуется перезарядка первого раунда после 5 выстрелов','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'64-65','20-100','Тяжелый арбалет','выстрелил 80/160/240 (Х РОФ). 1d4+l/1d6+l','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'65-70','1-10','Палочка','урон 1d2/1d2 одной рукой','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'65-70','11','Факел','урон 1d3/1d2 урон от огня при горении, можно использовать повторно, радиус света 30 футов','20');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'65-70','12','Костяная палочка','урон 1d3/1d2 одной рукой, использовать только некромантам','70');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'65-70','13','Тисовая палочка','урон 1d2/1d3 одной рукой, использовать только колдуны и друиды','80');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'65-70','14-100','Скипетр','урон 1d3/1d3 одной рукой','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'71-75','1-9','Короткий персонал\'','урон 1d4/1d4 одной рукой','10');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'71-75','10-18','Длинный посох','урон 1d6/1d6 двуручным оружием','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'71-75','19-21','Корявый посох','урон 1d6/1d6+l двуручным оружием','30');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'71-75','22-24','Составной персонал','урон 1d6+l/1d6+l двуручным оружием','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'71-75','25-30','Боевой посох','урон 1d6+l/1d8 двуручным оружием','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'71-75','31-100','Военный штаб','урон 1d8/1d8 двуручным оружием','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'76-79','1-6','Очарование','оказывает свое действие, если переносится на человека','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'76-79','7-17','Кольцо','носить на руке, по одному на руку','75');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'76-79','18','Флаг','накинут на тело, по одному на персонажа','слишком');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'76-79','19','Сфера','по одному на персонажа, носится на руке, не может использовать щит при использовании сферы','150');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'76-79','20-100','Амулет','носится на шее, по одному на персонажа','200');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'80','1-7','Сколотый драгоценный камень','бросок 1d6: 1 аметист. 2 бриллианта. 3 изумруда, 4 рубина, 5 сапфира, 6 топаза','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'80','8-13','Испорченный драгоценный камень','бросок 1d6: 1 аметист, 2 алмаза, 3 изумруда1d. 4 рубина, 5 сапфира. 6 топаз','100');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'80','14-19','Драгоценность','бросок 1d6: 1 аметист, 2 алмаза, 3 изумруда, 4 рубина, 5 сапфиров. 6 топаз','250');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'80','20-25','Безупречная драгоценность','бросок 1d6: 1 аметист. 2 бриллианта, 3 изумруда1d. 4 рубина. 5 сапфир. 6 топаз','500');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'80','26-100','Идеальная драгоценность','бросок 1d6: 1 аметист, 2 алмаза. 3 эмера1д. 4 рубина, 5 сапфира. 6 топаз','1000');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'81-90','1-17','Прокрутка','можно прочитать один раз, чтобы произнести заклинание, на минимальном уровне, необходимом для произнесения заклинания','25');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'81-90','18','Руна','можно установить один раз как ловушку, действует как символ защиты','50');
INSERT INTO `items` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'81-90','19-100','Книга','можно прочитать один раз, чтобы использовать заклинание, позволяет','100');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-10','броня');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (2,'11-15','головной убор');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (3,'16-20','снаряжение');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (4,'21-25','щиты');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (5,'26-30','ножи');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (6,'31-40','мечи');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (7,'41-44','дубинки');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (8,'45-48','копья');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (9,'49-50','древковое оружие');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (10,'51-55','топоры');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (11,'56-63','Луки');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (12,'64-65','арбалеты');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (13,'65-70','палочки');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (14,'71-75','посохи');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (15,'76-79','аксессуары');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (16,'80','драгоценные камни');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (17,'81-90','начертанные заклинания');
INSERT INTO `items_groups` (`id`, `dice_raw`, `name`) VALUES (18,'91-100','скоропортящиеся продукты');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-2','Зелье легкого исцеления','лечит 1d4+1 урона','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'3-6','Зелье исцеления','лечит 2d4+2 урона','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'7-8','Зелье полного исцеления','лечит все повреждения','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'9-11','Зелье маны','восстанавливает 1 ранее использованное заклинание 1-3 уровня','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'12-13','Зелье полной маны','восстанавливает 1 ранее использованное заклинание','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'14-16','Зелье омоложения','лечит 2d4+2 урона и восстанавливает 1 ранее наложенное заклинание 1-3 уровня','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'17-18','Зелье полного омоложения','лечит весь урон и восстанавливает 1 ранее использованное заклинание','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'19','Детокс-зелье','накладывает на пользователя медленный яд на 2d4 хода','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'20','Противоядие','Накладывает на пользователя нейтрализующий яд','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'21','Зелье Ци','дает новый спасбросок против любого заклинания или эффекта, влияющего на разум','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'22','Зелье полной Ци','рассеивает любые воздействующие на разум заклинания или аффекты','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'23','Зелье восстановления','лечит весь урон, рассеивает любые заклинания или эффекты, влияющие на разум','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'24','Пылающее масло','пылающее масло в радиусе 5 футов наносит 2d4-2 урона от огня в течение 1d4 раундов','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'25','Взрывное зелье','взрыв в радиусе 10 футов, наносящий 3d4 13 урона от огня (спасение против дыхания дракона для половины)','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'26','Громовое зелье','взрыв в радиусе 20 футов, наносящий 6d4+6 урона от огня (спасение против дыхания дракона на половину)','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'27','Зелье протухшего газа','ядовитый газ в 10-футовом облаке наносит 1d6-1 урона ядом (спасбросок против яда на половину)','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'28','Зелье удушающего газа','ядовитый газ в облаке высотой 10 футов, наносящий урон ядом 2d6+2 (спасбросок против яда на половину)','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'29','Зелье удушающего газа','ядовитый газ в облаке высотой 10 футов, наносящий 3d6+3 урона ядом (спасбросок против яда для половины)','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'30','Кислотное зелье','предмет должен спастись от кислоты при -2, иначе он будет уничтожен.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'31','Энергетическая трава','+1 Сила на 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'32','Укрепляющие травы','+2 Силы на 1 ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'33','Укрепляющая трава','+3 Силы на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'34','Искусная трава','+1 ловкость на 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'35','Умелая трава','+2 ловкости на 1 ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'36','Ловкая трава','+3 ловкости на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'37','Крепкая трава','-1 Телосложение на 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'38','Харди Херб','+2 Телосложения на 1 ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'39','Крепкая трава','+3 Телосложения на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'40','Шалфейная трава','+ 1 Интеллект за 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'41','Проницательная трава','+2 интеллекта на 1 ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'42','Яркая трава','+3 интеллекта на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'43','Индиго Трава','+3 спасброска против co1d и -25% урона от co1d на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'44','Лазурная трава','+4 спасброска против co1d и -50% урона от co1d на 1 ход','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'45','Красноватая трава','-3 спасброска против огня и -25% урона от огня на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'46','Киноварная трава','+4 спасброска против огня и -50% урона от огня на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'47','Хрустящая трава','+3 спасброска против молнии и -25% урона от молнии на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'48','Раздвоенная трава','+4 спасброска против молнии и -50% урона от молнии на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'49','Черная трава','+3 спасброска против заклинания и -25% урона от заклинания на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'50','Агрессивная трава','+4 спасброска против заклинания и -50% урона от заклинания на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'51','Жизненная трава','+3 спасброска против яда и -25% урона от яда на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'52','Стойкая трава','+4 спасброска против яда и -50% урона от яда на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'53','Срочная трава','-3 к броскам инициативы на 1 ход при атаке оружием ближнего боя','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'54','Флотская трава','-6 к броскам инициативы на 1 ход при атаке оружием ближнего боя','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'55','оживленная трава','-3 к броскам инициативы на 1 ход при атаке метательным оружием','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'56','Свифт Херб','-6 к броскам инициативы на 1 ход при атаке метательным оружием.','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'57','Ослепительная трава','пользователь получает по 1 дополнительному заклинанию каждого уровня, все они должны быть применены в течение 1 хода','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'58','Увлекательная трава','пользователь получает по 2 дополнительных заклинания каждого уровня, все они должны быть применены в течение 1 хода','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'59','Яркая трава','+50% очков жизни на 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'60','Солнечная трава','+100% очков жизни за первый ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'61','Всезнающая трава','обнаружить невидимость на 1 ход','500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'62','Мистическая трава','все заклинания пользователя, произнесенные в течение 1 хода, имеют продолжительность 1-50%.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'63','Чародейская трава','все заклинания пользователя, произнесенные в течение первого хода, имеют двойную продолжительность','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'64-65','Эликсир силы','+1 Сила за I день','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'66-67','Эликсир ловкости','+1 ловкость за I день','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'68-69','Эликсир жизненной силы','+1 конституция за I день','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'70','Эликсир интеллекта','+1 Интеллект на 1 день','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'71','Эликсир Ци','+1 Мудрость на 1 день','5000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'72','Спектральный эликсир','+1 ко всем способностям на 1 день','15000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'73','Эликсир Огня','+2 спасброска против огня на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'74','Эликсир льда','+2 сохранения против co1d на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'75','Эликсир молнии','+2 спасброска против молнии на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'76','Эликсир магии','+2 спасброска против заклинания на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'77','Эликсир псионики','+2 спасброска против воздействующих на разум заклинаний и эффектов на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'78','Эликсир яда','4-2 спасброска против яда за 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'79','Эликсир энергии','+2 ко всем сохранениям на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'80','Эликсир меткости','+2 к попаданию на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'81','Эликсир урона','минимальный базовый урон от атак пользователя — 2 за 1 день.','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'82','Эликсир защиты','+ 1 кондиционер на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'83','Эликсир жизни','+5 очков жизни на 1 день','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'84','Эликсир силы','+ 1 заклинание 1-го уровня (если пользователь может использовать такие заклинания) на 1 день.','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'85','Масло или смола точности','помазанное оружие - 12 попаданий за 1 ход','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'86','Масло или смола точности','(50% шанс быть смолой) помазанное оружие +3 к меткости на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'87','Масло или смола мастерства','(50% шанс быть смолой) помазанное оружие +4 к меткости на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'88','Масло или смола остроты','(50% шанс быть смолой) помазанное оружие дает -2 урона за 1 ход.','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'89','Масло или смола боли','(50% шанс быть смолой) помазанное оружие - 3 урона за 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'90','Масло или смола дикости','(50% шанс быть смолой) помазанное оружие дает +4 урона на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'91','Масло или смола смерти','(50% шанс быть смолой) помазанное оружие наносит *5 урона за 1 ход.','2500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'92','Масло закалки','(50% шанс быть смолой) помазанное оружие дает AC +2 на 1 ход.','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'93','Масло непроницаемости','помазанное оружие дает AC +3 на 1 ход.','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'94','Масло иммунитета','помазанное оружие дает КД +4 на 1 ход.','2000 г.');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'95','Масло мастерства','дарует владение помазанным предметом любому','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'96','Масло стойкости','удерживание предмета в течение 1 хода восстанавливает любой урон предмету','1000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'97','Кузнечное масло','дает +4 к спасброскам предметов на 1 ход','1500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'98','Масло постоянства','навсегда делает предмет неразрушимым','3000');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'99','Масло волшебства','навсегда меняет тип оружия','3500');
INSERT INTO `perishables` (`id`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'100','Эликсир защиты','+ 1 кондиционер на 1 день','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-20','1-5','Крепкий','+1 AC (весит как обычная броня)','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-20','6-10','Отлично','+ 1 переменного тока','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-20','11-12','Сильный','+1 КБ, +2 против ракет','3750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-20','13-16','Гранд','+2 переменного тока','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-20','17-18','доблестный','+ 2 переменного тока. +3 против ракет','6250');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'1-20','19-21','славный','+3 переменного тока','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'1-20','21-22','Благословенный','+3 переменного тока. +4 против ракет','8750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'1-20','23-24','Потрясающий','+4 переменного тока','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'1-20','25-26','святой','+4 AC, +5 против ракет','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'1-20','27-28','Святой','+5 переменного тока','15 000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'1-20','29-100','благочестивый','+5 AC, +6 против ракет','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'21-35','1','Тони','+1 спасбросок против кислоты','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'21-35','2','Лазурный','+1 сохранение против co1d','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'21-35','3','малиновый','+ 1 спасбросок против огня','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'21-35','4','Охра','+ 1 спасбросок против молнии','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'21-35','5','Жемчуг','1 спасбросок против воздействующих на разум заклинаний и эффектов','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'21-35','6','Берилл','+ 1 спасбросок против яда','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'21-35','7','Уголь','+1 спасбросок против заклинания','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'21-35','8','Жасмин','+2 спасброска против кислоты','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'21-35','9','Ляпис','+2 сохранения против co1d','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'21-35','10','Бургундия','+2 спасброска против огня','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'21-35','11','мандарин','+2 спасброска против молнии','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'21-35','12','слоновая кость','+ 2 спасброска против заклинаний и эффектов, воздействующих на разум','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'21-35','13','Джейд','+2 спасброска против яда','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'21-35','14','Джет','+ 2 спасброска против заклинания','4000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'21-35','15','Пирит','+3 спасброска против кислоты и -25% урона от кислоты','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'21-35','16','Кобальт','+3 спасброска против co1d и -25% урона от co1d','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'21-35','17','Гранат','+3 спасброска против огня и -25% урона от огня','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'21-35','18','Коралл','-3 спасброска против молнии и -25% урона от молнии.','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'21-35','19','Кристалл','+3 спасброска против заклинаний и эффектов, влияющих на разум','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'21-35','20','Виридиан','+3 спасброска против яда и -25% урона от яда','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'21-35','21','эбони','+3 спасброска против заклинаний и -25% урона от заклинаний','6000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'21-35','22','кризолит','+4 спасброска против кислоты и 50% урона от кислоты','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'21-35','23','Сапфир','+4 спасброска против co1d и -50% урона от co1d','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'21-35','24','Рубин','+4 спасброска против огня и -50% урона от огня','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'21-35','25','Янтарь','+4 спасброска против молнии и -50% урона от молнии.','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'21-35','26','Алмаз','+4 спасброска против заклинаний и эффектов, влияющих на разум','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'21-35','27','Изумруд','+4 спасброска против яда и -50% урона от яда','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'21-35','28','Обсидиан','+4 спасброска против заклинаний и -50% урона от заклинаний','8000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'21-35','29','Топаз','+2 ко всем сохранениям','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'21-35','30-100','Призматический','+3 ко всем сохранениям','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'35-40','1-6','Подчинение','противник спасает или получает штраф +5 к инициативе на 1d4 раунда.','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'35-40','7-10','утомительный','противник сохраняет или теряет инициативу на 1d4 раунда','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'35-40','11','Поэтапность','спасброски противника или следующая атака наносят 50% урона, поскольку он или она на мгновение затухает.','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'35-40','12-16','истощение','противник сохраняет или теряет инициативу на 2d4 раунда','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'35-40','17-19','Вой','противник спасает или испытывает страх в течение 1d4 раундов (если 4 HD/уровня или меньше)','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'35-40','20','Хаотичный','противник сохраняет или меняет случайное мировоззрение на 1d4 -1 раунда.','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'35-40','21-23','Подчинение','противник сохраняет или теряет инициативу каждый раунд в течение 4d4 раундов.','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'35-40','24-26','утомительный','противник спасается или замедляется на 1d4 раунда','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'35-40','27-29','утомительный','противник спасается или замедляется на 2d4 раунда','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'35-40','30-100','Подавляющий','противник спасается или замедляется на 3d4 раунда','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'41-45','1-3','Флетчера','+ 1 уровень/очко с мирными навыками и заклинаниями (только для амазонок)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'41-45','4-6','Убийцы','+ 1 уровень/очко для мирных профессий и заклинаний (только для варваров)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'41-45','7-9','Призыватель','+ 1 уровень/очко для мирных профессий и заклинаний (только для некромантов)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'41-45','10-12','Монах','+1 уровень/балл для навыков и заклинаний, не связанных с оружием (только для паладинов)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'41-45','13-15','Ангельский','+1 уровень/балл с мирными навыками и заклинаниями (только для волшебников)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'41-45','16-17','Арчера','+2 уровня/балла с мирными навыками и заклинаниями (только для амазонок)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'41-45','18-19','Берсеркер','+2 уровня/балла с профессиями и заклинаниями, не относящимися к оружию (только для варваров)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'41-45','20-21','Некроманта','+2 уровень/балл с мирными профессиями и заклинаниями (только некроманты) 1,000','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'41-45','22-23','Священника','+2 уровня/балла с мирными профессиональными умениями и заклинаниями (только для паладинов)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'41-45','24-100','Архангела','+2 уровня/балла с мирными навыками и заклинаниями (только для волшебников)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'46-49','1-15','Ржавый','-1 переменного тока','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'46-49','16-25','Уязвимый','-2 переменного тока','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'46-49','26-35','Стекло','-2 ко всем сохранениям','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'46-49','36-45','Гиена','пользователь не может произносить заклинания','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'46-49','46-55','Лягушка','-1 заклинание 1-го уровня в день (если пользователь может произносить такие заклинания)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'46-49','56-70','Подача','любой источник света, который несет пользователь, имеет радиус -10 футов.','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'46-49','71-75','Латунь','-1 за попадание','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'46-49','76-77','Банка','-2 за попадание','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'46-49','78','Кристаллме','при нанесении урона добавьте 1d6; если выпадает 6, предмет не наносит урона и уничтожается','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'46-49','79-81','Слабый','базовый урон уменьшен вдвое (округляется в меньшую сторону)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'46-49','82-83','Бент','базовый урон уменьшен до 1','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'46-49','84-85','Бесполезный','атака этим предметом не причиняет урона','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'46-49','86-88','Тупой','1 к попаданию и базовый урон уменьшается вдвое (округляется вниз)','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'46-49','89-100','Неуклюжий','-2 к попаданию, а базовый урон уменьшен до 1.','0');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'51-55','1-6','Светящийся','светится в радиусе 30 футов','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'51-55','7-12','оракул','постоянное обнаружение невидимости до 60 футов','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'51-55','13-17','Невидимый','пользователь невидим для всех существ на расстоянии более 30 футов','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'51-55','18-21','Скрытый','пользователь невидим для всех существ на расстоянии более 20 футов','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'51-55','22-24','завуалированный','пользователь невидим для всех существ на расстоянии более 10 футов','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'51-55','25-100','Преследование','пользователь невидим в любой раунд, в котором он или она не двигается,','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'56-60','1-5','Ящерицы','+1 заклинание 1-го уровня в день (если пользователь может произносить такие заклинания)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'56-60','6-9','Паук','+1 заклинание 1-2 уровня в день (если пользователь может использовать такие заклинания)','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'56-60','10-13','Ворона','+1 заклинание 1-3 уровня в день (если пользователь может использовать такие заклинания)','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'56-60','14-17','Змеиный','+1 заклинание 1-4 уровня в день (если пользователь может использовать такие заклинания)','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'56-60','18-21','Змеиный','+1 заклинание 1-5 уровня в день (если пользователь может использовать такие заклинания)','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'56-60','22-24','Дрейка','+1 заклинание 1-6 уровня в день (если пользователь может использовать такие заклинания)','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'56-60','25-26','Дракона','+1 заклинание 1-7 уровня в день (если пользователь может использовать такие заклинания)','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'56-60','27','Вирма','+1 заклинание 1-8 уровня в день (если пользователь может использовать такие заклинания)','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'56-60','28','Гидры','+1 заклинание 1-9 уровня в день (если пользователь может использовать такие заклинания)','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'56-60','29-30','Коварный','когда пользователь произносит заклинание, вероятность того, что оно восстановится в памяти, составляет 1 из 10.','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'56-60','31','Укрепленный','что он восстанавливается в памяти, когда пользователь произносит заклинание, вероятность того, что он восстанавливается в памяти, составляет 1 из 4.','25 000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'56-60','32-100','Вульпин','что он восстанавливается в памяти, пользователь может уменьшить любой урон на 25%, если он или она потеряет один запомненный уровень заклинания)','27500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'61-62','1-6','Расширение','удваивает продолжительность действия трав','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'61-62','7-12','Хроно','удваивает срок действия масел и смол','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'61-62','15-19','Увеличение','удваивает эффект трав','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'61-62','20-100','Катализирующий','удваивает эффект масел и смол','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'63-70','1-2','Синий','+1 сохранение против co1d','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'63-70','3-4','Красный','+1 спасбросок против огня','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'63-70','5-6','Апельсин','+ 1 спасбросок против молнии','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'63-70','7-8','Белый','1 спасбросок против воздействующих на разум заклинаний и эффектов','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'63-70','9-10','Зеленый','+1 спасбросок против яда','2000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'63-70','11-12','Черный','+1 спасбросок против заклинания','2000 г.');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'63-70','13-14','Жесткий','+ 1 конституция','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'63-70','15-16','Быстрый','+ 1 ловкость','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'63-70','17-18','блестящий','+ 1 Интеллект','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'63-70','19-20','Могущественный','+ 1 Сила','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'63-70','21-22','Яркий','+ 1 Мудрость','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'63-70','23-24','Напористый','+ 1 заклинание 1-го уровня в день (если пользователь может произносить такие заклинания)','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'63-70','25-26','Устойчивый','-1 переменного тока','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'63-70','27-28','Серебро','+1 к попаданию','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'63-70','29-30','Мускулистый','минимальный урон за кубик в атаках ближнего боя составляет 2 очка.','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'63-70','31-100','Здоровый','+5 очков жизни','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'71-77','1-6','Бронза','+1 к попаданию','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'71-77','7-8','Железо','+1 к попаданию. +2 против нежити и демонических существ','3750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'71-77','9-13','Серебро','+2 к попаданию','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'71-77','14-15','Сталь','2 на попадание, +3 против нежити и демонических существ','6250');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'71-77','16-19','Золото','+ 3 к попаданию','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'71-77','20-21','Платина','+3 к попаданию, +4 против нежити и демонических существ','8750');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'71-77','22-25','Мифрил','+4 к попаданию','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'71-77','26-30','метеорный','+5 к попаданию','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'71-77','31-100','Странный','+5 к попаданию. очень успешный удар при натуральном 20','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'78-82','1-5','Зубчатый','двойной базовый урон при естественном 20','2500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'78-82','6-9','Смертельный','двойной базовый урон при натуральных 19-20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (125,'78-82','10-13','Беспощадный','двойной базовый урон при натуральных 18-20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (126,'78-82','14-17','Тяжелый','двойной базовый урон при натуральных 17-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (127,'78-82','18-21','жестокий','двойной базовый урон при натуральных 16-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (128,'78-82','22-25','Массивный','двойной базовый урон при натуральных 15-20','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (129,'78-82','26-29','Дикий','двойной базовый урон при естественном 14-20','12500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (130,'78-82','30-33','Безжалостный','двойной базовый урон при естественном 13-20','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (131,'78-82','34-100','Безжалостный','двойной базовый урон при естественном значении 12-20.','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (132,'83-90','1-5','Острый','+1 к попаданию. двойной базовый урон при естественном значении 20','5000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (133,'83-90','6-9','Отлично','+1 к попаданию. двойной базовый урон при натуральных 19-20','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (134,'83-90','10-13','Воина','+2 к попаданию, двойной базовый урон при натуральных 18-20.','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (135,'83-90','14-17','Солдатский','+2 к биту. двойной базовый урон при натуральных 17-20','12 500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (136,'83-90','18-21','Рыцарский','+3 к попаданию. двойной базовый урон при естественном значении 16-20.','15000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (137,'83-90','22-25','Магистр','+3 к попаданию. двойной базовый урон при натуральных 15-20','17500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (138,'83-90','26-29','Доппельгангера','для каждой атаки бросьте d4 и прибавьте его к значениям попаданий и урона.','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (139,'83-90','30-33','Лорд','+4 к попаданию, двойной базовый урон при натуральных 14-20.','20000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (140,'83-90','34-37','Чемпиона','+4 к попаданию, двойной базовый урон при натуральных 13-20.','22500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (141,'83-90','38-100','Королевский','+5 к попаданию, двойной базовый урон при натуральных 12-20.','25000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (142,'91-100','1-15','обильный','имеет вдвое больший максимальный заряд','7500');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (143,'91-100','16','Шута','При активации произносит случайное заклинание из суффиксов 91-00.','10000');
INSERT INTO `prefixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (144,'91-100','17-100','обильный','имеет в три раза больше обычного максимального заряда','12500');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-20','улучшает класс брони (d20+уровень');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (2,'21-35','улучшает спасброски (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (3,'35-40','влияет на реакцию противника (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (4,'41-45','Улучшает навыки и заклинания (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (5,'46-49','проклятый (бросьте бросок префикса базового предмета)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (6,'51-55','влияет на видимость (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (7,'56-60','влияет на количество произносимых заклинаний (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (8,'61-62','влияет на магические предметы (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (9,'63-70','влияет на личную статистику пользователя (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (10,'71-77','улучшается по количеству попаданий (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (11,'78-82','имеет шанс нанести дополнительный урон (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (12,'83-90','улучшается результативность и имеет шанс нанести дополнительный урон (d20+уровень)');
INSERT INTO `prefixes_groups` (`id`, `dice_raw`, `name`) VALUES (13,'91-100','влияет на заряд предмета (d20+уровень)');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (1,'1-20','1-11','здравоохранения','-1 хит-пойнт урона, полученного при каждой атаке','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (2,'1-20','12-17','защиты','-2 очка урона, полученного при каждой атаке','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (3,'1-20','18-22','поглощения','-3 очка урона, полученного при каждой атаке','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (4,'1-20','23-26','жизни','-4 очка урона, полученного при каждой атаке','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (5,'1-20','27-100','отклонения','-5 очков урона, полученного при каждой атаке','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (6,'21-25','1-10','шипов','успешная рукопашная атака по владельцу наносит атакующему 1d4 урона','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (7,'21-25','11-18','шипов','успешная рукопашная атака по владельцу наносит атакующему 2d4 урона','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (8,'21-25','19-100','блокировки','дополнительная атака/раунд при использовании этого предмета для парирования или в качестве брони: 2d4 урона атакующему','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (9,'26-30','1-10','прочности','предмет получает +2 к спасброскам предметов','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (10,'26-30','11-14','структуры','предмет получает +4 к спасброскам предметов','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (11,'26-30','15-17','веков','предмет не может быть поврежден или уничтожен','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (12,'26-30','18-19','связи','каждый переносимый предмет получает +2 к спасброскам предметов.','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (13,'26-30','20-100','Единства','каждый переносимый предмет получает +4 к спасброскам предметов.','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (14,'31-35','1-8','Шакала','+4 хита','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (15,'31-35','9-13','Лисы','+6 очков жизни','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (16,'31-35','14-17','Ягуара','+8 очков жизни','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (17,'31-35','18-21','Волка','+ 10 очков жизни','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (18,'31-35','22-23','Орла','+ 12 очков жизни','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (19,'31-35','24-25','Тигра','+ 15 очков жизни','15 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (20,'31-35','26-27','Льва','+ 18 очков жизни','17500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (21,'31-35','28-29','Мамонта','+20 очков жизни','20000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (22,'31-35','30-31','кита','+25 очков жизни','22500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (23,'31-35','32-100','Колосса','+30 очков жизни','25000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (24,'36-45','1-2','жизненной силы','+ 1 конституция','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (25,'36-45','3-4','ловкости','1 ловкость','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (26,'36-45','5-6','магии','+ 1 Интеллект','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (27,'36-45','7-8','силы','+ 1 Сила','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (28,'36-45','9-10','Рыси','+1 Мудрость','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (29,'36-45','11-12','из Зеста','+2 Телосложение','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (30,'36-45','13-14','мастерства','+2 ловкости','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (31,'36-45','15-16','Разума','+2 Интеллект','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (32,'36-45','17-18','Могущества','+2 Сила','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (33,'36-45','19-20','Леопарда','+2 Мудрость','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (34,'36-45','21','из Вима','4 3 Конституция','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (35,'36-45','22','точности','+3 Ловкость','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (36,'36-45','23','блеска','+3 Интеллект','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (37,'36-45','24','власти','+3 Сила','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (38,'36-45','25','Ягуара','+3 Мудрость','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (39,'36-45','26','энергии','-4 Телосложение','2000 г.');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (40,'36-45','27','точности','-<-4 Ловкость','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (41,'36-45','28','колдовства','+4 Интеллект','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (42,'36-45','29','Цианта','-4 Сила','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (43,'36-45','30','Тигра','-4 Мудрость','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (44,'36-45','31','жизни','+ 5 Телосложения','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (45,'36-45','32','совершенства','+5 ловкости','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (46,'36-45','33','волшебства','5 Интеллекта','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (47,'36-45','34','Титана','+5 Сила','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (48,'36-45','35','Льва','+5 Мудрость','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (49,'36-45','36','неба','+1 ко всем показателям способностей','3000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (50,'36-45','37','Луны','+2 ко всем показателям способностей','4000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (51,'36-45','38','звезд','+3 ко всем показателям способностей','6000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (52,'36-45','39','Небес','+4 ко всем показателям способностей','8000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (53,'36-45','40-100','Зодиака','+5 ко всем показателям способностей','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (54,'46-49','1-15','слез','+ 1 хит-пойнт урона, полученного при каждой атаке','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (55,'46-49','16-25','боли','+2 очка урона, полученного при каждой атаке','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (56,'46-49','26-27','хрупкости','каждое попадание этого предмета требует спасброска от сокрушительного удара, иначе предмет будет уничтожен','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (57,'46-49','28-29','распада','+2 урона, каждый удар требует спасброска от сокрушительного удара, иначе он будет уничтожен','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (58,'46-49','30','хрупкости','при первом использовании этого предмета в бою он уничтожается','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (59,'46-49','31-40','Стервятника','1d6 очков жизни','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (60,'46-49','41-42','болезни','-1 Телосложение','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (61,'46-49','43-44','атрофии','-1 Ловкость','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (62,'46-49','45-46','дислексии','-1 Интеллект','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (63,'46-49','47-18','слабости','-1 Сила','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (64,'46-49','49-50','Кота','-1 Мудрость','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (65,'46-49','51','Ямы','-1 ко всем показателям способностей','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (66,'46-49','52','болезни','-2 Телосложение','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (67,'46-49','53','паралича','-2 Ловкость','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (68,'46-49','54','дренажа','-2 Интеллект','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (69,'46-49','55','слабости','-2 Сила','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (70,'46-49','56','Крысы','-2 Мудрость','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (71,'46-49','57','рубль','-2 ко всем показателям способностей','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (72,'46-49','58','оспы','пользователь не может восстановить очки жизни, пока владеет этим предметом','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (73,'46-49','59','коррупции','пользователь не может восстановить произнесенные заклинания, пока владеет этим предметом','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (74,'46-49','60','инфекции','заклинания, воздействующие только на разум пользователя, действуют до тех пор, пока не будут развеяны','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (75,'46-49','61','Руин','1 заклинание в день необходимо запоминать так, как если бы оно было на 1 уровень выше.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (76,'46-49','62','разоблаченных','2 заклинания в день необходимо запоминать так, как если бы они были на 1 уровень выше.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (77,'46-49','63-64','раздора','+ 1 штраф к инициативе при произнесении заклинаний','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (78,'46-49','65-67','в ночь','любой источник света, который несет пользователь, имеет радиус -10 футов.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (79,'46-49','68-69','Тьмы','любой источник света, который несет пользователь, имеет радиус -20 футов.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (80,'46-49','70','из пустоты','любой источник света, переносимый пользователем, имеет радиус -30 футов.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (81,'46-49','71-80','пассивности','*2 штрафа за инициативу при атаке этим предметом.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (82,'46-49','81-90','Улитки','при использовании этого предмета пользователь может атаковать только один раз за два раунда.','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (83,'46-49','91-00','дурака','одно случайное заученное заклинание в день исчезает после запоминания','1');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (84,'50-53','1-15','регенерации','при восстановлении очков жизни пользователь восстанавливает 1 25% от суммы (до максимума)','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (85,'50-53','16-100','возобновления роста','при восстановлении очков жизни пользователь восстанавливает +50% от суммы','17 500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (86,'54-56','1-10','вардинга','1 заклинание в день можно запомнить, как если бы оно было на I уровне ниже.','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (87,'54-56','14-22','Страж','заклинания в день можно запомнить, как если бы каждое из них было на 1 уровень ниже.','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (88,'54-56','23-28','охраны','Можно запомнить 3 заклинания в день, как если бы каждое из них было на I уровень ниже.','2000 г.');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (89,'54-56','29-34','отрицания','Можно запомнить 4 заклинания в день, если каждое из них было на 1 уровень ниже.','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (90,'54-56','35-100','осмоса','5 заклинаний в день можно запомнить, как если бы каждое из них было на 1 уровень ниже.','3000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (91,'57-63','1-10','жадности','уровень подземелья +2 к случайному бешенству go1d','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (92,'57-63','11-18','случайности','уровень подземелья +2 в таблицах случайных магических предметов.','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (93,'57-63','19-26','богатства','уровень подземелья +4 в случайных таблицах go1d','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (94,'57-63','27-100','удачи','уровень подземелья +4 в таблицах случайных магических предметов.','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (95,'64-67','1-13','света','любой источник света, который несет пользователь, имеет радиус +10 футов.','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (96,'64-67','14-18','сияния','любой источник света, который несет пользователь, имеет радиус -20 футов.','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (97,'64-67','19-100','солнца','любой источник света, переносимый пользователем, имеет радиус -30 футов.','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (98,'68-70','1-8','Вора','+33% к поиску/удалению ловушек. -50% урона от ловушек','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (99,'68-70','9-14','тепла','дает иммунитет к неповреждающим воздействиям холода','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (100,'68-70','15-18','средства правовой защиты','дополнительный спасбросок против яда, -1d6 урона от яда','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (101,'68-70','19-21','мелиорации','дополнительный спасбросок против яда +2, -2d6 урона от яда','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (102,'68-70','22-23','неповиновения','дополнительный спасбросок против яда +4, -3d6 урона от яда','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (103,'68-70','24-100','очистки','дополнительный спасбросок против яда, медленный яд на 1d6 раундов','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (104,'71-73','1-4','мастерства','+ 1 урон','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (105,'71-73','5-8','качества','+1 урон, +2 урона существам размером больше человека','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (106,'71-73','9-11','нанесения увечий','+2 урона','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (107,'71-73','12-14','убийства','-2 урона. +3 урона существам размером больше человека','6250');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (108,'71-73','15-17','ядра','+ 3 урона','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (109,'71-73','18','опустошения','если выпадает максимальный базовый урон, то урон увеличивается втрое','8750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (110,'71-73','19','Шута','при броске урона умножьте на 1d4; при выпадении 4 урон не наносится','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (111,'71-73','20-22','резни','+4 урона','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (112,'71-73','23-100','резни','+5 урона','12 500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (113,'74-75','1-8','меры','минимальный базовый урон этим предметом равен 2.','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (114,'74-75','9-15','ценности','минимальный базовый урон этим предметом равен 3.','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (115,'74-75','16-20','совершенства','минимальный базовый урон этим предметом — 4.','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (116,'74-75','21-100','производительности','минимальный базовый урон этим предметом равен 5.','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (117,'76-77','1-8','готовности','-1 инициатива при атаке этим предметом','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (118,'76-77','9-15','рвения','-2 инициативы при атаке этим предметом','3750');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (119,'76-77','16-19','быстроты','-3 инициативы при атаке этим предметом','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (120,'76-77','20-22','быстроты','-4 инициативы при атаке этим предметом','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (121,'76-77','23-27','скорости','пользователь всегда выигрывает инициативу при атаке этим предметом','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (122,'76-77','28-100','спешки','одна дополнительная атака за раунд','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (123,'78-80','1-3','Мороза','+1d6 холодного урона','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (124,'78-80','4-6','Пламени','+1d6 урона от огня','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (125,'78-80','7-9','шока','+ урон молнией 1d6','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (126,'78-80','10-12','Мора','+ урон ядом 1d6','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (127,'78-80','13-14','льда','+2d6 урон холодом','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (128,'78-80','15-16','огня','+2d6 урона от огня','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (129,'78-80','17-18','молнии','+2d6 урона молнией','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (130,'78-80','19-20','Венома','+2d6 урона ядом','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (131,'78-80','21','ледника','+3d6 урон холодом','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (132,'78-80','22','горения','+t3d6 урона от огня','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (133,'78-80','23','Грома','+3d6 урона молнией','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (134,'78-80','24','чумы','+3d6 урона ядом','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (135,'78-80','25','подлости','раны, нанесенные этим предметом, можно исцелить только магическим путем, сводя на нет регенерацию.','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (136,'78-80','26','крестоносцев','+ 1 совокупный урон за каждую успешную последовательную атаку по одному и тому же противнику','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (137,'78-80','27','разрушения','класс брони противника добавляется к урону оружия','10000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (138,'78-80','28','опасности','при ударе. противник получает двойной урон, а Wie1der получает нормальный урон.','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (139,'78-80','29-30','Медведя','выбивает противника за пределы ближнего боя (на расстоянии 10 футов) при успешном попадании','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (140,'78-80','31-100','из «Гризли»','выбивает противника за пределы ближнего боя (на расстоянии 20 футов) при успешном попадании','15 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (141,'81-82','1-5','пиявки','удар исцеляет пользователя 1d4 очков жизни','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (142,'81-82','6-9','Когтя','удар по заклинателю восстанавливает одно из произнесенных пользователем заклинаний Жреца 1-3 уровней.','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (143,'81-82','10-13','летучей мыши','удар по заклинателю восстанавливает одно из произнесенных пользователем заклинаний Волшебника 1-3 уровней.','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (144,'81-82','14-17','крови','удар исцеляет пользователя на 1d6 очков жизни','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (145,'81-82','18-20','Когтя','удар по заклинателю восстанавливает одно из произнесенных пользователем заклинаний Жреца','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (146,'81-82','21-23','вампира','удар по заклинателю восстанавливает одно из произнесенных пользователем заклинаний Волшебника','12 500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (147,'81-82','24-100','Миноги','удар исцеляет пользователя на 2d4 хита','15 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (148,'83-84','1-7','пирсинга','при естественном 20. броня противника спасается от сокрушительного удара или уничтожается','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (149,'83-84','8-14','взлома','при естественном 20. оружие противника спасается от сокрушающего удара или уничтожается','12 500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (150,'83-84','15-20','прокола','при естественном результате 19 или 20 броня противника спасается от сокрушительного удара или уничтожается.','12500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (151,'83-84','22-28','разгрома','при естественном результате 19 или 20. оружие противника спасается от сокрушающего удара или уничтожается.','15000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (152,'83-84','29-100','избиения','при естественном результате 18, 19 или 20 броня противника спасается от сокрушительного удара или уничтожается.','17500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (153,'85','1-13','легкости','дает навык использования предмета','5000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (154,'85','14-100','простоты','дает мастерство и специализацию в использовании предмета','10 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (155,'86-90','1-13','из многих','может бесплатно выстрелить один заряд, стрелу за раунд (остальные стоят или должны быть предоставлены)','7500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (156,'86-90','14-100','изобилия','может бесплатно выпускать два заряда/стрелы за раунд (остальные стоят или должны быть предоставлены)','15 000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (157,'91-100','1-10','из (название заклинания)','случайное заклинание 1-го уровня','500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (158,'91-100','11-15','из (название заклинания)','случайное заклинание 2-го уровня','1000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (159,'91-100','16-20','из (название заклинания)','случайное заклинание 3-го уровня','1500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (160,'91-100','21-24','из (название заклинания)','случайное заклинание 4-го уровня','2000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (161,'91-100','25-27','из (название заклинания)','случайное заклинание 5-го уровня','2500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (162,'91-100','28-30','из (название заклинания)','случайное заклинание 6-го уровня','3000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (163,'91-100','31-33','из (название заклинания)','случайное заклинание 7-го уровня','3500');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (164,'91-100','34-35','из (название заклинания)','случайное заклинание 8-го уровня (или заклинание жреца 7-го уровня)','4000');
INSERT INTO `suffixes` (`id`, `group_dice_raw`, `dice_raw`, `name`, `effect`, `cost`) VALUES (165,'91-100','36-100','из (название заклинания)','случайное заклинание 9-го уровня (или заклинание жреца 7-го уровня)','4500');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (1,'1-20','уменьшает получаемый урон (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (2,'21-25','имеет эффект при атаке (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (3,'26-30','повышает долговечность (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (4,'31-35','увеличивает долговечность (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (5,'36-45','увеличивает показатели способностей (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (6,'46-49','проклят (бросьте суффикс базового предмета)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (7,'50-53','улучшает восстановление (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (8,'54-56','влияет на запоминание заклинаний (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (9,'57-63','улучшает поиск сокровищ (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (10,'64-67','улучшает источники света (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (11,'68-70','уменьшает последствия опасностей (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (12,'71-73','увеличивает урон (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (13,'74-75','улучшает минимальный урон (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (14,'76-77','влияет на скорость атаки (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (15,'78-80','Добавляет эффекты поврежденному противнику (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (16,'81-82','восстанавливается при успешном попадании (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (17,'83-84','наносит урон броне или оружию (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (18,'85','влияет на владение оружием (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (19,'86-90','влияет на доступные варианты использования (d20+уровень)');
INSERT INTO `suffixes_groups` (`id`, `dice_raw`, `name`) VALUES (20,'91-100','позволяет накладывать заклинания (d20+уровень), максимум 10d10 зарядов, все перезаряжаемые (кроме написанных заклинаний)');
