CREATE TABLE IF NOT EXISTS requests
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  type            varchar(50) NOT NULL,
  status          varchar(10) NOT NULL,
  rpid            bigint NOT NULL DEFAULT 0,
  pid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX requests_type (type),
  INDEX requests_pid (pid),
  INDEX requests_rpid (rpid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_fields
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  value           varchar(10000) NOT NULL,
  type            varchar(50) NOT NULL,
  status          varchar(11) NOT NULL,
  rid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_fields_rid (rid),
  INDEX request_fields_type (type),
  UNIQUE INDEX request_fields_rid_type (rid, type)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_subfields
(
  created_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  value           varchar(10000) NOT NULL,
  rfid            bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_sub_fields_rfid (rfid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS open_request_change_requests
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  value         varchar(10000) NOT NULL,
  text          varchar(1000) NOT NULL,
  rfid          bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX open_request_change_requests_rfid (rfid),
  INDEX open_request_change_requests_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_change_requests
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  value         varchar(10000) NOT NULL,
  text          varchar(1000) NOT NULL,
  rfid          bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX request_change_requests_rfid (rfid),
  INDEX request_change_requests_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS past_request_change_requests
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  value         varchar(10000) NOT NULL,
  text          varchar(1000) NOT NULL,
  rfid          bigint NOT NULL,
  pid           bigint NOT NULL,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX past_request_change_requests_rfid (rfid),
  INDEX past_request_change_requests_pid (pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
