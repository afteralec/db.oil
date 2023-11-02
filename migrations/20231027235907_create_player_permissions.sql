CREATE TABLE player_permissions (
  permission varchar(128) NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  pid bigint NOT NULL,
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX player_permissions_pid (pid),
  UNIQUE INDEX player_permissions_permission (pid, permission)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
