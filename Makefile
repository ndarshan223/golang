.Default_Goal := build

fmt:
	gofmt .
.PHONY:fmt

lint: fmt
	golint .
.PHONY:lint

build: lint
	go build basic.go
.PHONY:build