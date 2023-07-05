FROM tomcat:8.0
RUN apt-get update
RUN apt-get install -y vim
ENTRYPOINT /usr/local/bin/startup.sh && bash
