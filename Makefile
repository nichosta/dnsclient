progs = dnsclient dnsscan dnssd getips getnameservers

all: $(progs)

$(progs): % : vet
	go build ./cmd/$@

vet: fmt
	go vet ./...

fmt:
	go fmt ./...

clean:
	rm -f $(progs)

.PHONY: all vet fmt clean
