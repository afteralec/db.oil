CREATE TABLE IF NOT EXISTS players 
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  pw_hash         varchar(255) NOT NULL,
  username        varchar(16) NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX players_username (username)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
