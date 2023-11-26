CREATE TABLE IF NOT EXISTS request_comments
(
  created_at          datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at          datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at          datetime,
  hidden_at           datetime,
  refers_to_field     varchar(32),
  deleted             bool DEFAULT FALSE,
  hidden              bool DEFAULT FALSE,
  reply_to_id         bigint,
  rid                 bigint NOT NULL,
  vid                 bigint NOT NULL DEFAULT 0,
  aid                 bigint NOT NULL,
  id                  bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX request_comment_vid (vid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS request_comments_content
(
  created_at      datetime DEFAULT CURRENT_TIMESTAMP,
  text            varchar(998) NOT NULL,
  comment_id      bigint NOT NULL,
  id              bigint NOT NULL AUTO_INCREMENT PRIMARY KEY
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
