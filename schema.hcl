schema "public" {
  charset = "utf8mb4"
  collate = "utf8mb4_0900_ai_ci"
}

table "players" {
  schema = schema.public
  column "id" {
    null = false
    type = bigint
    auto_increment = true
  }
  column "username" {
    type = varchar(16)
    null = false
  }
  column "pw_hash" {
    type = varchar(255)
    null = false
  }
  primary_key {
    columns = [column.id]
  }
  index "players_username" {
    columns = [column.username]
    unique = true
  }
}

table "player_emails" {
  schema = schema.public
  column "id" {
    null = false
    type = bigint
    auto_increment = true
  }
  column "email" {
    type = varchar(320)
    null = false
  }
  column "verified" {
    type = boolean
    default = false
  }
}
