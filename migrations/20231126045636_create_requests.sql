CREATE TABLE IF NOT EXISTS requests
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  type            varchar(32) NOT NULL,
  status          varchar(10) NOT NULL DEFAULT "Incomplete",
  rpid            bigint NOT NULL DEFAULT 0,
  pid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vid             smallint NOT NULL DEFAULT 0,
  INDEX requests_type (type),
  INDEX requests_pid (pid),
  INDEX requests_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_change_requests
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  text          varchar(1000) NOT NULL,
  field         varchar(50) NOT NULL DEFAULT "",
  rid           bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  locked        boolean NOT NULL DEFAULT false,
  old           boolean NOT NULL DEFAULT false,
  INDEX request_change_requests_rid (rid),
  INDEX request_change_requests_pid (pid),
  INDEX request_change_requests_rid_field (rid, field)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_status_change_history
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status      varchar(10) NOT NULL DEFAULT "Incomplete",
  rid         bigint NOT NULL,
  pid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vid         smallint NOT NULL DEFAULT 0,
  INDEX request_status_changes_rid (rid),
  INDEX request_status_changes_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
