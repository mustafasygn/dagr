all: dagr

deps:
	go get
	go get github.com/GeertJohan/go.rice
	go get github.com/GeertJohan/go.rice/rice

dagr-dev: *.go
	go build -o dagr-dev .

dagr: dagr-dev resources/index.html.tmpl resources/info.html.tmpl resources/dagr.css
	cp dagr-dev dagr && rice append --exec dagr

clean:
	go clean
	rm -f dagr-dev

.PHONY: all clean deps

