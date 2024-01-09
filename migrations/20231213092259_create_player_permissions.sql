CREATE TABLE IF NOT EXISTS player_permissions 
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  permission  varchar(101) NOT NULL,
  ipid        bigint NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX player_permissions_permission (pid, permission),
  INDEX player_permissions_pid (pid),
  INDEX player_permissions_ipid (ipid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS player_permission_change_history
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  permission  varchar(101) NOT NULL,
  ipid        bigint NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  revoked     bool NOT NULL DEFAULT FALSE,
  INDEX player_permission_change_history_pid (pid),
  INDEX player_permission_change_history_ipid (ipid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
