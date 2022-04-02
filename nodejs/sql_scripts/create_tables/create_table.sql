CREATE TABLE `credential` (
  `credential_id` varchar(45) NOT NULL,
  `credential_username` varchar(45) NOT NULL,
  `credential_password` varchar(45) NOT NULL,
  PRIMARY KEY (`credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `emergency_call` (
  `organization_id` varchar(45) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `call_number` varchar(12) NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `news` (
  `news_id` varchar(45) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_label` varchar(45) NOT NULL,
  `news_content` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `news_url` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `comment` (
  `comment_id` varchar(45) NOT NULL,
  `news_id` varchar(45) NOT NULL,
  `comment_title` varchar(255) NOT NULL,
  `comment_content` longtext NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `news_id_fk` (`news_id`),
  CONSTRAINT `news_id_fk` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



