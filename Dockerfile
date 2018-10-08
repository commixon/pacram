FROM golang:1.11 as builder
WORKDIR /go/src/github.com/commixon/pacram
COPY . .
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -a -installsuffix cgo -o pacram --ldflags '-w' ./pacram.go

FROM scratch
COPY --from=builder /go/src/github.com/commixon/pacram .
ENTRYPOINT ["./pacram"]
