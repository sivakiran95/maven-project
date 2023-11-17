FROM ubuntu:22.04
MAINTAINER "siva"
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y openjdk-11-jdk
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz
RUN tar -zxvf apache-tomcat-8.5.91.tar.gz
RUN mv apache-tomcat-8.5.91 tomcat 
RUN mkdir -p /home/satya
RUN mv /tomcat /home/satya
COPY webapp/target/webapp.war /home/satya/tomcat/webapps
EXPOSE 8080
ENTRYPOINT sh /home/satya/tomcat/bin/startup.sh && bash
