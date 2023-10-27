CREATE TABLE player_emails (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(320) NOT NULL,
  UNIQUE INDEX player_emails_email (email)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
