FROM golang:alpine

WORKDIR /go/src/webapp
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 3000/tcp

CMD ["webapp"]
