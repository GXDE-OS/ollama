build:
	export GO111MODULE=on 
	GO111MODULE=on go mod tidy
	GO111MODULE=on go generate ../...
	GO111MODULE=on go build ..
    
install:
	make build -j4
	GOBIN=$(DESTDIR)/bin GO111MODULE=on go install