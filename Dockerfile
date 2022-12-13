# syntax=docker/dockerfile:1

FROM golang:1.19-buster

WORKDIR /app/main
COPY go.mod ./
COPY go.sum ./
COPY *.go ./
RUN go mod download

RUN go build  -o /go-binary

CMD [ "/go-binary" ]

