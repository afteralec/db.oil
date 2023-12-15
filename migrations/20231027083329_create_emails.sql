CREATE TABLE IF NOT EXISTS emails
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  address         varchar(320) NOT NULL,
  verified        bool NOT NULL,
  pid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX emails_player_id (pid),
  UNIQUE INDEX emails_player_id_address (pid, address)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
