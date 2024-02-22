FROM golang:1.17 AS builder

WORKDIR /go/src/app

COPY hello.go .

RUN go mod init hello && \
     go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-w -extldflags "-static"' -o hello .

ENTRYPOINT [ "./hello" ]


FROM scratch
WORKDIR /go/src/app
COPY --from=builder /go/src/app/hello /go/src/app/hello
CMD [ "./hello" ]