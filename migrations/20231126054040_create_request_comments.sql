CREATE TABLE IF NOT EXISTS request_comments
(
  created_at          datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at          datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at          datetime,
  field               varchar(32),
  deleted             bool DEFAULT FALSE,
  cid                 bigint,
  rid                 bigint NOT NULL,
  vid                 bigint NOT NULL DEFAULT 0,
  pid                 bigint NOT NULL,
  id                  bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_comments_pid (pid),
  INDEX request_comments_rid (rid),
  INDEX request_comments_cid (cid),
  INDEX request_comments_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_comment_content
(
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  text            varchar(998) NOT NULL,
  cid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UNIQUE INDEX request_comment_content_cid (cid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_comment_content_history
(
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  text            varchar(998) NOT NULL,
  cid             bigint NOT NULL,
  vid             bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_comment_content_history_cid (cid),
  INDEX request_comment_content_history_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
