CREATE TABLE players (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(16) NOT NULL,
  pw_hash VARCHAR(255) NOT NULL,
  UNIQUE INDEX players_username (username)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
