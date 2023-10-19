package main

import (
	"context"
	"log"
	"os"

	"ariga.io/atlas-go-sdk/atlasexec"
)

func main() {
	wd, err := os.Getwd()
	if err != nil {
		log.Fatalf("pwd failed with err: %v", err)
	}
	client, err := atlasexec.NewClient(wd, "atlas")
	if err != nil {
		log.Fatalf("Failed to create client with err: %v", err)
	}
	p := atlasexec.ApplyParams{}
	p.DirURL = "file://migrations"
	p.URL = "mysql://root:pass@127.0.0.1:3306/test"
	report, err := client.Apply(context.Background(), &p)
	if err != nil {
		log.Fatalf("Apply failed with error: %v", err)
	}
	_ = report
}
