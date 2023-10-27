CREATE TABLE player_emails (
  id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email varchar(320) NOT NULL,
  UNIQUE INDEX player_emails_email (email)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
