CREATE TABLE IF NOT EXISTS help
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  html          text NOT NULL,
  raw           text NOT NULL,
  sub           varchar(500) NOT NULL,
  title         varchar(250) NOT NULL,
  category      varchar(150) NOT NULL,
  slug          varchar(50) NOT NULL PRIMARY KEY,
  pid           bigint NOT NULL,
  INDEX help_pid(pid)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS help_tags
(
  tag     varchar(50) NOT NULL,
  slug    varchar(50) NOT NULL,
  id      bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  INDEX help_tags_tag(tag),
  INDEX help_tags_slug(slug)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS help_related
(
  related_sub       varchar(500) NOT NULL,
  related_title     varchar(250) NOT NULL,
  related_slug      varchar(50) NOT NULL,
  slug              varchar(50) NOT NULL PRIMARY KEY,
  INDEX help_related_slug(related_slug)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
