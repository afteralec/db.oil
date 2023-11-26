CREATE TABLE players (
  pw_hash         varchar(255) NOT NULL,
  username        varchar(16) NOT NULL,
  role            varchar(16) NOT NULL,
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX players_username (username)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
