# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.26)
# Database: prince
# Generation Time: 2021-12-31 18:47:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `street` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `let` text NOT NULL,
  `long` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table adminsetting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `adminsetting`;

CREATE TABLE `adminsetting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_verify` tinyint(1) NOT NULL DEFAULT '1',
  `user_verify_sms` tinyint(1) NOT NULL DEFAULT '1',
  `user_verify_email` tinyint(1) NOT NULL DEFAULT '1',
  `currency` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `mapkey` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `app_id` varchar(100) DEFAULT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `auth_key` varchar(100) DEFAULT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `mail` tinyint(1) NOT NULL DEFAULT '1',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT '1',
  `twilio_acc_id` varchar(255) DEFAULT NULL,
  `twilio_auth_token` varchar(255) DEFAULT NULL,
  `twilio_phone_no` varchar(255) DEFAULT NULL,
  `radius` int(10) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `black_logo` varchar(50) NOT NULL,
  `white_logo` varchar(50) NOT NULL,
  `app_version` varchar(100) DEFAULT NULL,
  `footer1` text,
  `footer2` text,
  `bg_img` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `license_code` varchar(50) DEFAULT NULL,
  `license_client_name` varchar(255) DEFAULT NULL,
  `license_status` tinyint(1) DEFAULT NULL,
  `shared_name` varchar(255) DEFAULT NULL,
  `shared_image` varchar(255) DEFAULT NULL,
  `shared_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `adminsetting` WRITE;
/*!40000 ALTER TABLE `adminsetting` DISABLE KEYS */;

INSERT INTO `adminsetting` (`id`, `user_verify`, `user_verify_sms`, `user_verify_email`, `currency`, `currency_symbol`, `mapkey`, `lat`, `lang`, `notification`, `app_id`, `api_key`, `auth_key`, `project_no`, `mail`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `sender_email`, `sms`, `twilio_acc_id`, `twilio_auth_token`, `twilio_phone_no`, `radius`, `app_name`, `favicon`, `black_logo`, `white_logo`, `app_version`, `footer1`, `footer2`, `bg_img`, `color`, `license_code`, `license_client_name`, `license_status`, `shared_name`, `shared_image`, `shared_url`, `created_at`, `updated_at`)
VALUES
	(1,0,0,0,'ZAR','R','AIzaSyC7Q8JUhupf5rfkG1vc9E8EGxGy5onOlYU','-26.09882','28.04644',0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,50,'PRINCE KUTZ Hair Studio','favicon.png','black_logo.jpeg','white_logo.jpeg','Version 1.0','Copyright @ 2022 Prince Kutz','All rights reserved','bg_img.jpg','#dbbf7e','447623587FDFUYTU56R28789DVYUG','ADEBOWALE FOLAHAN',1,'PRINCE KUTZ Hair Studio','shared_image.jpg','https://www.google.com/','2020-08-14 06:37:51','2021-12-31 23:25:09');

/*!40000 ALTER TABLE `adminsetting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;

INSERT INTO `banner` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'banner_1640875999.jpg','PRINCE KUTZ Hair Studio',1,'2021-12-30 20:23:19','2021-12-30 20:23:19'),
	(2,'banner_1640876017.jpg','PRINCE KUTZ Hair Studio',1,'2021-12-30 20:23:37','2021-12-30 20:23:37'),
	(3,'banner_1640876037.jpg','PRINCE KUTZ Hair Studio',1,'2021-12-30 20:23:57','2021-12-30 20:23:57'),
	(4,'banner_1640876100.jpg','Online Bookings OPEN!',1,'2021-12-30 20:25:00','2021-12-30 20:25:00'),
	(5,'banner_1640876123.jpg','Online Bookings OPEN!',1,'2021-12-30 20:25:23','2021-12-30 20:25:23');

/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table booking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(255) NOT NULL,
  `salon_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `emp_id` int(10) NOT NULL,
  `service_id` text NOT NULL,
  `coupon_id` int(10) DEFAULT NULL,
  `discount` float DEFAULT '0',
  `price` float NOT NULL,
  `date` date NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_token` text,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `booking_status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;

INSERT INTO `booking` (`id`, `booking_id`, `salon_id`, `name`, `email`, `phone`, `address`, `emp_id`, `service_id`, `coupon_id`, `discount`, `price`, `date`, `start_time`, `end_time`, `payment_type`, `payment_token`, `payment_status`, `booking_status`, `created_at`, `updated_at`)
VALUES
	(1,'#9701216',1,'Balogun Abdulquddus','babusunnah@gmail.com','08085744967','16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria',1,'[2]',NULL,0,3500,'2021-12-31','04:30 PM','05:30 PM','CASH ON SERVICE',NULL,0,'Approved','2021-12-31 15:57:50','2021-12-31 15:57:50'),
	(2,'#354970',1,'Abdulsalam Shakirah','divaspenzy@gmail.com','08175430098','16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria',1,'[2]',NULL,0,3500,'2022-01-14','11:30 AM','12:30 PM','CASH ON SERVICE',NULL,0,'Approved','2021-12-31 16:52:22','2021-12-31 16:52:22');

/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'noimage.jpg',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`cat_id`, `name`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Professional Cuts and Shaves','category_1640874534.png',1,'2021-12-30 19:58:54','2021-12-30 20:01:00'),
	(2,'Nail Tech','category_1640878931.png',1,'2021-12-30 21:12:11','2021-12-30 21:12:11');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table currency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`)
VALUES
	(1,'Albania','Leke','ALL','Lek'),
	(2,'America','Dollars','USD','$'),
	(3,'England (United Kingdom)','Pounds','GBP','£'),
	(4,'Euro','Euro','EUR','€'),
	(5,'South Africa','Rand','ZAR','R');

/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `salon_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT 'noimage.jpg',
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `service_id` text NOT NULL,
  `sun` varchar(150) DEFAULT NULL,
  `mon` varchar(150) DEFAULT NULL,
  `tue` varchar(150) DEFAULT NULL,
  `wed` varchar(150) DEFAULT NULL,
  `thu` varchar(150) DEFAULT NULL,
  `fri` varchar(150) DEFAULT NULL,
  `sat` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;

INSERT INTO `employee` (`emp_id`, `salon_id`, `name`, `position`, `image`, `email`, `phone`, `service_id`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `status`, `isdelete`, `created_at`, `updated_at`)
VALUES
	(1,1,'PRINCE','Founder & Boss Barber','emp_1640876489.png','Info@princekutz.com',27745619270,'[\"1\",\"2\",\"3\"]','{\"open\":\"12:00\",\"close\":\"18:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}',1,0,'2021-12-30 20:31:29','2021-12-31 03:58:10'),
	(2,1,'YVONNE','Nail Technician','noimage.jpg','Yvonne@gmail.com',27745619270,'[\"4\"]','{\"open\":\"12:00\",\"close\":\"18:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}',1,0,'2021-12-30 21:18:00','2021-12-31 03:51:19');

/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `gallery_id` int(10) NOT NULL AUTO_INCREMENT,
  `salon_id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;

INSERT INTO `gallery` (`gallery_id`, `salon_id`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,'Gallery_1640875228.png',1,'2021-12-30 20:10:28','2021-12-30 20:10:28'),
	(2,1,'Gallery_1640875246.png',1,'2021-12-30 20:10:46','2021-12-30 20:10:46'),
	(3,1,'Gallery_1640875261.png',1,'2021-12-30 20:11:01','2021-12-30 20:11:01'),
	(4,1,'Gallery_1640875275.png',1,'2021-12-30 20:11:15','2021-12-30 20:11:15'),
	(5,1,'Gallery_1640875288.png',1,'2021-12-30 20:11:28','2021-12-30 20:11:28'),
	(6,1,'Gallery_1640875313.png',1,'2021-12-30 20:11:53','2021-12-30 20:11:53'),
	(7,1,'Gallery_1640875327.png',1,'2021-12-30 20:12:07','2021-12-30 20:12:07'),
	(8,1,'Gallery_1640875347.png',1,'2021-12-30 20:12:27','2021-12-30 20:12:27'),
	(9,1,'Gallery_1640875363.png',1,'2021-12-30 20:12:43','2021-12-30 20:12:43'),
	(10,1,'Gallery_1640875377.png',1,'2021-12-30 20:12:57','2021-12-30 20:12:57'),
	(11,1,'Gallery_1640875392.png',1,'2021-12-30 20:13:12','2021-12-30 20:13:12'),
	(12,1,'Gallery_1640875423.png',1,'2021-12-30 20:13:43','2021-12-30 20:13:43'),
	(13,1,'Gallery_1640875449.png',1,'2021-12-30 20:14:09','2021-12-30 20:14:09'),
	(14,1,'Gallery_1640875463.png',1,'2021-12-30 20:14:23','2021-12-30 20:14:23'),
	(15,1,'Gallery_1640875484.png',1,'2021-12-30 20:14:44','2021-12-30 20:14:44'),
	(16,1,'Gallery_1640875503.png',1,'2021-12-30 20:15:03','2021-12-30 20:15:03');

/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;

INSERT INTO `language` (`id`, `name`, `file`, `image`, `direction`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'English','English.json','English.jpg','ltr',1,'2020-10-02 06:56:49','2020-10-03 10:34:22'),
	(2,'Arabic','Arabic.json','Arabic.jpg','rtl',1,'2020-10-02 07:04:41','2021-12-30 20:09:07');

/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(6,'2016_06_01_000004_create_oauth_clients_table',1),
	(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(8,'2019_08_19_000000_create_failed_jobs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL DEFAULT '',
  `booking_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;

INSERT INTO `notification` (`id`, `user`, `booking_id`, `title`, `msg`, `created_at`, `updated_at`)
VALUES
	(1,'2',1,'Appointment Created','Dear User, Your appointment is successfully created on 2021-12-31 at 12:30 PM in PRINCE KUTZ Hair Studio. Your booking id is #81413. Thank you.','2021-12-31 02:09:55','2021-12-31 02:09:55'),
	(2,'2',1,'Appointment Created','Dear Balogun Abdulquddus, Your appointment is successfully created on 2021-12-31 at 04:30 PM in PRINCE KUTZ Hair Studio. Your booking id is #9701216. Thank you.','2021-12-31 15:57:50','2021-12-31 15:57:50'),
	(3,'Abdulsalam Shakirah',2,'Appointment Created','Dear Abdulsalam Shakirah, Your appointment is successfully created on 2022-01-14 at 11:30 AM in PRINCE KUTZ Hair Studio. Your booking id is #354970. Thank you.','2021-12-31 16:52:22','2021-12-31 16:52:22');

/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'admin','IZfEmfK4CgYBTqR9HOxuBNwM0mKjWSwyB60nztDp',NULL,'http://localhost',1,0,0,'2020-10-02 14:16:30','2020-10-02 14:16:30');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2020-10-02 14:16:30','2020-10-02 14:16:30');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table paymentsetting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paymentsetting`;

CREATE TABLE `paymentsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` tinyint(1) NOT NULL,
  `stripe` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(255) DEFAULT NULL,
  `stripe_secret_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `paymentsetting` WRITE;
/*!40000 ALTER TABLE `paymentsetting` DISABLE KEYS */;

INSERT INTO `paymentsetting` (`id`, `cod`, `stripe`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`)
VALUES
	(1,1,0,NULL,NULL,'2020-08-14 09:48:44','2021-03-05 06:21:17');

/*!40000 ALTER TABLE `paymentsetting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table review
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `salon_id` int(10) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `rate` int(5) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table salon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salon`;

CREATE TABLE `salon` (
  `salon_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL DEFAULT '',
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `sun` varchar(150) DEFAULT NULL,
  `mon` varchar(150) DEFAULT NULL,
  `tue` varchar(150) DEFAULT NULL,
  `wed` varchar(150) DEFAULT NULL,
  `thu` varchar(150) DEFAULT NULL,
  `fri` varchar(150) DEFAULT NULL,
  `sat` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`salon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;

INSERT INTO `salon` (`salon_id`, `owner_id`, `name`, `image`, `logo`, `desc`, `gender`, `address`, `website`, `phone`, `facebook`, `instagram`, `email`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `status`, `latitude`, `longitude`, `created_at`, `updated_at`)
VALUES
	(1,1,'PRINCE KUTZ Hair Studio','salon_1640874172.jpeg','salonLogo_1640874172.jpeg','All our passionate barbers are professionally trained to execute their craft at their best to help you feel comfortable on the inside & out. We provide perfect male grooming service for your birthdays, weddings, interviews, musical video shoots and all beautiful events.','Both','126 11th Street, Parkmore, Sandton, South Africa.','https://www.princekutz.com/','+27 74 561 9270, +27 11 784 9645','http://facebook.com/princekutz','http://instagram.com/princekutz','Info@princekutz.com','{\"open\":\"12:00\",\"close\":\"18:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}','{\"open\":\"10:00\",\"close\":\"19:00\"}',1,'6.456367','8.35356','2021-12-30 15:07:45','2021-12-31 14:19:15');

/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table service
# ------------------------------------------------------------

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `service_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL,
  `salon_id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `time` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;

INSERT INTO `service` (`service_id`, `cat_id`, `salon_id`, `image`, `name`, `description`, `time`, `gender`, `price`, `status`, `isdelete`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'Service_1640874717.png','Low cut','Phosfluorescently iterate enabled materials whereas impactful systems. Credibly network fully researched interfaces through functionalized web services.',30,'Both',2500,1,0,'2021-12-30 20:01:57','2021-12-30 22:18:21'),
	(2,1,1,'Service_1640874764.png','Dreadlocks','Phosfluorescently iterate enabled materials whereas impactful systems. Credibly network fully researched interfaces through functionalized web services.',60,'Both',3500,1,0,'2021-12-30 20:02:44','2021-12-30 22:18:10'),
	(3,1,1,'Service_1640874801.png','Colour Dye','Phosfluorescently iterate enabled materials whereas impactful systems. Credibly network fully researched interfaces through functionalized web services.',45,'Both',1000,1,0,'2021-12-30 20:03:21','2021-12-30 22:17:58'),
	(4,2,1,'Service_1640879148.png','Nail Care','Quickly leverage existing economically sound strategic theme areas and multimedia based process improvements. Quickly unleash viral. updated',60,'Female',3500,1,0,'2021-12-30 21:15:48','2021-12-31 03:39:42');

/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mail_content` longtext CHARACTER SET utf8mb4,
  `msg_content` text CHARACTER SET utf8mb4,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;

INSERT INTO `template` (`id`, `title`, `subject`, `mail_content`, `msg_content`, `created_at`, `updated_at`)
VALUES
	(1,'User Verification','User Verification','<div>Dear&nbsp;{{UserName}},<br><br></div><div>&nbsp; &nbsp; Your registration is completed successfully.</div><div><br></div><div>&nbsp; &nbsp; Your Verification code is {{OTP}}.</div><div><br></div><div>From {{AdminName}}.</div>','Dear {{UserName}}, Your registration is completed successfully. Your Verification code is {{OTP}}. From {{AdminName}}.','2020-08-20 18:32:46','2020-09-28 19:32:58'),
	(2,'Forgot Password','Forgot Password','Dear {{UserName}},<br><blockquote>Your new password is {{NewPassword}}.</blockquote><blockquote>Thank you.<br></blockquote>From {{AdminName}}.','Dear {{UserName}}, Your new password is {{NewPassword}}. Thank you. From {{AdminName}}.','2020-08-20 18:32:47','2020-10-12 06:41:00'),
	(3,'Booking status','Booking status','Dear {{UserName}},<br><blockquote>Your appointment on {{Date}} at {{Time}} in {{SalonName}} is now {{BookingStatus}}.<br></blockquote><blockquote>Your booking id is {{BookingId}}.&nbsp;<br></blockquote><blockquote>Thank you.<br></blockquote>From&nbsp;{{SalonName}}.','Dear {{UserName}}, Your appointment on {{Date}} at {{Time}} in {{SalonName}} is now {{BookingStatus}}. Your booking id is {{BookingId}}. Thank you.','2020-08-20 18:34:50','2020-08-21 21:26:49'),
	(4,'Payment status','Payment Status','Dear {{UserName}},<br><blockquote>Your appointment is successfully created on {{Date}} at {{Time}} of {{SalonName}} payment of {{Amount}} is&nbsp;received.<br></blockquote><blockquote>Your booking id is {{BookingId}}.&nbsp;</blockquote><blockquote>Thank you.<br></blockquote>From&nbsp;{{SalonName}}.','Dear {{UserName}}, Your appointment is successfully created on {{Date}} at {{Time}} of {{SalonName}} payment of {{Amount}} is received. Your booking id is {{BookingId}}.  Thank you.','2020-08-20 18:35:02','2020-08-21 21:27:00'),
	(5,'Create Appointment','Appointment Created','Dear {{UserName}},<br><blockquote>Your appointment is successfully created on {{Date}} at {{Time}} in {{SalonName}}.<br></blockquote><blockquote>Your booking id is {{BookingId}}.&nbsp;</blockquote><blockquote>Thank you.<br></blockquote>From&nbsp;{{SalonName}}.','Dear {{UserName}}, Your appointment is successfully created on {{Date}} at {{Time}} in {{SalonName}}. Your booking id is {{BookingId}}. Thank you.','2020-08-21 17:46:46','2020-08-21 21:27:06');

/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noimage.jpg',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` mediumint(9) DEFAULT NULL,
  `added_by` int(10) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `role` tinyint(4) NOT NULL DEFAULT '3',
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `mail` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `image`, `email`, `otp`, `added_by`, `email_verified_at`, `password`, `code`, `phone`, `status`, `role`, `verify`, `device_token`, `notification`, `mail`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'ADEBOWALE FOLAHAN','admin_1640874398.png','admin@gmail.com',1111,NULL,NULL,'$2y$10$WBye2obSlfEW405wiTt/ZuhD/hjIGKqwZ.WpnQDMThAOhJ0q8QX0a','+27','117849645',1,1,1,NULL,1,1,NULL,'2021-03-19 05:49:30','2021-12-30 19:56:38'),
	(2,'User','noimage.jpg','user@gmail.com',NULL,NULL,NULL,'$2y$10$jMPZgSRzABhLa.uxof8gLe1WqHrpZ.6YJJ0HHqJwbAHxGErpeww7.','+91','1234567890',1,3,1,NULL,1,1,NULL,'2021-07-27 05:55:23','2021-07-27 05:55:23'),
	(3,'Balogun Abdulquddus','noimage.jpg','babusunnah@gmail.com',NULL,1,'2021-12-31 16:22:39','$2y$10$ZvTXPCFVJ/vJj1QYe6yLF.eSSIdIXGzx1X6IfEkf7Or42M649mD6m','+234','8085744967',1,3,1,NULL,1,1,NULL,'2021-12-31 16:19:39','2021-12-31 16:19:39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
