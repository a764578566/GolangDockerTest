FROM golang AS builder

WORKDIR /

RUN git clone https://github.com/a764578566/GolangDockerTest.git

WORKDIR /GolangDockerTest

RUN git fetch

RUN git tag

RUN git checkout -b builder V0.0.0.4

RUN go build .

EXPOSE 9828

ENTRYPOINT ["./hello"] #入口
