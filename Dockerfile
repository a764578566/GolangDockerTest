FROM golang AS builder

WORKDIR /

RUN git clone https://github.com/a764578566/GolangDockerTest.git

WORKDIR /GolangDockerTest

RUN  go build .

EXPOSE 9828

ENTRYPOINT ["./hello"] #入口
