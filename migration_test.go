package oildb

import (
	"context"
	"database/sql"
	"os"
	"path/filepath"
	"testing"

	"ariga.io/atlas-go-sdk/atlasexec"
	_ "github.com/go-sql-driver/mysql"
)

func setupDatabase(t *testing.T) {
	db, err := sql.Open("mysql", "root:pass@/test")
	if err != nil {
		t.Fatal(err)
	}
	db.Exec("DROP DATABASE test;")
	db.Exec("CREATE DATABASE test;")
	db.Close()
}

func migrateDatabase(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Errorf("pwd failed with err: %v", err)
	}
	client, err := atlasexec.NewClient(wd, "atlas")
	if err != nil {
		t.Errorf("Failed to create client with err: %v", err)
	}
	p := atlasexec.ApplyParams{}
	p.DirURL = "file://migrations"
	p.URL = "mysql://root:pass@127.0.0.1:3306/test"
	report, err := client.Apply(context.Background(), &p)
	if err != nil {
		t.Errorf("Apply failed with error: %v", err)
	}
	_ = report
}

func countMigrations(t *testing.T) int {
	pattern := filepath.Join("migrations", "*.sql")
	files, err := filepath.Glob(pattern)
	if err != nil {
		t.Errorf("Failed to count migrations: %v", err)
	}
	return len(files)
}

func TestLintMigrations(t *testing.T) {
	setupDatabase(t)
	defer setupDatabase(t)
	wd, err := os.Getwd()
	if err != nil {
		t.Errorf("pwd failed with err: %v", err)
	}
	client, err := atlasexec.NewClient(wd, "atlas")
	if err != nil {
		t.Errorf("Failed to create client with err: %v", err)
	}
	migrationCount := countMigrations(t)
	p := atlasexec.LintParams{}
	p.DevURL = "mysql://root:pass@127.0.0.1:3306/test"
	p.DirURL = "file://migrations"
	p.Latest = uint64(migrationCount)
	report, err := client.Lint(context.Background(), &p)
	if err != nil {
		t.Errorf("Lint failed with error: %v", err)
	}
	for _, file := range report.Files {
		if file.Error != "" {
			t.Errorf("%v", file.Error)
		}
	}
}
