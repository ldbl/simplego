FROM golang:buster
ADD . /app
WORKDIR /app
RUN go build -o main main.go
CMD ["/app/main"]
