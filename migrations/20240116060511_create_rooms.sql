-- TODO: Index the exits to support search and validation
CREATE TABLE IF NOT EXISTS rooms
(
  created_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at    datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  description   varchar(2000) NOT NULL,
  title         varchar(150) NOT NULL,
  north         bigint NOT NULL DEFAULT 0,
  northeast     bigint NOT NULL DEFAULT 0,
  east          bigint NOT NULL DEFAULT 0,
  southeast     bigint NOT NULL DEFAULT 0,
  south         bigint NOT NULL DEFAULT 0,
  southwest     bigint NOT NULL DEFAULT 0,
  west          bigint NOT NULL DEFAULT 0,
  northwest     bigint NOT NULL DEFAULT 0,
  id            bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  size          tinyint NOT NULL DEFAULT 1,
  unmodified    bool NOT NULL DEFAULT true,
  INDEX rooms_title (title)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
