FROM golang:1.15 AS builder

WORKDIR /

ADD main /

EXPOSE 8080 8060

ENTRYPOINT ["./main"] #入口
