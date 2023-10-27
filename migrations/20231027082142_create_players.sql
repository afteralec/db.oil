CREATE TABLE players (
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username varchar(16) NOT NULL,
  pw_hash varchar(255) NOT NULL,
  UNIQUE INDEX players_username (username)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
