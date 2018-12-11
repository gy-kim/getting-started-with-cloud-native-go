FROM golang:stretch
MAINTAINER GYKIM

ENV SOURCES /go/src/github.com/gy-kim/getting-started-with-cloud-native-go

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT cloud-native-go