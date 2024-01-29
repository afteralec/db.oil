CREATE TABLE IF NOT EXISTS actor_images
(
  created_at            datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at            datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  description           varchar(2000) NOT NULL,
  short_description     varchar(300) NOT NULL,
  name                  varchar(50) NOT NULL,
  gender                varchar(32) NOT NULL,
  id                    bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  uniq                  boolean NOT NULL DEFAULT false,
  UNIQUE INDEX actor_images_name (name)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_keywords
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  keyword       varchar(10) NOT NULL,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX actor_images_keywords_aiid (aiid),
  INDEX actor_images_keywords_keyword (keyword),
  UNIQUE INDEX actor_images_keywords_aiid_keyword (aiid, keyword)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_can
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  can           varchar(50) NOT NULL,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX actor_images_can_aiid (aiid),
  INDEX actor_images_can_can (can),
  UNIQUE INDEX actor_images_can_aiid_can (aiid, can)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_can_be
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  can_be        varchar(50) NOT NULL,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX actor_images_can_be_aiid (aiid),
  INDEX actor_images_can_be_can_be (can_be),
  UNIQUE INDEX actor_images_can_be_aiid_can_be (aiid, can_be)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_hands
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  hand          tinyint NOT NULL DEFAULT 1,
  INDEX actor_images_hands_aiid (aiid),
  INDEX actor_images_hands_hand (hand),
  UNIQUE INDEX actor_images_hands_aiid_hand (aiid, hand)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_primary_hands
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  hand          tinyint NOT NULL DEFAULT 1,
  INDEX actor_images_primary_hand_aiid (aiid),
  INDEX actor_images_primary_hand_hand (hand),
  UNIQUE INDEX actor_images_primary_hand_aiid_hand (aiid, hand)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_container_properties
(
  created_at              datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at              datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  liquid_capacity         smallint NOT NULL DEFAULT 0,
  aiid                    bigint NOT NULL,
  id                      bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  is_container            boolean NOT NULL DEFAULT false,
  is_surface_container    boolean NOT NULL DEFAULT false,
  UNIQUE INDEX actor_images_food_properties_aiid (aiid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_food_properties
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  eats_into     bigint NOT NULL DEFAULT 0,
  aiid          bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sustenance    smallint NOT NULL DEFAULT 0,
  UNIQUE INDEX actor_images_food_properties_aiid (aiid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_furniture_properties
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  aiid            bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  seating         tinyint NOT NULL DEFAULT 0,
  UNIQUE INDEX actor_images_food_properties_aiid (aiid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
