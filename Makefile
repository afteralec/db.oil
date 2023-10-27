migrate:
	sqlx migrate run -D mysql://root:pass@127.0.0.1:3306/test
