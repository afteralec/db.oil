CREATE TABLE IF NOT EXISTS request_comments 
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at  datetime,
  text        varchar(255) NOT NULL,
  field       varchar(32) NOT NULL DEFAULT "",
  rid         bigint NOT NULL,
  pid         bigint NOT NULL,
  cid         bigint NOT NULL DEFAULT 0,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vid         smallint NOT NULL DEFAULT 0,
  deleted     boolean DEFAULT false,
  INDEX request_comments_rid (rid),
  INDEX request_comments_pid (pid),
  INDEX request_comments_cid (cid)
);

CREATE TABLE IF NOT EXISTS request_comment_history
(
  created_at  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  text        varchar(255) NOT NULL,
  field       varchar(32) NOT NULL DEFAULT "",
  cid         bigint NOT NULL,
  id          bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vid         smallint NOT NULL DEFAULT 0,
  INDEX request_comment_content_cid (cid)
);
