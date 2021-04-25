FROM golang:1.14

WORKDIR /go/src/app
COPY ./hello .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["go", "run", "."]