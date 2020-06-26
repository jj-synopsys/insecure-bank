FROM alpine

LABEL MAINTAINER="jj@nowhere.com"

RUN apk add openjdk8
RUN apk add maven -y

EXPOSE 8081

WORKDIR /opt/deploy/
COPY target/*.war ./

CMD mvn cargo:run