CREATE TABLE IF NOT EXISTS requests
(
  type            varchar(32) NOT NULL,
  status          varchar(10) NOT NULL DEFAULT "Incomplete",
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  vid             bigint NOT NULL DEFAULT 0,
  pid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX requests_type (type),
  INDEX requests_pid (pid),
  INDEX requests_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_status_changes
(
  status  varchar(10) NOT NULL DEFAULT "Incomplete",
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  vid bigint NOT NULL DEFAULT 0,
  rid bigint NOT NULL,
  pid bigint NOT NULL,
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_status_changes_rid (rid),
  INDEX request_status_changes_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
