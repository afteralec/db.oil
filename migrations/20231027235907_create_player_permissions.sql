CREATE TABLE player_permissions (
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pid bigint NOT NULL,
  permission varchar(128) NOT NULL,
  CONSTRAINT FOREIGN KEY player_permissions_player (pid) REFERENCES players (id),
  UNIQUE INDEX player_permissions_permission (permission)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
