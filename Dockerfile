FROM ubuntu

LABEL MAINTAINER="jj@nowhere.com"

RUN apt update
RUN apt install openjdk-8-jdk -y
RUN apt install maven -y

WORKDIR /opt/deploy/
COPY target/*.war ./

EXPOSE 8081

CMD mvn cargo:run