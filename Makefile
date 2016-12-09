all:
	echo 'Provide a target: weekproject clean'

fmt:
	find src/ -name '*.go' -exec go fmt {} ';'

build: fmt
	gb build all

weekproject: build
	./bin/weekproject

test:
	gb test -v

clean:
	rm -rf bin/ pkg/

.PHONY: weekproject
