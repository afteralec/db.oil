CREATE TABLE IF NOT EXISTS player_settings
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  theme       varchar(20) NOT NULL DEFAULT "Light",
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX player_settings_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
