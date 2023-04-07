FROM openjdk:16
MAINTAINER John Cena<john@gmail.com>
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} websocketdemo.jar
ENTRYPOINT ["java","-jar","/websocketdemo.jar"]
