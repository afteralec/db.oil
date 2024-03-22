CREATE TABLE IF NOT EXISTS players 
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  pw_hash     varchar(255) NOT NULL,
  username    varchar(16) NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX players_username (username)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS player_settings
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  theme       varchar(20) NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX player_settings_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS player_permissions 
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name        varchar(101) NOT NULL,
  ipid        bigint NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX player_permissions_name (pid, name),
  INDEX player_permissions_pid (pid),
  INDEX player_permissions_ipid (ipid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS player_permission_change_history
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name        varchar(101) NOT NULL,
  ipid        bigint NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  revoked     bool NOT NULL DEFAULT FALSE,
  INDEX player_permission_change_history_pid (pid),
  INDEX player_permission_change_history_ipid (ipid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
