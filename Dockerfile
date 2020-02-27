FROM golang:1.14.0-alpine3.11
RUN apk update && apk add git && go get -u github.com/gin-gonic/gin
RUN mkdir /app
ADD . /app
WORKDIR /app
CMD go run /app/main.go
EXPOSE 8080