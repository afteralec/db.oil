CREATE TABLE IF NOT EXISTS requests
(
  type            varchar(32) NOT NULL,
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at      datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  vid             bigint NOT NULL DEFAULT 0,
  pid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX requests_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
