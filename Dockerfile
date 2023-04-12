

FROM golang:buster

WORKDIR /app/main
COPY go.mod ./
COPY go.sum ./
COPY *.go ./
RUN go mod download

RUN go build  -o /go-binary

CMD [ "/go-binary" ]

