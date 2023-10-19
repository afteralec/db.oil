-- Create "features" table
CREATE TABLE `features` (`id` bigint NOT NULL AUTO_INCREMENT, `flag` varchar(255) NOT NULL, PRIMARY KEY (`id`), UNIQUE INDEX `features_flag` (`flag`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
