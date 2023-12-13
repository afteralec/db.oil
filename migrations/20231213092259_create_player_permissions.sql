CREATE TABLE IF NOT EXISTS player_permissions 
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  permissions   varchar(101) NOT NULL,
  ipid          bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS player_permission_change_history
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  permissions   varchar(101) NOT NULL,
  ipid          bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  deleted       bool NOT NULL DEFAULT FALSE
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
