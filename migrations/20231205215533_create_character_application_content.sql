CREATE TABLE IF NOT EXISTS character_application_content
(
  created_at          datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at          datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  backstory           varchar(10000) NOT NULL,
  description         varchar(2000) NOT NULL,
  short_description   varchar(300) NOT NULL,
  name                varchar(96) NOT NULL,
  gender              varchar(32) NOT NULL,
  rid                 bigint NOT NULL,
  id                  bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX character_application_content_rid (rid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS character_application_content_history
(
  created_at          datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at          datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  backstory           varchar(10000) NOT NULL,
  description         varchar(2000) NOT NULL,
  short_description   varchar(300) NOT NULL,
  name                varchar(96) NOT NULL,
  gender              varchar(32) NOT NULL,
  rid                 bigint NOT NULL,
  id                  bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vid                 smallint NOT NULL DEFAULT 0,
  INDEX character_application_content_history_rid (rid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
