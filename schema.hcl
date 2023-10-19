schema "public" {
  charset = "utf8mb4"
  collate = "utf8mb4_0900_ai_ci"
}

table "features" {
  schema = schema.public
  column "id" {
    null = false
    type = bigint
    auto_increment = true
  }
  column "flag" {
    null = false
    type = varchar(255)
  }
  primary_key {
    columns = [column.id]
  }
  index "features_flag" {
    columns = [column.flag]
    unique = true
  }
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

table "requests" {
  schema = schema.public
  column "id" {
    null = false
    type = bigint
    auto_increment = true
  }
  primary_key {
    columns = [column.id]
  }
}
