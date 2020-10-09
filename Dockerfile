FROM golang:1.15 AS builder

WORKDIR /

ADD main /

ENTRYPOINT ["./main"] #入口
