CREATE TABLE emails (
  address varchar(320) NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  verified bool NOT NULL,
  pid bigint NOT NULL,
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX emails_player_id (pid),
  UNIQUE INDEX emails_player_id_address (pid, address)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
