CREATE TABLE IF NOT EXISTS actor_images
(
  description             varchar(2000) NOT NULL,
  short_description       varchar(300) NOT NULL,
  name                    varchar(50) NOT NULL,
  gender                  varchar(32) NOT NULL,
  id                      bigint NOT NULL PRIMARY KEY,
  seating                 tinyint NOT NULL DEFAULT 0,
  is_container            boolean NOT NULL DEFAULT false,
  is_surface_container    boolean NOT NULL DEFAULT false,
  uniq                    boolean NOT NULL DEFAULT false
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_can
(
  can     varchar(50) NOT NULL,
  id      bigint NOT NULL PRIMARY KEY,
  INDEX actor_images_can (can)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_can_be
(
  can_be      varchar(50) NOT NULL,
  id          bigint NOT NULL PRIMARY KEY,
  INDEX actor_images_can_be (can_be)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_keywords
(
  keyword     varchar(10) NOT NULL,
  aiid        bigint NOT NULL,
  id          bigint NOT NULL PRIMARY KEY
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_hands
(
  hand    tinyint NOT NULL DEFAULT 1,
  aiid    bigint NOT NULL,
  id      bigint NOT NULL PRIMARY KEY,
  INDEX actor_images_hands_hand (hand),
  INDEX actor_images_hands_aiid (aiid),
  UNIQUE INDEX actor_images_hands_hand_aiid (hand, aiid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS actor_images_primary_hand
(
  hand    tinyint NOT NULL DEFAULT 1,
  aiid    bigint NOT NULL,
  id      bigint NOT NULL PRIMARY KEY,
  UNIQUE INDEX actor_images_primary_hand_hand_aiid (hand, aiid),
  INDEX actor_images_primary_hand_aiid (aiid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
