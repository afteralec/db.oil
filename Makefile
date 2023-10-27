clean:
	atlas schema clean -u mysql://root:pass@localhost:3306/test --auto-approve

diff:
	atlas migrate diff --dev-url mysql://root:pass@localhost:3306/test --to file://schema.hcl

migrate:
	sqlx migrate run -D mysql://root:pass@127.0.0.1:3306/test
