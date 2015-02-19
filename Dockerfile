FROM golang:1.4.2-wheezy
ADD main.go /go/src/terraform-provider-myaws/main.go
WORKDIR /go/src/terraform-provider-myaws
RUN mkdir /go/bin
ENV GOPATH /go
ENV GOBIN /go/bin
RUN go get && go build -v
RUN go test
WORKDIR /go
ADD installer /installer
RUN chmod 700 /installer
CMD /installer

