.PHONY: build test clean run

build:
	@echo "Building ts-compiler..."
	go build -o bin/ts-compiler ./cmd/...

test:
	go test ./... -v -cover

clean:
	rm -rf bin/ dist/

run: build
	./bin/ts-compiler
