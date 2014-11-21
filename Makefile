all: dagr

dagr-dev: *.go
	go build -o dagr-dev .

dagr: dagr-dev resources/index.html.tmpl
	cp dagr-dev dagr && nrsc dagr ./resources

clean:
	rm -rf dagr dagr-dev