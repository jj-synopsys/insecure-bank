FROM ubuntu

LABEL MAINTAINER="jj@nowhere.com"

RUN apt update
RUN apt install openjdk-8-jdk -y
RUN apt install maven -y

COPY target/*.war /opt/deploy/target/
COPY pom.xml /opt/deploy/

WORKDIR /opt/deploy/

EXPOSE 8081

CMD mvn cargo:run