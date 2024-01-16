CREATE TABLE IF NOT EXISTS room_images
(
  description   varchar(2000) NOT NULL,
  title         varchar(150) NOT NULL,
  name          varchar(50) NOT NULL,
  id            bigint NOT NULL PRIMARY KEY,
  size          tinyint NOT NULL DEFAULT 1,
  INDEX room_images_title (title),
  INDEX room_images_size (size),
  UNIQUE INDEX room_images_name (name)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

-- TODO: Index the exits to support search and validation
CREATE TABLE IF NOT EXISTS rooms
(
  image_name    varchar(50) NOT NULL,
  north         bigint NOT NULL DEFAULT 0,
  northeast     bigint NOT NULL DEFAULT 0,
  east          bigint NOT NULL DEFAULT 0,
  southeast     bigint NOT NULL DEFAULT 0,
  south         bigint NOT NULL DEFAULT 0,
  southwest     bigint NOT NULL DEFAULT 0,
  west          bigint NOT NULL DEFAULT 0,
  northwest     bigint NOT NULL DEFAULT 0,
  id            bigint NOT NULL PRIMARY KEY,
  UNIQUE INDEX rooms_image_name (image_name)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
